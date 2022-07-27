; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@__const.example.data = private unnamed_addr constant [4 x i64] [i64 0, i64 1, i64 2, i64 3], align 16
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i64 @example(i64 %n) #0 !dbg !10 {
entry:
  %n.addr = alloca i64, align 8
  %data = alloca [4 x i64], align 16
  %i = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [4 x i64]* %data, metadata !16, metadata !DIExpression()), !dbg !20
  %0 = bitcast [4 x i64]* %data to i8*, !dbg !20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i64]* @__const.example.data to i8*), i64 32, i1 false), !dbg !20
  call void @llvm.dbg.declare(metadata i64* %i, metadata !21, metadata !DIExpression()), !dbg !22
  %1 = load i64, i64* %n.addr, align 8, !dbg !23
  %cmp = icmp ult i64 %1, 4, !dbg !25
  br i1 %cmp, label %if.then, label %if.else, !dbg !26

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %n.addr, align 8, !dbg !27
  %add = add i64 %2, 2, !dbg !29
  %rem = urem i64 %add, 4, !dbg !30
  store i64 %rem, i64* %i, align 8, !dbg !31
  br label %if.end, !dbg !32

if.else:                                          ; preds = %entry
  %3 = load i64, i64* %n.addr, align 8, !dbg !33
  %mul = mul i64 %3, 2, !dbg !35
  %rem1 = urem i64 %mul, 4, !dbg !36
  store i64 %rem1, i64* %i, align 8, !dbg !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i64, i64* %i, align 8, !dbg !38
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %data, i64 0, i64 %4, !dbg !39
  %5 = load i64, i64* %arrayidx, align 8, !dbg !39
  ret i64 %5, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !41 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i64, align 8
  %result = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i64* %n, metadata !45, metadata !DIExpression()), !dbg !46
  %0 = bitcast i64* %n to i8*, !dbg !47
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !48
  call void @llvm.dbg.declare(metadata i64* %result, metadata !49, metadata !DIExpression()), !dbg !50
  %1 = load i64, i64* %n, align 8, !dbg !51
  %call = call i64 @example(i64 %1), !dbg !52
  store i64 %call, i64* %result, align 8, !dbg !50
  %2 = load i64, i64* %result, align 8, !dbg !53
  %conv = trunc i64 %2 to i32, !dbg !53
  ret i32 %conv, !dbg !54
}

declare void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 13.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/branch-array-select")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Homebrew clang version 13.0.0"}
!10 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 3, type: !11, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 3, type: !13)
!15 = !DILocation(line: 3, column: 37, scope: !10)
!16 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 4, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 4)
!20 = !DILocation(line: 4, column: 17, scope: !10)
!21 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 5, type: !13)
!22 = !DILocation(line: 5, column: 17, scope: !10)
!23 = !DILocation(line: 6, column: 7, scope: !24)
!24 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 7)
!25 = !DILocation(line: 6, column: 9, scope: !24)
!26 = !DILocation(line: 6, column: 7, scope: !10)
!27 = !DILocation(line: 7, column: 10, scope: !28)
!28 = distinct !DILexicalBlock(scope: !24, file: !1, line: 6, column: 14)
!29 = !DILocation(line: 7, column: 12, scope: !28)
!30 = !DILocation(line: 7, column: 17, scope: !28)
!31 = !DILocation(line: 7, column: 7, scope: !28)
!32 = !DILocation(line: 8, column: 3, scope: !28)
!33 = !DILocation(line: 9, column: 10, scope: !34)
!34 = distinct !DILexicalBlock(scope: !24, file: !1, line: 8, column: 10)
!35 = !DILocation(line: 9, column: 12, scope: !34)
!36 = !DILocation(line: 9, column: 17, scope: !34)
!37 = !DILocation(line: 9, column: 7, scope: !34)
!38 = !DILocation(line: 11, column: 15, scope: !10)
!39 = !DILocation(line: 11, column: 10, scope: !10)
!40 = !DILocation(line: 11, column: 3, scope: !10)
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !42, scopeLine: 14, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!44}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DILocalVariable(name: "n", scope: !41, file: !1, line: 15, type: !13)
!46 = !DILocation(line: 15, column: 17, scope: !41)
!47 = !DILocation(line: 16, column: 22, scope: !41)
!48 = !DILocation(line: 16, column: 3, scope: !41)
!49 = !DILocalVariable(name: "result", scope: !41, file: !1, line: 17, type: !13)
!50 = !DILocation(line: 17, column: 17, scope: !41)
!51 = !DILocation(line: 17, column: 34, scope: !41)
!52 = !DILocation(line: 17, column: 26, scope: !41)
!53 = !DILocation(line: 18, column: 10, scope: !41)
!54 = !DILocation(line: 18, column: 3, scope: !41)
