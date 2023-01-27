; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_8 = constant i64 3, align 8, !dbg !12
@g_16 = local_unnamed_addr constant i32 -3, align 4, !dbg !18
@g_20 = local_unnamed_addr global [8 x [9 x [3 x i32]]] [[9 x [3 x i32]] [[3 x i32] [i32 1448305821, i32 -321122529, i32 -1], [3 x i32] [i32 -1498233621, i32 1, i32 -3], [3 x i32] [i32 6, i32 -549850171, i32 -1675538666], [3 x i32] [i32 -848582438, i32 -1, i32 -1498233621], [3 x i32] [i32 -1, i32 1, i32 1332499763], [3 x i32] [i32 0, i32 0, i32 -1498233621], [3 x i32] [i32 962913420, i32 -1675538666, i32 -1675538666], [3 x i32] [i32 -2, i32 -5, i32 -3], [3 x i32] [i32 3, i32 0, i32 -1]], [9 x [3 x i32]] [[3 x i32] [i32 315921281, i32 1601834364, i32 -3], [3 x i32] [i32 -1, i32 -1, i32 1], [3 x i32] [i32 -1689585731, i32 1601834364, i32 8], [3 x i32] zeroinitializer, [3 x i32] [i32 -1, i32 -5, i32 -848582438], [3 x i32] [i32 -549850171, i32 -1675538666, i32 1448305821], [3 x i32] [i32 8, i32 6, i32 -1], [3 x i32] [i32 962913420, i32 -1, i32 6], [3 x i32] [i32 -848582438, i32 1, i32 -1484949508]], [9 x [3 x i32]] [[3 x i32] [i32 -1, i32 -1, i32 1], [3 x i32] [i32 -719159245, i32 -1, i32 -7], [3 x i32] [i32 -1, i32 -549850171, i32 -1], [3 x i32] [i32 -1, i32 1, i32 8], [3 x i32] [i32 -1638790083, i32 -1, i32 -1], [3 x i32] [i32 -2, i32 1495382610, i32 -7], [3 x i32] [i32 1, i32 962913420, i32 1], [3 x i32] [i32 -3, i32 -7, i32 -1484949508], [3 x i32] [i32 3, i32 -1675538666, i32 6]], [9 x [3 x i32]] [[3 x i32] [i32 -1484949508, i32 -1, i32 -1], [3 x i32] [i32 -321122529, i32 -1675538666, i32 0], [3 x i32] [i32 -263907321, i32 -7, i32 -263907321], [3 x i32] [i32 -1675538666, i32 962913420, i32 -1], [3 x i32] [i32 0, i32 1495382610, i32 -848582438], [3 x i32] [i32 0, i32 -1, i32 1332499763], [3 x i32] [i32 315921281, i32 1, i32 -1], [3 x i32] [i32 0, i32 -549850171, i32 -1638790083], [3 x i32] [i32 0, i32 -1, i32 2142308601]], [9 x [3 x i32]] [[3 x i32] [i32 -1675538666, i32 -1, i32 1], [3 x i32] [i32 -263907321, i32 1, i32 0], [3 x i32] [i32 -321122529, i32 -1, i32 1448305821], [3 x i32] [i32 -1484949508, i32 6, i32 0], [3 x i32] [i32 3, i32 1, i32 1], [3 x i32] [i32 -3, i32 2, i32 2142308601], [3 x i32] [i32 1, i32 1, i32 -1638790083], [3 x i32] [i32 -2, i32 711646515, i32 -1], [3 x i32] [i32 -1638790083, i32 -321122529, i32 1332499763]], [9 x [3 x i32]] [[3 x i32] [i32 -1, i32 711646515, i32 -848582438], [3 x i32] [i32 -1, i32 1, i32 -1], [3 x i32] [i32 -719159245, i32 2, i32 -263907321], [3 x i32] [i32 -1, i32 1, i32 0], [3 x i32] [i32 -848582438, i32 6, i32 -1], [3 x i32] [i32 962913420, i32 -1, i32 6], [3 x i32] [i32 -848582438, i32 1, i32 -1484949508], [3 x i32] [i32 -1, i32 -1, i32 1], [3 x i32] [i32 -719159245, i32 -1, i32 -7]], [9 x [3 x i32]] [[3 x i32] [i32 -1, i32 -549850171, i32 -1], [3 x i32] [i32 -1, i32 1, i32 8], [3 x i32] [i32 -1638790083, i32 -1, i32 -1], [3 x i32] [i32 -2, i32 1495382610, i32 -7], [3 x i32] [i32 1, i32 962913420, i32 1], [3 x i32] [i32 -3, i32 -7, i32 -1484949508], [3 x i32] [i32 3, i32 -1675538666, i32 6], [3 x i32] [i32 -1484949508, i32 -1, i32 -1], [3 x i32] [i32 -321122529, i32 -1675538666, i32 0]], [9 x [3 x i32]] [[3 x i32] [i32 -263907321, i32 -7, i32 -263907321], [3 x i32] [i32 -1675538666, i32 962913420, i32 -1], [3 x i32] [i32 0, i32 1495382610, i32 -848582438], [3 x i32] [i32 0, i32 -1, i32 1332499763], [3 x i32] [i32 315921281, i32 1, i32 -1], [3 x i32] [i32 0, i32 -549850171, i32 -1638790083], [3 x i32] [i32 0, i32 -1, i32 2142308601], [3 x i32] [i32 -1675538666, i32 -1, i32 1], [3 x i32] [i32 -263907321, i32 1, i32 0]]], align 16, !dbg !23
@g_22 = local_unnamed_addr global { i8, [3 x i8] } { i8 -34, [3 x i8] undef }, align 4, !dbg !32

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define i32 @func_1() local_unnamed_addr #0 !dbg !49 {
entry:
  call void @llvm.dbg.value(metadata i16 20134, metadata !53, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i32 3, metadata !56, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i32 1, metadata !62, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 906880372, metadata !63, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 7, i64 6, i64 1), metadata !64, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 undef, metadata !66, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 undef, metadata !57, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32 undef, metadata !66, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !68
  %0 = load volatile i64, i64* @g_8, align 8, !dbg !69, !tbaa !70
  %conv1 = lshr i64 %0, 2, !dbg !74
  call void @llvm.dbg.value(metadata !DIArgList(i64 1, i32 undef), metadata !62, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 2, DW_OP_shra, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 253, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 46401, DW_OP_xor, DW_OP_and, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !68
  %1 = load i32, i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 7, i64 6, i64 1), align 16, !dbg !75, !tbaa !76
  %2 = trunc i64 %conv1 to i32, !dbg !75
  %3 = and i32 %2, 63, !dbg !75
  %4 = mul i32 %3, 906880372, !dbg !75
  %conv25 = or i32 %4, %1, !dbg !75
  store i32 %conv25, i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 7, i64 6, i64 1), align 16, !dbg !75, !tbaa !76
  %retval.sroa.0.0.copyload = load i32, i32* bitcast ({ i8, [3 x i8] }* @g_22 to i32*), align 4, !dbg !78, !tbaa.struct !79
  ret i32 %retval.sroa.0.0.copyload, !dbg !81
}

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !82 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !89, metadata !DIExpression()), !dbg !90
  %call = call i32 @func_1(), !dbg !91
  %0 = load volatile i64, i64* @g_8, align 8, !dbg !92, !tbaa !70
  store volatile i64 %0, i64* @csmith_sink_, align 8, !dbg !93, !tbaa !70
  store volatile i64 4294967293, i64* @csmith_sink_, align 8, !dbg !94, !tbaa !70
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()), !dbg !90
  br label %for.cond1.preheader, !dbg !95

for.cond1.preheader:                              ; preds = %entry, %for.inc14
  %indvars.iv34 = phi i64 [ 0, %entry ], [ %indvars.iv.next35, %for.inc14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv34, metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 0, metadata !87, metadata !DIExpression()), !dbg !90
  br label %for.cond4.preheader, !dbg !97

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc11
  %indvars.iv31 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next32, %for.inc11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv31, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 0, metadata !88, metadata !DIExpression()), !dbg !90
  br label %for.body6, !dbg !101

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !88, metadata !DIExpression()), !dbg !90
  %arrayidx10 = getelementptr inbounds [8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 %indvars.iv34, i64 %indvars.iv31, i64 %indvars.iv, !dbg !105
  %1 = load i32, i32* %arrayidx10, align 4, !dbg !105, !tbaa !76
  %conv = sext i32 %1 to i64, !dbg !105
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !108, !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !109
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !88, metadata !DIExpression()), !dbg !90
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !110
  br i1 %exitcond.not, label %for.inc11, label %for.body6, !dbg !101, !llvm.loop !111

for.inc11:                                        ; preds = %for.body6
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !dbg !115
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next32, metadata !87, metadata !DIExpression()), !dbg !90
  %exitcond33.not = icmp eq i64 %indvars.iv.next32, 9, !dbg !116
  br i1 %exitcond33.not, label %for.inc14, label %for.cond4.preheader, !dbg !97, !llvm.loop !117

for.inc14:                                        ; preds = %for.inc11
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !dbg !119
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next35, metadata !86, metadata !DIExpression()), !dbg !90
  %exitcond36.not = icmp eq i64 %indvars.iv.next35, 8, !dbg !120
  br i1 %exitcond36.not, label %for.end16, label %for.cond1.preheader, !dbg !95, !llvm.loop !121

for.end16:                                        ; preds = %for.inc14
  %2 = load i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_22, i64 0, i32 0), align 4, !dbg !123, !tbaa !80
  %conv17 = zext i8 %2 to i64, !dbg !124
  store volatile i64 %conv17, i64* @csmith_sink_, align 8, !dbg !125, !tbaa !70
  ret i32 0, !dbg !126
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !41, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/2")
!4 = !{}
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!0, !12, !18, !23, !32}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "g_8", scope: !2, file: !3, line: 24, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !17)
!17 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "g_16", scope: !2, file: !3, line: 25, type: !20, isLocal: false, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !22)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "g_20", scope: !2, file: !3, line: 26, type: !25, isLocal: false, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 6912, elements: !28)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !{!29, !30, !31}
!29 = !DISubrange(count: 8)
!30 = !DISubrange(count: 9)
!31 = !DISubrange(count: 3)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "g_22", scope: !2, file: !3, line: 27, type: !34, isLocal: false, isDefinition: true)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "U1", file: !3, line: 17, size: 32, elements: !35)
!35 = !{!36, !37, !40}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !34, file: !3, line: 18, baseType: !9, size: 8)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !34, file: !3, line: 19, baseType: !38, size: 8)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !39)
!39 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !34, file: !3, line: 20, baseType: !21, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!42 = !{i32 7, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"PIC Level", i32 2}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!49 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 40, type: !50, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !52)
!50 = !DISubroutineType(types: !51)
!51 = !{!34}
!52 = !{!53, !56, !57, !62, !63, !64, !66}
!53 = !DILocalVariable(name: "l_2", scope: !49, file: !3, line: 42, type: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !55)
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DILocalVariable(name: "l_21", scope: !49, file: !3, line: 43, type: !26)
!57 = !DILocalVariable(name: "l_15", scope: !58, file: !3, line: 46, type: !60)
!58 = distinct !DILexicalBlock(scope: !59, file: !3, line: 45, column: 5)
!59 = distinct !DILexicalBlock(scope: !49, file: !3, line: 44, column: 9)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 96, elements: !61)
!61 = !{!31}
!62 = !DILocalVariable(name: "l_17", scope: !58, file: !3, line: 47, type: !26)
!63 = !DILocalVariable(name: "l_18", scope: !58, file: !3, line: 48, type: !26)
!64 = !DILocalVariable(name: "l_19", scope: !58, file: !3, line: 49, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!66 = !DILocalVariable(name: "i", scope: !58, file: !3, line: 50, type: !27)
!67 = !DILocation(line: 0, scope: !49)
!68 = !DILocation(line: 0, scope: !58)
!69 = !DILocation(line: 53, column: 53, scope: !58)
!70 = !{!71, !71, i64 0}
!71 = !{!"long long", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !DILocation(line: 53, column: 57, scope: !58)
!75 = !DILocation(line: 53, column: 17, scope: !58)
!76 = !{!77, !77, i64 0}
!77 = !{!"int", !72, i64 0}
!78 = !DILocation(line: 60, column: 12, scope: !49)
!79 = !{i64 0, i64 1, !80, i64 0, i64 1, !80, i64 0, i64 4, !76}
!80 = !{!72, !72, i64 0}
!81 = !DILocation(line: 61, column: 1, scope: !49)
!82 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 67, type: !83, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !85)
!83 = !DISubroutineType(types: !84)
!84 = !{!27}
!85 = !{!86, !87, !88, !89}
!86 = !DILocalVariable(name: "i", scope: !82, file: !3, line: 69, type: !27)
!87 = !DILocalVariable(name: "j", scope: !82, file: !3, line: 69, type: !27)
!88 = !DILocalVariable(name: "k", scope: !82, file: !3, line: 69, type: !27)
!89 = !DILocalVariable(name: "print_hash_value", scope: !82, file: !3, line: 70, type: !27)
!90 = !DILocation(line: 0, scope: !82)
!91 = !DILocation(line: 72, column: 5, scope: !82)
!92 = !DILocation(line: 73, column: 20, scope: !82)
!93 = !DILocation(line: 73, column: 18, scope: !82)
!94 = !DILocation(line: 74, column: 18, scope: !82)
!95 = !DILocation(line: 75, column: 5, scope: !96)
!96 = distinct !DILexicalBlock(scope: !82, file: !3, line: 75, column: 5)
!97 = !DILocation(line: 77, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 77, column: 9)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 76, column: 5)
!100 = distinct !DILexicalBlock(scope: !96, file: !3, line: 75, column: 5)
!101 = !DILocation(line: 79, column: 13, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 79, column: 13)
!103 = distinct !DILexicalBlock(scope: !104, file: !3, line: 78, column: 9)
!104 = distinct !DILexicalBlock(scope: !98, file: !3, line: 77, column: 9)
!105 = !DILocation(line: 81, column: 32, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !3, line: 80, column: 13)
!107 = distinct !DILexicalBlock(scope: !102, file: !3, line: 79, column: 13)
!108 = !DILocation(line: 81, column: 30, scope: !106)
!109 = !DILocation(line: 79, column: 33, scope: !107)
!110 = !DILocation(line: 79, column: 27, scope: !107)
!111 = distinct !{!111, !101, !112, !113, !114}
!112 = !DILocation(line: 82, column: 13, scope: !102)
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!"llvm.loop.unroll.disable"}
!115 = !DILocation(line: 77, column: 29, scope: !104)
!116 = !DILocation(line: 77, column: 23, scope: !104)
!117 = distinct !{!117, !97, !118, !113, !114}
!118 = !DILocation(line: 83, column: 9, scope: !98)
!119 = !DILocation(line: 75, column: 25, scope: !100)
!120 = !DILocation(line: 75, column: 19, scope: !100)
!121 = distinct !{!121, !95, !122, !113, !114}
!122 = !DILocation(line: 84, column: 5, scope: !96)
!123 = !DILocation(line: 85, column: 25, scope: !82)
!124 = !DILocation(line: 85, column: 20, scope: !82)
!125 = !DILocation(line: 85, column: 18, scope: !82)
!126 = !DILocation(line: 87, column: 5, scope: !82)
