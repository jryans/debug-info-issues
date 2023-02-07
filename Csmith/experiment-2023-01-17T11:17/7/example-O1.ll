; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_3 = global i32 1308350147, align 4, !dbg !22
@g_15 = local_unnamed_addr global i32 -336551731, align 4, !dbg !24
@g_38 = global { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 } { i16 -1, [2 x i8] undef, i8 -39, i8 6, i8 0, i8 0, i32 0, i32 1, i16 1, i16 7, i8 -91, i8 1, i8 0 }, align 4, !dbg !29
@g_40 = local_unnamed_addr global i16 1, align 2, !dbg !44
@g_44 = local_unnamed_addr global i64 1, align 8, !dbg !46
@g_50 = global i32* @g_3, align 8, !dbg !51
@g_49 = local_unnamed_addr global i32** @g_50, align 8, !dbg !54
@.memset_pattern = private unnamed_addr constant [4 x i32] [i32 975437406, i32 975437406, i32 975437406, i32 975437406], align 16

; Function Attrs: nofree noinline nounwind ssp uwtable
define signext i8 @func_1() local_unnamed_addr #0 !dbg !67 {
entry:
  %l_4 = alloca i64, align 8
  %l_464 = bitcast i64* %l_4 to i8*, !dbg !95
  call void @llvm.dbg.value(metadata i32* @g_3, metadata !72, metadata !DIExpression()), !dbg !95
  %0 = bitcast i64* %l_4 to i8*, !dbg !96
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #6, !dbg !96
  call void @llvm.dbg.declare(metadata [2 x i32]* %tmpcast, metadata !73, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !95
  call void @memset_pattern16(i8* nonnull %l_464, i8* bitcast ([4 x i32]* @.memset_pattern to i8*), i64 8) #6, !dbg !98
  call void @llvm.dbg.value(metadata i32 undef, metadata !77, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i32 undef, metadata !77, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !95
  call void @llvm.dbg.value(metadata i32 -1, metadata !78, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32* null, metadata !82, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32* null, metadata !84, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32* @g_15, metadata !85, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i64* @g_44, metadata !86, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32* %arrayidx1, metadata !88, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32* @g_3, metadata !72, metadata !DIExpression()), !dbg !95
  store i64 0, i64* %l_4, align 8, !dbg !102
  %tmpcast = bitcast i64* %l_4 to [2 x i32]*
  call void @llvm.dbg.value(metadata i32 undef, metadata !89, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.value(metadata i32 undef, metadata !72, metadata !DIExpression()), !dbg !95
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, !dbg !104
  store i32 2, i32* @g_3, align 4, !dbg !105, !tbaa !106
  store i32 1, i32* @g_15, align 4, !dbg !110, !tbaa !106
  store i64 2, i64* @g_44, align 8, !dbg !111, !tbaa !112
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !114, !tbaa !106
  %or = or i32 %1, 1, !dbg !114
  store i32 %or, i32* %arrayidx1, align 4, !dbg !114, !tbaa !106
  store i32 %or, i32* @g_3, align 4, !dbg !115, !tbaa !106
  %2 = load volatile i32, i32* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 7), align 4, !dbg !116, !tbaa !117
  %conv45 = trunc i32 %2 to i8, !dbg !120
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #6, !dbg !121
  ret i8 %conv45, !dbg !122
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define zeroext i16 @func_5(i64 %p_6, i32 %p_7) local_unnamed_addr #3 !dbg !123 {
entry:
  call void @llvm.dbg.declare(metadata [64 x i8]* undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 512)), !dbg !149
  call void @llvm.dbg.declare(metadata [364 x i8]* undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 544, 2912)), !dbg !149
  call void @llvm.dbg.value(metadata i64 %p_6, metadata !127, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 %p_7, metadata !128, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32* null, metadata !129, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32** undef, metadata !130, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 0, metadata !131, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32* undef, metadata !132, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 32)), !dbg !150
  call void @llvm.dbg.declare(metadata i32* undef, metadata !138, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* undef, metadata !139, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i32* undef, metadata !140, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i32* null, metadata !129, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata !DIArgList(i32 1, i32 undef, i64 %p_6), metadata !131, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_constu, 24, DW_OP_shra, DW_OP_minus, DW_OP_LLVM_arg, 1, DW_OP_xor, DW_OP_stack_value)), !dbg !150
  %conv52 = trunc i32 %p_7 to i16, !dbg !154
  ret i16 %conv52, !dbg !155
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !156 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !160, metadata !DIExpression()), !dbg !161
  %call = call signext i8 @func_1(), !dbg !162
  %0 = load i32, i32* @g_3, align 4, !dbg !163, !tbaa !106
  %conv = sext i32 %0 to i64, !dbg !163
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !164, !tbaa !112
  %1 = load i32, i32* @g_15, align 4, !dbg !165, !tbaa !106
  %conv1 = zext i32 %1 to i64, !dbg !165
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !166, !tbaa !112
  %2 = load volatile i16, i16* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 0), align 4, !dbg !167, !tbaa !168
  %conv2 = sext i16 %2 to i64, !dbg !169
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !170, !tbaa !112
  %bf.load = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 2) to i32*), align 4, !dbg !171
  %bf.clear = and i32 %bf.load, 33554431, !dbg !171
  %conv3 = zext i32 %bf.clear to i64, !dbg !172
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !173, !tbaa !112
  %3 = load volatile i32, i32* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 6), align 4, !dbg !174, !tbaa !175
  %conv4 = sext i32 %3 to i64, !dbg !176
  store volatile i64 %conv4, i64* @csmith_sink_, align 8, !dbg !177, !tbaa !112
  %4 = load volatile i32, i32* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 7), align 4, !dbg !178, !tbaa !117
  %conv5 = sext i32 %4 to i64, !dbg !179
  store volatile i64 %conv5, i64* @csmith_sink_, align 8, !dbg !180, !tbaa !112
  %5 = load volatile i16, i16* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 8), align 4, !dbg !181, !tbaa !182
  %conv6 = sext i16 %5 to i64, !dbg !183
  store volatile i64 %conv6, i64* @csmith_sink_, align 8, !dbg !184, !tbaa !112
  %6 = load volatile i16, i16* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 9), align 2, !dbg !185, !tbaa !186
  %conv7 = zext i16 %6 to i64, !dbg !187
  store volatile i64 %conv7, i64* @csmith_sink_, align 8, !dbg !188, !tbaa !112
  %bf.load8 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }, { i16, [2 x i8], i8, i8, i8, i8, i32, i32, i16, i16, i8, i8, i8 }* @g_38, i64 0, i32 10) to i32*), align 4, !dbg !189
  %bf.clear9 = and i32 %bf.load8, 262143, !dbg !189
  %conv10 = zext i32 %bf.clear9 to i64, !dbg !190
  store volatile i64 %conv10, i64* @csmith_sink_, align 8, !dbg !191, !tbaa !112
  %7 = load i16, i16* @g_40, align 2, !dbg !192, !tbaa !193
  %conv11 = zext i16 %7 to i64, !dbg !192
  store volatile i64 %conv11, i64* @csmith_sink_, align 8, !dbg !194, !tbaa !112
  %8 = load i64, i64* @g_44, align 8, !dbg !195, !tbaa !112
  store volatile i64 %8, i64* @csmith_sink_, align 8, !dbg !196, !tbaa !112
  ret i32 0, !dbg !197
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

!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !58, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !21, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/7")
!4 = !{}
!5 = !{!6, !9, !12, !15, !18}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 30, baseType: !8)
!7 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h", directory: "")
!8 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !10, line: 30, baseType: !11)
!10 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h", directory: "")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !13, line: 30, baseType: !14)
!13 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h", directory: "")
!14 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !16, line: 31, baseType: !17)
!16 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h", directory: "")
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !19, line: 30, baseType: !20)
!19 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h", directory: "")
!20 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!21 = !{!0, !22, !24, !29, !44, !46, !51, !54}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "g_3", scope: !2, file: !3, line: 28, type: !9, isLocal: false, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "g_15", scope: !2, file: !3, line: 29, type: !26, isLocal: false, isDefinition: true)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 31, baseType: !28)
!27 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "g_38", scope: !2, file: !3, line: 30, type: !31, isLocal: false, isDefinition: true)
!31 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S0", file: !3, line: 17, size: 192, elements: !33)
!33 = !{!34, !35, !36, !38, !39, !40, !42}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !32, file: !3, line: 18, baseType: !18, size: 16)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !32, file: !3, line: 19, baseType: !28, size: 25, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !32, file: !3, line: 20, baseType: !37, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !32, file: !3, line: 21, baseType: !9, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "f4", scope: !32, file: !3, line: 22, baseType: !18, size: 16, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "f5", scope: !32, file: !3, line: 23, baseType: !41, size: 16, offset: 144)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "f6", scope: !32, file: !3, line: 24, baseType: !43, size: 18, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "g_40", scope: !2, file: !3, line: 31, type: !15, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "g_44", scope: !2, file: !3, line: 32, type: !48, isLocal: false, isDefinition: true)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !49, line: 31, baseType: !50)
!49 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!50 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "g_50", scope: !2, file: !3, line: 33, type: !53, isLocal: false, isDefinition: true)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "g_49", scope: !2, file: !3, line: 34, type: !56, isLocal: false, isDefinition: true)
!56 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!59 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{i32 7, !"PIC Level", i32 2}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!67 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 48, type: !68, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !71)
!68 = !DISubroutineType(types: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!71 = !{!72, !73, !77, !78, !82, !84, !85, !86, !88, !89, !93}
!72 = !DILocalVariable(name: "l_2", scope: !67, file: !3, line: 50, type: !53)
!73 = !DILocalVariable(name: "l_4", scope: !67, file: !3, line: 51, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 2)
!77 = !DILocalVariable(name: "i", scope: !67, file: !3, line: 52, type: !11)
!78 = !DILocalVariable(name: "l_11", scope: !79, file: !3, line: 57, type: !81)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 56, column: 5)
!80 = distinct !DILexicalBlock(scope: !67, file: !3, line: 55, column: 9)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!82 = !DILocalVariable(name: "l_12", scope: !79, file: !3, line: 58, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!84 = !DILocalVariable(name: "l_13", scope: !79, file: !3, line: 59, type: !83)
!85 = !DILocalVariable(name: "l_14", scope: !79, file: !3, line: 60, type: !83)
!86 = !DILocalVariable(name: "l_43", scope: !79, file: !3, line: 61, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!88 = !DILocalVariable(name: "l_45", scope: !79, file: !3, line: 62, type: !53)
!89 = !DILocalVariable(name: "i", scope: !90, file: !3, line: 65, type: !11)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 64, column: 9)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 63, column: 9)
!92 = distinct !DILexicalBlock(scope: !79, file: !3, line: 63, column: 9)
!93 = !DILocalVariable(name: "l_48", scope: !94, file: !3, line: 72, type: !53)
!94 = distinct !DILexicalBlock(scope: !80, file: !3, line: 71, column: 5)
!95 = !DILocation(line: 0, scope: !67)
!96 = !DILocation(line: 51, column: 5, scope: !67)
!97 = !DILocation(line: 51, column: 13, scope: !67)
!98 = !DILocation(line: 54, column: 16, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 53, column: 5)
!100 = distinct !DILexicalBlock(scope: !67, file: !3, line: 53, column: 5)
!101 = !DILocation(line: 0, scope: !79)
!102 = !DILocation(line: 66, column: 22, scope: !90)
!103 = !DILocation(line: 65, column: 17, scope: !90)
!104 = !DILocation(line: 62, column: 26, scope: !79)
!105 = !DILocation(line: 0, scope: !92)
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !DILocation(line: 68, column: 65, scope: !79)
!111 = !DILocation(line: 68, column: 40, scope: !79)
!112 = !{!113, !113, i64 0}
!113 = !{!"long long", !108, i64 0}
!114 = !DILocation(line: 68, column: 27, scope: !79)
!115 = !DILocation(line: 68, column: 16, scope: !79)
!116 = !DILocation(line: 82, column: 17, scope: !67)
!117 = !{!118, !107, i64 12}
!118 = !{!"S0", !119, i64 0, !107, i64 4, !107, i64 8, !107, i64 12, !119, i64 16, !119, i64 18, !107, i64 20}
!119 = !{!"short", !108, i64 0}
!120 = !DILocation(line: 82, column: 12, scope: !67)
!121 = !DILocation(line: 83, column: 1, scope: !67)
!122 = !DILocation(line: 82, column: 5, scope: !67)
!123 = distinct !DISubprogram(name: "func_5", scope: !3, file: !3, line: 91, type: !124, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{!41, !48, !26}
!126 = !{!127, !128, !129, !130, !131, !132, !133, !138, !139, !140, !141, !148}
!127 = !DILocalVariable(name: "p_6", arg: 1, scope: !123, file: !3, line: 91, type: !48)
!128 = !DILocalVariable(name: "p_7", arg: 2, scope: !123, file: !3, line: 91, type: !26)
!129 = !DILocalVariable(name: "l_17", scope: !123, file: !3, line: 93, type: !53)
!130 = !DILocalVariable(name: "l_16", scope: !123, file: !3, line: 94, type: !57)
!131 = !DILocalVariable(name: "l_24", scope: !123, file: !3, line: 95, type: !9)
!132 = !DILocalVariable(name: "l_27", scope: !123, file: !3, line: 96, type: !53)
!133 = !DILocalVariable(name: "l_41", scope: !123, file: !3, line: 97, type: !134)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 3456, elements: !135)
!135 = !{!136, !137, !137}
!136 = !DISubrange(count: 3)
!137 = !DISubrange(count: 6)
!138 = !DILocalVariable(name: "i", scope: !123, file: !3, line: 98, type: !11)
!139 = !DILocalVariable(name: "j", scope: !123, file: !3, line: 98, type: !11)
!140 = !DILocalVariable(name: "k", scope: !123, file: !3, line: 98, type: !11)
!141 = !DILocalVariable(name: "l_39", scope: !142, file: !3, line: 105, type: !147)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 104, column: 9)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 103, column: 9)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 103, column: 9)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 101, column: 5)
!146 = distinct !DILexicalBlock(scope: !123, file: !3, line: 100, column: 9)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!148 = !DILabel(scope: !145, name: "lbl_42", file: !3, line: 102)
!149 = !DILocation(line: 97, column: 13, scope: !123)
!150 = !DILocation(line: 0, scope: !123)
!151 = !DILocation(line: 98, column: 9, scope: !123)
!152 = !DILocation(line: 98, column: 12, scope: !123)
!153 = !DILocation(line: 98, column: 15, scope: !123)
!154 = !DILocation(line: 114, column: 12, scope: !123)
!155 = !DILocation(line: 114, column: 5, scope: !123)
!156 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 121, type: !157, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{!11}
!159 = !{!160}
!160 = !DILocalVariable(name: "print_hash_value", scope: !156, file: !3, line: 123, type: !11)
!161 = !DILocation(line: 0, scope: !156)
!162 = !DILocation(line: 125, column: 5, scope: !156)
!163 = !DILocation(line: 126, column: 20, scope: !156)
!164 = !DILocation(line: 126, column: 18, scope: !156)
!165 = !DILocation(line: 127, column: 20, scope: !156)
!166 = !DILocation(line: 127, column: 18, scope: !156)
!167 = !DILocation(line: 128, column: 25, scope: !156)
!168 = !{!118, !119, i64 0}
!169 = !DILocation(line: 128, column: 20, scope: !156)
!170 = !DILocation(line: 128, column: 18, scope: !156)
!171 = !DILocation(line: 129, column: 25, scope: !156)
!172 = !DILocation(line: 129, column: 20, scope: !156)
!173 = !DILocation(line: 129, column: 18, scope: !156)
!174 = !DILocation(line: 130, column: 25, scope: !156)
!175 = !{!118, !107, i64 8}
!176 = !DILocation(line: 130, column: 20, scope: !156)
!177 = !DILocation(line: 130, column: 18, scope: !156)
!178 = !DILocation(line: 131, column: 25, scope: !156)
!179 = !DILocation(line: 131, column: 20, scope: !156)
!180 = !DILocation(line: 131, column: 18, scope: !156)
!181 = !DILocation(line: 132, column: 25, scope: !156)
!182 = !{!118, !119, i64 16}
!183 = !DILocation(line: 132, column: 20, scope: !156)
!184 = !DILocation(line: 132, column: 18, scope: !156)
!185 = !DILocation(line: 133, column: 25, scope: !156)
!186 = !{!118, !119, i64 18}
!187 = !DILocation(line: 133, column: 20, scope: !156)
!188 = !DILocation(line: 133, column: 18, scope: !156)
!189 = !DILocation(line: 134, column: 25, scope: !156)
!190 = !DILocation(line: 134, column: 20, scope: !156)
!191 = !DILocation(line: 134, column: 18, scope: !156)
!192 = !DILocation(line: 135, column: 20, scope: !156)
!193 = !{!119, !119, i64 0}
!194 = !DILocation(line: 135, column: 18, scope: !156)
!195 = !DILocation(line: 136, column: 20, scope: !156)
!196 = !DILocation(line: 136, column: 18, scope: !156)
!197 = !DILocation(line: 138, column: 5, scope: !156)
