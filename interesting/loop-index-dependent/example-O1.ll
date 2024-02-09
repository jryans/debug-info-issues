; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 0, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !21
  br label %for.body, !dbg !22

for.cond.cleanup:                                 ; preds = %for.inc
  ret i32 %r.1, !dbg !23

for.body:                                         ; preds = %entry, %for.inc
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %r.07 = phi i32 [ 0, %entry ], [ %r.1, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i.08, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 %r.07, metadata !17, metadata !DIExpression()), !dbg !20
  %tobool.not = icmp eq i32 %i.08, 0, !dbg !24
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !28

if.then:                                          ; preds = %for.body
  %call = call i32 @modify(i32 1) #3, !dbg !29
  call void @llvm.dbg.value(metadata i32 %call, metadata !17, metadata !DIExpression()), !dbg !20
  br label %for.inc, !dbg !30

if.else:                                          ; preds = %for.body
  %add = add nsw i32 %r.07, 4, !dbg !31
  call void @llvm.dbg.value(metadata i32 %add, metadata !17, metadata !DIExpression()), !dbg !20
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %r.1 = phi i32 [ %call, %if.then ], [ %add, %if.else ], !dbg !32
  call void @llvm.dbg.value(metadata i32 %r.1, metadata !17, metadata !DIExpression()), !dbg !20
  %inc = add nuw nsw i32 %i.08, 1, !dbg !33
  call void @llvm.dbg.value(metadata i32 %inc, metadata !18, metadata !DIExpression()), !dbg !21
  %cmp = icmp eq i32 %i.08, 0, !dbg !34
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !22, !llvm.loop !35
}

declare !dbg !39 i32 @modify(i32) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/interesting/loop-index-dependent")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 3, type: !12, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 3, type: !14)
!17 = !DILocalVariable(name: "r", scope: !11, file: !8, line: 4, type: !14)
!18 = !DILocalVariable(name: "i", scope: !19, file: !8, line: 5, type: !14)
!19 = distinct !DILexicalBlock(scope: !11, file: !8, line: 5, column: 3)
!20 = !DILocation(line: 0, scope: !11)
!21 = !DILocation(line: 0, scope: !19)
!22 = !DILocation(line: 5, column: 3, scope: !19)
!23 = !DILocation(line: 11, column: 3, scope: !11)
!24 = !DILocation(line: 6, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !8, line: 6, column: 9)
!26 = distinct !DILexicalBlock(scope: !27, file: !8, line: 5, column: 31)
!27 = distinct !DILexicalBlock(scope: !19, file: !8, line: 5, column: 3)
!28 = !DILocation(line: 6, column: 9, scope: !26)
!29 = !DILocation(line: 7, column: 11, scope: !25)
!30 = !DILocation(line: 7, column: 7, scope: !25)
!31 = !DILocation(line: 9, column: 9, scope: !25)
!32 = !DILocation(line: 0, scope: !25)
!33 = !DILocation(line: 5, column: 27, scope: !27)
!34 = !DILocation(line: 5, column: 21, scope: !27)
!35 = distinct !{!35, !22, !36, !37, !38}
!36 = !DILocation(line: 10, column: 3, scope: !19)
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !DISubprogram(name: "modify", scope: !8, file: !8, line: 1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
