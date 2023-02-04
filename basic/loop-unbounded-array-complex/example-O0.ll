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
  %i2 = alloca i64, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [4 x i64]* %data, metadata !16, metadata !DIExpression()), !dbg !20
  %0 = bitcast [4 x i64]* %data to i8*, !dbg !20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i64]* @__const.example.data to i8*), i64 32, i1 false), !dbg !20
  call void @llvm.dbg.declare(metadata i64* %i, metadata !21, metadata !DIExpression()), !dbg !23
  store i64 0, i64* %i, align 8, !dbg !23
  br label %for.cond, !dbg !24

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !dbg !25
  %2 = load i64, i64* %n.addr, align 8, !dbg !27
  %cmp = icmp ult i64 %1, %2, !dbg !28
  br i1 %cmp, label %for.body, label %for.end, !dbg !29

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %i2, metadata !30, metadata !DIExpression()), !dbg !32
  %3 = load i64, i64* %i, align 8, !dbg !33
  %add = add i64 %3, 2, !dbg !34
  %rem = urem i64 %add, 4, !dbg !35
  store i64 %rem, i64* %i2, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i64** %a, metadata !36, metadata !DIExpression()), !dbg !38
  %4 = load i64, i64* %i, align 8, !dbg !39
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %data, i64 0, i64 %4, !dbg !40
  store i64* %arrayidx, i64** %a, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i64** %b, metadata !41, metadata !DIExpression()), !dbg !42
  %5 = load i64, i64* %i2, align 8, !dbg !43
  %arrayidx1 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i64 0, i64 %5, !dbg !44
  store i64* %arrayidx1, i64** %b, align 8, !dbg !42
  %6 = load i64, i64* %n.addr, align 8, !dbg !45
  %7 = load i64*, i64** %b, align 8, !dbg !46
  %8 = load i64, i64* %7, align 8, !dbg !47
  %add2 = add i64 %8, %6, !dbg !47
  store i64 %add2, i64* %7, align 8, !dbg !47
  br label %for.inc, !dbg !48

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8, !dbg !49
  %inc = add i64 %9, 1, !dbg !49
  store i64 %inc, i64* %i, align 8, !dbg !49
  br label %for.cond, !dbg !50, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  %10 = load i64, i64* %n.addr, align 8, !dbg !54
  %rem3 = urem i64 %10, 4, !dbg !55
  %arrayidx4 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i64 0, i64 %rem3, !dbg !56
  %11 = load i64, i64* %arrayidx4, align 8, !dbg !56
  ret i64 %11, !dbg !57
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !58 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i64, align 8
  %result = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i64* %n, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = bitcast i64* %n to i8*, !dbg !65
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !66
  call void @llvm.dbg.declare(metadata i64* %result, metadata !67, metadata !DIExpression()), !dbg !68
  %1 = load i64, i64* %n, align 8, !dbg !69
  %call = call i64 @example(i64 %1), !dbg !70
  store i64 %call, i64* %result, align 8, !dbg !68
  %2 = load i64, i64* %result, align 8, !dbg !71
  %conv = trunc i64 %2 to i32, !dbg !71
  ret i32 %conv, !dbg !72
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
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/loop-unbounded-array-complex")
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
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !DILocalVariable(name: "n", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!15 = !DILocation(line: 1, column: 37, scope: !10)
!16 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 2, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 4)
!20 = !DILocation(line: 2, column: 17, scope: !10)
!21 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 3, type: !13)
!22 = distinct !DILexicalBlock(scope: !10, file: !1, line: 3, column: 3)
!23 = !DILocation(line: 3, column: 22, scope: !22)
!24 = !DILocation(line: 3, column: 8, scope: !22)
!25 = !DILocation(line: 3, column: 29, scope: !26)
!26 = distinct !DILexicalBlock(scope: !22, file: !1, line: 3, column: 3)
!27 = !DILocation(line: 3, column: 33, scope: !26)
!28 = !DILocation(line: 3, column: 31, scope: !26)
!29 = !DILocation(line: 3, column: 3, scope: !22)
!30 = !DILocalVariable(name: "i2", scope: !31, file: !1, line: 4, type: !13)
!31 = distinct !DILexicalBlock(scope: !26, file: !1, line: 3, column: 41)
!32 = !DILocation(line: 4, column: 19, scope: !31)
!33 = !DILocation(line: 4, column: 25, scope: !31)
!34 = !DILocation(line: 4, column: 27, scope: !31)
!35 = !DILocation(line: 4, column: 32, scope: !31)
!36 = !DILocalVariable(name: "a", scope: !31, file: !1, line: 5, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!38 = !DILocation(line: 5, column: 20, scope: !31)
!39 = !DILocation(line: 5, column: 30, scope: !31)
!40 = !DILocation(line: 5, column: 25, scope: !31)
!41 = !DILocalVariable(name: "b", scope: !31, file: !1, line: 6, type: !37)
!42 = !DILocation(line: 6, column: 20, scope: !31)
!43 = !DILocation(line: 6, column: 30, scope: !31)
!44 = !DILocation(line: 6, column: 25, scope: !31)
!45 = !DILocation(line: 7, column: 11, scope: !31)
!46 = !DILocation(line: 7, column: 6, scope: !31)
!47 = !DILocation(line: 7, column: 8, scope: !31)
!48 = !DILocation(line: 8, column: 3, scope: !31)
!49 = !DILocation(line: 3, column: 37, scope: !26)
!50 = !DILocation(line: 3, column: 3, scope: !26)
!51 = distinct !{!51, !29, !52, !53}
!52 = !DILocation(line: 8, column: 3, scope: !22)
!53 = !{!"llvm.loop.mustprogress"}
!54 = !DILocation(line: 9, column: 15, scope: !10)
!55 = !DILocation(line: 9, column: 17, scope: !10)
!56 = !DILocation(line: 9, column: 10, scope: !10)
!57 = !DILocation(line: 9, column: 3, scope: !10)
!58 = distinct !DISubprogram(name: "main", scope: !59, file: !59, line: 5, type: !60, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!59 = !DIFile(filename: "./../main.h", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/loop-unbounded-array-complex")
!60 = !DISubroutineType(types: !61)
!61 = !{!62}
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !DILocalVariable(name: "n", scope: !58, file: !59, line: 6, type: !13)
!64 = !DILocation(line: 6, column: 17, scope: !58)
!65 = !DILocation(line: 8, column: 22, scope: !58)
!66 = !DILocation(line: 8, column: 3, scope: !58)
!67 = !DILocalVariable(name: "result", scope: !58, file: !59, line: 10, type: !13)
!68 = !DILocation(line: 10, column: 17, scope: !58)
!69 = !DILocation(line: 10, column: 34, scope: !58)
!70 = !DILocation(line: 10, column: 26, scope: !58)
!71 = !DILocation(line: 11, column: 10, scope: !58)
!72 = !DILocation(line: 11, column: 3, scope: !58)
