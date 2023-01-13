; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_2 = internal unnamed_addr global i1 false, align 4, !dbg !53
@g_15 = internal unnamed_addr global i16 6, align 2, !dbg !30
@g_18 = internal unnamed_addr global i1 false, align 4, !dbg !54
@g_29 = internal unnamed_addr global i64 -6050899294598026192, align 8, !dbg !38
@g_35 = internal unnamed_addr constant [3 x i16] [i16 19309, i16 19309, i16 19309], align 2, !dbg !40
@g_41 = internal unnamed_addr constant [9 x i64] [i64 9, i64 4, i64 9, i64 9, i64 4, i64 9, i64 9, i64 4, i64 9], align 16, !dbg !45

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !62 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !68
  call fastcc void @func_1(), !dbg !69
  %.b = load i1, i1* @g_2, align 4, !dbg !70
  %conv = select i1 %.b, i64 0, i64 8, !dbg !70
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !71, !tbaa !72
  %0 = load i16, i16* @g_15, align 2, !dbg !76, !tbaa !77
  %conv1 = sext i16 %0 to i64, !dbg !76
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !79, !tbaa !72
  %.b26 = load i1, i1* @g_18, align 4, !dbg !80
  %conv2 = select i1 %.b26, i64 -1, i64 -9, !dbg !80
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !81, !tbaa !72
  store volatile i64 0, i64* @csmith_sink_, align 8, !dbg !82, !tbaa !72
  %1 = load i64, i64* @g_29, align 8, !dbg !83, !tbaa !72
  store volatile i64 %1, i64* @csmith_sink_, align 8, !dbg !84, !tbaa !72
  call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !68
  br label %for.body, !dbg !85

for.body:                                         ; preds = %entry, %for.body
  %lsr.iv28 = phi i64 [ 0, %entry ], [ %lsr.iv.next29, %for.body ]
  call void @llvm.dbg.value(metadata i64 %lsr.iv28, metadata !66, metadata !DIExpression(DW_OP_consts, 2, DW_OP_div, DW_OP_stack_value)), !dbg !68
  %uglygep30 = getelementptr i8, i8* bitcast ([3 x i16]* @g_35 to i8*), i64 %lsr.iv28, !dbg !87
  %uglygep3031 = bitcast i8* %uglygep30 to i16*, !dbg !87
  %2 = load i16, i16* %uglygep3031, align 2, !dbg !87, !tbaa !77
  %conv4 = zext i16 %2 to i64, !dbg !87
  store volatile i64 %conv4, i64* @csmith_sink_, align 8, !dbg !90, !tbaa !72
  call void @llvm.dbg.value(metadata i64 %lsr.iv28, metadata !66, metadata !DIExpression(DW_OP_consts, 2, DW_OP_div, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !68
  %lsr.iv.next29 = add nuw nsw i64 %lsr.iv28, 2, !dbg !91
  %exitcond.not = icmp eq i64 %lsr.iv.next29, 6, !dbg !91
  br i1 %exitcond.not, label %for.body8.preheader, label %for.body, !dbg !85, !llvm.loop !92

for.body8.preheader:                              ; preds = %for.body
  br label %for.body8, !dbg !96

for.body8:                                        ; preds = %for.body8.preheader, %for.body8
  %lsr.iv = phi i64 [ 0, %for.body8.preheader ], [ %lsr.iv.next, %for.body8 ]
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !66, metadata !DIExpression(DW_OP_consts, 8, DW_OP_div, DW_OP_stack_value)), !dbg !68
  %uglygep = getelementptr i8, i8* bitcast ([9 x i64]* @g_41 to i8*), i64 %lsr.iv, !dbg !98
  %uglygep27 = bitcast i8* %uglygep to i64*, !dbg !98
  %3 = load i64, i64* %uglygep27, align 8, !dbg !98, !tbaa !72
  store volatile i64 %3, i64* @csmith_sink_, align 8, !dbg !101, !tbaa !72
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !66, metadata !DIExpression(DW_OP_consts, 8, DW_OP_div, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !68
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 8, !dbg !102
  %exitcond25.not = icmp eq i64 %lsr.iv.next, 72, !dbg !102
  br i1 %exitcond25.not, label %for.end13, label %for.body8, !dbg !96, !llvm.loop !103

for.end13:                                        ; preds = %for.body8
  ret i32 0, !dbg !105
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind ssp uwtable willreturn
define internal fastcc void @func_1() unnamed_addr #2 !dbg !106 {
entry:
  call void @llvm.dbg.value(metadata i16 -3, metadata !110, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i32* null, metadata !111, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i32* undef, metadata !120, metadata !DIExpression()), !dbg !153
  store i1 true, i1* @g_2, align 4, !dbg !154
  call void @llvm.dbg.value(metadata i16 22680, metadata !121, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i64* @g_29, metadata !127, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16* undef, metadata !128, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata [6 x [3 x i16*]]* undef, metadata !132, metadata !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value)), !dbg !155
  call void @llvm.dbg.declare(metadata i32* undef, metadata !133, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i32* undef, metadata !134, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i16 22680, metadata !121, metadata !DIExpression()), !dbg !155
  %0 = load i16, i16* @g_15, align 2, !dbg !158, !tbaa !77
  %1 = xor i16 %0, 22680, !dbg !158
  store i16 %1, i16* @g_15, align 2, !dbg !158, !tbaa !77
  call fastcc void @func_11(), !dbg !159
  call void @llvm.dbg.value(metadata i16 undef, metadata !121, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i16 -3, metadata !110, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i16 -3, metadata !110, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !152
  %2 = load i64, i64* @g_29, align 8, !dbg !160, !tbaa !72
  %xor59 = xor i64 %2, -1, !dbg !160
  store i64 %xor59, i64* @g_29, align 8, !dbg !160, !tbaa !72
  ret void, !dbg !162
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable willreturn writeonly
define internal fastcc void @func_11() unnamed_addr #3 !dbg !163 {
entry:
  call void @llvm.dbg.value(metadata i8 undef, metadata !169, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i16 undef, metadata !170, metadata !DIExpression()), !dbg !172
  store i1 true, i1* @g_18, align 4, !dbg !173
  ret void, !dbg !174
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nofree noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline nosync nounwind ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind ssp uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !52, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-11T18:05/2")
!4 = !{}
!5 = !{!6, !9, !11, !12}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !8)
!7 = !DIFile(filename: "/usr/local/Cellar/llvm/13.0.0_1/lib/clang/13.0.0/include/stdint.h", directory: "")
!8 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !10)
!10 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !13)
!13 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!14 = !{!0, !15, !19, !24, !26, !30, !32, !34, !38, !40, !45}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "g_34", scope: !2, file: !3, line: 24, type: !17, isLocal: true, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "g_32", scope: !2, file: !3, line: 26, type: !21, isLocal: true, isDefinition: true)
!21 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "g_33", scope: !2, file: !3, line: 25, type: !23, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "g_2", scope: !2, file: !3, line: 18, type: !28, isLocal: true, isDefinition: true)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !29)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "g_15", scope: !2, file: !3, line: 19, type: !9, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "g_18", scope: !2, file: !3, line: 20, type: !28, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "g_27", scope: !2, file: !3, line: 21, type: !36, isLocal: true, isDefinition: true)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !37)
!37 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "g_29", scope: !2, file: !3, line: 22, type: !36, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "g_35", scope: !2, file: !3, line: 23, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 48, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 3)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "g_41", scope: !2, file: !3, line: 27, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 576, elements: !50)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !49)
!49 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !{!51}
!51 = !DISubrange(count: 9)
!52 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!53 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551608, DW_OP_mul, DW_OP_constu, 8, DW_OP_plus, DW_OP_stack_value))
!54 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_constu, 4294967287, DW_OP_plus, DW_OP_stack_value))
!55 = !{i32 7, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = !{i32 7, !"PIC Level", i32 2}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"Homebrew clang version 13.0.0"}
!62 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 101, type: !63, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{!29}
!65 = !{!66, !67}
!66 = !DILocalVariable(name: "i", scope: !62, file: !3, line: 103, type: !29)
!67 = !DILocalVariable(name: "print_hash_value", scope: !62, file: !3, line: 104, type: !29)
!68 = !DILocation(line: 0, scope: !62)
!69 = !DILocation(line: 106, column: 5, scope: !62)
!70 = !DILocation(line: 107, column: 20, scope: !62)
!71 = !DILocation(line: 107, column: 18, scope: !62)
!72 = !{!73, !73, i64 0}
!73 = !{!"long long", !74, i64 0}
!74 = !{!"omnipotent char", !75, i64 0}
!75 = !{!"Simple C/C++ TBAA"}
!76 = !DILocation(line: 108, column: 20, scope: !62)
!77 = !{!78, !78, i64 0}
!78 = !{!"short", !74, i64 0}
!79 = !DILocation(line: 108, column: 18, scope: !62)
!80 = !DILocation(line: 109, column: 20, scope: !62)
!81 = !DILocation(line: 109, column: 18, scope: !62)
!82 = !DILocation(line: 110, column: 18, scope: !62)
!83 = !DILocation(line: 111, column: 20, scope: !62)
!84 = !DILocation(line: 111, column: 18, scope: !62)
!85 = !DILocation(line: 112, column: 5, scope: !86)
!86 = distinct !DILexicalBlock(scope: !62, file: !3, line: 112, column: 5)
!87 = !DILocation(line: 114, column: 24, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 113, column: 5)
!89 = distinct !DILexicalBlock(scope: !86, file: !3, line: 112, column: 5)
!90 = !DILocation(line: 114, column: 22, scope: !88)
!91 = !DILocation(line: 112, column: 19, scope: !89)
!92 = distinct !{!92, !85, !93, !94, !95}
!93 = !DILocation(line: 115, column: 5, scope: !86)
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !DILocation(line: 116, column: 5, scope: !97)
!97 = distinct !DILexicalBlock(scope: !62, file: !3, line: 116, column: 5)
!98 = !DILocation(line: 118, column: 24, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 117, column: 5)
!100 = distinct !DILexicalBlock(scope: !97, file: !3, line: 116, column: 5)
!101 = !DILocation(line: 118, column: 22, scope: !99)
!102 = !DILocation(line: 116, column: 19, scope: !100)
!103 = distinct !{!103, !96, !104, !94, !95}
!104 = !DILocation(line: 119, column: 5, scope: !97)
!105 = !DILocation(line: 121, column: 5, scope: !62)
!106 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 41, type: !107, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !109)
!107 = !DISubroutineType(types: !108)
!108 = !{!28}
!109 = !{!110, !111, !115, !120, !121, !125, !127, !128, !132, !133, !134, !135, !142, !143, !144, !146, !147, !151}
!110 = !DILocalVariable(name: "l_20", scope: !106, file: !3, line: 43, type: !12)
!111 = !DILocalVariable(name: "l_40", scope: !106, file: !3, line: 44, type: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !114)
!114 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!115 = !DILocalVariable(name: "l_42", scope: !106, file: !3, line: 45, type: !116)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 448, elements: !118)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!118 = !{!119}
!119 = !DISubrange(count: 7)
!120 = !DILocalVariable(name: "i", scope: !106, file: !3, line: 46, type: !29)
!121 = !DILocalVariable(name: "l_14", scope: !122, file: !3, line: 49, type: !12)
!122 = distinct !DILexicalBlock(scope: !123, file: !3, line: 48, column: 5)
!123 = distinct !DILexicalBlock(scope: !124, file: !3, line: 47, column: 5)
!124 = distinct !DILexicalBlock(scope: !106, file: !3, line: 47, column: 5)
!125 = !DILocalVariable(name: "l_26", scope: !122, file: !3, line: 50, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!127 = !DILocalVariable(name: "l_28", scope: !122, file: !3, line: 51, type: !126)
!128 = !DILocalVariable(name: "l_31", scope: !122, file: !3, line: 52, type: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1152, elements: !130)
!130 = !{!131, !44}
!131 = !DISubrange(count: 6)
!132 = !DILocalVariable(name: "l_30", scope: !122, file: !3, line: 53, type: !23)
!133 = !DILocalVariable(name: "i", scope: !122, file: !3, line: 54, type: !29)
!134 = !DILocalVariable(name: "j", scope: !122, file: !3, line: 54, type: !29)
!135 = !DILocalVariable(name: "l_19", scope: !136, file: !3, line: 57, type: !138)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 56, column: 9)
!137 = distinct !DILexicalBlock(scope: !122, file: !3, line: 55, column: 13)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 5120, elements: !139)
!139 = !{!140, !141}
!140 = !DISubrange(count: 8)
!141 = !DISubrange(count: 10)
!142 = !DILocalVariable(name: "i", scope: !136, file: !3, line: 58, type: !29)
!143 = !DILocalVariable(name: "j", scope: !136, file: !3, line: 58, type: !29)
!144 = !DILocalVariable(name: "l_23", scope: !145, file: !3, line: 63, type: !36)
!145 = distinct !DILexicalBlock(scope: !137, file: !3, line: 62, column: 9)
!146 = !DILocalVariable(name: "l_24", scope: !145, file: !3, line: 64, type: !18)
!147 = !DILocalVariable(name: "l_25", scope: !145, file: !3, line: 65, type: !148)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 4)
!151 = !DILocalVariable(name: "i", scope: !145, file: !3, line: 66, type: !29)
!152 = !DILocation(line: 0, scope: !106)
!153 = !DILocation(line: 46, column: 9, scope: !106)
!154 = !DILocation(line: 47, column: 14, scope: !124)
!155 = !DILocation(line: 0, scope: !122)
!156 = !DILocation(line: 54, column: 13, scope: !122)
!157 = !DILocation(line: 54, column: 16, scope: !122)
!158 = !DILocation(line: 55, column: 78, scope: !137)
!159 = !DILocation(line: 55, column: 59, scope: !137)
!160 = !DILocation(line: 71, column: 55, scope: !161)
!161 = distinct !DILexicalBlock(scope: !122, file: !3, line: 71, column: 13)
!162 = !DILocation(line: 82, column: 1, scope: !106)
!163 = distinct !DISubprogram(name: "func_11", scope: !3, file: !3, line: 90, type: !164, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!164 = !DISubroutineType(types: !165)
!165 = !{!9, !166, !12}
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !167)
!167 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!168 = !{!169, !170, !171}
!169 = !DILocalVariable(name: "p_12", arg: 1, scope: !163, file: !3, line: 90, type: !166)
!170 = !DILocalVariable(name: "p_13", arg: 2, scope: !163, file: !3, line: 90, type: !12)
!171 = !DILocalVariable(name: "l_17", scope: !163, file: !3, line: 92, type: !117)
!172 = !DILocation(line: 0, scope: !163)
!173 = !DILocation(line: 93, column: 13, scope: !163)
!174 = !DILocation(line: 94, column: 5, scope: !163)
