; ModuleID = 'example-O0.ll'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !15, metadata !DIExpression()), !dbg !16
  %tobool = icmp ne i32 %n, 0, !dbg !17
  br i1 %tobool, label %if.then, label %if.else, !dbg !19

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !20, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i32 %n, metadata !21, metadata !DIExpression()), !dbg !16
  br label %if.end, !dbg !22

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 2, metadata !20, metadata !DIExpression()), !dbg !16
  %add = add nsw i32 %n, 2, !dbg !24
  call void @llvm.dbg.value(metadata i32 %add, metadata !21, metadata !DIExpression()), !dbg !16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %a.0 = phi i32 [ %n, %if.then ], [ %add, %if.else ], !dbg !26
  %b.0 = phi i32 [ 1, %if.then ], [ 2, %if.else ], !dbg !26
  call void @llvm.dbg.value(metadata i32 %b.0, metadata !20, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i32 %a.0, metadata !21, metadata !DIExpression()), !dbg !16
  %add1 = add nsw i32 %n, %a.0, !dbg !27
  %add2 = add nsw i32 %add1, 1, !dbg !28
  %add3 = add nsw i32 %b.0, %add2, !dbg !29
  call void @llvm.dbg.value(metadata i32 %add3, metadata !20, metadata !DIExpression()), !dbg !16
  %add4 = add nsw i32 %a.0, %add3, !dbg !30
  ret i32 %add4, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/DWARF/variable-definition-within-scope")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 1, type: !14)
!16 = !DILocation(line: 0, scope: !11)
!17 = !DILocation(line: 4, column: 7, scope: !18)
!18 = distinct !DILexicalBlock(scope: !11, file: !8, line: 4, column: 7)
!19 = !DILocation(line: 4, column: 7, scope: !11)
!20 = !DILocalVariable(name: "b", scope: !11, file: !8, line: 3, type: !14)
!21 = !DILocalVariable(name: "a", scope: !11, file: !8, line: 2, type: !14)
!22 = !DILocation(line: 7, column: 3, scope: !23)
!23 = distinct !DILexicalBlock(scope: !18, file: !8, line: 4, column: 10)
!24 = !DILocation(line: 9, column: 11, scope: !25)
!25 = distinct !DILexicalBlock(scope: !18, file: !8, line: 7, column: 10)
!26 = !DILocation(line: 0, scope: !18)
!27 = !DILocation(line: 11, column: 10, scope: !11)
!28 = !DILocation(line: 11, column: 14, scope: !11)
!29 = !DILocation(line: 11, column: 5, scope: !11)
!30 = !DILocation(line: 12, column: 12, scope: !11)
!31 = !DILocation(line: 12, column: 3, scope: !11)
