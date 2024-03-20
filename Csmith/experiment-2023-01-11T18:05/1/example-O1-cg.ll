; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_2 = internal unnamed_addr global i1 false, align 4, !dbg !80
@g_6 = internal global i32 -2, align 4, !dbg !45
@g_20 = internal unnamed_addr constant [4 x i32] [i32 -1535083489, i32 -1535083489, i32 -1535083489, i32 -1535083489], align 16, !dbg !50
@g_48 = internal unnamed_addr constant [6 x i32] [i32 -8, i32 -8, i32 -970450078, i32 -8, i32 -8, i32 -970450078], align 16, !dbg !71
@g_46 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -85, i8 31, i8 0, i8 -80, i8 -107, i8 -1, i8 7, i8 7, i8 121, i8 2, i8 0 }, align 8, !dbg !57

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !89 {
entry:
  call void @llvm.dbg.declare(metadata i32* undef, metadata !94, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata i32* undef, metadata !95, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !99
  call fastcc void @func_1(), !dbg !100
  %.b = load i1, i1* @g_2, align 4, !dbg !101
  %conv = select i1 %.b, i64 -17, i64 1560930968, !dbg !101
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !102, !tbaa !103
  %0 = load volatile i32, i32* @g_6, align 4, !dbg !107, !tbaa !108
  %conv1 = sext i32 %0 to i64, !dbg !107
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !110, !tbaa !103
  store volatile i64 -1958922146, i64* @csmith_sink_, align 8, !dbg !111, !tbaa !103
  call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !99
  br label %for.body, !dbg !112

for.body:                                         ; preds = %entry, %for.body
  %lsr.iv51 = phi i64 [ 0, %entry ], [ %lsr.iv.next52, %for.body ]
  call void @llvm.dbg.value(metadata i64 %lsr.iv51, metadata !93, metadata !DIExpression(DW_OP_consts, 4, DW_OP_div, DW_OP_stack_value)), !dbg !99
  %uglygep53 = getelementptr i8, i8* bitcast ([4 x i32]* @g_20 to i8*), i64 %lsr.iv51, !dbg !114
  %uglygep5354 = bitcast i8* %uglygep53 to i32*, !dbg !114
  %1 = load i32, i32* %uglygep5354, align 4, !dbg !114, !tbaa !108
  %conv4 = sext i32 %1 to i64, !dbg !114
  store volatile i64 %conv4, i64* @csmith_sink_, align 8, !dbg !117, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %lsr.iv51, metadata !93, metadata !DIExpression(DW_OP_consts, 4, DW_OP_div, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !99
  %lsr.iv.next52 = add nuw nsw i64 %lsr.iv51, 4, !dbg !118
  %exitcond.not = icmp eq i64 %lsr.iv.next52, 16, !dbg !118
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !112, !llvm.loop !119

for.end:                                          ; preds = %for.body
  store volatile i64 -1263720131, i64* @csmith_sink_, align 8, !dbg !123, !tbaa !103
  store volatile i64 4, i64* @csmith_sink_, align 8, !dbg !124, !tbaa !103
  store volatile i64 1031534065, i64* @csmith_sink_, align 8, !dbg !125, !tbaa !103
  %bf.load = load i56, i56* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to i56*), align 8, !dbg !126
  %bf.shl = shl i56 %bf.load, 43, !dbg !126
  %bf.ashr = ashr exact i56 %bf.shl, 43, !dbg !126
  %bf.cast = zext i56 %bf.ashr to i64, !dbg !126
  %sext = shl i64 %bf.cast, 32, !dbg !127
  %conv6 = ashr exact i64 %sext, 32, !dbg !127
  store volatile i64 %conv6, i64* @csmith_sink_, align 8, !dbg !128, !tbaa !103
  %bf.load7 = load volatile i56, i56* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to i56*), align 8, !dbg !129
  %bf.lshr = lshr i56 %bf.load7, 13, !dbg !129
  %2 = and i56 %bf.lshr, 16383, !dbg !129
  %bf.cast8 = zext i56 %2 to i64, !dbg !129
  store volatile i64 %bf.cast8, i64* @csmith_sink_, align 8, !dbg !130, !tbaa !103
  %bf.shl11 = shl i56 %bf.load7, 5, !dbg !131
  %bf.ashr12 = ashr i56 %bf.shl11, 32, !dbg !131
  %bf.cast13 = zext i56 %bf.ashr12 to i64, !dbg !131
  %sext44 = shl i64 %bf.cast13, 32, !dbg !132
  %conv14 = ashr exact i64 %sext44, 32, !dbg !132
  store volatile i64 %conv14, i64* @csmith_sink_, align 8, !dbg !133, !tbaa !103
  %3 = load i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46, i64 0, i32 7), align 1, !dbg !134, !tbaa !135
  %conv15 = sext i8 %3 to i64, !dbg !137
  store volatile i64 %conv15, i64* @csmith_sink_, align 8, !dbg !138, !tbaa !103
  %bf.load16 = load i24, i24* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46, i64 0, i32 8) to i24*), align 8, !dbg !139
  %bf.clear17 = and i24 %bf.load16, 7, !dbg !139
  %conv19 = zext i24 %bf.clear17 to i64, !dbg !140
  store volatile i64 %conv19, i64* @csmith_sink_, align 8, !dbg !141, !tbaa !103
  %bf.load20 = load volatile i24, i24* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46, i64 0, i32 8) to i24*), align 8, !dbg !142
  %bf.shl21 = shl i24 %bf.load20, 7, !dbg !142
  %bf.ashr22 = ashr i24 %bf.shl21, 10, !dbg !142
  %conv24 = sext i24 %bf.ashr22 to i64, !dbg !143
  store volatile i64 %conv24, i64* @csmith_sink_, align 8, !dbg !144, !tbaa !103
  call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !99
  br label %for.body28, !dbg !145

for.body28:                                       ; preds = %for.end, %for.body28
  %lsr.iv = phi i64 [ 0, %for.end ], [ %lsr.iv.next, %for.body28 ]
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !93, metadata !DIExpression(DW_OP_consts, 4, DW_OP_div, DW_OP_stack_value)), !dbg !99
  %uglygep = getelementptr i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 %lsr.iv, !dbg !147
  %uglygep50 = bitcast i8* %uglygep to i32*, !dbg !147
  %4 = load i32, i32* %uglygep50, align 4, !dbg !147, !tbaa !108
  %conv31 = sext i32 %4 to i64, !dbg !147
  store volatile i64 %conv31, i64* @csmith_sink_, align 8, !dbg !150, !tbaa !103
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !93, metadata !DIExpression(DW_OP_consts, 4, DW_OP_div, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !99
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 4, !dbg !151
  %exitcond49.not = icmp eq i64 %lsr.iv.next, 24, !dbg !151
  br i1 %exitcond49.not, label %for.end34, label %for.body28, !dbg !145, !llvm.loop !152

for.end34:                                        ; preds = %for.body28
  ret i32 0, !dbg !154
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define internal fastcc void @func_1() unnamed_addr #0 !dbg !155 {
entry:
  call void @llvm.dbg.declare(metadata [374 x i8]* undef, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 2992)), !dbg !185
  call void @llvm.dbg.declare(metadata [104 x i8]* undef, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 3008, 832)), !dbg !185
  call void @llvm.dbg.value(metadata i16 -20131, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 2992, 16)), !dbg !186
  call void @llvm.dbg.value(metadata i32* undef, metadata !164, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 -181181382, metadata !171, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i32* undef, metadata !172, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i32* undef, metadata !173, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata i32* undef, metadata !174, metadata !DIExpression()), !dbg !189
  store i1 true, i1* @g_2, align 4, !dbg !190
  call void @llvm.dbg.value(metadata i32 -181181382, metadata !171, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !186
  %bf.load = load volatile i24, i24* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46, i64 0, i32 8) to i24*), align 8, !dbg !191
  ret void, !dbg !192
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!88}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !76, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !21, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-11T18:05/1")
!4 = !{}
!5 = !{!6, !9, !12, !15, !18}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 30, baseType: !8)
!7 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h", directory: "")
!8 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !10, line: 31, baseType: !11)
!10 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h", directory: "")
!11 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 31, baseType: !14)
!13 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !16, line: 30, baseType: !17)
!16 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h", directory: "")
!17 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !19, line: 31, baseType: !20)
!19 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h", directory: "")
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{!0, !22, !28, !30, !33, !37, !40, !43, !45, !48, !50, !55, !57, !71}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 18446744072445831485, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "g_29", scope: !2, file: !3, line: 36, type: !24, isLocal: true, isDefinition: true)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !26, line: 30, baseType: !27)
!26 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h", directory: "")
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "g_31", scope: !2, file: !3, line: 37, type: !24, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "g_17", scope: !2, file: !3, line: 33, type: !32, isLocal: true, isDefinition: true)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "g_16", scope: !2, file: !3, line: 34, type: !35, isLocal: true, isDefinition: true)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "g_30", scope: !2, file: !3, line: 38, type: !39, isLocal: true, isDefinition: true)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "g_50", scope: !2, file: !3, line: 44, type: !42, isLocal: true, isDefinition: true)
!42 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "g_2", scope: !2, file: !3, line: 30, type: !25, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "g_6", scope: !2, file: !3, line: 31, type: !47, isLocal: true, isDefinition: true)
!47 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "g_7", scope: !2, file: !3, line: 32, type: !25, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "g_20", scope: !2, file: !3, line: 35, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 4)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "g_33", scope: !2, file: !3, line: 39, type: !12, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "g_46", scope: !2, file: !3, line: 40, type: !59, isLocal: true, isDefinition: true)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S0", file: !3, line: 19, size: 88, elements: !60)
!60 = !{!61, !62, !64, !65, !67, !69}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !59, file: !3, line: 20, baseType: !27, size: 13, flags: DIFlagBitField, extraData: i64 0)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !59, file: !3, line: 21, baseType: !63, size: 14, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!63 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !59, file: !3, line: 22, baseType: !27, size: 24, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !59, file: !3, line: 23, baseType: !66, size: 8, offset: 56)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "f4", scope: !59, file: !3, line: 24, baseType: !68, size: 3, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "f5", scope: !59, file: !3, line: 25, baseType: !70, size: 14, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!70 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "g_48", scope: !2, file: !3, line: 41, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 192, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 6)
!76 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !78, line: 31, baseType: !79)
!78 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!79 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 2734036311, DW_OP_mul, DW_OP_constu, 1560930968, DW_OP_plus, DW_OP_stack_value))
!81 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
!82 = !{i32 7, !"Dwarf Version", i32 4}
!83 = !{i32 2, !"Debug Info Version", i32 3}
!84 = !{i32 1, !"wchar_size", i32 4}
!85 = !{i32 7, !"PIC Level", i32 2}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!89 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 118, type: !90, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !92)
!90 = !DISubroutineType(types: !91)
!91 = !{!27}
!92 = !{!93, !94, !95, !96}
!93 = !DILocalVariable(name: "i", scope: !89, file: !3, line: 120, type: !27)
!94 = !DILocalVariable(name: "j", scope: !89, file: !3, line: 120, type: !27)
!95 = !DILocalVariable(name: "k", scope: !89, file: !3, line: 120, type: !27)
!96 = !DILocalVariable(name: "print_hash_value", scope: !89, file: !3, line: 121, type: !27)
!97 = !DILocation(line: 120, column: 12, scope: !89)
!98 = !DILocation(line: 120, column: 15, scope: !89)
!99 = !DILocation(line: 0, scope: !89)
!100 = !DILocation(line: 123, column: 5, scope: !89)
!101 = !DILocation(line: 124, column: 20, scope: !89)
!102 = !DILocation(line: 124, column: 18, scope: !89)
!103 = !{!104, !104, i64 0}
!104 = !{!"long long", !105, i64 0}
!105 = !{!"omnipotent char", !106, i64 0}
!106 = !{!"Simple C/C++ TBAA"}
!107 = !DILocation(line: 125, column: 20, scope: !89)
!108 = !{!109, !109, i64 0}
!109 = !{!"int", !105, i64 0}
!110 = !DILocation(line: 125, column: 18, scope: !89)
!111 = !DILocation(line: 126, column: 18, scope: !89)
!112 = !DILocation(line: 127, column: 5, scope: !113)
!113 = distinct !DILexicalBlock(scope: !89, file: !3, line: 127, column: 5)
!114 = !DILocation(line: 129, column: 24, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 128, column: 5)
!116 = distinct !DILexicalBlock(scope: !113, file: !3, line: 127, column: 5)
!117 = !DILocation(line: 129, column: 22, scope: !115)
!118 = !DILocation(line: 127, column: 19, scope: !116)
!119 = distinct !{!119, !112, !120, !121, !122}
!120 = !DILocation(line: 130, column: 5, scope: !113)
!121 = !{!"llvm.loop.mustprogress"}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = !DILocation(line: 131, column: 18, scope: !89)
!124 = !DILocation(line: 132, column: 18, scope: !89)
!125 = !DILocation(line: 133, column: 18, scope: !89)
!126 = !DILocation(line: 134, column: 25, scope: !89)
!127 = !DILocation(line: 134, column: 20, scope: !89)
!128 = !DILocation(line: 134, column: 18, scope: !89)
!129 = !DILocation(line: 135, column: 25, scope: !89)
!130 = !DILocation(line: 135, column: 18, scope: !89)
!131 = !DILocation(line: 136, column: 25, scope: !89)
!132 = !DILocation(line: 136, column: 20, scope: !89)
!133 = !DILocation(line: 136, column: 18, scope: !89)
!134 = !DILocation(line: 137, column: 25, scope: !89)
!135 = !{!136, !105, i64 7}
!136 = !{!"S0", !109, i64 0, !109, i64 1, !109, i64 3, !105, i64 7, !109, i64 8, !109, i64 8}
!137 = !DILocation(line: 137, column: 20, scope: !89)
!138 = !DILocation(line: 137, column: 18, scope: !89)
!139 = !DILocation(line: 138, column: 25, scope: !89)
!140 = !DILocation(line: 138, column: 20, scope: !89)
!141 = !DILocation(line: 138, column: 18, scope: !89)
!142 = !DILocation(line: 139, column: 25, scope: !89)
!143 = !DILocation(line: 139, column: 20, scope: !89)
!144 = !DILocation(line: 139, column: 18, scope: !89)
!145 = !DILocation(line: 140, column: 5, scope: !146)
!146 = distinct !DILexicalBlock(scope: !89, file: !3, line: 140, column: 5)
!147 = !DILocation(line: 142, column: 24, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 141, column: 5)
!149 = distinct !DILexicalBlock(scope: !146, file: !3, line: 140, column: 5)
!150 = !DILocation(line: 142, column: 22, scope: !148)
!151 = !DILocation(line: 140, column: 19, scope: !149)
!152 = distinct !{!152, !145, !153, !121, !122}
!153 = !DILocation(line: 143, column: 5, scope: !146)
!154 = !DILocation(line: 145, column: 5, scope: !89)
!155 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 58, type: !156, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{!77}
!158 = !{!159, !164, !165, !171, !172, !173, !174, !175, !180, !181}
!159 = !DILocalVariable(name: "l_5", scope: !155, file: !3, line: 60, type: !160)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 3840, elements: !161)
!161 = !{!162, !75, !163}
!162 = !DISubrange(count: 5)
!163 = !DISubrange(count: 8)
!164 = !DILocalVariable(name: "l_54", scope: !155, file: !3, line: 61, type: !32)
!165 = !DILocalVariable(name: "l_55", scope: !155, file: !3, line: 62, type: !166)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 4480, elements: !167)
!167 = !{!168, !169, !170}
!168 = !DISubrange(count: 7)
!169 = !DISubrange(count: 1)
!170 = !DISubrange(count: 10)
!171 = !DILocalVariable(name: "l_56", scope: !155, file: !3, line: 63, type: !12)
!172 = !DILocalVariable(name: "i", scope: !155, file: !3, line: 64, type: !27)
!173 = !DILocalVariable(name: "j", scope: !155, file: !3, line: 64, type: !27)
!174 = !DILocalVariable(name: "k", scope: !155, file: !3, line: 64, type: !27)
!175 = !DILocalVariable(name: "l_51", scope: !176, file: !3, line: 67, type: !179)
!176 = distinct !DILexicalBlock(scope: !177, file: !3, line: 66, column: 5)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 65, column: 5)
!178 = distinct !DILexicalBlock(scope: !155, file: !3, line: 65, column: 5)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !53)
!180 = !DILocalVariable(name: "i", scope: !176, file: !3, line: 68, type: !27)
!181 = !DILocalVariable(name: "l_14", scope: !182, file: !3, line: 71, type: !9)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 70, column: 9)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 69, column: 9)
!184 = distinct !DILexicalBlock(scope: !176, file: !3, line: 69, column: 9)
!185 = !DILocation(line: 60, column: 13, scope: !155)
!186 = !DILocation(line: 0, scope: !155)
!187 = !DILocation(line: 64, column: 9, scope: !155)
!188 = !DILocation(line: 64, column: 12, scope: !155)
!189 = !DILocation(line: 64, column: 15, scope: !155)
!190 = !DILocation(line: 0, scope: !178)
!191 = !DILocation(line: 77, column: 17, scope: !155)
!192 = !DILocation(line: 77, column: 5, scope: !155)
