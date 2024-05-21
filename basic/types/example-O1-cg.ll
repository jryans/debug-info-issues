; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.s204 = type { i32, [0 x i32] }
%struct.s303 = type { [4 x [4 x i32]] }
%struct.s305 = type { [4 x i32*] }
%struct.s306 = type { [4 x i32*] }
%struct.s307 = type { [4 x i32*] }
%struct.s308 = type { [4 x i32 (...)*] }
%struct.s402 = type { i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex101Int(i32 returned %a) local_unnamed_addr #0 !dbg !13 {
entry:
  call void @llvm.dbg.value(metadata i32 %a, metadata !18, metadata !DIExpression()), !dbg !19
  ret i32 %a, !dbg !20
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex102Struct(i32 returned %s.coerce) local_unnamed_addr #0 !dbg !21 {
entry:
  call void @llvm.dbg.value(metadata i32 %s.coerce, metadata !28, metadata !DIExpression()), !dbg !29
  ret i32 %s.coerce, !dbg !30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex105PointerSingleElementValue(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !31 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !36, metadata !DIExpression()), !dbg !37
  %0 = load i32, i32* %a, align 4, !dbg !38, !tbaa !39
  ret i32 %0, !dbg !43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex106PointerSingleElementInstances(i32* readnone %a, i32* readnone %b) local_unnamed_addr #0 !dbg !44 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !48, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata i32* %b, metadata !49, metadata !DIExpression()), !dbg !50
  %cmp = icmp eq i32* %a, null, !dbg !51
  %cmp1 = icmp eq i32* %b, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1, !dbg !53
  %cmp2.not = icmp eq i32* %a, %b, !dbg !53
  %. = select i1 %cmp2.not, i32 3, i32 2, !dbg !53
  %retval.0 = select i1 %or.cond, i32 1, i32 %., !dbg !53
  ret i32 %retval.0, !dbg !54
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex107PointerMultipleElementValues(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !55 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load i32, i32* %a, align 4, !dbg !59, !tbaa !39
  %arrayidx1 = getelementptr inbounds i32, i32* %a, i64 3, !dbg !60
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !60, !tbaa !39
  %add = add nsw i32 %1, %0, !dbg !61
  ret i32 %add, !dbg !62
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex108PointerFunction(i32 (...)* nocapture %a) local_unnamed_addr #3 !dbg !63 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* %a, metadata !70, metadata !DIExpression()), !dbg !71
  %call = call i32 (...) %a() #5, !dbg !72
  ret i32 %call, !dbg !73
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex201StructFieldInt(i32 returned %s.coerce) local_unnamed_addr #0 !dbg !74 {
entry:
  call void @llvm.dbg.value(metadata i32 %s.coerce, metadata !81, metadata !DIExpression()), !dbg !82
  ret i32 %s.coerce, !dbg !83
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex202StructFieldStruct(i32 returned %s.coerce) local_unnamed_addr #0 !dbg !84 {
entry:
  call void @llvm.dbg.value(metadata i32 %s.coerce, metadata !94, metadata !DIExpression()), !dbg !95
  ret i32 %s.coerce, !dbg !96
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex203StructFieldArrayFixedLength(i64 %s.coerce0, i64 %s.coerce1) local_unnamed_addr #0 !dbg !97 {
entry:
  %s.sroa.0.0.extract.trunc = trunc i64 %s.coerce0 to i32
  call void @llvm.dbg.value(metadata i32 %s.sroa.0.0.extract.trunc, metadata !107, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !108
  call void @llvm.dbg.value(metadata i64 %s.coerce0, metadata !107, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32)), !dbg !108
  call void @llvm.dbg.value(metadata i64 %s.coerce1, metadata !107, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32)), !dbg !108
  %s.sroa.3.8.extract.shift = lshr i64 %s.coerce1, 32
  %s.sroa.3.8.extract.trunc = trunc i64 %s.sroa.3.8.extract.shift to i32
  call void @llvm.dbg.value(metadata i32 %s.sroa.3.8.extract.trunc, metadata !107, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !108
  %add = add nsw i32 %s.sroa.3.8.extract.trunc, %s.sroa.0.0.extract.trunc, !dbg !109
  ret i32 %add, !dbg !110
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex204StructFieldArrayVariableLength(%struct.s204* nocapture readonly byval(%struct.s204) align 8 %s) local_unnamed_addr #2 !dbg !111 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s204* %s, metadata !122, metadata !DIExpression()), !dbg !123
  %arrayidx = getelementptr inbounds %struct.s204, %struct.s204* %s, i64 0, i32 1, i64 0, !dbg !124
  %0 = load i32, i32* %arrayidx, align 4, !dbg !124, !tbaa !39
  %arrayidx2 = getelementptr inbounds %struct.s204, %struct.s204* %s, i64 0, i32 1, i64 3, !dbg !125
  %1 = load i32, i32* %arrayidx2, align 8, !dbg !125, !tbaa !39
  %add = add nsw i32 %1, %0, !dbg !126
  ret i32 %add, !dbg !127
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex205StructFieldPointerSingleElementValue(i32* nocapture readonly %s.coerce) local_unnamed_addr #2 !dbg !128 {
entry:
  call void @llvm.dbg.value(metadata i32* %s.coerce, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = load i32, i32* %s.coerce, align 4, !dbg !137, !tbaa !39
  ret i32 %0, !dbg !138
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex206StructFieldPointerSingleElementInstances(i32* readnone %s.coerce0, i32* readnone %s.coerce1) local_unnamed_addr #0 !dbg !139 {
entry:
  call void @llvm.dbg.value(metadata i32* %s.coerce0, metadata !147, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !148
  call void @llvm.dbg.value(metadata i32* %s.coerce1, metadata !147, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !148
  %cmp = icmp eq i32* %s.coerce0, null, !dbg !149
  %cmp1 = icmp eq i32* %s.coerce1, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1, !dbg !151
  %cmp4.not = icmp eq i32* %s.coerce0, %s.coerce1, !dbg !151
  %. = select i1 %cmp4.not, i32 3, i32 2, !dbg !151
  %retval.0 = select i1 %or.cond, i32 1, i32 %., !dbg !151
  ret i32 %retval.0, !dbg !152
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex207StructFieldPointerMultipleElementValues(i32* nocapture readonly %s.coerce) local_unnamed_addr #2 !dbg !153 {
entry:
  call void @llvm.dbg.value(metadata i32* %s.coerce, metadata !160, metadata !DIExpression()), !dbg !161
  %0 = load i32, i32* %s.coerce, align 4, !dbg !162, !tbaa !39
  %arrayidx2 = getelementptr inbounds i32, i32* %s.coerce, i64 3, !dbg !163
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !163, !tbaa !39
  %add = add nsw i32 %1, %0, !dbg !164
  ret i32 %add, !dbg !165
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex208StructFieldPointerFunction(i32 (...)* nocapture %s.coerce) local_unnamed_addr #3 !dbg !166 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* %s.coerce, metadata !173, metadata !DIExpression()), !dbg !174
  %call = call i32 (...) %s.coerce() #5, !dbg !175
  ret i32 %call, !dbg !176
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex301ArrayElemInt(i64 %s.coerce0, i64 %s.coerce1) local_unnamed_addr #0 !dbg !177 {
entry:
  %s.sroa.0.0.extract.trunc = trunc i64 %s.coerce0 to i32
  call void @llvm.dbg.value(metadata i32 %s.sroa.0.0.extract.trunc, metadata !184, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !185
  call void @llvm.dbg.value(metadata i64 %s.coerce0, metadata !184, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32)), !dbg !185
  call void @llvm.dbg.value(metadata i64 %s.coerce1, metadata !184, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32)), !dbg !185
  %s.sroa.3.8.extract.shift = lshr i64 %s.coerce1, 32
  %s.sroa.3.8.extract.trunc = trunc i64 %s.sroa.3.8.extract.shift to i32
  call void @llvm.dbg.value(metadata i32 %s.sroa.3.8.extract.trunc, metadata !184, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !185
  %add = add nsw i32 %s.sroa.3.8.extract.trunc, %s.sroa.0.0.extract.trunc, !dbg !186
  ret i32 %add, !dbg !187
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex302ArrayElemStruct(i64 %s.coerce0, i64 %s.coerce1) local_unnamed_addr #0 !dbg !188 {
entry:
  %s.sroa.0.0.extract.trunc = trunc i64 %s.coerce0 to i32
  call void @llvm.dbg.value(metadata i32 %s.sroa.0.0.extract.trunc, metadata !199, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !200
  call void @llvm.dbg.value(metadata i64 %s.coerce0, metadata !199, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32)), !dbg !200
  call void @llvm.dbg.value(metadata i64 %s.coerce1, metadata !199, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32)), !dbg !200
  %s.sroa.3.8.extract.shift = lshr i64 %s.coerce1, 32
  %s.sroa.3.8.extract.trunc = trunc i64 %s.sroa.3.8.extract.shift to i32
  call void @llvm.dbg.value(metadata i32 %s.sroa.3.8.extract.trunc, metadata !199, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32)), !dbg !200
  %add = add nsw i32 %s.sroa.3.8.extract.trunc, %s.sroa.0.0.extract.trunc, !dbg !201
  ret i32 %add, !dbg !202
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex303ArrayElemArrayFixedLength(%struct.s303* nocapture readonly byval(%struct.s303) align 8 %s) local_unnamed_addr #2 !dbg !203 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s303* %s, metadata !212, metadata !DIExpression()), !dbg !213
  %arrayidx1 = getelementptr inbounds %struct.s303, %struct.s303* %s, i64 0, i32 0, i64 0, i64 0, !dbg !214
  %0 = load i32, i32* %arrayidx1, align 8, !dbg !214, !tbaa !39
  %arrayidx4 = getelementptr inbounds %struct.s303, %struct.s303* %s, i64 0, i32 0, i64 3, i64 3, !dbg !215
  %1 = load i32, i32* %arrayidx4, align 4, !dbg !215, !tbaa !39
  %add = add nsw i32 %1, %0, !dbg !216
  ret i32 %add, !dbg !217
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex305ArrayElemPointerSingleElementValue(%struct.s305* nocapture readonly byval(%struct.s305) align 8 %s) local_unnamed_addr #2 !dbg !218 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s305* %s, metadata !226, metadata !DIExpression()), !dbg !227
  %arrayidx = getelementptr inbounds %struct.s305, %struct.s305* %s, i64 0, i32 0, i64 0, !dbg !228
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !228, !tbaa !229
  %1 = load i32, i32* %0, align 4, !dbg !231, !tbaa !39
  ret i32 %1, !dbg !232
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex306ArrayElemPointerSingleElementInstances(%struct.s306* nocapture readonly byval(%struct.s306) align 8 %s) local_unnamed_addr #2 !dbg !233 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s306* %s, metadata !240, metadata !DIExpression()), !dbg !241
  %arrayidx = getelementptr inbounds %struct.s306, %struct.s306* %s, i64 0, i32 0, i64 0, !dbg !242
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !242, !tbaa !229
  %cmp = icmp eq i32* %0, null, !dbg !244
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !245

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.s306, %struct.s306* %s, i64 0, i32 0, i64 3, !dbg !246
  %1 = load i32*, i32** %arrayidx2, align 8, !dbg !246, !tbaa !229
  %cmp3 = icmp eq i32* %1, null, !dbg !247
  br i1 %cmp3, label %return, label %if.else, !dbg !248

if.else:                                          ; preds = %lor.lhs.false
  %cmp8.not = icmp eq i32* %0, %1, !dbg !249
  %. = select i1 %cmp8.not, i32 3, i32 2, !dbg !251
  br label %return, !dbg !251

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ %., %if.else ], !dbg !252
  ret i32 %retval.0, !dbg !253
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex307ArrayElemPointerMultipleElementValues(%struct.s307* nocapture readonly byval(%struct.s307) align 8 %s) local_unnamed_addr #2 !dbg !254 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s307* %s, metadata !261, metadata !DIExpression()), !dbg !262
  %arrayidx = getelementptr inbounds %struct.s307, %struct.s307* %s, i64 0, i32 0, i64 0, !dbg !263
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !263, !tbaa !229
  %1 = load i32, i32* %0, align 4, !dbg !264, !tbaa !39
  %arrayidx2 = getelementptr inbounds %struct.s307, %struct.s307* %s, i64 0, i32 0, i64 3, !dbg !265
  %2 = load i32*, i32** %arrayidx2, align 8, !dbg !265, !tbaa !229
  %3 = load i32, i32* %2, align 4, !dbg !266, !tbaa !39
  %add = add nsw i32 %3, %1, !dbg !267
  ret i32 %add, !dbg !268
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex308ArrayElemPointerFunction(%struct.s308* nocapture readonly byval(%struct.s308) align 8 %s) local_unnamed_addr #3 !dbg !269 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s308* %s, metadata !277, metadata !DIExpression()), !dbg !278
  %arrayidx = getelementptr inbounds %struct.s308, %struct.s308* %s, i64 0, i32 0, i64 0, !dbg !279
  %0 = load i32 (...)*, i32 (...)** %arrayidx, align 8, !dbg !279, !tbaa !229
  %call = call i32 (...) %0() #5, !dbg !279
  %arrayidx2 = getelementptr inbounds %struct.s308, %struct.s308* %s, i64 0, i32 0, i64 3, !dbg !280
  %1 = load i32 (...)*, i32 (...)** %arrayidx2, align 8, !dbg !280, !tbaa !229
  %call3 = call i32 (...) %1() #5, !dbg !280
  %add = add nsw i32 %call3, %call, !dbg !281
  ret i32 %add, !dbg !282
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex401PointerToInt(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !283 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load i32, i32* %a, align 4, !dbg !287, !tbaa !39
  ret i32 %0, !dbg !288
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex402PointerToStruct(%struct.s402* nocapture readonly %s) local_unnamed_addr #2 !dbg !289 {
entry:
  call void @llvm.dbg.value(metadata %struct.s402* %s, metadata !297, metadata !DIExpression()), !dbg !298
  %a = getelementptr inbounds %struct.s402, %struct.s402* %s, i64 0, i32 0, !dbg !299
  %0 = load i32, i32* %a, align 4, !dbg !299, !tbaa !300
  ret i32 %0, !dbg !302
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex405PointerToPointerSingleElementValue(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !303 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !308, metadata !DIExpression()), !dbg !309
  %0 = load i32*, i32** %a, align 8, !dbg !310, !tbaa !229
  %1 = load i32, i32* %0, align 4, !dbg !311, !tbaa !39
  ret i32 %1, !dbg !312
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex406PointerToPointerSingleElementInstances(i32** nocapture readonly %a, i32** nocapture readonly %b) local_unnamed_addr #2 !dbg !313 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !317, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i32** %b, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = load i32*, i32** %a, align 8, !dbg !320, !tbaa !229
  %cmp = icmp eq i32* %0, null, !dbg !322
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !323

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %b, align 8, !dbg !324, !tbaa !229
  %cmp1 = icmp eq i32* %1, null, !dbg !325
  br i1 %cmp1, label %return, label %if.else, !dbg !326

if.else:                                          ; preds = %lor.lhs.false
  %cmp2.not = icmp eq i32* %0, %1, !dbg !327
  %. = select i1 %cmp2.not, i32 3, i32 2, !dbg !329
  br label %return, !dbg !329

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ %., %if.else ], !dbg !330
  ret i32 %retval.0, !dbg !331
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex407PointerToPointerMultipleElementValues(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !332 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !334, metadata !DIExpression()), !dbg !335
  %0 = load i32*, i32** %a, align 8, !dbg !336, !tbaa !229
  %1 = load i32, i32* %0, align 4, !dbg !337, !tbaa !39
  %arrayidx1 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !338
  %2 = load i32, i32* %arrayidx1, align 4, !dbg !338, !tbaa !39
  %add = add nsw i32 %2, %1, !dbg !339
  ret i32 %add, !dbg !340
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex408PointerToPointerFunction(i32 (...)** nocapture readonly %a) local_unnamed_addr #3 !dbg !341 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)** %a, metadata !346, metadata !DIExpression()), !dbg !347
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !348, !tbaa !229
  %call = call i32 (...) %0() #5, !dbg !349
  ret i32 %call, !dbg !350
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!12}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 4]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/types")
!9 = !{}
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!13 = distinct !DISubprogram(name: "ex101Int", scope: !8, file: !8, line: 7, type: !14, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !17)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18}
!18 = !DILocalVariable(name: "a", arg: 1, scope: !13, file: !8, line: 7, type: !16)
!19 = !DILocation(line: 0, scope: !13)
!20 = !DILocation(line: 8, column: 3, scope: !13)
!21 = distinct !DISubprogram(name: "ex102Struct", scope: !8, file: !8, line: 14, type: !22, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !27)
!22 = !DISubroutineType(types: !23)
!23 = !{!16, !24}
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s102", file: !8, line: 11, size: 32, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !24, file: !8, line: 12, baseType: !16, size: 32)
!27 = !{!28}
!28 = !DILocalVariable(name: "s", arg: 1, scope: !21, file: !8, line: 14, type: !24)
!29 = !DILocation(line: 0, scope: !21)
!30 = !DILocation(line: 15, column: 3, scope: !21)
!31 = distinct !DISubprogram(name: "ex105PointerSingleElementValue", scope: !8, file: !8, line: 20, type: !32, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !35)
!32 = !DISubroutineType(types: !33)
!33 = !{!16, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!35 = !{!36}
!36 = !DILocalVariable(name: "a", arg: 1, scope: !31, file: !8, line: 20, type: !34)
!37 = !DILocation(line: 0, scope: !31)
!38 = !DILocation(line: 21, column: 10, scope: !31)
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 21, column: 3, scope: !31)
!44 = distinct !DISubprogram(name: "ex106PointerSingleElementInstances", scope: !8, file: !8, line: 24, type: !45, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{!16, !34, !34}
!47 = !{!48, !49}
!48 = !DILocalVariable(name: "a", arg: 1, scope: !44, file: !8, line: 24, type: !34)
!49 = !DILocalVariable(name: "b", arg: 2, scope: !44, file: !8, line: 24, type: !34)
!50 = !DILocation(line: 0, scope: !44)
!51 = !DILocation(line: 25, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !44, file: !8, line: 25, column: 7)
!53 = !DILocation(line: 25, column: 17, scope: !52)
!54 = !DILocation(line: 34, column: 1, scope: !44)
!55 = distinct !DISubprogram(name: "ex107PointerMultipleElementValues", scope: !8, file: !8, line: 36, type: !32, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !56)
!56 = !{!57}
!57 = !DILocalVariable(name: "a", arg: 1, scope: !55, file: !8, line: 36, type: !34)
!58 = !DILocation(line: 0, scope: !55)
!59 = !DILocation(line: 38, column: 10, scope: !55)
!60 = !DILocation(line: 38, column: 17, scope: !55)
!61 = !DILocation(line: 38, column: 15, scope: !55)
!62 = !DILocation(line: 38, column: 3, scope: !55)
!63 = distinct !DISubprogram(name: "ex108PointerFunction", scope: !8, file: !8, line: 41, type: !64, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !69)
!64 = !DISubroutineType(types: !65)
!65 = !{!16, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!16, null}
!69 = !{!70}
!70 = !DILocalVariable(name: "a", arg: 1, scope: !63, file: !8, line: 41, type: !66)
!71 = !DILocation(line: 0, scope: !63)
!72 = !DILocation(line: 42, column: 10, scope: !63)
!73 = !DILocation(line: 42, column: 3, scope: !63)
!74 = distinct !DISubprogram(name: "ex201StructFieldInt", scope: !8, file: !8, line: 50, type: !75, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !80)
!75 = !DISubroutineType(types: !76)
!76 = !{!16, !77}
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s201", file: !8, line: 47, size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !77, file: !8, line: 48, baseType: !16, size: 32)
!80 = !{!81}
!81 = !DILocalVariable(name: "s", arg: 1, scope: !74, file: !8, line: 50, type: !77)
!82 = !DILocation(line: 0, scope: !74)
!83 = !DILocation(line: 51, column: 3, scope: !74)
!84 = distinct !DISubprogram(name: "ex202StructFieldStruct", scope: !8, file: !8, line: 59, type: !85, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !93)
!85 = !DISubroutineType(types: !86)
!86 = !{!16, !87}
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s202", file: !8, line: 54, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !87, file: !8, line: 57, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !87, file: !8, line: 55, size: 32, elements: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !90, file: !8, line: 56, baseType: !16, size: 32)
!93 = !{!94}
!94 = !DILocalVariable(name: "s", arg: 1, scope: !84, file: !8, line: 59, type: !87)
!95 = !DILocation(line: 0, scope: !84)
!96 = !DILocation(line: 60, column: 3, scope: !84)
!97 = distinct !DISubprogram(name: "ex203StructFieldArrayFixedLength", scope: !8, file: !8, line: 66, type: !98, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !106)
!98 = !DISubroutineType(types: !99)
!99 = !{!16, !100}
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s203", file: !8, line: 63, size: 128, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !100, file: !8, line: 64, baseType: !103, size: 128)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 4)
!106 = !{!107}
!107 = !DILocalVariable(name: "s", arg: 1, scope: !97, file: !8, line: 66, type: !100)
!108 = !DILocation(line: 0, scope: !97)
!109 = !DILocation(line: 67, column: 17, scope: !97)
!110 = !DILocation(line: 67, column: 3, scope: !97)
!111 = distinct !DISubprogram(name: "ex204StructFieldArrayVariableLength", scope: !8, file: !8, line: 74, type: !112, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !121)
!112 = !DISubroutineType(types: !113)
!113 = !{!16, !114}
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s204", file: !8, line: 70, size: 32, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !114, file: !8, line: 71, baseType: !16, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !114, file: !8, line: 72, baseType: !118, offset: 32)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: -1)
!121 = !{!122}
!122 = !DILocalVariable(name: "s", arg: 1, scope: !111, file: !8, line: 74, type: !114)
!123 = !DILocation(line: 74, column: 53, scope: !111)
!124 = !DILocation(line: 75, column: 10, scope: !111)
!125 = !DILocation(line: 75, column: 19, scope: !111)
!126 = !DILocation(line: 75, column: 17, scope: !111)
!127 = !DILocation(line: 75, column: 3, scope: !111)
!128 = distinct !DISubprogram(name: "ex205StructFieldPointerSingleElementValue", scope: !8, file: !8, line: 81, type: !129, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !134)
!129 = !DISubroutineType(types: !130)
!130 = !{!16, !131}
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s205", file: !8, line: 78, size: 64, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !131, file: !8, line: 79, baseType: !34, size: 64)
!134 = !{!135}
!135 = !DILocalVariable(name: "s", arg: 1, scope: !128, file: !8, line: 81, type: !131)
!136 = !DILocation(line: 0, scope: !128)
!137 = !DILocation(line: 82, column: 10, scope: !128)
!138 = !DILocation(line: 82, column: 3, scope: !128)
!139 = distinct !DISubprogram(name: "ex206StructFieldPointerSingleElementInstances", scope: !8, file: !8, line: 89, type: !140, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !146)
!140 = !DISubroutineType(types: !141)
!141 = !{!16, !142}
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s206", file: !8, line: 85, size: 128, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !142, file: !8, line: 86, baseType: !34, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !142, file: !8, line: 87, baseType: !34, size: 64, offset: 64)
!146 = !{!147}
!147 = !DILocalVariable(name: "s", arg: 1, scope: !139, file: !8, line: 89, type: !142)
!148 = !DILocation(line: 0, scope: !139)
!149 = !DILocation(line: 90, column: 11, scope: !150)
!150 = distinct !DILexicalBlock(scope: !139, file: !8, line: 90, column: 7)
!151 = !DILocation(line: 90, column: 19, scope: !150)
!152 = !DILocation(line: 99, column: 1, scope: !139)
!153 = distinct !DISubprogram(name: "ex207StructFieldPointerMultipleElementValues", scope: !8, file: !8, line: 104, type: !154, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !159)
!154 = !DISubroutineType(types: !155)
!155 = !{!16, !156}
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s207", file: !8, line: 101, size: 64, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !156, file: !8, line: 102, baseType: !34, size: 64)
!159 = !{!160}
!160 = !DILocalVariable(name: "s", arg: 1, scope: !153, file: !8, line: 104, type: !156)
!161 = !DILocation(line: 0, scope: !153)
!162 = !DILocation(line: 106, column: 10, scope: !153)
!163 = !DILocation(line: 106, column: 19, scope: !153)
!164 = !DILocation(line: 106, column: 17, scope: !153)
!165 = !DILocation(line: 106, column: 3, scope: !153)
!166 = distinct !DISubprogram(name: "ex208StructFieldPointerFunction", scope: !8, file: !8, line: 112, type: !167, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !172)
!167 = !DISubroutineType(types: !168)
!168 = !{!16, !169}
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s208", file: !8, line: 109, size: 64, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !169, file: !8, line: 110, baseType: !66, size: 64)
!172 = !{!173}
!173 = !DILocalVariable(name: "s", arg: 1, scope: !166, file: !8, line: 112, type: !169)
!174 = !DILocation(line: 0, scope: !166)
!175 = !DILocation(line: 113, column: 10, scope: !166)
!176 = !DILocation(line: 113, column: 3, scope: !166)
!177 = distinct !DISubprogram(name: "ex301ArrayElemInt", scope: !8, file: !8, line: 121, type: !178, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !183)
!178 = !DISubroutineType(types: !179)
!179 = !{!16, !180}
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s301", file: !8, line: 118, size: 128, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !180, file: !8, line: 119, baseType: !103, size: 128)
!183 = !{!184}
!184 = !DILocalVariable(name: "s", arg: 1, scope: !177, file: !8, line: 121, type: !180)
!185 = !DILocation(line: 0, scope: !177)
!186 = !DILocation(line: 122, column: 17, scope: !177)
!187 = !DILocation(line: 122, column: 3, scope: !177)
!188 = distinct !DISubprogram(name: "ex302ArrayElemStruct", scope: !8, file: !8, line: 130, type: !189, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !198)
!189 = !DISubroutineType(types: !190)
!190 = !{!16, !191}
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s302", file: !8, line: 125, size: 128, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !191, file: !8, line: 128, baseType: !194, size: 128)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 128, elements: !104)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !191, file: !8, line: 126, size: 32, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !195, file: !8, line: 127, baseType: !16, size: 32)
!198 = !{!199}
!199 = !DILocalVariable(name: "s", arg: 1, scope: !188, file: !8, line: 130, type: !191)
!200 = !DILocation(line: 0, scope: !188)
!201 = !DILocation(line: 131, column: 23, scope: !188)
!202 = !DILocation(line: 131, column: 3, scope: !188)
!203 = distinct !DISubprogram(name: "ex303ArrayElemArrayFixedLength", scope: !8, file: !8, line: 137, type: !204, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !211)
!204 = !DISubroutineType(types: !205)
!205 = !{!16, !206}
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s303", file: !8, line: 134, size: 512, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !206, file: !8, line: 135, baseType: !209, size: 512)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, elements: !210)
!210 = !{!105, !105}
!211 = !{!212}
!212 = !DILocalVariable(name: "s", arg: 1, scope: !203, file: !8, line: 137, type: !206)
!213 = !DILocation(line: 137, column: 48, scope: !203)
!214 = !DILocation(line: 138, column: 10, scope: !203)
!215 = !DILocation(line: 138, column: 22, scope: !203)
!216 = !DILocation(line: 138, column: 20, scope: !203)
!217 = !DILocation(line: 138, column: 3, scope: !203)
!218 = distinct !DISubprogram(name: "ex305ArrayElemPointerSingleElementValue", scope: !8, file: !8, line: 147, type: !219, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !225)
!219 = !DISubroutineType(types: !220)
!220 = !{!16, !221}
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s305", file: !8, line: 143, size: 256, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !221, file: !8, line: 144, baseType: !224, size: 256)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 256, elements: !104)
!225 = !{!226}
!226 = !DILocalVariable(name: "s", arg: 1, scope: !218, file: !8, line: 147, type: !221)
!227 = !DILocation(line: 147, column: 57, scope: !218)
!228 = !DILocation(line: 148, column: 11, scope: !218)
!229 = !{!230, !230, i64 0}
!230 = !{!"any pointer", !41, i64 0}
!231 = !DILocation(line: 148, column: 10, scope: !218)
!232 = !DILocation(line: 148, column: 3, scope: !218)
!233 = distinct !DISubprogram(name: "ex306ArrayElemPointerSingleElementInstances", scope: !8, file: !8, line: 156, type: !234, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !239)
!234 = !DISubroutineType(types: !235)
!235 = !{!16, !236}
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s306", file: !8, line: 151, size: 256, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !236, file: !8, line: 152, baseType: !224, size: 256)
!239 = !{!240}
!240 = !DILocalVariable(name: "s", arg: 1, scope: !233, file: !8, line: 156, type: !236)
!241 = !DILocation(line: 156, column: 61, scope: !233)
!242 = !DILocation(line: 157, column: 7, scope: !243)
!243 = distinct !DILexicalBlock(scope: !233, file: !8, line: 157, column: 7)
!244 = !DILocation(line: 157, column: 14, scope: !243)
!245 = !DILocation(line: 157, column: 22, scope: !243)
!246 = !DILocation(line: 157, column: 25, scope: !243)
!247 = !DILocation(line: 157, column: 32, scope: !243)
!248 = !DILocation(line: 157, column: 7, scope: !233)
!249 = !DILocation(line: 160, column: 21, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !8, line: 160, column: 14)
!251 = !DILocation(line: 0, scope: !250)
!252 = !DILocation(line: 0, scope: !243)
!253 = !DILocation(line: 166, column: 1, scope: !233)
!254 = distinct !DISubprogram(name: "ex307ArrayElemPointerMultipleElementValues", scope: !8, file: !8, line: 172, type: !255, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !260)
!255 = !DISubroutineType(types: !256)
!256 = !{!16, !257}
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s307", file: !8, line: 168, size: 256, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !257, file: !8, line: 169, baseType: !224, size: 256)
!260 = !{!261}
!261 = !DILocalVariable(name: "s", arg: 1, scope: !254, file: !8, line: 172, type: !257)
!262 = !DILocation(line: 172, column: 60, scope: !254)
!263 = !DILocation(line: 174, column: 11, scope: !254)
!264 = !DILocation(line: 174, column: 10, scope: !254)
!265 = !DILocation(line: 174, column: 21, scope: !254)
!266 = !DILocation(line: 174, column: 20, scope: !254)
!267 = !DILocation(line: 174, column: 18, scope: !254)
!268 = !DILocation(line: 174, column: 3, scope: !254)
!269 = distinct !DISubprogram(name: "ex308ArrayElemPointerFunction", scope: !8, file: !8, line: 181, type: !270, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !276)
!270 = !DISubroutineType(types: !271)
!271 = !{!16, !272}
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s308", file: !8, line: 177, size: 256, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !272, file: !8, line: 178, baseType: !275, size: 256)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 256, elements: !104)
!276 = !{!277}
!277 = !DILocalVariable(name: "s", arg: 1, scope: !269, file: !8, line: 181, type: !272)
!278 = !DILocation(line: 181, column: 47, scope: !269)
!279 = !DILocation(line: 182, column: 10, scope: !269)
!280 = !DILocation(line: 182, column: 21, scope: !269)
!281 = !DILocation(line: 182, column: 19, scope: !269)
!282 = !DILocation(line: 182, column: 3, scope: !269)
!283 = distinct !DISubprogram(name: "ex401PointerToInt", scope: !8, file: !8, line: 187, type: !32, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !284)
!284 = !{!285}
!285 = !DILocalVariable(name: "a", arg: 1, scope: !283, file: !8, line: 187, type: !34)
!286 = !DILocation(line: 0, scope: !283)
!287 = !DILocation(line: 188, column: 10, scope: !283)
!288 = !DILocation(line: 188, column: 3, scope: !283)
!289 = distinct !DISubprogram(name: "ex402PointerToStruct", scope: !8, file: !8, line: 194, type: !290, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !296)
!290 = !DISubroutineType(types: !291)
!291 = !{!16, !292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s402", file: !8, line: 191, size: 32, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !293, file: !8, line: 192, baseType: !16, size: 32)
!296 = !{!297}
!297 = !DILocalVariable(name: "s", arg: 1, scope: !289, file: !8, line: 194, type: !292)
!298 = !DILocation(line: 0, scope: !289)
!299 = !DILocation(line: 195, column: 13, scope: !289)
!300 = !{!301, !40, i64 0}
!301 = !{!"s402", !40, i64 0}
!302 = !DILocation(line: 195, column: 3, scope: !289)
!303 = distinct !DISubprogram(name: "ex405PointerToPointerSingleElementValue", scope: !8, file: !8, line: 200, type: !304, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !307)
!304 = !DISubroutineType(types: !305)
!305 = !{!16, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!307 = !{!308}
!308 = !DILocalVariable(name: "a", arg: 1, scope: !303, file: !8, line: 200, type: !306)
!309 = !DILocation(line: 0, scope: !303)
!310 = !DILocation(line: 201, column: 11, scope: !303)
!311 = !DILocation(line: 201, column: 10, scope: !303)
!312 = !DILocation(line: 201, column: 3, scope: !303)
!313 = distinct !DISubprogram(name: "ex406PointerToPointerSingleElementInstances", scope: !8, file: !8, line: 204, type: !314, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !316)
!314 = !DISubroutineType(types: !315)
!315 = !{!16, !306, !306}
!316 = !{!317, !318}
!317 = !DILocalVariable(name: "a", arg: 1, scope: !313, file: !8, line: 204, type: !306)
!318 = !DILocalVariable(name: "b", arg: 2, scope: !313, file: !8, line: 204, type: !306)
!319 = !DILocation(line: 0, scope: !313)
!320 = !DILocation(line: 205, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !313, file: !8, line: 205, column: 7)
!322 = !DILocation(line: 205, column: 10, scope: !321)
!323 = !DILocation(line: 205, column: 18, scope: !321)
!324 = !DILocation(line: 205, column: 21, scope: !321)
!325 = !DILocation(line: 205, column: 24, scope: !321)
!326 = !DILocation(line: 205, column: 7, scope: !313)
!327 = !DILocation(line: 208, column: 17, scope: !328)
!328 = distinct !DILexicalBlock(scope: !321, file: !8, line: 208, column: 14)
!329 = !DILocation(line: 0, scope: !328)
!330 = !DILocation(line: 0, scope: !321)
!331 = !DILocation(line: 214, column: 1, scope: !313)
!332 = distinct !DISubprogram(name: "ex407PointerToPointerMultipleElementValues", scope: !8, file: !8, line: 216, type: !304, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !333)
!333 = !{!334}
!334 = !DILocalVariable(name: "a", arg: 1, scope: !332, file: !8, line: 216, type: !306)
!335 = !DILocation(line: 0, scope: !332)
!336 = !DILocation(line: 218, column: 11, scope: !332)
!337 = !DILocation(line: 218, column: 10, scope: !332)
!338 = !DILocation(line: 218, column: 20, scope: !332)
!339 = !DILocation(line: 218, column: 18, scope: !332)
!340 = !DILocation(line: 218, column: 3, scope: !332)
!341 = distinct !DISubprogram(name: "ex408PointerToPointerFunction", scope: !8, file: !8, line: 221, type: !342, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !345)
!342 = !DISubroutineType(types: !343)
!343 = !{!16, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!345 = !{!346}
!346 = !DILocalVariable(name: "a", arg: 1, scope: !341, file: !8, line: 221, type: !344)
!347 = !DILocation(line: 0, scope: !341)
!348 = !DILocation(line: 222, column: 11, scope: !341)
!349 = !DILocation(line: 222, column: 10, scope: !341)
!350 = !DILocation(line: 222, column: 3, scope: !341)
