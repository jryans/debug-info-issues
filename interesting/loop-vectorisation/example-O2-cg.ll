; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: nofree noinline norecurse nosync nounwind readonly ssp uwtable
define i32 @example(i32* nocapture readonly %x, i32 %len) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32* %x, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32 %len, metadata !18, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32 0, metadata !20, metadata !DIExpression()), !dbg !23
  %cmp6 = icmp sgt i32 %len, 0, !dbg !24
  br i1 %cmp6, label %for.body.preheader, label %for.cond.cleanup, !dbg !26

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %len to i64, !dbg !24
  %min.iters.check = icmp ult i32 %len, 4, !dbg !26
  br i1 %min.iters.check, label %for.body.preheader9, label %vector.ph, !dbg !26

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292, !dbg !26
  br label %vector.body, !dbg !26

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %0, %vector.body ]
  %scevgep10 = getelementptr i32, i32* %x, i64 %index, !dbg !28
  %scevgep1011 = bitcast i32* %scevgep10 to <4 x i32>*, !dbg !28
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep1011, align 4, !dbg !28, !tbaa !30
  %0 = add <4 x i32> %wide.load, %vec.phi, !dbg !34
  %index.next = add nuw i64 %index, 4, !dbg !27
  %1 = icmp eq i64 %n.vec, %index.next, !dbg !27
  br i1 %1, label %middle.block, label %vector.body, !dbg !27, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %rdx.shuf = shufflevector <4 x i32> %0, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !26
  %bin.rdx = add <4 x i32> %0, %rdx.shuf, !dbg !26
  %rdx.shuf12 = shufflevector <4 x i32> %bin.rdx, <4 x i32> poison, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !26
  %bin.rdx13 = add <4 x i32> %bin.rdx, %rdx.shuf12, !dbg !26
  %2 = extractelement <4 x i32> %bin.rdx13, i32 0, !dbg !26
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count, !dbg !26
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader9, !dbg !26

for.body.preheader9:                              ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  %r.07.ph = phi i32 [ 0, %for.body.preheader ], [ %2, %middle.block ]
  br label %for.body, !dbg !26

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %entry
  %r.0.lcssa = phi i32 [ 0, %entry ], [ %2, %middle.block ], [ %add, %for.body ], !dbg !22
  ret i32 %r.0.lcssa, !dbg !40

for.body:                                         ; preds = %for.body.preheader9, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader9 ]
  %r.07 = phi i32 [ %add, %for.body ], [ %r.07.ph, %for.body.preheader9 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !20, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %r.07, metadata !19, metadata !DIExpression()), !dbg !22
  %scevgep = getelementptr i32, i32* %x, i64 %indvars.iv, !dbg !28
  %3 = load i32, i32* %scevgep, align 4, !dbg !28, !tbaa !30
  %add = add nsw i32 %3, %r.07, !dbg !34
  call void @llvm.dbg.value(metadata i32 %add, metadata !19, metadata !DIExpression()), !dbg !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !27
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !20, metadata !DIExpression()), !dbg !23
  %exitcond.not = icmp eq i64 %wide.trip.count, %indvars.iv.next, !dbg !24
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !26, !llvm.loop !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree noinline norecurse nosync nounwind readonly ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/interesting/loop-vectorisation")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !16)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!16 = !{!17, !18, !19, !20}
!17 = !DILocalVariable(name: "x", arg: 1, scope: !11, file: !8, line: 1, type: !15)
!18 = !DILocalVariable(name: "len", arg: 2, scope: !11, file: !8, line: 1, type: !14)
!19 = !DILocalVariable(name: "r", scope: !11, file: !8, line: 2, type: !14)
!20 = !DILocalVariable(name: "i", scope: !21, file: !8, line: 4, type: !14)
!21 = distinct !DILexicalBlock(scope: !11, file: !8, line: 4, column: 3)
!22 = !DILocation(line: 0, scope: !11)
!23 = !DILocation(line: 0, scope: !21)
!24 = !DILocation(line: 4, column: 21, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !8, line: 4, column: 3)
!26 = !DILocation(line: 4, column: 3, scope: !21)
!27 = !DILocation(line: 4, column: 29, scope: !25)
!28 = !DILocation(line: 5, column: 10, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !8, line: 4, column: 33)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 5, column: 7, scope: !29)
!35 = distinct !{!35, !26, !36, !37, !38, !39}
!36 = !DILocation(line: 6, column: 3, scope: !21)
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !DILocation(line: 7, column: 3, scope: !11)
!41 = distinct !{!41, !26, !36, !37, !38, !39}
