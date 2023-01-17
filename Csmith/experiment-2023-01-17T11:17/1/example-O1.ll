; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.S1 = type <{ i64, i64, i8 }>
%struct.S0 = type { [11 x i8] }

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_8 = global %struct.S1 <{ i64 -9, i64 2671518918454829511, i8 -10 }>, align 8, !dbg !6
@g_14 = global i32 1047933281, align 4, !dbg !23
@g_13 = local_unnamed_addr global i32* @g_14, align 8, !dbg !28
@g_16 = local_unnamed_addr global i32 -563732548, align 4, !dbg !31
@g_17 = local_unnamed_addr global i64 7225670638682668906, align 8, !dbg !33
@g_18 = local_unnamed_addr global i8 7, align 1, !dbg !35
@g_20 = local_unnamed_addr global i32 1817629194, align 4, !dbg !37
@g_22 = global [4 x i32] [i32 -4, i32 -4, i32 -4, i32 -4], align 16, !dbg !39
@g_21 = global i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_22, i64 0, i64 2), align 8, !dbg !44
@g_23 = global i32** @g_21, align 8, !dbg !47
@g_24 = global [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 39, i8 0, i8 0, i8 -99, i8 -3, i8 -1, i8 -17, i8 -17, i8 -5, i8 127 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 39, i8 0, i8 0, i8 -99, i8 -3, i8 -1, i8 -17, i8 -17, i8 -5, i8 127 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 39, i8 0, i8 0, i8 -99, i8 -3, i8 -1, i8 -17, i8 -17, i8 -5, i8 127 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 39, i8 0, i8 0, i8 -99, i8 -3, i8 -1, i8 -17, i8 -17, i8 -5, i8 127 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 39, i8 0, i8 0, i8 -99, i8 -3, i8 -1, i8 -17, i8 -17, i8 -5, i8 127 }], align 16, !dbg !51
@g_25 = global %struct.S0* bitcast (i8* getelementptr inbounds ([5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]* @g_24, i64 0, i64 2, i32 0) to %struct.S0*), align 8, !dbg !64

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @func_1() local_unnamed_addr #0 !dbg !75 {
entry:
  call void @llvm.dbg.value(metadata i32* null, metadata !79, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32** null, metadata !80, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32** undef, metadata !81, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32* @g_20, metadata !88, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i32* undef, metadata !89, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* undef, metadata !90, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* undef, metadata !91, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i32* null, metadata !79, metadata !DIExpression()), !dbg !92
  %0 = load i32*, i32** @g_13, align 8, !dbg !96, !tbaa !97
  %cmp = icmp ne i32* %0, null, !dbg !101
  %conv = zext i1 %cmp to i32, !dbg !101
  %1 = load i32, i32* @g_16, align 4, !dbg !102, !tbaa !103
  %xor = xor i32 %1, %conv, !dbg !102
  store i32 %xor, i32* @g_16, align 4, !dbg !102, !tbaa !103
  %conv1 = sext i32 %xor to i64, !dbg !105
  store i64 %conv1, i64* @g_17, align 8, !dbg !106, !tbaa !107
  %2 = load i8, i8* @g_18, align 1, !dbg !109, !tbaa !110
  %conv2 = sext i8 %2 to i32, !dbg !109
  %or = or i32 %xor, %conv2, !dbg !111
  store i32 %or, i32* @g_20, align 4, !dbg !112, !tbaa !103
  %call = call i32* @func_2(i32 undef, i32 undef, i32* undef, i32* undef, i32* undef), !dbg !113
  %3 = load volatile i32**, i32*** @g_23, align 8, !dbg !114, !tbaa !97
  store i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_22, i64 0, i64 2), i32** %3, align 8, !dbg !115, !tbaa !97
  %4 = load volatile %struct.S0*, %struct.S0** @g_25, align 8, !dbg !116, !tbaa !97
  %5 = getelementptr %struct.S0, %struct.S0* %4, i64 0, i32 0, i64 0, !dbg !117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 2 getelementptr inbounds ([5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]* @g_24, i64 0, i64 2, i32 0), i64 11, i1 true), !dbg !117, !tbaa.struct !118
  %bf.load = load volatile i88, i88* bitcast (i8* getelementptr inbounds ([5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]* @g_24, i64 0, i64 2, i32 0) to i88*), align 2, !dbg !119
  %bf.shl = shl i88 %bf.load, 21, !dbg !119
  %bf.ashr = ashr i88 %bf.shl, 80, !dbg !119
  %bf.cast = trunc i88 %bf.ashr to i32, !dbg !119
  ret i32 %bf.cast, !dbg !120
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define i32* @func_2(i32 %p_3, i32 %p_4, i32* nocapture readnone %p_5, i32* nocapture readnone %p_6, i32* nocapture readnone %p_7) local_unnamed_addr #3 !dbg !121 {
entry:
  call void @llvm.dbg.value(metadata i32 undef, metadata !126, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32 undef, metadata !127, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32* undef, metadata !128, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32* undef, metadata !129, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i32* undef, metadata !130, metadata !DIExpression()), !dbg !131
  %0 = load i32*, i32** @g_21, align 8, !dbg !132, !tbaa !97
  %1 = load i32, i32* %0, align 4, !dbg !133, !tbaa !103
  %2 = load i32*, i32** @g_13, align 8, !dbg !134, !tbaa !97
  store volatile i32 %1, i32* %2, align 4, !dbg !135, !tbaa !103
  ret i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_22, i64 0, i64 2), !dbg !136
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !137 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !142, metadata !DIExpression()), !dbg !143
  %call = call i32 @func_1(), !dbg !144
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.S1, %struct.S1* @g_8, i64 0, i32 0), align 8, !dbg !145, !tbaa !146
  store volatile i64 %0, i64* @csmith_sink_, align 8, !dbg !148, !tbaa !107
  %1 = load volatile i64, i64* getelementptr inbounds (%struct.S1, %struct.S1* @g_8, i64 0, i32 1), align 8, !dbg !149, !tbaa !150
  store volatile i64 %1, i64* @csmith_sink_, align 8, !dbg !151, !tbaa !107
  %2 = load volatile i8, i8* getelementptr inbounds (%struct.S1, %struct.S1* @g_8, i64 0, i32 2), align 8, !dbg !152, !tbaa !153
  %conv = sext i8 %2 to i64, !dbg !154
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !155, !tbaa !107
  %3 = load volatile i32, i32* @g_14, align 4, !dbg !156, !tbaa !103
  %conv1 = sext i32 %3 to i64, !dbg !156
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !157, !tbaa !107
  %4 = load i32, i32* @g_16, align 4, !dbg !158, !tbaa !103
  %conv2 = sext i32 %4 to i64, !dbg !158
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !159, !tbaa !107
  %5 = load i64, i64* @g_17, align 8, !dbg !160, !tbaa !107
  store volatile i64 %5, i64* @csmith_sink_, align 8, !dbg !161, !tbaa !107
  %6 = load i8, i8* @g_18, align 1, !dbg !162, !tbaa !110
  %conv3 = sext i8 %6 to i64, !dbg !162
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !163, !tbaa !107
  %7 = load i32, i32* @g_20, align 4, !dbg !164, !tbaa !103
  %conv4 = sext i32 %7 to i64, !dbg !164
  store volatile i64 %conv4, i64* @csmith_sink_, align 8, !dbg !165, !tbaa !107
  call void @llvm.dbg.value(metadata i32 0, metadata !141, metadata !DIExpression()), !dbg !143
  br label %for.body, !dbg !166

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !141, metadata !DIExpression()), !dbg !143
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @g_22, i64 0, i64 %indvars.iv, !dbg !168
  %8 = load i32, i32* %arrayidx, align 4, !dbg !168, !tbaa !103
  %conv6 = sext i32 %8 to i64, !dbg !168
  store volatile i64 %conv6, i64* @csmith_sink_, align 8, !dbg !171, !tbaa !107
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !172
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !141, metadata !DIExpression()), !dbg !143
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !173
  br i1 %exitcond.not, label %for.end13, label %for.body, !dbg !166, !llvm.loop !174

for.end13:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 undef, metadata !141, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32 undef, metadata !141, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !143
  ret i32 0, !dbg !178
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nofree noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/1")
!4 = !{}
!5 = !{!0, !6, !23, !28, !31, !33, !35, !37, !39, !44, !47, !51, !64}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "g_8", scope: !2, file: !3, line: 37, type: !8, isLocal: false, isDefinition: true)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S1", file: !3, line: 29, size: 136, elements: !9)
!9 = !{!10, !15, !19}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !8, file: !3, line: 30, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !13, line: 98, baseType: !14)
!13 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!14 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !8, file: !3, line: 31, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !13, line: 96, baseType: !18)
!18 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !8, file: !3, line: 32, baseType: !20, size: 8, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !13, line: 224, baseType: !22)
!22 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "g_14", scope: !2, file: !3, line: 38, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !13, line: 167, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "g_13", scope: !2, file: !3, line: 39, type: !30, isLocal: false, isDefinition: true)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "g_16", scope: !2, file: !3, line: 40, type: !26, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "g_17", scope: !2, file: !3, line: 41, type: !12, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "g_18", scope: !2, file: !3, line: 42, type: !21, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "g_20", scope: !2, file: !3, line: 43, type: !26, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "g_22", scope: !2, file: !3, line: 44, type: !41, isLocal: false, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 4)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "g_21", scope: !2, file: !3, line: 45, type: !46, isLocal: false, isDefinition: true)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "g_23", scope: !2, file: !3, line: 46, type: !49, isLocal: false, isDefinition: true)
!49 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "g_24", scope: !2, file: !3, line: 47, type: !53, isLocal: false, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 440, elements: !62)
!54 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S0", file: !3, line: 19, size: 88, elements: !56)
!56 = !{!57, !58, !60, !61}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !55, file: !3, line: 20, baseType: !27, size: 29, flags: DIFlagBitField, extraData: i64 0)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !55, file: !3, line: 21, baseType: !59, size: 30, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !55, file: !3, line: 22, baseType: !27, size: 8, offset: 59, flags: DIFlagBitField, extraData: i64 0)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !55, file: !3, line: 23, baseType: !59, size: 20, offset: 67, flags: DIFlagBitField, extraData: i64 0)
!62 = !{!63}
!63 = !DISubrange(count: 5)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "g_25", scope: !2, file: !3, line: 48, type: !66, isLocal: false, isDefinition: true)
!66 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!68 = !{i32 7, !"Dwarf Version", i32 4}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 7, !"PIC Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!75 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 62, type: !76, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !78)
!76 = !DISubroutineType(types: !77)
!77 = !{!26}
!78 = !{!79, !80, !81, !82, !88, !89, !90, !91}
!79 = !DILocalVariable(name: "l_10", scope: !75, file: !3, line: 64, type: !46)
!80 = !DILocalVariable(name: "l_11", scope: !75, file: !3, line: 65, type: !50)
!81 = !DILocalVariable(name: "l_12", scope: !75, file: !3, line: 66, type: !50)
!82 = !DILocalVariable(name: "l_15", scope: !75, file: !3, line: 67, type: !83)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 13440, elements: !84)
!84 = !{!85, !86, !87}
!85 = !DISubrange(count: 10)
!86 = !DISubrange(count: 3)
!87 = !DISubrange(count: 7)
!88 = !DILocalVariable(name: "l_19", scope: !75, file: !3, line: 68, type: !46)
!89 = !DILocalVariable(name: "i", scope: !75, file: !3, line: 69, type: !27)
!90 = !DILocalVariable(name: "j", scope: !75, file: !3, line: 69, type: !27)
!91 = !DILocalVariable(name: "k", scope: !75, file: !3, line: 69, type: !27)
!92 = !DILocation(line: 0, scope: !75)
!93 = !DILocation(line: 69, column: 9, scope: !75)
!94 = !DILocation(line: 69, column: 12, scope: !75)
!95 = !DILocation(line: 69, column: 15, scope: !75)
!96 = !DILocation(line: 70, column: 81, scope: !75)
!97 = !{!98, !98, i64 0}
!98 = !{!"any pointer", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !DILocation(line: 70, column: 78, scope: !75)
!102 = !DILocation(line: 70, column: 55, scope: !75)
!103 = !{!104, !104, i64 0}
!104 = !{!"int", !99, i64 0}
!105 = !DILocation(line: 70, column: 49, scope: !75)
!106 = !DILocation(line: 70, column: 47, scope: !75)
!107 = !{!108, !108, i64 0}
!108 = !{!"long long", !99, i64 0}
!109 = !DILocation(line: 70, column: 93, scope: !75)
!110 = !{!99, !99, i64 0}
!111 = !DILocation(line: 70, column: 91, scope: !75)
!112 = !DILocation(line: 70, column: 31, scope: !75)
!113 = !DILocation(line: 70, column: 15, scope: !75)
!114 = !DILocation(line: 70, column: 7, scope: !75)
!115 = !DILocation(line: 70, column: 13, scope: !75)
!116 = !DILocation(line: 71, column: 7, scope: !75)
!117 = !DILocation(line: 71, column: 15, scope: !75)
!118 = !{i64 0, i64 4, !103, i64 3, i64 4, !103, i64 7, i64 4, !103, i64 8, i64 4, !103}
!119 = !DILocation(line: 72, column: 20, scope: !75)
!120 = !DILocation(line: 72, column: 5, scope: !75)
!121 = distinct !DISubprogram(name: "func_2", scope: !3, file: !3, line: 81, type: !122, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !26, !26, !46, !46, !46}
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!125 = !{!126, !127, !128, !129, !130}
!126 = !DILocalVariable(name: "p_3", arg: 1, scope: !121, file: !3, line: 81, type: !26)
!127 = !DILocalVariable(name: "p_4", arg: 2, scope: !121, file: !3, line: 81, type: !26)
!128 = !DILocalVariable(name: "p_5", arg: 3, scope: !121, file: !3, line: 81, type: !46)
!129 = !DILocalVariable(name: "p_6", arg: 4, scope: !121, file: !3, line: 81, type: !46)
!130 = !DILocalVariable(name: "p_7", arg: 5, scope: !121, file: !3, line: 81, type: !46)
!131 = !DILocation(line: 0, scope: !121)
!132 = !DILocation(line: 83, column: 17, scope: !121)
!133 = !DILocation(line: 83, column: 16, scope: !121)
!134 = !DILocation(line: 83, column: 7, scope: !121)
!135 = !DILocation(line: 83, column: 13, scope: !121)
!136 = !DILocation(line: 84, column: 5, scope: !121)
!137 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 91, type: !138, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{!27}
!140 = !{!141, !142}
!141 = !DILocalVariable(name: "i", scope: !137, file: !3, line: 93, type: !27)
!142 = !DILocalVariable(name: "print_hash_value", scope: !137, file: !3, line: 94, type: !27)
!143 = !DILocation(line: 0, scope: !137)
!144 = !DILocation(line: 96, column: 5, scope: !137)
!145 = !DILocation(line: 97, column: 24, scope: !137)
!146 = !{!147, !108, i64 0}
!147 = !{!"S1", !108, i64 0, !108, i64 8, !99, i64 16}
!148 = !DILocation(line: 97, column: 18, scope: !137)
!149 = !DILocation(line: 98, column: 24, scope: !137)
!150 = !{!147, !108, i64 8}
!151 = !DILocation(line: 98, column: 18, scope: !137)
!152 = !DILocation(line: 99, column: 24, scope: !137)
!153 = !{!147, !99, i64 16}
!154 = !DILocation(line: 99, column: 20, scope: !137)
!155 = !DILocation(line: 99, column: 18, scope: !137)
!156 = !DILocation(line: 100, column: 20, scope: !137)
!157 = !DILocation(line: 100, column: 18, scope: !137)
!158 = !DILocation(line: 101, column: 20, scope: !137)
!159 = !DILocation(line: 101, column: 18, scope: !137)
!160 = !DILocation(line: 102, column: 20, scope: !137)
!161 = !DILocation(line: 102, column: 18, scope: !137)
!162 = !DILocation(line: 103, column: 20, scope: !137)
!163 = !DILocation(line: 103, column: 18, scope: !137)
!164 = !DILocation(line: 104, column: 20, scope: !137)
!165 = !DILocation(line: 104, column: 18, scope: !137)
!166 = !DILocation(line: 105, column: 5, scope: !167)
!167 = distinct !DILexicalBlock(scope: !137, file: !3, line: 105, column: 5)
!168 = !DILocation(line: 107, column: 24, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 106, column: 5)
!170 = distinct !DILexicalBlock(scope: !167, file: !3, line: 105, column: 5)
!171 = !DILocation(line: 107, column: 22, scope: !169)
!172 = !DILocation(line: 105, column: 25, scope: !170)
!173 = !DILocation(line: 105, column: 19, scope: !170)
!174 = distinct !{!174, !166, !175, !176, !177}
!175 = !DILocation(line: 108, column: 5, scope: !167)
!176 = !{!"llvm.loop.mustprogress"}
!177 = !{!"llvm.loop.unroll.disable"}
!178 = !DILocation(line: 114, column: 5, scope: !137)
