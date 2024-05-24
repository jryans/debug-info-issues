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
  %1 = load i32, i32* %0, align 4, !dbg !313, !tbaa !49
  %arrayidx4 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !314
  %2 = load i32, i32* %arrayidx4, align 4, !dbg !314, !tbaa !49
  %add = add nsw i32 %2, %1, !dbg !315
  ret i32 %add, !dbg !316
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex308ArrayElemPointerFunction(%struct.s308* nocapture readonly byval(%struct.s308) align 8 %s) local_unnamed_addr #3 !dbg !317 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s308* %s, metadata !325, metadata !DIExpression()), !dbg !326
  %arrayidx = getelementptr inbounds %struct.s308, %struct.s308* %s, i64 0, i32 0, i64 0, !dbg !327
  %0 = load i32 (...)*, i32 (...)** %arrayidx, align 8, !dbg !327, !tbaa !280
  %call = call i32 (...) %0() #5, !dbg !327
  %arrayidx2 = getelementptr inbounds %struct.s308, %struct.s308* %s, i64 0, i32 0, i64 3, !dbg !328
  %1 = load i32 (...)*, i32 (...)** %arrayidx2, align 8, !dbg !328, !tbaa !280
  %call3 = call i32 (...) %1() #5, !dbg !328
  %add = add nsw i32 %call3, %call, !dbg !329
  ret i32 %add, !dbg !330
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex401PointerToInt(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !331 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i32, i32* %a, align 4, !dbg !335, !tbaa !49
  ret i32 %0, !dbg !336
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex402PointerToStruct(%struct.s402* nocapture readonly %s) local_unnamed_addr #2 !dbg !337 {
entry:
  call void @llvm.dbg.value(metadata %struct.s402* %s, metadata !345, metadata !DIExpression()), !dbg !346
  %a = getelementptr inbounds %struct.s402, %struct.s402* %s, i64 0, i32 0, !dbg !347
  %0 = load i32, i32* %a, align 4, !dbg !347, !tbaa !348
  ret i32 %0, !dbg !350
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex405PointerToPointerSingleElementValue(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !351 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i32*, i32** %a, align 8, !dbg !358, !tbaa !280
  %1 = load i32, i32* %0, align 4, !dbg !359, !tbaa !49
  ret i32 %1, !dbg !360
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex406PointerToPointerSingleElementInstances(i32** nocapture readonly %a, i32** nocapture readonly %b) local_unnamed_addr #2 !dbg !361 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !365, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32** %b, metadata !366, metadata !DIExpression()), !dbg !367
  %0 = load i32*, i32** %a, align 8, !dbg !368, !tbaa !280
  %cmp = icmp eq i32* %0, null, !dbg !370
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !371

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %b, align 8, !dbg !372, !tbaa !280
  %cmp1 = icmp eq i32* %1, null, !dbg !373
  br i1 %cmp1, label %return, label %if.else, !dbg !374

if.else:                                          ; preds = %lor.lhs.false
  %cmp2.not = icmp eq i32* %0, %1, !dbg !375
  %. = select i1 %cmp2.not, i32 3, i32 2, !dbg !377
  br label %return, !dbg !377

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 1, %lor.lhs.false ], [ 1, %entry ], [ %., %if.else ], !dbg !378
  ret i32 %retval.0, !dbg !379
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex407PointerToPointerMultipleElementValues(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !380 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i32*, i32** %a, align 8, !dbg !384, !tbaa !280
  %1 = load i32, i32* %0, align 4, !dbg !385, !tbaa !49
  %arrayidx1 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !386
  %2 = load i32, i32* %arrayidx1, align 4, !dbg !386, !tbaa !49
  %add = add nsw i32 %2, %1, !dbg !387
  ret i32 %add, !dbg !388
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex408PointerToPointerFunction(i32 (...)** nocapture readonly %a) local_unnamed_addr #3 !dbg !389 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)** %a, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !396, !tbaa !280
  %call = call i32 (...) %0() #5, !dbg !397
  ret i32 %call, !dbg !398
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex501StructWithArrayOfPointers(%struct.s501* nocapture readonly byval(%struct.s501) align 8 %s) local_unnamed_addr #2 !dbg !399 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s501* %s, metadata !409, metadata !DIExpression()), !dbg !410
  %arrayidx = getelementptr inbounds %struct.s501, %struct.s501* %s, i64 0, i32 0, i32 0, i64 0, !dbg !411
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !411, !tbaa !280
  %1 = load i32, i32* %0, align 4, !dbg !412, !tbaa !49
  ret i32 %1, !dbg !413
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex502ArrayOfStructsWithPointer(%struct.s502* nocapture readonly byval(%struct.s502) align 8 %s) local_unnamed_addr #2 !dbg !414 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s502* %s, metadata !425, metadata !DIExpression()), !dbg !426
  %a = getelementptr inbounds %struct.s502, %struct.s502* %s, i64 0, i32 0, i64 0, i32 0, !dbg !427
  %0 = load i32*, i32** %a, align 8, !dbg !427, !tbaa !428
  %1 = load i32, i32* %0, align 4, !dbg !430, !tbaa !49
  ret i32 %1, !dbg !431
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

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 5]}
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
!79 = !DILocation(line: 44, column: 10, scope: !70)
!80 = !DILocation(line: 44, column: 3, scope: !70)
!81 = distinct !DISubprogram(name: "ex201StructFieldInt", scope: !8, file: !8, line: 53, type: !82, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !88)
!82 = !DISubroutineType(types: !83)
!83 = !{!16, !84}
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s201", file: !8, line: 49, size: 160, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !84, file: !8, line: 50, baseType: !16, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !84, file: !8, line: 51, baseType: !28, size: 128, offset: 32)
!88 = !{!89}
!89 = !DILocalVariable(name: "s", arg: 1, scope: !81, file: !8, line: 53, type: !84)
!90 = !DILocation(line: 53, column: 37, scope: !81)
!91 = !DILocation(line: 54, column: 12, scope: !81)
!92 = !{!93, !37, i64 0}
!93 = !{!"s201", !37, i64 0, !38, i64 4}
!94 = !DILocation(line: 54, column: 3, scope: !81)
!95 = distinct !DISubprogram(name: "ex202StructFieldStruct", scope: !8, file: !8, line: 63, type: !96, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !105)
!96 = !DISubroutineType(types: !97)
!97 = !{!16, !98}
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s202", file: !8, line: 57, size: 160, elements: !99)
!99 = !{!100, !104}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !98, file: !8, line: 60, baseType: !101, size: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !98, file: !8, line: 58, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !101, file: !8, line: 59, baseType: !16, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !98, file: !8, line: 61, baseType: !28, size: 128, offset: 32)
!105 = !{!106}
!106 = !DILocalVariable(name: "s", arg: 1, scope: !95, file: !8, line: 63, type: !98)
!107 = !DILocation(line: 63, column: 40, scope: !95)
!108 = !DILocation(line: 64, column: 18, scope: !95)
!109 = !{!110, !37, i64 0}
!110 = !{!"s202", !111, i64 0, !38, i64 4}
!111 = !{!"", !37, i64 0}
!112 = !DILocation(line: 64, column: 3, scope: !95)
!113 = distinct !DISubprogram(name: "ex203StructFieldArrayFixedLength", scope: !8, file: !8, line: 71, type: !114, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !123)
!114 = !DISubroutineType(types: !115)
!115 = !{!16, !116}
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s203", file: !8, line: 67, size: 256, elements: !117)
!117 = !{!118, !122}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !116, file: !8, line: 68, baseType: !119, size: 128)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 4)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !116, file: !8, line: 69, baseType: !28, size: 128, offset: 128)
!123 = !{!124}
!124 = !DILocalVariable(name: "s", arg: 1, scope: !113, file: !8, line: 71, type: !116)
!125 = !DILocation(line: 71, column: 50, scope: !113)
!126 = !DILocation(line: 72, column: 10, scope: !113)
!127 = !DILocation(line: 72, column: 19, scope: !113)
!128 = !DILocation(line: 72, column: 17, scope: !113)
!129 = !DILocation(line: 72, column: 3, scope: !113)
!130 = distinct !DISubprogram(name: "ex204StructFieldArrayVariableLength", scope: !8, file: !8, line: 79, type: !131, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !140)
!131 = !DISubroutineType(types: !132)
!132 = !{!16, !133}
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s204", file: !8, line: 75, size: 32, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !133, file: !8, line: 76, baseType: !16, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !133, file: !8, line: 77, baseType: !137, offset: 32)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: -1)
!140 = !{!141}
!141 = !DILocalVariable(name: "s", arg: 1, scope: !130, file: !8, line: 79, type: !133)
!142 = !DILocation(line: 79, column: 53, scope: !130)
!143 = !DILocation(line: 80, column: 10, scope: !130)
!144 = !DILocation(line: 80, column: 19, scope: !130)
!145 = !DILocation(line: 80, column: 17, scope: !130)
!146 = !DILocation(line: 80, column: 3, scope: !130)
!147 = distinct !DISubprogram(name: "ex205StructFieldPointerSingleElementValue", scope: !8, file: !8, line: 87, type: !148, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !154)
!148 = !DISubroutineType(types: !149)
!149 = !{!16, !150}
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s205", file: !8, line: 83, size: 192, elements: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !150, file: !8, line: 84, baseType: !44, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !150, file: !8, line: 85, baseType: !28, size: 128, offset: 64)
!154 = !{!155}
!155 = !DILocalVariable(name: "s", arg: 1, scope: !147, file: !8, line: 87, type: !150)
!156 = !DILocation(line: 87, column: 59, scope: !147)
!157 = !DILocation(line: 88, column: 13, scope: !147)
!158 = !{!159, !160, i64 0}
!159 = !{!"s205", !160, i64 0, !38, i64 8}
!160 = !{!"any pointer", !38, i64 0}
!161 = !DILocation(line: 88, column: 10, scope: !147)
!162 = !DILocation(line: 88, column: 3, scope: !147)
!163 = distinct !DISubprogram(name: "ex206StructFieldPointerSingleElementInstances", scope: !8, file: !8, line: 96, type: !164, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !171)
!164 = !DISubroutineType(types: !165)
!165 = !{!16, !166}
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s206", file: !8, line: 91, size: 256, elements: !167)
!167 = !{!168, !169, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !166, file: !8, line: 92, baseType: !44, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !166, file: !8, line: 93, baseType: !44, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !166, file: !8, line: 94, baseType: !28, size: 128, offset: 128)
!171 = !{!172}
!172 = !DILocalVariable(name: "s", arg: 1, scope: !163, file: !8, line: 96, type: !166)
!173 = !DILocation(line: 96, column: 63, scope: !163)
!174 = !DILocation(line: 97, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !163, file: !8, line: 97, column: 7)
!176 = !{!177, !160, i64 0}
!177 = !{!"s206", !160, i64 0, !160, i64 8, !38, i64 16}
!178 = !DILocation(line: 97, column: 11, scope: !175)
!179 = !DILocation(line: 97, column: 19, scope: !175)
!180 = !DILocation(line: 97, column: 24, scope: !175)
!181 = !{!177, !160, i64 8}
!182 = !DILocation(line: 97, column: 26, scope: !175)
!183 = !DILocation(line: 97, column: 7, scope: !163)
!184 = !DILocation(line: 100, column: 18, scope: !185)
!185 = distinct !DILexicalBlock(scope: !175, file: !8, line: 100, column: 14)
!186 = !DILocation(line: 0, scope: !185)
!187 = !DILocation(line: 0, scope: !175)
!188 = !DILocation(line: 106, column: 1, scope: !163)
!189 = distinct !DISubprogram(name: "ex207StructFieldPointerMultipleElementValues", scope: !8, file: !8, line: 112, type: !190, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !196)
!190 = !DISubroutineType(types: !191)
!191 = !{!16, !192}
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s207", file: !8, line: 108, size: 192, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !192, file: !8, line: 109, baseType: !44, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !192, file: !8, line: 110, baseType: !28, size: 128, offset: 64)
!196 = !{!197}
!197 = !DILocalVariable(name: "s", arg: 1, scope: !189, file: !8, line: 112, type: !192)
!198 = !DILocation(line: 112, column: 62, scope: !189)
!199 = !DILocation(line: 114, column: 12, scope: !189)
!200 = !{!201, !160, i64 0}
!201 = !{!"s207", !160, i64 0, !38, i64 8}
!202 = !DILocation(line: 114, column: 10, scope: !189)
!203 = !DILocation(line: 114, column: 19, scope: !189)
!204 = !DILocation(line: 114, column: 17, scope: !189)
!205 = !DILocation(line: 114, column: 3, scope: !189)
!206 = distinct !DISubprogram(name: "ex208StructFieldPointerFunction", scope: !8, file: !8, line: 121, type: !207, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !213)
!207 = !DISubroutineType(types: !208)
!208 = !{!16, !209}
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s208", file: !8, line: 117, size: 192, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !209, file: !8, line: 118, baseType: !73, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !209, file: !8, line: 119, baseType: !28, size: 128, offset: 64)
!213 = !{!214}
!214 = !DILocalVariable(name: "s", arg: 1, scope: !206, file: !8, line: 121, type: !209)
!215 = !DILocation(line: 121, column: 49, scope: !206)
!216 = !DILocation(line: 123, column: 12, scope: !206)
!217 = !{!218, !160, i64 0}
!218 = !{!"s208", !160, i64 0, !38, i64 8}
!219 = !DILocation(line: 123, column: 10, scope: !206)
!220 = !DILocation(line: 123, column: 3, scope: !206)
!221 = distinct !DISubprogram(name: "ex301ArrayElemInt", scope: !8, file: !8, line: 132, type: !222, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !228)
!222 = !DISubroutineType(types: !223)
!223 = !{!16, !224}
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s301", file: !8, line: 128, size: 256, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !224, file: !8, line: 129, baseType: !119, size: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !224, file: !8, line: 130, baseType: !28, size: 128, offset: 128)
!228 = !{!229}
!229 = !DILocalVariable(name: "s", arg: 1, scope: !221, file: !8, line: 132, type: !224)
!230 = !DILocation(line: 132, column: 35, scope: !221)
!231 = !DILocation(line: 133, column: 10, scope: !221)
!232 = !DILocation(line: 133, column: 19, scope: !221)
!233 = !DILocation(line: 133, column: 17, scope: !221)
!234 = !DILocation(line: 133, column: 3, scope: !221)
!235 = distinct !DISubprogram(name: "ex302ArrayElemStruct", scope: !8, file: !8, line: 142, type: !236, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !246)
!236 = !DISubroutineType(types: !237)
!237 = !{!16, !238}
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s302", file: !8, line: 136, size: 256, elements: !239)
!239 = !{!240, !245}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !238, file: !8, line: 139, baseType: !241, size: 128)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, elements: !120)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !8, line: 137, size: 32, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !242, file: !8, line: 138, baseType: !16, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !238, file: !8, line: 140, baseType: !28, size: 128, offset: 128)
!246 = !{!247}
!247 = !DILocalVariable(name: "s", arg: 1, scope: !235, file: !8, line: 142, type: !238)
!248 = !DILocation(line: 142, column: 38, scope: !235)
!249 = !DILocation(line: 143, column: 21, scope: !235)
!250 = !{!111, !37, i64 0}
!251 = !DILocation(line: 143, column: 36, scope: !235)
!252 = !DILocation(line: 143, column: 23, scope: !235)
!253 = !DILocation(line: 143, column: 3, scope: !235)
!254 = distinct !DISubprogram(name: "ex303ArrayElemArrayFixedLength", scope: !8, file: !8, line: 149, type: !255, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !262)
!255 = !DISubroutineType(types: !256)
!256 = !{!16, !257}
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s303", file: !8, line: 146, size: 512, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !257, file: !8, line: 147, baseType: !260, size: 512)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, elements: !261)
!261 = !{!121, !121}
!262 = !{!263}
!263 = !DILocalVariable(name: "s", arg: 1, scope: !254, file: !8, line: 149, type: !257)
!264 = !DILocation(line: 149, column: 48, scope: !254)
!265 = !DILocation(line: 150, column: 10, scope: !254)
!266 = !DILocation(line: 150, column: 22, scope: !254)
!267 = !DILocation(line: 150, column: 20, scope: !254)
!268 = !DILocation(line: 150, column: 3, scope: !254)
!269 = distinct !DISubprogram(name: "ex305ArrayElemPointerSingleElementValue", scope: !8, file: !8, line: 159, type: !270, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !276)
!270 = !DISubroutineType(types: !271)
!271 = !{!16, !272}
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s305", file: !8, line: 155, size: 256, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !272, file: !8, line: 156, baseType: !275, size: 256)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 256, elements: !120)
!276 = !{!277}
!277 = !DILocalVariable(name: "s", arg: 1, scope: !269, file: !8, line: 159, type: !272)
!278 = !DILocation(line: 159, column: 57, scope: !269)
!279 = !DILocation(line: 160, column: 11, scope: !269)
!280 = !{!160, !160, i64 0}
!281 = !DILocation(line: 160, column: 10, scope: !269)
!282 = !DILocation(line: 160, column: 3, scope: !269)
!283 = distinct !DISubprogram(name: "ex306ArrayElemPointerSingleElementInstances", scope: !8, file: !8, line: 168, type: !284, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !289)
!284 = !DISubroutineType(types: !285)
!285 = !{!16, !286}
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s306", file: !8, line: 163, size: 256, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !286, file: !8, line: 164, baseType: !275, size: 256)
!289 = !{!290}
!290 = !DILocalVariable(name: "s", arg: 1, scope: !283, file: !8, line: 168, type: !286)
!291 = !DILocation(line: 168, column: 61, scope: !283)
!292 = !DILocation(line: 169, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !283, file: !8, line: 169, column: 7)
!294 = !DILocation(line: 169, column: 14, scope: !293)
!295 = !DILocation(line: 169, column: 22, scope: !293)
!296 = !DILocation(line: 169, column: 25, scope: !293)
!297 = !DILocation(line: 169, column: 32, scope: !293)
!298 = !DILocation(line: 169, column: 7, scope: !283)
!299 = !DILocation(line: 172, column: 21, scope: !300)
!300 = distinct !DILexicalBlock(scope: !293, file: !8, line: 172, column: 14)
!301 = !DILocation(line: 0, scope: !300)
!302 = !DILocation(line: 0, scope: !293)
!303 = !DILocation(line: 178, column: 1, scope: !283)
!304 = distinct !DISubprogram(name: "ex307ArrayElemPointerMultipleElementValues", scope: !8, file: !8, line: 184, type: !305, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !310)
!305 = !DISubroutineType(types: !306)
!306 = !{!16, !307}
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s307", file: !8, line: 180, size: 256, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !307, file: !8, line: 181, baseType: !275, size: 256)
!310 = !{!311}
!311 = !DILocalVariable(name: "s", arg: 1, scope: !304, file: !8, line: 184, type: !307)
!312 = !DILocation(line: 184, column: 60, scope: !304)
!313 = !DILocation(line: 186, column: 10, scope: !304)
!314 = !DILocation(line: 186, column: 22, scope: !304)
!315 = !DILocation(line: 186, column: 20, scope: !304)
!316 = !DILocation(line: 186, column: 3, scope: !304)
!317 = distinct !DISubprogram(name: "ex308ArrayElemPointerFunction", scope: !8, file: !8, line: 193, type: !318, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !324)
!318 = !DISubroutineType(types: !319)
!319 = !{!16, !320}
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s308", file: !8, line: 189, size: 256, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !320, file: !8, line: 190, baseType: !323, size: 256)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !120)
!324 = !{!325}
!325 = !DILocalVariable(name: "s", arg: 1, scope: !317, file: !8, line: 193, type: !320)
!326 = !DILocation(line: 193, column: 47, scope: !317)
!327 = !DILocation(line: 195, column: 10, scope: !317)
!328 = !DILocation(line: 195, column: 21, scope: !317)
!329 = !DILocation(line: 195, column: 19, scope: !317)
!330 = !DILocation(line: 195, column: 3, scope: !317)
!331 = distinct !DISubprogram(name: "ex401PointerToInt", scope: !8, file: !8, line: 200, type: !42, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !332)
!332 = !{!333}
!333 = !DILocalVariable(name: "a", arg: 1, scope: !331, file: !8, line: 200, type: !44)
!334 = !DILocation(line: 0, scope: !331)
!335 = !DILocation(line: 201, column: 10, scope: !331)
!336 = !DILocation(line: 201, column: 3, scope: !331)
!337 = distinct !DISubprogram(name: "ex402PointerToStruct", scope: !8, file: !8, line: 207, type: !338, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !344)
!338 = !DISubroutineType(types: !339)
!339 = !{!16, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s402", file: !8, line: 204, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !341, file: !8, line: 205, baseType: !16, size: 32)
!344 = !{!345}
!345 = !DILocalVariable(name: "s", arg: 1, scope: !337, file: !8, line: 207, type: !340)
!346 = !DILocation(line: 0, scope: !337)
!347 = !DILocation(line: 208, column: 13, scope: !337)
!348 = !{!349, !37, i64 0}
!349 = !{!"s402", !37, i64 0}
!350 = !DILocation(line: 208, column: 3, scope: !337)
!351 = distinct !DISubprogram(name: "ex405PointerToPointerSingleElementValue", scope: !8, file: !8, line: 213, type: !352, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !355)
!352 = !DISubroutineType(types: !353)
!353 = !{!16, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!355 = !{!356}
!356 = !DILocalVariable(name: "a", arg: 1, scope: !351, file: !8, line: 213, type: !354)
!357 = !DILocation(line: 0, scope: !351)
!358 = !DILocation(line: 214, column: 11, scope: !351)
!359 = !DILocation(line: 214, column: 10, scope: !351)
!360 = !DILocation(line: 214, column: 3, scope: !351)
!361 = distinct !DISubprogram(name: "ex406PointerToPointerSingleElementInstances", scope: !8, file: !8, line: 217, type: !362, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !364)
!362 = !DISubroutineType(types: !363)
!363 = !{!16, !354, !354}
!364 = !{!365, !366}
!365 = !DILocalVariable(name: "a", arg: 1, scope: !361, file: !8, line: 217, type: !354)
!366 = !DILocalVariable(name: "b", arg: 2, scope: !361, file: !8, line: 217, type: !354)
!367 = !DILocation(line: 0, scope: !361)
!368 = !DILocation(line: 218, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !361, file: !8, line: 218, column: 7)
!370 = !DILocation(line: 218, column: 10, scope: !369)
!371 = !DILocation(line: 218, column: 18, scope: !369)
!372 = !DILocation(line: 218, column: 21, scope: !369)
!373 = !DILocation(line: 218, column: 24, scope: !369)
!374 = !DILocation(line: 218, column: 7, scope: !361)
!375 = !DILocation(line: 221, column: 17, scope: !376)
!376 = distinct !DILexicalBlock(scope: !369, file: !8, line: 221, column: 14)
!377 = !DILocation(line: 0, scope: !376)
!378 = !DILocation(line: 0, scope: !369)
!379 = !DILocation(line: 227, column: 1, scope: !361)
!380 = distinct !DISubprogram(name: "ex407PointerToPointerMultipleElementValues", scope: !8, file: !8, line: 229, type: !352, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !381)
!381 = !{!382}
!382 = !DILocalVariable(name: "a", arg: 1, scope: !380, file: !8, line: 229, type: !354)
!383 = !DILocation(line: 0, scope: !380)
!384 = !DILocation(line: 231, column: 11, scope: !380)
!385 = !DILocation(line: 231, column: 10, scope: !380)
!386 = !DILocation(line: 231, column: 20, scope: !380)
!387 = !DILocation(line: 231, column: 18, scope: !380)
!388 = !DILocation(line: 231, column: 3, scope: !380)
!389 = distinct !DISubprogram(name: "ex408PointerToPointerFunction", scope: !8, file: !8, line: 234, type: !390, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !393)
!390 = !DISubroutineType(types: !391)
!391 = !{!16, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!393 = !{!394}
!394 = !DILocalVariable(name: "a", arg: 1, scope: !389, file: !8, line: 234, type: !392)
!395 = !DILocation(line: 0, scope: !389)
!396 = !DILocation(line: 236, column: 11, scope: !389)
!397 = !DILocation(line: 236, column: 10, scope: !389)
!398 = !DILocation(line: 236, column: 3, scope: !389)
!399 = distinct !DISubprogram(name: "ex501StructWithArrayOfPointers", scope: !8, file: !8, line: 247, type: !400, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !408)
!400 = !DISubroutineType(types: !401)
!401 = !{!16, !402}
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s501", file: !8, line: 241, size: 256, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !402, file: !8, line: 244, baseType: !405, size: 256)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !8, line: 242, size: 256, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !405, file: !8, line: 243, baseType: !275, size: 256)
!408 = !{!409}
!409 = !DILocalVariable(name: "s", arg: 1, scope: !399, file: !8, line: 247, type: !402)
!410 = !DILocation(line: 247, column: 48, scope: !399)
!411 = !DILocation(line: 248, column: 11, scope: !399)
!412 = !DILocation(line: 248, column: 10, scope: !399)
!413 = !DILocation(line: 248, column: 3, scope: !399)
!414 = distinct !DISubprogram(name: "ex502ArrayOfStructsWithPointer", scope: !8, file: !8, line: 257, type: !415, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !424)
!415 = !DISubroutineType(types: !416)
!416 = !{!16, !417}
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s502", file: !8, line: 251, size: 256, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !417, file: !8, line: 254, baseType: !420, size: 256)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 256, elements: !120)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !8, line: 252, size: 64, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !421, file: !8, line: 253, baseType: !44, size: 64)
!424 = !{!425}
!425 = !DILocalVariable(name: "s", arg: 1, scope: !414, file: !8, line: 257, type: !417)
!426 = !DILocation(line: 257, column: 48, scope: !414)
!427 = !DILocation(line: 258, column: 22, scope: !414)
!428 = !{!429, !160, i64 0}
!429 = !{!"", !160, i64 0}
!430 = !DILocation(line: 258, column: 10, scope: !414)
!431 = !DILocation(line: 258, column: 3, scope: !414)
