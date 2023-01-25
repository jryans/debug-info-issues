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
  %conv4 = zext i32 %bf.load to i64, !dbg !99
  %bf.clear = and i64 %conv4, 134217727, !dbg !98
  store volatile i64 %bf.clear, i64* @csmith_sink_, align 8, !dbg !100, !tbaa !84
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
  %lsr.iv89 = phi [3 x [3 x i32]]* [ @g_37, %entry ], [ %3, %for.inc24 ]
  %indvars.iv82 = phi i64 [ 0, %entry ], [ %indvars.iv.next83, %for.inc24 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv82, metadata !77, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i32 0, metadata !78, metadata !DIExpression()), !dbg !81
  br label %for.body20, !dbg !113

for.body20:                                       ; preds = %for.cond17.preheader, %for.body20
  %indvars.iv = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next, %for.body20 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !78, metadata !DIExpression()), !dbg !81
  %scevgep90 = getelementptr [3 x [3 x i32]], [3 x [3 x i32]]* %lsr.iv89, i64 0, i64 0, i64 %indvars.iv, !dbg !117
  %2 = load volatile i32, i32* %scevgep90, align 4, !dbg !117, !tbaa !120
  %conv23 = sext i32 %2 to i64, !dbg !117
  store volatile i64 %conv23, i64* @csmith_sink_, align 8, !dbg !121, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !122
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !78, metadata !DIExpression()), !dbg !81
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !123
  br i1 %exitcond.not, label %for.inc24, label %for.body20, !dbg !113, !llvm.loop !124

for.inc24:                                        ; preds = %for.body20
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1, !dbg !128
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next83, metadata !77, metadata !DIExpression()), !dbg !81
  %scevgep = getelementptr [3 x [3 x i32]], [3 x [3 x i32]]* %lsr.iv89, i64 0, i64 1, i64 0, !dbg !111
  %3 = bitcast i32* %scevgep to [3 x [3 x i32]]*, !dbg !111
  %exitcond84.not = icmp eq i64 %indvars.iv.next83, 3, !dbg !129
  br i1 %exitcond84.not, label %for.end26, label %for.cond17.preheader, !dbg !111, !llvm.loop !130

for.end26:                                        ; preds = %for.inc24
  %4 = load volatile i8, i8* @g_39, align 1, !dbg !132, !tbaa !90
  %conv27 = zext i8 %4 to i64, !dbg !132
  store volatile i64 %conv27, i64* @csmith_sink_, align 8, !dbg !133, !tbaa !84
  store volatile i64 0, i64* @csmith_sink_, align 8, !dbg !134, !tbaa !84
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !81
  br label %for.body31, !dbg !135

for.body31:                                       ; preds = %for.end26, %for.body31
  %lsr.iv = phi i64 [ 0, %for.end26 ], [ %lsr.iv.next, %for.body31 ]
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !77, metadata !DIExpression(DW_OP_consts, 8, DW_OP_div, DW_OP_stack_value)), !dbg !81
  %uglygep = getelementptr i8, i8* bitcast ([3 x i64]* @g_56 to i8*), i64 %lsr.iv, !dbg !137
  %uglygep88 = bitcast i8* %uglygep to i64*, !dbg !137
  %5 = load i64, i64* %uglygep88, align 8, !dbg !137, !tbaa !84
  store volatile i64 %5, i64* @csmith_sink_, align 8, !dbg !140, !tbaa !84
  call void @llvm.dbg.value(metadata i64 %lsr.iv, metadata !77, metadata !DIExpression(DW_OP_consts, 8, DW_OP_div, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !81
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 8, !dbg !141
  %exitcond87.not = icmp eq i64 %lsr.iv.next, 24, !dbg !141
  br i1 %exitcond87.not, label %for.end36, label %for.body31, !dbg !135, !llvm.loop !142

for.end36:                                        ; preds = %for.body31
  store volatile i64 1, i64* @csmith_sink_, align 8, !dbg !144, !tbaa !84
  store volatile i64 4, i64* @csmith_sink_, align 8, !dbg !145, !tbaa !84
  store volatile i64 0, i64* @csmith_sink_, align 8, !dbg !146, !tbaa !84
  store volatile i64 2254126251, i64* @csmith_sink_, align 8, !dbg !147, !tbaa !84
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i32 undef, metadata !77, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i32 undef, metadata !78, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i32 undef, metadata !79, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i32 undef, metadata !79, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !81
  call void @llvm.dbg.value(metadata i32 undef, metadata !78, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !81
  call void @llvm.dbg.value(metadata i32 undef, metadata !77, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !81
  store volatile i64 -1410534586, i64* @csmith_sink_, align 8, !dbg !148, !tbaa !84
  ret i32 0, !dbg !149
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define internal fastcc void @func_1() unnamed_addr #0 !dbg !150 {
entry:
  %retval.sroa.0 = alloca i64, align 8
  %retval.sroa.2 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32** undef, metadata !162, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata i32* undef, metadata !166, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i32* undef, metadata !167, metadata !DIExpression()), !dbg !170
  %0 = load i8, i8* @g_6, align 1, !dbg !171, !tbaa !90
  %inc = add i8 %0, 1, !dbg !171
  store i8 %inc, i8* @g_6, align 1, !dbg !171, !tbaa !90
  %retval.sroa.0.0.copyload = load volatile i64, i64* bitcast ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21 to i64*), align 8, !dbg !172, !tbaa.struct !173
  store volatile i64 %retval.sroa.0.0.copyload, i64* %retval.sroa.0, align 8, !dbg !172, !tbaa.struct !173
  %retval.sroa.2.0.copyload = load volatile i64, i64* bitcast (i8* getelementptr inbounds ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21, i64 0, i32 5) to i64*), align 8, !dbg !172, !tbaa.struct !174
  store volatile i64 %retval.sroa.2.0.copyload, i64* %retval.sroa.2, align 8, !dbg !172, !tbaa.struct !174
  ret void, !dbg !175
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
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-11T18:05/4")
!4 = !{}
!5 = !{!0, !6, !12, !14, !16, !20, !33, !35, !41, !44, !48, !52, !56, !59, !63}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 18446744072299017030, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "g_105", scope: !2, file: !3, line: 42, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !10, line: 167, baseType: !11)
!10 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
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
!72 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
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
!141 = !DILocation(line: 186, column: 19, scope: !139)
!142 = distinct !{!142, !135, !143, !126, !127}
!143 = !DILocation(line: 189, column: 5, scope: !136)
!144 = !DILocation(line: 190, column: 18, scope: !73)
!145 = !DILocation(line: 191, column: 18, scope: !73)
!146 = !DILocation(line: 192, column: 18, scope: !73)
!147 = !DILocation(line: 193, column: 18, scope: !73)
!148 = !DILocation(line: 204, column: 18, scope: !73)
!149 = !DILocation(line: 206, column: 5, scope: !73)
!150 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 57, type: !151, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !153)
!151 = !DISubroutineType(types: !152)
!152 = !{!23}
!153 = !{!154, !156, !161, !162, !164, !166, !167}
!154 = !DILocalVariable(name: "l_2", scope: !150, file: !3, line: 59, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!156 = !DILocalVariable(name: "l_4", scope: !150, file: !3, line: 60, type: !157)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 1280, elements: !158)
!158 = !{!159, !160}
!159 = !DISubrange(count: 5)
!160 = !DISubrange(count: 4)
!161 = !DILocalVariable(name: "l_22", scope: !150, file: !3, line: 61, type: !155)
!162 = !DILocalVariable(name: "l_23", scope: !150, file: !3, line: 62, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!164 = !DILocalVariable(name: "l_84", scope: !150, file: !3, line: 63, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!166 = !DILocalVariable(name: "i", scope: !150, file: !3, line: 64, type: !11)
!167 = !DILocalVariable(name: "j", scope: !150, file: !3, line: 64, type: !11)
!168 = !DILocation(line: 0, scope: !150)
!169 = !DILocation(line: 64, column: 9, scope: !150)
!170 = !DILocation(line: 64, column: 12, scope: !150)
!171 = !DILocation(line: 65, column: 8, scope: !150)
!172 = !DILocation(line: 66, column: 12, scope: !150)
!173 = !{i64 0, i64 4, !120, i64 4, i64 4, !120, i64 7, i64 4, !120, i64 8, i64 4, !120, i64 12, i64 4, !120}
!174 = !{i64 0, i64 3, !120, i64 0, i64 4, !120, i64 4, i64 4, !120}
!175 = !DILocation(line: 67, column: 1, scope: !150)
