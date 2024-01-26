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
  %root181 = bitcast %struct.cb_tree* %t to %struct.cb_node**, !dbg !70
  %1 = load %struct.cb_node*, %struct.cb_node** %root181, align 8, !dbg !70, !tbaa !72
  %tobool3.not = icmp eq %struct.cb_node* %1, null, !dbg !77
  br i1 %tobool3.not, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %cond.end
  %2 = bitcast %struct.cb_tree* %t to %struct.cb_node**, !dbg !70
  store %struct.cb_node* %node, %struct.cb_node** %2, align 8, !dbg !79, !tbaa !72
  br label %cleanup90, !dbg !81

if.end:                                           ; preds = %cond.end
  %arraydecay = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 3, i64 0, !dbg !82
  %call = call fastcc %struct.cb_node* @cb_internal_best_match(%struct.cb_node* nonnull %1, i8* nonnull %arraydecay, i64 %klen), !dbg !83
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !60, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i64 0, metadata !53, metadata !DIExpression()), !dbg !67
  %cmp159.not = icmp eq i64 %klen, 0, !dbg !84
  br i1 %cmp159.not, label %cleanup90, label %for.body.preheader, !dbg !87

for.body.preheader:                               ; preds = %if.end
  br label %for.body, !dbg !87

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %newbyte.0160 = phi i64 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  %3 = bitcast %struct.cb_node* %call to i8*, !dbg !67
  %4 = bitcast %struct.cb_node* %node to i8*, !dbg !68
  call void @llvm.dbg.value(metadata i64 %newbyte.0160, metadata !53, metadata !DIExpression()), !dbg !67
  %uglygep = getelementptr i8, i8* %3, i64 %newbyte.0160, !dbg !88
  %scevgep = getelementptr i8, i8* %uglygep, i64 21, !dbg !88
  %5 = load i8, i8* %scevgep, align 1, !dbg !88, !tbaa !91
  %conv32 = zext i8 %5 to i64, !dbg !92
  %uglygep179 = getelementptr i8, i8* %4, i64 %newbyte.0160, !dbg !93
  %scevgep180 = getelementptr i8, i8* %uglygep179, i64 21, !dbg !93
  %6 = load i8, i8* %scevgep180, align 1, !dbg !93, !tbaa !91
  %cmp12.not = icmp eq i8 %5, %6, !dbg !94
  br i1 %cmp12.not, label %for.inc, label %different_byte_found, !dbg !95

for.inc:                                          ; preds = %for.body
  %inc = add nuw i64 %newbyte.0160, 1, !dbg !96
  call void @llvm.dbg.value(metadata i64 %inc, metadata !53, metadata !DIExpression()), !dbg !67
  %exitcond.not = icmp eq i64 %klen, %inc, !dbg !84
  br i1 %exitcond.not, label %cleanup90, label %for.body, !dbg !87, !llvm.loop !97

different_byte_found:                             ; preds = %for.body
  %7 = trunc i64 %conv32 to i8
  %8 = bitcast %struct.cb_tree* %t to %struct.cb_node**, !dbg !70
  call void @llvm.dbg.label(metadata !66), !dbg !101
  %xor154 = xor i8 %6, %7, !dbg !102
  %conv22 = zext i8 %xor154 to i64, !dbg !103
  call void @llvm.dbg.value(metadata i64 %conv22, metadata !54, metadata !DIExpression()), !dbg !67
  %shr = lshr i64 %conv22, 1, !dbg !104
  %or = or i64 %shr, %conv22, !dbg !105
  call void @llvm.dbg.value(metadata i64 %or, metadata !54, metadata !DIExpression()), !dbg !67
  %shr23 = lshr i64 %or, 2, !dbg !106
  %or24 = or i64 %shr23, %or, !dbg !107
  call void @llvm.dbg.value(metadata i64 %or24, metadata !54, metadata !DIExpression()), !dbg !67
  %shr25 = lshr i64 %or24, 4, !dbg !108
  %or26 = or i64 %shr25, %or24, !dbg !109
  call void @llvm.dbg.value(metadata i64 %or26, metadata !54, metadata !DIExpression()), !dbg !67
  %shr27 = lshr i64 %or26, 1, !dbg !110
  %neg = xor i64 %shr27, -1, !dbg !111
  %and28 = and i64 %or26, %neg, !dbg !112
  %xor29 = xor i64 %and28, 255, !dbg !113
  call void @llvm.dbg.value(metadata i64 %xor29, metadata !54, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i8 %5, metadata !55, metadata !DIExpression()), !dbg !67
  %or33 = or i64 %xor29, %conv32, !dbg !114
  %add = add i64 %or33, 1, !dbg !115
  %shr34 = lshr i64 %add, 8, !dbg !116
  call void @llvm.dbg.value(metadata i64 %shr34, metadata !56, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !67
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 1, !dbg !117
  %tmp = trunc i64 %newbyte.0160 to i32
  store i32 %tmp, i32* %byte, align 8, !dbg !118, !tbaa !119
  %conv37 = trunc i64 %xor29 to i8, !dbg !121
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 2, !dbg !122
  store i8 %conv37, i8* %otherbits, align 4, !dbg !123, !tbaa !91
  %sub.neg = mul i64 %shr34, -4294967296, !dbg !124
  %sext = add i64 %sub.neg, 4294967296, !dbg !124
  %idxprom = ashr exact i64 %sext, 32, !dbg !124
  %arrayidx38 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 0, i64 %idxprom, !dbg !124
  store %struct.cb_node* %node, %struct.cb_node** %arrayidx38, align 8, !dbg !125, !tbaa !126
  call void @llvm.dbg.value(metadata %struct.cb_node** %root181, metadata !58, metadata !DIExpression()), !dbg !67
  br label %for.cond40, !dbg !127

for.cond40:                                       ; preds = %cleanup, %different_byte_found
  %wherep.0 = phi %struct.cb_node** [ %8, %different_byte_found ], [ %wherep.1, %cleanup ], !dbg !128
  call void @llvm.dbg.value(metadata %struct.cb_node** %wherep.0, metadata !58, metadata !DIExpression()), !dbg !67
  %9 = load %struct.cb_node*, %struct.cb_node** %wherep.0, align 8, !dbg !129, !tbaa !126
  call void @llvm.dbg.value(metadata %struct.cb_node* %9, metadata !60, metadata !DIExpression()), !dbg !67
  %10 = ptrtoint %struct.cb_node* %9 to i64, !dbg !130
  %and41 = and i64 %10, 1, !dbg !132
  %tobool42.not = icmp eq i64 %and41, 0, !dbg !132
  br i1 %tobool42.not, label %cleanup, label %if.end44, !dbg !133

if.end44:                                         ; preds = %for.cond40
  %11 = bitcast %struct.cb_node* %9 to i8*, !dbg !134
  %call45 = call fastcc %struct.cb_node* @cb_node_of(i8* %11), !dbg !135
  call void @llvm.dbg.value(metadata %struct.cb_node* %call45, metadata !61, metadata !DIExpression()), !dbg !136
  %byte46 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call45, i64 0, i32 1, !dbg !137
  %12 = load i32, i32* %byte46, align 8, !dbg !137, !tbaa !119
  %conv47 = zext i32 %12 to i64, !dbg !139
  %cmp48 = icmp ult i64 %newbyte.0160, %conv47, !dbg !140
  br i1 %cmp48, label %cleanup, label %if.end51, !dbg !141

if.end51:                                         ; preds = %if.end44
  %cmp54 = icmp eq i64 %conv47, %newbyte.0160, !dbg !142
  br i1 %cmp54, label %land.lhs.true, label %if.end61, !dbg !144

land.lhs.true:                                    ; preds = %if.end51
  %otherbits56 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call45, i64 0, i32 2, !dbg !145
  %13 = load i8, i8* %otherbits56, align 4, !dbg !145, !tbaa !91
  %conv57 = zext i8 %13 to i64, !dbg !146
  %cmp58 = icmp ult i64 %xor29, %conv57, !dbg !147
  br i1 %cmp58, label %cleanup, label %if.end61, !dbg !148

if.end61:                                         ; preds = %land.lhs.true, %if.end51
  %cmp64 = icmp ult i64 %conv47, %klen, !dbg !149
  br i1 %cmp64, label %cond.true66, label %cond.end73, !dbg !150

cond.true66:                                      ; preds = %if.end61
  %arrayidx70 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 3, i64 %conv47, !dbg !151
  %14 = load i8, i8* %arrayidx70, align 1, !dbg !151, !tbaa !91
  br label %cond.end73, !dbg !150

cond.end73:                                       ; preds = %if.end61, %cond.true66
  %cond = phi i8 [ %14, %cond.true66 ], [ 0, %if.end61 ], !dbg !150
  call void @llvm.dbg.value(metadata i8 %cond, metadata !55, metadata !DIExpression()), !dbg !67
  %otherbits75 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call45, i64 0, i32 2, !dbg !152
  %15 = load i8, i8* %otherbits75, align 4, !dbg !152, !tbaa !91
  %or78 = zext i8 %15 to i64, !dbg !153
  %promoted = zext i8 %cond to i64
  %or78156 = or i64 %or78, %promoted, !dbg !153
  %add79 = add nuw nsw i64 %or78156, 1, !dbg !154
  %16 = lshr i64 %add79, 8, !dbg !155
  call void @llvm.dbg.value(metadata i64 %16, metadata !65, metadata !DIExpression()), !dbg !136
  %add.ptr = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call45, i64 0, i32 0, i64 %16, !dbg !156
  call void @llvm.dbg.value(metadata %struct.cb_node** %add.ptr, metadata !58, metadata !DIExpression()), !dbg !67
  br label %cleanup, !dbg !157

cleanup:                                          ; preds = %land.lhs.true, %if.end44, %for.cond40, %cond.end73
  %wherep.1 = phi %struct.cb_node** [ %add.ptr, %cond.end73 ], [ %wherep.0, %for.cond40 ], [ %wherep.0, %if.end44 ], [ %wherep.0, %land.lhs.true ], !dbg !67
  %switch = phi i1 [ true, %cond.end73 ], [ false, %for.cond40 ], [ false, %if.end44 ], [ false, %land.lhs.true ]
  call void @llvm.dbg.value(metadata %struct.cb_node** %wherep.1, metadata !58, metadata !DIExpression()), !dbg !67
  br i1 %switch, label %for.cond40, label %for.end85, !llvm.loop !158

for.end85:                                        ; preds = %cleanup
  %17 = ptrtoint %struct.cb_node* %node to i64, !dbg !68
  %18 = load %struct.cb_node*, %struct.cb_node** %wherep.1, align 8, !dbg !161, !tbaa !126
  %sext155 = shl i64 %shr34, 32, !dbg !162
  %idxprom87 = ashr exact i64 %sext155, 32, !dbg !162
  %arrayidx88 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %node, i64 0, i32 0, i64 %idxprom87, !dbg !162
  store %struct.cb_node* %18, %struct.cb_node** %arrayidx88, align 8, !dbg !163, !tbaa !126
  %add89 = add i64 %17, 1, !dbg !164
  %19 = inttoptr i64 %add89 to %struct.cb_node*, !dbg !165
  store %struct.cb_node* %19, %struct.cb_node** %wherep.1, align 8, !dbg !166, !tbaa !126
  br label %cleanup90, !dbg !167

cleanup90:                                        ; preds = %for.inc, %if.end, %for.end85, %if.then
  %retval.0 = phi %struct.cb_node* [ null, %for.end85 ], [ null, %if.then ], [ %call, %if.end ], [ %call, %for.inc ], !dbg !67
  ret %struct.cb_node* %retval.0, !dbg !168
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly ssp uwtable
define internal fastcc %struct.cb_node* @cb_internal_best_match(%struct.cb_node* %p, i8* nocapture readonly %k, i64 %klen) unnamed_addr #2 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_node* %p, metadata !175, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata i8* %k, metadata !176, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata i64 %klen, metadata !177, metadata !DIExpression()), !dbg !182
  %0 = ptrtoint %struct.cb_node* %p to i64, !dbg !183
  %and17 = and i64 %0, 1, !dbg !184
  %tobool.not18 = icmp eq i64 %and17, 0, !dbg !185
  br i1 %tobool.not18, label %while.end, label %while.body, !dbg !185

while.body:                                       ; preds = %entry, %cond.end
  %p.addr.019 = phi %struct.cb_node* [ %6, %cond.end ], [ %p, %entry ]
  call void @llvm.dbg.value(metadata %struct.cb_node* %p.addr.019, metadata !175, metadata !DIExpression()), !dbg !182
  %1 = bitcast %struct.cb_node* %p.addr.019 to i8*, !dbg !186
  %call = call fastcc %struct.cb_node* @cb_node_of(i8* %1), !dbg !187
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !178, metadata !DIExpression()), !dbg !188
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 1, !dbg !189
  %2 = load i32, i32* %byte, align 8, !dbg !189, !tbaa !119
  %conv = zext i32 %2 to i64, !dbg !190
  %cmp = icmp ult i64 %conv, %klen, !dbg !191
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !190

cond.true:                                        ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, i8* %k, i64 %conv, !dbg !192
  %3 = load i8, i8* %arrayidx, align 1, !dbg !192, !tbaa !91
  br label %cond.end, !dbg !190

cond.end:                                         ; preds = %while.body, %cond.true
  %cond = phi i8 [ %3, %cond.true ], [ 0, %while.body ], !dbg !190
  call void @llvm.dbg.value(metadata i8 %cond, metadata !180, metadata !DIExpression()), !dbg !188
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 2, !dbg !193
  %4 = load i8, i8* %otherbits, align 4, !dbg !193, !tbaa !91
  %or16 = or i8 %4, %cond, !dbg !194
  %or = zext i8 %or16 to i64, !dbg !194
  %add = add nuw nsw i64 %or, 1, !dbg !195
  %5 = lshr i64 %add, 8, !dbg !196
  call void @llvm.dbg.value(metadata i64 %5, metadata !181, metadata !DIExpression()), !dbg !188
  %arrayidx8 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 0, i64 %5, !dbg !197
  %6 = load %struct.cb_node*, %struct.cb_node** %arrayidx8, align 8, !dbg !197, !tbaa !126
  call void @llvm.dbg.value(metadata %struct.cb_node* %6, metadata !175, metadata !DIExpression()), !dbg !182
  %7 = ptrtoint %struct.cb_node* %6 to i64, !dbg !183
  %and = and i64 %7, 1, !dbg !184
  %tobool.not = icmp eq i64 %and, 0, !dbg !185
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !185, !llvm.loop !198

while.end:                                        ; preds = %cond.end, %entry
  %p.addr.0.lcssa = phi %struct.cb_node* [ %p, %entry ], [ %6, %cond.end ]
  ret %struct.cb_node* %p.addr.0.lcssa, !dbg !200
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define internal fastcc %struct.cb_node* @cb_node_of(i8* %p) unnamed_addr #4 !dbg !201 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = ptrtoint i8* %p to i64, !dbg !209
  %sub = add i64 %0, -1, !dbg !210
  %1 = inttoptr i64 %sub to %struct.cb_node*, !dbg !211
  ret %struct.cb_node* %1, !dbg !212
}

; Function Attrs: nofree noinline nounwind readonly ssp uwtable
define %struct.cb_node* @cb_lookup(%struct.cb_tree* nocapture readonly %t, i8* nocapture readonly %k, i64 %klen) local_unnamed_addr #5 !dbg !213 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_tree* %t, metadata !217, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i8* %k, metadata !218, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i64 %klen, metadata !219, metadata !DIExpression()), !dbg !221
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %t, i64 0, i32 0, !dbg !222
  %0 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !222, !tbaa !72
  %call = call fastcc %struct.cb_node* @cb_internal_best_match(%struct.cb_node* %0, i8* %k, i64 %klen), !dbg !223
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !220, metadata !DIExpression()), !dbg !221
  %tobool.not = icmp eq %struct.cb_node* %call, null, !dbg !224
  br i1 %tobool.not, label %cond.end, label %land.lhs.true, !dbg !225

land.lhs.true:                                    ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 3, i64 0, !dbg !226
  %call2 = call i32 @memcmp(i8* nonnull %arraydecay, i8* %k, i64 %klen), !dbg !227
  %tobool3.not = icmp eq i32 %call2, 0, !dbg !227
  %spec.select = select i1 %tobool3.not, %struct.cb_node* %call, %struct.cb_node* null, !dbg !224
  br label %cond.end, !dbg !224

cond.end:                                         ; preds = %land.lhs.true, %entry
  %cond = phi %struct.cb_node* [ null, %entry ], [ %spec.select, %land.lhs.true ], !dbg !224
  ret %struct.cb_node* %cond, !dbg !228
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: noinline nounwind ssp uwtable
define void @cb_each(%struct.cb_tree* nocapture readonly %t, i8* nocapture readonly %kpfx, i64 %klen, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg) local_unnamed_addr #0 !dbg !229 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_tree* %t, metadata !238, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i8* %kpfx, metadata !239, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i64 %klen, metadata !240, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i32 (%struct.cb_node*, i8*)* %fn, metadata !241, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i8* %arg, metadata !242, metadata !DIExpression()), !dbg !250
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %t, i64 0, i32 0, !dbg !251
  %0 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !251, !tbaa !72
  call void @llvm.dbg.value(metadata %struct.cb_node* %0, metadata !243, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata %struct.cb_node* %0, metadata !244, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !250
  %tobool.not = icmp eq %struct.cb_node* %0, null, !dbg !252
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader, !dbg !254

while.cond.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.cb_node* %0, metadata !243, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata %struct.cb_node* %0, metadata !244, metadata !DIExpression()), !dbg !250
  %1 = ptrtoint %struct.cb_node* %0 to i64, !dbg !255
  %and50 = and i64 %1, 1, !dbg !256
  %tobool1.not51 = icmp eq i64 %and50, 0, !dbg !257
  br i1 %tobool1.not51, label %for.cond.preheader, label %while.body, !dbg !257

for.cond.preheader:                               ; preds = %cond.end, %while.cond.preheader
  %top.0.lcssa = phi %struct.cb_node* [ %0, %while.cond.preheader ], [ %spec.select, %cond.end ], !dbg !250
  %p.0.lcssa = phi %struct.cb_node* [ %0, %while.cond.preheader ], [ %7, %cond.end ], !dbg !250
  call void @llvm.dbg.value(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !250
  %cmp1655.not = icmp eq i64 %klen, 0, !dbg !258
  br i1 %cmp1655.not, label %for.end, label %for.body, !dbg !261

while.body:                                       ; preds = %while.cond.preheader, %cond.end
  %p.053 = phi %struct.cb_node* [ %7, %cond.end ], [ %0, %while.cond.preheader ]
  %top.052 = phi %struct.cb_node* [ %spec.select, %cond.end ], [ %0, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata %struct.cb_node* %p.053, metadata !243, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata %struct.cb_node* %top.052, metadata !244, metadata !DIExpression()), !dbg !250
  %2 = bitcast %struct.cb_node* %p.053 to i8*, !dbg !262
  %call = call fastcc %struct.cb_node* @cb_node_of(i8* %2), !dbg !263
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !246, metadata !DIExpression()), !dbg !264
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 1, !dbg !265
  %3 = load i32, i32* %byte, align 8, !dbg !265, !tbaa !119
  %conv = zext i32 %3 to i64, !dbg !266
  %cmp = icmp ult i64 %conv, %klen, !dbg !267
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !266

cond.true:                                        ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, i8* %kpfx, i64 %conv, !dbg !268
  %4 = load i8, i8* %arrayidx, align 1, !dbg !268, !tbaa !91
  br label %cond.end, !dbg !266

cond.end:                                         ; preds = %while.body, %cond.true
  %cond = phi i8 [ %4, %cond.true ], [ 0, %while.body ], !dbg !266
  call void @llvm.dbg.value(metadata i8 %cond, metadata !248, metadata !DIExpression()), !dbg !264
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 2, !dbg !269
  %5 = load i8, i8* %otherbits, align 4, !dbg !269, !tbaa !91
  %or49 = or i8 %5, %cond, !dbg !270
  %or = zext i8 %or49 to i64, !dbg !270
  %add = add nuw nsw i64 %or, 1, !dbg !271
  %6 = lshr i64 %add, 8, !dbg !272
  call void @llvm.dbg.value(metadata i64 %6, metadata !249, metadata !DIExpression()), !dbg !264
  %arrayidx9 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 0, i64 %6, !dbg !273
  %7 = load %struct.cb_node*, %struct.cb_node** %arrayidx9, align 8, !dbg !273, !tbaa !126
  call void @llvm.dbg.value(metadata %struct.cb_node* %7, metadata !243, metadata !DIExpression()), !dbg !250
  %spec.select = select i1 %cmp, %struct.cb_node* %7, %struct.cb_node* %top.052, !dbg !274
  call void @llvm.dbg.value(metadata %struct.cb_node* %spec.select, metadata !244, metadata !DIExpression()), !dbg !250
  %8 = ptrtoint %struct.cb_node* %7 to i64, !dbg !255
  %and = and i64 %8, 1, !dbg !256
  %tobool1.not = icmp eq i64 %and, 0, !dbg !257
  br i1 %tobool1.not, label %for.cond.preheader, label %while.body, !dbg !257, !llvm.loop !275

for.cond:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 %inc, metadata !245, metadata !DIExpression()), !dbg !250
  %exitcond.not = icmp eq i64 %inc, %klen, !dbg !258
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !261, !llvm.loop !277

for.body:                                         ; preds = %for.cond.preheader, %for.cond
  %i.056 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.056, metadata !245, metadata !DIExpression()), !dbg !250
  %arrayidx18 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %p.0.lcssa, i64 0, i32 3, i64 %i.056, !dbg !279
  %9 = load i8, i8* %arrayidx18, align 1, !dbg !279, !tbaa !91
  %arrayidx20 = getelementptr inbounds i8, i8* %kpfx, i64 %i.056, !dbg !282
  %10 = load i8, i8* %arrayidx20, align 1, !dbg !282, !tbaa !91
  %cmp22.not = icmp eq i8 %9, %10, !dbg !283
  %inc = add nuw i64 %i.056, 1, !dbg !284
  call void @llvm.dbg.value(metadata i64 %inc, metadata !245, metadata !DIExpression()), !dbg !250
  br i1 %cmp22.not, label %for.cond, label %cleanup, !dbg !285

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %call26 = call fastcc i32 @cb_descend(%struct.cb_node* %top.0.lcssa, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg), !dbg !286
  br label %cleanup, !dbg !287

cleanup:                                          ; preds = %for.body, %entry, %for.end
  ret void, !dbg !287
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc i32 @cb_descend(%struct.cb_node* %p, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg) unnamed_addr #0 !dbg !288 {
entry:
  call void @llvm.dbg.value(metadata %struct.cb_node* %p, metadata !292, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i32 (%struct.cb_node*, i8*)* %fn, metadata !293, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i8* %arg, metadata !294, metadata !DIExpression()), !dbg !299
  %0 = ptrtoint %struct.cb_node* %p to i64, !dbg !300
  %and = and i64 %0, 1, !dbg !301
  %tobool.not = icmp eq i64 %and, 0, !dbg !301
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !302

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.cb_node* %p to i8*, !dbg !303
  %call = call fastcc %struct.cb_node* @cb_node_of(i8* %1), !dbg !304
  call void @llvm.dbg.value(metadata %struct.cb_node* %call, metadata !295, metadata !DIExpression()), !dbg !305
  %arrayidx = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 0, i64 0, !dbg !306
  %2 = load %struct.cb_node*, %struct.cb_node** %arrayidx, align 8, !dbg !306, !tbaa !126
  %call1 = call fastcc i32 @cb_descend(%struct.cb_node* %2, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg), !dbg !307
  call void @llvm.dbg.value(metadata i32 %call1, metadata !298, metadata !DIExpression()), !dbg !305
  %cmp = icmp eq i32 %call1, 1, !dbg !308
  br i1 %cmp, label %return, label %cond.false, !dbg !309

cond.false:                                       ; preds = %if.then
  %arrayidx3 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %call, i64 0, i32 0, i64 1, !dbg !310
  %3 = load %struct.cb_node*, %struct.cb_node** %arrayidx3, align 8, !dbg !310, !tbaa !126
  %call4 = call fastcc i32 @cb_descend(%struct.cb_node* %3, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg), !dbg !311
  br label %return, !dbg !309

if.else:                                          ; preds = %entry
  %call5 = call i32 %fn(%struct.cb_node* %p, i8* %arg) #9, !dbg !312
  br label %return, !dbg !314

return:                                           ; preds = %cond.false, %if.then, %if.else
  %retval.0 = phi i32 [ %call5, %if.else ], [ %call4, %cond.false ], [ 1, %if.then ], !dbg !315
  ret i32 %retval.0, !dbg !316
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

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
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
!62 = distinct !DILexicalBlock(scope: !63, file: !8, line: 101, column: 12)
!63 = distinct !DILexicalBlock(scope: !64, file: !8, line: 101, column: 3)
!64 = distinct !DILexicalBlock(scope: !38, file: !8, line: 101, column: 3)
!65 = !DILocalVariable(name: "direction", scope: !62, file: !8, line: 103, type: !45)
!66 = !DILabel(scope: !38, name: "different_byte_found", file: !8, line: 86)
!67 = !DILocation(line: 0, scope: !38)
!68 = !DILocation(line: 69, column: 3, scope: !38)
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !DILocation(line: 71, column: 11, scope: !71)
!71 = distinct !DILexicalBlock(scope: !38, file: !8, line: 71, column: 7)
!72 = !{!73, !74, i64 0}
!73 = !{!"cb_tree", !74, i64 0}
!74 = !{!"any pointer", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C/C++ TBAA"}
!77 = !DILocation(line: 71, column: 8, scope: !71)
!78 = !DILocation(line: 71, column: 7, scope: !38)
!79 = !DILocation(line: 72, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !71, file: !8, line: 71, column: 17)
!81 = !DILocation(line: 73, column: 5, scope: !80)
!82 = !DILocation(line: 77, column: 39, scope: !38)
!83 = !DILocation(line: 77, column: 7, scope: !38)
!84 = !DILocation(line: 80, column: 29, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !8, line: 80, column: 3)
!86 = distinct !DILexicalBlock(scope: !38, file: !8, line: 80, column: 3)
!87 = !DILocation(line: 80, column: 3, scope: !86)
!88 = !DILocation(line: 81, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !8, line: 81, column: 9)
!90 = distinct !DILexicalBlock(scope: !85, file: !8, line: 80, column: 48)
!91 = !{!75, !75, i64 0}
!92 = !DILocation(line: 93, column: 39, scope: !38)
!93 = !DILocation(line: 81, column: 26, scope: !89)
!94 = !DILocation(line: 81, column: 23, scope: !89)
!95 = !DILocation(line: 81, column: 9, scope: !90)
!96 = !DILocation(line: 80, column: 44, scope: !85)
!97 = distinct !{!97, !87, !98, !99, !100}
!98 = !DILocation(line: 83, column: 3, scope: !86)
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !DILocation(line: 86, column: 1, scope: !38)
!102 = !DILocation(line: 87, column: 32, scope: !38)
!103 = !DILocation(line: 87, column: 18, scope: !38)
!104 = !DILocation(line: 88, column: 32, scope: !38)
!105 = !DILocation(line: 88, column: 16, scope: !38)
!106 = !DILocation(line: 89, column: 32, scope: !38)
!107 = !DILocation(line: 89, column: 16, scope: !38)
!108 = !DILocation(line: 90, column: 32, scope: !38)
!109 = !DILocation(line: 90, column: 16, scope: !38)
!110 = !DILocation(line: 91, column: 49, scope: !38)
!111 = !DILocation(line: 91, column: 34, scope: !38)
!112 = !DILocation(line: 91, column: 32, scope: !38)
!113 = !DILocation(line: 91, column: 56, scope: !38)
!114 = !DILocation(line: 93, column: 37, scope: !38)
!115 = !DILocation(line: 93, column: 21, scope: !38)
!116 = !DILocation(line: 93, column: 43, scope: !38)
!117 = !DILocation(line: 95, column: 9, scope: !38)
!118 = !DILocation(line: 95, column: 14, scope: !38)
!119 = !{!120, !120, i64 0}
!120 = !{!"int", !75, i64 0}
!121 = !DILocation(line: 96, column: 21, scope: !38)
!122 = !DILocation(line: 96, column: 9, scope: !38)
!123 = !DILocation(line: 96, column: 19, scope: !38)
!124 = !DILocation(line: 97, column: 3, scope: !38)
!125 = !DILocation(line: 97, column: 33, scope: !38)
!126 = !{!74, !74, i64 0}
!127 = !DILocation(line: 101, column: 3, scope: !38)
!128 = !DILocation(line: 100, column: 10, scope: !38)
!129 = !DILocation(line: 105, column: 9, scope: !62)
!130 = !DILocation(line: 106, column: 15, scope: !131)
!131 = distinct !DILexicalBlock(scope: !62, file: !8, line: 106, column: 9)
!132 = !DILocation(line: 106, column: 13, scope: !131)
!133 = !DILocation(line: 106, column: 9, scope: !62)
!134 = !DILocation(line: 108, column: 20, scope: !62)
!135 = !DILocation(line: 108, column: 9, scope: !62)
!136 = !DILocation(line: 0, scope: !62)
!137 = !DILocation(line: 109, column: 12, scope: !138)
!138 = distinct !DILexicalBlock(scope: !62, file: !8, line: 109, column: 9)
!139 = !DILocation(line: 109, column: 9, scope: !138)
!140 = !DILocation(line: 109, column: 17, scope: !138)
!141 = !DILocation(line: 109, column: 9, scope: !62)
!142 = !DILocation(line: 111, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !62, file: !8, line: 111, column: 9)
!144 = !DILocation(line: 111, column: 28, scope: !143)
!145 = !DILocation(line: 111, column: 34, scope: !143)
!146 = !DILocation(line: 111, column: 31, scope: !143)
!147 = !DILocation(line: 111, column: 44, scope: !143)
!148 = !DILocation(line: 111, column: 9, scope: !62)
!149 = !DILocation(line: 113, column: 17, scope: !62)
!150 = !DILocation(line: 113, column: 9, scope: !62)
!151 = !DILocation(line: 113, column: 26, scope: !62)
!152 = !DILocation(line: 114, column: 26, scope: !62)
!153 = !DILocation(line: 114, column: 36, scope: !62)
!154 = !DILocation(line: 114, column: 20, scope: !62)
!155 = !DILocation(line: 114, column: 42, scope: !62)
!156 = !DILocation(line: 115, column: 23, scope: !62)
!157 = !DILocation(line: 116, column: 3, scope: !63)
!158 = distinct !{!158, !159, !160, !100}
!159 = !DILocation(line: 101, column: 3, scope: !64)
!160 = !DILocation(line: 116, column: 3, scope: !64)
!161 = !DILocation(line: 118, column: 31, scope: !38)
!162 = !DILocation(line: 118, column: 3, scope: !38)
!163 = !DILocation(line: 118, column: 29, scope: !38)
!164 = !DILocation(line: 119, column: 34, scope: !38)
!165 = !DILocation(line: 119, column: 13, scope: !38)
!166 = !DILocation(line: 119, column: 11, scope: !38)
!167 = !DILocation(line: 121, column: 3, scope: !38)
!168 = !DILocation(line: 122, column: 1, scope: !38)
!169 = distinct !DISubprogram(name: "cb_internal_best_match", scope: !8, file: !8, line: 48, type: !170, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !174)
!170 = !DISubroutineType(types: !171)
!171 = !{!19, !19, !172, !45}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!174 = !{!175, !176, !177, !178, !180, !181}
!175 = !DILocalVariable(name: "p", arg: 1, scope: !169, file: !8, line: 48, type: !19)
!176 = !DILocalVariable(name: "k", arg: 2, scope: !169, file: !8, line: 49, type: !172)
!177 = !DILocalVariable(name: "klen", arg: 3, scope: !169, file: !8, line: 49, type: !45)
!178 = !DILocalVariable(name: "q", scope: !179, file: !8, line: 52, type: !19)
!179 = distinct !DILexicalBlock(scope: !169, file: !8, line: 51, column: 28)
!180 = !DILocalVariable(name: "c", scope: !179, file: !8, line: 53, type: !30)
!181 = !DILocalVariable(name: "direction", scope: !179, file: !8, line: 54, type: !45)
!182 = !DILocation(line: 0, scope: !169)
!183 = !DILocation(line: 51, column: 14, scope: !169)
!184 = !DILocation(line: 51, column: 12, scope: !169)
!185 = !DILocation(line: 51, column: 3, scope: !169)
!186 = !DILocation(line: 52, column: 36, scope: !179)
!187 = !DILocation(line: 52, column: 25, scope: !179)
!188 = !DILocation(line: 0, scope: !179)
!189 = !DILocation(line: 53, column: 20, scope: !179)
!190 = !DILocation(line: 53, column: 17, scope: !179)
!191 = !DILocation(line: 53, column: 25, scope: !179)
!192 = !DILocation(line: 53, column: 34, scope: !179)
!193 = !DILocation(line: 54, column: 33, scope: !179)
!194 = !DILocation(line: 54, column: 43, scope: !179)
!195 = !DILocation(line: 54, column: 27, scope: !179)
!196 = !DILocation(line: 54, column: 49, scope: !179)
!197 = !DILocation(line: 56, column: 9, scope: !179)
!198 = distinct !{!198, !185, !199, !99, !100}
!199 = !DILocation(line: 57, column: 3, scope: !169)
!200 = !DILocation(line: 58, column: 3, scope: !169)
!201 = distinct !DISubprogram(name: "cb_node_of", scope: !8, file: !8, line: 42, type: !202, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !206)
!202 = !DISubroutineType(types: !203)
!203 = !{!19, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!206 = !{!207}
!207 = !DILocalVariable(name: "p", arg: 1, scope: !201, file: !8, line: 42, type: !204)
!208 = !DILocation(line: 0, scope: !201)
!209 = !DILocation(line: 44, column: 29, scope: !201)
!210 = !DILocation(line: 44, column: 42, scope: !201)
!211 = !DILocation(line: 44, column: 10, scope: !201)
!212 = !DILocation(line: 44, column: 3, scope: !201)
!213 = distinct !DISubprogram(name: "cb_lookup", scope: !8, file: !8, line: 124, type: !214, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{!19, !41, !172, !45}
!216 = !{!217, !218, !219, !220}
!217 = !DILocalVariable(name: "t", arg: 1, scope: !213, file: !8, line: 124, type: !41)
!218 = !DILocalVariable(name: "k", arg: 2, scope: !213, file: !8, line: 124, type: !172)
!219 = !DILocalVariable(name: "klen", arg: 3, scope: !213, file: !8, line: 124, type: !45)
!220 = !DILocalVariable(name: "p", scope: !213, file: !8, line: 126, type: !19)
!221 = !DILocation(line: 0, scope: !213)
!222 = !DILocation(line: 126, column: 49, scope: !213)
!223 = !DILocation(line: 126, column: 23, scope: !213)
!224 = !DILocation(line: 128, column: 10, scope: !213)
!225 = !DILocation(line: 128, column: 12, scope: !213)
!226 = !DILocation(line: 128, column: 23, scope: !213)
!227 = !DILocation(line: 128, column: 16, scope: !213)
!228 = !DILocation(line: 128, column: 3, scope: !213)
!229 = distinct !DISubprogram(name: "cb_each", scope: !8, file: !8, line: 143, type: !230, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !237)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !41, !172, !45, !232, !236}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "cb_iter", file: !8, line: 37, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!10, !19, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !248, !249}
!238 = !DILocalVariable(name: "t", arg: 1, scope: !229, file: !8, line: 143, type: !41)
!239 = !DILocalVariable(name: "kpfx", arg: 2, scope: !229, file: !8, line: 143, type: !172)
!240 = !DILocalVariable(name: "klen", arg: 3, scope: !229, file: !8, line: 143, type: !45)
!241 = !DILocalVariable(name: "fn", arg: 4, scope: !229, file: !8, line: 144, type: !232)
!242 = !DILocalVariable(name: "arg", arg: 5, scope: !229, file: !8, line: 144, type: !236)
!243 = !DILocalVariable(name: "p", scope: !229, file: !8, line: 146, type: !19)
!244 = !DILocalVariable(name: "top", scope: !229, file: !8, line: 147, type: !19)
!245 = !DILocalVariable(name: "i", scope: !229, file: !8, line: 148, type: !45)
!246 = !DILocalVariable(name: "q", scope: !247, file: !8, line: 154, type: !19)
!247 = distinct !DILexicalBlock(scope: !229, file: !8, line: 153, column: 28)
!248 = !DILocalVariable(name: "c", scope: !247, file: !8, line: 155, type: !30)
!249 = !DILocalVariable(name: "direction", scope: !247, file: !8, line: 156, type: !45)
!250 = !DILocation(line: 0, scope: !229)
!251 = !DILocation(line: 146, column: 26, scope: !229)
!252 = !DILocation(line: 150, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !229, file: !8, line: 150, column: 7)
!254 = !DILocation(line: 150, column: 7, scope: !229)
!255 = !DILocation(line: 153, column: 14, scope: !229)
!256 = !DILocation(line: 153, column: 12, scope: !229)
!257 = !DILocation(line: 153, column: 3, scope: !229)
!258 = !DILocation(line: 163, column: 17, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !8, line: 163, column: 3)
!260 = distinct !DILexicalBlock(scope: !229, file: !8, line: 163, column: 3)
!261 = !DILocation(line: 163, column: 3, scope: !260)
!262 = !DILocation(line: 154, column: 36, scope: !247)
!263 = !DILocation(line: 154, column: 25, scope: !247)
!264 = !DILocation(line: 0, scope: !247)
!265 = !DILocation(line: 155, column: 20, scope: !247)
!266 = !DILocation(line: 155, column: 17, scope: !247)
!267 = !DILocation(line: 155, column: 25, scope: !247)
!268 = !DILocation(line: 155, column: 34, scope: !247)
!269 = !DILocation(line: 156, column: 33, scope: !247)
!270 = !DILocation(line: 156, column: 43, scope: !247)
!271 = !DILocation(line: 156, column: 27, scope: !247)
!272 = !DILocation(line: 156, column: 49, scope: !247)
!273 = !DILocation(line: 158, column: 9, scope: !247)
!274 = !DILocation(line: 159, column: 9, scope: !247)
!275 = distinct !{!275, !257, !276, !99, !100}
!276 = !DILocation(line: 161, column: 3, scope: !229)
!277 = distinct !{!277, !261, !278, !99, !100}
!278 = !DILocation(line: 166, column: 3, scope: !260)
!279 = !DILocation(line: 164, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !8, line: 164, column: 9)
!281 = distinct !DILexicalBlock(scope: !259, file: !8, line: 163, column: 30)
!282 = !DILocation(line: 164, column: 20, scope: !280)
!283 = !DILocation(line: 164, column: 17, scope: !280)
!284 = !DILocation(line: 163, column: 26, scope: !259)
!285 = !DILocation(line: 164, column: 9, scope: !281)
!286 = !DILocation(line: 167, column: 3, scope: !229)
!287 = !DILocation(line: 168, column: 1, scope: !229)
!288 = distinct !DISubprogram(name: "cb_descend", scope: !8, file: !8, line: 131, type: !289, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{!10, !19, !232, !236}
!291 = !{!292, !293, !294, !295, !298}
!292 = !DILocalVariable(name: "p", arg: 1, scope: !288, file: !8, line: 131, type: !19)
!293 = !DILocalVariable(name: "fn", arg: 2, scope: !288, file: !8, line: 131, type: !232)
!294 = !DILocalVariable(name: "arg", arg: 3, scope: !288, file: !8, line: 131, type: !236)
!295 = !DILocalVariable(name: "q", scope: !296, file: !8, line: 134, type: !19)
!296 = distinct !DILexicalBlock(scope: !297, file: !8, line: 133, column: 25)
!297 = distinct !DILexicalBlock(scope: !288, file: !8, line: 133, column: 7)
!298 = !DILocalVariable(name: "n", scope: !296, file: !8, line: 135, type: !10)
!299 = !DILocation(line: 0, scope: !288)
!300 = !DILocation(line: 133, column: 11, scope: !297)
!301 = !DILocation(line: 133, column: 9, scope: !297)
!302 = !DILocation(line: 133, column: 7, scope: !288)
!303 = !DILocation(line: 134, column: 36, scope: !296)
!304 = !DILocation(line: 134, column: 25, scope: !296)
!305 = !DILocation(line: 0, scope: !296)
!306 = !DILocation(line: 135, column: 33, scope: !296)
!307 = !DILocation(line: 135, column: 22, scope: !296)
!308 = !DILocation(line: 137, column: 14, scope: !296)
!309 = !DILocation(line: 137, column: 12, scope: !296)
!310 = !DILocation(line: 137, column: 43, scope: !296)
!311 = !DILocation(line: 137, column: 32, scope: !296)
!312 = !DILocation(line: 139, column: 12, scope: !313)
!313 = distinct !DILexicalBlock(scope: !297, file: !8, line: 138, column: 10)
!314 = !DILocation(line: 139, column: 5, scope: !313)
!315 = !DILocation(line: 0, scope: !297)
!316 = !DILocation(line: 141, column: 1, scope: !288)
