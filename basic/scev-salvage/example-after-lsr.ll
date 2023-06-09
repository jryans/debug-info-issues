; ModuleID = '/app/example.c' https://godbolt.org/z/xvEKs3rxd
source_filename = "/app/example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @example(i32 %n, i32 %size, i32* nocapture %data) local_unnamed_addr #0 !dbg !8 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !15, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 %size, metadata !16, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32* %data, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !21
  %data9 = bitcast i32* %data to i8*, !dbg !22
  %cmp7 = icmp sgt i32 %size, 0, !dbg !22
  br i1 %cmp7, label %while.body.preheader, label %while.end, !dbg !23

while.body.preheader:                             ; preds = %entry
  %wide.trip.count = zext i32 %size to i64, !dbg !22
  %0 = zext i32 %n to i64, !dbg !23
  %1 = shl nuw nsw i64 %wide.trip.count, 2, !dbg !23
  br label %while.body, !dbg !23

while.body:                                       ; preds = %while.body.preheader, %while.body
  %lsr.iv = phi i64 [ 0, %while.body.preheader ], [ %lsr.iv.next, %while.body ]
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !18, metadata !DIExpression(DW_OP_consts, 4, DW_OP_div, DW_OP_stack_value)), !dbg !21
  call void @llvm.dbg.value(metadata !DIArgList(i64 %lsr.iv, i32 %n), metadata !19, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_consts, 4, DW_OP_div, DW_OP_consts, 4, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !24
  %2 = add i64 %0, %lsr.iv, !dbg !25
  %uglygep = getelementptr i8, i8* %data9, i64 %lsr.iv
  %uglygep10 = bitcast i8* %uglygep to i32*
  %tmp = trunc i64 %2 to i32
  store i32 %tmp, i32* %uglygep10, align 4, !dbg !26, !tbaa !27
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !18, metadata !DIExpression(DW_OP_consts, 4, DW_OP_div, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !21
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 4, !dbg !22
  %exitcond.not = icmp eq i64 %1, %lsr.iv.next, !dbg !22
  br i1 %exitcond.not, label %while.end.loopexit, label %while.body, !dbg !23, !llvm.loop !31

while.end.loopexit:                               ; preds = %while.body
  br label %while.end, !dbg !36

while.end:                                        ; preds = %while.end.loopexit, %entry
  ret void, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "<source>", directory: "/app")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!8 = distinct !DISubprogram(name: "example", scope: !9, file: !9, line: 1, type: !10, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "example.c", directory: "/app")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DILocalVariable(name: "n", arg: 1, scope: !8, file: !9, line: 1, type: !12)
!16 = !DILocalVariable(name: "size", arg: 2, scope: !8, file: !9, line: 1, type: !12)
!17 = !DILocalVariable(name: "data", arg: 3, scope: !8, file: !9, line: 1, type: !13)
!18 = !DILocalVariable(name: "i", scope: !8, file: !9, line: 2, type: !12)
!19 = !DILocalVariable(name: "comp", scope: !20, file: !9, line: 6, type: !12)
!20 = distinct !DILexicalBlock(scope: !8, file: !9, line: 5, column: 20)
!21 = !DILocation(line: 0, scope: !8)
!22 = !DILocation(line: 5, column: 12, scope: !8)
!23 = !DILocation(line: 5, column: 3, scope: !8)
!24 = !DILocation(line: 0, scope: !20)
!25 = !DILocation(line: 7, column: 5, scope: !20)
!26 = !DILocation(line: 7, column: 13, scope: !20)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = distinct !{!31, !23, !32, !33, !34, !35}
!32 = !DILocation(line: 9, column: 3, scope: !8)
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!"llvm.loop.vectorize.width", i32 1}
!36 = !DILocation(line: 10, column: 1, scope: !8)
