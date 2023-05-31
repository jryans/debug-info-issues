; ModuleID = '/app/example.c' https://godbolt.org/z/zszYq9vhG
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline norecurse nounwind readonly uwtable
define dso_local i32 @foo(i32 %argc, i32 %init, i32* nocapture readonly %bar) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !14, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 %init, metadata !15, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32* %bar, metadata !16, metadata !DIExpression()), !dbg !23
  %cmp = icmp sgt i32 %argc, 255, !dbg !24
  br i1 %cmp, label %return, label %for.cond.preheader, !dbg !26

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %argc, metadata !17, metadata !DIExpression()), !dbg !28
  %cmp111 = icmp sgt i32 %argc, 0, !dbg !29
  br i1 %cmp111, label %for.body.preheader, label %return, !dbg !31

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %argc to i64
  %min.iters.check = icmp ult i32 %argc, 8, !dbg !32
  br i1 %min.iters.check, label %for.body.preheader20, label %vector.ph, !dbg !32

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288, !dbg !32
  %0 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %argc, i32 0, !dbg !32
  %1 = add nsw i64 %n.vec, -8, !dbg !32
  %2 = lshr exact i64 %1, 3, !dbg !32
  %3 = add nuw nsw i64 %2, 1, !dbg !32
  %xtraiter = and i64 %3, 3, !dbg !32
  %4 = icmp ult i64 %1, 24, !dbg !32
  br i1 %4, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !32

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = sub nsw i64 %3, %xtraiter, !dbg !32
  br label %vector.body, !dbg !32

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ], !dbg !34
  %vec.phi = phi <4 x i32> [ %0, %vector.ph.new ], [ %27, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ zeroinitializer, %vector.ph.new ], [ %28, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.3, %vector.body ]
  %5 = getelementptr inbounds i32, i32* %bar, i64 %index, !dbg !32
  %6 = bitcast i32* %5 to <4 x i32>*, !dbg !32
  %wide.load = load <4 x i32>, <4 x i32>* %6, align 4, !dbg !32, !tbaa !35
  %7 = getelementptr inbounds i32, i32* %5, i64 4, !dbg !32
  %8 = bitcast i32* %7 to <4 x i32>*, !dbg !32
  %wide.load16 = load <4 x i32>, <4 x i32>* %8, align 4, !dbg !32, !tbaa !35
  %9 = add nsw <4 x i32> %wide.load, %vec.phi, !dbg !39
  %10 = add nsw <4 x i32> %wide.load16, %vec.phi15, !dbg !39
  %index.next = or i64 %index, 8, !dbg !34
  %11 = getelementptr inbounds i32, i32* %bar, i64 %index.next, !dbg !32
  %12 = bitcast i32* %11 to <4 x i32>*, !dbg !32
  %wide.load.1 = load <4 x i32>, <4 x i32>* %12, align 4, !dbg !32, !tbaa !35
  %13 = getelementptr inbounds i32, i32* %11, i64 4, !dbg !32
  %14 = bitcast i32* %13 to <4 x i32>*, !dbg !32
  %wide.load16.1 = load <4 x i32>, <4 x i32>* %14, align 4, !dbg !32, !tbaa !35
  %15 = add nsw <4 x i32> %wide.load.1, %9, !dbg !39
  %16 = add nsw <4 x i32> %wide.load16.1, %10, !dbg !39
  %index.next.1 = or i64 %index, 16, !dbg !34
  %17 = getelementptr inbounds i32, i32* %bar, i64 %index.next.1, !dbg !32
  %18 = bitcast i32* %17 to <4 x i32>*, !dbg !32
  %wide.load.2 = load <4 x i32>, <4 x i32>* %18, align 4, !dbg !32, !tbaa !35
  %19 = getelementptr inbounds i32, i32* %17, i64 4, !dbg !32
  %20 = bitcast i32* %19 to <4 x i32>*, !dbg !32
  %wide.load16.2 = load <4 x i32>, <4 x i32>* %20, align 4, !dbg !32, !tbaa !35
  %21 = add nsw <4 x i32> %wide.load.2, %15, !dbg !39
  %22 = add nsw <4 x i32> %wide.load16.2, %16, !dbg !39
  %index.next.2 = or i64 %index, 24, !dbg !34
  %23 = getelementptr inbounds i32, i32* %bar, i64 %index.next.2, !dbg !32
  %24 = bitcast i32* %23 to <4 x i32>*, !dbg !32
  %wide.load.3 = load <4 x i32>, <4 x i32>* %24, align 4, !dbg !32, !tbaa !35
  %25 = getelementptr inbounds i32, i32* %23, i64 4, !dbg !32
  %26 = bitcast i32* %25 to <4 x i32>*, !dbg !32
  %wide.load16.3 = load <4 x i32>, <4 x i32>* %26, align 4, !dbg !32, !tbaa !35
  %27 = add nsw <4 x i32> %wide.load.3, %21, !dbg !39
  %28 = add nsw <4 x i32> %wide.load16.3, %22, !dbg !39
  %index.next.3 = add i64 %index, 32, !dbg !34
  %niter.nsub.3 = add i64 %niter, -4, !dbg !34
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0, !dbg !34
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !dbg !34, !llvm.loop !40

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %.lcssa21.ph = phi <4 x i32> [ undef, %vector.ph ], [ %27, %vector.body ]
  %.lcssa.ph = phi <4 x i32> [ undef, %vector.ph ], [ %28, %vector.body ]
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %vec.phi.unr = phi <4 x i32> [ %0, %vector.ph ], [ %27, %vector.body ]
  %vec.phi15.unr = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %28, %vector.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0, !dbg !34
  br i1 %lcmp.mod, label %middle.block, label %vector.body.epil, !dbg !34

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ], !dbg !34
  %vec.phi.epil = phi <4 x i32> [ %33, %vector.body.epil ], [ %vec.phi.unr, %middle.block.unr-lcssa ]
  %vec.phi15.epil = phi <4 x i32> [ %34, %vector.body.epil ], [ %vec.phi15.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter, %middle.block.unr-lcssa ]
  %29 = getelementptr inbounds i32, i32* %bar, i64 %index.epil, !dbg !32
  %30 = bitcast i32* %29 to <4 x i32>*, !dbg !32
  %wide.load.epil = load <4 x i32>, <4 x i32>* %30, align 4, !dbg !32, !tbaa !35
  %31 = getelementptr inbounds i32, i32* %29, i64 4, !dbg !32
  %32 = bitcast i32* %31 to <4 x i32>*, !dbg !32
  %wide.load16.epil = load <4 x i32>, <4 x i32>* %32, align 4, !dbg !32, !tbaa !35
  %33 = add nsw <4 x i32> %wide.load.epil, %vec.phi.epil, !dbg !39
  %34 = add nsw <4 x i32> %wide.load16.epil, %vec.phi15.epil, !dbg !39
  %index.next.epil = add i64 %index.epil, 8, !dbg !34
  %epil.iter.sub = add i64 %epil.iter, -1, !dbg !34
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0, !dbg !34
  br i1 %epil.iter.cmp, label %middle.block, label %vector.body.epil, !dbg !34, !llvm.loop !43

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %.lcssa21 = phi <4 x i32> [ %.lcssa21.ph, %middle.block.unr-lcssa ], [ %33, %vector.body.epil ], !dbg !39
  %.lcssa = phi <4 x i32> [ %.lcssa.ph, %middle.block.unr-lcssa ], [ %34, %vector.body.epil ], !dbg !39
  %bin.rdx = add <4 x i32> %.lcssa, %.lcssa21, !dbg !39
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !39
  %bin.rdx17 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !39
  %rdx.shuf18 = shufflevector <4 x i32> %bin.rdx17, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !39
  %bin.rdx19 = add <4 x i32> %bin.rdx17, %rdx.shuf18, !dbg !39
  %35 = extractelement <4 x i32> %bin.rdx19, i32 0, !dbg !39
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %return, label %for.body.preheader20, !dbg !32

for.body.preheader20:                             ; preds = %middle.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %tmp.012.ph = phi i32 [ %argc, %for.body.preheader ], [ %35, %middle.block ]
  br label %for.body, !dbg !32

for.body:                                         ; preds = %for.body.preheader20, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader20 ]
  %tmp.012 = phi i32 [ %add2, %for.body ], [ %tmp.012.ph, %for.body.preheader20 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !19, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %tmp.012, metadata !17, metadata !DIExpression()), !dbg !28
  %arrayidx = getelementptr inbounds i32, i32* %bar, i64 %indvars.iv, !dbg !32
  %36 = load i32, i32* %arrayidx, align 4, !dbg !32, !tbaa !35
  call void @llvm.dbg.value(metadata i32 %36, metadata !18, metadata !DIExpression()), !dbg !45
  %add2 = add nsw i32 %36, %tmp.012, !dbg !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !34
  call void @llvm.dbg.value(metadata i32 undef, metadata !19, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !27
  call void @llvm.dbg.value(metadata i32 %add2, metadata !17, metadata !DIExpression()), !dbg !28
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !29
  br i1 %exitcond, label %return, label %for.body, !dbg !31, !llvm.loop !46

return:                                           ; preds = %for.body, %middle.block, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %argc, %for.cond.preheader ], [ %35, %middle.block ], [ %add2, %for.body ], !dbg !48
  ret i32 %retval.0, !dbg !49
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final 356655)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final 356655)"}
!7 = distinct !DISubprogram(name: "foo", scope: !8, file: !8, line: 6, type: !9, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !11, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !{!14, !15, !16, !17, !18, !19}
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !8, line: 6, type: !11)
!15 = !DILocalVariable(name: "init", arg: 2, scope: !7, file: !8, line: 6, type: !11)
!16 = !DILocalVariable(name: "bar", arg: 3, scope: !7, file: !8, line: 6, type: !12)
!17 = !DILocalVariable(name: "tmp", scope: !7, file: !8, line: 10, type: !11)
!18 = !DILocalVariable(name: "bees", scope: !7, file: !8, line: 11, type: !11)
!19 = !DILocalVariable(name: "j", scope: !20, file: !8, line: 12, type: !11)
!20 = distinct !DILexicalBlock(scope: !7, file: !8, line: 12, column: 3)
!21 = !DILocation(line: 6, column: 13, scope: !7)
!22 = !DILocation(line: 6, column: 23, scope: !7)
!23 = !DILocation(line: 6, column: 34, scope: !7)
!24 = !DILocation(line: 7, column: 16, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !8, line: 7, column: 7)
!26 = !DILocation(line: 7, column: 7, scope: !7)
!27 = !DILocation(line: 12, column: 12, scope: !20)
!28 = !DILocation(line: 10, column: 7, scope: !7)
!29 = !DILocation(line: 12, column: 21, scope: !30)
!30 = distinct !DILexicalBlock(scope: !20, file: !8, line: 12, column: 3)
!31 = !DILocation(line: 12, column: 3, scope: !20)
!32 = !DILocation(line: 13, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !8, line: 12, column: 34)
!34 = !DILocation(line: 12, column: 30, scope: !30)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 14, column: 9, scope: !33)
!40 = distinct !{!40, !31, !41, !42}
!41 = !DILocation(line: 15, column: 3, scope: !20)
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !DILocation(line: 11, column: 7, scope: !7)
!46 = distinct !{!46, !31, !41, !47, !42}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !DILocation(line: 0, scope: !7)
!49 = !DILocation(line: 18, column: 1, scope: !7)
