; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_3 = global i32 1308350147, align 4, !dbg !18
@g_15 = local_unnamed_addr global i32 -336551731, align 4, !dbg !20
@g_38 = global { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 } { i16 -1, [2 x i8] undef, i8 -39, i8 6, i8 0, i8 0, i32 0, i32 1, i16 1, i16 7, i8 -91, i8 1, i8 0 }, align 4, !dbg !24
@g_40 = local_unnamed_addr global i16 1, align 2, !dbg !39
@g_44 = local_unnamed_addr global i64 1, align 8, !dbg !41
@g_50 = global i32* @g_3, align 8, !dbg !45
@g_49 = local_unnamed_addr global i32** @g_50, align 8, !dbg !48
@.memset_pattern = private unnamed_addr constant [4 x i32] [i32 975437406, i32 975437406, i32 975437406, i32 975437406], align 16

; Function Attrs: nofree noinline nounwind ssp uwtable
define signext i8 @func_1() local_unnamed_addr #0 !dbg !60 {
entry:
  %l_4 = alloca i64, align 8
  %l_464 = bitcast i64* %l_4 to i8*, !dbg !88
  call void @llvm.dbg.value(metadata i32* @g_3, metadata !65, metadata !DIExpression()), !dbg !88
  %0 = bitcast i64* %l_4 to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !89
  call void @llvm.dbg.declare(metadata [2 x i32]* %tmpcast, metadata !66, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !88
  call void @memset_pattern16(i8* nonnull %l_464, i8* bitcast ([4 x i32]* @.memset_pattern to i8*), i64 8) #6, !dbg !91
  call void @llvm.dbg.value(metadata i32 undef, metadata !70, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.value(metadata i32 undef, metadata !70, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !88
  call void @llvm.dbg.value(metadata i32 -1, metadata !71, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32* null, metadata !75, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32* null, metadata !77, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32* @g_15, metadata !78, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i64* @g_44, metadata !79, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32* %arrayidx1, metadata !81, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i32* @g_3, metadata !65, metadata !DIExpression()), !dbg !88
  store i64 0, i64* %l_4, align 8, !dbg !95
  %tmpcast = bitcast i64* %l_4 to [2 x i32]*
  call void @llvm.dbg.value(metadata i32 undef, metadata !82, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i32 undef, metadata !65, metadata !DIExpression()), !dbg !88
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, !dbg !97
  store i32 2, i32* @g_3, align 4, !dbg !98, !tbaa !99
  store i32 1, i32* @g_15, align 4, !dbg !103, !tbaa !99
  store i64 2, i64* @g_44, align 8, !dbg !104, !tbaa !105
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !107, !tbaa !99
  %or = or i32 %1, 1, !dbg !107
  store i32 %or, i32* %arrayidx1, align 4, !dbg !107, !tbaa !99
  store i32 %or, i32* @g_3, align 4, !dbg !108, !tbaa !99
  %2 = load volatile i32, i32* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 7), align 4, !dbg !109, !tbaa !110
  %conv45 = trunc i32 %2 to i8, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !114
  ret i8 %conv45, !dbg !115
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define zeroext i16 @func_5(i64 %p_6, i32 %p_7) local_unnamed_addr #3 !dbg !116 {
entry:
  call void @llvm.dbg.declare(metadata [64 x i8]* undef, metadata !126, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 512)), !dbg !142
  call void @llvm.dbg.declare(metadata [364 x i8]* undef, metadata !126, metadata !DIExpression(DW_OP_LLVM_fragment, 544, 2912)), !dbg !142
  call void @llvm.dbg.value(metadata i64 %p_6, metadata !120, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32 %p_7, metadata !121, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32* null, metadata !122, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32** undef, metadata !123, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32 0, metadata !124, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32* undef, metadata !125, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32 undef, metadata !126, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 32)), !dbg !143
  call void @llvm.dbg.declare(metadata i32* undef, metadata !131, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* undef, metadata !132, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* undef, metadata !133, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i32* null, metadata !122, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata !DIArgList(i32 1, i32 undef, i64 %p_6), metadata !124, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_constu, 24, DW_OP_shra, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value)), !dbg !143
  %conv52 = trunc i32 %p_7 to i16, !dbg !147
  ret i16 %conv52, !dbg !148
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !149 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !153, metadata !DIExpression()), !dbg !154
  %call = call signext i8 @func_1(), !dbg !155
  %0 = load i32, i32* @g_3, align 4, !dbg !156, !tbaa !99
  %conv = sext i32 %0 to i64, !dbg !156
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !157, !tbaa !105
  %1 = load i32, i32* @g_15, align 4, !dbg !158, !tbaa !99
  %conv1 = zext i32 %1 to i64, !dbg !158
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !159, !tbaa !105
  %2 = load volatile i16, i16* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 0), align 4, !dbg !160, !tbaa !161
  %conv2 = sext i16 %2 to i64, !dbg !162
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !163, !tbaa !105
  %bf.load = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 2) to i32*), align 4, !dbg !164
  %bf.clear = and i32 %bf.load, 33554431, !dbg !164
  %conv3 = zext i32 %bf.clear to i64, !dbg !165
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !166, !tbaa !105
  %3 = load volatile i32, i32* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 6), align 4, !dbg !167, !tbaa !168
  %conv4 = sext i32 %3 to i64, !dbg !169
  store volatile i64 %conv4, i64* @csmith_sink_, align 8, !dbg !170, !tbaa !105
  %4 = load volatile i32, i32* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 7), align 4, !dbg !171, !tbaa !110
  %conv5 = sext i32 %4 to i64, !dbg !172
  store volatile i64 %conv5, i64* @csmith_sink_, align 8, !dbg !173, !tbaa !105
  %5 = load volatile i16, i16* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 8), align 4, !dbg !174, !tbaa !175
  %conv6 = sext i16 %5 to i64, !dbg !176
  store volatile i64 %conv6, i64* @csmith_sink_, align 8, !dbg !177, !tbaa !105
  %6 = load volatile i16, i16* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 9), align 2, !dbg !178, !tbaa !179
  %conv7 = zext i16 %6 to i64, !dbg !180
  store volatile i64 %conv7, i64* @csmith_sink_, align 8, !dbg !181, !tbaa !105
  %bf.load8 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 10) to i32*), align 4, !dbg !182
  %bf.clear9 = and i32 %bf.load8, 262143, !dbg !182
  %conv10 = zext i32 %bf.clear9 to i64, !dbg !183
  store volatile i64 %conv10, i64* @csmith_sink_, align 8, !dbg !184, !tbaa !105
  %7 = load i16, i16* @g_40, align 2, !dbg !185, !tbaa !186
  %conv11 = zext i16 %7 to i64, !dbg !185
  store volatile i64 %conv11, i64* @csmith_sink_, align 8, !dbg !187, !tbaa !105
  %8 = load i64, i64* @g_44, align 8, !dbg !188, !tbaa !105
  store volatile i64 %8, i64* @csmith_sink_, align 8, !dbg !189, !tbaa !105
  ret i32 0, !dbg !190
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: argmemonly nofree
declare void @memset_pattern16(i8* nocapture writeonly, i8* nocapture readonly, i64) local_unnamed_addr #5

attributes #0 = { nofree noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !52, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !17, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/7")
!4 = !{}
!5 = !{!6, !9, !11, !13, !15}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !10)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !12)
!12 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !14)
!14 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !16)
!16 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!17 = !{!0, !18, !20, !24, !39, !41, !45, !48}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "g_3", scope: !2, file: !3, line: 28, type: !9, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "g_15", scope: !2, file: !3, line: 29, type: !22, isLocal: false, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !23)
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "g_38", scope: !2, file: !3, line: 30, type: !26, isLocal: false, isDefinition: true)
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S0", file: !3, line: 17, size: 192, elements: !28)
!28 = !{!29, !30, !31, !33, !34, !35, !37}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !27, file: !3, line: 18, baseType: !15, size: 16)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !27, file: !3, line: 19, baseType: !23, size: 25, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !27, file: !3, line: 20, baseType: !32, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !27, file: !3, line: 21, baseType: !9, size: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "f4", scope: !27, file: !3, line: 22, baseType: !15, size: 16, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "f5", scope: !27, file: !3, line: 23, baseType: !36, size: 16, offset: 144)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "f6", scope: !27, file: !3, line: 24, baseType: !38, size: 18, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "g_40", scope: !2, file: !3, line: 31, type: !13, isLocal: false, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "g_44", scope: !2, file: !3, line: 32, type: !43, isLocal: false, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !44)
!44 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "g_50", scope: !2, file: !3, line: 33, type: !47, isLocal: false, isDefinition: true)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "g_49", scope: !2, file: !3, line: 34, type: !50, isLocal: false, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!53 = !{i32 7, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = !{i32 7, !"PIC Level", i32 2}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!60 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 48, type: !61, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!64 = !{!65, !66, !70, !71, !75, !77, !78, !79, !81, !82, !86}
!65 = !DILocalVariable(name: "l_2", scope: !60, file: !3, line: 50, type: !47)
!66 = !DILocalVariable(name: "l_4", scope: !60, file: !3, line: 51, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 2)
!70 = !DILocalVariable(name: "i", scope: !60, file: !3, line: 52, type: !10)
!71 = !DILocalVariable(name: "l_11", scope: !72, file: !3, line: 57, type: !74)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 56, column: 5)
!73 = distinct !DILexicalBlock(scope: !60, file: !3, line: 55, column: 9)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!75 = !DILocalVariable(name: "l_12", scope: !72, file: !3, line: 58, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!77 = !DILocalVariable(name: "l_13", scope: !72, file: !3, line: 59, type: !76)
!78 = !DILocalVariable(name: "l_14", scope: !72, file: !3, line: 60, type: !76)
!79 = !DILocalVariable(name: "l_43", scope: !72, file: !3, line: 61, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!81 = !DILocalVariable(name: "l_45", scope: !72, file: !3, line: 62, type: !47)
!82 = !DILocalVariable(name: "i", scope: !83, file: !3, line: 65, type: !10)
!83 = distinct !DILexicalBlock(scope: !84, file: !3, line: 64, column: 9)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 63, column: 9)
!85 = distinct !DILexicalBlock(scope: !72, file: !3, line: 63, column: 9)
!86 = !DILocalVariable(name: "l_48", scope: !87, file: !3, line: 72, type: !47)
!87 = distinct !DILexicalBlock(scope: !73, file: !3, line: 71, column: 5)
!88 = !DILocation(line: 0, scope: !60)
!89 = !DILocation(line: 51, column: 5, scope: !60)
!90 = !DILocation(line: 51, column: 13, scope: !60)
!91 = !DILocation(line: 54, column: 16, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !3, line: 53, column: 5)
!93 = distinct !DILexicalBlock(scope: !60, file: !3, line: 53, column: 5)
!94 = !DILocation(line: 0, scope: !72)
!95 = !DILocation(line: 66, column: 22, scope: !83)
!96 = !DILocation(line: 65, column: 17, scope: !83)
!97 = !DILocation(line: 62, column: 26, scope: !72)
!98 = !DILocation(line: 0, scope: !85)
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !DILocation(line: 68, column: 65, scope: !72)
!104 = !DILocation(line: 68, column: 40, scope: !72)
!105 = !{!106, !106, i64 0}
!106 = !{!"long long", !101, i64 0}
!107 = !DILocation(line: 68, column: 27, scope: !72)
!108 = !DILocation(line: 68, column: 16, scope: !72)
!109 = !DILocation(line: 82, column: 17, scope: !60)
!110 = !{!111, !100, i64 12}
!111 = !{!"S0", !112, i64 0, !100, i64 4, !100, i64 8, !100, i64 12, !112, i64 16, !112, i64 18, !100, i64 20}
!112 = !{!"short", !101, i64 0}
!113 = !DILocation(line: 82, column: 12, scope: !60)
!114 = !DILocation(line: 83, column: 1, scope: !60)
!115 = !DILocation(line: 82, column: 5, scope: !60)
!116 = distinct !DISubprogram(name: "func_5", scope: !3, file: !3, line: 91, type: !117, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{!36, !43, !22}
!119 = !{!120, !121, !122, !123, !124, !125, !126, !131, !132, !133, !134, !141}
!120 = !DILocalVariable(name: "p_6", arg: 1, scope: !116, file: !3, line: 91, type: !43)
!121 = !DILocalVariable(name: "p_7", arg: 2, scope: !116, file: !3, line: 91, type: !22)
!122 = !DILocalVariable(name: "l_17", scope: !116, file: !3, line: 93, type: !47)
!123 = !DILocalVariable(name: "l_16", scope: !116, file: !3, line: 94, type: !51)
!124 = !DILocalVariable(name: "l_24", scope: !116, file: !3, line: 95, type: !9)
!125 = !DILocalVariable(name: "l_27", scope: !116, file: !3, line: 96, type: !47)
!126 = !DILocalVariable(name: "l_41", scope: !116, file: !3, line: 97, type: !127)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 3456, elements: !128)
!128 = !{!129, !130, !130}
!129 = !DISubrange(count: 3)
!130 = !DISubrange(count: 6)
!131 = !DILocalVariable(name: "i", scope: !116, file: !3, line: 98, type: !10)
!132 = !DILocalVariable(name: "j", scope: !116, file: !3, line: 98, type: !10)
!133 = !DILocalVariable(name: "k", scope: !116, file: !3, line: 98, type: !10)
!134 = !DILocalVariable(name: "l_39", scope: !135, file: !3, line: 105, type: !140)
!135 = distinct !DILexicalBlock(scope: !136, file: !3, line: 104, column: 9)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 103, column: 9)
!137 = distinct !DILexicalBlock(scope: !138, file: !3, line: 103, column: 9)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 101, column: 5)
!139 = distinct !DILexicalBlock(scope: !116, file: !3, line: 100, column: 9)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!141 = !DILabel(scope: !138, name: "lbl_42", file: !3, line: 102)
!142 = !DILocation(line: 97, column: 13, scope: !116)
!143 = !DILocation(line: 0, scope: !116)
!144 = !DILocation(line: 98, column: 9, scope: !116)
!145 = !DILocation(line: 98, column: 12, scope: !116)
!146 = !DILocation(line: 98, column: 15, scope: !116)
!147 = !DILocation(line: 114, column: 12, scope: !116)
!148 = !DILocation(line: 114, column: 5, scope: !116)
!149 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 121, type: !150, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!150 = !DISubroutineType(types: !151)
!151 = !{!10}
!152 = !{!153}
!153 = !DILocalVariable(name: "print_hash_value", scope: !149, file: !3, line: 123, type: !10)
!154 = !DILocation(line: 0, scope: !149)
!155 = !DILocation(line: 125, column: 5, scope: !149)
!156 = !DILocation(line: 126, column: 20, scope: !149)
!157 = !DILocation(line: 126, column: 18, scope: !149)
!158 = !DILocation(line: 127, column: 20, scope: !149)
!159 = !DILocation(line: 127, column: 18, scope: !149)
!160 = !DILocation(line: 128, column: 25, scope: !149)
!161 = !{!111, !112, i64 0}
!162 = !DILocation(line: 128, column: 20, scope: !149)
!163 = !DILocation(line: 128, column: 18, scope: !149)
!164 = !DILocation(line: 129, column: 25, scope: !149)
!165 = !DILocation(line: 129, column: 20, scope: !149)
!166 = !DILocation(line: 129, column: 18, scope: !149)
!167 = !DILocation(line: 130, column: 25, scope: !149)
!168 = !{!111, !100, i64 8}
!169 = !DILocation(line: 130, column: 20, scope: !149)
!170 = !DILocation(line: 130, column: 18, scope: !149)
!171 = !DILocation(line: 131, column: 25, scope: !149)
!172 = !DILocation(line: 131, column: 20, scope: !149)
!173 = !DILocation(line: 131, column: 18, scope: !149)
!174 = !DILocation(line: 132, column: 25, scope: !149)
!175 = !{!111, !112, i64 16}
!176 = !DILocation(line: 132, column: 20, scope: !149)
!177 = !DILocation(line: 132, column: 18, scope: !149)
!178 = !DILocation(line: 133, column: 25, scope: !149)
!179 = !{!111, !112, i64 18}
!180 = !DILocation(line: 133, column: 20, scope: !149)
!181 = !DILocation(line: 133, column: 18, scope: !149)
!182 = !DILocation(line: 134, column: 25, scope: !149)
!183 = !DILocation(line: 134, column: 20, scope: !149)
!184 = !DILocation(line: 134, column: 18, scope: !149)
!185 = !DILocation(line: 135, column: 20, scope: !149)
!186 = !{!112, !112, i64 0}
!187 = !DILocation(line: 135, column: 18, scope: !149)
!188 = !DILocation(line: 136, column: 20, scope: !149)
!189 = !DILocation(line: 136, column: 18, scope: !149)
!190 = !DILocation(line: 138, column: 5, scope: !149)
