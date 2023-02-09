; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@__const.example.data = private unnamed_addr constant [4 x i64] [i64 0, i64 1, i64 2, i64 3], align 16
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i64 @example(i64 %n) #0 !dbg !11 {
entry:
  %n.addr = alloca i64, align 8
  %data = alloca [4 x i64], align 16
  %i = alloca i64, align 8
  %i2 = alloca i64, align 8
  %a = alloca i64*, align 8
  %b = alloca i64*, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [4 x i64]* %data, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [4 x i64]* %data to i8*, !dbg !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i64]* @__const.example.data to i8*), i64 32, i1 false), !dbg !21
  call void @llvm.dbg.declare(metadata i64* %i, metadata !22, metadata !DIExpression()), !dbg !24
  store i64 0, i64* %i, align 8, !dbg !24
  br label %for.cond, !dbg !25

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !dbg !26
  %2 = load i64, i64* %n.addr, align 8, !dbg !28
  %cmp = icmp ult i64 %1, %2, !dbg !29
  br i1 %cmp, label %for.body, label %for.end, !dbg !30

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %i2, metadata !31, metadata !DIExpression()), !dbg !33
  %3 = load i64, i64* %i, align 8, !dbg !34
  %add = add i64 %3, 2, !dbg !35
  %rem = urem i64 %add, 4, !dbg !36
  store i64 %rem, i64* %i2, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i64** %a, metadata !37, metadata !DIExpression()), !dbg !39
  %4 = load i64, i64* %i, align 8, !dbg !40
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %data, i64 0, i64 %4, !dbg !41
  store i64* %arrayidx, i64** %a, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i64** %b, metadata !42, metadata !DIExpression()), !dbg !43
  %5 = load i64, i64* %i2, align 8, !dbg !44
  %arrayidx1 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i64 0, i64 %5, !dbg !45
  store i64* %arrayidx1, i64** %b, align 8, !dbg !43
  %6 = load i64, i64* %n.addr, align 8, !dbg !46
  %7 = load i64*, i64** %b, align 8, !dbg !47
  %8 = load i64, i64* %7, align 8, !dbg !48
  %add2 = add i64 %8, %6, !dbg !48
  store i64 %add2, i64* %7, align 8, !dbg !48
  br label %for.inc, !dbg !49

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8, !dbg !50
  %inc = add i64 %9, 1, !dbg !50
  store i64 %inc, i64* %i, align 8, !dbg !50
  br label %for.cond, !dbg !51, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  %10 = load i64, i64* %n.addr, align 8, !dbg !55
  %rem3 = urem i64 %10, 4, !dbg !56
  %arrayidx4 = getelementptr inbounds [4 x i64], [4 x i64]* %data, i64 0, i64 %rem3, !dbg !57
  %11 = load i64, i64* %arrayidx4, align 8, !dbg !57
  ret i64 %11, !dbg !58
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !59 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i64, align 8
  %result = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i64* %n, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = bitcast i64* %n to i8*, !dbg !66
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !67
  call void @llvm.dbg.declare(metadata i64* %result, metadata !68, metadata !DIExpression()), !dbg !69
  %1 = load i64, i64* %n, align 8, !dbg !70
  %call = call i64 @example(i64 %1), !dbg !71
  store i64 %call, i64* %result, align 8, !dbg !69
  %2 = load i64, i64* %result, align 8, !dbg !72
  %conv = trunc i64 %2 to i32, !dbg !72
  ret i32 %conv, !dbg !73
}

declare void @klee_make_symbolic(i8*, i64, i8*) #3

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/loop-unbounded-array-complex")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 1, type: !14)
!16 = !DILocation(line: 1, column: 37, scope: !11)
!17 = !DILocalVariable(name: "data", scope: !11, file: !8, line: 2, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 4)
!21 = !DILocation(line: 2, column: 17, scope: !11)
!22 = !DILocalVariable(name: "i", scope: !23, file: !8, line: 3, type: !14)
!23 = distinct !DILexicalBlock(scope: !11, file: !8, line: 3, column: 3)
!24 = !DILocation(line: 3, column: 22, scope: !23)
!25 = !DILocation(line: 3, column: 8, scope: !23)
!26 = !DILocation(line: 3, column: 29, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !8, line: 3, column: 3)
!28 = !DILocation(line: 3, column: 33, scope: !27)
!29 = !DILocation(line: 3, column: 31, scope: !27)
!30 = !DILocation(line: 3, column: 3, scope: !23)
!31 = !DILocalVariable(name: "i2", scope: !32, file: !8, line: 4, type: !14)
!32 = distinct !DILexicalBlock(scope: !27, file: !8, line: 3, column: 41)
!33 = !DILocation(line: 4, column: 19, scope: !32)
!34 = !DILocation(line: 4, column: 25, scope: !32)
!35 = !DILocation(line: 4, column: 27, scope: !32)
!36 = !DILocation(line: 4, column: 32, scope: !32)
!37 = !DILocalVariable(name: "a", scope: !32, file: !8, line: 5, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!39 = !DILocation(line: 5, column: 20, scope: !32)
!40 = !DILocation(line: 5, column: 30, scope: !32)
!41 = !DILocation(line: 5, column: 25, scope: !32)
!42 = !DILocalVariable(name: "b", scope: !32, file: !8, line: 6, type: !38)
!43 = !DILocation(line: 6, column: 20, scope: !32)
!44 = !DILocation(line: 6, column: 30, scope: !32)
!45 = !DILocation(line: 6, column: 25, scope: !32)
!46 = !DILocation(line: 7, column: 11, scope: !32)
!47 = !DILocation(line: 7, column: 6, scope: !32)
!48 = !DILocation(line: 7, column: 8, scope: !32)
!49 = !DILocation(line: 8, column: 3, scope: !32)
!50 = !DILocation(line: 3, column: 37, scope: !27)
!51 = !DILocation(line: 3, column: 3, scope: !27)
!52 = distinct !{!52, !30, !53, !54}
!53 = !DILocation(line: 8, column: 3, scope: !23)
!54 = !{!"llvm.loop.mustprogress"}
!55 = !DILocation(line: 9, column: 15, scope: !11)
!56 = !DILocation(line: 9, column: 17, scope: !11)
!57 = !DILocation(line: 9, column: 10, scope: !11)
!58 = !DILocation(line: 9, column: 3, scope: !11)
!59 = distinct !DISubprogram(name: "main", scope: !60, file: !60, line: 5, type: !61, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!60 = !DIFile(filename: "./../main.h", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/loop-unbounded-array-complex")
!61 = !DISubroutineType(types: !62)
!62 = !{!63}
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DILocalVariable(name: "n", scope: !59, file: !60, line: 6, type: !14)
!65 = !DILocation(line: 6, column: 17, scope: !59)
!66 = !DILocation(line: 8, column: 22, scope: !59)
!67 = !DILocation(line: 8, column: 3, scope: !59)
!68 = !DILocalVariable(name: "result", scope: !59, file: !60, line: 10, type: !14)
!69 = !DILocation(line: 10, column: 17, scope: !59)
!70 = !DILocation(line: 10, column: 34, scope: !59)
!71 = !DILocation(line: 10, column: 26, scope: !59)
!72 = !DILocation(line: 11, column: 10, scope: !59)
!73 = !DILocation(line: 11, column: 3, scope: !59)
