; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @example1(i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !19
  %mul = shl nsw i32 %n, 1, !dbg !20
  call void @llvm.dbg.value(metadata i32 %mul, metadata !17, metadata !DIExpression()), !dbg !19
  %add = add i32 %n, 4, !dbg !21
  %add1 = add i32 %add, %mul, !dbg !22
  call void @llvm.dbg.value(metadata i32 %add1, metadata !18, metadata !DIExpression()), !dbg !19
  ret i32 %add1, !dbg !23
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example2(i32 %n) local_unnamed_addr #1 !dbg !24 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !26, metadata !DIExpression()), !dbg !29
  %mul = shl nsw i32 %n, 1, !dbg !30
  call void @llvm.dbg.value(metadata i32 %mul, metadata !27, metadata !DIExpression()), !dbg !29
  call void @read(i32 %mul) #4, !dbg !31
  %add = add i32 %n, 4, !dbg !32
  %add1 = add i32 %add, %mul, !dbg !33
  call void @llvm.dbg.value(metadata i32 %add1, metadata !28, metadata !DIExpression()), !dbg !29
  call void @read(i32 %add1) #4, !dbg !34
  %add2 = add nsw i32 %add1, %n, !dbg !35
  call void @llvm.dbg.value(metadata i32 %add2, metadata !27, metadata !DIExpression()), !dbg !29
  %mul3 = shl nsw i32 %add2, 1, !dbg !36
  call void @llvm.dbg.value(metadata i32 %mul3, metadata !28, metadata !DIExpression()), !dbg !29
  ret i32 %mul3, !dbg !37
}

declare !dbg !38 void @read(i32) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/two-functions")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example1", scope: !8, file: !8, line: 3, type: !12, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 3, type: !14)
!17 = !DILocalVariable(name: "x", scope: !11, file: !8, line: 4, type: !14)
!18 = !DILocalVariable(name: "y", scope: !11, file: !8, line: 5, type: !14)
!19 = !DILocation(line: 0, scope: !11)
!20 = !DILocation(line: 4, column: 13, scope: !11)
!21 = !DILocation(line: 5, column: 13, scope: !11)
!22 = !DILocation(line: 5, column: 17, scope: !11)
!23 = !DILocation(line: 6, column: 3, scope: !11)
!24 = distinct !DISubprogram(name: "example2", scope: !8, file: !8, line: 9, type: !12, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !25)
!25 = !{!26, !27, !28}
!26 = !DILocalVariable(name: "n", arg: 1, scope: !24, file: !8, line: 9, type: !14)
!27 = !DILocalVariable(name: "x", scope: !24, file: !8, line: 10, type: !14)
!28 = !DILocalVariable(name: "y", scope: !24, file: !8, line: 11, type: !14)
!29 = !DILocation(line: 0, scope: !24)
!30 = !DILocation(line: 10, column: 13, scope: !24)
!31 = !DILocation(line: 10, column: 18, scope: !24)
!32 = !DILocation(line: 11, column: 13, scope: !24)
!33 = !DILocation(line: 11, column: 17, scope: !24)
!34 = !DILocation(line: 11, column: 22, scope: !24)
!35 = !DILocation(line: 12, column: 9, scope: !24)
!36 = !DILocation(line: 13, column: 9, scope: !24)
!37 = !DILocation(line: 14, column: 3, scope: !24)
!38 = !DISubprogram(name: "read", scope: !8, file: !8, line: 1, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !14}
