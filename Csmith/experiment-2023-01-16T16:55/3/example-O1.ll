; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_3 = local_unnamed_addr global i16 7157, align 2, !dbg !10
@g_6 = local_unnamed_addr global i8 2, align 1, !dbg !14
@g_10 = global i32 -6, align 4, !dbg !18
@g_9 = global i32* @g_10, align 8, !dbg !22
@g_14 = local_unnamed_addr global [6 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] c"\08\01\01\08\01", [5 x i8] c"\00\00\F6\00\00", [5 x i8] c"\01\08\01\01\08", [5 x i8] zeroinitializer, [5 x i8] c"\08\08\07\08\08"], align 16, !dbg !26

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable willreturn
define i32 @func_1() local_unnamed_addr #0 !dbg !42 {
entry:
  call void @llvm.dbg.value(metadata i16* @g_3, metadata !47, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 1597437661, metadata !49, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i8* @g_6, metadata !50, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !52, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !53, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 640, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 704, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 768, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 832, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 896, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 960, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1024, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1088, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1152, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1216, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1280, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1344, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1408, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1472, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1536, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1600, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1664, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1728, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1792, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1856, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1920, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 1984, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2048, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2112, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2176, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2240, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2304, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2368, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2432, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2496, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2560, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2624, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2688, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2752, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2816, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2880, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 2944, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3008, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3072, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3136, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3200, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3264, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3328, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3392, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3456, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3520, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3584, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3648, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* undef, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3712, 64)), !dbg !62
  call void @llvm.dbg.value(metadata i32* @g_10, metadata !54, metadata !DIExpression(DW_OP_LLVM_fragment, 3776, 64)), !dbg !62
  call void @llvm.dbg.declare(metadata i32* undef, metadata !59, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* undef, metadata !60, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* undef, metadata !61, metadata !DIExpression()), !dbg !65
  %0 = load i16, i16* @g_3, align 2, !dbg !66, !tbaa !67
  %1 = and i16 %0, -24184, !dbg !66
  store i16 %1, i16* @g_3, align 2, !dbg !66, !tbaa !67
  store i8 -35, i8* @g_6, align 1, !dbg !71, !tbaa !72
  %cmp75 = icmp eq i16 %1, 0, !dbg !73
  %conv76 = zext i1 %cmp75 to i32, !dbg !73
  %2 = load volatile i32*, i32** @g_9, align 8, !dbg !74, !tbaa !75
  store i32 %conv76, i32* %2, align 4, !dbg !77, !tbaa !78
  %3 = load i8, i8* getelementptr inbounds ([6 x [5 x i8]], [6 x [5 x i8]]* @g_14, i64 0, i64 3, i64 4), align 1, !dbg !80, !tbaa !72
  %inc = add i8 %3, 1, !dbg !80
  store i8 %inc, i8* getelementptr inbounds ([6 x [5 x i8]], [6 x [5 x i8]]* @g_14, i64 0, i64 3, i64 4), align 1, !dbg !80, !tbaa !72
  %4 = load volatile i32*, i32** @g_9, align 8, !dbg !81, !tbaa !75
  %5 = load i32, i32* %4, align 4, !dbg !82, !tbaa !78
  ret i32 %5, !dbg !83
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #2 !dbg !84 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !90, metadata !DIExpression()), !dbg !91
  %call = call i32 @func_1(), !dbg !92
  %0 = load i16, i16* @g_3, align 2, !dbg !93, !tbaa !67
  %conv = zext i16 %0 to i64, !dbg !93
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !94, !tbaa !95
  %1 = load i8, i8* @g_6, align 1, !dbg !97, !tbaa !72
  %conv1 = zext i8 %1 to i64, !dbg !97
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !98, !tbaa !95
  %2 = load i32, i32* @g_10, align 4, !dbg !99, !tbaa !78
  %conv2 = sext i32 %2 to i64, !dbg !99
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !100, !tbaa !95
  call void @llvm.dbg.value(metadata i32 0, metadata !88, metadata !DIExpression()), !dbg !91
  br label %for.cond4.preheader, !dbg !101

for.cond4.preheader:                              ; preds = %entry, %for.inc11
  %indvars.iv23 = phi i64 [ 0, %entry ], [ %indvars.iv.next24, %for.inc11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv23, metadata !88, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 0, metadata !89, metadata !DIExpression()), !dbg !91
  br label %for.body7, !dbg !103

for.body7:                                        ; preds = %for.cond4.preheader, %for.body7
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !89, metadata !DIExpression()), !dbg !91
  %arrayidx9 = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* @g_14, i64 0, i64 %indvars.iv23, i64 %indvars.iv, !dbg !107
  %3 = load i8, i8* %arrayidx9, align 1, !dbg !107, !tbaa !72
  %conv10 = zext i8 %3 to i64, !dbg !107
  store volatile i64 %conv10, i64* @csmith_sink_, align 8, !dbg !110, !tbaa !95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !111
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !89, metadata !DIExpression()), !dbg !91
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5, !dbg !112
  br i1 %exitcond.not, label %for.inc11, label %for.body7, !dbg !103, !llvm.loop !113

for.inc11:                                        ; preds = %for.body7
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1, !dbg !117
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next24, metadata !88, metadata !DIExpression()), !dbg !91
  %exitcond25.not = icmp eq i64 %indvars.iv.next24, 6, !dbg !118
  br i1 %exitcond25.not, label %for.end13, label %for.cond4.preheader, !dbg !101, !llvm.loop !119

for.end13:                                        ; preds = %for.inc11
  ret i32 0, !dbg !121
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { mustprogress nofree noinline norecurse nounwind ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !32, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-16T16:55/3")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!9 = !{!0, !10, !14, !18, !22, !26}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "g_3", scope: !2, file: !3, line: 18, type: !12, isLocal: false, isDefinition: true)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !13)
!13 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "g_6", scope: !2, file: !3, line: 19, type: !16, isLocal: false, isDefinition: true)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !17)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "g_10", scope: !2, file: !3, line: 20, type: !20, isLocal: false, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !21)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "g_9", scope: !2, file: !3, line: 21, type: !24, isLocal: false, isDefinition: true)
!24 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "g_14", scope: !2, file: !3, line: 22, type: !28, isLocal: false, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 240, elements: !29)
!29 = !{!30, !31}
!30 = !DISubrange(count: 6)
!31 = !DISubrange(count: 5)
!32 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !34)
!34 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !{i32 7, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{i32 7, !"PIC Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!42 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 35, type: !43, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!43 = !DISubroutineType(types: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!46 = !{!47, !49, !50, !52, !53, !54, !59, !60, !61}
!47 = !DILocalVariable(name: "l_2", scope: !42, file: !3, line: 37, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!49 = !DILocalVariable(name: "l_4", scope: !42, file: !3, line: 38, type: !20)
!50 = !DILocalVariable(name: "l_5", scope: !42, file: !3, line: 39, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!52 = !DILocalVariable(name: "l_11", scope: !42, file: !3, line: 40, type: !25)
!53 = !DILocalVariable(name: "l_12", scope: !42, file: !3, line: 41, type: !25)
!54 = !DILocalVariable(name: "l_13", scope: !42, file: !3, line: 42, type: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 3840, elements: !56)
!56 = !{!57, !58, !30}
!57 = !DISubrange(count: 1)
!58 = !DISubrange(count: 10)
!59 = !DILocalVariable(name: "i", scope: !42, file: !3, line: 43, type: !21)
!60 = !DILocalVariable(name: "j", scope: !42, file: !3, line: 43, type: !21)
!61 = !DILocalVariable(name: "k", scope: !42, file: !3, line: 43, type: !21)
!62 = !DILocation(line: 0, scope: !42)
!63 = !DILocation(line: 43, column: 9, scope: !42)
!64 = !DILocation(line: 43, column: 12, scope: !42)
!65 = !DILocation(line: 43, column: 15, scope: !42)
!66 = !DILocation(line: 44, column: 23, scope: !42)
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !DILocation(line: 44, column: 47, scope: !42)
!72 = !{!69, !69, i64 0}
!73 = !DILocation(line: 44, column: 35, scope: !42)
!74 = !DILocation(line: 44, column: 7, scope: !42)
!75 = !{!76, !76, i64 0}
!76 = !{!"any pointer", !69, i64 0}
!77 = !DILocation(line: 44, column: 12, scope: !42)
!78 = !{!79, !79, i64 0}
!79 = !{!"int", !69, i64 0}
!80 = !DILocation(line: 45, column: 15, scope: !42)
!81 = !DILocation(line: 46, column: 14, scope: !42)
!82 = !DILocation(line: 46, column: 13, scope: !42)
!83 = !DILocation(line: 46, column: 5, scope: !42)
!84 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 53, type: !85, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !87)
!85 = !DISubroutineType(types: !86)
!86 = !{!21}
!87 = !{!88, !89, !90}
!88 = !DILocalVariable(name: "i", scope: !84, file: !3, line: 55, type: !21)
!89 = !DILocalVariable(name: "j", scope: !84, file: !3, line: 55, type: !21)
!90 = !DILocalVariable(name: "print_hash_value", scope: !84, file: !3, line: 56, type: !21)
!91 = !DILocation(line: 0, scope: !84)
!92 = !DILocation(line: 58, column: 5, scope: !84)
!93 = !DILocation(line: 59, column: 20, scope: !84)
!94 = !DILocation(line: 59, column: 18, scope: !84)
!95 = !{!96, !96, i64 0}
!96 = !{!"long long", !69, i64 0}
!97 = !DILocation(line: 60, column: 20, scope: !84)
!98 = !DILocation(line: 60, column: 18, scope: !84)
!99 = !DILocation(line: 61, column: 20, scope: !84)
!100 = !DILocation(line: 61, column: 18, scope: !84)
!101 = !DILocation(line: 62, column: 5, scope: !102)
!102 = distinct !DILexicalBlock(scope: !84, file: !3, line: 62, column: 5)
!103 = !DILocation(line: 64, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !3, line: 64, column: 9)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 63, column: 5)
!106 = distinct !DILexicalBlock(scope: !102, file: !3, line: 62, column: 5)
!107 = !DILocation(line: 66, column: 28, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 65, column: 9)
!109 = distinct !DILexicalBlock(scope: !104, file: !3, line: 64, column: 9)
!110 = !DILocation(line: 66, column: 26, scope: !108)
!111 = !DILocation(line: 64, column: 29, scope: !109)
!112 = !DILocation(line: 64, column: 23, scope: !109)
!113 = distinct !{!113, !103, !114, !115, !116}
!114 = !DILocation(line: 67, column: 9, scope: !104)
!115 = !{!"llvm.loop.mustprogress"}
!116 = !{!"llvm.loop.unroll.disable"}
!117 = !DILocation(line: 62, column: 25, scope: !106)
!118 = !DILocation(line: 62, column: 19, scope: !106)
!119 = distinct !{!119, !101, !120, !115, !116}
!120 = !DILocation(line: 68, column: 5, scope: !102)
!121 = !DILocation(line: 70, column: 5, scope: !84)
