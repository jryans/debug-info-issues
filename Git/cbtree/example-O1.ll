; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.cb_tree = type { %struct.cb_node* }
%struct.cb_node = type { [2 x %struct.cb_node*], i32, i8, [0 x i8] }

@__func__.cb_insert = private unnamed_addr constant [10 x i8] c"cb_insert\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"example.c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"!((uintptr_t)node & 1)\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define %struct.cb_node* @cb_insert(%struct.cb_tree* nocapture %t, %struct.cb_node* %node, i64 %klen) local_unnamed_addr #0 !dbg !38 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_tree* %t, metadata !50, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata %struct.cb_node* %node, metadata !51, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i64 %klen, metadata !52, metadata !DIExpression()), !dbg !67
  %0 = ptrtoint %struct.cb_node* %node to i64, !dbg !68
  %and = and i64 %0, 1, !dbg !68
  %tobool.not = icmp eq i64 %and, 0, !dbg !68
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !68, !prof !69

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cb_insert, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !68
  unreachable, !dbg !68

cond.end:                                         ; preds = %entry
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %t, i64 0, i32 0, !dbg !70
  %1 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !70, !tbaa !72
  %tobool3.not = icmp eq %struct.cb_node* %1, null, !dbg !77
  br i1 %tobool3.not, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %cond.end
  store %struct.cb_node* %node, %struct.cb_node** %root, align 8, !dbg !79, !tbaa !72
  br label %cleanup90, !dbg !81

if.end:                                           ; preds = %cond.end
  %arraydecay = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 3, i64 0, !dbg !82
  %call = call fastcc %struct.cb_node* @cb_internal_best_match(%struct.cb_node* nonnull %1, i8* nonnull %arraydecay, i64 %klen), !dbg !83
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !60, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i64 0, metadata !53, metadata !DIExpression()), !dbg !67
  %cmp159.not = icmp eq i64 %klen, 0, !dbg !84
  br i1 %cmp159.not, label %cleanup90, label %for.body, !dbg !87

for.body:                                         ; preds = %if.end, %for.inc
  %newbyte.0160 = phi i64 [ %inc, %for.inc ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %newbyte.0160, metadata !53, metadata !DIExpression()), !dbg !67
  %arrayidx = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 3, i64 %newbyte.0160, !dbg !88
  %2 = load i8, i8* %arrayidx, align 1, !dbg !88, !tbaa !91
  %arrayidx10 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 3, i64 %newbyte.0160, !dbg !92
  %3 = load i8, i8* %arrayidx10, align 1, !dbg !92, !tbaa !91
  %cmp12.not = icmp eq i8 %2, %3, !dbg !93
  br i1 %cmp12.not, label %for.inc, label %different_byte_found, !dbg !94

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %newbyte.0160, 1, !dbg !95
  call void @llvm.dbg.value(metadata i64 %inc, metadata !53, metadata !DIExpression()), !dbg !67
  %exitcond.not = icmp eq i64 %inc, %klen, !dbg !84
  br i1 %exitcond.not, label %cleanup90, label %for.body, !dbg !87, !llvm.loop !96

different_byte_found:                             ; preds = %for.body
  call void @llvm.dbg.label(metadata !66), !dbg !100
  %xor154 = xor i8 %3, %2, !dbg !101
  %conv22 = zext i8 %xor154 to i64, !dbg !102
  call void @llvm.dbg.value(metadata i64 %conv22, metadata !54, metadata !DIExpression()), !dbg !67
  %shr = lshr i64 %conv22, 1, !dbg !103
  %or = or i64 %shr, %conv22, !dbg !104
  call void @llvm.dbg.value(metadata i64 %or, metadata !54, metadata !DIExpression()), !dbg !67
  %shr23 = lshr i64 %or, 2, !dbg !105
  %or24 = or i64 %shr23, %or, !dbg !106
  call void @llvm.dbg.value(metadata i64 %or24, metadata !54, metadata !DIExpression()), !dbg !67
  %shr25 = lshr i64 %or24, 4, !dbg !107
  %or26 = or i64 %shr25, %or24, !dbg !108
  call void @llvm.dbg.value(metadata i64 %or26, metadata !54, metadata !DIExpression()), !dbg !67
  %shr27 = lshr i64 %or26, 1, !dbg !109
  %neg = xor i64 %shr27, -1, !dbg !110
  %and28 = and i64 %or26, %neg, !dbg !111
  %xor29 = xor i64 %and28, 255, !dbg !112
  call void @llvm.dbg.value(metadata i64 %xor29, metadata !54, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i8 %2, metadata !55, metadata !DIExpression()), !dbg !67
  %conv32 = zext i8 %2 to i64, !dbg !113
  %or33 = or i64 %xor29, %conv32, !dbg !114
  %add = add i64 %or33, 1, !dbg !115
  %shr34 = lshr i64 %add, 8, !dbg !116
  call void @llvm.dbg.value(metadata i64 %shr34, metadata !56, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !67
  %conv36 = trunc i64 %newbyte.0160 to i32, !dbg !117
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 1, !dbg !118
  store i32 %conv36, i32* %byte, align 8, !dbg !119, !tbaa !120
  %conv37 = trunc i64 %xor29 to i8, !dbg !122
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 2, !dbg !123
  store i8 %conv37, i8* %otherbits, align 4, !dbg !124, !tbaa !91
  %sub.neg = mul i64 %shr34, -4294967296, !dbg !125
  %sext = add i64 %sub.neg, 4294967296, !dbg !125
  %idxprom = ashr exact i64 %sext, 32, !dbg !125
  %arrayidx38 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 0, i64 %idxprom, !dbg !125
  store %struct.cb_node* %node, %struct.cb_node** %arrayidx38, align 8, !dbg !126, !tbaa !127
  call void @llvm.dbg.value(metadata %struct.cb_node** %root, metadata !58, metadata !DIExpression()), !dbg !67
  br label %for.cond40, !dbg !128

for.cond40:                                       ; preds = %cleanup, %different_byte_found
  %wherep.0 = phi %struct.cb_node** [ %root, %different_byte_found ], [ %wherep.1, %cleanup ], !dbg !129
  call void @llvm.dbg.value(metadata %struct.cb_node** %wherep.0, metadata !58, metadata !DIExpression()), !dbg !67
  %4 = load %struct.cb_node*, %struct.cb_node** %wherep.0, align 8, !dbg !130, !tbaa !127
  call void @llvm.dbg.value(metadata %struct.cb_node* %4, metadata !60, metadata !DIExpression()), !dbg !67
  %5 = ptrtoint %struct.cb_node* %4 to i64, !dbg !131
  %and41 = and i64 %5, 1, !dbg !133
  %tobool42.not = icmp eq i64 %and41, 0, !dbg !133
  br i1 %tobool42.not, label %cleanup, label %if.end44, !dbg !134

if.end44:                                         ; preds = %for.cond40
  %6 = bitcast %struct.cb_node* %4 to i8*, !dbg !135
  %call45 = call fastcc %struct.cb_node* @cb_node_of(i8* %6), !dbg !136
  call void @llvm.dbg.value(metadata %struct.cb_node* %call45, metadata !61, metadata !DIExpression()), !dbg !137
  %byte46 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call45, i64 0, i32 1, !dbg !138
  %7 = load i32, i32* %byte46, align 8, !dbg !138, !tbaa !120
  %conv47 = zext i32 %7 to i64, !dbg !140
  %cmp48 = icmp ult i64 %newbyte.0160, %conv47, !dbg !141
  br i1 %cmp48, label %cleanup, label %if.end51, !dbg !142

if.end51:                                         ; preds = %if.end44
  %cmp54 = icmp eq i64 %newbyte.0160, %conv47, !dbg !143
  br i1 %cmp54, label %land.lhs.true, label %if.end61, !dbg !145

land.lhs.true:                                    ; preds = %if.end51
  %otherbits56 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call45, i64 0, i32 2, !dbg !146
  %8 = load i8, i8* %otherbits56, align 4, !dbg !146, !tbaa !91
  %conv57 = zext i8 %8 to i64, !dbg !147
  %cmp58 = icmp ult i64 %xor29, %conv57, !dbg !148
  br i1 %cmp58, label %cleanup, label %if.end61, !dbg !149

if.end61:                                         ; preds = %land.lhs.true, %if.end51
  %cmp64 = icmp ult i64 %conv47, %klen, !dbg !150
  br i1 %cmp64, label %cond.true66, label %cond.end73, !dbg !151

cond.true66:                                      ; preds = %if.end61
  %arrayidx70 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 3, i64 %conv47, !dbg !152
  %9 = load i8, i8* %arrayidx70, align 1, !dbg !152, !tbaa !91
  br label %cond.end73, !dbg !151

cond.end73:                                       ; preds = %if.end61, %cond.true66
  %cond = phi i8 [ %9, %cond.true66 ], [ 0, %if.end61 ], !dbg !151
  call void @llvm.dbg.value(metadata i8 %cond, metadata !55, metadata !DIExpression()), !dbg !67
  %otherbits75 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call45, i64 0, i32 2, !dbg !153
  %10 = load i8, i8* %otherbits75, align 4, !dbg !153, !tbaa !91
  %or78156 = or i8 %10, %cond, !dbg !154
  %or78 = zext i8 %or78156 to i64, !dbg !154
  %add79 = add nuw nsw i64 %or78, 1, !dbg !155
  %11 = lshr i64 %add79, 8, !dbg !156
  call void @llvm.dbg.value(metadata i64 %11, metadata !65, metadata !DIExpression()), !dbg !137
  %add.ptr = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call45, i64 0, i32 0, i64 %11, !dbg !157
  call void @llvm.dbg.value(metadata %struct.cb_node** %add.ptr, metadata !58, metadata !DIExpression()), !dbg !67
  br label %cleanup, !dbg !158

cleanup:                                          ; preds = %land.lhs.true, %if.end44, %for.cond40, %cond.end73
  %wherep.1 = phi %struct.cb_node** [ %add.ptr, %cond.end73 ], [ %wherep.0, %for.cond40 ], [ %wherep.0, %if.end44 ], [ %wherep.0, %land.lhs.true ], !dbg !67
  %switch = phi i1 [ true, %cond.end73 ], [ false, %for.cond40 ], [ false, %if.end44 ], [ false, %land.lhs.true ]
  call void @llvm.dbg.value(metadata %struct.cb_node** %wherep.1, metadata !58, metadata !DIExpression()), !dbg !67
  br i1 %switch, label %for.cond40, label %for.end85, !llvm.loop !159

for.end85:                                        ; preds = %cleanup
  %12 = load %struct.cb_node*, %struct.cb_node** %wherep.1, align 8, !dbg !162, !tbaa !127
  %sext155 = shl i64 %shr34, 32, !dbg !163
  %idxprom87 = ashr exact i64 %sext155, 32, !dbg !163
  %arrayidx88 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 0, i64 %idxprom87, !dbg !163
  store %struct.cb_node* %12, %struct.cb_node** %arrayidx88, align 8, !dbg !164, !tbaa !127
  %add89 = add i64 %0, 1, !dbg !165
  %13 = inttoptr i64 %add89 to %struct.cb_node*, !dbg !166
  store %struct.cb_node* %13, %struct.cb_node** %wherep.1, align 8, !dbg !167, !tbaa !127
  br label %cleanup90, !dbg !168

cleanup90:                                        ; preds = %for.inc, %if.end, %for.end85, %if.then
  %retval.0 = phi %struct.cb_node* [ null, %for.end85 ], [ null, %if.then ], [ %call, %if.end ], [ %call, %for.inc ], !dbg !67
  ret %struct.cb_node* %retval.0, !dbg !169
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly ssp uwtable
define internal fastcc %struct.cb_node* @cb_internal_best_match(%struct.cb_node* %p, i8* nocapture readonly %k, i64 %klen) unnamed_addr #2 !dbg !170 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_node* %p, metadata !176, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i8* %k, metadata !177, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i64 %klen, metadata !178, metadata !DIExpression()), !dbg !183
  %0 = ptrtoint %struct.cb_node* %p to i64, !dbg !184
  %and17 = and i64 %0, 1, !dbg !185
  %tobool.not18 = icmp eq i64 %and17, 0, !dbg !186
  br i1 %tobool.not18, label %while.end, label %while.body, !dbg !186

while.body:                                       ; preds = %entry, %cond.end
  %p.addr.019 = phi %struct.cb_node* [ %6, %cond.end ], [ %p, %entry ]
  call void @llvm.dbg.value(metadata %struct.cb_node* %p.addr.019, metadata !176, metadata !DIExpression()), !dbg !183
  %1 = bitcast %struct.cb_node* %p.addr.019 to i8*, !dbg !187
  %call = call fastcc %struct.cb_node* @cb_node_of(i8* %1), !dbg !188
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !179, metadata !DIExpression()), !dbg !189
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 1, !dbg !190
  %2 = load i32, i32* %byte, align 8, !dbg !190, !tbaa !120
  %conv = zext i32 %2 to i64, !dbg !191
  %cmp = icmp ult i64 %conv, %klen, !dbg !192
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !191

cond.true:                                        ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, i8* %k, i64 %conv, !dbg !193
  %3 = load i8, i8* %arrayidx, align 1, !dbg !193, !tbaa !91
  br label %cond.end, !dbg !191

cond.end:                                         ; preds = %while.body, %cond.true
  %cond = phi i8 [ %3, %cond.true ], [ 0, %while.body ], !dbg !191
  call void @llvm.dbg.value(metadata i8 %cond, metadata !181, metadata !DIExpression()), !dbg !189
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 2, !dbg !194
  %4 = load i8, i8* %otherbits, align 4, !dbg !194, !tbaa !91
  %or16 = or i8 %4, %cond, !dbg !195
  %or = zext i8 %or16 to i64, !dbg !195
  %add = add nuw nsw i64 %or, 1, !dbg !196
  %5 = lshr i64 %add, 8, !dbg !197
  call void @llvm.dbg.value(metadata i64 %5, metadata !182, metadata !DIExpression()), !dbg !189
  %arrayidx8 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 0, i64 %5, !dbg !198
  %6 = load %struct.cb_node*, %struct.cb_node** %arrayidx8, align 8, !dbg !198, !tbaa !127
  call void @llvm.dbg.value(metadata %struct.cb_node* %6, metadata !176, metadata !DIExpression()), !dbg !183
  %7 = ptrtoint %struct.cb_node* %6 to i64, !dbg !184
  %and = and i64 %7, 1, !dbg !185
  %tobool.not = icmp eq i64 %and, 0, !dbg !186
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !186, !llvm.loop !199

while.end:                                        ; preds = %cond.end, %entry
  %p.addr.0.lcssa = phi %struct.cb_node* [ %p, %entry ], [ %6, %cond.end ]
  ret %struct.cb_node* %p.addr.0.lcssa, !dbg !201
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define internal fastcc %struct.cb_node* @cb_node_of(i8* %p) unnamed_addr #4 !dbg !202 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !208, metadata !DIExpression()), !dbg !209
  %0 = ptrtoint i8* %p to i64, !dbg !210
  %sub = add i64 %0, -1, !dbg !211
  %1 = inttoptr i64 %sub to %struct.cb_node*, !dbg !212
  ret %struct.cb_node* %1, !dbg !213
}

; Function Attrs: nofree noinline nounwind readonly ssp uwtable
define %struct.cb_node* @cb_lookup(%struct.cb_tree* nocapture readonly %t, i8* nocapture readonly %k, i64 %klen) local_unnamed_addr #5 !dbg !214 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_tree* %t, metadata !218, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i8* %k, metadata !219, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i64 %klen, metadata !220, metadata !DIExpression()), !dbg !222
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %t, i64 0, i32 0, !dbg !223
  %0 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !223, !tbaa !72
  %call = call fastcc %struct.cb_node* @cb_internal_best_match(%struct.cb_node* %0, i8* %k, i64 %klen), !dbg !224
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !221, metadata !DIExpression()), !dbg !222
  %tobool.not = icmp eq %struct.cb_node* %call, null, !dbg !225
  br i1 %tobool.not, label %cond.end, label %land.lhs.true, !dbg !226

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 3, i64 0, !dbg !227
  %call2 = call i32 @memcmp(i8* nonnull %arraydecay, i8* %k, i64 %klen), !dbg !228
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !228
  %spec.select = select i1 %tobool3.not, %struct.cb_node* %call, %struct.cb_node* null, !dbg !225
  br label %cond.end, !dbg !225

cond.end:                                         ; preds = %land.lhs.true, %entry
  %cond = phi %struct.cb_node* [ null, %entry ], [ %spec.select, %land.lhs.true ], !dbg !225
  ret %struct.cb_node* %cond, !dbg !229
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: noinline nounwind ssp uwtable
define void @cb_each(%struct.cb_tree* nocapture readonly %t, i8* nocapture readonly %kpfx, i64 %klen, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg) local_unnamed_addr #0 !dbg !230 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_tree* %t, metadata !239, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i8* %kpfx, metadata !240, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i64 %klen, metadata !241, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i32 (%struct.cb_node*, i8*)* %fn, metadata !242, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i8* %arg, metadata !243, metadata !DIExpression()), !dbg !251
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %t, i64 0, i32 0, !dbg !252
  %0 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !252, !tbaa !72
  call void @llvm.dbg.value(metadata %struct.cb_node* %0, metadata !244, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata %struct.cb_node* %0, metadata !245, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !251
  %tobool.not = icmp eq %struct.cb_node* %0, null, !dbg !253
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader, !dbg !255

while.cond.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.cb_node* %0, metadata !244, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata %struct.cb_node* %0, metadata !245, metadata !DIExpression()), !dbg !251
  %1 = ptrtoint %struct.cb_node* %0 to i64, !dbg !256
  %and50 = and i64 %1, 1, !dbg !257
  %tobool1.not51 = icmp eq i64 %and50, 0, !dbg !258
  br i1 %tobool1.not51, label %for.cond.preheader, label %while.body, !dbg !258

for.cond.preheader:                               ; preds = %cond.end, %while.cond.preheader
  %top.0.lcssa = phi %struct.cb_node* [ %0, %while.cond.preheader ], [ %spec.select, %cond.end ], !dbg !251
  %p.0.lcssa = phi %struct.cb_node* [ %0, %while.cond.preheader ], [ %7, %cond.end ], !dbg !251
  call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !251
  %cmp1655.not = icmp eq i64 %klen, 0, !dbg !259
  br i1 %cmp1655.not, label %for.end, label %for.body, !dbg !262

while.body:                                       ; preds = %while.cond.preheader, %cond.end
  %p.053 = phi %struct.cb_node* [ %7, %cond.end ], [ %0, %while.cond.preheader ]
  %top.052 = phi %struct.cb_node* [ %spec.select, %cond.end ], [ %0, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata %struct.cb_node* %p.053, metadata !244, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata %struct.cb_node* %top.052, metadata !245, metadata !DIExpression()), !dbg !251
  %2 = bitcast %struct.cb_node* %p.053 to i8*, !dbg !263
  %call = call fastcc %struct.cb_node* @cb_node_of(i8* %2), !dbg !264
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !247, metadata !DIExpression()), !dbg !265
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 1, !dbg !266
  %3 = load i32, i32* %byte, align 8, !dbg !266, !tbaa !120
  %conv = zext i32 %3 to i64, !dbg !267
  %cmp = icmp ult i64 %conv, %klen, !dbg !268
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !267

cond.true:                                        ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, i8* %kpfx, i64 %conv, !dbg !269
  %4 = load i8, i8* %arrayidx, align 1, !dbg !269, !tbaa !91
  br label %cond.end, !dbg !267

cond.end:                                         ; preds = %while.body, %cond.true
  %cond = phi i8 [ %4, %cond.true ], [ 0, %while.body ], !dbg !267
  call void @llvm.dbg.value(metadata i8 %cond, metadata !249, metadata !DIExpression()), !dbg !265
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 2, !dbg !270
  %5 = load i8, i8* %otherbits, align 4, !dbg !270, !tbaa !91
  %or49 = or i8 %5, %cond, !dbg !271
  %or = zext i8 %or49 to i64, !dbg !271
  %add = add nuw nsw i64 %or, 1, !dbg !272
  %6 = lshr i64 %add, 8, !dbg !273
  call void @llvm.dbg.value(metadata i64 %6, metadata !250, metadata !DIExpression()), !dbg !265
  %arrayidx9 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 0, i64 %6, !dbg !274
  %7 = load %struct.cb_node*, %struct.cb_node** %arrayidx9, align 8, !dbg !274, !tbaa !127
  call void @llvm.dbg.value(metadata %struct.cb_node* %7, metadata !244, metadata !DIExpression()), !dbg !251
  %spec.select = select i1 %cmp, %struct.cb_node* %7, %struct.cb_node* %top.052, !dbg !275
  call void @llvm.dbg.value(metadata %struct.cb_node* %spec.select, metadata !245, metadata !DIExpression()), !dbg !251
  %8 = ptrtoint %struct.cb_node* %7 to i64, !dbg !256
  %and = and i64 %8, 1, !dbg !257
  %tobool1.not = icmp eq i64 %and, 0, !dbg !258
  br i1 %tobool1.not, label %for.cond.preheader, label %while.body, !dbg !258, !llvm.loop !276

for.cond:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %inc, metadata !246, metadata !DIExpression()), !dbg !251
  %exitcond.not = icmp eq i64 %inc, %klen, !dbg !259
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !262, !llvm.loop !278

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.056 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.056, metadata !246, metadata !DIExpression()), !dbg !251
  %arrayidx18 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %p.0.lcssa, i64 0, i32 3, i64 %i.056, !dbg !280
  %9 = load i8, i8* %arrayidx18, align 1, !dbg !280, !tbaa !91
  %arrayidx20 = getelementptr inbounds i8, i8* %kpfx, i64 %i.056, !dbg !283
  %10 = load i8, i8* %arrayidx20, align 1, !dbg !283, !tbaa !91
  %cmp22.not = icmp eq i8 %9, %10, !dbg !284
  %inc = add nuw i64 %i.056, 1, !dbg !285
  call void @llvm.dbg.value(metadata i64 %inc, metadata !246, metadata !DIExpression()), !dbg !251
  br i1 %cmp22.not, label %for.cond, label %cleanup, !dbg !286

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %call26 = call fastcc i32 @cb_descend(%struct.cb_node* %top.0.lcssa, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg), !dbg !287
  br label %cleanup, !dbg !288

cleanup:                                          ; preds = %for.body, %entry, %for.end
  ret void, !dbg !288
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc i32 @cb_descend(%struct.cb_node* %p, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg) unnamed_addr #0 !dbg !289 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_node* %p, metadata !293, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i32 (%struct.cb_node*, i8*)* %fn, metadata !294, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.value(metadata i8* %arg, metadata !295, metadata !DIExpression()), !dbg !300
  %0 = ptrtoint %struct.cb_node* %p to i64, !dbg !301
  %and = and i64 %0, 1, !dbg !302
  %tobool.not = icmp eq i64 %and, 0, !dbg !302
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !303

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.cb_node* %p to i8*, !dbg !304
  %call = call fastcc %struct.cb_node* @cb_node_of(i8* %1), !dbg !305
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !296, metadata !DIExpression()), !dbg !306
  %arrayidx = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 0, i64 0, !dbg !307
  %2 = load %struct.cb_node*, %struct.cb_node** %arrayidx, align 8, !dbg !307, !tbaa !127
  %call1 = call fastcc i32 @cb_descend(%struct.cb_node* %2, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg), !dbg !308
  call void @llvm.dbg.value(metadata i32 %call1, metadata !299, metadata !DIExpression()), !dbg !306
  %cmp = icmp eq i32 %call1, 1, !dbg !309
  br i1 %cmp, label %return, label %cond.false, !dbg !310

cond.false:                                       ; preds = %if.then
  %arrayidx3 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 0, i64 1, !dbg !311
  %3 = load %struct.cb_node*, %struct.cb_node** %arrayidx3, align 8, !dbg !311, !tbaa !127
  %call4 = call fastcc i32 @cb_descend(%struct.cb_node* %3, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg), !dbg !312
  br label %return, !dbg !310

if.else:                                          ; preds = %entry
  %call5 = call i32 %fn(%struct.cb_node* %p, i8* %arg) #9, !dbg !313
  br label %return, !dbg !315

return:                                           ; preds = %cond.false, %if.then, %if.else
  %retval.0 = phi i32 [ %call5, %if.else ], [ %call4, %cond.false ], [ 1, %if.then ], !dbg !316
  ret i32 %retval.0, !dbg !317
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind readonly ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { nounwind }

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
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cb_next", file: !8, line: 21, baseType: !11, size: 32, elements: !12)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "CB_CONTINUE", value: 0)
!14 = !DIEnumerator(name: "CB_BREAK", value: 1)
!15 = !{!16, !19}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !17, line: 34, baseType: !18)
!17 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h", directory: "")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cb_node", file: !8, line: 6, size: 192, elements: !21)
!21 = !{!22, !26, !29, !33}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !20, file: !8, line: 7, baseType: !23, size: 128)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 2)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !20, file: !8, line: 12, baseType: !27, size: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 31, baseType: !11)
!28 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!29 = !DIDerivedType(tag: DW_TAG_member, name: "otherbits", scope: !20, file: !8, line: 13, baseType: !30, size: 8, offset: 160)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !31, line: 31, baseType: !32)
!31 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h", directory: "")
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !20, file: !8, line: 14, baseType: !34, offset: 168)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: -1)
!37 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!38 = distinct !DISubprogram(name: "cb_insert", scope: !8, file: !8, line: 62, type: !39, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !49)
!39 = !DISubroutineType(types: !40)
!40 = !{!19, !41, !19, !45}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cb_tree", file: !8, line: 17, size: 64, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !42, file: !8, line: 18, baseType: !19, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 31, baseType: !47)
!46 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !48, line: 94, baseType: !18)
!48 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h", directory: "")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !58, !60, !61, !65, !66}
!50 = !DILocalVariable(name: "t", arg: 1, scope: !38, file: !8, line: 62, type: !41)
!51 = !DILocalVariable(name: "node", arg: 2, scope: !38, file: !8, line: 62, type: !19)
!52 = !DILocalVariable(name: "klen", arg: 3, scope: !38, file: !8, line: 62, type: !45)
!53 = !DILocalVariable(name: "newbyte", scope: !38, file: !8, line: 64, type: !45)
!54 = !DILocalVariable(name: "newotherbits", scope: !38, file: !8, line: 64, type: !45)
!55 = !DILocalVariable(name: "c", scope: !38, file: !8, line: 65, type: !30)
!56 = !DILocalVariable(name: "newdirection", scope: !38, file: !8, line: 66, type: !57)
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DILocalVariable(name: "wherep", scope: !38, file: !8, line: 67, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!60 = !DILocalVariable(name: "p", scope: !38, file: !8, line: 67, type: !19)
!61 = !DILocalVariable(name: "q", scope: !62, file: !8, line: 102, type: !19)
!62 = distinct !DILexicalBlock(scope: !63, file: !8, line: 101, column: 11)
!63 = distinct !DILexicalBlock(scope: !64, file: !8, line: 101, column: 2)
!64 = distinct !DILexicalBlock(scope: !38, file: !8, line: 101, column: 2)
!65 = !DILocalVariable(name: "direction", scope: !62, file: !8, line: 103, type: !45)
!66 = !DILabel(scope: !38, name: "different_byte_found", file: !8, line: 86)
!67 = !DILocation(line: 0, scope: !38)
!68 = !DILocation(line: 69, column: 2, scope: !38)
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !DILocation(line: 71, column: 10, scope: !71)
!71 = distinct !DILexicalBlock(scope: !38, file: !8, line: 71, column: 6)
!72 = !{!73, !74, i64 0}
!73 = !{!"cb_tree", !74, i64 0}
!74 = !{!"any pointer", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C/C++ TBAA"}
!77 = !DILocation(line: 71, column: 7, scope: !71)
!78 = !DILocation(line: 71, column: 6, scope: !38)
!79 = !DILocation(line: 72, column: 11, scope: !80)
!80 = distinct !DILexicalBlock(scope: !71, file: !8, line: 71, column: 16)
!81 = !DILocation(line: 73, column: 3, scope: !80)
!82 = !DILocation(line: 77, column: 38, scope: !38)
!83 = !DILocation(line: 77, column: 6, scope: !38)
!84 = !DILocation(line: 80, column: 28, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !8, line: 80, column: 2)
!86 = distinct !DILexicalBlock(scope: !38, file: !8, line: 80, column: 2)
!87 = !DILocation(line: 80, column: 2, scope: !86)
!88 = !DILocation(line: 81, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !8, line: 81, column: 7)
!90 = distinct !DILexicalBlock(scope: !85, file: !8, line: 80, column: 47)
!91 = !{!75, !75, i64 0}
!92 = !DILocation(line: 81, column: 24, scope: !89)
!93 = !DILocation(line: 81, column: 21, scope: !89)
!94 = !DILocation(line: 81, column: 7, scope: !90)
!95 = !DILocation(line: 80, column: 43, scope: !85)
!96 = distinct !{!96, !87, !97, !98, !99}
!97 = !DILocation(line: 83, column: 2, scope: !86)
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !DILocation(line: 86, column: 1, scope: !38)
!101 = !DILocation(line: 87, column: 31, scope: !38)
!102 = !DILocation(line: 87, column: 17, scope: !38)
!103 = !DILocation(line: 88, column: 31, scope: !38)
!104 = !DILocation(line: 88, column: 15, scope: !38)
!105 = !DILocation(line: 89, column: 31, scope: !38)
!106 = !DILocation(line: 89, column: 15, scope: !38)
!107 = !DILocation(line: 90, column: 31, scope: !38)
!108 = !DILocation(line: 90, column: 15, scope: !38)
!109 = !DILocation(line: 91, column: 48, scope: !38)
!110 = !DILocation(line: 91, column: 33, scope: !38)
!111 = !DILocation(line: 91, column: 31, scope: !38)
!112 = !DILocation(line: 91, column: 55, scope: !38)
!113 = !DILocation(line: 93, column: 38, scope: !38)
!114 = !DILocation(line: 93, column: 36, scope: !38)
!115 = !DILocation(line: 93, column: 20, scope: !38)
!116 = !DILocation(line: 93, column: 42, scope: !38)
!117 = !DILocation(line: 95, column: 15, scope: !38)
!118 = !DILocation(line: 95, column: 8, scope: !38)
!119 = !DILocation(line: 95, column: 13, scope: !38)
!120 = !{!121, !121, i64 0}
!121 = !{!"int", !75, i64 0}
!122 = !DILocation(line: 96, column: 20, scope: !38)
!123 = !DILocation(line: 96, column: 8, scope: !38)
!124 = !DILocation(line: 96, column: 18, scope: !38)
!125 = !DILocation(line: 97, column: 2, scope: !38)
!126 = !DILocation(line: 97, column: 32, scope: !38)
!127 = !{!74, !74, i64 0}
!128 = !DILocation(line: 101, column: 2, scope: !38)
!129 = !DILocation(line: 100, column: 9, scope: !38)
!130 = !DILocation(line: 105, column: 7, scope: !62)
!131 = !DILocation(line: 106, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !62, file: !8, line: 106, column: 7)
!133 = !DILocation(line: 106, column: 11, scope: !132)
!134 = !DILocation(line: 106, column: 7, scope: !62)
!135 = !DILocation(line: 108, column: 18, scope: !62)
!136 = !DILocation(line: 108, column: 7, scope: !62)
!137 = !DILocation(line: 0, scope: !62)
!138 = !DILocation(line: 109, column: 10, scope: !139)
!139 = distinct !DILexicalBlock(scope: !62, file: !8, line: 109, column: 7)
!140 = !DILocation(line: 109, column: 7, scope: !139)
!141 = !DILocation(line: 109, column: 15, scope: !139)
!142 = !DILocation(line: 109, column: 7, scope: !62)
!143 = !DILocation(line: 111, column: 15, scope: !144)
!144 = distinct !DILexicalBlock(scope: !62, file: !8, line: 111, column: 7)
!145 = !DILocation(line: 111, column: 26, scope: !144)
!146 = !DILocation(line: 111, column: 32, scope: !144)
!147 = !DILocation(line: 111, column: 29, scope: !144)
!148 = !DILocation(line: 111, column: 42, scope: !144)
!149 = !DILocation(line: 111, column: 7, scope: !62)
!150 = !DILocation(line: 113, column: 15, scope: !62)
!151 = !DILocation(line: 113, column: 7, scope: !62)
!152 = !DILocation(line: 113, column: 24, scope: !62)
!153 = !DILocation(line: 114, column: 24, scope: !62)
!154 = !DILocation(line: 114, column: 34, scope: !62)
!155 = !DILocation(line: 114, column: 18, scope: !62)
!156 = !DILocation(line: 114, column: 40, scope: !62)
!157 = !DILocation(line: 115, column: 21, scope: !62)
!158 = !DILocation(line: 116, column: 2, scope: !63)
!159 = distinct !{!159, !160, !161, !99}
!160 = !DILocation(line: 101, column: 2, scope: !64)
!161 = !DILocation(line: 116, column: 2, scope: !64)
!162 = !DILocation(line: 118, column: 30, scope: !38)
!163 = !DILocation(line: 118, column: 2, scope: !38)
!164 = !DILocation(line: 118, column: 28, scope: !38)
!165 = !DILocation(line: 119, column: 33, scope: !38)
!166 = !DILocation(line: 119, column: 12, scope: !38)
!167 = !DILocation(line: 119, column: 10, scope: !38)
!168 = !DILocation(line: 121, column: 2, scope: !38)
!169 = !DILocation(line: 122, column: 1, scope: !38)
!170 = distinct !DISubprogram(name: "cb_internal_best_match", scope: !8, file: !8, line: 48, type: !171, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !175)
!171 = !DISubroutineType(types: !172)
!172 = !{!19, !19, !173, !45}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!175 = !{!176, !177, !178, !179, !181, !182}
!176 = !DILocalVariable(name: "p", arg: 1, scope: !170, file: !8, line: 48, type: !19)
!177 = !DILocalVariable(name: "k", arg: 2, scope: !170, file: !8, line: 49, type: !173)
!178 = !DILocalVariable(name: "klen", arg: 3, scope: !170, file: !8, line: 49, type: !45)
!179 = !DILocalVariable(name: "q", scope: !180, file: !8, line: 52, type: !19)
!180 = distinct !DILexicalBlock(scope: !170, file: !8, line: 51, column: 27)
!181 = !DILocalVariable(name: "c", scope: !180, file: !8, line: 53, type: !30)
!182 = !DILocalVariable(name: "direction", scope: !180, file: !8, line: 54, type: !45)
!183 = !DILocation(line: 0, scope: !170)
!184 = !DILocation(line: 51, column: 13, scope: !170)
!185 = !DILocation(line: 51, column: 11, scope: !170)
!186 = !DILocation(line: 51, column: 2, scope: !170)
!187 = !DILocation(line: 52, column: 34, scope: !180)
!188 = !DILocation(line: 52, column: 23, scope: !180)
!189 = !DILocation(line: 0, scope: !180)
!190 = !DILocation(line: 53, column: 18, scope: !180)
!191 = !DILocation(line: 53, column: 15, scope: !180)
!192 = !DILocation(line: 53, column: 23, scope: !180)
!193 = !DILocation(line: 53, column: 32, scope: !180)
!194 = !DILocation(line: 54, column: 31, scope: !180)
!195 = !DILocation(line: 54, column: 41, scope: !180)
!196 = !DILocation(line: 54, column: 25, scope: !180)
!197 = !DILocation(line: 54, column: 47, scope: !180)
!198 = !DILocation(line: 56, column: 7, scope: !180)
!199 = distinct !{!199, !186, !200, !98, !99}
!200 = !DILocation(line: 57, column: 2, scope: !170)
!201 = !DILocation(line: 58, column: 2, scope: !170)
!202 = distinct !DISubprogram(name: "cb_node_of", scope: !8, file: !8, line: 42, type: !203, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !207)
!203 = !DISubroutineType(types: !204)
!204 = !{!19, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!207 = !{!208}
!208 = !DILocalVariable(name: "p", arg: 1, scope: !202, file: !8, line: 42, type: !205)
!209 = !DILocation(line: 0, scope: !202)
!210 = !DILocation(line: 44, column: 28, scope: !202)
!211 = !DILocation(line: 44, column: 41, scope: !202)
!212 = !DILocation(line: 44, column: 9, scope: !202)
!213 = !DILocation(line: 44, column: 2, scope: !202)
!214 = distinct !DISubprogram(name: "cb_lookup", scope: !8, file: !8, line: 124, type: !215, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!19, !41, !173, !45}
!217 = !{!218, !219, !220, !221}
!218 = !DILocalVariable(name: "t", arg: 1, scope: !214, file: !8, line: 124, type: !41)
!219 = !DILocalVariable(name: "k", arg: 2, scope: !214, file: !8, line: 124, type: !173)
!220 = !DILocalVariable(name: "klen", arg: 3, scope: !214, file: !8, line: 124, type: !45)
!221 = !DILocalVariable(name: "p", scope: !214, file: !8, line: 126, type: !19)
!222 = !DILocation(line: 0, scope: !214)
!223 = !DILocation(line: 126, column: 48, scope: !214)
!224 = !DILocation(line: 126, column: 22, scope: !214)
!225 = !DILocation(line: 128, column: 9, scope: !214)
!226 = !DILocation(line: 128, column: 11, scope: !214)
!227 = !DILocation(line: 128, column: 22, scope: !214)
!228 = !DILocation(line: 128, column: 15, scope: !214)
!229 = !DILocation(line: 128, column: 2, scope: !214)
!230 = distinct !DISubprogram(name: "cb_each", scope: !8, file: !8, line: 143, type: !231, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !238)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !41, !173, !45, !233, !237}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "cb_iter", file: !8, line: 37, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!10, !19, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !249, !250}
!239 = !DILocalVariable(name: "t", arg: 1, scope: !230, file: !8, line: 143, type: !41)
!240 = !DILocalVariable(name: "kpfx", arg: 2, scope: !230, file: !8, line: 143, type: !173)
!241 = !DILocalVariable(name: "klen", arg: 3, scope: !230, file: !8, line: 143, type: !45)
!242 = !DILocalVariable(name: "fn", arg: 4, scope: !230, file: !8, line: 144, type: !233)
!243 = !DILocalVariable(name: "arg", arg: 5, scope: !230, file: !8, line: 144, type: !237)
!244 = !DILocalVariable(name: "p", scope: !230, file: !8, line: 146, type: !19)
!245 = !DILocalVariable(name: "top", scope: !230, file: !8, line: 147, type: !19)
!246 = !DILocalVariable(name: "i", scope: !230, file: !8, line: 148, type: !45)
!247 = !DILocalVariable(name: "q", scope: !248, file: !8, line: 154, type: !19)
!248 = distinct !DILexicalBlock(scope: !230, file: !8, line: 153, column: 27)
!249 = !DILocalVariable(name: "c", scope: !248, file: !8, line: 155, type: !30)
!250 = !DILocalVariable(name: "direction", scope: !248, file: !8, line: 156, type: !45)
!251 = !DILocation(line: 0, scope: !230)
!252 = !DILocation(line: 146, column: 25, scope: !230)
!253 = !DILocation(line: 150, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !230, file: !8, line: 150, column: 6)
!255 = !DILocation(line: 150, column: 6, scope: !230)
!256 = !DILocation(line: 153, column: 13, scope: !230)
!257 = !DILocation(line: 153, column: 11, scope: !230)
!258 = !DILocation(line: 153, column: 2, scope: !230)
!259 = !DILocation(line: 163, column: 16, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !8, line: 163, column: 2)
!261 = distinct !DILexicalBlock(scope: !230, file: !8, line: 163, column: 2)
!262 = !DILocation(line: 163, column: 2, scope: !261)
!263 = !DILocation(line: 154, column: 34, scope: !248)
!264 = !DILocation(line: 154, column: 23, scope: !248)
!265 = !DILocation(line: 0, scope: !248)
!266 = !DILocation(line: 155, column: 18, scope: !248)
!267 = !DILocation(line: 155, column: 15, scope: !248)
!268 = !DILocation(line: 155, column: 23, scope: !248)
!269 = !DILocation(line: 155, column: 32, scope: !248)
!270 = !DILocation(line: 156, column: 31, scope: !248)
!271 = !DILocation(line: 156, column: 41, scope: !248)
!272 = !DILocation(line: 156, column: 25, scope: !248)
!273 = !DILocation(line: 156, column: 47, scope: !248)
!274 = !DILocation(line: 158, column: 7, scope: !248)
!275 = !DILocation(line: 159, column: 7, scope: !248)
!276 = distinct !{!276, !258, !277, !98, !99}
!277 = !DILocation(line: 161, column: 2, scope: !230)
!278 = distinct !{!278, !262, !279, !98, !99}
!279 = !DILocation(line: 166, column: 2, scope: !261)
!280 = !DILocation(line: 164, column: 7, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !8, line: 164, column: 7)
!282 = distinct !DILexicalBlock(scope: !260, file: !8, line: 163, column: 29)
!283 = !DILocation(line: 164, column: 18, scope: !281)
!284 = !DILocation(line: 164, column: 15, scope: !281)
!285 = !DILocation(line: 163, column: 25, scope: !260)
!286 = !DILocation(line: 164, column: 7, scope: !282)
!287 = !DILocation(line: 167, column: 2, scope: !230)
!288 = !DILocation(line: 168, column: 1, scope: !230)
!289 = distinct !DISubprogram(name: "cb_descend", scope: !8, file: !8, line: 131, type: !290, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{!10, !19, !233, !237}
!292 = !{!293, !294, !295, !296, !299}
!293 = !DILocalVariable(name: "p", arg: 1, scope: !289, file: !8, line: 131, type: !19)
!294 = !DILocalVariable(name: "fn", arg: 2, scope: !289, file: !8, line: 131, type: !233)
!295 = !DILocalVariable(name: "arg", arg: 3, scope: !289, file: !8, line: 131, type: !237)
!296 = !DILocalVariable(name: "q", scope: !297, file: !8, line: 134, type: !19)
!297 = distinct !DILexicalBlock(scope: !298, file: !8, line: 133, column: 24)
!298 = distinct !DILexicalBlock(scope: !289, file: !8, line: 133, column: 6)
!299 = !DILocalVariable(name: "n", scope: !297, file: !8, line: 135, type: !10)
!300 = !DILocation(line: 0, scope: !289)
!301 = !DILocation(line: 133, column: 10, scope: !298)
!302 = !DILocation(line: 133, column: 8, scope: !298)
!303 = !DILocation(line: 133, column: 6, scope: !289)
!304 = !DILocation(line: 134, column: 34, scope: !297)
!305 = !DILocation(line: 134, column: 23, scope: !297)
!306 = !DILocation(line: 0, scope: !297)
!307 = !DILocation(line: 135, column: 31, scope: !297)
!308 = !DILocation(line: 135, column: 20, scope: !297)
!309 = !DILocation(line: 137, column: 12, scope: !297)
!310 = !DILocation(line: 137, column: 10, scope: !297)
!311 = !DILocation(line: 137, column: 41, scope: !297)
!312 = !DILocation(line: 137, column: 30, scope: !297)
!313 = !DILocation(line: 139, column: 10, scope: !314)
!314 = distinct !DILexicalBlock(scope: !298, file: !8, line: 138, column: 9)
!315 = !DILocation(line: 139, column: 3, scope: !314)
!316 = !DILocation(line: 0, scope: !298)
!317 = !DILocation(line: 141, column: 1, scope: !289)
