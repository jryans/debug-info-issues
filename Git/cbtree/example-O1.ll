; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.cb_tree = type { %struct.cb_node* }
%struct.cb_node = type { [2 x %struct.cb_node*], i32, i8, [0 x i8] }

; Function Attrs: noinline nounwind ssp uwtable
define %struct.cb_node* @cb_insert(%struct.cb_tree* nocapture %t, %struct.cb_node* %node, i64 %klen) local_unnamed_addr #0 !dbg !38 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_tree* %t, metadata !50, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata %struct.cb_node* %node, metadata !51, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i64 %klen, metadata !52, metadata !DIExpression()), !dbg !67
  %0 = ptrtoint %struct.cb_node* %node to i64, !dbg !68
  %1 = trunc i64 %0 to i32, !dbg !69
  %2 = and i32 %1, 1, !dbg !69
  %3 = xor i32 %2, 1, !dbg !69
  %call = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %3) #8, !dbg !70
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %t, i64 0, i32 0, !dbg !71
  %4 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !71, !tbaa !73
  %tobool1.not = icmp eq %struct.cb_node* %4, null, !dbg !78
  br i1 %tobool1.not, label %if.then, label %if.end, !dbg !79

if.then:                                          ; preds = %entry
  store %struct.cb_node* %node, %struct.cb_node** %root, align 8, !dbg !80, !tbaa !73
  br label %cleanup84, !dbg !82

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 3, i64 0, !dbg !83
  %call4 = call fastcc %struct.cb_node* @cb_internal_best_match(%struct.cb_node* nonnull %4, i8* nonnull %arraydecay, i64 %klen), !dbg !84
  call void @llvm.dbg.value(metadata %struct.cb_node* %call4, metadata !60, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i64 0, metadata !53, metadata !DIExpression()), !dbg !67
  %cmp153.not = icmp eq i64 %klen, 0, !dbg !85
  br i1 %cmp153.not, label %cleanup84, label %for.body, !dbg !88

for.body:                                         ; preds = %if.end, %for.inc
  %newbyte.0154 = phi i64 [ %inc, %for.inc ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %newbyte.0154, metadata !53, metadata !DIExpression()), !dbg !67
  %arrayidx = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call4, i64 0, i32 3, i64 %newbyte.0154, !dbg !89
  %5 = load i8, i8* %arrayidx, align 1, !dbg !89, !tbaa !92
  %arrayidx7 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 3, i64 %newbyte.0154, !dbg !93
  %6 = load i8, i8* %arrayidx7, align 1, !dbg !93, !tbaa !92
  %cmp9.not = icmp eq i8 %5, %6, !dbg !94
  br i1 %cmp9.not, label %for.inc, label %different_byte_found, !dbg !95

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %newbyte.0154, 1, !dbg !96
  call void @llvm.dbg.value(metadata i64 %inc, metadata !53, metadata !DIExpression()), !dbg !67
  %exitcond.not = icmp eq i64 %inc, %klen, !dbg !85
  br i1 %exitcond.not, label %cleanup84, label %for.body, !dbg !88, !llvm.loop !97

different_byte_found:                             ; preds = %for.body
  call void @llvm.dbg.label(metadata !66), !dbg !101
  %xor148 = xor i8 %6, %5, !dbg !102
  %conv19 = zext i8 %xor148 to i64, !dbg !103
  call void @llvm.dbg.value(metadata i64 %conv19, metadata !54, metadata !DIExpression()), !dbg !67
  %shr = lshr i64 %conv19, 1, !dbg !104
  %or = or i64 %shr, %conv19, !dbg !105
  call void @llvm.dbg.value(metadata i64 %or, metadata !54, metadata !DIExpression()), !dbg !67
  %shr20 = lshr i64 %or, 2, !dbg !106
  %or21 = or i64 %shr20, %or, !dbg !107
  call void @llvm.dbg.value(metadata i64 %or21, metadata !54, metadata !DIExpression()), !dbg !67
  %shr22 = lshr i64 %or21, 4, !dbg !108
  %or23 = or i64 %shr22, %or21, !dbg !109
  call void @llvm.dbg.value(metadata i64 %or23, metadata !54, metadata !DIExpression()), !dbg !67
  %shr24 = lshr i64 %or23, 1, !dbg !110
  %neg = xor i64 %shr24, -1, !dbg !111
  %and25 = and i64 %or23, %neg, !dbg !112
  %xor26 = xor i64 %and25, 255, !dbg !113
  call void @llvm.dbg.value(metadata i64 %xor26, metadata !54, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i8 %5, metadata !55, metadata !DIExpression()), !dbg !67
  %conv29 = zext i8 %5 to i64, !dbg !114
  %or30 = or i64 %xor26, %conv29, !dbg !115
  %add = add i64 %or30, 1, !dbg !116
  %shr31 = lshr i64 %add, 8, !dbg !117
  call void @llvm.dbg.value(metadata i64 %shr31, metadata !56, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !67
  %conv33 = trunc i64 %newbyte.0154 to i32, !dbg !118
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 1, !dbg !119
  store i32 %conv33, i32* %byte, align 8, !dbg !120, !tbaa !121
  %conv34 = trunc i64 %xor26 to i8, !dbg !123
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 2, !dbg !124
  store i8 %conv34, i8* %otherbits, align 4, !dbg !125, !tbaa !92
  %sub.neg = mul i64 %shr31, -4294967296, !dbg !126
  %sext = add i64 %sub.neg, 4294967296, !dbg !126
  %idxprom = ashr exact i64 %sext, 32, !dbg !126
  %arrayidx35 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 0, i64 %idxprom, !dbg !126
  store %struct.cb_node* %node, %struct.cb_node** %arrayidx35, align 8, !dbg !127, !tbaa !128
  call void @llvm.dbg.value(metadata %struct.cb_node** %root, metadata !58, metadata !DIExpression()), !dbg !67
  br label %for.cond37, !dbg !129

for.cond37:                                       ; preds = %cleanup, %different_byte_found
  %wherep.0 = phi %struct.cb_node** [ %root, %different_byte_found ], [ %wherep.1, %cleanup ], !dbg !130
  call void @llvm.dbg.value(metadata %struct.cb_node** %wherep.0, metadata !58, metadata !DIExpression()), !dbg !67
  %7 = load %struct.cb_node*, %struct.cb_node** %wherep.0, align 8, !dbg !131, !tbaa !128
  call void @llvm.dbg.value(metadata %struct.cb_node* %7, metadata !60, metadata !DIExpression()), !dbg !67
  %8 = ptrtoint %struct.cb_node* %7 to i64, !dbg !132
  %and38 = and i64 %8, 1, !dbg !134
  %tobool39.not = icmp eq i64 %and38, 0, !dbg !134
  br i1 %tobool39.not, label %cleanup, label %if.end41, !dbg !135

if.end41:                                         ; preds = %for.cond37
  %9 = bitcast %struct.cb_node* %7 to i8*, !dbg !136
  %call42 = call fastcc %struct.cb_node* @cb_node_of(i8* %9), !dbg !137
  call void @llvm.dbg.value(metadata %struct.cb_node* %call42, metadata !61, metadata !DIExpression()), !dbg !138
  %byte43 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call42, i64 0, i32 1, !dbg !139
  %10 = load i32, i32* %byte43, align 8, !dbg !139, !tbaa !121
  %conv44 = zext i32 %10 to i64, !dbg !141
  %cmp45 = icmp ult i64 %newbyte.0154, %conv44, !dbg !142
  br i1 %cmp45, label %cleanup, label %if.end48, !dbg !143

if.end48:                                         ; preds = %if.end41
  %cmp51 = icmp eq i64 %newbyte.0154, %conv44, !dbg !144
  br i1 %cmp51, label %land.lhs.true, label %if.end58, !dbg !146

land.lhs.true:                                    ; preds = %if.end48
  %otherbits53 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call42, i64 0, i32 2, !dbg !147
  %11 = load i8, i8* %otherbits53, align 4, !dbg !147, !tbaa !92
  %conv54 = zext i8 %11 to i64, !dbg !148
  %cmp55 = icmp ult i64 %xor26, %conv54, !dbg !149
  br i1 %cmp55, label %cleanup, label %if.end58, !dbg !150

if.end58:                                         ; preds = %land.lhs.true, %if.end48
  %cmp61 = icmp ult i64 %conv44, %klen, !dbg !151
  br i1 %cmp61, label %cond.true, label %cond.end, !dbg !152

cond.true:                                        ; preds = %if.end58
  %arrayidx66 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 3, i64 %conv44, !dbg !153
  %12 = load i8, i8* %arrayidx66, align 1, !dbg !153, !tbaa !92
  br label %cond.end, !dbg !152

cond.end:                                         ; preds = %if.end58, %cond.true
  %cond = phi i8 [ %12, %cond.true ], [ 0, %if.end58 ], !dbg !152
  call void @llvm.dbg.value(metadata i8 %cond, metadata !55, metadata !DIExpression()), !dbg !67
  %otherbits69 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call42, i64 0, i32 2, !dbg !154
  %13 = load i8, i8* %otherbits69, align 4, !dbg !154, !tbaa !92
  %or72150 = or i8 %13, %cond, !dbg !155
  %or72 = zext i8 %or72150 to i64, !dbg !155
  %add73 = add nuw nsw i64 %or72, 1, !dbg !156
  %14 = lshr i64 %add73, 8, !dbg !157
  call void @llvm.dbg.value(metadata i64 %14, metadata !65, metadata !DIExpression()), !dbg !138
  %add.ptr = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call42, i64 0, i32 0, i64 %14, !dbg !158
  call void @llvm.dbg.value(metadata %struct.cb_node** %add.ptr, metadata !58, metadata !DIExpression()), !dbg !67
  br label %cleanup, !dbg !159

cleanup:                                          ; preds = %land.lhs.true, %if.end41, %for.cond37, %cond.end
  %wherep.1 = phi %struct.cb_node** [ %add.ptr, %cond.end ], [ %wherep.0, %for.cond37 ], [ %wherep.0, %if.end41 ], [ %wherep.0, %land.lhs.true ], !dbg !67
  %switch = phi i1 [ true, %cond.end ], [ false, %for.cond37 ], [ false, %if.end41 ], [ false, %land.lhs.true ]
  call void @llvm.dbg.value(metadata %struct.cb_node** %wherep.1, metadata !58, metadata !DIExpression()), !dbg !67
  br i1 %switch, label %for.cond37, label %for.end79, !llvm.loop !160

for.end79:                                        ; preds = %cleanup
  %15 = load %struct.cb_node*, %struct.cb_node** %wherep.1, align 8, !dbg !163, !tbaa !128
  %sext149 = shl i64 %shr31, 32, !dbg !164
  %idxprom81 = ashr exact i64 %sext149, 32, !dbg !164
  %arrayidx82 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 0, i64 %idxprom81, !dbg !164
  store %struct.cb_node* %15, %struct.cb_node** %arrayidx82, align 8, !dbg !165, !tbaa !128
  %add83 = add i64 %0, 1, !dbg !166
  %16 = inttoptr i64 %add83 to %struct.cb_node*, !dbg !167
  store %struct.cb_node* %16, %struct.cb_node** %wherep.1, align 8, !dbg !168, !tbaa !128
  br label %cleanup84, !dbg !169

cleanup84:                                        ; preds = %for.inc, %if.end, %for.end79, %if.then
  %retval.0 = phi %struct.cb_node* [ null, %for.end79 ], [ null, %if.then ], [ %call4, %if.end ], [ %call4, %for.inc ], !dbg !67
  ret %struct.cb_node* %retval.0, !dbg !170
}

declare i32 @assert(...) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly ssp uwtable
define internal fastcc %struct.cb_node* @cb_internal_best_match(%struct.cb_node* %p, i8* nocapture readonly %k, i64 %klen) unnamed_addr #2 !dbg !171 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_node* %p, metadata !177, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i8* %k, metadata !178, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i64 %klen, metadata !179, metadata !DIExpression()), !dbg !184
  %0 = ptrtoint %struct.cb_node* %p to i64, !dbg !185
  %and17 = and i64 %0, 1, !dbg !186
  %tobool.not18 = icmp eq i64 %and17, 0, !dbg !187
  br i1 %tobool.not18, label %while.end, label %while.body, !dbg !187

while.body:                                       ; preds = %entry, %cond.end
  %p.addr.019 = phi %struct.cb_node* [ %6, %cond.end ], [ %p, %entry ]
  call void @llvm.dbg.value(metadata %struct.cb_node* %p.addr.019, metadata !177, metadata !DIExpression()), !dbg !184
  %1 = bitcast %struct.cb_node* %p.addr.019 to i8*, !dbg !188
  %call = call fastcc %struct.cb_node* @cb_node_of(i8* %1), !dbg !189
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !180, metadata !DIExpression()), !dbg !190
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 1, !dbg !191
  %2 = load i32, i32* %byte, align 8, !dbg !191, !tbaa !121
  %conv = zext i32 %2 to i64, !dbg !192
  %cmp = icmp ult i64 %conv, %klen, !dbg !193
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !192

cond.true:                                        ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, i8* %k, i64 %conv, !dbg !194
  %3 = load i8, i8* %arrayidx, align 1, !dbg !194, !tbaa !92
  br label %cond.end, !dbg !192

cond.end:                                         ; preds = %while.body, %cond.true
  %cond = phi i8 [ %3, %cond.true ], [ 0, %while.body ], !dbg !192
  call void @llvm.dbg.value(metadata i8 %cond, metadata !182, metadata !DIExpression()), !dbg !190
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 2, !dbg !195
  %4 = load i8, i8* %otherbits, align 4, !dbg !195, !tbaa !92
  %or16 = or i8 %4, %cond, !dbg !196
  %or = zext i8 %or16 to i64, !dbg !196
  %add = add nuw nsw i64 %or, 1, !dbg !197
  %5 = lshr i64 %add, 8, !dbg !198
  call void @llvm.dbg.value(metadata i64 %5, metadata !183, metadata !DIExpression()), !dbg !190
  %arrayidx8 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 0, i64 %5, !dbg !199
  %6 = load %struct.cb_node*, %struct.cb_node** %arrayidx8, align 8, !dbg !199, !tbaa !128
  call void @llvm.dbg.value(metadata %struct.cb_node* %6, metadata !177, metadata !DIExpression()), !dbg !184
  %7 = ptrtoint %struct.cb_node* %6 to i64, !dbg !185
  %and = and i64 %7, 1, !dbg !186
  %tobool.not = icmp eq i64 %and, 0, !dbg !187
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !187, !llvm.loop !200

while.end:                                        ; preds = %cond.end, %entry
  %p.addr.0.lcssa = phi %struct.cb_node* [ %p, %entry ], [ %6, %cond.end ]
  ret %struct.cb_node* %p.addr.0.lcssa, !dbg !202
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define internal fastcc %struct.cb_node* @cb_node_of(i8* %p) unnamed_addr #4 !dbg !203 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = ptrtoint i8* %p to i64, !dbg !211
  %sub = add i64 %0, -1, !dbg !212
  %1 = inttoptr i64 %sub to %struct.cb_node*, !dbg !213
  ret %struct.cb_node* %1, !dbg !214
}

; Function Attrs: nofree noinline nounwind readonly ssp uwtable
define %struct.cb_node* @cb_lookup(%struct.cb_tree* nocapture readonly %t, i8* nocapture readonly %k, i64 %klen) local_unnamed_addr #5 !dbg !215 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_tree* %t, metadata !219, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.value(metadata i8* %k, metadata !220, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.value(metadata i64 %klen, metadata !221, metadata !DIExpression()), !dbg !223
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %t, i64 0, i32 0, !dbg !224
  %0 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !224, !tbaa !73
  %call = call fastcc %struct.cb_node* @cb_internal_best_match(%struct.cb_node* %0, i8* %k, i64 %klen), !dbg !225
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !222, metadata !DIExpression()), !dbg !223
  %tobool.not = icmp eq %struct.cb_node* %call, null, !dbg !226
  br i1 %tobool.not, label %cond.end, label %land.lhs.true, !dbg !227

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 3, i64 0, !dbg !228
  %call2 = call i32 @memcmp(i8* nonnull %arraydecay, i8* %k, i64 %klen), !dbg !229
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !229
  %spec.select = select i1 %tobool3.not, %struct.cb_node* %call, %struct.cb_node* null, !dbg !226
  br label %cond.end, !dbg !226

cond.end:                                         ; preds = %land.lhs.true, %entry
  %cond = phi %struct.cb_node* [ null, %entry ], [ %spec.select, %land.lhs.true ], !dbg !226
  ret %struct.cb_node* %cond, !dbg !230
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: noinline nounwind ssp uwtable
define void @cb_each(%struct.cb_tree* nocapture readonly %t, i8* nocapture readonly %kpfx, i64 %klen, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg) local_unnamed_addr #0 !dbg !231 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_tree* %t, metadata !240, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i8* %kpfx, metadata !241, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i64 %klen, metadata !242, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i32 (%struct.cb_node*, i8*)* %fn, metadata !243, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i8* %arg, metadata !244, metadata !DIExpression()), !dbg !252
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %t, i64 0, i32 0, !dbg !253
  %0 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !253, !tbaa !73
  call void @llvm.dbg.value(metadata %struct.cb_node* %0, metadata !245, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata %struct.cb_node* %0, metadata !246, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !252
  %tobool.not = icmp eq %struct.cb_node* %0, null, !dbg !254
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader, !dbg !256

while.cond.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.cb_node* %0, metadata !245, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata %struct.cb_node* %0, metadata !246, metadata !DIExpression()), !dbg !252
  %1 = ptrtoint %struct.cb_node* %0 to i64, !dbg !257
  %and50 = and i64 %1, 1, !dbg !258
  %tobool1.not51 = icmp eq i64 %and50, 0, !dbg !259
  br i1 %tobool1.not51, label %for.cond.preheader, label %while.body, !dbg !259

for.cond.preheader:                               ; preds = %cond.end, %while.cond.preheader
  %top.0.lcssa = phi %struct.cb_node* [ %0, %while.cond.preheader ], [ %spec.select, %cond.end ], !dbg !252
  %p.0.lcssa = phi %struct.cb_node* [ %0, %while.cond.preheader ], [ %7, %cond.end ], !dbg !252
  call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !252
  %cmp1655.not = icmp eq i64 %klen, 0, !dbg !260
  br i1 %cmp1655.not, label %for.end, label %for.body, !dbg !263

while.body:                                       ; preds = %while.cond.preheader, %cond.end
  %p.053 = phi %struct.cb_node* [ %7, %cond.end ], [ %0, %while.cond.preheader ]
  %top.052 = phi %struct.cb_node* [ %spec.select, %cond.end ], [ %0, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata %struct.cb_node* %p.053, metadata !245, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata %struct.cb_node* %top.052, metadata !246, metadata !DIExpression()), !dbg !252
  %2 = bitcast %struct.cb_node* %p.053 to i8*, !dbg !264
  %call = call fastcc %struct.cb_node* @cb_node_of(i8* %2), !dbg !265
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !248, metadata !DIExpression()), !dbg !266
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 1, !dbg !267
  %3 = load i32, i32* %byte, align 8, !dbg !267, !tbaa !121
  %conv = zext i32 %3 to i64, !dbg !268
  %cmp = icmp ult i64 %conv, %klen, !dbg !269
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !268

cond.true:                                        ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, i8* %kpfx, i64 %conv, !dbg !270
  %4 = load i8, i8* %arrayidx, align 1, !dbg !270, !tbaa !92
  br label %cond.end, !dbg !268

cond.end:                                         ; preds = %while.body, %cond.true
  %cond = phi i8 [ %4, %cond.true ], [ 0, %while.body ], !dbg !268
  call void @llvm.dbg.value(metadata i8 %cond, metadata !250, metadata !DIExpression()), !dbg !266
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 2, !dbg !271
  %5 = load i8, i8* %otherbits, align 4, !dbg !271, !tbaa !92
  %or49 = or i8 %5, %cond, !dbg !272
  %or = zext i8 %or49 to i64, !dbg !272
  %add = add nuw nsw i64 %or, 1, !dbg !273
  %6 = lshr i64 %add, 8, !dbg !274
  call void @llvm.dbg.value(metadata i64 %6, metadata !251, metadata !DIExpression()), !dbg !266
  %arrayidx9 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 0, i64 %6, !dbg !275
  %7 = load %struct.cb_node*, %struct.cb_node** %arrayidx9, align 8, !dbg !275, !tbaa !128
  call void @llvm.dbg.value(metadata %struct.cb_node* %7, metadata !245, metadata !DIExpression()), !dbg !252
  %spec.select = select i1 %cmp, %struct.cb_node* %7, %struct.cb_node* %top.052, !dbg !276
  call void @llvm.dbg.value(metadata %struct.cb_node* %spec.select, metadata !246, metadata !DIExpression()), !dbg !252
  %8 = ptrtoint %struct.cb_node* %7 to i64, !dbg !257
  %and = and i64 %8, 1, !dbg !258
  %tobool1.not = icmp eq i64 %and, 0, !dbg !259
  br i1 %tobool1.not, label %for.cond.preheader, label %while.body, !dbg !259, !llvm.loop !277

for.cond:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %inc, metadata !247, metadata !DIExpression()), !dbg !252
  %exitcond.not = icmp eq i64 %inc, %klen, !dbg !260
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !263, !llvm.loop !279

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.056 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.056, metadata !247, metadata !DIExpression()), !dbg !252
  %arrayidx18 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %p.0.lcssa, i64 0, i32 3, i64 %i.056, !dbg !281
  %9 = load i8, i8* %arrayidx18, align 1, !dbg !281, !tbaa !92
  %arrayidx20 = getelementptr inbounds i8, i8* %kpfx, i64 %i.056, !dbg !284
  %10 = load i8, i8* %arrayidx20, align 1, !dbg !284, !tbaa !92
  %cmp22.not = icmp eq i8 %9, %10, !dbg !285
  %inc = add nuw i64 %i.056, 1, !dbg !286
  call void @llvm.dbg.value(metadata i64 %inc, metadata !247, metadata !DIExpression()), !dbg !252
  br i1 %cmp22.not, label %for.cond, label %cleanup, !dbg !287

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %call26 = call fastcc i32 @cb_descend(%struct.cb_node* %top.0.lcssa, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg), !dbg !288
  br label %cleanup, !dbg !289

cleanup:                                          ; preds = %for.body, %entry, %for.end
  ret void, !dbg !289
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc i32 @cb_descend(%struct.cb_node* %p, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg) unnamed_addr #0 !dbg !290 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_node* %p, metadata !294, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 (%struct.cb_node*, i8*)* %fn, metadata !295, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i8* %arg, metadata !296, metadata !DIExpression()), !dbg !301
  %0 = ptrtoint %struct.cb_node* %p to i64, !dbg !302
  %and = and i64 %0, 1, !dbg !303
  %tobool.not = icmp eq i64 %and, 0, !dbg !303
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !304

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.cb_node* %p to i8*, !dbg !305
  %call = call fastcc %struct.cb_node* @cb_node_of(i8* %1), !dbg !306
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !297, metadata !DIExpression()), !dbg !307
  %arrayidx = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 0, i64 0, !dbg !308
  %2 = load %struct.cb_node*, %struct.cb_node** %arrayidx, align 8, !dbg !308, !tbaa !128
  %call1 = call fastcc i32 @cb_descend(%struct.cb_node* %2, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg), !dbg !309
  call void @llvm.dbg.value(metadata i32 %call1, metadata !300, metadata !DIExpression()), !dbg !307
  %cmp = icmp eq i32 %call1, 1, !dbg !310
  br i1 %cmp, label %return, label %cond.false, !dbg !311

cond.false:                                       ; preds = %if.then
  %arrayidx3 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 0, i64 1, !dbg !312
  %3 = load %struct.cb_node*, %struct.cb_node** %arrayidx3, align 8, !dbg !312, !tbaa !128
  %call4 = call fastcc i32 @cb_descend(%struct.cb_node* %3, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg), !dbg !313
  br label %return, !dbg !311

if.else:                                          ; preds = %entry
  %call5 = call i32 %fn(%struct.cb_node* %p, i8* %arg) #8, !dbg !314
  br label %return, !dbg !316

return:                                           ; preds = %cond.false, %if.then, %if.else
  %retval.0 = phi i32 [ %call5, %if.else ], [ %call4, %cond.false ], [ 1, %if.then ], !dbg !317
  ret i32 %retval.0, !dbg !318
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind readonly ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!37}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/cbtree")
!9 = !{!10}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cb_next", file: !8, line: 20, baseType: !11, size: 32, elements: !12)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "CB_CONTINUE", value: 0)
!14 = !DIEnumerator(name: "CB_BREAK", value: 1)
!15 = !{!16, !19}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !17, line: 34, baseType: !18)
!17 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h", directory: "")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cb_node", file: !8, line: 5, size: 192, elements: !21)
!21 = !{!22, !26, !29, !33}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !20, file: !8, line: 6, baseType: !23, size: 128)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 2)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !20, file: !8, line: 11, baseType: !27, size: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 31, baseType: !11)
!28 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!29 = !DIDerivedType(tag: DW_TAG_member, name: "otherbits", scope: !20, file: !8, line: 12, baseType: !30, size: 8, offset: 160)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !31, line: 31, baseType: !32)
!31 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h", directory: "")
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !20, file: !8, line: 13, baseType: !34, offset: 168)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: -1)
!37 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!38 = distinct !DISubprogram(name: "cb_insert", scope: !8, file: !8, line: 61, type: !39, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !49)
!39 = !DISubroutineType(types: !40)
!40 = !{!19, !41, !19, !45}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cb_tree", file: !8, line: 16, size: 64, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !42, file: !8, line: 17, baseType: !19, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 31, baseType: !47)
!46 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !48, line: 94, baseType: !18)
!48 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h", directory: "")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !58, !60, !61, !65, !66}
!50 = !DILocalVariable(name: "t", arg: 1, scope: !38, file: !8, line: 61, type: !41)
!51 = !DILocalVariable(name: "node", arg: 2, scope: !38, file: !8, line: 61, type: !19)
!52 = !DILocalVariable(name: "klen", arg: 3, scope: !38, file: !8, line: 61, type: !45)
!53 = !DILocalVariable(name: "newbyte", scope: !38, file: !8, line: 63, type: !45)
!54 = !DILocalVariable(name: "newotherbits", scope: !38, file: !8, line: 63, type: !45)
!55 = !DILocalVariable(name: "c", scope: !38, file: !8, line: 64, type: !30)
!56 = !DILocalVariable(name: "newdirection", scope: !38, file: !8, line: 65, type: !57)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DILocalVariable(name: "wherep", scope: !38, file: !8, line: 66, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!60 = !DILocalVariable(name: "p", scope: !38, file: !8, line: 66, type: !19)
!61 = !DILocalVariable(name: "q", scope: !62, file: !8, line: 101, type: !19)
!62 = distinct !DILexicalBlock(scope: !63, file: !8, line: 100, column: 11)
!63 = distinct !DILexicalBlock(scope: !64, file: !8, line: 100, column: 2)
!64 = distinct !DILexicalBlock(scope: !38, file: !8, line: 100, column: 2)
!65 = !DILocalVariable(name: "direction", scope: !62, file: !8, line: 102, type: !45)
!66 = !DILabel(scope: !38, name: "different_byte_found", file: !8, line: 85)
!67 = !DILocation(line: 0, scope: !38)
!68 = !DILocation(line: 68, column: 11, scope: !38)
!69 = !DILocation(line: 68, column: 9, scope: !38)
!70 = !DILocation(line: 68, column: 2, scope: !38)
!71 = !DILocation(line: 70, column: 10, scope: !72)
!72 = distinct !DILexicalBlock(scope: !38, file: !8, line: 70, column: 6)
!73 = !{!74, !75, i64 0}
!74 = !{!"cb_tree", !75, i64 0}
!75 = !{!"any pointer", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C/C++ TBAA"}
!78 = !DILocation(line: 70, column: 7, scope: !72)
!79 = !DILocation(line: 70, column: 6, scope: !38)
!80 = !DILocation(line: 71, column: 11, scope: !81)
!81 = distinct !DILexicalBlock(scope: !72, file: !8, line: 70, column: 16)
!82 = !DILocation(line: 72, column: 3, scope: !81)
!83 = !DILocation(line: 76, column: 38, scope: !38)
!84 = !DILocation(line: 76, column: 6, scope: !38)
!85 = !DILocation(line: 79, column: 28, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !8, line: 79, column: 2)
!87 = distinct !DILexicalBlock(scope: !38, file: !8, line: 79, column: 2)
!88 = !DILocation(line: 79, column: 2, scope: !87)
!89 = !DILocation(line: 80, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !8, line: 80, column: 7)
!91 = distinct !DILexicalBlock(scope: !86, file: !8, line: 79, column: 47)
!92 = !{!76, !76, i64 0}
!93 = !DILocation(line: 80, column: 24, scope: !90)
!94 = !DILocation(line: 80, column: 21, scope: !90)
!95 = !DILocation(line: 80, column: 7, scope: !91)
!96 = !DILocation(line: 79, column: 43, scope: !86)
!97 = distinct !{!97, !88, !98, !99, !100}
!98 = !DILocation(line: 82, column: 2, scope: !87)
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !DILocation(line: 85, column: 1, scope: !38)
!102 = !DILocation(line: 86, column: 31, scope: !38)
!103 = !DILocation(line: 86, column: 17, scope: !38)
!104 = !DILocation(line: 87, column: 31, scope: !38)
!105 = !DILocation(line: 87, column: 15, scope: !38)
!106 = !DILocation(line: 88, column: 31, scope: !38)
!107 = !DILocation(line: 88, column: 15, scope: !38)
!108 = !DILocation(line: 89, column: 31, scope: !38)
!109 = !DILocation(line: 89, column: 15, scope: !38)
!110 = !DILocation(line: 90, column: 48, scope: !38)
!111 = !DILocation(line: 90, column: 33, scope: !38)
!112 = !DILocation(line: 90, column: 31, scope: !38)
!113 = !DILocation(line: 90, column: 55, scope: !38)
!114 = !DILocation(line: 92, column: 38, scope: !38)
!115 = !DILocation(line: 92, column: 36, scope: !38)
!116 = !DILocation(line: 92, column: 20, scope: !38)
!117 = !DILocation(line: 92, column: 42, scope: !38)
!118 = !DILocation(line: 94, column: 15, scope: !38)
!119 = !DILocation(line: 94, column: 8, scope: !38)
!120 = !DILocation(line: 94, column: 13, scope: !38)
!121 = !{!122, !122, i64 0}
!122 = !{!"int", !76, i64 0}
!123 = !DILocation(line: 95, column: 20, scope: !38)
!124 = !DILocation(line: 95, column: 8, scope: !38)
!125 = !DILocation(line: 95, column: 18, scope: !38)
!126 = !DILocation(line: 96, column: 2, scope: !38)
!127 = !DILocation(line: 96, column: 32, scope: !38)
!128 = !{!75, !75, i64 0}
!129 = !DILocation(line: 100, column: 2, scope: !38)
!130 = !DILocation(line: 99, column: 9, scope: !38)
!131 = !DILocation(line: 104, column: 7, scope: !62)
!132 = !DILocation(line: 105, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !62, file: !8, line: 105, column: 7)
!134 = !DILocation(line: 105, column: 11, scope: !133)
!135 = !DILocation(line: 105, column: 7, scope: !62)
!136 = !DILocation(line: 107, column: 18, scope: !62)
!137 = !DILocation(line: 107, column: 7, scope: !62)
!138 = !DILocation(line: 0, scope: !62)
!139 = !DILocation(line: 108, column: 10, scope: !140)
!140 = distinct !DILexicalBlock(scope: !62, file: !8, line: 108, column: 7)
!141 = !DILocation(line: 108, column: 7, scope: !140)
!142 = !DILocation(line: 108, column: 15, scope: !140)
!143 = !DILocation(line: 108, column: 7, scope: !62)
!144 = !DILocation(line: 110, column: 15, scope: !145)
!145 = distinct !DILexicalBlock(scope: !62, file: !8, line: 110, column: 7)
!146 = !DILocation(line: 110, column: 26, scope: !145)
!147 = !DILocation(line: 110, column: 32, scope: !145)
!148 = !DILocation(line: 110, column: 29, scope: !145)
!149 = !DILocation(line: 110, column: 42, scope: !145)
!150 = !DILocation(line: 110, column: 7, scope: !62)
!151 = !DILocation(line: 112, column: 15, scope: !62)
!152 = !DILocation(line: 112, column: 7, scope: !62)
!153 = !DILocation(line: 112, column: 24, scope: !62)
!154 = !DILocation(line: 113, column: 24, scope: !62)
!155 = !DILocation(line: 113, column: 34, scope: !62)
!156 = !DILocation(line: 113, column: 18, scope: !62)
!157 = !DILocation(line: 113, column: 40, scope: !62)
!158 = !DILocation(line: 114, column: 21, scope: !62)
!159 = !DILocation(line: 115, column: 2, scope: !63)
!160 = distinct !{!160, !161, !162, !100}
!161 = !DILocation(line: 100, column: 2, scope: !64)
!162 = !DILocation(line: 115, column: 2, scope: !64)
!163 = !DILocation(line: 117, column: 30, scope: !38)
!164 = !DILocation(line: 117, column: 2, scope: !38)
!165 = !DILocation(line: 117, column: 28, scope: !38)
!166 = !DILocation(line: 118, column: 33, scope: !38)
!167 = !DILocation(line: 118, column: 12, scope: !38)
!168 = !DILocation(line: 118, column: 10, scope: !38)
!169 = !DILocation(line: 120, column: 2, scope: !38)
!170 = !DILocation(line: 121, column: 1, scope: !38)
!171 = distinct !DISubprogram(name: "cb_internal_best_match", scope: !8, file: !8, line: 47, type: !172, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !176)
!172 = !DISubroutineType(types: !173)
!173 = !{!19, !19, !174, !45}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!176 = !{!177, !178, !179, !180, !182, !183}
!177 = !DILocalVariable(name: "p", arg: 1, scope: !171, file: !8, line: 47, type: !19)
!178 = !DILocalVariable(name: "k", arg: 2, scope: !171, file: !8, line: 48, type: !174)
!179 = !DILocalVariable(name: "klen", arg: 3, scope: !171, file: !8, line: 48, type: !45)
!180 = !DILocalVariable(name: "q", scope: !181, file: !8, line: 51, type: !19)
!181 = distinct !DILexicalBlock(scope: !171, file: !8, line: 50, column: 27)
!182 = !DILocalVariable(name: "c", scope: !181, file: !8, line: 52, type: !30)
!183 = !DILocalVariable(name: "direction", scope: !181, file: !8, line: 53, type: !45)
!184 = !DILocation(line: 0, scope: !171)
!185 = !DILocation(line: 50, column: 13, scope: !171)
!186 = !DILocation(line: 50, column: 11, scope: !171)
!187 = !DILocation(line: 50, column: 2, scope: !171)
!188 = !DILocation(line: 51, column: 34, scope: !181)
!189 = !DILocation(line: 51, column: 23, scope: !181)
!190 = !DILocation(line: 0, scope: !181)
!191 = !DILocation(line: 52, column: 18, scope: !181)
!192 = !DILocation(line: 52, column: 15, scope: !181)
!193 = !DILocation(line: 52, column: 23, scope: !181)
!194 = !DILocation(line: 52, column: 32, scope: !181)
!195 = !DILocation(line: 53, column: 31, scope: !181)
!196 = !DILocation(line: 53, column: 41, scope: !181)
!197 = !DILocation(line: 53, column: 25, scope: !181)
!198 = !DILocation(line: 53, column: 47, scope: !181)
!199 = !DILocation(line: 55, column: 7, scope: !181)
!200 = distinct !{!200, !187, !201, !99, !100}
!201 = !DILocation(line: 56, column: 2, scope: !171)
!202 = !DILocation(line: 57, column: 2, scope: !171)
!203 = distinct !DISubprogram(name: "cb_node_of", scope: !8, file: !8, line: 41, type: !204, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !208)
!204 = !DISubroutineType(types: !205)
!205 = !{!19, !206}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!208 = !{!209}
!209 = !DILocalVariable(name: "p", arg: 1, scope: !203, file: !8, line: 41, type: !206)
!210 = !DILocation(line: 0, scope: !203)
!211 = !DILocation(line: 43, column: 28, scope: !203)
!212 = !DILocation(line: 43, column: 41, scope: !203)
!213 = !DILocation(line: 43, column: 9, scope: !203)
!214 = !DILocation(line: 43, column: 2, scope: !203)
!215 = distinct !DISubprogram(name: "cb_lookup", scope: !8, file: !8, line: 123, type: !216, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!19, !41, !174, !45}
!218 = !{!219, !220, !221, !222}
!219 = !DILocalVariable(name: "t", arg: 1, scope: !215, file: !8, line: 123, type: !41)
!220 = !DILocalVariable(name: "k", arg: 2, scope: !215, file: !8, line: 123, type: !174)
!221 = !DILocalVariable(name: "klen", arg: 3, scope: !215, file: !8, line: 123, type: !45)
!222 = !DILocalVariable(name: "p", scope: !215, file: !8, line: 125, type: !19)
!223 = !DILocation(line: 0, scope: !215)
!224 = !DILocation(line: 125, column: 48, scope: !215)
!225 = !DILocation(line: 125, column: 22, scope: !215)
!226 = !DILocation(line: 127, column: 9, scope: !215)
!227 = !DILocation(line: 127, column: 11, scope: !215)
!228 = !DILocation(line: 127, column: 22, scope: !215)
!229 = !DILocation(line: 127, column: 15, scope: !215)
!230 = !DILocation(line: 127, column: 2, scope: !215)
!231 = distinct !DISubprogram(name: "cb_each", scope: !8, file: !8, line: 142, type: !232, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !239)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !41, !174, !45, !234, !238}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "cb_iter", file: !8, line: 36, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!10, !19, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !250, !251}
!240 = !DILocalVariable(name: "t", arg: 1, scope: !231, file: !8, line: 142, type: !41)
!241 = !DILocalVariable(name: "kpfx", arg: 2, scope: !231, file: !8, line: 142, type: !174)
!242 = !DILocalVariable(name: "klen", arg: 3, scope: !231, file: !8, line: 142, type: !45)
!243 = !DILocalVariable(name: "fn", arg: 4, scope: !231, file: !8, line: 143, type: !234)
!244 = !DILocalVariable(name: "arg", arg: 5, scope: !231, file: !8, line: 143, type: !238)
!245 = !DILocalVariable(name: "p", scope: !231, file: !8, line: 145, type: !19)
!246 = !DILocalVariable(name: "top", scope: !231, file: !8, line: 146, type: !19)
!247 = !DILocalVariable(name: "i", scope: !231, file: !8, line: 147, type: !45)
!248 = !DILocalVariable(name: "q", scope: !249, file: !8, line: 153, type: !19)
!249 = distinct !DILexicalBlock(scope: !231, file: !8, line: 152, column: 27)
!250 = !DILocalVariable(name: "c", scope: !249, file: !8, line: 154, type: !30)
!251 = !DILocalVariable(name: "direction", scope: !249, file: !8, line: 155, type: !45)
!252 = !DILocation(line: 0, scope: !231)
!253 = !DILocation(line: 145, column: 25, scope: !231)
!254 = !DILocation(line: 149, column: 7, scope: !255)
!255 = distinct !DILexicalBlock(scope: !231, file: !8, line: 149, column: 6)
!256 = !DILocation(line: 149, column: 6, scope: !231)
!257 = !DILocation(line: 152, column: 13, scope: !231)
!258 = !DILocation(line: 152, column: 11, scope: !231)
!259 = !DILocation(line: 152, column: 2, scope: !231)
!260 = !DILocation(line: 162, column: 16, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !8, line: 162, column: 2)
!262 = distinct !DILexicalBlock(scope: !231, file: !8, line: 162, column: 2)
!263 = !DILocation(line: 162, column: 2, scope: !262)
!264 = !DILocation(line: 153, column: 34, scope: !249)
!265 = !DILocation(line: 153, column: 23, scope: !249)
!266 = !DILocation(line: 0, scope: !249)
!267 = !DILocation(line: 154, column: 18, scope: !249)
!268 = !DILocation(line: 154, column: 15, scope: !249)
!269 = !DILocation(line: 154, column: 23, scope: !249)
!270 = !DILocation(line: 154, column: 32, scope: !249)
!271 = !DILocation(line: 155, column: 31, scope: !249)
!272 = !DILocation(line: 155, column: 41, scope: !249)
!273 = !DILocation(line: 155, column: 25, scope: !249)
!274 = !DILocation(line: 155, column: 47, scope: !249)
!275 = !DILocation(line: 157, column: 7, scope: !249)
!276 = !DILocation(line: 158, column: 7, scope: !249)
!277 = distinct !{!277, !259, !278, !99, !100}
!278 = !DILocation(line: 160, column: 2, scope: !231)
!279 = distinct !{!279, !263, !280, !99, !100}
!280 = !DILocation(line: 165, column: 2, scope: !262)
!281 = !DILocation(line: 163, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !8, line: 163, column: 7)
!283 = distinct !DILexicalBlock(scope: !261, file: !8, line: 162, column: 29)
!284 = !DILocation(line: 163, column: 18, scope: !282)
!285 = !DILocation(line: 163, column: 15, scope: !282)
!286 = !DILocation(line: 162, column: 25, scope: !261)
!287 = !DILocation(line: 163, column: 7, scope: !283)
!288 = !DILocation(line: 166, column: 2, scope: !231)
!289 = !DILocation(line: 167, column: 1, scope: !231)
!290 = distinct !DISubprogram(name: "cb_descend", scope: !8, file: !8, line: 130, type: !291, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{!10, !19, !234, !238}
!293 = !{!294, !295, !296, !297, !300}
!294 = !DILocalVariable(name: "p", arg: 1, scope: !290, file: !8, line: 130, type: !19)
!295 = !DILocalVariable(name: "fn", arg: 2, scope: !290, file: !8, line: 130, type: !234)
!296 = !DILocalVariable(name: "arg", arg: 3, scope: !290, file: !8, line: 130, type: !238)
!297 = !DILocalVariable(name: "q", scope: !298, file: !8, line: 133, type: !19)
!298 = distinct !DILexicalBlock(scope: !299, file: !8, line: 132, column: 24)
!299 = distinct !DILexicalBlock(scope: !290, file: !8, line: 132, column: 6)
!300 = !DILocalVariable(name: "n", scope: !298, file: !8, line: 134, type: !10)
!301 = !DILocation(line: 0, scope: !290)
!302 = !DILocation(line: 132, column: 10, scope: !299)
!303 = !DILocation(line: 132, column: 8, scope: !299)
!304 = !DILocation(line: 132, column: 6, scope: !290)
!305 = !DILocation(line: 133, column: 34, scope: !298)
!306 = !DILocation(line: 133, column: 23, scope: !298)
!307 = !DILocation(line: 0, scope: !298)
!308 = !DILocation(line: 134, column: 31, scope: !298)
!309 = !DILocation(line: 134, column: 20, scope: !298)
!310 = !DILocation(line: 136, column: 12, scope: !298)
!311 = !DILocation(line: 136, column: 10, scope: !298)
!312 = !DILocation(line: 136, column: 41, scope: !298)
!313 = !DILocation(line: 136, column: 30, scope: !298)
!314 = !DILocation(line: 138, column: 10, scope: !315)
!315 = distinct !DILexicalBlock(scope: !299, file: !8, line: 137, column: 9)
!316 = !DILocation(line: 138, column: 3, scope: !315)
!317 = !DILocation(line: 0, scope: !299)
!318 = !DILocation(line: 140, column: 1, scope: !290)
