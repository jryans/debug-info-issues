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
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %x, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i32, i32* %n.addr, align 4, !dbg !18
  %mul = mul nsw i32 %0, 2, !dbg !19
  store i32 %mul, i32* %x, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %y, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %y, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %i, align 4, !dbg !25
  br label %for.cond, !dbg !26

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !27
  %2 = load i32, i32* %n.addr, align 4, !dbg !29
  %cmp = icmp ult i32 %1, %2, !dbg !30
  br i1 %cmp, label %for.body, label %for.end, !dbg !31

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4, !dbg !32
  %add = add nsw i32 %3, 4, !dbg !34
  %4 = load i32, i32* %n.addr, align 4, !dbg !35
  %add1 = add nsw i32 %add, %4, !dbg !36
  %5 = load i32, i32* %y, align 4, !dbg !37
  %add2 = add nsw i32 %5, %add1, !dbg !37
  store i32 %add2, i32* %y, align 4, !dbg !37
  br label %for.inc, !dbg !38

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !39
  %inc = add i32 %6, 1, !dbg !39
  store i32 %inc, i32* %i, align 4, !dbg !39
  br label %for.cond, !dbg !40, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %y, align 4, !dbg !44
  ret i32 %7, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !46 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i64, align 8
  %result = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i64* %n, metadata !50, metadata !DIExpression()), !dbg !52
  %0 = bitcast i64* %n to i8*, !dbg !53
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !54
  call void @llvm.dbg.declare(metadata i64* %result, metadata !55, metadata !DIExpression()), !dbg !56
  %1 = load i64, i64* %n, align 8, !dbg !57
  %conv = trunc i64 %1 to i32, !dbg !57
  %call = call i32 @example(i32 %conv), !dbg !58
  %conv1 = sext i32 %call to i64, !dbg !58
  store i64 %conv1, i64* %result, align 8, !dbg !56
  %2 = load i64, i64* %result, align 8, !dbg !59
  %conv2 = trunc i64 %2 to i32, !dbg !59
  ret i32 %conv2, !dbg !60
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 13.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/loop-unbounded")
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
!22 = !DILocalVariable(name: "i", scope: !23, file: !1, line: 4, type: !24)
!23 = distinct !DILexicalBlock(scope: !10, file: !1, line: 4, column: 3)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DILocation(line: 4, column: 21, scope: !23)
!26 = !DILocation(line: 4, column: 8, scope: !23)
!27 = !DILocation(line: 4, column: 28, scope: !28)
!28 = distinct !DILexicalBlock(scope: !23, file: !1, line: 4, column: 3)
!29 = !DILocation(line: 4, column: 32, scope: !28)
!30 = !DILocation(line: 4, column: 30, scope: !28)
!31 = !DILocation(line: 4, column: 3, scope: !23)
!32 = !DILocation(line: 5, column: 10, scope: !33)
!33 = distinct !DILexicalBlock(scope: !28, file: !1, line: 4, column: 40)
!34 = !DILocation(line: 5, column: 12, scope: !33)
!35 = !DILocation(line: 5, column: 18, scope: !33)
!36 = !DILocation(line: 5, column: 16, scope: !33)
!37 = !DILocation(line: 5, column: 7, scope: !33)
!38 = !DILocation(line: 6, column: 3, scope: !33)
!39 = !DILocation(line: 4, column: 36, scope: !28)
!40 = !DILocation(line: 4, column: 3, scope: !28)
!41 = distinct !{!41, !31, !42, !43}
!42 = !DILocation(line: 6, column: 3, scope: !23)
!43 = !{!"llvm.loop.mustprogress"}
!44 = !DILocation(line: 7, column: 10, scope: !10)
!45 = !DILocation(line: 7, column: 3, scope: !10)
!46 = distinct !DISubprogram(name: "main", scope: !47, file: !47, line: 3, type: !48, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!47 = !DIFile(filename: "./../main.h", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/loop-unbounded")
!48 = !DISubroutineType(types: !49)
!49 = !{!13}
!50 = !DILocalVariable(name: "n", scope: !46, file: !47, line: 4, type: !51)
!51 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DILocation(line: 4, column: 17, scope: !46)
!53 = !DILocation(line: 5, column: 22, scope: !46)
!54 = !DILocation(line: 5, column: 3, scope: !46)
!55 = !DILocalVariable(name: "result", scope: !46, file: !47, line: 6, type: !51)
!56 = !DILocation(line: 6, column: 17, scope: !46)
!57 = !DILocation(line: 6, column: 34, scope: !46)
!58 = !DILocation(line: 6, column: 26, scope: !46)
!59 = !DILocation(line: 7, column: 10, scope: !46)
!60 = !DILocation(line: 7, column: 3, scope: !46)
