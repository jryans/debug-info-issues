; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: nofree noinline norecurse nosync nounwind readnone ssp uwtable
define i32 @example(i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 0, metadata !17, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !24
  %cmp = icmp slt i32 %n, 10, !dbg !25
  br i1 %cmp, label %inside, label %for.cond, !dbg !27

for.cond:                                         ; preds = %entry, %inside
  %y.0 = phi i32 [ %add3, %inside ], [ 0, %entry ], !dbg !24
  %i.0 = phi i32 [ %inc, %inside ], [ 2, %entry ], !dbg !28
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !18, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 %y.0, metadata !17, metadata !DIExpression()), !dbg !24
  %cmp1 = icmp ult i32 %i.0, %n, !dbg !29
  br i1 %cmp1, label %inside, label %for.end, !dbg !30

inside:                                           ; preds = %for.cond, %entry
  %y.1 = phi i32 [ 0, %entry ], [ %y.0, %for.cond ], !dbg !24
  %i.1 = phi i32 [ 0, %entry ], [ %i.0, %for.cond ], !dbg !24
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !18, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 %y.1, metadata !17, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.label(metadata !20), !dbg !31
  %add = add i32 %n, 4, !dbg !32
  %add2 = add i32 %add, %y.1, !dbg !33
  %add3 = add i32 %add2, %i.1, !dbg !34
  call void @llvm.dbg.value(metadata i32 %add3, metadata !17, metadata !DIExpression()), !dbg !24
  %inc = add i32 %i.1, 1, !dbg !35
  call void @llvm.dbg.value(metadata i32 %inc, metadata !18, metadata !DIExpression()), !dbg !24
  br label %for.cond, !dbg !36, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  ret i32 %y.0, !dbg !41
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline norecurse nosync nounwind readnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/irreducible")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !20}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 1, type: !14)
!17 = !DILocalVariable(name: "y", scope: !11, file: !8, line: 2, type: !14)
!18 = !DILocalVariable(name: "i", scope: !11, file: !8, line: 3, type: !19)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DILabel(scope: !21, name: "inside", file: !8, line: 7)
!21 = distinct !DILexicalBlock(scope: !22, file: !8, line: 6, column: 27)
!22 = distinct !DILexicalBlock(scope: !23, file: !8, line: 6, column: 3)
!23 = distinct !DILexicalBlock(scope: !11, file: !8, line: 6, column: 3)
!24 = !DILocation(line: 0, scope: !11)
!25 = !DILocation(line: 4, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !11, file: !8, line: 4, column: 7)
!27 = !DILocation(line: 4, column: 7, scope: !11)
!28 = !DILocation(line: 0, scope: !23)
!29 = !DILocation(line: 6, column: 17, scope: !22)
!30 = !DILocation(line: 6, column: 3, scope: !23)
!31 = !DILocation(line: 7, column: 1, scope: !21)
!32 = !DILocation(line: 8, column: 12, scope: !21)
!33 = !DILocation(line: 8, column: 16, scope: !21)
!34 = !DILocation(line: 8, column: 7, scope: !21)
!35 = !DILocation(line: 6, column: 23, scope: !22)
!36 = !DILocation(line: 6, column: 3, scope: !22)
!37 = distinct !{!37, !30, !38, !39, !40}
!38 = !DILocation(line: 9, column: 3, scope: !23)
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !DILocation(line: 10, column: 3, scope: !11)
