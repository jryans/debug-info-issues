# Issue

[[DebugInfo@O2][Dexter] Loop strength reduction preserves little debug info](https://github.com/llvm/llvm-project/issues/38163)

# Description

It seems the loop-strength-reduction pass doesn't preserve debug information,
for any transformation it makes. Compiling the example below with llvm/clang @
r340912 and options "-O2 -g -fno-inline" for x86_64, using both gdb and lldb,
both the value of "bob" and "blah" are reported as being optimised out, after
being rewritten by LSR.

Which would be fairly frustrating if one landed in the loop and were unable to determine either the loop bound or which iteration it was on. (The example is contrived, but LSR still knackers more complicated loops).

This isn't a bug per se, and the DebugInfo doesn't mislead anyone, it's just a poor debug experience that will annoy developers. Particularly galling is that the values of "bob" and "blah" remain in registers for the whole loop, but are still not available to the debugger.

## IR before `LoopStrengthReduce`

```llvm
; Preheader:
entry:
[..]
  %cmp1 = icmp slt i32 %blah, 3, !dbg !16
  %0 = add nsw i32 %blah, 9, !dbg !21
  br label %for.body, !dbg !22

; Loop:
for.body:
  %bob.06 = phi i32 [ %blah, %entry ], [ %inc, %for.cond ]
  call void @llvm.dbg.value(metadata i32 %bob.06, metadata !14, ...), !dbg !15
  call void @llvm.dbg.value(metadata i32 %bob.06, metadata !14, ...), !dbg !15
  br i1 %cmp1, label %cleanup, label %for.cond, !dbg !26

for.cond:
  %inc = add nsw i32 %bob.06, 1, !dbg !23
  call void @llvm.dbg.value(metadata i32 %inc, metadata !14, ...), !dbg !15
  call void @llvm.dbg.value(metadata i32 %inc, metadata !14, ...), !dbg !15
  %cmp = icmp slt i32 %bob.06, %0, !dbg !23
  br i1 %cmp, label %for.body, label %cleanup, !dbg !22, !llvm.loop !24

; Exit blocks
cleanup:
[..]
```

## IR after `LoopStrengthReduce`

```llvm
; Preheader:
entry:
[..]
  %cmp1 = icmp slt i32 %blah, 3, !dbg !16
  %0 = add nsw i32 %blah, 9, !dbg !21
  %1 = add i32 %blah, -1, !dbg !22
  br label %for.body, !dbg !22

; Loop:
for.body:
  %lsr.iv = phi i32 [ %lsr.iv.next, %for.cond ], [ %1, %entry ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, ...), !dbg !15
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, ...), !dbg !15
  br i1 %cmp1, label %cleanup, label %for.cond, !dbg !26

for.cond:
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, ...), !dbg !15
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, ...), !dbg !15
  %lsr.iv.next = add i32 %lsr.iv, 1, !dbg !23
  %cmp = icmp slt i32 %lsr.iv.next, %0, !dbg !23
  br i1 %cmp, label %for.body, label %cleanup, !dbg !22, !llvm.loop !24

; Exit blocks
cleanup:
[..]
```

# Reproduction

...

# Resolution

In https://reviews.llvm.org/D87494 (one of several LSR debug improvements), the
`LoopStrengthReduce` pass learns how to adjust debug info to match the changes
it's making to the loop instructions:

```diff
 static bool ReduceLoopStrength(Loop *L, IVUsers &IU, ScalarEvolution &SE,
                                DominatorTree &DT, LoopInfo &LI,
                                const TargetTransformInfo &TTI,
                                AssumptionCache &AC, TargetLibraryInfo &TLI,
                                MemorySSA *MSSA) {

   bool Changed = false;
   std::unique_ptr<MemorySSAUpdater> MSSAU;
   if (MSSA)
     MSSAU = std::make_unique<MemorySSAUpdater>(MSSA);

   // Run the main LSR transformation.
   Changed |=
       LSRInstance(L, IU, SE, DT, LI, TTI, AC, TLI, MSSAU.get()).getChanged();

+  // Debug preservation - before we start removing anything create equivalence
+  // sets for the llvm.dbg.value intrinsics.
+  EqualValuesMap DbgValueToEqualSet;
+  DbgGatherEqualValues(L, SE, DbgValueToEqualSet);
+
   // Remove any extra phis created by processing inner loops.
   Changed |= DeleteDeadPHIs(L->getHeader(), &TLI, MSSAU.get());
   if (EnablePhiElim && L->isLoopSimplifyForm()) {
     SmallVector<WeakTrackingVH, 16> DeadInsts;
     const DataLayout &DL = L->getHeader()->getModule()->getDataLayout();
     SCEVExpander Rewriter(SE, DL, "lsr", false);
 #ifndef NDEBUG
     Rewriter.setDebugType(DEBUG_TYPE);
 #endif
     unsigned numFolded = Rewriter.replaceCongruentIVs(L, &DT, DeadInsts, &TTI);
     if (numFolded) {
       Changed = true;
       RecursivelyDeleteTriviallyDeadInstructionsPermissive(DeadInsts, &TLI,
                                                            MSSAU.get());
       DeleteDeadPHIs(L->getHeader(), &TLI, MSSAU.get());
     }
   }
+
+  DbgApplyEqualValues(DbgValueToEqualSet);
+
   return Changed;
 }
```

Those calls are to new **pass-specific** helper functions:

```cpp
using EqualValues = SmallVector<std::tuple<WeakVH, int64_t, DIExpression *>, 4>;
using EqualValuesMap = DenseMap<DbgValueInst *, EqualValues>;

static void DbgGatherEqualValues(Loop *L, ScalarEvolution &SE,
                                 EqualValuesMap &DbgValueToEqualSet) {
  for (auto &B : L->getBlocks()) {
    for (auto &I : *B) {
      auto DVI = dyn_cast<DbgValueInst>(&I);
      if (!DVI)
        continue;
      auto V = DVI->getVariableLocation();
      if (!V || !SE.isSCEVable(V->getType()))
        continue;
      auto DbgValueSCEV = SE.getSCEV(V);
      EqualValues EqSet;
      for (PHINode &Phi : L->getHeader()->phis()) {
        if (V->getType() != Phi.getType())
          continue;
        if (!SE.isSCEVable(Phi.getType()))
          continue;
        auto PhiSCEV = SE.getSCEV(&Phi);
        if (Optional<APInt> Offset =
                SE.computeConstantDifference(DbgValueSCEV, PhiSCEV))
          EqSet.emplace_back(std::make_tuple(
              &Phi, Offset.getValue().getSExtValue(), DVI->getExpression()));
      }
      DbgValueToEqualSet[DVI] = std::move(EqSet);
    }
  }
}

static void DbgApplyEqualValues(EqualValuesMap &DbgValueToEqualSet) {
  for (auto A : DbgValueToEqualSet) {
    auto DVI = A.first;
    // Only update those that are now undef.
    if (!isa_and_nonnull<UndefValue>(DVI->getVariableLocation()))
      continue;
    for (auto EV : A.second) {
      auto V = std::get<WeakVH>(EV);
      if (!V)
        continue;
      auto DbgDIExpr = std::get<DIExpression *>(EV);
      auto Offset = std::get<int64_t>(EV);
      auto &Ctx = DVI->getContext();
      DVI->setOperand(0, MetadataAsValue::get(Ctx, ValueAsMetadata::get(V)));
      if (Offset) {
        SmallVector<uint64_t, 8> Ops;
        DIExpression::appendOffset(Ops, Offset);
        DbgDIExpr = DIExpression::prependOpcodes(DbgDIExpr, Ops, true);
      }
      DVI->setOperand(2, MetadataAsValue::get(Ctx, DbgDIExpr));
      break;
    }
  }
}
```

# Commentary

This work is along the same lines as other LSR debug info improvements recently
presented at EuroLLVM 2022.

* Fix is pass-specific
* Debug info restored
* Semi-complex and fiddly manual adjustment
