; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.S0 = type { [3 x i8], i8, i24, i16, i32, i32, i16 }

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_12 = local_unnamed_addr global [5 x [6 x [5 x i16]]] [[6 x [5 x i16]] [[5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10]], [6 x [5 x i16]] [[5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10]], [6 x [5 x i16]] [[5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10]], [6 x [5 x i16]] [[5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10]], [6 x [5 x i16]] [[5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10], [5 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [5 x i16] [i16 -10, i16 8518, i16 -10, i16 8518, i16 -10]]], align 16, !dbg !14
@g_15 = global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 120, i8 0, i8 6, i8 0, i8 112, i8 1, i8 0, i8 undef, i8 -115, i8 0, [2 x i8] undef, i8 0, i8 -84, i8 0, i8 0, i8 -112, i8 5, i8 20, i8 0, i8 8, i8 0, [2 x i8] undef }, align 4, !dbg !22
@g_18 = local_unnamed_addr global i64 3085331500618835686, align 8, !dbg !42
@g_24 = local_unnamed_addr global i8 -4, align 1, !dbg !46
@g_26 = local_unnamed_addr global i32 417948106, align 4, !dbg !48
@.memset_pattern = private unnamed_addr constant [4 x i32] [i32 1560731169, i32 1560731169, i32 1560731169, i32 1560731169], align 16

; Function Attrs: nofree noinline nounwind ssp uwtable
define signext i8 @func_1() local_unnamed_addr #0 !dbg !60 {
entry:
  call void @llvm.dbg.value(metadata i64 8889101807056336539, metadata !64, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i64 -3004284430612479775, metadata !65, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32* @g_26, metadata !66, metadata !DIExpression()), !dbg !68
  %call = call i32 @func_2(i64 8889101807056336539, i64 undef, i32 1293631713, i8 zeroext undef, i32 undef), !dbg !69
  %0 = load i32, i32* @g_26, align 4, !dbg !70, !tbaa !71
  %or30 = or i32 %0, %call, !dbg !70
  store i32 %or30, i32* @g_26, align 4, !dbg !70, !tbaa !71
  %bf.load = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 4) to i32*), align 4, !dbg !75
  %conv31 = trunc i32 %bf.load to i8, !dbg !76
  ret i8 %conv31, !dbg !77
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @func_2(i64 %p_3, i64 %p_4, i32 %p_5, i8 zeroext %p_6, i32 %p_7) local_unnamed_addr #0 !dbg !78 {
entry:
  %l_19 = alloca [8 x [1 x [6 x i32]]], align 16
  %agg.tmp.ensured = alloca %struct.S0, align 4
  %agg.tmp.ensured25 = alloca %struct.S0, align 4
  call void @llvm.dbg.value(metadata i64 %p_3, metadata !83, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i64 undef, metadata !84, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32 %p_5, metadata !85, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i8 undef, metadata !86, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32 undef, metadata !87, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i64 1, metadata !88, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i64* @g_18, metadata !89, metadata !DIExpression()), !dbg !101
  %0 = bitcast [8 x [1 x [6 x i32]]]* %l_19 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 192, i8* nonnull %0) #6, !dbg !102
  call void @llvm.dbg.declare(metadata [8 x [1 x [6 x i32]]]* %l_19, metadata !91, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.value(metadata i8* @g_24, metadata !96, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32 0, metadata !98, metadata !DIExpression()), !dbg !101
  br label %for.cond4.preheader, !dbg !104

for.cond4.preheader:                              ; preds = %entry, %for.cond4.preheader
  %indvar = phi i64 [ 0, %entry ], [ %indvar.next, %for.cond4.preheader ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !98, metadata !DIExpression()), !dbg !101
  %scevgep = getelementptr [8 x [1 x [6 x i32]]], [8 x [1 x [6 x i32]]]* %l_19, i64 0, i64 %indvar, i64 0, i64 0
  %scevgep69 = bitcast i32* %scevgep to i8*
  call void @llvm.dbg.value(metadata i32 0, metadata !100, metadata !DIExpression()), !dbg !101
  call void @memset_pattern16(i8* %scevgep69, i8* bitcast ([4 x i32]* @.memset_pattern to i8*), i64 24) #6, !dbg !106
  call void @llvm.dbg.value(metadata i32 undef, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32 undef, metadata !100, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !101
  call void @llvm.dbg.value(metadata i32 undef, metadata !99, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32 undef, metadata !98, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !101
  %indvar.next = add nuw nsw i64 %indvar, 1, !dbg !104
  %exitcond.not = icmp eq i64 %indvar.next, 8, !dbg !114
  br i1 %exitcond.not, label %for.end16, label %for.cond4.preheader, !dbg !104, !llvm.loop !115

for.end16:                                        ; preds = %for.cond4.preheader
  %1 = getelementptr inbounds %struct.S0, %struct.S0* %agg.tmp.ensured, i64 0, i32 0, i64 0, !dbg !119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 0), i64 24, i1 true), !dbg !119, !tbaa.struct !120
  %bf.load = load volatile i16, i16* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 19) to i16*), align 4, !dbg !122
  %bf.shl.mask = and i16 %bf.load, 1023, !dbg !123
  %cmp17 = icmp eq i16 %bf.shl.mask, 0, !dbg !123
  %conv19 = zext i1 %cmp17 to i64, !dbg !124
  store i64 %conv19, i64* @g_18, align 8, !dbg !125, !tbaa !126
  %arrayidx22 = getelementptr inbounds [8 x [1 x [6 x i32]]], [8 x [1 x [6 x i32]]]* %l_19, i64 0, i64 3, i64 0, i64 3, !dbg !128
  %2 = load i32, i32* %arrayidx22, align 4, !dbg !129, !tbaa !71
  %or = or i32 %2, %p_5, !dbg !129
  store i32 %or, i32* %arrayidx22, align 4, !dbg !129, !tbaa !71
  %3 = getelementptr inbounds %struct.S0, %struct.S0* %agg.tmp.ensured25, i64 0, i32 0, i64 0, !dbg !130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 0), i64 24, i1 true), !dbg !130, !tbaa.struct !120
  %bf.load26 = load volatile i16, i16* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 19) to i16*), align 4, !dbg !131
  %bf.shl27 = shl i16 %bf.load26, 6, !dbg !131
  %cmp30 = icmp sgt i16 %bf.shl27, 64, !dbg !132
  %conv32 = zext i1 %cmp30 to i8, !dbg !133
  store i8 %conv32, i8* @g_24, align 1, !dbg !134, !tbaa !121
  %bf.load42 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 15) to i32*), align 4, !dbg !135
  %arrayidx47 = getelementptr inbounds [8 x [1 x [6 x i32]]], [8 x [1 x [6 x i32]]]* %l_19, i64 0, i64 6, i64 0, i64 4, !dbg !136
  %4 = load i32, i32* %arrayidx47, align 16, !dbg !137, !tbaa !71
  %5 = and i32 %4, 1, !dbg !137
  store i32 %5, i32* %arrayidx47, align 16, !dbg !137, !tbaa !71
  %bf.load50 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 15) to i32*), align 4, !dbg !138
  %bf.shl51 = shl i32 %bf.load50, 28, !dbg !138
  %bf.ashr52 = ashr exact i32 %bf.shl51, 28, !dbg !138
  call void @llvm.lifetime.end.p0i8(i64 192, i8* nonnull %0) #6, !dbg !139
  ret i32 %bf.ashr52, !dbg !140
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !141 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !148, metadata !DIExpression()), !dbg !149
  %call = call signext i8 @func_1(), !dbg !150
  call void @llvm.dbg.value(metadata i32 0, metadata !145, metadata !DIExpression()), !dbg !149
  br label %for.cond1.preheader, !dbg !151

for.cond1.preheader:                              ; preds = %entry, %for.inc14
  %indvars.iv67 = phi i64 [ 0, %entry ], [ %indvars.iv.next68, %for.inc14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv67, metadata !145, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 0, metadata !146, metadata !DIExpression()), !dbg !149
  br label %for.cond4.preheader, !dbg !153

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc11
  %indvars.iv64 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next65, %for.inc11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv64, metadata !146, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 0, metadata !147, metadata !DIExpression()), !dbg !149
  br label %for.body6, !dbg !157

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !147, metadata !DIExpression()), !dbg !149
  %arrayidx10 = getelementptr inbounds [5 x [6 x [5 x i16]]], [5 x [6 x [5 x i16]]]* @g_12, i64 0, i64 %indvars.iv67, i64 %indvars.iv64, i64 %indvars.iv, !dbg !161
  %0 = load i16, i16* %arrayidx10, align 2, !dbg !161, !tbaa !164
  %conv = sext i16 %0 to i64, !dbg !161
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !166, !tbaa !126
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !167
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !147, metadata !DIExpression()), !dbg !149
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5, !dbg !168
  br i1 %exitcond.not, label %for.inc11, label %for.body6, !dbg !157, !llvm.loop !169

for.inc11:                                        ; preds = %for.body6
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1, !dbg !171
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next65, metadata !146, metadata !DIExpression()), !dbg !149
  %exitcond66.not = icmp eq i64 %indvars.iv.next65, 6, !dbg !172
  br i1 %exitcond66.not, label %for.inc14, label %for.cond4.preheader, !dbg !153, !llvm.loop !173

for.inc14:                                        ; preds = %for.inc11
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1, !dbg !175
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next68, metadata !145, metadata !DIExpression()), !dbg !149
  %exitcond69.not = icmp eq i64 %indvars.iv.next68, 5, !dbg !176
  br i1 %exitcond69.not, label %for.end16, label %for.cond1.preheader, !dbg !151, !llvm.loop !177

for.end16:                                        ; preds = %for.inc14
  %bf.load = load volatile i24, i24* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15 to i24*), align 4, !dbg !179
  %bf.shl = shl i24 %bf.load, 9, !dbg !179
  %bf.ashr = ashr exact i24 %bf.shl, 9, !dbg !179
  %conv17 = sext i24 %bf.ashr to i64, !dbg !180
  store volatile i64 %conv17, i64* @csmith_sink_, align 8, !dbg !181, !tbaa !126
  %bf.load18 = load volatile i24, i24* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15 to i24*), align 4, !dbg !182
  %bf.lshr = lshr i24 %bf.load18, 15, !dbg !182
  %bf.clear = and i24 %bf.lshr, 255, !dbg !182
  %conv20 = zext i24 %bf.clear to i64, !dbg !183
  store volatile i64 %conv20, i64* @csmith_sink_, align 8, !dbg !184, !tbaa !126
  %1 = load volatile i8, i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 3), align 1, !dbg !185, !tbaa !186
  %conv21 = zext i8 %1 to i64, !dbg !188
  store volatile i64 %conv21, i64* @csmith_sink_, align 8, !dbg !189, !tbaa !126
  %bf.load22 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 4) to i32*), align 4, !dbg !190
  %bf.clear23 = and i32 %bf.load22, 262143, !dbg !190
  %conv24 = zext i32 %bf.clear23 to i64, !dbg !191
  store volatile i64 %conv24, i64* @csmith_sink_, align 8, !dbg !192, !tbaa !126
  %bf.load25 = load volatile i16, i16* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 8) to i16*), align 4, !dbg !193
  %bf.clear26 = and i16 %bf.load25, 32767, !dbg !193
  %conv28 = zext i16 %bf.clear26 to i64, !dbg !194
  store volatile i64 %conv28, i64* @csmith_sink_, align 8, !dbg !195, !tbaa !126
  %bf.load29 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 11) to i32*), align 4, !dbg !196
  %bf.clear30 = and i32 %bf.load29, 2147483647, !dbg !196
  %conv31 = zext i32 %bf.clear30 to i64, !dbg !197
  store volatile i64 %conv31, i64* @csmith_sink_, align 8, !dbg !198, !tbaa !126
  %bf.load32 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 15) to i32*), align 4, !dbg !199
  %bf.shl33 = shl i32 %bf.load32, 28, !dbg !199
  %bf.ashr34 = ashr exact i32 %bf.shl33, 28, !dbg !199
  %conv35 = sext i32 %bf.ashr34 to i64, !dbg !200
  store volatile i64 %conv35, i64* @csmith_sink_, align 8, !dbg !201, !tbaa !126
  %bf.load36 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 15) to i32*), align 4, !dbg !202
  %bf.shl37 = shl i32 %bf.load36, 15, !dbg !202
  %bf.ashr38 = ashr i32 %bf.shl37, 19, !dbg !202
  %conv39 = sext i32 %bf.ashr38 to i64, !dbg !203
  store volatile i64 %conv39, i64* @csmith_sink_, align 8, !dbg !204, !tbaa !126
  %bf.load40 = load volatile i32, i32* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 15) to i32*), align 4, !dbg !205
  %bf.lshr41 = lshr i32 %bf.load40, 17, !dbg !205
  %bf.clear42 = and i32 %bf.lshr41, 1023, !dbg !205
  %conv43 = zext i32 %bf.clear42 to i64, !dbg !206
  store volatile i64 %conv43, i64* @csmith_sink_, align 8, !dbg !207, !tbaa !126
  %bf.load44 = load volatile i16, i16* bitcast (i8* getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }* @g_15, i64 0, i32 19) to i16*), align 4, !dbg !208
  %bf.shl45 = shl i16 %bf.load44, 6, !dbg !208
  %bf.ashr46 = ashr exact i16 %bf.shl45, 6, !dbg !208
  %conv48 = sext i16 %bf.ashr46 to i64, !dbg !209
  store volatile i64 %conv48, i64* @csmith_sink_, align 8, !dbg !210, !tbaa !126
  %2 = load i64, i64* @g_18, align 8, !dbg !211, !tbaa !126
  store volatile i64 %2, i64* @csmith_sink_, align 8, !dbg !212, !tbaa !126
  %3 = load i8, i8* @g_24, align 1, !dbg !213, !tbaa !121
  %conv49 = sext i8 %3 to i64, !dbg !213
  store volatile i64 %conv49, i64* @csmith_sink_, align 8, !dbg !214, !tbaa !126
  %4 = load i32, i32* @g_26, align 4, !dbg !215, !tbaa !71
  %conv50 = sext i32 %4 to i64, !dbg !215
  store volatile i64 %conv50, i64* @csmith_sink_, align 8, !dbg !216, !tbaa !126
  ret i32 0, !dbg !217
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: argmemonly nofree
declare void @memset_pattern16(i8* nocapture writeonly, i8* nocapture readonly, i64) local_unnamed_addr #5

attributes #0 = { nofree noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !50, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4")
!4 = !{}
!5 = !{!6, !9, !11}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !10)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !12)
!12 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!0, !14, !22, !42, !46, !48}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "g_12", scope: !2, file: !3, line: 31, type: !16, isLocal: false, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2400, elements: !19)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !18)
!18 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!19 = !{!20, !21, !20}
!20 = !DISubrange(count: 5)
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "g_15", scope: !2, file: !3, line: 32, type: !24, isLocal: false, isDefinition: true)
!24 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S0", file: !3, line: 17, size: 192, elements: !26)
!26 = !{!27, !28, !30, !33, !34, !36, !37, !39, !40, !41}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !25, file: !3, line: 18, baseType: !10, size: 15, flags: DIFlagBitField, extraData: i64 0)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !25, file: !3, line: 19, baseType: !29, size: 8, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !25, file: !3, line: 20, baseType: !31, size: 8, offset: 24)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !25, file: !3, line: 21, baseType: !29, size: 18, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "f4", scope: !25, file: !3, line: 22, baseType: !35, size: 15, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "f5", scope: !25, file: !3, line: 23, baseType: !29, size: 31, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "f6", scope: !25, file: !3, line: 24, baseType: !38, size: 4, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "f7", scope: !25, file: !3, line: 25, baseType: !10, size: 13, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "f8", scope: !25, file: !3, line: 26, baseType: !29, size: 10, offset: 145, flags: DIFlagBitField, extraData: i64 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "f9", scope: !25, file: !3, line: 27, baseType: !10, size: 10, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "g_18", scope: !2, file: !3, line: 33, type: !44, isLocal: false, isDefinition: true)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !45)
!45 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "g_24", scope: !2, file: !3, line: 34, type: !11, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "g_26", scope: !2, file: !3, line: 35, type: !9, isLocal: false, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !52)
!52 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !{i32 7, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = !{i32 7, !"PIC Level", i32 2}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!60 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 49, type: !61, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!61 = !DISubroutineType(types: !62)
!62 = !{!11}
!63 = !{!64, !65, !66}
!64 = !DILocalVariable(name: "l_8", scope: !60, file: !3, line: 51, type: !51)
!65 = !DILocalVariable(name: "l_11", scope: !60, file: !3, line: 52, type: !44)
!66 = !DILocalVariable(name: "l_25", scope: !60, file: !3, line: 53, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!68 = !DILocation(line: 0, scope: !60)
!69 = !DILocation(line: 54, column: 16, scope: !60)
!70 = !DILocation(line: 54, column: 13, scope: !60)
!71 = !{!72, !72, i64 0}
!72 = !{!"int", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !DILocation(line: 55, column: 17, scope: !60)
!76 = !DILocation(line: 55, column: 12, scope: !60)
!77 = !DILocation(line: 55, column: 5, scope: !60)
!78 = distinct !DISubprogram(name: "func_2", scope: !3, file: !3, line: 64, type: !79, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!79 = !DISubroutineType(types: !80)
!80 = !{!9, !51, !51, !9, !31, !81}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !29)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !91, !96, !98, !99, !100}
!83 = !DILocalVariable(name: "p_3", arg: 1, scope: !78, file: !3, line: 64, type: !51)
!84 = !DILocalVariable(name: "p_4", arg: 2, scope: !78, file: !3, line: 64, type: !51)
!85 = !DILocalVariable(name: "p_5", arg: 3, scope: !78, file: !3, line: 64, type: !9)
!86 = !DILocalVariable(name: "p_6", arg: 4, scope: !78, file: !3, line: 64, type: !31)
!87 = !DILocalVariable(name: "p_7", arg: 5, scope: !78, file: !3, line: 64, type: !81)
!88 = !DILocalVariable(name: "l_16", scope: !78, file: !3, line: 66, type: !51)
!89 = !DILocalVariable(name: "l_17", scope: !78, file: !3, line: 67, type: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!91 = !DILocalVariable(name: "l_19", scope: !78, file: !3, line: 68, type: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1536, elements: !93)
!93 = !{!94, !95, !21}
!94 = !DISubrange(count: 8)
!95 = !DISubrange(count: 1)
!96 = !DILocalVariable(name: "l_23", scope: !78, file: !3, line: 69, type: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!98 = !DILocalVariable(name: "i", scope: !78, file: !3, line: 70, type: !10)
!99 = !DILocalVariable(name: "j", scope: !78, file: !3, line: 70, type: !10)
!100 = !DILocalVariable(name: "k", scope: !78, file: !3, line: 70, type: !10)
!101 = !DILocation(line: 0, scope: !78)
!102 = !DILocation(line: 68, column: 5, scope: !78)
!103 = !DILocation(line: 68, column: 13, scope: !78)
!104 = !DILocation(line: 71, column: 5, scope: !105)
!105 = distinct !DILexicalBlock(scope: !78, file: !3, line: 71, column: 5)
!106 = !DILocation(line: 76, column: 31, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !3, line: 75, column: 13)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 75, column: 13)
!109 = distinct !DILexicalBlock(scope: !110, file: !3, line: 74, column: 9)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 73, column: 9)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 73, column: 9)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 72, column: 5)
!113 = distinct !DILexicalBlock(scope: !105, file: !3, line: 71, column: 5)
!114 = !DILocation(line: 71, column: 19, scope: !113)
!115 = distinct !{!115, !104, !116, !117, !118}
!116 = !DILocation(line: 78, column: 5, scope: !105)
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = !DILocation(line: 79, column: 63, scope: !78)
!120 = !{i64 0, i64 4, !71, i64 1, i64 4, !71, i64 3, i64 1, !121, i64 4, i64 4, !71, i64 8, i64 4, !71, i64 12, i64 4, !71, i64 16, i64 4, !71, i64 16, i64 4, !71, i64 18, i64 4, !71, i64 20, i64 4, !71}
!121 = !{!73, !73, i64 0}
!122 = !DILocation(line: 79, column: 84, scope: !78)
!123 = !DILocation(line: 79, column: 77, scope: !78)
!124 = !DILocation(line: 79, column: 45, scope: !78)
!125 = !DILocation(line: 79, column: 43, scope: !78)
!126 = !{!127, !127, i64 0}
!127 = !{!"long long", !73, i64 0}
!128 = !DILocation(line: 79, column: 5, scope: !78)
!129 = !DILocation(line: 79, column: 19, scope: !78)
!130 = !DILocation(line: 80, column: 68, scope: !78)
!131 = !DILocation(line: 80, column: 80, scope: !78)
!132 = !DILocation(line: 80, column: 65, scope: !78)
!133 = !DILocation(line: 80, column: 48, scope: !78)
!134 = !DILocation(line: 80, column: 46, scope: !78)
!135 = !DILocation(line: 80, column: 124, scope: !78)
!136 = !DILocation(line: 80, column: 5, scope: !78)
!137 = !DILocation(line: 80, column: 19, scope: !78)
!138 = !DILocation(line: 81, column: 17, scope: !78)
!139 = !DILocation(line: 82, column: 1, scope: !78)
!140 = !DILocation(line: 81, column: 5, scope: !78)
!141 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 88, type: !142, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{!10}
!144 = !{!145, !146, !147, !148}
!145 = !DILocalVariable(name: "i", scope: !141, file: !3, line: 90, type: !10)
!146 = !DILocalVariable(name: "j", scope: !141, file: !3, line: 90, type: !10)
!147 = !DILocalVariable(name: "k", scope: !141, file: !3, line: 90, type: !10)
!148 = !DILocalVariable(name: "print_hash_value", scope: !141, file: !3, line: 91, type: !10)
!149 = !DILocation(line: 0, scope: !141)
!150 = !DILocation(line: 93, column: 5, scope: !141)
!151 = !DILocation(line: 94, column: 5, scope: !152)
!152 = distinct !DILexicalBlock(scope: !141, file: !3, line: 94, column: 5)
!153 = !DILocation(line: 96, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 96, column: 9)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 95, column: 5)
!156 = distinct !DILexicalBlock(scope: !152, file: !3, line: 94, column: 5)
!157 = !DILocation(line: 98, column: 13, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !3, line: 98, column: 13)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 97, column: 9)
!160 = distinct !DILexicalBlock(scope: !154, file: !3, line: 96, column: 9)
!161 = !DILocation(line: 100, column: 32, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 99, column: 13)
!163 = distinct !DILexicalBlock(scope: !158, file: !3, line: 98, column: 13)
!164 = !{!165, !165, i64 0}
!165 = !{!"short", !73, i64 0}
!166 = !DILocation(line: 100, column: 30, scope: !162)
!167 = !DILocation(line: 98, column: 33, scope: !163)
!168 = !DILocation(line: 98, column: 27, scope: !163)
!169 = distinct !{!169, !157, !170, !117, !118}
!170 = !DILocation(line: 101, column: 13, scope: !158)
!171 = !DILocation(line: 96, column: 29, scope: !160)
!172 = !DILocation(line: 96, column: 23, scope: !160)
!173 = distinct !{!173, !153, !174, !117, !118}
!174 = !DILocation(line: 102, column: 9, scope: !154)
!175 = !DILocation(line: 94, column: 25, scope: !156)
!176 = !DILocation(line: 94, column: 19, scope: !156)
!177 = distinct !{!177, !151, !178, !117, !118}
!178 = !DILocation(line: 103, column: 5, scope: !152)
!179 = !DILocation(line: 104, column: 25, scope: !141)
!180 = !DILocation(line: 104, column: 20, scope: !141)
!181 = !DILocation(line: 104, column: 18, scope: !141)
!182 = !DILocation(line: 105, column: 25, scope: !141)
!183 = !DILocation(line: 105, column: 20, scope: !141)
!184 = !DILocation(line: 105, column: 18, scope: !141)
!185 = !DILocation(line: 106, column: 25, scope: !141)
!186 = !{!187, !73, i64 3}
!187 = !{!"S0", !72, i64 0, !72, i64 1, !73, i64 3, !72, i64 4, !72, i64 8, !72, i64 12, !72, i64 16, !72, i64 16, !72, i64 18, !72, i64 20}
!188 = !DILocation(line: 106, column: 20, scope: !141)
!189 = !DILocation(line: 106, column: 18, scope: !141)
!190 = !DILocation(line: 107, column: 25, scope: !141)
!191 = !DILocation(line: 107, column: 20, scope: !141)
!192 = !DILocation(line: 107, column: 18, scope: !141)
!193 = !DILocation(line: 108, column: 25, scope: !141)
!194 = !DILocation(line: 108, column: 20, scope: !141)
!195 = !DILocation(line: 108, column: 18, scope: !141)
!196 = !DILocation(line: 109, column: 25, scope: !141)
!197 = !DILocation(line: 109, column: 20, scope: !141)
!198 = !DILocation(line: 109, column: 18, scope: !141)
!199 = !DILocation(line: 110, column: 25, scope: !141)
!200 = !DILocation(line: 110, column: 20, scope: !141)
!201 = !DILocation(line: 110, column: 18, scope: !141)
!202 = !DILocation(line: 111, column: 25, scope: !141)
!203 = !DILocation(line: 111, column: 20, scope: !141)
!204 = !DILocation(line: 111, column: 18, scope: !141)
!205 = !DILocation(line: 112, column: 25, scope: !141)
!206 = !DILocation(line: 112, column: 20, scope: !141)
!207 = !DILocation(line: 112, column: 18, scope: !141)
!208 = !DILocation(line: 113, column: 25, scope: !141)
!209 = !DILocation(line: 113, column: 20, scope: !141)
!210 = !DILocation(line: 113, column: 18, scope: !141)
!211 = !DILocation(line: 114, column: 20, scope: !141)
!212 = !DILocation(line: 114, column: 18, scope: !141)
!213 = !DILocation(line: 115, column: 20, scope: !141)
!214 = !DILocation(line: 115, column: 18, scope: !141)
!215 = !DILocation(line: 116, column: 20, scope: !141)
!216 = !DILocation(line: 116, column: 18, scope: !141)
!217 = !DILocation(line: 118, column: 5, scope: !141)
