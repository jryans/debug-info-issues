; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_2 = global i32 -1435603073, align 4, !dbg !12
@g_3 = global i32 1, align 4, !dbg !17
@g_4 = global [8 x [9 x [3 x i32]]] [[9 x [3 x i32]] [[3 x i32] [i32 -1579039325, i32 2141446061, i32 -1998488700], [3 x i32] [i32 644686094, i32 -1487654386, i32 644686094], [3 x i32] [i32 0, i32 -4, i32 -1998488700], [3 x i32] [i32 -4, i32 9, i32 -1], [3 x i32] [i32 -1, i32 -4, i32 -1579039325], [3 x i32] [i32 -1, i32 -1487654386, i32 -1968239973], [3 x i32] [i32 -1, i32 2141446061, i32 -1], [3 x i32] [i32 -4, i32 1451296851, i32 -1968239973], [3 x i32] [i32 0, i32 -6, i32 -1579039325]], [9 x [3 x i32]] [[3 x i32] [i32 644686094, i32 1451296851, i32 -1], [3 x i32] [i32 -1579039325, i32 2141446061, i32 -1998488700], [3 x i32] [i32 644686094, i32 -1487654386, i32 644686094], [3 x i32] [i32 0, i32 -4, i32 -1998488700], [3 x i32] [i32 -4, i32 9, i32 -1], [3 x i32] [i32 -1, i32 -4, i32 -1579039325], [3 x i32] [i32 -1, i32 -4, i32 -7], [3 x i32] [i32 -1447254091, i32 0, i32 -1447254091], [3 x i32] [i32 -1271060713, i32 644686094, i32 -7]], [9 x [3 x i32]] [[3 x i32] [i32 -3, i32 -1579039325, i32 -783493995], [3 x i32] [i32 1801810443, i32 644686094, i32 -1], [3 x i32] [i32 -783493995, i32 0, i32 1226548916], [3 x i32] [i32 1801810443, i32 -4, i32 1801810443], [3 x i32] [i32 -3, i32 -1, i32 1226548916], [3 x i32] [i32 -1271060713, i32 -1, i32 -1], [3 x i32] [i32 -1447254091, i32 -1, i32 -783493995], [3 x i32] [i32 -1, i32 -4, i32 -7], [3 x i32] [i32 -1447254091, i32 0, i32 -1447254091]], [9 x [3 x i32]] [[3 x i32] [i32 -1271060713, i32 644686094, i32 -7], [3 x i32] [i32 -3, i32 -1579039325, i32 -783493995], [3 x i32] [i32 1801810443, i32 644686094, i32 -1], [3 x i32] [i32 -783493995, i32 0, i32 1226548916], [3 x i32] [i32 1801810443, i32 -4, i32 1801810443], [3 x i32] [i32 -3, i32 -1, i32 1226548916], [3 x i32] [i32 -1271060713, i32 -1, i32 -1], [3 x i32] [i32 -1447254091, i32 -1, i32 -783493995], [3 x i32] [i32 -1, i32 -4, i32 -7]], [9 x [3 x i32]] [[3 x i32] [i32 -1447254091, i32 0, i32 -1447254091], [3 x i32] [i32 -1271060713, i32 644686094, i32 -7], [3 x i32] [i32 -3, i32 -1579039325, i32 -783493995], [3 x i32] [i32 1801810443, i32 644686094, i32 -1], [3 x i32] [i32 -783493995, i32 0, i32 1226548916], [3 x i32] [i32 1801810443, i32 -4, i32 1801810443], [3 x i32] [i32 -3, i32 -1, i32 1226548916], [3 x i32] [i32 -1271060713, i32 -1, i32 -1], [3 x i32] [i32 -1447254091, i32 -1, i32 -783493995]], [9 x [3 x i32]] [[3 x i32] [i32 -1, i32 -4, i32 -7], [3 x i32] [i32 -1447254091, i32 0, i32 -1447254091], [3 x i32] [i32 -1271060713, i32 644686094, i32 -7], [3 x i32] [i32 -3, i32 -1579039325, i32 -783493995], [3 x i32] [i32 1801810443, i32 644686094, i32 -1], [3 x i32] [i32 -783493995, i32 0, i32 1226548916], [3 x i32] [i32 1801810443, i32 -4, i32 1801810443], [3 x i32] [i32 -3, i32 -1, i32 1226548916], [3 x i32] [i32 -1271060713, i32 -1, i32 -1]], [9 x [3 x i32]] [[3 x i32] [i32 -1447254091, i32 -1, i32 -783493995], [3 x i32] [i32 -1, i32 -4, i32 -7], [3 x i32] [i32 -1447254091, i32 0, i32 -1447254091], [3 x i32] [i32 -1271060713, i32 644686094, i32 -7], [3 x i32] [i32 -3, i32 -1579039325, i32 -783493995], [3 x i32] [i32 1801810443, i32 644686094, i32 -1], [3 x i32] [i32 -783493995, i32 0, i32 1226548916], [3 x i32] [i32 1801810443, i32 -4, i32 1801810443], [3 x i32] [i32 -3, i32 -1, i32 1226548916]], [9 x [3 x i32]] [[3 x i32] [i32 -1271060713, i32 -1, i32 -1], [3 x i32] [i32 -1447254091, i32 -1, i32 -783493995], [3 x i32] [i32 -1, i32 -4, i32 -7], [3 x i32] [i32 -1447254091, i32 0, i32 -1447254091], [3 x i32] [i32 -1271060713, i32 644686094, i32 -7], [3 x i32] [i32 -3, i32 -1579039325, i32 -783493995], [3 x i32] [i32 1801810443, i32 644686094, i32 -1], [3 x i32] [i32 -783493995, i32 0, i32 1226548916], [3 x i32] [i32 1801810443, i32 -4, i32 1801810443]]], align 16, !dbg !19
@g_5 = global i32 -1, align 4, !dbg !26
@g_8 = global i32 -9, align 4, !dbg !28
@g_29 = global i32* null, align 8, !dbg !30
@g_28 = constant i32** @g_29, align 8, !dbg !33
@g_34 = global i32* null, align 8, !dbg !38
@g_33 = global i32** @g_34, align 8, !dbg !41
@g_37 = local_unnamed_addr global i16 1, align 2, !dbg !45

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define zeroext i16 @func_1() local_unnamed_addr #0 !dbg !57 {
entry:
  call void @llvm.dbg.value(metadata i16 1, metadata !61, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32 346269399, metadata !64, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32* null, metadata !67, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32* null, metadata !68, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32** undef, metadata !69, metadata !DIExpression()), !dbg !74
  store i32 1, i32* @g_8, align 4, !tbaa !75
  store i32 0, i32* @g_5, align 4, !dbg !79, !tbaa !75
  br label %for.body, !dbg !80

for.body:                                         ; preds = %entry, %for.body
  %lsr.iv = phi i32 [ -7, %entry ], [ %lsr.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i32* @g_8, metadata !70, metadata !DIExpression()), !dbg !81
  store volatile i32 1, i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_4, i64 0, i64 1, i64 5, i64 1), align 4, !dbg !82, !tbaa !75
  %0 = add i32 %lsr.iv, 14, !dbg !79
  store i32 %0, i32* @g_5, align 4, !dbg !79, !tbaa !75
  %lsr.iv.next = add nsw i32 %lsr.iv, 7, !dbg !83
  %cmp = icmp ult i32 %lsr.iv.next, 6, !dbg !83
  br i1 %cmp, label %for.body, label %for.end7, !dbg !80, !llvm.loop !84

for.end7:                                         ; preds = %for.body
  %call = call zeroext i16 @func_17(i8 zeroext undef, i32* null, i32* undef, i32* undef, i32* nonnull @g_5), !dbg !88
  call void @llvm.dbg.value(metadata i32* null, metadata !67, metadata !DIExpression()), !dbg !74
  ret i16 1, !dbg !89
}

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define zeroext i16 @func_17(i8 zeroext %p_18, i32* nocapture readnone %p_19, i32* nocapture readnone %p_20, i32* nocapture readnone %p_21, i32* nocapture %p_22) local_unnamed_addr #0 !dbg !90 {
entry:
  call void @llvm.dbg.value(metadata i8 undef, metadata !95, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32* %p_19, metadata !96, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32* undef, metadata !97, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32* undef, metadata !98, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32* %p_22, metadata !99, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i8 -17, metadata !95, metadata !DIExpression()), !dbg !104
  br label %for.body, !dbg !105

for.body:                                         ; preds = %entry, %for.end
  %p_18.addr.021 = phi i8 [ -17, %entry ], [ %inc, %for.end ]
  call void @llvm.dbg.value(metadata i8 %p_18.addr.021, metadata !95, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32* @g_8, metadata !100, metadata !DIExpression()), !dbg !106
  %0 = load volatile i32**, i32*** @g_28, align 8, !dbg !107, !tbaa !108
  store i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_4, i64 0, i64 2, i64 6, i64 0), i32** %0, align 8, !dbg !110, !tbaa !108
  store i32 0, i32* @g_8, align 4, !dbg !111, !tbaa !75
  br label %for.body5, !dbg !113

for.body5:                                        ; preds = %for.body, %land.end
  %1 = load volatile i32**, i32*** @g_33, align 8, !dbg !114, !tbaa !108
  store i32* @g_8, i32** %1, align 8, !dbg !117, !tbaa !108
  %2 = load volatile i32, i32* @g_3, align 4, !dbg !118, !tbaa !75
  %tobool.not = icmp eq i32 %2, 0, !dbg !118
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !119

land.rhs:                                         ; preds = %for.body5
  %3 = load volatile i32**, i32*** @g_33, align 8, !dbg !120, !tbaa !108
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body5
  %4 = load i32, i32* %p_22, align 4, !dbg !121, !tbaa !75
  %or12 = or i32 %4, 1, !dbg !121
  store i32 %or12, i32* %p_22, align 4, !dbg !121, !tbaa !75
  %5 = load i32, i32* @g_8, align 4, !dbg !122, !tbaa !75
  %add = add nsw i32 %5, 8, !dbg !122
  store i32 %add, i32* @g_8, align 4, !dbg !111, !tbaa !75
  %cmp3.not = icmp eq i32 %add, 24, !dbg !123
  br i1 %cmp3.not, label %for.end, label %for.body5, !dbg !113, !llvm.loop !124

for.end:                                          ; preds = %land.end
  %inc = add nsw i8 %p_18.addr.021, 1, !dbg !126
  call void @llvm.dbg.value(metadata i8 %inc, metadata !95, metadata !DIExpression()), !dbg !104
  %exitcond.not = icmp eq i8 %inc, 0, !dbg !127
  br i1 %exitcond.not, label %for.end14, label %for.body, !dbg !105, !llvm.loop !128

for.end14:                                        ; preds = %for.end
  ret i16 0, !dbg !130
}

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !131 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !138, metadata !DIExpression()), !dbg !139
  %call = call zeroext i16 @func_1(), !dbg !140
  %0 = load volatile i32, i32* @g_2, align 4, !dbg !141, !tbaa !75
  %conv = sext i32 %0 to i64, !dbg !141
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !142, !tbaa !143
  %1 = load volatile i32, i32* @g_3, align 4, !dbg !145, !tbaa !75
  %conv1 = sext i32 %1 to i64, !dbg !145
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !146, !tbaa !143
  call void @llvm.dbg.value(metadata i32 0, metadata !135, metadata !DIExpression()), !dbg !139
  br label %for.cond3.preheader, !dbg !147

for.cond3.preheader:                              ; preds = %entry, %for.inc19
  %indvars.iv41 = phi i64 [ 0, %entry ], [ %indvars.iv.next42, %for.inc19 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv41, metadata !135, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i32 0, metadata !136, metadata !DIExpression()), !dbg !139
  br label %for.cond7.preheader, !dbg !149

for.cond7.preheader:                              ; preds = %for.cond3.preheader, %for.inc16
  %indvars.iv38 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next39, %for.inc16 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv38, metadata !136, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i32 0, metadata !137, metadata !DIExpression()), !dbg !139
  br label %for.body10, !dbg !153

for.body10:                                       ; preds = %for.cond7.preheader, %for.body10
  %indvars.iv = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next, %for.body10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !137, metadata !DIExpression()), !dbg !139
  %arrayidx14 = getelementptr inbounds [8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_4, i64 0, i64 %indvars.iv41, i64 %indvars.iv38, i64 %indvars.iv, !dbg !157
  %2 = load volatile i32, i32* %arrayidx14, align 4, !dbg !157, !tbaa !75
  %conv15 = sext i32 %2 to i64, !dbg !157
  store volatile i64 %conv15, i64* @csmith_sink_, align 8, !dbg !160, !tbaa !143
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !161
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !137, metadata !DIExpression()), !dbg !139
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !162
  br i1 %exitcond.not, label %for.inc16, label %for.body10, !dbg !153, !llvm.loop !163

for.inc16:                                        ; preds = %for.body10
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1, !dbg !165
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next39, metadata !136, metadata !DIExpression()), !dbg !139
  %exitcond40.not = icmp eq i64 %indvars.iv.next39, 9, !dbg !166
  br i1 %exitcond40.not, label %for.inc19, label %for.cond7.preheader, !dbg !149, !llvm.loop !167

for.inc19:                                        ; preds = %for.inc16
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !dbg !169
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next42, metadata !135, metadata !DIExpression()), !dbg !139
  %exitcond43.not = icmp eq i64 %indvars.iv.next42, 8, !dbg !170
  br i1 %exitcond43.not, label %for.end21, label %for.cond3.preheader, !dbg !147, !llvm.loop !171

for.end21:                                        ; preds = %for.inc19
  %3 = load i32, i32* @g_5, align 4, !dbg !173, !tbaa !75
  %conv22 = sext i32 %3 to i64, !dbg !173
  store volatile i64 %conv22, i64* @csmith_sink_, align 8, !dbg !174, !tbaa !143
  %4 = load i32, i32* @g_8, align 4, !dbg !175, !tbaa !75
  %conv23 = sext i32 %4 to i64, !dbg !175
  store volatile i64 %conv23, i64* @csmith_sink_, align 8, !dbg !176, !tbaa !143
  %5 = load i16, i16* @g_37, align 2, !dbg !177, !tbaa !178
  %conv24 = zext i16 %5 to i64, !dbg !177
  store volatile i64 %conv24, i64* @csmith_sink_, align 8, !dbg !180, !tbaa !143
  ret i32 0, !dbg !181
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !47, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6")
!4 = !{}
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !10)
!10 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!11 = !{!0, !12, !17, !19, !26, !28, !30, !33, !38, !41, !45}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "g_2", scope: !2, file: !3, line: 18, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !16)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "g_3", scope: !2, file: !3, line: 19, type: !14, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "g_4", scope: !2, file: !3, line: 20, type: !21, isLocal: false, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6912, elements: !22)
!22 = !{!23, !24, !25}
!23 = !DISubrange(count: 8)
!24 = !DISubrange(count: 9)
!25 = !DISubrange(count: 3)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "g_5", scope: !2, file: !3, line: 21, type: !15, isLocal: false, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "g_8", scope: !2, file: !3, line: 22, type: !15, isLocal: false, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "g_29", scope: !2, file: !3, line: 23, type: !32, isLocal: false, isDefinition: true)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "g_28", scope: !2, file: !3, line: 24, type: !35, isLocal: false, isDefinition: true)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "g_34", scope: !2, file: !3, line: 25, type: !40, isLocal: false, isDefinition: true)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "g_33", scope: !2, file: !3, line: 26, type: !43, isLocal: false, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "g_37", scope: !2, file: !3, line: 27, type: !9, isLocal: false, isDefinition: true)
!47 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !49)
!49 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !{i32 7, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = !{i32 7, !"PIC Level", i32 2}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!57 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 41, type: !58, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{!9}
!60 = !{!61, !64, !67, !68, !69, !70}
!61 = !DILocalVariable(name: "l_11", scope: !57, file: !3, line: 43, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !63)
!63 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!64 = !DILocalVariable(name: "l_23", scope: !57, file: !3, line: 44, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !66)
!66 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!67 = !DILocalVariable(name: "l_24", scope: !57, file: !3, line: 45, type: !40)
!68 = !DILocalVariable(name: "l_25", scope: !57, file: !3, line: 46, type: !40)
!69 = !DILocalVariable(name: "l_38", scope: !57, file: !3, line: 47, type: !44)
!70 = !DILocalVariable(name: "l_12", scope: !71, file: !3, line: 50, type: !40)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 49, column: 5)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 48, column: 5)
!73 = distinct !DILexicalBlock(scope: !57, file: !3, line: 48, column: 5)
!74 = !DILocation(line: 0, scope: !57)
!75 = !{!76, !76, i64 0}
!76 = !{!"int", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !DILocation(line: 0, scope: !73)
!80 = !DILocation(line: 48, column: 5, scope: !73)
!81 = !DILocation(line: 0, scope: !71)
!82 = !DILocation(line: 55, column: 22, scope: !71)
!83 = !DILocation(line: 48, column: 24, scope: !72)
!84 = distinct !{!84, !80, !85, !86, !87}
!85 = !DILocation(line: 56, column: 5, scope: !73)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !DILocation(line: 57, column: 57, scope: !57)
!89 = !DILocation(line: 59, column: 1, scope: !57)
!90 = distinct !DISubprogram(name: "func_17", scope: !3, file: !3, line: 67, type: !91, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !94)
!91 = !DISubroutineType(types: !92)
!92 = !{!9, !6, !40, !40, !40, !93}
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!94 = !{!95, !96, !97, !98, !99, !100}
!95 = !DILocalVariable(name: "p_18", arg: 1, scope: !90, file: !3, line: 67, type: !6)
!96 = !DILocalVariable(name: "p_19", arg: 2, scope: !90, file: !3, line: 67, type: !40)
!97 = !DILocalVariable(name: "p_20", arg: 3, scope: !90, file: !3, line: 67, type: !40)
!98 = !DILocalVariable(name: "p_21", arg: 4, scope: !90, file: !3, line: 67, type: !40)
!99 = !DILocalVariable(name: "p_22", arg: 5, scope: !90, file: !3, line: 67, type: !93)
!100 = !DILocalVariable(name: "l_32", scope: !101, file: !3, line: 71, type: !40)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 70, column: 5)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 69, column: 5)
!103 = distinct !DILexicalBlock(scope: !90, file: !3, line: 69, column: 5)
!104 = !DILocation(line: 0, scope: !90)
!105 = !DILocation(line: 69, column: 5, scope: !103)
!106 = !DILocation(line: 0, scope: !101)
!107 = !DILocation(line: 72, column: 11, scope: !101)
!108 = !{!109, !109, i64 0}
!109 = !{!"any pointer", !77, i64 0}
!110 = !DILocation(line: 72, column: 17, scope: !101)
!111 = !DILocation(line: 0, scope: !112)
!112 = distinct !DILexicalBlock(scope: !101, file: !3, line: 73, column: 9)
!113 = !DILocation(line: 73, column: 9, scope: !112)
!114 = !DILocation(line: 75, column: 15, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 74, column: 9)
!116 = distinct !DILexicalBlock(scope: !112, file: !3, line: 73, column: 9)
!117 = !DILocation(line: 75, column: 21, scope: !115)
!118 = !DILocation(line: 76, column: 38, scope: !115)
!119 = !DILocation(line: 76, column: 42, scope: !115)
!120 = !DILocation(line: 76, column: 67, scope: !115)
!121 = !DILocation(line: 76, column: 21, scope: !115)
!122 = !DILocation(line: 73, column: 40, scope: !116)
!123 = !DILocation(line: 73, column: 28, scope: !116)
!124 = distinct !{!124, !113, !125, !86, !87}
!125 = !DILocation(line: 77, column: 9, scope: !112)
!126 = !DILocation(line: 69, column: 38, scope: !102)
!127 = !DILocation(line: 69, column: 30, scope: !102)
!128 = distinct !{!128, !105, !129, !86, !87}
!129 = !DILocation(line: 78, column: 5, scope: !103)
!130 = !DILocation(line: 79, column: 5, scope: !90)
!131 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 86, type: !132, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!16}
!134 = !{!135, !136, !137, !138}
!135 = !DILocalVariable(name: "i", scope: !131, file: !3, line: 88, type: !16)
!136 = !DILocalVariable(name: "j", scope: !131, file: !3, line: 88, type: !16)
!137 = !DILocalVariable(name: "k", scope: !131, file: !3, line: 88, type: !16)
!138 = !DILocalVariable(name: "print_hash_value", scope: !131, file: !3, line: 89, type: !16)
!139 = !DILocation(line: 0, scope: !131)
!140 = !DILocation(line: 91, column: 5, scope: !131)
!141 = !DILocation(line: 92, column: 20, scope: !131)
!142 = !DILocation(line: 92, column: 18, scope: !131)
!143 = !{!144, !144, i64 0}
!144 = !{!"long long", !77, i64 0}
!145 = !DILocation(line: 93, column: 20, scope: !131)
!146 = !DILocation(line: 93, column: 18, scope: !131)
!147 = !DILocation(line: 94, column: 5, scope: !148)
!148 = distinct !DILexicalBlock(scope: !131, file: !3, line: 94, column: 5)
!149 = !DILocation(line: 96, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 96, column: 9)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 95, column: 5)
!152 = distinct !DILexicalBlock(scope: !148, file: !3, line: 94, column: 5)
!153 = !DILocation(line: 98, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 98, column: 13)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 97, column: 9)
!156 = distinct !DILexicalBlock(scope: !150, file: !3, line: 96, column: 9)
!157 = !DILocation(line: 100, column: 32, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !3, line: 99, column: 13)
!159 = distinct !DILexicalBlock(scope: !154, file: !3, line: 98, column: 13)
!160 = !DILocation(line: 100, column: 30, scope: !158)
!161 = !DILocation(line: 98, column: 33, scope: !159)
!162 = !DILocation(line: 98, column: 27, scope: !159)
!163 = distinct !{!163, !153, !164, !86, !87}
!164 = !DILocation(line: 101, column: 13, scope: !154)
!165 = !DILocation(line: 96, column: 29, scope: !156)
!166 = !DILocation(line: 96, column: 23, scope: !156)
!167 = distinct !{!167, !149, !168, !86, !87}
!168 = !DILocation(line: 102, column: 9, scope: !150)
!169 = !DILocation(line: 94, column: 25, scope: !152)
!170 = !DILocation(line: 94, column: 19, scope: !152)
!171 = distinct !{!171, !147, !172, !86, !87}
!172 = !DILocation(line: 103, column: 5, scope: !148)
!173 = !DILocation(line: 104, column: 20, scope: !131)
!174 = !DILocation(line: 104, column: 18, scope: !131)
!175 = !DILocation(line: 105, column: 20, scope: !131)
!176 = !DILocation(line: 105, column: 18, scope: !131)
!177 = !DILocation(line: 106, column: 20, scope: !131)
!178 = !{!179, !179, i64 0}
!179 = !{!"short", !77, i64 0}
!180 = !DILocation(line: 106, column: 18, scope: !131)
!181 = !DILocation(line: 108, column: 5, scope: !131)
