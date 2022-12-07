; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

%struct.S0 = type { i16, i8 }

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_4 = internal unnamed_addr global i1 false, align 8, !dbg !74
@g_13 = internal global i32 -1656438727, align 4, !dbg !47
@g_20 = internal unnamed_addr constant [8 x [6 x [1 x i32]]] [[6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] [i32 7], [1 x i32] [i32 4]]], align 16, !dbg !49
@g_22 = internal global i32 -116915628, align 4, !dbg !58
@g_25 = internal global %struct.S0 { i16 7191, i8 2 }, align 2, !dbg !63
@g_35 = internal global i16 26688, align 2, !dbg !65
@g_37 = internal global [1 x i16] [i16 13276], align 2, !dbg !68
@g_11 = internal global i32** @g_12, align 8, !dbg !18
@g_12 = internal global i32* @g_13, align 8, !dbg !22

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !82 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !89, metadata !DIExpression()), !dbg !90
  call fastcc void @func_1(), !dbg !91
  %.b = load i1, i1* @g_4, align 8, !dbg !92
  %0 = select i1 %.b, i64 6, i64 -2, !dbg !92
  store volatile i64 %0, i64* @csmith_sink_, align 8, !dbg !93, !tbaa !94
  %1 = load i32, i32* @g_13, align 4, !dbg !98, !tbaa !99
  %conv = sext i32 %1 to i64, !dbg !98
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !101, !tbaa !94
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()), !dbg !90
  br label %for.cond2.preheader, !dbg !102

for.cond2.preheader:                              ; preds = %entry, %for.inc18
  %indvars.iv60 = phi i64 [ 0, %entry ], [ %indvars.iv.next61, %for.inc18 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv60, metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 0, metadata !87, metadata !DIExpression()), !dbg !90
  br label %for.body9, !dbg !104

for.body9:                                        ; preds = %for.cond2.preheader, %for.body9
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.body9 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 undef, metadata !88, metadata !DIExpression()), !dbg !90
  %arrayidx13 = getelementptr inbounds [8 x [6 x [1 x i32]]], [8 x [6 x [1 x i32]]]* @g_20, i64 0, i64 %indvars.iv60, i64 %indvars.iv, i64 0, !dbg !108
  %2 = load i32, i32* %arrayidx13, align 4, !dbg !108, !tbaa !99
  %conv14 = sext i32 %2 to i64, !dbg !108
  store volatile i64 %conv14, i64* @csmith_sink_, align 8, !dbg !114, !tbaa !94
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !115
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !87, metadata !DIExpression()), !dbg !90
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6, !dbg !116
  br i1 %exitcond.not, label %for.inc18, label %for.body9, !dbg !104, !llvm.loop !117

for.inc18:                                        ; preds = %for.body9
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1, !dbg !121
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next61, metadata !86, metadata !DIExpression()), !dbg !90
  %exitcond62.not = icmp eq i64 %indvars.iv.next61, 8, !dbg !122
  br i1 %exitcond62.not, label %for.end20, label %for.cond2.preheader, !dbg !102, !llvm.loop !123

for.end20:                                        ; preds = %for.inc18
  store volatile i64 1, i64* @csmith_sink_, align 8, !dbg !125, !tbaa !94
  %3 = load volatile i32, i32* @g_22, align 4, !dbg !126, !tbaa !99
  %conv22 = zext i32 %3 to i64, !dbg !126
  store volatile i64 %conv22, i64* @csmith_sink_, align 8, !dbg !127, !tbaa !94
  %4 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_25, i64 0, i32 0), align 2, !dbg !128, !tbaa !129
  %conv23 = sext i16 %4 to i64, !dbg !132
  store volatile i64 %conv23, i64* @csmith_sink_, align 8, !dbg !133, !tbaa !94
  %5 = load volatile i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_25, i64 0, i32 1), align 2, !dbg !134, !tbaa !135
  %conv24 = zext i8 %5 to i64, !dbg !136
  store volatile i64 %conv24, i64* @csmith_sink_, align 8, !dbg !137, !tbaa !94
  %6 = load volatile i16, i16* @g_35, align 2, !dbg !138, !tbaa !139
  %conv25 = sext i16 %6 to i64, !dbg !138
  store volatile i64 %conv25, i64* @csmith_sink_, align 8, !dbg !140, !tbaa !94
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 undef, metadata !86, metadata !DIExpression()), !dbg !90
  %7 = load volatile i16, i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_37, i64 0, i64 0), align 2, !dbg !141, !tbaa !139
  %conv32 = zext i16 %7 to i64, !dbg !141
  store volatile i64 %conv32, i64* @csmith_sink_, align 8, !dbg !145, !tbaa !94
  call void @llvm.dbg.value(metadata i32 1, metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 undef, metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 undef, metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 undef, metadata !86, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !90
  ret i32 0, !dbg !146
}

; Function Attrs: nofree noinline nounwind ssp uwtable
define internal fastcc void @func_1() unnamed_addr #0 !dbg !147 {
entry:
  call void @llvm.dbg.value(metadata i32 -1422269916, metadata !155, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i32 -4, metadata !156, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i32 0, metadata !157, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i32 undef, metadata !157, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 -1, metadata !153, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i32 1, metadata !157, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i32 undef, metadata !157, metadata !DIExpression()), !dbg !189
  call fastcc void @func_2(), !dbg !190
  %0 = load volatile i32**, i32*** @g_11, align 8, !dbg !191, !tbaa !192
  store i32* null, i32** %0, align 8, !dbg !194, !tbaa !192
  store i1 false, i1* @g_4, align 8, !dbg !195
  call void @llvm.dbg.value(metadata i32 poison, metadata !155, metadata !DIExpression()), !dbg !189
  %1 = load volatile i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_25, i64 0, i32 1), align 2, !dbg !196, !tbaa !135
  ret void, !dbg !197
}

; Function Attrs: nofree noinline norecurse nosync nounwind ssp uwtable
define internal fastcc void @func_2() unnamed_addr #1 !dbg !198 {
entry:
  call void @llvm.dbg.value(metadata i8 undef, metadata !202, metadata !DIExpression()), !dbg !209
  store i1 true, i1* @g_4, align 8, !dbg !210
  ret void, !dbg !211
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 13, type: !73, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/moderate-1")
!4 = !{}
!5 = !{!6, !9, !11, !13}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !8)
!7 = !DIFile(filename: "/usr/local/Cellar/llvm/13.0.0_1/lib/clang/13.0.0/include/stdint.h", directory: "")
!8 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !10)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !12)
!12 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !{!0, !15, !18, !22, !24, !38, !43, !47, !49, !56, !58, !63, !65, !68}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "g_9", scope: !2, file: !3, line: 25, type: !17, isLocal: true, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "g_11", scope: !2, file: !3, line: 28, type: !20, isLocal: true, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "g_12", scope: !2, file: !3, line: 27, type: !17, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "g_27", scope: !2, file: !3, line: 38, type: !26, isLocal: true, isDefinition: true)
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S0", file: !3, line: 18, size: 32, elements: !30)
!30 = !{!31, !34}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !29, file: !3, line: 19, baseType: !32, size: 16)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !33)
!33 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !29, file: !3, line: 20, baseType: !35, size: 8, offset: 16)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !37)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "g_50", scope: !2, file: !3, line: 41, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 2)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "g_4", scope: !2, file: !3, line: 24, type: !45, isLocal: true, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !46)
!46 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "g_13", scope: !2, file: !3, line: 26, type: !9, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "g_20", scope: !2, file: !3, line: 29, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1536, elements: !52)
!52 = !{!53, !54, !55}
!53 = !DISubrange(count: 8)
!54 = !DISubrange(count: 6)
!55 = !DISubrange(count: 1)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "g_21", scope: !2, file: !3, line: 34, type: !9, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "g_22", scope: !2, file: !3, line: 35, type: !60, isLocal: true, isDefinition: true)
!60 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !62)
!62 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "g_25", scope: !2, file: !3, line: 36, type: !28, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "g_35", scope: !2, file: !3, line: 39, type: !67, isLocal: true, isDefinition: true)
!67 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "g_37", scope: !2, file: !3, line: 40, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 16, elements: !72)
!71 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!72 = !{!55}
!73 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!74 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_constu, 18446744073709551614, DW_OP_plus, DW_OP_stack_value))
!75 = !{i32 7, !"Dwarf Version", i32 4}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{i32 1, !"wchar_size", i32 4}
!78 = !{i32 7, !"PIC Level", i32 2}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"Homebrew clang version 13.0.0"}
!82 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 119, type: !83, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !85)
!83 = !DISubroutineType(types: !84)
!84 = !{!10}
!85 = !{!86, !87, !88, !89}
!86 = !DILocalVariable(name: "i", scope: !82, file: !3, line: 120, type: !10)
!87 = !DILocalVariable(name: "j", scope: !82, file: !3, line: 120, type: !10)
!88 = !DILocalVariable(name: "k", scope: !82, file: !3, line: 120, type: !10)
!89 = !DILocalVariable(name: "print_hash_value", scope: !82, file: !3, line: 121, type: !10)
!90 = !DILocation(line: 0, scope: !82)
!91 = !DILocation(line: 123, column: 3, scope: !82)
!92 = !DILocation(line: 124, column: 18, scope: !82)
!93 = !DILocation(line: 124, column: 16, scope: !82)
!94 = !{!95, !95, i64 0}
!95 = !{!"long long", !96, i64 0}
!96 = !{!"omnipotent char", !97, i64 0}
!97 = !{!"Simple C/C++ TBAA"}
!98 = !DILocation(line: 125, column: 18, scope: !82)
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !96, i64 0}
!101 = !DILocation(line: 125, column: 16, scope: !82)
!102 = !DILocation(line: 126, column: 3, scope: !103)
!103 = distinct !DILexicalBlock(scope: !82, file: !3, line: 126, column: 3)
!104 = !DILocation(line: 127, column: 5, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 127, column: 5)
!106 = distinct !DILexicalBlock(scope: !107, file: !3, line: 126, column: 27)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 126, column: 3)
!108 = !DILocation(line: 129, column: 24, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !3, line: 128, column: 31)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 128, column: 7)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 128, column: 7)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 127, column: 29)
!113 = distinct !DILexicalBlock(scope: !105, file: !3, line: 127, column: 5)
!114 = !DILocation(line: 129, column: 22, scope: !109)
!115 = !DILocation(line: 127, column: 25, scope: !113)
!116 = !DILocation(line: 127, column: 19, scope: !113)
!117 = distinct !{!117, !104, !118, !119, !120}
!118 = !DILocation(line: 131, column: 5, scope: !105)
!119 = !{!"llvm.loop.mustprogress"}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = !DILocation(line: 126, column: 23, scope: !107)
!122 = !DILocation(line: 126, column: 17, scope: !107)
!123 = distinct !{!123, !102, !124, !119, !120}
!124 = !DILocation(line: 132, column: 3, scope: !103)
!125 = !DILocation(line: 133, column: 16, scope: !82)
!126 = !DILocation(line: 134, column: 18, scope: !82)
!127 = !DILocation(line: 134, column: 16, scope: !82)
!128 = !DILocation(line: 135, column: 23, scope: !82)
!129 = !{!130, !131, i64 0}
!130 = !{!"S0", !131, i64 0, !96, i64 2}
!131 = !{!"short", !96, i64 0}
!132 = !DILocation(line: 135, column: 18, scope: !82)
!133 = !DILocation(line: 135, column: 16, scope: !82)
!134 = !DILocation(line: 136, column: 23, scope: !82)
!135 = !{!130, !96, i64 2}
!136 = !DILocation(line: 136, column: 18, scope: !82)
!137 = !DILocation(line: 136, column: 16, scope: !82)
!138 = !DILocation(line: 137, column: 18, scope: !82)
!139 = !{!131, !131, i64 0}
!140 = !DILocation(line: 137, column: 16, scope: !82)
!141 = !DILocation(line: 139, column: 20, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 138, column: 27)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 138, column: 3)
!144 = distinct !DILexicalBlock(scope: !82, file: !3, line: 138, column: 3)
!145 = !DILocation(line: 139, column: 18, scope: !142)
!146 = !DILocation(line: 144, column: 3, scope: !82)
!147 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 53, type: !148, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!148 = !DISubroutineType(types: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !151)
!151 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!152 = !{!153, !155, !156, !157, !158, !162, !164, !168, !174, !175, !176, !178, !179, !180, !181, !182, !186, !188}
!153 = !DILocalVariable(name: "l_16", scope: !147, file: !3, line: 54, type: !154)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !72)
!155 = !DILocalVariable(name: "l_17", scope: !147, file: !3, line: 55, type: !9)
!156 = !DILocalVariable(name: "l_36", scope: !147, file: !3, line: 56, type: !9)
!157 = !DILocalVariable(name: "i", scope: !147, file: !3, line: 57, type: !10)
!158 = !DILocalVariable(name: "l_34", scope: !159, file: !3, line: 62, type: !6)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 61, column: 39)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 61, column: 3)
!161 = distinct !DILexicalBlock(scope: !147, file: !3, line: 61, column: 3)
!162 = !DILocalVariable(name: "l_49", scope: !159, file: !3, line: 63, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!164 = !DILocalVariable(name: "i", scope: !165, file: !3, line: 65, type: !10)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 64, column: 44)
!166 = distinct !DILexicalBlock(scope: !167, file: !3, line: 64, column: 5)
!167 = distinct !DILexicalBlock(scope: !159, file: !3, line: 64, column: 5)
!168 = !DILocalVariable(name: "l_18", scope: !169, file: !3, line: 71, type: !171)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 70, column: 33)
!170 = distinct !DILexicalBlock(scope: !159, file: !3, line: 69, column: 9)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 4)
!174 = !DILocalVariable(name: "l_19", scope: !169, file: !3, line: 72, type: !150)
!175 = !DILocalVariable(name: "i", scope: !169, file: !3, line: 73, type: !10)
!176 = !DILocalVariable(name: "l_28", scope: !177, file: !3, line: 79, type: !17)
!177 = distinct !DILexicalBlock(scope: !170, file: !3, line: 78, column: 12)
!178 = !DILocalVariable(name: "l_29", scope: !177, file: !3, line: 80, type: !17)
!179 = !DILocalVariable(name: "l_30", scope: !177, file: !3, line: 81, type: !17)
!180 = !DILocalVariable(name: "l_31", scope: !177, file: !3, line: 82, type: !17)
!181 = !DILocalVariable(name: "l_32", scope: !177, file: !3, line: 83, type: !17)
!182 = !DILocalVariable(name: "l_33", scope: !177, file: !3, line: 84, type: !183)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 448, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 7)
!186 = !DILocalVariable(name: "l_46", scope: !177, file: !3, line: 85, type: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!188 = !DILocalVariable(name: "i", scope: !177, file: !3, line: 86, type: !10)
!189 = !DILocation(line: 0, scope: !147)
!190 = !DILocation(line: 60, column: 20, scope: !147)
!191 = !DILocation(line: 60, column: 5, scope: !147)
!192 = !{!193, !193, i64 0}
!193 = !{!"any pointer", !96, i64 0}
!194 = !DILocation(line: 60, column: 11, scope: !147)
!195 = !DILocation(line: 0, scope: !161)
!196 = !DILocation(line: 97, column: 15, scope: !147)
!197 = !DILocation(line: 97, column: 3, scope: !147)
!198 = distinct !DISubprogram(name: "func_2", scope: !3, file: !3, line: 105, type: !199, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{!17, !6}
!201 = !{!202, !203, !208}
!202 = !DILocalVariable(name: "p_3", arg: 1, scope: !198, file: !3, line: 105, type: !6)
!203 = !DILocalVariable(name: "l_10", scope: !204, file: !3, line: 107, type: !207)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 106, column: 40)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 106, column: 3)
!206 = distinct !DILexicalBlock(scope: !198, file: !3, line: 106, column: 3)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !172)
!208 = !DILocalVariable(name: "i", scope: !204, file: !3, line: 108, type: !10)
!209 = !DILocation(line: 0, scope: !198)
!210 = !DILocation(line: 0, scope: !206)
!211 = !DILocation(line: 115, column: 3, scope: !198)
