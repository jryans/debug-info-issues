; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.s102 = type { i32, [2 x [2 x i32]] }
%struct.s201 = type { i32, [2 x [2 x i32]] }
%struct.s202 = type { %struct.anon, [2 x [2 x i32]] }
%struct.anon = type { i32 }
%struct.s203 = type { [4 x i32], [2 x [2 x i32]] }
%struct.s204 = type { i32, [0 x i32] }
%struct.s205 = type { i32*, [2 x [2 x i32]] }
%struct.s206 = type { i32*, i32*, [2 x [2 x i32]] }
%struct.s207 = type { i32*, [2 x [2 x i32]] }
%struct.s208 = type { i32 (...)*, [2 x [2 x i32]] }
%struct.s301 = type { [4 x i32], [2 x [2 x i32]] }
%struct.s302 = type { [4 x %struct.anon.0], [2 x [2 x i32]] }
%struct.anon.0 = type { i32 }
%struct.s303 = type { [4 x [4 x i32]] }
%struct.s305 = type { [4 x i32*] }
%struct.s306 = type { [4 x i32*] }
%struct.s307 = type { [4 x i32*] }
%struct.s308 = type { [4 x i32 (...)*] }
%struct.s402 = type { i32 }
%struct.s501 = type { %struct.anon.1 }
%struct.anon.1 = type { [4 x i32*] }
%struct.s502 = type { [4 x %struct.anon.2] }
%struct.anon.2 = type { i32* }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex101Int(i32 returned %a) local_unnamed_addr #0 !dbg !13 {
entry:
  call void @llvm.dbg.value(metadata i32 %a, metadata !18, metadata !DIExpression()), !dbg !19
  ret i32 %a, !dbg !20
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex102Struct(%struct.s102* nocapture readonly byval(%struct.s102) align 8 %s) local_unnamed_addr #2 !dbg !21 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s102* %s, metadata !32, metadata !DIExpression()), !dbg !33
  %a = getelementptr inbounds %struct.s102, %struct.s102* %s, i64 0, i32 0, !dbg !34
  %0 = load i32, i32* %a, align 8, !dbg !34, !tbaa !35
  ret i32 %0, !dbg !40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex105PointerSingleElementValue(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !41 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !46, metadata !DIExpression()), !dbg !47
  %0 = load i32, i32* %a, align 4, !dbg !48, !tbaa !49
  ret i32 %0, !dbg !50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex106PointerSingleElementInstances(i32* readnone %a, i32* readnone %b) local_unnamed_addr #0 !dbg !51 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !55, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32* %b, metadata !56, metadata !DIExpression()), !dbg !57
  %cmp = icmp eq i32* %a, null, !dbg !58
  %cmp1 = icmp eq i32* %b, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1, !dbg !60
  %cmp2.not = icmp eq i32* %a, %b, !dbg !60
  %. = select i1 %cmp2.not, i32 3, i32 2, !dbg !60
  %retval.0 = select i1 %or.cond, i32 1, i32 %., !dbg !60
  ret i32 %retval.0, !dbg !61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex107PointerMultipleElementValues(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !62 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load i32, i32* %a, align 4, !dbg !66, !tbaa !49
  %arrayidx1 = getelementptr inbounds i32, i32* %a, i64 3, !dbg !67
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !67, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !68
  ret i32 %add, !dbg !69
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex108PointerFunction(i32 (...)* nocapture %a) local_unnamed_addr #3 !dbg !70 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* %a, metadata !77, metadata !DIExpression()), !dbg !78
  %call = call i32 (...) %a() #5, !dbg !79
  ret i32 %call, !dbg !80
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex201StructFieldInt(%struct.s201* nocapture readonly byval(%struct.s201) align 8 %s) local_unnamed_addr #2 !dbg !81 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s201* %s, metadata !89, metadata !DIExpression()), !dbg !90
  %a = getelementptr inbounds %struct.s201, %struct.s201* %s, i64 0, i32 0, !dbg !91
  %0 = load i32, i32* %a, align 8, !dbg !91, !tbaa !92
  ret i32 %0, !dbg !94
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex202StructFieldStruct(%struct.s202* nocapture readonly byval(%struct.s202) align 8 %s) local_unnamed_addr #2 !dbg !95 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s202* %s, metadata !106, metadata !DIExpression()), !dbg !107
  %a = getelementptr inbounds %struct.s202, %struct.s202* %s, i64 0, i32 0, i32 0, !dbg !108
  %0 = load i32, i32* %a, align 8, !dbg !108, !tbaa !109
  ret i32 %0, !dbg !112
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex203StructFieldArrayFixedLength(%struct.s203* nocapture readonly byval(%struct.s203) align 8 %s) local_unnamed_addr #2 !dbg !113 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s203* %s, metadata !124, metadata !DIExpression()), !dbg !125
  %arrayidx = getelementptr inbounds %struct.s203, %struct.s203* %s, i64 0, i32 0, i64 0, !dbg !126
  %0 = load i32, i32* %arrayidx, align 8, !dbg !126, !tbaa !49
  %arrayidx2 = getelementptr inbounds %struct.s203, %struct.s203* %s, i64 0, i32 0, i64 3, !dbg !127
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !127, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !128
  ret i32 %add, !dbg !129
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex204StructFieldArrayVariableLength(%struct.s204* nocapture readonly byval(%struct.s204) align 8 %s) local_unnamed_addr #2 !dbg !130 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s204* %s, metadata !141, metadata !DIExpression()), !dbg !142
  %arrayidx = getelementptr inbounds %struct.s204, %struct.s204* %s, i64 0, i32 1, i64 0, !dbg !143
  %0 = load i32, i32* %arrayidx, align 4, !dbg !143, !tbaa !49
  %arrayidx2 = getelementptr inbounds %struct.s204, %struct.s204* %s, i64 0, i32 1, i64 3, !dbg !144
  %1 = load i32, i32* %arrayidx2, align 8, !dbg !144, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !145
  ret i32 %add, !dbg !146
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex205StructFieldPointerSingleElementValue(%struct.s205* nocapture readonly byval(%struct.s205) align 8 %s) local_unnamed_addr #2 !dbg !147 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s205* %s, metadata !155, metadata !DIExpression()), !dbg !156
  %a = getelementptr inbounds %struct.s205, %struct.s205* %s, i64 0, i32 0, !dbg !157
  %0 = load i32*, i32** %a, align 8, !dbg !157, !tbaa !158
  %1 = load i32, i32* %0, align 4, !dbg !161, !tbaa !49
  ret i32 %1, !dbg !162
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex206StructFieldPointerSingleElementInstances(%struct.s206* nocapture readonly byval(%struct.s206) align 8 %s) local_unnamed_addr #2 !dbg !163 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s206* %s, metadata !172, metadata !DIExpression()), !dbg !173
  %a = getelementptr inbounds %struct.s206, %struct.s206* %s, i64 0, i32 0, !dbg !174
  %0 = load i32*, i32** %a, align 8, !dbg !174, !tbaa !176
  %cmp = icmp eq i32* %0, null, !dbg !178
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !179

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds %struct.s206, %struct.s206* %s, i64 0, i32 1, !dbg !180
  %1 = load i32*, i32** %b, align 8, !dbg !180, !tbaa !181
  %cmp1 = icmp eq i32* %1, null, !dbg !182
  br i1 %cmp1, label %return, label %if.else, !dbg !183

if.else:                                          ; preds = %lor.lhs.false
  %cmp4.not = icmp eq i32* %0, %1, !dbg !184
  %. = select i1 %cmp4.not, i32 3, i32 2, !dbg !186
  br label %return, !dbg !186

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ %., %if.else ], !dbg !187
  ret i32 %retval.0, !dbg !188
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex207StructFieldPointerMultipleElementValues(%struct.s207* nocapture readonly byval(%struct.s207) align 8 %s) local_unnamed_addr #2 !dbg !189 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s207* %s, metadata !197, metadata !DIExpression()), !dbg !198
  %a = getelementptr inbounds %struct.s207, %struct.s207* %s, i64 0, i32 0, !dbg !199
  %0 = load i32*, i32** %a, align 8, !dbg !199, !tbaa !200
  %1 = load i32, i32* %0, align 4, !dbg !202, !tbaa !49
  %arrayidx2 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !203
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !203, !tbaa !49
  %add = add nsw i32 %2, %1, !dbg !204
  ret i32 %add, !dbg !205
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex208StructFieldPointerFunction(%struct.s208* nocapture readonly byval(%struct.s208) align 8 %s) local_unnamed_addr #3 !dbg !206 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s208* %s, metadata !214, metadata !DIExpression()), !dbg !215
  %a = getelementptr inbounds %struct.s208, %struct.s208* %s, i64 0, i32 0, !dbg !216
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !216, !tbaa !217
  %call = call i32 (...) %0() #5, !dbg !219
  ret i32 %call, !dbg !220
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex301ArrayElemInt(%struct.s301* nocapture readonly byval(%struct.s301) align 8 %s) local_unnamed_addr #2 !dbg !221 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s301* %s, metadata !229, metadata !DIExpression()), !dbg !230
  %arrayidx = getelementptr inbounds %struct.s301, %struct.s301* %s, i64 0, i32 0, i64 0, !dbg !231
  %0 = load i32, i32* %arrayidx, align 8, !dbg !231, !tbaa !49
  %arrayidx2 = getelementptr inbounds %struct.s301, %struct.s301* %s, i64 0, i32 0, i64 3, !dbg !232
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !232, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !233
  ret i32 %add, !dbg !234
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex302ArrayElemStruct(%struct.s302* nocapture readonly byval(%struct.s302) align 8 %s) local_unnamed_addr #2 !dbg !235 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s302* %s, metadata !247, metadata !DIExpression()), !dbg !248
  %a = getelementptr inbounds %struct.s302, %struct.s302* %s, i64 0, i32 0, i64 0, i32 0, !dbg !249
  %0 = load i32, i32* %a, align 8, !dbg !249, !tbaa !250
  %a3 = getelementptr inbounds %struct.s302, %struct.s302* %s, i64 0, i32 0, i64 3, i32 0, !dbg !251
  %1 = load i32, i32* %a3, align 4, !dbg !251, !tbaa !250
  %add = add nsw i32 %1, %0, !dbg !252
  ret i32 %add, !dbg !253
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex303ArrayElemArrayFixedLength(%struct.s303* nocapture readonly byval(%struct.s303) align 8 %s) local_unnamed_addr #2 !dbg !254 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s303* %s, metadata !263, metadata !DIExpression()), !dbg !264
  %arrayidx1 = getelementptr inbounds %struct.s303, %struct.s303* %s, i64 0, i32 0, i64 0, i64 0, !dbg !265
  %0 = load i32, i32* %arrayidx1, align 8, !dbg !265, !tbaa !49
  %arrayidx4 = getelementptr inbounds %struct.s303, %struct.s303* %s, i64 0, i32 0, i64 3, i64 3, !dbg !266
  %1 = load i32, i32* %arrayidx4, align 4, !dbg !266, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !267
  ret i32 %add, !dbg !268
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex305ArrayElemPointerSingleElementValue(%struct.s305* nocapture readonly byval(%struct.s305) align 8 %s) local_unnamed_addr #2 !dbg !269 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s305* %s, metadata !277, metadata !DIExpression()), !dbg !278
  %arrayidx = getelementptr inbounds %struct.s305, %struct.s305* %s, i64 0, i32 0, i64 0, !dbg !279
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !279, !tbaa !280
  %1 = load i32, i32* %0, align 4, !dbg !281, !tbaa !49
  ret i32 %1, !dbg !282
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex306ArrayElemPointerSingleElementInstances(%struct.s306* nocapture readonly byval(%struct.s306) align 8 %s) local_unnamed_addr #2 !dbg !283 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s306* %s, metadata !290, metadata !DIExpression()), !dbg !291
  %arrayidx = getelementptr inbounds %struct.s306, %struct.s306* %s, i64 0, i32 0, i64 0, !dbg !292
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !292, !tbaa !280
  %cmp = icmp eq i32* %0, null, !dbg !294
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !295

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.s306, %struct.s306* %s, i64 0, i32 0, i64 3, !dbg !296
  %1 = load i32*, i32** %arrayidx2, align 8, !dbg !296, !tbaa !280
  %cmp3 = icmp eq i32* %1, null, !dbg !297
  br i1 %cmp3, label %return, label %if.else, !dbg !298

if.else:                                          ; preds = %lor.lhs.false
  %cmp8.not = icmp eq i32* %0, %1, !dbg !299
  %. = select i1 %cmp8.not, i32 3, i32 2, !dbg !301
  br label %return, !dbg !301

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ %., %if.else ], !dbg !302
  ret i32 %retval.0, !dbg !303
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex307ArrayElemPointerMultipleElementValues(%struct.s307* nocapture readonly byval(%struct.s307) align 8 %s) local_unnamed_addr #2 !dbg !304 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s307* %s, metadata !311, metadata !DIExpression()), !dbg !312
  %arrayidx = getelementptr inbounds %struct.s307, %struct.s307* %s, i64 0, i32 0, i64 0, !dbg !313
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !313, !tbaa !280
  %1 = load i32, i32* %0, align 4, !dbg !314, !tbaa !49
  %arrayidx2 = getelementptr inbounds %struct.s307, %struct.s307* %s, i64 0, i32 0, i64 3, !dbg !315
  %2 = load i32*, i32** %arrayidx2, align 8, !dbg !315, !tbaa !280
  %3 = load i32, i32* %2, align 4, !dbg !316, !tbaa !49
  %add = add nsw i32 %3, %1, !dbg !317
  ret i32 %add, !dbg !318
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex308ArrayElemPointerFunction(%struct.s308* nocapture readonly byval(%struct.s308) align 8 %s) local_unnamed_addr #3 !dbg !319 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s308* %s, metadata !327, metadata !DIExpression()), !dbg !328
  %arrayidx = getelementptr inbounds %struct.s308, %struct.s308* %s, i64 0, i32 0, i64 0, !dbg !329
  %0 = load i32 (...)*, i32 (...)** %arrayidx, align 8, !dbg !329, !tbaa !280
  %call = call i32 (...) %0() #5, !dbg !329
  %arrayidx2 = getelementptr inbounds %struct.s308, %struct.s308* %s, i64 0, i32 0, i64 3, !dbg !330
  %1 = load i32 (...)*, i32 (...)** %arrayidx2, align 8, !dbg !330, !tbaa !280
  %call3 = call i32 (...) %1() #5, !dbg !330
  %add = add nsw i32 %call3, %call, !dbg !331
  ret i32 %add, !dbg !332
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex401PointerToInt(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !333 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i32, i32* %a, align 4, !dbg !337, !tbaa !49
  ret i32 %0, !dbg !338
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex402PointerToStruct(%struct.s402* nocapture readonly %s) local_unnamed_addr #2 !dbg !339 {
entry:
  call void @llvm.dbg.value(metadata %struct.s402* %s, metadata !347, metadata !DIExpression()), !dbg !348
  %a = getelementptr inbounds %struct.s402, %struct.s402* %s, i64 0, i32 0, !dbg !349
  %0 = load i32, i32* %a, align 4, !dbg !349, !tbaa !350
  ret i32 %0, !dbg !352
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex405PointerToPointerSingleElementValue(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !353 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i32*, i32** %a, align 8, !dbg !360, !tbaa !280
  %1 = load i32, i32* %0, align 4, !dbg !361, !tbaa !49
  ret i32 %1, !dbg !362
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex406PointerToPointerSingleElementInstances(i32** nocapture readonly %a, i32** nocapture readonly %b) local_unnamed_addr #2 !dbg !363 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32** %b, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load i32*, i32** %a, align 8, !dbg !370, !tbaa !280
  %cmp = icmp eq i32* %0, null, !dbg !372
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !373

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %b, align 8, !dbg !374, !tbaa !280
  %cmp1 = icmp eq i32* %1, null, !dbg !375
  br i1 %cmp1, label %return, label %if.else, !dbg !376

if.else:                                          ; preds = %lor.lhs.false
  %cmp2.not = icmp eq i32* %0, %1, !dbg !377
  %. = select i1 %cmp2.not, i32 3, i32 2, !dbg !379
  br label %return, !dbg !379

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ %., %if.else ], !dbg !380
  ret i32 %retval.0, !dbg !381
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex407PointerToPointerMultipleElementValues(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !382 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !384, metadata !DIExpression()), !dbg !385
  %0 = load i32*, i32** %a, align 8, !dbg !386, !tbaa !280
  %1 = load i32, i32* %0, align 4, !dbg !387, !tbaa !49
  %arrayidx1 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !388
  %2 = load i32, i32* %arrayidx1, align 4, !dbg !388, !tbaa !49
  %add = add nsw i32 %2, %1, !dbg !389
  ret i32 %add, !dbg !390
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex408PointerToPointerFunction(i32 (...)** nocapture readonly %a) local_unnamed_addr #3 !dbg !391 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)** %a, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !398, !tbaa !280
  %call = call i32 (...) %0() #5, !dbg !399
  ret i32 %call, !dbg !400
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex501StructWithArrayOfPointers(%struct.s501* nocapture readonly byval(%struct.s501) align 8 %s) local_unnamed_addr #2 !dbg !401 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s501* %s, metadata !411, metadata !DIExpression()), !dbg !412
  %arrayidx = getelementptr inbounds %struct.s501, %struct.s501* %s, i64 0, i32 0, i32 0, i64 0, !dbg !413
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !413, !tbaa !280
  %1 = load i32, i32* %0, align 4, !dbg !414, !tbaa !49
  ret i32 %1, !dbg !415
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex502ArrayOfStructsWithPointer(%struct.s502* nocapture readonly byval(%struct.s502) align 8 %s) local_unnamed_addr #2 !dbg !416 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s502* %s, metadata !427, metadata !DIExpression()), !dbg !428
  %a = getelementptr inbounds %struct.s502, %struct.s502* %s, i64 0, i32 0, i64 0, i32 0, !dbg !429
  %0 = load i32*, i32** %a, align 8, !dbg !429, !tbaa !430
  %1 = load i32, i32* %0, align 4, !dbg !432, !tbaa !49
  ret i32 %1, !dbg !433
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
!21 = distinct !DISubprogram(name: "ex102Struct", scope: !8, file: !8, line: 15, type: !22, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !31)
!22 = !DISubroutineType(types: !23)
!23 = !{!16, !24}
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s102", file: !8, line: 11, size: 160, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !24, file: !8, line: 12, baseType: !16, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !24, file: !8, line: 13, baseType: !28, size: 128, offset: 32)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !29)
!29 = !{!30, !30}
!30 = !DISubrange(count: 2)
!31 = !{!32}
!32 = !DILocalVariable(name: "s", arg: 1, scope: !21, file: !8, line: 15, type: !24)
!33 = !DILocation(line: 15, column: 29, scope: !21)
!34 = !DILocation(line: 16, column: 12, scope: !21)
!35 = !{!36, !37, i64 0}
!36 = !{!"s102", !37, i64 0, !38, i64 4}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 16, column: 3, scope: !21)
!41 = distinct !DISubprogram(name: "ex105PointerSingleElementValue", scope: !8, file: !8, line: 21, type: !42, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !45)
!42 = !DISubroutineType(types: !43)
!43 = !{!16, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!45 = !{!46}
!46 = !DILocalVariable(name: "a", arg: 1, scope: !41, file: !8, line: 21, type: !44)
!47 = !DILocation(line: 0, scope: !41)
!48 = !DILocation(line: 22, column: 10, scope: !41)
!49 = !{!37, !37, i64 0}
!50 = !DILocation(line: 22, column: 3, scope: !41)
!51 = distinct !DISubprogram(name: "ex106PointerSingleElementInstances", scope: !8, file: !8, line: 25, type: !52, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !54)
!52 = !DISubroutineType(types: !53)
!53 = !{!16, !44, !44}
!54 = !{!55, !56}
!55 = !DILocalVariable(name: "a", arg: 1, scope: !51, file: !8, line: 25, type: !44)
!56 = !DILocalVariable(name: "b", arg: 2, scope: !51, file: !8, line: 25, type: !44)
!57 = !DILocation(line: 0, scope: !51)
!58 = !DILocation(line: 26, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !51, file: !8, line: 26, column: 7)
!60 = !DILocation(line: 26, column: 17, scope: !59)
!61 = !DILocation(line: 35, column: 1, scope: !51)
!62 = distinct !DISubprogram(name: "ex107PointerMultipleElementValues", scope: !8, file: !8, line: 37, type: !42, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !63)
!63 = !{!64}
!64 = !DILocalVariable(name: "a", arg: 1, scope: !62, file: !8, line: 37, type: !44)
!65 = !DILocation(line: 0, scope: !62)
!66 = !DILocation(line: 39, column: 10, scope: !62)
!67 = !DILocation(line: 39, column: 17, scope: !62)
!68 = !DILocation(line: 39, column: 15, scope: !62)
!69 = !DILocation(line: 39, column: 3, scope: !62)
!70 = distinct !DISubprogram(name: "ex108PointerFunction", scope: !8, file: !8, line: 42, type: !71, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !76)
!71 = !DISubroutineType(types: !72)
!72 = !{!16, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!16, null}
!76 = !{!77}
!77 = !DILocalVariable(name: "a", arg: 1, scope: !70, file: !8, line: 42, type: !73)
!78 = !DILocation(line: 0, scope: !70)
!79 = !DILocation(line: 43, column: 10, scope: !70)
!80 = !DILocation(line: 43, column: 3, scope: !70)
!81 = distinct !DISubprogram(name: "ex201StructFieldInt", scope: !8, file: !8, line: 52, type: !82, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !88)
!82 = !DISubroutineType(types: !83)
!83 = !{!16, !84}
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s201", file: !8, line: 48, size: 160, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !84, file: !8, line: 49, baseType: !16, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !84, file: !8, line: 50, baseType: !28, size: 128, offset: 32)
!88 = !{!89}
!89 = !DILocalVariable(name: "s", arg: 1, scope: !81, file: !8, line: 52, type: !84)
!90 = !DILocation(line: 52, column: 37, scope: !81)
!91 = !DILocation(line: 53, column: 12, scope: !81)
!92 = !{!93, !37, i64 0}
!93 = !{!"s201", !37, i64 0, !38, i64 4}
!94 = !DILocation(line: 53, column: 3, scope: !81)
!95 = distinct !DISubprogram(name: "ex202StructFieldStruct", scope: !8, file: !8, line: 62, type: !96, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !105)
!96 = !DISubroutineType(types: !97)
!97 = !{!16, !98}
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s202", file: !8, line: 56, size: 160, elements: !99)
!99 = !{!100, !104}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !98, file: !8, line: 59, baseType: !101, size: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !98, file: !8, line: 57, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !101, file: !8, line: 58, baseType: !16, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !98, file: !8, line: 60, baseType: !28, size: 128, offset: 32)
!105 = !{!106}
!106 = !DILocalVariable(name: "s", arg: 1, scope: !95, file: !8, line: 62, type: !98)
!107 = !DILocation(line: 62, column: 40, scope: !95)
!108 = !DILocation(line: 63, column: 18, scope: !95)
!109 = !{!110, !37, i64 0}
!110 = !{!"s202", !111, i64 0, !38, i64 4}
!111 = !{!"", !37, i64 0}
!112 = !DILocation(line: 63, column: 3, scope: !95)
!113 = distinct !DISubprogram(name: "ex203StructFieldArrayFixedLength", scope: !8, file: !8, line: 70, type: !114, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !123)
!114 = !DISubroutineType(types: !115)
!115 = !{!16, !116}
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s203", file: !8, line: 66, size: 256, elements: !117)
!117 = !{!118, !122}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !116, file: !8, line: 67, baseType: !119, size: 128)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 4)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !116, file: !8, line: 68, baseType: !28, size: 128, offset: 128)
!123 = !{!124}
!124 = !DILocalVariable(name: "s", arg: 1, scope: !113, file: !8, line: 70, type: !116)
!125 = !DILocation(line: 70, column: 50, scope: !113)
!126 = !DILocation(line: 71, column: 10, scope: !113)
!127 = !DILocation(line: 71, column: 19, scope: !113)
!128 = !DILocation(line: 71, column: 17, scope: !113)
!129 = !DILocation(line: 71, column: 3, scope: !113)
!130 = distinct !DISubprogram(name: "ex204StructFieldArrayVariableLength", scope: !8, file: !8, line: 78, type: !131, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !140)
!131 = !DISubroutineType(types: !132)
!132 = !{!16, !133}
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s204", file: !8, line: 74, size: 32, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !133, file: !8, line: 75, baseType: !16, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !133, file: !8, line: 76, baseType: !137, offset: 32)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: -1)
!140 = !{!141}
!141 = !DILocalVariable(name: "s", arg: 1, scope: !130, file: !8, line: 78, type: !133)
!142 = !DILocation(line: 78, column: 53, scope: !130)
!143 = !DILocation(line: 79, column: 10, scope: !130)
!144 = !DILocation(line: 79, column: 19, scope: !130)
!145 = !DILocation(line: 79, column: 17, scope: !130)
!146 = !DILocation(line: 79, column: 3, scope: !130)
!147 = distinct !DISubprogram(name: "ex205StructFieldPointerSingleElementValue", scope: !8, file: !8, line: 86, type: !148, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !154)
!148 = !DISubroutineType(types: !149)
!149 = !{!16, !150}
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s205", file: !8, line: 82, size: 192, elements: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !150, file: !8, line: 83, baseType: !44, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !150, file: !8, line: 84, baseType: !28, size: 128, offset: 64)
!154 = !{!155}
!155 = !DILocalVariable(name: "s", arg: 1, scope: !147, file: !8, line: 86, type: !150)
!156 = !DILocation(line: 86, column: 59, scope: !147)
!157 = !DILocation(line: 87, column: 13, scope: !147)
!158 = !{!159, !160, i64 0}
!159 = !{!"s205", !160, i64 0, !38, i64 8}
!160 = !{!"any pointer", !38, i64 0}
!161 = !DILocation(line: 87, column: 10, scope: !147)
!162 = !DILocation(line: 87, column: 3, scope: !147)
!163 = distinct !DISubprogram(name: "ex206StructFieldPointerSingleElementInstances", scope: !8, file: !8, line: 95, type: !164, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !171)
!164 = !DISubroutineType(types: !165)
!165 = !{!16, !166}
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s206", file: !8, line: 90, size: 256, elements: !167)
!167 = !{!168, !169, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !166, file: !8, line: 91, baseType: !44, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !166, file: !8, line: 92, baseType: !44, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !166, file: !8, line: 93, baseType: !28, size: 128, offset: 128)
!171 = !{!172}
!172 = !DILocalVariable(name: "s", arg: 1, scope: !163, file: !8, line: 95, type: !166)
!173 = !DILocation(line: 95, column: 63, scope: !163)
!174 = !DILocation(line: 96, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !163, file: !8, line: 96, column: 7)
!176 = !{!177, !160, i64 0}
!177 = !{!"s206", !160, i64 0, !160, i64 8, !38, i64 16}
!178 = !DILocation(line: 96, column: 11, scope: !175)
!179 = !DILocation(line: 96, column: 19, scope: !175)
!180 = !DILocation(line: 96, column: 24, scope: !175)
!181 = !{!177, !160, i64 8}
!182 = !DILocation(line: 96, column: 26, scope: !175)
!183 = !DILocation(line: 96, column: 7, scope: !163)
!184 = !DILocation(line: 99, column: 18, scope: !185)
!185 = distinct !DILexicalBlock(scope: !175, file: !8, line: 99, column: 14)
!186 = !DILocation(line: 0, scope: !185)
!187 = !DILocation(line: 0, scope: !175)
!188 = !DILocation(line: 105, column: 1, scope: !163)
!189 = distinct !DISubprogram(name: "ex207StructFieldPointerMultipleElementValues", scope: !8, file: !8, line: 111, type: !190, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !196)
!190 = !DISubroutineType(types: !191)
!191 = !{!16, !192}
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s207", file: !8, line: 107, size: 192, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !192, file: !8, line: 108, baseType: !44, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !192, file: !8, line: 109, baseType: !28, size: 128, offset: 64)
!196 = !{!197}
!197 = !DILocalVariable(name: "s", arg: 1, scope: !189, file: !8, line: 111, type: !192)
!198 = !DILocation(line: 111, column: 62, scope: !189)
!199 = !DILocation(line: 113, column: 12, scope: !189)
!200 = !{!201, !160, i64 0}
!201 = !{!"s207", !160, i64 0, !38, i64 8}
!202 = !DILocation(line: 113, column: 10, scope: !189)
!203 = !DILocation(line: 113, column: 19, scope: !189)
!204 = !DILocation(line: 113, column: 17, scope: !189)
!205 = !DILocation(line: 113, column: 3, scope: !189)
!206 = distinct !DISubprogram(name: "ex208StructFieldPointerFunction", scope: !8, file: !8, line: 120, type: !207, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !213)
!207 = !DISubroutineType(types: !208)
!208 = !{!16, !209}
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s208", file: !8, line: 116, size: 192, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !209, file: !8, line: 117, baseType: !73, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !209, file: !8, line: 118, baseType: !28, size: 128, offset: 64)
!213 = !{!214}
!214 = !DILocalVariable(name: "s", arg: 1, scope: !206, file: !8, line: 120, type: !209)
!215 = !DILocation(line: 120, column: 49, scope: !206)
!216 = !DILocation(line: 121, column: 12, scope: !206)
!217 = !{!218, !160, i64 0}
!218 = !{!"s208", !160, i64 0, !38, i64 8}
!219 = !DILocation(line: 121, column: 10, scope: !206)
!220 = !DILocation(line: 121, column: 3, scope: !206)
!221 = distinct !DISubprogram(name: "ex301ArrayElemInt", scope: !8, file: !8, line: 130, type: !222, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !228)
!222 = !DISubroutineType(types: !223)
!223 = !{!16, !224}
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s301", file: !8, line: 126, size: 256, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !224, file: !8, line: 127, baseType: !119, size: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !224, file: !8, line: 128, baseType: !28, size: 128, offset: 128)
!228 = !{!229}
!229 = !DILocalVariable(name: "s", arg: 1, scope: !221, file: !8, line: 130, type: !224)
!230 = !DILocation(line: 130, column: 35, scope: !221)
!231 = !DILocation(line: 131, column: 10, scope: !221)
!232 = !DILocation(line: 131, column: 19, scope: !221)
!233 = !DILocation(line: 131, column: 17, scope: !221)
!234 = !DILocation(line: 131, column: 3, scope: !221)
!235 = distinct !DISubprogram(name: "ex302ArrayElemStruct", scope: !8, file: !8, line: 140, type: !236, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !246)
!236 = !DISubroutineType(types: !237)
!237 = !{!16, !238}
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s302", file: !8, line: 134, size: 256, elements: !239)
!239 = !{!240, !245}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !238, file: !8, line: 137, baseType: !241, size: 128)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, elements: !120)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !8, line: 135, size: 32, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !242, file: !8, line: 136, baseType: !16, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !238, file: !8, line: 138, baseType: !28, size: 128, offset: 128)
!246 = !{!247}
!247 = !DILocalVariable(name: "s", arg: 1, scope: !235, file: !8, line: 140, type: !238)
!248 = !DILocation(line: 140, column: 38, scope: !235)
!249 = !DILocation(line: 141, column: 21, scope: !235)
!250 = !{!111, !37, i64 0}
!251 = !DILocation(line: 141, column: 36, scope: !235)
!252 = !DILocation(line: 141, column: 23, scope: !235)
!253 = !DILocation(line: 141, column: 3, scope: !235)
!254 = distinct !DISubprogram(name: "ex303ArrayElemArrayFixedLength", scope: !8, file: !8, line: 147, type: !255, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !262)
!255 = !DISubroutineType(types: !256)
!256 = !{!16, !257}
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s303", file: !8, line: 144, size: 512, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !257, file: !8, line: 145, baseType: !260, size: 512)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, elements: !261)
!261 = !{!121, !121}
!262 = !{!263}
!263 = !DILocalVariable(name: "s", arg: 1, scope: !254, file: !8, line: 147, type: !257)
!264 = !DILocation(line: 147, column: 48, scope: !254)
!265 = !DILocation(line: 148, column: 10, scope: !254)
!266 = !DILocation(line: 148, column: 22, scope: !254)
!267 = !DILocation(line: 148, column: 20, scope: !254)
!268 = !DILocation(line: 148, column: 3, scope: !254)
!269 = distinct !DISubprogram(name: "ex305ArrayElemPointerSingleElementValue", scope: !8, file: !8, line: 157, type: !270, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !276)
!270 = !DISubroutineType(types: !271)
!271 = !{!16, !272}
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s305", file: !8, line: 153, size: 256, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !272, file: !8, line: 154, baseType: !275, size: 256)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 256, elements: !120)
!276 = !{!277}
!277 = !DILocalVariable(name: "s", arg: 1, scope: !269, file: !8, line: 157, type: !272)
!278 = !DILocation(line: 157, column: 57, scope: !269)
!279 = !DILocation(line: 158, column: 11, scope: !269)
!280 = !{!160, !160, i64 0}
!281 = !DILocation(line: 158, column: 10, scope: !269)
!282 = !DILocation(line: 158, column: 3, scope: !269)
!283 = distinct !DISubprogram(name: "ex306ArrayElemPointerSingleElementInstances", scope: !8, file: !8, line: 166, type: !284, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !289)
!284 = !DISubroutineType(types: !285)
!285 = !{!16, !286}
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s306", file: !8, line: 161, size: 256, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !286, file: !8, line: 162, baseType: !275, size: 256)
!289 = !{!290}
!290 = !DILocalVariable(name: "s", arg: 1, scope: !283, file: !8, line: 166, type: !286)
!291 = !DILocation(line: 166, column: 61, scope: !283)
!292 = !DILocation(line: 167, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !283, file: !8, line: 167, column: 7)
!294 = !DILocation(line: 167, column: 14, scope: !293)
!295 = !DILocation(line: 167, column: 22, scope: !293)
!296 = !DILocation(line: 167, column: 25, scope: !293)
!297 = !DILocation(line: 167, column: 32, scope: !293)
!298 = !DILocation(line: 167, column: 7, scope: !283)
!299 = !DILocation(line: 170, column: 21, scope: !300)
!300 = distinct !DILexicalBlock(scope: !293, file: !8, line: 170, column: 14)
!301 = !DILocation(line: 0, scope: !300)
!302 = !DILocation(line: 0, scope: !293)
!303 = !DILocation(line: 176, column: 1, scope: !283)
!304 = distinct !DISubprogram(name: "ex307ArrayElemPointerMultipleElementValues", scope: !8, file: !8, line: 182, type: !305, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !310)
!305 = !DISubroutineType(types: !306)
!306 = !{!16, !307}
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s307", file: !8, line: 178, size: 256, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !307, file: !8, line: 179, baseType: !275, size: 256)
!310 = !{!311}
!311 = !DILocalVariable(name: "s", arg: 1, scope: !304, file: !8, line: 182, type: !307)
!312 = !DILocation(line: 182, column: 60, scope: !304)
!313 = !DILocation(line: 184, column: 11, scope: !304)
!314 = !DILocation(line: 184, column: 10, scope: !304)
!315 = !DILocation(line: 184, column: 21, scope: !304)
!316 = !DILocation(line: 184, column: 20, scope: !304)
!317 = !DILocation(line: 184, column: 18, scope: !304)
!318 = !DILocation(line: 184, column: 3, scope: !304)
!319 = distinct !DISubprogram(name: "ex308ArrayElemPointerFunction", scope: !8, file: !8, line: 191, type: !320, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !326)
!320 = !DISubroutineType(types: !321)
!321 = !{!16, !322}
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s308", file: !8, line: 187, size: 256, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !322, file: !8, line: 188, baseType: !325, size: 256)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !120)
!326 = !{!327}
!327 = !DILocalVariable(name: "s", arg: 1, scope: !319, file: !8, line: 191, type: !322)
!328 = !DILocation(line: 191, column: 47, scope: !319)
!329 = !DILocation(line: 192, column: 10, scope: !319)
!330 = !DILocation(line: 192, column: 21, scope: !319)
!331 = !DILocation(line: 192, column: 19, scope: !319)
!332 = !DILocation(line: 192, column: 3, scope: !319)
!333 = distinct !DISubprogram(name: "ex401PointerToInt", scope: !8, file: !8, line: 197, type: !42, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !334)
!334 = !{!335}
!335 = !DILocalVariable(name: "a", arg: 1, scope: !333, file: !8, line: 197, type: !44)
!336 = !DILocation(line: 0, scope: !333)
!337 = !DILocation(line: 198, column: 10, scope: !333)
!338 = !DILocation(line: 198, column: 3, scope: !333)
!339 = distinct !DISubprogram(name: "ex402PointerToStruct", scope: !8, file: !8, line: 204, type: !340, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !346)
!340 = !DISubroutineType(types: !341)
!341 = !{!16, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s402", file: !8, line: 201, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !343, file: !8, line: 202, baseType: !16, size: 32)
!346 = !{!347}
!347 = !DILocalVariable(name: "s", arg: 1, scope: !339, file: !8, line: 204, type: !342)
!348 = !DILocation(line: 0, scope: !339)
!349 = !DILocation(line: 205, column: 13, scope: !339)
!350 = !{!351, !37, i64 0}
!351 = !{!"s402", !37, i64 0}
!352 = !DILocation(line: 205, column: 3, scope: !339)
!353 = distinct !DISubprogram(name: "ex405PointerToPointerSingleElementValue", scope: !8, file: !8, line: 210, type: !354, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !357)
!354 = !DISubroutineType(types: !355)
!355 = !{!16, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!357 = !{!358}
!358 = !DILocalVariable(name: "a", arg: 1, scope: !353, file: !8, line: 210, type: !356)
!359 = !DILocation(line: 0, scope: !353)
!360 = !DILocation(line: 211, column: 11, scope: !353)
!361 = !DILocation(line: 211, column: 10, scope: !353)
!362 = !DILocation(line: 211, column: 3, scope: !353)
!363 = distinct !DISubprogram(name: "ex406PointerToPointerSingleElementInstances", scope: !8, file: !8, line: 214, type: !364, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{!16, !356, !356}
!366 = !{!367, !368}
!367 = !DILocalVariable(name: "a", arg: 1, scope: !363, file: !8, line: 214, type: !356)
!368 = !DILocalVariable(name: "b", arg: 2, scope: !363, file: !8, line: 214, type: !356)
!369 = !DILocation(line: 0, scope: !363)
!370 = !DILocation(line: 215, column: 7, scope: !371)
!371 = distinct !DILexicalBlock(scope: !363, file: !8, line: 215, column: 7)
!372 = !DILocation(line: 215, column: 10, scope: !371)
!373 = !DILocation(line: 215, column: 18, scope: !371)
!374 = !DILocation(line: 215, column: 21, scope: !371)
!375 = !DILocation(line: 215, column: 24, scope: !371)
!376 = !DILocation(line: 215, column: 7, scope: !363)
!377 = !DILocation(line: 218, column: 17, scope: !378)
!378 = distinct !DILexicalBlock(scope: !371, file: !8, line: 218, column: 14)
!379 = !DILocation(line: 0, scope: !378)
!380 = !DILocation(line: 0, scope: !371)
!381 = !DILocation(line: 224, column: 1, scope: !363)
!382 = distinct !DISubprogram(name: "ex407PointerToPointerMultipleElementValues", scope: !8, file: !8, line: 226, type: !354, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !383)
!383 = !{!384}
!384 = !DILocalVariable(name: "a", arg: 1, scope: !382, file: !8, line: 226, type: !356)
!385 = !DILocation(line: 0, scope: !382)
!386 = !DILocation(line: 228, column: 11, scope: !382)
!387 = !DILocation(line: 228, column: 10, scope: !382)
!388 = !DILocation(line: 228, column: 20, scope: !382)
!389 = !DILocation(line: 228, column: 18, scope: !382)
!390 = !DILocation(line: 228, column: 3, scope: !382)
!391 = distinct !DISubprogram(name: "ex408PointerToPointerFunction", scope: !8, file: !8, line: 231, type: !392, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !395)
!392 = !DISubroutineType(types: !393)
!393 = !{!16, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!395 = !{!396}
!396 = !DILocalVariable(name: "a", arg: 1, scope: !391, file: !8, line: 231, type: !394)
!397 = !DILocation(line: 0, scope: !391)
!398 = !DILocation(line: 232, column: 11, scope: !391)
!399 = !DILocation(line: 232, column: 10, scope: !391)
!400 = !DILocation(line: 232, column: 3, scope: !391)
!401 = distinct !DISubprogram(name: "ex501StructWithArrayOfPointers", scope: !8, file: !8, line: 243, type: !402, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !410)
!402 = !DISubroutineType(types: !403)
!403 = !{!16, !404}
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s501", file: !8, line: 237, size: 256, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !404, file: !8, line: 240, baseType: !407, size: 256)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !404, file: !8, line: 238, size: 256, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !407, file: !8, line: 239, baseType: !275, size: 256)
!410 = !{!411}
!411 = !DILocalVariable(name: "s", arg: 1, scope: !401, file: !8, line: 243, type: !404)
!412 = !DILocation(line: 243, column: 48, scope: !401)
!413 = !DILocation(line: 244, column: 11, scope: !401)
!414 = !DILocation(line: 244, column: 10, scope: !401)
!415 = !DILocation(line: 244, column: 3, scope: !401)
!416 = distinct !DISubprogram(name: "ex502ArrayOfStructsWithPointer", scope: !8, file: !8, line: 253, type: !417, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !426)
!417 = !DISubroutineType(types: !418)
!418 = !{!16, !419}
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s502", file: !8, line: 247, size: 256, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !419, file: !8, line: 250, baseType: !422, size: 256)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 256, elements: !120)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !419, file: !8, line: 248, size: 64, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !423, file: !8, line: 249, baseType: !44, size: 64)
!426 = !{!427}
!427 = !DILocalVariable(name: "s", arg: 1, scope: !416, file: !8, line: 253, type: !419)
!428 = !DILocation(line: 253, column: 48, scope: !416)
!429 = !DILocation(line: 254, column: 22, scope: !416)
!430 = !{!431, !160, i64 0}
!431 = !{!"", !160, i64 0}
!432 = !DILocation(line: 254, column: 10, scope: !416)
!433 = !DILocation(line: 254, column: 3, scope: !416)
