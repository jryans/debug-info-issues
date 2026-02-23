; ModuleID = '/tmp/compiler-explorer-compileraATjIv/example.c'
source_filename = "/tmp/compiler-explorer-compileraATjIv/example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @example(i32* %array, i32 %size) local_unnamed_addr #0 !dbg !8 {
entry:
  call void @llvm.dbg.value(metadata i32* %array, metadata !15, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 %size, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 0, metadata !17, metadata !DIExpression()), !dbg !20
  %cmp.not4 = icmp eq i32 %size, 0, !dbg !21
  br i1 %cmp.not4, label %for.cond.cleanup, label %for.body.preheader, !dbg !23

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %size to i64, !dbg !23
  br label %for.body, !dbg !23

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void, !dbg !24

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !17, metadata !DIExpression()), !dbg !20
  %add.ptr = getelementptr inbounds i32, i32* %array, i64 %indvars.iv, !dbg !25
  call void @examine(i32* %add.ptr) #3, !dbg !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !27
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !17, metadata !DIExpression()), !dbg !20
  %cmp.not = icmp eq i64 %indvars.iv.next, %0, !dbg !21
  br i1 %cmp.not, label %for.cond.cleanup, label %for.body, !dbg !23, !llvm.loop !28
}

declare !dbg !32 dso_local void @examine(i32*) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git 8ac458cab1f2d84a892fc9eed882a493995170a3)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/tmp/compiler-explorer-compileraATjIv/example.c", directory: "/tmp/compiler-explorer-compileraATjIv")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git 8ac458cab1f2d84a892fc9eed882a493995170a3)"}
!8 = distinct !DISubprogram(name: "example", scope: !9, file: !9, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!9 = !DIFile(filename: "example.c", directory: "/tmp/compiler-explorer-compileraATjIv")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(name: "array", arg: 1, scope: !8, file: !9, line: 3, type: !12)
!16 = !DILocalVariable(name: "size", arg: 2, scope: !8, file: !9, line: 3, type: !13)
!17 = !DILocalVariable(name: "i", scope: !18, file: !9, line: 4, type: !13)
!18 = distinct !DILexicalBlock(scope: !8, file: !9, line: 4, column: 3)
!19 = !DILocation(line: 0, scope: !8)
!20 = !DILocation(line: 0, scope: !18)
!21 = !DILocation(line: 4, column: 26, scope: !22)
!22 = distinct !DILexicalBlock(scope: !18, file: !9, line: 4, column: 3)
!23 = !DILocation(line: 4, column: 3, scope: !18)
!24 = !DILocation(line: 6, column: 1, scope: !8)
!25 = !DILocation(line: 5, column: 19, scope: !22)
!26 = !DILocation(line: 5, column: 5, scope: !22)
!27 = !DILocation(line: 4, column: 35, scope: !22)
!28 = distinct !{!28, !23, !29, !30, !31}
!29 = !DILocation(line: 5, column: 22, scope: !18)
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !DISubprogram(name: "examine", scope: !9, file: !9, line: 1, type: !33, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !12}
