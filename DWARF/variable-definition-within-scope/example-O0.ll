; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) #0 !dbg !11 {
entry:
  %n.addr = alloca i32, align 4
  %bob = alloca i32, align 4
  %tom = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %bob, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %tom, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = load i32, i32* %n.addr, align 4, !dbg !21
  %tobool = icmp ne i32 %0, 0, !dbg !21
  br i1 %tobool, label %if.then, label %if.else, !dbg !23

if.then:                                          ; preds = %entry
  store i32 1, i32* %tom, align 4, !dbg !24
  %1 = load i32, i32* %n.addr, align 4, !dbg !26
  store i32 %1, i32* %bob, align 4, !dbg !27
  br label %if.end, !dbg !28

if.else:                                          ; preds = %entry
  store i32 2, i32* %tom, align 4, !dbg !29
  %2 = load i32, i32* %n.addr, align 4, !dbg !31
  %add = add nsw i32 %2, 2, !dbg !32
  store i32 %add, i32* %bob, align 4, !dbg !33
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %n.addr, align 4, !dbg !34
  %4 = load i32, i32* %bob, align 4, !dbg !35
  %add1 = add nsw i32 %3, %4, !dbg !36
  %add2 = add nsw i32 %add1, 1, !dbg !37
  %5 = load i32, i32* %tom, align 4, !dbg !38
  %add3 = add nsw i32 %5, %add2, !dbg !38
  store i32 %add3, i32* %tom, align 4, !dbg !38
  %6 = load i32, i32* %bob, align 4, !dbg !39
  %7 = load i32, i32* %tom, align 4, !dbg !40
  %add4 = add nsw i32 %6, %7, !dbg !41
  ret i32 %add4, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

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
!16 = !DILocation(line: 1, column: 17, scope: !11)
!17 = !DILocalVariable(name: "bob", scope: !11, file: !8, line: 2, type: !14)
!18 = !DILocation(line: 2, column: 7, scope: !11)
!19 = !DILocalVariable(name: "tom", scope: !11, file: !8, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 7, scope: !11)
!21 = !DILocation(line: 4, column: 7, scope: !22)
!22 = distinct !DILexicalBlock(scope: !11, file: !8, line: 4, column: 7)
!23 = !DILocation(line: 4, column: 7, scope: !11)
!24 = !DILocation(line: 5, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !22, file: !8, line: 4, column: 10)
!26 = !DILocation(line: 6, column: 11, scope: !25)
!27 = !DILocation(line: 6, column: 9, scope: !25)
!28 = !DILocation(line: 7, column: 3, scope: !25)
!29 = !DILocation(line: 8, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !8, line: 7, column: 10)
!31 = !DILocation(line: 9, column: 11, scope: !30)
!32 = !DILocation(line: 9, column: 13, scope: !30)
!33 = !DILocation(line: 9, column: 9, scope: !30)
!34 = !DILocation(line: 11, column: 10, scope: !11)
!35 = !DILocation(line: 11, column: 14, scope: !11)
!36 = !DILocation(line: 11, column: 12, scope: !11)
!37 = !DILocation(line: 11, column: 18, scope: !11)
!38 = !DILocation(line: 11, column: 7, scope: !11)
!39 = !DILocation(line: 12, column: 10, scope: !11)
!40 = !DILocation(line: 12, column: 16, scope: !11)
!41 = !DILocation(line: 12, column: 14, scope: !11)
!42 = !DILocation(line: 12, column: 3, scope: !11)
