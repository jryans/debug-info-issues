; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_2 = local_unnamed_addr global i32 0, align 4, !dbg !16
@g_5 = global i32 5, align 4, !dbg !20
@g_6 = global i32 -1765135179, align 4, !dbg !23
@g_10 = global i32 1, align 4, !dbg !25
@g_14 = global [7 x i32] [i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2], align 16, !dbg !27
@g_27 = local_unnamed_addr global i64 1562781606913586687, align 8, !dbg !32
@g_37 = global i32* @g_10, align 8, !dbg !36
@g_39 = local_unnamed_addr global [2 x i32*] [i32* @g_10, i32* @g_10], align 16, !dbg !40

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define signext i16 @func_1() local_unnamed_addr #0 !dbg !55 {
entry:
  call void @llvm.dbg.value(metadata i8 -113, metadata !61, metadata !DIExpression()), !dbg !83
  store i32 0, i32* @g_2, align 4, !dbg !84, !tbaa !85
  call void @llvm.dbg.value(metadata i8 -113, metadata !61, metadata !DIExpression()), !dbg !83
  %0 = load volatile i32*, i32** @g_37, align 8, !dbg !89, !tbaa !90
  store i32 1, i32* %0, align 4, !dbg !92, !tbaa !85
  %1 = load i32, i32* @g_2, align 4, !dbg !93, !tbaa !85
  %conv25 = trunc i32 %1 to i16, !dbg !93
  ret i16 %conv25, !dbg !94
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind ssp uwtable willreturn
define nonnull i32* @func_23(i16 signext %p_24, i16 signext %p_25) local_unnamed_addr #1 !dbg !95 {
entry:
  call void @llvm.dbg.value(metadata i16 %p_24, metadata !100, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i16 undef, metadata !101, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i64* @g_27, metadata !102, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32 39123155, metadata !104, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32* @g_6, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = load i64, i64* @g_27, align 8, !dbg !107, !tbaa !108
  %inc = add i64 %0, 1, !dbg !107
  store i64 %inc, i64* @g_27, align 8, !dbg !107, !tbaa !108
  %1 = load volatile i32*, i32** @g_37, align 8, !dbg !110, !tbaa !90
  store i32 0, i32* %1, align 4, !dbg !111, !tbaa !85
  ret i32* @g_6, !dbg !112
}

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !113 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !118, metadata !DIExpression()), !dbg !119
  %call = call signext i16 @func_1(), !dbg !120
  %0 = load i32, i32* @g_2, align 4, !dbg !121, !tbaa !85
  %conv = sext i32 %0 to i64, !dbg !121
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !122, !tbaa !108
  %1 = load volatile i32, i32* @g_5, align 4, !dbg !123, !tbaa !85
  %conv1 = sext i32 %1 to i64, !dbg !123
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !124, !tbaa !108
  %2 = load i32, i32* @g_6, align 4, !dbg !125, !tbaa !85
  %conv2 = sext i32 %2 to i64, !dbg !125
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !126, !tbaa !108
  %3 = load i32, i32* @g_10, align 4, !dbg !127, !tbaa !85
  %conv3 = sext i32 %3 to i64, !dbg !127
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !128, !tbaa !108
  call void @llvm.dbg.value(metadata i32 0, metadata !117, metadata !DIExpression()), !dbg !119
  br label %for.body, !dbg !129

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !117, metadata !DIExpression()), !dbg !119
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* @g_14, i64 0, i64 %indvars.iv, !dbg !131
  %4 = load volatile i32, i32* %arrayidx, align 4, !dbg !131, !tbaa !85
  %conv5 = sext i32 %4 to i64, !dbg !131
  store volatile i64 %conv5, i64* @csmith_sink_, align 8, !dbg !134, !tbaa !108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !135
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !117, metadata !DIExpression()), !dbg !119
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7, !dbg !136
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !129, !llvm.loop !137

for.end:                                          ; preds = %for.body
  %5 = load i64, i64* @g_27, align 8, !dbg !141, !tbaa !108
  store volatile i64 %5, i64* @csmith_sink_, align 8, !dbg !142, !tbaa !108
  ret i32 0, !dbg !143
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nounwind ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !47, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/8")
!4 = !{}
!5 = !{!6, !9, !11, !13}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !12)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !14)
!14 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!15 = !{!0, !16, !20, !23, !25, !27, !32, !36, !40}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "g_2", scope: !2, file: !3, line: 18, type: !18, isLocal: false, isDefinition: true)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !19)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "g_5", scope: !2, file: !3, line: 19, type: !22, isLocal: false, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "g_6", scope: !2, file: !3, line: 20, type: !18, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "g_10", scope: !2, file: !3, line: 21, type: !18, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "g_14", scope: !2, file: !3, line: 22, type: !29, isLocal: false, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 224, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 7)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "g_27", scope: !2, file: !3, line: 23, type: !34, isLocal: false, isDefinition: true)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !35)
!35 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "g_37", scope: !2, file: !3, line: 24, type: !38, isLocal: false, isDefinition: true)
!38 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "g_39", scope: !2, file: !3, line: 25, type: !42, isLocal: false, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !45)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!45 = !{!46}
!46 = !DISubrange(count: 2)
!47 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!48 = !{i32 7, !"Dwarf Version", i32 4}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{i32 7, !"PIC Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!55 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 39, type: !56, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!56 = !DISubroutineType(types: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !59)
!59 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!60 = !{!61, !62, !68, !69, !70, !71, !72, !76, !77, !78, !82}
!61 = !DILocalVariable(name: "l_20", scope: !55, file: !3, line: 41, type: !9)
!62 = !DILocalVariable(name: "l_15", scope: !63, file: !3, line: 44, type: !66)
!63 = distinct !DILexicalBlock(scope: !64, file: !3, line: 43, column: 5)
!64 = distinct !DILexicalBlock(scope: !65, file: !3, line: 42, column: 5)
!65 = distinct !DILexicalBlock(scope: !55, file: !3, line: 42, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !67)
!67 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!68 = !DILocalVariable(name: "l_16", scope: !63, file: !3, line: 45, type: !58)
!69 = !DILocalVariable(name: "l_17", scope: !63, file: !3, line: 46, type: !18)
!70 = !DILocalVariable(name: "l_18", scope: !63, file: !3, line: 47, type: !18)
!71 = !DILocalVariable(name: "l_19", scope: !63, file: !3, line: 48, type: !18)
!72 = !DILocalVariable(name: "l_9", scope: !73, file: !3, line: 51, type: !39)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 50, column: 9)
!74 = distinct !DILexicalBlock(scope: !75, file: !3, line: 49, column: 9)
!75 = distinct !DILexicalBlock(scope: !63, file: !3, line: 49, column: 9)
!76 = !DILocalVariable(name: "l_11", scope: !73, file: !3, line: 52, type: !39)
!77 = !DILocalVariable(name: "l_12", scope: !73, file: !3, line: 53, type: !39)
!78 = !DILocalVariable(name: "l_13", scope: !73, file: !3, line: 54, type: !79)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 8)
!82 = !DILocalVariable(name: "i", scope: !73, file: !3, line: 55, type: !19)
!83 = !DILocation(line: 0, scope: !55)
!84 = !DILocation(line: 0, scope: !65)
!85 = !{!86, !86, i64 0}
!86 = !{!"int", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C/C++ TBAA"}
!89 = !DILocation(line: 62, column: 7, scope: !55)
!90 = !{!91, !91, i64 0}
!91 = !{!"any pointer", !87, i64 0}
!92 = !DILocation(line: 62, column: 13, scope: !55)
!93 = !DILocation(line: 63, column: 12, scope: !55)
!94 = !DILocation(line: 63, column: 5, scope: !55)
!95 = distinct !DISubprogram(name: "func_23", scope: !3, file: !3, line: 72, type: !96, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!96 = !DISubroutineType(types: !97)
!97 = !{!43, !98, !58}
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!99 = !{!100, !101, !102, !104, !105}
!100 = !DILocalVariable(name: "p_24", arg: 1, scope: !95, file: !3, line: 72, type: !98)
!101 = !DILocalVariable(name: "p_25", arg: 2, scope: !95, file: !3, line: 72, type: !58)
!102 = !DILocalVariable(name: "l_26", scope: !95, file: !3, line: 74, type: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!104 = !DILocalVariable(name: "l_36", scope: !95, file: !3, line: 75, type: !18)
!105 = !DILocalVariable(name: "l_38", scope: !95, file: !3, line: 76, type: !43)
!106 = !DILocation(line: 0, scope: !95)
!107 = !DILocation(line: 77, column: 18, scope: !95)
!108 = !{!109, !109, i64 0}
!109 = !{!"long long", !87, i64 0}
!110 = !DILocation(line: 77, column: 7, scope: !95)
!111 = !DILocation(line: 77, column: 13, scope: !95)
!112 = !DILocation(line: 78, column: 5, scope: !95)
!113 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 85, type: !114, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{!19}
!116 = !{!117, !118}
!117 = !DILocalVariable(name: "i", scope: !113, file: !3, line: 87, type: !19)
!118 = !DILocalVariable(name: "print_hash_value", scope: !113, file: !3, line: 88, type: !19)
!119 = !DILocation(line: 0, scope: !113)
!120 = !DILocation(line: 90, column: 5, scope: !113)
!121 = !DILocation(line: 91, column: 20, scope: !113)
!122 = !DILocation(line: 91, column: 18, scope: !113)
!123 = !DILocation(line: 92, column: 20, scope: !113)
!124 = !DILocation(line: 92, column: 18, scope: !113)
!125 = !DILocation(line: 93, column: 20, scope: !113)
!126 = !DILocation(line: 93, column: 18, scope: !113)
!127 = !DILocation(line: 94, column: 20, scope: !113)
!128 = !DILocation(line: 94, column: 18, scope: !113)
!129 = !DILocation(line: 95, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !113, file: !3, line: 95, column: 5)
!131 = !DILocation(line: 97, column: 24, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !3, line: 96, column: 5)
!133 = distinct !DILexicalBlock(scope: !130, file: !3, line: 95, column: 5)
!134 = !DILocation(line: 97, column: 22, scope: !132)
!135 = !DILocation(line: 95, column: 25, scope: !133)
!136 = !DILocation(line: 95, column: 19, scope: !133)
!137 = distinct !{!137, !129, !138, !139, !140}
!138 = !DILocation(line: 98, column: 5, scope: !130)
!139 = !{!"llvm.loop.mustprogress"}
!140 = !{!"llvm.loop.unroll.disable"}
!141 = !DILocation(line: 99, column: 20, scope: !113)
!142 = !DILocation(line: 99, column: 18, scope: !113)
!143 = !DILocation(line: 101, column: 5, scope: !113)
