; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_2 = global i32 -1, align 4, !dbg !24
@g_21 = global i32 1, align 4, !dbg !27
@g_26 = global [10 x i32] [i32 617013548, i32 617013548, i32 617013548, i32 617013548, i32 617013548, i32 617013548, i32 617013548, i32 617013548, i32 617013548, i32 617013548], align 16, !dbg !29
@g_48 = local_unnamed_addr global i16 2384, align 2, !dbg !35
@g_52 = global i32* @g_21, align 8, !dbg !37
@g_51 = local_unnamed_addr global [2 x i32**] [i32** @g_52, i32** @g_52], align 16, !dbg !40
@g_53 = global i32** @g_52, align 8, !dbg !47
@g_69 = local_unnamed_addr global i64 -1909974887572969816, align 8, !dbg !49

; Function Attrs: nofree noinline nounwind ssp uwtable
define zeroext i16 @func_1() local_unnamed_addr #0 !dbg !59 {
entry:
  call void @llvm.dbg.value(metadata i32 -679241582, metadata !63, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.value(metadata i8 1, metadata !64, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.value(metadata i32 895178269, metadata !65, metadata !DIExpression()), !dbg !84
  store volatile i32 306781737, i32* @g_2, align 4, !dbg !85, !tbaa !86
  %0 = load volatile i32, i32* @g_2, align 4, !dbg !90, !tbaa !86
  %call = call zeroext i16 @func_3(i8 signext -110, i16 zeroext -26478, i32 undef), !dbg !91
  %1 = load volatile i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @g_26, i64 0, i64 3), align 4, !dbg !92, !tbaa !86
  call void @llvm.dbg.value(metadata i32 -1, metadata !66, metadata !DIExpression()), !dbg !93
  store i16 3, i16* @g_48, align 2, !dbg !94, !tbaa !96
  ret i16 -1, !dbg !98
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree noinline nounwind ssp uwtable
define zeroext i16 @func_3(i8 signext %p_4, i16 zeroext %p_5, i32 %p_6) local_unnamed_addr #0 !dbg !99 {
entry:
  %l_39 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [6 x i32]* undef, metadata !118, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 192)), !dbg !142
  call void @llvm.dbg.value(metadata i8 %p_4, metadata !103, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i16 %p_5, metadata !104, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32 undef, metadata !105, metadata !DIExpression()), !dbg !143
  %0 = bitcast i32* %l_39 to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4, !dbg !144
  call void @llvm.dbg.value(metadata i32 -6, metadata !114, metadata !DIExpression()), !dbg !143
  store i32 -6, i32* %l_39, align 4, !dbg !145, !tbaa !86
  call void @llvm.dbg.declare(metadata i32* undef, metadata !115, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* undef, metadata !116, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* undef, metadata !117, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 1, metadata !105, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32 1, metadata !105, metadata !DIExpression()), !dbg !143
  br label %for.body, !dbg !149

for.body:                                         ; preds = %entry, %for.body
  %p_6.addr.0173 = phi i32 [ 1, %entry ], [ %add112, %for.body ]
  call void @llvm.dbg.value(metadata i32 %p_6.addr.0173, metadata !105, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32 5, metadata !118, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !150
  call void @llvm.dbg.declare(metadata i32* undef, metadata !125, metadata !DIExpression()), !dbg !151
  %1 = load volatile i32, i32* @g_2, align 4, !dbg !152, !tbaa !86
  call void @llvm.dbg.value(metadata i32* null, metadata !137, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i32 0, metadata !141, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i32 undef, metadata !141, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i32 undef, metadata !139, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i32 undef, metadata !141, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !153
  %2 = load volatile i32, i32* @g_2, align 4, !dbg !154, !tbaa !86
  %3 = load volatile i32**, i32*** @g_53, align 8, !dbg !155, !tbaa !156
  store i32* %l_39, i32** %3, align 8, !dbg !158, !tbaa !156
  %add112 = add nuw nsw i32 %p_6.addr.0173, 1, !dbg !159
  call void @llvm.dbg.value(metadata i32 %add112, metadata !105, metadata !DIExpression()), !dbg !143
  %exitcond.not = icmp eq i32 %add112, 5, !dbg !160
  br i1 %exitcond.not, label %for.end113, label %for.body, !dbg !149, !llvm.loop !161

for.end113:                                       ; preds = %for.body
  store i32 -1714214889, i32* @g_21, align 4, !dbg !153, !tbaa !86
  store i16 1, i16* @g_48, align 2, !dbg !165, !tbaa !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4, !dbg !166
  ret i16 10263, !dbg !167
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !168 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !174
  %call = call zeroext i16 @func_1(), !dbg !175
  %0 = load volatile i32, i32* @g_2, align 4, !dbg !176, !tbaa !86
  %conv = sext i32 %0 to i64, !dbg !176
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !177, !tbaa !178
  %1 = load i32, i32* @g_21, align 4, !dbg !180, !tbaa !86
  %conv1 = sext i32 %1 to i64, !dbg !180
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !181, !tbaa !178
  call void @llvm.dbg.value(metadata i32 0, metadata !172, metadata !DIExpression()), !dbg !174
  br label %for.body, !dbg !182

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !172, metadata !DIExpression()), !dbg !174
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @g_26, i64 0, i64 %indvars.iv, !dbg !184
  %2 = load volatile i32, i32* %arrayidx, align 4, !dbg !184, !tbaa !86
  %conv3 = zext i32 %2 to i64, !dbg !184
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !187, !tbaa !178
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !188
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !172, metadata !DIExpression()), !dbg !174
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10, !dbg !189
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !182, !llvm.loop !190

for.end:                                          ; preds = %for.body
  %3 = load i16, i16* @g_48, align 2, !dbg !192, !tbaa !96
  %conv4 = sext i16 %3 to i64, !dbg !192
  store volatile i64 %conv4, i64* @csmith_sink_, align 8, !dbg !193, !tbaa !178
  %4 = load i64, i64* @g_69, align 8, !dbg !194, !tbaa !178
  store volatile i64 %4, i64* @csmith_sink_, align 8, !dbg !195, !tbaa !178
  ret i32 0, !dbg !196
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nofree noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !51, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !23, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-16T16:55/2")
!4 = !{}
!5 = !{!6, !9, !11, !13, !15, !17, !19, !21}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !10)
!10 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !12)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !14)
!14 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !16)
!16 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !18)
!18 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !20)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !22)
!22 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!23 = !{!0, !24, !27, !29, !35, !37, !40, !47, !49}
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "g_2", scope: !2, file: !3, line: 18, type: !26, isLocal: false, isDefinition: true)
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "g_21", scope: !2, file: !3, line: 19, type: !6, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "g_26", scope: !2, file: !3, line: 20, type: !31, isLocal: false, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 320, elements: !33)
!32 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!33 = !{!34}
!34 = !DISubrange(count: 10)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "g_48", scope: !2, file: !3, line: 21, type: !9, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "g_52", scope: !2, file: !3, line: 22, type: !39, isLocal: false, isDefinition: true)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "g_51", scope: !2, file: !3, line: 23, type: !42, isLocal: false, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !45)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!45 = !{!46}
!46 = !DISubrange(count: 2)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "g_53", scope: !2, file: !3, line: 24, type: !43, isLocal: false, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "g_69", scope: !2, file: !3, line: 25, type: !17, isLocal: false, isDefinition: true)
!51 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{i32 7, !"PIC Level", i32 2}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!59 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 39, type: !60, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{!21}
!62 = !{!63, !64, !65, !66, !69, !71, !73, !77, !79, !83}
!63 = !DILocalVariable(name: "l_7", scope: !59, file: !3, line: 41, type: !19)
!64 = !DILocalVariable(name: "l_16", scope: !59, file: !3, line: 42, type: !11)
!65 = !DILocalVariable(name: "l_63", scope: !59, file: !3, line: 43, type: !6)
!66 = !DILocalVariable(name: "l_54", scope: !67, file: !3, line: 47, type: !19)
!67 = distinct !DILexicalBlock(scope: !68, file: !3, line: 46, column: 5)
!68 = distinct !DILexicalBlock(scope: !59, file: !3, line: 45, column: 9)
!69 = !DILocalVariable(name: "l_65", scope: !70, file: !3, line: 55, type: !6)
!70 = distinct !DILexicalBlock(scope: !68, file: !3, line: 54, column: 5)
!71 = !DILocalVariable(name: "l_68", scope: !70, file: !3, line: 56, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!73 = !DILocalVariable(name: "l_57", scope: !74, file: !3, line: 59, type: !19)
!74 = distinct !DILexicalBlock(scope: !75, file: !3, line: 58, column: 9)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 57, column: 9)
!76 = distinct !DILexicalBlock(scope: !70, file: !3, line: 57, column: 9)
!77 = !DILocalVariable(name: "l_62", scope: !74, file: !3, line: 60, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!79 = !DILocalVariable(name: "l_64", scope: !74, file: !3, line: 61, type: !80)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 192, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 3)
!83 = !DILocalVariable(name: "i", scope: !74, file: !3, line: 62, type: !8)
!84 = !DILocation(line: 0, scope: !59)
!85 = !DILocation(line: 44, column: 9, scope: !59)
!86 = !{!87, !87, i64 0}
!87 = !{!"int", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !DILocation(line: 45, column: 109, scope: !68)
!91 = !DILocation(line: 45, column: 12, scope: !68)
!92 = !DILocation(line: 45, column: 233, scope: !68)
!93 = !DILocation(line: 0, scope: !67)
!94 = !DILocation(line: 48, column: 19, scope: !95)
!95 = distinct !DILexicalBlock(scope: !67, file: !3, line: 48, column: 9)
!96 = !{!97, !97, i64 0}
!97 = !{!"short", !88, i64 0}
!98 = !DILocation(line: 70, column: 1, scope: !59)
!99 = distinct !DISubprogram(name: "func_3", scope: !3, file: !3, line: 78, type: !100, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{!21, !15, !21, !6}
!102 = !{!103, !104, !105, !106, !110, !114, !115, !116, !117, !118, !125, !126, !129, !130, !131, !134, !135, !136, !137, !139, !141}
!103 = !DILocalVariable(name: "p_4", arg: 1, scope: !99, file: !3, line: 78, type: !15)
!104 = !DILocalVariable(name: "p_5", arg: 2, scope: !99, file: !3, line: 78, type: !21)
!105 = !DILocalVariable(name: "p_6", arg: 3, scope: !99, file: !3, line: 78, type: !6)
!106 = !DILocalVariable(name: "l_17", scope: !99, file: !3, line: 80, type: !107)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 80, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 5)
!110 = !DILocalVariable(name: "l_38", scope: !99, file: !3, line: 81, type: !111)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2880, elements: !112)
!112 = !{!46, !113, !109}
!113 = !DISubrange(count: 9)
!114 = !DILocalVariable(name: "l_39", scope: !99, file: !3, line: 82, type: !6)
!115 = !DILocalVariable(name: "i", scope: !99, file: !3, line: 83, type: !8)
!116 = !DILocalVariable(name: "j", scope: !99, file: !3, line: 83, type: !8)
!117 = !DILocalVariable(name: "k", scope: !99, file: !3, line: 83, type: !8)
!118 = !DILocalVariable(name: "l_25", scope: !119, file: !3, line: 86, type: !122)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 85, column: 5)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 84, column: 5)
!121 = distinct !DILexicalBlock(scope: !99, file: !3, line: 84, column: 5)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 224, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 7)
!125 = !DILocalVariable(name: "i", scope: !119, file: !3, line: 87, type: !8)
!126 = !DILocalVariable(name: "l_20", scope: !127, file: !3, line: 90, type: !39)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 89, column: 9)
!128 = distinct !DILexicalBlock(scope: !119, file: !3, line: 88, column: 13)
!129 = !DILocalVariable(name: "l_22", scope: !127, file: !3, line: 91, type: !6)
!130 = !DILocalVariable(name: "l_23", scope: !127, file: !3, line: 92, type: !39)
!131 = !DILocalVariable(name: "l_24", scope: !127, file: !3, line: 93, type: !132)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1920, elements: !133)
!133 = !{!46, !109, !82}
!134 = !DILocalVariable(name: "i", scope: !127, file: !3, line: 94, type: !8)
!135 = !DILocalVariable(name: "j", scope: !127, file: !3, line: 94, type: !8)
!136 = !DILocalVariable(name: "k", scope: !127, file: !3, line: 94, type: !8)
!137 = !DILocalVariable(name: "l_49", scope: !138, file: !3, line: 100, type: !39)
!138 = distinct !DILexicalBlock(scope: !128, file: !3, line: 99, column: 9)
!139 = !DILocalVariable(name: "l_50", scope: !138, file: !3, line: 101, type: !140)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !45)
!141 = !DILocalVariable(name: "i", scope: !138, file: !3, line: 102, type: !8)
!142 = !DILocation(line: 86, column: 17, scope: !119)
!143 = !DILocation(line: 0, scope: !99)
!144 = !DILocation(line: 82, column: 5, scope: !99)
!145 = !DILocation(line: 82, column: 13, scope: !99)
!146 = !DILocation(line: 83, column: 9, scope: !99)
!147 = !DILocation(line: 83, column: 12, scope: !99)
!148 = !DILocation(line: 83, column: 15, scope: !99)
!149 = !DILocation(line: 84, column: 5, scope: !121)
!150 = !DILocation(line: 0, scope: !119)
!151 = !DILocation(line: 87, column: 13, scope: !119)
!152 = !DILocation(line: 88, column: 60, scope: !128)
!153 = !DILocation(line: 0, scope: !138)
!154 = !DILocation(line: 105, column: 32, scope: !138)
!155 = !DILocation(line: 106, column: 15, scope: !138)
!156 = !{!157, !157, i64 0}
!157 = !{!"any pointer", !88, i64 0}
!158 = !DILocation(line: 106, column: 21, scope: !138)
!159 = !DILocation(line: 84, column: 35, scope: !120)
!160 = !DILocation(line: 84, column: 24, scope: !120)
!161 = distinct !{!161, !149, !162, !163, !164}
!162 = !DILocation(line: 108, column: 5, scope: !121)
!163 = !{!"llvm.loop.mustprogress"}
!164 = !{!"llvm.loop.unroll.disable"}
!165 = !DILocation(line: 105, column: 90, scope: !138)
!166 = !DILocation(line: 110, column: 1, scope: !99)
!167 = !DILocation(line: 109, column: 5, scope: !99)
!168 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 116, type: !169, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !171)
!169 = !DISubroutineType(types: !170)
!170 = !{!8}
!171 = !{!172, !173}
!172 = !DILocalVariable(name: "i", scope: !168, file: !3, line: 118, type: !8)
!173 = !DILocalVariable(name: "print_hash_value", scope: !168, file: !3, line: 119, type: !8)
!174 = !DILocation(line: 0, scope: !168)
!175 = !DILocation(line: 121, column: 5, scope: !168)
!176 = !DILocation(line: 122, column: 20, scope: !168)
!177 = !DILocation(line: 122, column: 18, scope: !168)
!178 = !{!179, !179, i64 0}
!179 = !{!"long long", !88, i64 0}
!180 = !DILocation(line: 123, column: 20, scope: !168)
!181 = !DILocation(line: 123, column: 18, scope: !168)
!182 = !DILocation(line: 124, column: 5, scope: !183)
!183 = distinct !DILexicalBlock(scope: !168, file: !3, line: 124, column: 5)
!184 = !DILocation(line: 126, column: 24, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 125, column: 5)
!186 = distinct !DILexicalBlock(scope: !183, file: !3, line: 124, column: 5)
!187 = !DILocation(line: 126, column: 22, scope: !185)
!188 = !DILocation(line: 124, column: 26, scope: !186)
!189 = !DILocation(line: 124, column: 19, scope: !186)
!190 = distinct !{!190, !182, !191, !163, !164}
!191 = !DILocation(line: 127, column: 5, scope: !183)
!192 = !DILocation(line: 128, column: 20, scope: !168)
!193 = !DILocation(line: 128, column: 18, scope: !168)
!194 = !DILocation(line: 129, column: 20, scope: !168)
!195 = !DILocation(line: 129, column: 18, scope: !168)
!196 = !DILocation(line: 131, column: 5, scope: !168)
