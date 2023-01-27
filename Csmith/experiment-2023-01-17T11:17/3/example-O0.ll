; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_4 = global [3 x i32] [i32 -1, i32 -1, i32 -1], align 4, !dbg !6

; Function Attrs: noinline nounwind ssp uwtable
define i64 @func_1() #0 !dbg !24 {
entry:
  %l_2 = alloca i32*, align 8
  %l_3 = alloca i32*, align 8
  %l_5 = alloca i32*, align 8
  %l_6 = alloca i32, align 4
  %l_7 = alloca i32*, align 8
  %l_8 = alloca i32*, align 8
  %l_9 = alloca i32*, align 8
  %l_10 = alloca i32*, align 8
  %l_11 = alloca i32, align 4
  %l_12 = alloca i32, align 4
  %l_13 = alloca i32*, align 8
  %l_14 = alloca i32*, align 8
  %l_15 = alloca i32*, align 8
  %l_16 = alloca i32*, align 8
  %l_17 = alloca i32, align 4
  %l_18 = alloca i32*, align 8
  %l_19 = alloca i32*, align 8
  %l_20 = alloca i32*, align 8
  %l_21 = alloca [2 x [4 x [3 x i32*]]], align 16
  %l_22 = alloca i32, align 4
  %l_23 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %l_2, metadata !27, metadata !DIExpression()), !dbg !29
  store i32* null, i32** %l_2, align 8, !dbg !29
  call void @llvm.dbg.declare(metadata i32** %l_3, metadata !30, metadata !DIExpression()), !dbg !31
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1), i32** %l_3, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i32** %l_5, metadata !32, metadata !DIExpression()), !dbg !33
  store i32* null, i32** %l_5, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %l_6, metadata !34, metadata !DIExpression()), !dbg !35
  store i32 106391706, i32* %l_6, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32** %l_7, metadata !36, metadata !DIExpression()), !dbg !37
  store i32* %l_6, i32** %l_7, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata i32** %l_8, metadata !38, metadata !DIExpression()), !dbg !39
  store i32* null, i32** %l_8, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i32** %l_9, metadata !40, metadata !DIExpression()), !dbg !41
  store i32* %l_6, i32** %l_9, align 8, !dbg !41
  call void @llvm.dbg.declare(metadata i32** %l_10, metadata !42, metadata !DIExpression()), !dbg !43
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1), i32** %l_10, align 8, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %l_11, metadata !44, metadata !DIExpression()), !dbg !45
  store i32 9, i32* %l_11, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %l_12, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 1938017351, i32* %l_12, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32** %l_13, metadata !48, metadata !DIExpression()), !dbg !49
  store i32* %l_6, i32** %l_13, align 8, !dbg !49
  call void @llvm.dbg.declare(metadata i32** %l_14, metadata !50, metadata !DIExpression()), !dbg !51
  store i32* %l_6, i32** %l_14, align 8, !dbg !51
  call void @llvm.dbg.declare(metadata i32** %l_15, metadata !52, metadata !DIExpression()), !dbg !53
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1), i32** %l_15, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata i32** %l_16, metadata !54, metadata !DIExpression()), !dbg !55
  store i32* %l_6, i32** %l_16, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %l_17, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 -1, i32* %l_17, align 4, !dbg !57
  call void @llvm.dbg.declare(metadata i32** %l_18, metadata !58, metadata !DIExpression()), !dbg !59
  store i32* %l_12, i32** %l_18, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata i32** %l_19, metadata !60, metadata !DIExpression()), !dbg !61
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 0), i32** %l_19, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i32** %l_20, metadata !62, metadata !DIExpression()), !dbg !63
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1), i32** %l_20, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata [2 x [4 x [3 x i32*]]]* %l_21, metadata !64, metadata !DIExpression()), !dbg !69
  %arrayinit.begin = getelementptr inbounds [2 x [4 x [3 x i32*]]], [2 x [4 x [3 x i32*]]]* %l_21, i64 0, i64 0, !dbg !70
  %arrayinit.begin1 = getelementptr inbounds [4 x [3 x i32*]], [4 x [3 x i32*]]* %arrayinit.begin, i64 0, i64 0, !dbg !71
  %arrayinit.begin2 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.begin1, i64 0, i64 0, !dbg !72
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 0), i32** %arrayinit.begin2, align 8, !dbg !72
  %arrayinit.element = getelementptr inbounds i32*, i32** %arrayinit.begin2, i64 1, !dbg !72
  store i32* %l_12, i32** %arrayinit.element, align 8, !dbg !72
  %arrayinit.element3 = getelementptr inbounds i32*, i32** %arrayinit.element, i64 1, !dbg !72
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 0), i32** %arrayinit.element3, align 8, !dbg !72
  %arrayinit.element4 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.begin1, i64 1, !dbg !71
  %arrayinit.begin5 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.element4, i64 0, i64 0, !dbg !73
  store i32* null, i32** %arrayinit.begin5, align 8, !dbg !73
  %arrayinit.element6 = getelementptr inbounds i32*, i32** %arrayinit.begin5, i64 1, !dbg !73
  store i32* %l_12, i32** %arrayinit.element6, align 8, !dbg !73
  %arrayinit.element7 = getelementptr inbounds i32*, i32** %arrayinit.element6, i64 1, !dbg !73
  store i32* null, i32** %arrayinit.element7, align 8, !dbg !73
  %arrayinit.element8 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.element4, i64 1, !dbg !71
  %arrayinit.begin9 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.element8, i64 0, i64 0, !dbg !74
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 0), i32** %arrayinit.begin9, align 8, !dbg !74
  %arrayinit.element10 = getelementptr inbounds i32*, i32** %arrayinit.begin9, i64 1, !dbg !74
  store i32* %l_12, i32** %arrayinit.element10, align 8, !dbg !74
  %arrayinit.element11 = getelementptr inbounds i32*, i32** %arrayinit.element10, i64 1, !dbg !74
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 0), i32** %arrayinit.element11, align 8, !dbg !74
  %arrayinit.element12 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.element8, i64 1, !dbg !71
  %arrayinit.begin13 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.element12, i64 0, i64 0, !dbg !75
  store i32* null, i32** %arrayinit.begin13, align 8, !dbg !75
  %arrayinit.element14 = getelementptr inbounds i32*, i32** %arrayinit.begin13, i64 1, !dbg !75
  store i32* %l_12, i32** %arrayinit.element14, align 8, !dbg !75
  %arrayinit.element15 = getelementptr inbounds i32*, i32** %arrayinit.element14, i64 1, !dbg !75
  store i32* null, i32** %arrayinit.element15, align 8, !dbg !75
  %arrayinit.element16 = getelementptr inbounds [4 x [3 x i32*]], [4 x [3 x i32*]]* %arrayinit.begin, i64 1, !dbg !70
  %arrayinit.begin17 = getelementptr inbounds [4 x [3 x i32*]], [4 x [3 x i32*]]* %arrayinit.element16, i64 0, i64 0, !dbg !76
  %arrayinit.begin18 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.begin17, i64 0, i64 0, !dbg !77
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 0), i32** %arrayinit.begin18, align 8, !dbg !77
  %arrayinit.element19 = getelementptr inbounds i32*, i32** %arrayinit.begin18, i64 1, !dbg !77
  store i32* %l_12, i32** %arrayinit.element19, align 8, !dbg !77
  %arrayinit.element20 = getelementptr inbounds i32*, i32** %arrayinit.element19, i64 1, !dbg !77
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 0), i32** %arrayinit.element20, align 8, !dbg !77
  %arrayinit.element21 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.begin17, i64 1, !dbg !76
  %arrayinit.begin22 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.element21, i64 0, i64 0, !dbg !78
  store i32* null, i32** %arrayinit.begin22, align 8, !dbg !78
  %arrayinit.element23 = getelementptr inbounds i32*, i32** %arrayinit.begin22, i64 1, !dbg !78
  store i32* %l_12, i32** %arrayinit.element23, align 8, !dbg !78
  %arrayinit.element24 = getelementptr inbounds i32*, i32** %arrayinit.element23, i64 1, !dbg !78
  store i32* null, i32** %arrayinit.element24, align 8, !dbg !78
  %arrayinit.element25 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.element21, i64 1, !dbg !76
  %arrayinit.begin26 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.element25, i64 0, i64 0, !dbg !79
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 0), i32** %arrayinit.begin26, align 8, !dbg !79
  %arrayinit.element27 = getelementptr inbounds i32*, i32** %arrayinit.begin26, i64 1, !dbg !79
  store i32* %l_12, i32** %arrayinit.element27, align 8, !dbg !79
  %arrayinit.element28 = getelementptr inbounds i32*, i32** %arrayinit.element27, i64 1, !dbg !79
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 0), i32** %arrayinit.element28, align 8, !dbg !79
  %arrayinit.element29 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.element25, i64 1, !dbg !76
  %arrayinit.begin30 = getelementptr inbounds [3 x i32*], [3 x i32*]* %arrayinit.element29, i64 0, i64 0, !dbg !80
  store i32* null, i32** %arrayinit.begin30, align 8, !dbg !80
  %arrayinit.element31 = getelementptr inbounds i32*, i32** %arrayinit.begin30, i64 1, !dbg !80
  store i32* %l_12, i32** %arrayinit.element31, align 8, !dbg !80
  %arrayinit.element32 = getelementptr inbounds i32*, i32** %arrayinit.element31, i64 1, !dbg !80
  store i32* null, i32** %arrayinit.element32, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %l_22, metadata !81, metadata !DIExpression()), !dbg !82
  store i32 -359608326, i32* %l_22, align 4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %l_23, metadata !83, metadata !DIExpression()), !dbg !86
  store i32 -1, i32* %l_23, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %j, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %k, metadata !91, metadata !DIExpression()), !dbg !92
  %0 = load i32, i32* %l_23, align 4, !dbg !93
  %inc = add i32 %0, 1, !dbg !93
  store i32 %inc, i32* %l_23, align 4, !dbg !93
  %1 = load i32*, i32** %l_10, align 8, !dbg !94
  %2 = load i32, i32* %1, align 4, !dbg !95
  %conv = sext i32 %2 to i64, !dbg !96
  ret i64 %conv, !dbg !97
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !98 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !103, metadata !DIExpression()), !dbg !104
  store i32 0, i32* %print_hash_value, align 4, !dbg !104
  %call = call i64 @func_1(), !dbg !105
  store i32 0, i32* %i, align 4, !dbg !106
  br label %for.cond, !dbg !108

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !109
  %cmp = icmp slt i32 %0, 3, !dbg !111
  br i1 %cmp, label %for.body, label %for.end, !dbg !112

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !113
  %idxprom = sext i32 %1 to i64, !dbg !115
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @g_4, i64 0, i64 %idxprom, !dbg !115
  %2 = load i32, i32* %arrayidx, align 4, !dbg !115
  %conv = sext i32 %2 to i64, !dbg !115
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !116
  br label %for.inc, !dbg !117

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !dbg !118
  %inc = add nsw i32 %3, 1, !dbg !118
  store i32 %inc, i32* %i, align 4, !dbg !118
  br label %for.cond, !dbg !119, !llvm.loop !120

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !123
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/3")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "g_4", scope: !2, file: !3, line: 18, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 96, elements: !12)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !10, line: 167, baseType: !11)
!10 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DISubrange(count: 3)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !10, line: 98, baseType: !16)
!16 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!24 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 31, type: !25, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!25 = !DISubroutineType(types: !26)
!26 = !{!15}
!27 = !DILocalVariable(name: "l_2", scope: !24, file: !3, line: 33, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!29 = !DILocation(line: 33, column: 14, scope: !24)
!30 = !DILocalVariable(name: "l_3", scope: !24, file: !3, line: 34, type: !28)
!31 = !DILocation(line: 34, column: 14, scope: !24)
!32 = !DILocalVariable(name: "l_5", scope: !24, file: !3, line: 35, type: !28)
!33 = !DILocation(line: 35, column: 14, scope: !24)
!34 = !DILocalVariable(name: "l_6", scope: !24, file: !3, line: 36, type: !9)
!35 = !DILocation(line: 36, column: 13, scope: !24)
!36 = !DILocalVariable(name: "l_7", scope: !24, file: !3, line: 37, type: !28)
!37 = !DILocation(line: 37, column: 14, scope: !24)
!38 = !DILocalVariable(name: "l_8", scope: !24, file: !3, line: 38, type: !28)
!39 = !DILocation(line: 38, column: 14, scope: !24)
!40 = !DILocalVariable(name: "l_9", scope: !24, file: !3, line: 39, type: !28)
!41 = !DILocation(line: 39, column: 14, scope: !24)
!42 = !DILocalVariable(name: "l_10", scope: !24, file: !3, line: 40, type: !28)
!43 = !DILocation(line: 40, column: 14, scope: !24)
!44 = !DILocalVariable(name: "l_11", scope: !24, file: !3, line: 41, type: !9)
!45 = !DILocation(line: 41, column: 13, scope: !24)
!46 = !DILocalVariable(name: "l_12", scope: !24, file: !3, line: 42, type: !9)
!47 = !DILocation(line: 42, column: 13, scope: !24)
!48 = !DILocalVariable(name: "l_13", scope: !24, file: !3, line: 43, type: !28)
!49 = !DILocation(line: 43, column: 14, scope: !24)
!50 = !DILocalVariable(name: "l_14", scope: !24, file: !3, line: 44, type: !28)
!51 = !DILocation(line: 44, column: 14, scope: !24)
!52 = !DILocalVariable(name: "l_15", scope: !24, file: !3, line: 45, type: !28)
!53 = !DILocation(line: 45, column: 14, scope: !24)
!54 = !DILocalVariable(name: "l_16", scope: !24, file: !3, line: 46, type: !28)
!55 = !DILocation(line: 46, column: 14, scope: !24)
!56 = !DILocalVariable(name: "l_17", scope: !24, file: !3, line: 47, type: !9)
!57 = !DILocation(line: 47, column: 13, scope: !24)
!58 = !DILocalVariable(name: "l_18", scope: !24, file: !3, line: 48, type: !28)
!59 = !DILocation(line: 48, column: 14, scope: !24)
!60 = !DILocalVariable(name: "l_19", scope: !24, file: !3, line: 49, type: !28)
!61 = !DILocation(line: 49, column: 14, scope: !24)
!62 = !DILocalVariable(name: "l_20", scope: !24, file: !3, line: 50, type: !28)
!63 = !DILocation(line: 50, column: 14, scope: !24)
!64 = !DILocalVariable(name: "l_21", scope: !24, file: !3, line: 51, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1536, elements: !66)
!66 = !{!67, !68, !13}
!67 = !DISubrange(count: 2)
!68 = !DISubrange(count: 4)
!69 = !DILocation(line: 51, column: 14, scope: !24)
!70 = !DILocation(line: 51, column: 30, scope: !24)
!71 = !DILocation(line: 51, column: 31, scope: !24)
!72 = !DILocation(line: 51, column: 32, scope: !24)
!73 = !DILocation(line: 51, column: 56, scope: !24)
!74 = !DILocation(line: 51, column: 82, scope: !24)
!75 = !DILocation(line: 51, column: 106, scope: !24)
!76 = !DILocation(line: 51, column: 133, scope: !24)
!77 = !DILocation(line: 51, column: 134, scope: !24)
!78 = !DILocation(line: 51, column: 158, scope: !24)
!79 = !DILocation(line: 51, column: 184, scope: !24)
!80 = !DILocation(line: 51, column: 208, scope: !24)
!81 = !DILocalVariable(name: "l_22", scope: !24, file: !3, line: 52, type: !9)
!82 = !DILocation(line: 52, column: 13, scope: !24)
!83 = !DILocalVariable(name: "l_23", scope: !24, file: !3, line: 53, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 172, baseType: !85)
!85 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!86 = !DILocation(line: 53, column: 14, scope: !24)
!87 = !DILocalVariable(name: "i", scope: !24, file: !3, line: 54, type: !11)
!88 = !DILocation(line: 54, column: 9, scope: !24)
!89 = !DILocalVariable(name: "j", scope: !24, file: !3, line: 54, type: !11)
!90 = !DILocation(line: 54, column: 12, scope: !24)
!91 = !DILocalVariable(name: "k", scope: !24, file: !3, line: 54, type: !11)
!92 = !DILocation(line: 54, column: 15, scope: !24)
!93 = !DILocation(line: 55, column: 5, scope: !24)
!94 = !DILocation(line: 56, column: 14, scope: !24)
!95 = !DILocation(line: 56, column: 13, scope: !24)
!96 = !DILocation(line: 56, column: 12, scope: !24)
!97 = !DILocation(line: 56, column: 5, scope: !24)
!98 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 63, type: !99, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!99 = !DISubroutineType(types: !100)
!100 = !{!11}
!101 = !DILocalVariable(name: "i", scope: !98, file: !3, line: 65, type: !11)
!102 = !DILocation(line: 65, column: 9, scope: !98)
!103 = !DILocalVariable(name: "print_hash_value", scope: !98, file: !3, line: 66, type: !11)
!104 = !DILocation(line: 66, column: 9, scope: !98)
!105 = !DILocation(line: 68, column: 5, scope: !98)
!106 = !DILocation(line: 69, column: 12, scope: !107)
!107 = distinct !DILexicalBlock(scope: !98, file: !3, line: 69, column: 5)
!108 = !DILocation(line: 69, column: 10, scope: !107)
!109 = !DILocation(line: 69, column: 17, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !3, line: 69, column: 5)
!111 = !DILocation(line: 69, column: 19, scope: !110)
!112 = !DILocation(line: 69, column: 5, scope: !107)
!113 = !DILocation(line: 71, column: 28, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !3, line: 70, column: 5)
!115 = !DILocation(line: 71, column: 24, scope: !114)
!116 = !DILocation(line: 71, column: 22, scope: !114)
!117 = !DILocation(line: 72, column: 5, scope: !114)
!118 = !DILocation(line: 69, column: 25, scope: !110)
!119 = !DILocation(line: 69, column: 5, scope: !110)
!120 = distinct !{!120, !112, !121, !122}
!121 = !DILocation(line: 72, column: 5, scope: !107)
!122 = !{!"llvm.loop.mustprogress"}
!123 = !DILocation(line: 74, column: 5, scope: !98)
