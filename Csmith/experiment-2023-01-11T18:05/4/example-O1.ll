; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_6 = internal unnamed_addr global i8 63, align 1, !dbg !16
@g_37 = internal global [3 x [3 x i32]] [[3 x i32] [i32 1080075191, i32 1080075191, i32 1080075191], [3 x i32] [i32 1, i32 1281321802, i32 1], [3 x i32] [i32 1080075191, i32 1080075191, i32 1080075191]], align 16, !dbg !35
@g_39 = internal global i8 -1, align 1, !dbg !41
@g_56 = internal unnamed_addr constant [3 x i64] [i64 1669822552828607370, i64 1669822552828607370, i64 1669822552828607370], align 16, !dbg !48
@g_21 = internal global { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i32 -1007481967, i8 -43, i8 3, i8 0, i8 0, i8 124, i8 1, i8 0, i8 0, i8 33, i8 -6, i8 -1, i8 3 }, align 8, !dbg !20

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !73 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !80, metadata !DIExpression()), !dbg !81
  call fastcc void @func_1(), !dbg !82
  store volatile i64 -311950268, i64* @csmith_sink_, align 8, !dbg !83, !tbaa !84
  store volatile i64 0, i64* @csmith_sink_, align 8, !dbg !88, !tbaa !84
  %0 = load i8, i8* @g_6, align 1, !dbg !89, !tbaa !90
  %conv2 = zext i8 %0 to i64, !dbg !89
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !91, !tbaa !84
  %1 = load volatile i32, i32* getelementptr inbounds ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21, i64 0, i32 0), align 8, !dbg !92, !tbaa !93
  %conv3 = sext i32 %1 to i64, !dbg !96
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !97, !tbaa !84
  %bf.load = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21, i64 0, i32 1) to i32*), align 4, !dbg !98
  %bf.clear = and i32 %bf.load, 134217727, !dbg !98
  %conv4 = zext i32 %bf.clear to i64, !dbg !99
  store volatile i64 %conv4, i64* @csmith_sink_, align 8, !dbg !100, !tbaa !84
  %bf.load5 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21, i64 0, i32 1) to i32*), align 4, !dbg !101
  %bf.shl = shl i32 %bf.load5, 2, !dbg !101
  %bf.ashr = ashr i32 %bf.shl, 29, !dbg !101
  %conv6 = sext i32 %bf.ashr to i64, !dbg !102
  store volatile i64 %conv6, i64* @csmith_sink_, align 8, !dbg !103, !tbaa !84
  %bf.load7 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21, i64 0, i32 5) to i32*), align 8, !dbg !104
  %bf.shl8 = shl i32 %bf.load7, 7, !dbg !104
  %bf.ashr9 = ashr exact i32 %bf.shl8, 7, !dbg !104
  %conv10 = sext i32 %bf.ashr9 to i64, !dbg !105
  store volatile i64 %conv10, i64* @csmith_sink_, align 8, !dbg !106, !tbaa !84
  %bf.load11 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21, i64 0, i32 9) to i32*), align 4, !dbg !107
  %bf.shl12 = shl i32 %bf.load11, 6, !dbg !107
  %bf.ashr13 = ashr exact i32 %bf.shl12, 6, !dbg !107
  %conv14 = sext i32 %bf.ashr13 to i64, !dbg !108
  store volatile i64 %conv14, i64* @csmith_sink_, align 8, !dbg !109, !tbaa !84
  store volatile i64 1, i64* @csmith_sink_, align 8, !dbg !110, !tbaa !84
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !81
  br label %for.cond17.preheader, !dbg !111

for.cond17.preheader:                             ; preds = %entry, %for.inc24
  %indvars.iv82 = phi i64 [ 0, %entry ], [ %indvars.iv.next83, %for.inc24 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv82, metadata !77, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i32 0, metadata !78, metadata !DIExpression()), !dbg !81
  br label %for.body20, !dbg !113

for.body20:                                       ; preds = %for.cond17.preheader, %for.body20
  %indvars.iv = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next, %for.body20 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !78, metadata !DIExpression()), !dbg !81
  %arrayidx22 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @g_37, i64 0, i64 %indvars.iv82, i64 %indvars.iv, !dbg !117
  %2 = load volatile i32, i32* %arrayidx22, align 4, !dbg !117, !tbaa !120
  %conv23 = sext i32 %2 to i64, !dbg !117
  store volatile i64 %conv23, i64* @csmith_sink_, align 8, !dbg !121, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !122
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !78, metadata !DIExpression()), !dbg !81
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !123
  br i1 %exitcond.not, label %for.inc24, label %for.body20, !dbg !113, !llvm.loop !124

for.inc24:                                        ; preds = %for.body20
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1, !dbg !128
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next83, metadata !77, metadata !DIExpression()), !dbg !81
  %exitcond84.not = icmp eq i64 %indvars.iv.next83, 3, !dbg !129
  br i1 %exitcond84.not, label %for.end26, label %for.cond17.preheader, !dbg !111, !llvm.loop !130

for.end26:                                        ; preds = %for.inc24
  %3 = load volatile i8, i8* @g_39, align 1, !dbg !132, !tbaa !90
  %conv27 = zext i8 %3 to i64, !dbg !132
  store volatile i64 %conv27, i64* @csmith_sink_, align 8, !dbg !133, !tbaa !84
  store volatile i64 0, i64* @csmith_sink_, align 8, !dbg !134, !tbaa !84
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !81
  br label %for.body31, !dbg !135

for.body31:                                       ; preds = %for.end26, %for.body31
  %indvars.iv85 = phi i64 [ 0, %for.end26 ], [ %indvars.iv.next86, %for.body31 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv85, metadata !77, metadata !DIExpression()), !dbg !81
  %arrayidx33 = getelementptr inbounds [3 x i64], [3 x i64]* @g_56, i64 0, i64 %indvars.iv85, !dbg !137
  %4 = load i64, i64* %arrayidx33, align 8, !dbg !137, !tbaa !84
  store volatile i64 %4, i64* @csmith_sink_, align 8, !dbg !140, !tbaa !84
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1, !dbg !141
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next86, metadata !77, metadata !DIExpression()), !dbg !81
  %exitcond87.not = icmp eq i64 %indvars.iv.next86, 3, !dbg !142
  br i1 %exitcond87.not, label %for.end36, label %for.body31, !dbg !135, !llvm.loop !143

for.end36:                                        ; preds = %for.body31
  store volatile i64 1, i64* @csmith_sink_, align 8, !dbg !145, !tbaa !84
  store volatile i64 4, i64* @csmith_sink_, align 8, !dbg !146, !tbaa !84
  store volatile i64 0, i64* @csmith_sink_, align 8, !dbg !147, !tbaa !84
  store volatile i64 2254126251, i64* @csmith_sink_, align 8, !dbg !148, !tbaa !84
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i32 undef, metadata !77, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i32 undef, metadata !78, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i32 undef, metadata !79, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i32 undef, metadata !79, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !81
  call void @llvm.dbg.value(metadata i32 undef, metadata !78, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !81
  call void @llvm.dbg.value(metadata i32 undef, metadata !77, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !81
  store volatile i64 -1410534586, i64* @csmith_sink_, align 8, !dbg !149, !tbaa !84
  ret i32 0, !dbg !150
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define internal fastcc void @func_1() unnamed_addr #0 !dbg !151 {
entry:
  %retval.sroa.0 = alloca i64, align 8
  %retval.sroa.2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32** undef, metadata !163, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i32* undef, metadata !167, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata i32* undef, metadata !168, metadata !DIExpression()), !dbg !171
  %0 = load i8, i8* @g_6, align 1, !dbg !172, !tbaa !90
  %inc = add i8 %0, 1, !dbg !172
  store i8 %inc, i8* @g_6, align 1, !dbg !172, !tbaa !90
  %retval.sroa.0.0.copyload = load volatile i64, i64* bitcast ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21 to i64*), align 8, !dbg !173, !tbaa.struct !174
  store volatile i64 %retval.sroa.0.0.copyload, i64* %retval.sroa.0, align 8, !dbg !173, !tbaa.struct !174
  %retval.sroa.2.0.copyload = load volatile i64, i64* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21, i64 0, i32 5) to i64*), align 8, !dbg !173, !tbaa.struct !175
  store volatile i64 %retval.sroa.2.0.copyload, i64* %retval.sroa.2, align 8, !dbg !173, !tbaa.struct !175
  ret void, !dbg !176
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !65, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-11T18:05/4")
!4 = !{}
!5 = !{!0, !6, !12, !14, !16, !20, !33, !35, !41, !44, !48, !52, !56, !59, !63}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 18446744072299017030, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "g_105", scope: !2, file: !3, line: 42, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !10, line: 167, baseType: !11)
!10 = !DIFile(filename: "/usr/local/Cellar/llvm/13.0.0_1/lib/clang/13.0.0/include/stdint.h", directory: "")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "g_3", scope: !2, file: !3, line: 26, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "g_5", scope: !2, file: !3, line: 27, type: !9, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "g_6", scope: !2, file: !3, line: 28, type: !18, isLocal: true, isDefinition: true)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !10, line: 226, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "g_21", scope: !2, file: !3, line: 29, type: !22, isLocal: true, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S0", file: !3, line: 17, size: 128, elements: !24)
!24 = !{!25, !26, !28, !31, !32}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !23, file: !3, line: 18, baseType: !9, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !23, file: !3, line: 19, baseType: !27, size: 27, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !23, file: !3, line: 20, baseType: !29, size: 3, offset: 59, flags: DIFlagBitField, extraData: i64 32)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !23, file: !3, line: 21, baseType: !11, size: 25, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "f4", scope: !23, file: !3, line: 22, baseType: !11, size: 26, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "g_29", scope: !2, file: !3, line: 30, type: !9, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "g_37", scope: !2, file: !3, line: 32, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 288, elements: !39)
!38 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !9)
!39 = !{!40, !40}
!40 = !DISubrange(count: 3)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "g_39", scope: !2, file: !3, line: 33, type: !43, isLocal: true, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "g_44", scope: !2, file: !3, line: 34, type: !46, isLocal: true, isDefinition: true)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !10, line: 96, baseType: !47)
!47 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "g_56", scope: !2, file: !3, line: 35, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 192, elements: !51)
!51 = !{!40}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "g_58", scope: !2, file: !3, line: 36, type: !54, isLocal: true, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !10, line: 205, baseType: !55)
!55 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "g_67", scope: !2, file: !3, line: 37, type: !58, isLocal: true, isDefinition: true)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 172, baseType: !27)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "g_85", scope: !2, file: !3, line: 39, type: !61, isLocal: true, isDefinition: true)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !10, line: 98, baseType: !62)
!62 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "g_86", scope: !2, file: !3, line: 40, type: !58, isLocal: true, isDefinition: true)
!65 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!66 = !{i32 7, !"Dwarf Version", i32 4}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 7, !"PIC Level", i32 2}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"Homebrew clang version 13.0.0"}
!73 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 162, type: !74, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{!11}
!76 = !{!77, !78, !79, !80}
!77 = !DILocalVariable(name: "i", scope: !73, file: !3, line: 164, type: !11)
!78 = !DILocalVariable(name: "j", scope: !73, file: !3, line: 164, type: !11)
!79 = !DILocalVariable(name: "k", scope: !73, file: !3, line: 164, type: !11)
!80 = !DILocalVariable(name: "print_hash_value", scope: !73, file: !3, line: 165, type: !11)
!81 = !DILocation(line: 0, scope: !73)
!82 = !DILocation(line: 167, column: 5, scope: !73)
!83 = !DILocation(line: 168, column: 18, scope: !73)
!84 = !{!85, !85, i64 0}
!85 = !{!"long long", !86, i64 0}
!86 = !{!"omnipotent char", !87, i64 0}
!87 = !{!"Simple C/C++ TBAA"}
!88 = !DILocation(line: 169, column: 18, scope: !73)
!89 = !DILocation(line: 170, column: 20, scope: !73)
!90 = !{!86, !86, i64 0}
!91 = !DILocation(line: 170, column: 18, scope: !73)
!92 = !DILocation(line: 171, column: 25, scope: !73)
!93 = !{!94, !95, i64 0}
!94 = !{!"S0", !95, i64 0, !95, i64 4, !95, i64 7, !95, i64 8, !95, i64 12}
!95 = !{!"int", !86, i64 0}
!96 = !DILocation(line: 171, column: 20, scope: !73)
!97 = !DILocation(line: 171, column: 18, scope: !73)
!98 = !DILocation(line: 172, column: 25, scope: !73)
!99 = !DILocation(line: 172, column: 20, scope: !73)
!100 = !DILocation(line: 172, column: 18, scope: !73)
!101 = !DILocation(line: 173, column: 25, scope: !73)
!102 = !DILocation(line: 173, column: 20, scope: !73)
!103 = !DILocation(line: 173, column: 18, scope: !73)
!104 = !DILocation(line: 174, column: 25, scope: !73)
!105 = !DILocation(line: 174, column: 20, scope: !73)
!106 = !DILocation(line: 174, column: 18, scope: !73)
!107 = !DILocation(line: 175, column: 25, scope: !73)
!108 = !DILocation(line: 175, column: 20, scope: !73)
!109 = !DILocation(line: 175, column: 18, scope: !73)
!110 = !DILocation(line: 176, column: 18, scope: !73)
!111 = !DILocation(line: 177, column: 5, scope: !112)
!112 = distinct !DILexicalBlock(scope: !73, file: !3, line: 177, column: 5)
!113 = !DILocation(line: 179, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !3, line: 179, column: 9)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 178, column: 5)
!116 = distinct !DILexicalBlock(scope: !112, file: !3, line: 177, column: 5)
!117 = !DILocation(line: 181, column: 28, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !3, line: 180, column: 9)
!119 = distinct !DILexicalBlock(scope: !114, file: !3, line: 179, column: 9)
!120 = !{!95, !95, i64 0}
!121 = !DILocation(line: 181, column: 26, scope: !118)
!122 = !DILocation(line: 179, column: 29, scope: !119)
!123 = !DILocation(line: 179, column: 23, scope: !119)
!124 = distinct !{!124, !113, !125, !126, !127}
!125 = !DILocation(line: 182, column: 9, scope: !114)
!126 = !{!"llvm.loop.mustprogress"}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !DILocation(line: 177, column: 25, scope: !116)
!129 = !DILocation(line: 177, column: 19, scope: !116)
!130 = distinct !{!130, !111, !131, !126, !127}
!131 = !DILocation(line: 183, column: 5, scope: !112)
!132 = !DILocation(line: 184, column: 20, scope: !73)
!133 = !DILocation(line: 184, column: 18, scope: !73)
!134 = !DILocation(line: 185, column: 18, scope: !73)
!135 = !DILocation(line: 186, column: 5, scope: !136)
!136 = distinct !DILexicalBlock(scope: !73, file: !3, line: 186, column: 5)
!137 = !DILocation(line: 188, column: 24, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 187, column: 5)
!139 = distinct !DILexicalBlock(scope: !136, file: !3, line: 186, column: 5)
!140 = !DILocation(line: 188, column: 22, scope: !138)
!141 = !DILocation(line: 186, column: 25, scope: !139)
!142 = !DILocation(line: 186, column: 19, scope: !139)
!143 = distinct !{!143, !135, !144, !126, !127}
!144 = !DILocation(line: 189, column: 5, scope: !136)
!145 = !DILocation(line: 190, column: 18, scope: !73)
!146 = !DILocation(line: 191, column: 18, scope: !73)
!147 = !DILocation(line: 192, column: 18, scope: !73)
!148 = !DILocation(line: 193, column: 18, scope: !73)
!149 = !DILocation(line: 204, column: 18, scope: !73)
!150 = !DILocation(line: 206, column: 5, scope: !73)
!151 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 57, type: !152, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{!23}
!154 = !{!155, !157, !162, !163, !165, !167, !168}
!155 = !DILocalVariable(name: "l_2", scope: !151, file: !3, line: 59, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!157 = !DILocalVariable(name: "l_4", scope: !151, file: !3, line: 60, type: !158)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 1280, elements: !159)
!159 = !{!160, !161}
!160 = !DISubrange(count: 5)
!161 = !DISubrange(count: 4)
!162 = !DILocalVariable(name: "l_22", scope: !151, file: !3, line: 61, type: !156)
!163 = !DILocalVariable(name: "l_23", scope: !151, file: !3, line: 62, type: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!165 = !DILocalVariable(name: "l_84", scope: !151, file: !3, line: 63, type: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!167 = !DILocalVariable(name: "i", scope: !151, file: !3, line: 64, type: !11)
!168 = !DILocalVariable(name: "j", scope: !151, file: !3, line: 64, type: !11)
!169 = !DILocation(line: 0, scope: !151)
!170 = !DILocation(line: 64, column: 9, scope: !151)
!171 = !DILocation(line: 64, column: 12, scope: !151)
!172 = !DILocation(line: 65, column: 8, scope: !151)
!173 = !DILocation(line: 66, column: 12, scope: !151)
!174 = !{i64 0, i64 4, !120, i64 4, i64 4, !120, i64 7, i64 4, !120, i64 8, i64 4, !120, i64 12, i64 4, !120}
!175 = !{i64 0, i64 3, !120, i64 0, i64 4, !120, i64 4, i64 4, !120}
!176 = !DILocation(line: 67, column: 1, scope: !151)
