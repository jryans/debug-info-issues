; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @example(i32 %n, i32 %size, i32* %data) #0 !dbg !10 {
entry:
  %n.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %data.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %comp = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store i32* %data, i32** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %data.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %i, align 4, !dbg !23
  br label %while.cond, !dbg !24

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i, align 4, !dbg !25
  %1 = load i32, i32* %size.addr, align 4, !dbg !26
  %cmp = icmp ult i32 %0, %1, !dbg !27
  br i1 %cmp, label %while.body, label %while.end, !dbg !24

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %comp, metadata !28, metadata !DIExpression()), !dbg !30
  %2 = load i32, i32* %i, align 4, !dbg !31
  %mul = mul nsw i32 4, %2, !dbg !32
  %3 = load i32, i32* %n.addr, align 4, !dbg !33
  %add = add i32 %mul, %3, !dbg !34
  store i32 %add, i32* %comp, align 4, !dbg !30
  %4 = load i32, i32* %comp, align 4, !dbg !35
  %5 = load i32*, i32** %data.addr, align 8, !dbg !36
  %6 = load i32, i32* %i, align 4, !dbg !37
  %idxprom = sext i32 %6 to i64, !dbg !36
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom, !dbg !36
  store i32 %4, i32* %arrayidx, align 4, !dbg !38
  %7 = load i32, i32* %i, align 4, !dbg !39
  %add1 = add nsw i32 %7, 1, !dbg !39
  store i32 %add1, i32* %i, align 4, !dbg !39
  br label %while.cond, !dbg !24, !llvm.loop !40

while.end:                                        ; preds = %while.cond
  ret void, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !45 {
entry:
  %n = alloca i32, align 4
  %size = alloca i32, align 4
  %data = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32* %n, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %size, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32** %data, metadata !52, metadata !DIExpression()), !dbg !53
  %0 = bitcast i32* %n to i8*, !dbg !54
  call void @klee_make_symbolic(i8* %0, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !55
  %1 = bitcast i32* %size to i8*, !dbg !56
  call void @klee_make_symbolic(i8* %1, i64 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !57
  %2 = bitcast i32** %data to i8*, !dbg !58
  call void @klee_make_symbolic(i8* %2, i64 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !59
  %3 = load i32, i32* %n, align 4, !dbg !60
  %4 = load i32, i32* %size, align 4, !dbg !61
  %5 = load i32*, i32** %data, align 8, !dbg !62
  call void @example(i32 %3, i32 %4, i32* %5), !dbg !63
  ret i32 0, !dbg !64
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 13.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/scev-salvage")
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
!12 = !{null, !13, !13, !14}
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!15 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!16 = !DILocation(line: 1, column: 23, scope: !10)
!17 = !DILocalVariable(name: "size", arg: 2, scope: !10, file: !1, line: 1, type: !13)
!18 = !DILocation(line: 1, column: 35, scope: !10)
!19 = !DILocalVariable(name: "data", arg: 3, scope: !10, file: !1, line: 1, type: !14)
!20 = !DILocation(line: 1, column: 51, scope: !10)
!21 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 2, type: !22)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DILocation(line: 2, column: 7, scope: !10)
!24 = !DILocation(line: 4, column: 3, scope: !10)
!25 = !DILocation(line: 4, column: 10, scope: !10)
!26 = !DILocation(line: 4, column: 14, scope: !10)
!27 = !DILocation(line: 4, column: 12, scope: !10)
!28 = !DILocalVariable(name: "comp", scope: !29, file: !1, line: 5, type: !22)
!29 = distinct !DILexicalBlock(scope: !10, file: !1, line: 4, column: 20)
!30 = !DILocation(line: 5, column: 9, scope: !29)
!31 = !DILocation(line: 5, column: 21, scope: !29)
!32 = !DILocation(line: 5, column: 19, scope: !29)
!33 = !DILocation(line: 5, column: 26, scope: !29)
!34 = !DILocation(line: 5, column: 24, scope: !29)
!35 = !DILocation(line: 6, column: 15, scope: !29)
!36 = !DILocation(line: 6, column: 5, scope: !29)
!37 = !DILocation(line: 6, column: 10, scope: !29)
!38 = !DILocation(line: 6, column: 13, scope: !29)
!39 = !DILocation(line: 7, column: 7, scope: !29)
!40 = distinct !{!40, !24, !41, !42, !43}
!41 = !DILocation(line: 8, column: 3, scope: !10)
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.vectorize.width", i32 1}
!44 = !DILocation(line: 9, column: 1, scope: !10)
!45 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !46, scopeLine: 15, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!46 = !DISubroutineType(types: !47)
!47 = !{!22}
!48 = !DILocalVariable(name: "n", scope: !45, file: !1, line: 16, type: !13)
!49 = !DILocation(line: 16, column: 12, scope: !45)
!50 = !DILocalVariable(name: "size", scope: !45, file: !1, line: 17, type: !13)
!51 = !DILocation(line: 17, column: 12, scope: !45)
!52 = !DILocalVariable(name: "data", scope: !45, file: !1, line: 18, type: !14)
!53 = !DILocation(line: 18, column: 13, scope: !45)
!54 = !DILocation(line: 20, column: 22, scope: !45)
!55 = !DILocation(line: 20, column: 3, scope: !45)
!56 = !DILocation(line: 21, column: 22, scope: !45)
!57 = !DILocation(line: 21, column: 3, scope: !45)
!58 = !DILocation(line: 22, column: 22, scope: !45)
!59 = !DILocation(line: 22, column: 3, scope: !45)
!60 = !DILocation(line: 24, column: 11, scope: !45)
!61 = !DILocation(line: 24, column: 14, scope: !45)
!62 = !DILocation(line: 24, column: 20, scope: !45)
!63 = !DILocation(line: 24, column: 3, scope: !45)
!64 = !DILocation(line: 25, column: 1, scope: !45)
