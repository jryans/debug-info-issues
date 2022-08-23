; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) #0 !dbg !10 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %x, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i32, i32* %n.addr, align 4, !dbg !18
  %mul = mul nsw i32 %0, 2, !dbg !19
  store i32 %mul, i32* %x, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %y, metadata !20, metadata !DIExpression()), !dbg !21
  %1 = load i32, i32* %x, align 4, !dbg !22
  %add = add nsw i32 %1, 4, !dbg !23
  %2 = load i32, i32* %n.addr, align 4, !dbg !24
  %add1 = add nsw i32 %add, %2, !dbg !25
  store i32 %add1, i32* %y, align 4, !dbg !21
  %3 = load i32, i32* %y, align 4, !dbg !26
  ret i32 %3, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !28 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i64, align 8
  %result = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i64* %n, metadata !32, metadata !DIExpression()), !dbg !34
  %0 = bitcast i64* %n to i8*, !dbg !35
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !36
  call void @llvm.dbg.declare(metadata i64* %result, metadata !37, metadata !DIExpression()), !dbg !38
  %1 = load i64, i64* %n, align 8, !dbg !39
  %conv = trunc i64 %1 to i32, !dbg !39
  %call = call i32 @example(i32 %conv), !dbg !40
  %conv1 = sext i32 %call to i64, !dbg !40
  store i64 %conv1, i64* %result, align 8, !dbg !38
  %2 = load i64, i64* %result, align 8, !dbg !41
  %conv2 = trunc i64 %2 to i32, !dbg !41
  ret i32 %conv2, !dbg !42
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 13.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/single-path")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Homebrew clang version 13.0.0"}
!10 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!15 = !DILocation(line: 1, column: 17, scope: !10)
!16 = !DILocalVariable(name: "x", scope: !10, file: !1, line: 2, type: !13)
!17 = !DILocation(line: 2, column: 7, scope: !10)
!18 = !DILocation(line: 2, column: 11, scope: !10)
!19 = !DILocation(line: 2, column: 13, scope: !10)
!20 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 3, type: !13)
!21 = !DILocation(line: 3, column: 7, scope: !10)
!22 = !DILocation(line: 3, column: 11, scope: !10)
!23 = !DILocation(line: 3, column: 13, scope: !10)
!24 = !DILocation(line: 3, column: 19, scope: !10)
!25 = !DILocation(line: 3, column: 17, scope: !10)
!26 = !DILocation(line: 4, column: 10, scope: !10)
!27 = !DILocation(line: 4, column: 3, scope: !10)
!28 = distinct !DISubprogram(name: "main", scope: !29, file: !29, line: 5, type: !30, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!29 = !DIFile(filename: "./../main.h", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/single-path")
!30 = !DISubroutineType(types: !31)
!31 = !{!13}
!32 = !DILocalVariable(name: "n", scope: !28, file: !29, line: 6, type: !33)
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 6, column: 17, scope: !28)
!35 = !DILocation(line: 8, column: 22, scope: !28)
!36 = !DILocation(line: 8, column: 3, scope: !28)
!37 = !DILocalVariable(name: "result", scope: !28, file: !29, line: 10, type: !33)
!38 = !DILocation(line: 10, column: 17, scope: !28)
!39 = !DILocation(line: 10, column: 34, scope: !28)
!40 = !DILocation(line: 10, column: 26, scope: !28)
!41 = !DILocation(line: 11, column: 10, scope: !28)
!42 = !DILocation(line: 11, column: 3, scope: !28)
