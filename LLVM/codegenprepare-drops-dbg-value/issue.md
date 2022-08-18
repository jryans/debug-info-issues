# Issue

[[DebugInfo@O2] CodeGenPrepare drops reference to local in dbg.value intrinsic](https://github.com/llvm/llvm-project/issues/39192)

# Description

Compile with -g -O2.

CodeGenPrepare seems to drop a reference to a local from a dbg.value
intrinsic:

## IR before `CodeGenPrepare`

```llvm
entry:
  call void @llvm.dbg.value(metadata i32 %p, metadata !12, ...
  %add = add nsw i32 %p, 4, !dbg !15
  call void @llvm.dbg.value(metadata i32 %add, metadata !13, ...
```

## IR after `CodeGenPrepare`

```llvm
entry:
  call void @llvm.dbg.value(metadata i32 %p, metadata !12, ...
  %add = add nsw i32 %p, 4, !dbg !15
  call void @llvm.dbg.value(metadata !2, metadata !13, ...

!2 = !{}
!13 = !DILocalVariable(name: "i", scope: !7, ...
```

# Reproduction

1. Build LLVM in release mode at 79c994d9767212c97f87846c7cd76e678f889052
2. `~/Projects/LLVM/llvm/build-release-clang-lldb/bin/clang -S -emit-llvm -o - -O2 -g example.c | ~/Projects/LLVM/llvm/build-release-clang-lldb/bin/opt -S -codegenprepare -`

# Resolution

In https://reviews.llvm.org/D55396, part of `CodeGenPrepare` (which runs various
IR simplifications just before code gen) was updated to fix this.

`CodeGenPrepare` is made up of various actions which can be undone. For this
issue, the `UsesReplacer` action (which moves all uses of an instruction over to
a new one) was removing debug uses but failed to restore them when reverted.

The fix changes `UsesReplacer` to also track debug uses so they can be restored
if the action is undone.

```diff
     /// Replace all the use of \p Inst by \p New.
     UsesReplacer(Instruction *Inst, Value *New) : TypePromotionAction(Inst) {
       LLVM_DEBUG(dbgs() << "Do: UsersReplacer: " << *Inst << " with " << *New
                         << "\n");
       // Record the original uses.
       for (Use &U : Inst->uses()) {
         Instruction *UserI = cast<Instruction>(U.getUser());
         OriginalUses.push_back(InstructionAndIdx(UserI, U.getOperandNo()));
       }
+      // Record the debug uses separately. They are not in the instruction's
+      // use list, but they are replaced by RAUW.
+      findDbgValues(DbgValues, Inst);
+
       // Now, we can replace the uses.
       Inst->replaceAllUsesWith(New);
     }

     /// Reassign the original uses of Inst to Inst.
     void undo() override {
       LLVM_DEBUG(dbgs() << "Undo: UsersReplacer: " << *Inst << "\n");
       for (use_iterator UseIt = OriginalUses.begin(),
                         EndIt = OriginalUses.end();
            UseIt != EndIt; ++UseIt) {
         UseIt->Inst->setOperand(UseIt->Idx, Inst);
       }
+      // RAUW has replaced all original uses with references to the new value,
+      // including the debug uses. Since we are undoing the replacements,
+      // the original debug uses must also be reinstated to maintain the
+      // correctness and utility of debug value instructions.
+      for (auto *DVI: DbgValues) {
+        LLVMContext &Ctx = Inst->getType()->getContext();
+        auto *MV = MetadataAsValue::get(Ctx, ValueAsMetadata::get(Inst));
+        DVI->setOperand(0, MV);
+      }
+    }
   };
```

# Commentary

* Fix is pass-specific
* Debug info restored
