; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !20
  %call = call i32 @cond(i32 %n) #3, !dbg !21
  call void @llvm.dbg.value(metadata i32 %call, metadata !19, metadata !DIExpression()), !dbg !20
  %tobool.not = icmp eq i32 %call, 0, !dbg !22
  %.12 = select i1 %tobool.not, i32 -1, i32 1
  call void @read(i32 %.12) #3, !dbg !24
  ret i32 %.12, !dbg !25
}

declare !dbg !26 i32 @cond(i32) local_unnamed_addr #1

declare !dbg !27 void @read(i32) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/LLVM/select-erases-value-info")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 4, type: !12, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !19}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 4, type: !14)
!17 = !DILocalVariable(name: "a", scope: !11, file: !8, line: 5, type: !14)
!18 = !DILocalVariable(name: "b", scope: !11, file: !8, line: 5, type: !14)
!19 = !DILocalVariable(name: "c", scope: !11, file: !8, line: 5, type: !14)
!20 = !DILocation(line: 0, scope: !11)
!21 = !DILocation(line: 5, column: 17, scope: !11)
!22 = !DILocation(line: 6, column: 7, scope: !23)
!23 = distinct !DILexicalBlock(scope: !11, file: !8, line: 6, column: 7)
!24 = !DILocation(line: 0, scope: !23)
!25 = !DILocation(line: 16, column: 1, scope: !11)
!26 = !DISubprogram(name: "cond", scope: !8, file: !8, line: 1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!27 = !DISubprogram(name: "read", scope: !8, file: !8, line: 2, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !14}
