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
%struct.s502 = type { i32 }
%struct.s601 = type { %struct.anon.1 }
%struct.anon.1 = type { [4 x i32*] }
%struct.s602 = type { [4 x %struct.anon.2] }
%struct.anon.2 = type { i32* }
%struct.s606 = type { i32, %struct.s606* }
%struct.s607 = type { i32, %struct.s607* }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define i32 @ex101Int(i32 returned %a) local_unnamed_addr #0 !dbg !15 {
entry:
  call void @llvm.dbg.value(metadata i32 %a, metadata !19, metadata !DIExpression()), !dbg !20
  ret i32 %a, !dbg !21
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex102Struct(%struct.s102* nocapture readonly byval(%struct.s102) align 8 %s) local_unnamed_addr #2 !dbg !22 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s102* %s, metadata !33, metadata !DIExpression()), !dbg !34
  %a = getelementptr inbounds %struct.s102, %struct.s102* %s, i64 0, i32 0, !dbg !35
  %0 = load i32, i32* %a, align 8, !dbg !35, !tbaa !36
  ret i32 %0, !dbg !41
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex105PointerSingleElementValue(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !42 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !46, metadata !DIExpression()), !dbg !47
  %0 = load i32, i32* %a, align 4, !dbg !48, !tbaa !49
  ret i32 %0, !dbg !50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex106PointerSingleElementInstances(i32* readonly %a, i32* readonly %b) local_unnamed_addr #2 !dbg !51 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !55, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32* %b, metadata !56, metadata !DIExpression()), !dbg !57
  %cmp = icmp eq i32* %a, null, !dbg !58
  %cmp1 = icmp eq i32* %b, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1, !dbg !60
  br i1 %or.cond, label %return, label %if.else, !dbg !60

if.else:                                          ; preds = %entry
  %0 = load i32, i32* %a, align 4, !dbg !61, !tbaa !49
  %1 = load i32, i32* %b, align 4, !dbg !61, !tbaa !49
  %add5 = add nsw i32 %1, %0, !dbg !61
  br label %return, !dbg !61

return:                                           ; preds = %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %add5, %if.else ], !dbg !63
  ret i32 %retval.0, !dbg !64
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex108PointerFunction(i32 (...)* nocapture %a) local_unnamed_addr #3 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* %a, metadata !72, metadata !DIExpression()), !dbg !73
  %call = call i32 (...) %a() #6, !dbg !74
  ret i32 %call, !dbg !75
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex201StructFieldInt(%struct.s201* nocapture readonly byval(%struct.s201) align 8 %s) local_unnamed_addr #2 !dbg !76 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s201* %s, metadata !84, metadata !DIExpression()), !dbg !85
  %a = getelementptr inbounds %struct.s201, %struct.s201* %s, i64 0, i32 0, !dbg !86
  %0 = load i32, i32* %a, align 8, !dbg !86, !tbaa !87
  ret i32 %0, !dbg !89
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex202StructFieldStruct(%struct.s202* nocapture readonly byval(%struct.s202) align 8 %s) local_unnamed_addr #2 !dbg !90 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s202* %s, metadata !101, metadata !DIExpression()), !dbg !102
  %a = getelementptr inbounds %struct.s202, %struct.s202* %s, i64 0, i32 0, i32 0, !dbg !103
  %0 = load i32, i32* %a, align 8, !dbg !103, !tbaa !104
  ret i32 %0, !dbg !107
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex203StructFieldArrayFixedLength(%struct.s203* nocapture readonly byval(%struct.s203) align 8 %s) local_unnamed_addr #2 !dbg !108 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s203* %s, metadata !119, metadata !DIExpression()), !dbg !120
  %arrayidx = getelementptr inbounds %struct.s203, %struct.s203* %s, i64 0, i32 0, i64 0, !dbg !121
  %0 = load i32, i32* %arrayidx, align 8, !dbg !121, !tbaa !49
  %arrayidx2 = getelementptr inbounds %struct.s203, %struct.s203* %s, i64 0, i32 0, i64 3, !dbg !122
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !122, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !123
  ret i32 %add, !dbg !124
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex204StructFieldArrayVariableLength(%struct.s204* nocapture readonly byval(%struct.s204) align 8 %s) local_unnamed_addr #2 !dbg !125 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s204* %s, metadata !136, metadata !DIExpression()), !dbg !137
  %arrayidx = getelementptr inbounds %struct.s204, %struct.s204* %s, i64 0, i32 1, i64 0, !dbg !138
  %0 = load i32, i32* %arrayidx, align 4, !dbg !138, !tbaa !49
  %arrayidx2 = getelementptr inbounds %struct.s204, %struct.s204* %s, i64 0, i32 1, i64 3, !dbg !139
  %1 = load i32, i32* %arrayidx2, align 8, !dbg !139, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !140
  ret i32 %add, !dbg !141
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex205StructFieldPointerSingleElementValue(%struct.s205* nocapture readonly byval(%struct.s205) align 8 %s) local_unnamed_addr #2 !dbg !142 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s205* %s, metadata !150, metadata !DIExpression()), !dbg !151
  %a = getelementptr inbounds %struct.s205, %struct.s205* %s, i64 0, i32 0, !dbg !152
  %0 = load i32*, i32** %a, align 8, !dbg !152, !tbaa !153
  %1 = load i32, i32* %0, align 4, !dbg !156, !tbaa !49
  ret i32 %1, !dbg !157
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex206StructFieldPointerSingleElementInstances(%struct.s206* nocapture readonly byval(%struct.s206) align 8 %s) local_unnamed_addr #2 !dbg !158 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s206* %s, metadata !167, metadata !DIExpression()), !dbg !168
  %a = getelementptr inbounds %struct.s206, %struct.s206* %s, i64 0, i32 0, !dbg !169
  %0 = load i32*, i32** %a, align 8, !dbg !169, !tbaa !171
  %cmp = icmp eq i32* %0, null, !dbg !173
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !174

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds %struct.s206, %struct.s206* %s, i64 0, i32 1, !dbg !175
  %1 = load i32*, i32** %b, align 8, !dbg !175, !tbaa !176
  %cmp1 = icmp eq i32* %1, null, !dbg !177
  br i1 %cmp1, label %return, label %if.else, !dbg !178

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %0, align 4, !dbg !179, !tbaa !49
  %3 = load i32, i32* %1, align 4, !dbg !179, !tbaa !49
  %add11 = add nsw i32 %3, %2, !dbg !179
  br label %return, !dbg !179

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %add11, %if.else ], !dbg !181
  ret i32 %retval.0, !dbg !182
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex207StructFieldPointerMultipleElementValues(%struct.s207* nocapture readonly byval(%struct.s207) align 8 %s) local_unnamed_addr #2 !dbg !183 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s207* %s, metadata !191, metadata !DIExpression()), !dbg !192
  %a = getelementptr inbounds %struct.s207, %struct.s207* %s, i64 0, i32 0, !dbg !193
  %0 = load i32*, i32** %a, align 8, !dbg !193, !tbaa !194
  %1 = load i32, i32* %0, align 4, !dbg !196, !tbaa !49
  %arrayidx2 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !197
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !197, !tbaa !49
  %add = add nsw i32 %2, %1, !dbg !198
  ret i32 %add, !dbg !199
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex208StructFieldPointerFunction(%struct.s208* nocapture readonly byval(%struct.s208) align 8 %s) local_unnamed_addr #3 !dbg !200 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s208* %s, metadata !208, metadata !DIExpression()), !dbg !209
  %a = getelementptr inbounds %struct.s208, %struct.s208* %s, i64 0, i32 0, !dbg !210
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !210, !tbaa !211
  %call = call i32 (...) %0() #6, !dbg !213
  ret i32 %call, !dbg !214
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex301ArrayElemInt(%struct.s301* nocapture readonly byval(%struct.s301) align 8 %s) local_unnamed_addr #2 !dbg !215 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s301* %s, metadata !223, metadata !DIExpression()), !dbg !224
  %arrayidx = getelementptr inbounds %struct.s301, %struct.s301* %s, i64 0, i32 0, i64 0, !dbg !225
  %0 = load i32, i32* %arrayidx, align 8, !dbg !225, !tbaa !49
  %arrayidx2 = getelementptr inbounds %struct.s301, %struct.s301* %s, i64 0, i32 0, i64 3, !dbg !226
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !226, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !227
  ret i32 %add, !dbg !228
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex302ArrayElemStruct(%struct.s302* nocapture readonly byval(%struct.s302) align 8 %s) local_unnamed_addr #2 !dbg !229 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s302* %s, metadata !241, metadata !DIExpression()), !dbg !242
  %a = getelementptr inbounds %struct.s302, %struct.s302* %s, i64 0, i32 0, i64 0, i32 0, !dbg !243
  %0 = load i32, i32* %a, align 8, !dbg !243, !tbaa !244
  %a3 = getelementptr inbounds %struct.s302, %struct.s302* %s, i64 0, i32 0, i64 3, i32 0, !dbg !245
  %1 = load i32, i32* %a3, align 4, !dbg !245, !tbaa !244
  %add = add nsw i32 %1, %0, !dbg !246
  ret i32 %add, !dbg !247
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex303ArrayElemArrayFixedLength(%struct.s303* nocapture readonly byval(%struct.s303) align 8 %s) local_unnamed_addr #2 !dbg !248 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s303* %s, metadata !257, metadata !DIExpression()), !dbg !258
  %arrayidx1 = getelementptr inbounds %struct.s303, %struct.s303* %s, i64 0, i32 0, i64 0, i64 0, !dbg !259
  %0 = load i32, i32* %arrayidx1, align 8, !dbg !259, !tbaa !49
  %arrayidx4 = getelementptr inbounds %struct.s303, %struct.s303* %s, i64 0, i32 0, i64 3, i64 3, !dbg !260
  %1 = load i32, i32* %arrayidx4, align 4, !dbg !260, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !261
  ret i32 %add, !dbg !262
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex305ArrayElemPointerSingleElementValue(%struct.s305* nocapture readonly byval(%struct.s305) align 8 %s) local_unnamed_addr #2 !dbg !263 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s305* %s, metadata !271, metadata !DIExpression()), !dbg !272
  %arrayidx = getelementptr inbounds %struct.s305, %struct.s305* %s, i64 0, i32 0, i64 0, !dbg !273
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !273, !tbaa !274
  %1 = load i32, i32* %0, align 4, !dbg !275, !tbaa !49
  ret i32 %1, !dbg !276
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex306ArrayElemPointerSingleElementInstances(%struct.s306* nocapture readonly byval(%struct.s306) align 8 %s) local_unnamed_addr #2 !dbg !277 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s306* %s, metadata !284, metadata !DIExpression()), !dbg !285
  %arrayidx = getelementptr inbounds %struct.s306, %struct.s306* %s, i64 0, i32 0, i64 0, !dbg !286
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !286, !tbaa !274
  %cmp = icmp eq i32* %0, null, !dbg !288
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !289

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.s306, %struct.s306* %s, i64 0, i32 0, i64 3, !dbg !290
  %1 = load i32*, i32** %arrayidx2, align 8, !dbg !290, !tbaa !274
  %cmp3 = icmp eq i32* %1, null, !dbg !291
  br i1 %cmp3, label %return, label %if.else, !dbg !292

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %0, align 4, !dbg !293, !tbaa !49
  %3 = load i32, i32* %1, align 4, !dbg !293, !tbaa !49
  %add19 = add nsw i32 %3, %2, !dbg !293
  br label %return, !dbg !293

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %add19, %if.else ], !dbg !295
  ret i32 %retval.0, !dbg !296
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex307ArrayElemPointerMultipleElementValues(%struct.s307* nocapture readonly byval(%struct.s307) align 8 %s) local_unnamed_addr #2 !dbg !297 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s307* %s, metadata !304, metadata !DIExpression()), !dbg !305
  %arrayidx = getelementptr inbounds %struct.s307, %struct.s307* %s, i64 0, i32 0, i64 0, !dbg !306
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !306, !tbaa !274
  %1 = load i32, i32* %0, align 4, !dbg !306, !tbaa !49
  %arrayidx4 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !307
  %2 = load i32, i32* %arrayidx4, align 4, !dbg !307, !tbaa !49
  %add = add nsw i32 %2, %1, !dbg !308
  ret i32 %add, !dbg !309
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex308ArrayElemPointerFunction(%struct.s308* nocapture readonly byval(%struct.s308) align 8 %s) local_unnamed_addr #3 !dbg !310 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s308* %s, metadata !318, metadata !DIExpression()), !dbg !319
  %arrayidx = getelementptr inbounds %struct.s308, %struct.s308* %s, i64 0, i32 0, i64 0, !dbg !320
  %0 = load i32 (...)*, i32 (...)** %arrayidx, align 8, !dbg !320, !tbaa !274
  %call = call i32 (...) %0() #6, !dbg !320
  %arrayidx2 = getelementptr inbounds %struct.s308, %struct.s308* %s, i64 0, i32 0, i64 3, !dbg !321
  %1 = load i32 (...)*, i32 (...)** %arrayidx2, align 8, !dbg !321, !tbaa !274
  %call3 = call i32 (...) %1() #6, !dbg !321
  %add = add nsw i32 %call3, %call, !dbg !322
  ret i32 %add, !dbg !323
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex401PointerToInt(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !324 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !326, metadata !DIExpression()), !dbg !327
  %0 = load i32, i32* %a, align 4, !dbg !328, !tbaa !49
  ret i32 %0, !dbg !329
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex402PointerToStruct(%struct.s402* nocapture readonly %s) local_unnamed_addr #2 !dbg !330 {
entry:
  call void @llvm.dbg.value(metadata %struct.s402* %s, metadata !338, metadata !DIExpression()), !dbg !339
  %a = getelementptr inbounds %struct.s402, %struct.s402* %s, i64 0, i32 0, !dbg !340
  %0 = load i32, i32* %a, align 4, !dbg !340, !tbaa !341
  ret i32 %0, !dbg !343
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex405PointerToPointerSingleElementValue(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !344 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i32*, i32** %a, align 8, !dbg !351, !tbaa !274
  %1 = load i32, i32* %0, align 4, !dbg !352, !tbaa !49
  ret i32 %1, !dbg !353
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex406PointerToPointerSingleElementInstances(i32** nocapture readonly %a, i32** nocapture readonly %b) local_unnamed_addr #2 !dbg !354 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !358, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.value(metadata i32** %b, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load i32*, i32** %a, align 8, !dbg !361, !tbaa !274
  %cmp = icmp eq i32* %0, null, !dbg !363
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !364

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %b, align 8, !dbg !365, !tbaa !274
  %cmp1 = icmp eq i32* %1, null, !dbg !366
  br i1 %cmp1, label %return, label %if.else, !dbg !367

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %0, align 4, !dbg !368, !tbaa !49
  %3 = load i32, i32* %1, align 4, !dbg !368, !tbaa !49
  %add5 = add nsw i32 %3, %2, !dbg !368
  br label %return, !dbg !368

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %add5, %if.else ], !dbg !370
  ret i32 %retval.0, !dbg !371
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex407PointerToPointerMultipleElementValues(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !372 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i32*, i32** %a, align 8, !dbg !376, !tbaa !274
  %1 = load i32, i32* %0, align 4, !dbg !377, !tbaa !49
  %arrayidx1 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !378
  %2 = load i32, i32* %arrayidx1, align 4, !dbg !378, !tbaa !49
  %add = add nsw i32 %2, %1, !dbg !379
  ret i32 %add, !dbg !380
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex408PointerToPointerFunction(i32 (...)** nocapture readonly %a) local_unnamed_addr #3 !dbg !381 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)** %a, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !388, !tbaa !274
  %call = call i32 (...) %0() #6, !dbg !389
  ret i32 %call, !dbg !390
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex501PointerAsArrayOfInt(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !391 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !393, metadata !DIExpression()), !dbg !394
  %0 = load i32, i32* %a, align 4, !dbg !395, !tbaa !49
  %arrayidx1 = getelementptr inbounds i32, i32* %a, i64 3, !dbg !396
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !396, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !397
  ret i32 %add, !dbg !398
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex502PointerAsArrayOfStruct(%struct.s502* nocapture readonly %s) local_unnamed_addr #2 !dbg !399 {
entry:
  call void @llvm.dbg.value(metadata %struct.s502* %s, metadata !407, metadata !DIExpression()), !dbg !408
  %a = getelementptr inbounds %struct.s502, %struct.s502* %s, i64 0, i32 0, !dbg !409
  %0 = load i32, i32* %a, align 4, !dbg !409, !tbaa !410
  %a2 = getelementptr inbounds %struct.s502, %struct.s502* %s, i64 3, i32 0, !dbg !412
  %1 = load i32, i32* %a2, align 4, !dbg !412, !tbaa !410
  %add = add nsw i32 %1, %0, !dbg !413
  ret i32 %add, !dbg !414
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex505PointerAsArrayOfPointerSingleElementValue(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !415 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i32*, i32** %a, align 8, !dbg !419, !tbaa !274
  %1 = load i32, i32* %0, align 4, !dbg !420, !tbaa !49
  ret i32 %1, !dbg !421
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex506PointerAsArrayOfPointerSingleElementInstances(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !422 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i32*, i32** %a, align 8, !dbg !426, !tbaa !274
  %cmp = icmp eq i32* %0, null, !dbg !428
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !429

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr inbounds i32*, i32** %a, i64 3, !dbg !430
  %1 = load i32*, i32** %arrayidx1, align 8, !dbg !430, !tbaa !274
  %cmp2 = icmp eq i32* %1, null, !dbg !431
  br i1 %cmp2, label %return, label %if.else, !dbg !432

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %0, align 4, !dbg !433, !tbaa !49
  %3 = load i32, i32* %1, align 4, !dbg !433, !tbaa !49
  %add12 = add nsw i32 %3, %2, !dbg !433
  br label %return, !dbg !433

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %add12, %if.else ], !dbg !435
  ret i32 %retval.0, !dbg !436
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex507PointerAsArrayOfPointerMultipleElementValues(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !437 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !439, metadata !DIExpression()), !dbg !440
  %0 = load i32*, i32** %a, align 8, !dbg !441, !tbaa !274
  %1 = load i32, i32* %0, align 4, !dbg !442, !tbaa !49
  %arrayidx1 = getelementptr inbounds i32*, i32** %a, i64 3, !dbg !443
  %2 = load i32*, i32** %arrayidx1, align 8, !dbg !443, !tbaa !274
  %3 = load i32, i32* %2, align 4, !dbg !444, !tbaa !49
  %add = add nsw i32 %3, %1, !dbg !445
  ret i32 %add, !dbg !446
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex508PointerAsArrayOfPointerFunction(i32 (...)** nocapture readonly %a) local_unnamed_addr #3 !dbg !447 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)** %a, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !451, !tbaa !274
  %call = call i32 (...) %0() #6, !dbg !451
  %arrayidx1 = getelementptr inbounds i32 (...)*, i32 (...)** %a, i64 3, !dbg !452
  %1 = load i32 (...)*, i32 (...)** %arrayidx1, align 8, !dbg !452, !tbaa !274
  %call2 = call i32 (...) %1() #6, !dbg !452
  %add = add nsw i32 %call2, %call, !dbg !453
  ret i32 %add, !dbg !454
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex601StructWithArrayOfPointers(%struct.s601* nocapture readonly byval(%struct.s601) align 8 %s) local_unnamed_addr #2 !dbg !455 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s601* %s, metadata !465, metadata !DIExpression()), !dbg !466
  %arrayidx = getelementptr inbounds %struct.s601, %struct.s601* %s, i64 0, i32 0, i32 0, i64 0, !dbg !467
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !467, !tbaa !274
  %1 = load i32, i32* %0, align 4, !dbg !468, !tbaa !49
  ret i32 %1, !dbg !469
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex602ArrayOfStructsWithPointer(%struct.s602* nocapture readonly byval(%struct.s602) align 8 %s) local_unnamed_addr #2 !dbg !470 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s602* %s, metadata !481, metadata !DIExpression()), !dbg !482
  %a = getelementptr inbounds %struct.s602, %struct.s602* %s, i64 0, i32 0, i64 0, i32 0, !dbg !483
  %0 = load i32*, i32** %a, align 8, !dbg !483, !tbaa !484
  %1 = load i32, i32* %0, align 4, !dbg !486, !tbaa !49
  ret i32 %1, !dbg !487
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex603PointerArithmetic(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !488 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !490, metadata !DIExpression()), !dbg !491
  %add.ptr = getelementptr inbounds i32, i32* %a, i64 3, !dbg !492
  %0 = load i32, i32* %add.ptr, align 4, !dbg !493, !tbaa !49
  ret i32 %0, !dbg !494
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex604PointerCast(i8* nocapture readonly %a) local_unnamed_addr #2 !dbg !495 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = bitcast i8* %a to i32*, !dbg !501
  %1 = load i32, i32* %0, align 4, !dbg !502, !tbaa !49
  ret i32 %1, !dbg !503
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex605PointerFunction(i32 (...)* nocapture %a) local_unnamed_addr #3 !dbg !504 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* %a, metadata !506, metadata !DIExpression()), !dbg !508
  %call = call i32 (...) %a() #6, !dbg !509
  call void @llvm.dbg.value(metadata i32 %call, metadata !507, metadata !DIExpression()), !dbg !508
  ret i32 %call, !dbg !510
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly ssp uwtable
define i32 @ex606ListLengthLimitedLoop(%struct.s606* nocapture readonly %s) local_unnamed_addr #4 !dbg !511 {
entry:
  call void @llvm.dbg.value(metadata %struct.s606* %s, metadata !520, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 0, metadata !521, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 0, metadata !522, metadata !DIExpression()), !dbg !523
  br label %for.body, !dbg !524

for.body:                                         ; preds = %entry, %if.end
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %sum.014 = phi i32 [ 0, %entry ], [ %add, %if.end ]
  %s.addr.013 = phi %struct.s606* [ %s, %entry ], [ %1, %if.end ]
  call void @llvm.dbg.value(metadata i32 %i.015, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 %sum.014, metadata !521, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata %struct.s606* %s.addr.013, metadata !520, metadata !DIExpression()), !dbg !523
  %a = getelementptr inbounds %struct.s606, %struct.s606* %s.addr.013, i64 0, i32 0, !dbg !526
  %0 = load i32, i32* %a, align 8, !dbg !526, !tbaa !529
  %add = add nsw i32 %0, %sum.014, !dbg !531
  call void @llvm.dbg.value(metadata i32 %add, metadata !521, metadata !DIExpression()), !dbg !523
  %n = getelementptr inbounds %struct.s606, %struct.s606* %s.addr.013, i64 0, i32 1, !dbg !532
  %1 = load %struct.s606*, %struct.s606** %n, align 8, !dbg !532, !tbaa !534
  %tobool.not = icmp eq %struct.s606* %1, null, !dbg !535
  br i1 %tobool.not, label %for.end, label %if.end, !dbg !536

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.s606* %1, metadata !520, metadata !DIExpression()), !dbg !523
  %inc = add nuw nsw i32 %i.015, 1, !dbg !537
  call void @llvm.dbg.value(metadata i32 %inc, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.value(metadata i32 %add, metadata !521, metadata !DIExpression()), !dbg !523
  %exitcond.not = icmp eq i32 %inc, 4, !dbg !538
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !524, !llvm.loop !539

for.end:                                          ; preds = %for.body, %if.end
  %i.0.lcssa = phi i32 [ %i.015, %for.body ], [ 4, %if.end ], !dbg !543
  call void @llvm.dbg.value(metadata i32 %add, metadata !521, metadata !DIExpression()), !dbg !523
  %cmp2 = icmp eq i32 %i.0.lcssa, 4, !dbg !544
  %.sum.1 = select i1 %cmp2, i32 0, i32 %add, !dbg !523
  ret i32 %.sum.1, !dbg !546
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly ssp uwtable
define i32 @ex607ListLengthUnlimitedLoop(%struct.s607* readonly %s) local_unnamed_addr #4 !dbg !547 {
entry:
  call void @llvm.dbg.value(metadata %struct.s607* %s, metadata !556, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i32 0, metadata !557, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i32 0, metadata !558, metadata !DIExpression()), !dbg !559
  %tobool.not8 = icmp eq %struct.s607* %s, null, !dbg !560
  br i1 %tobool.not8, label %while.end, label %while.body, !dbg !560

while.body:                                       ; preds = %entry, %while.body
  %i.011 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %sum.010 = phi i32 [ %add, %while.body ], [ 0, %entry ]
  %s.addr.09 = phi %struct.s607* [ %1, %while.body ], [ %s, %entry ]
  call void @llvm.dbg.value(metadata i32 %i.011, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i32 %sum.010, metadata !557, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata %struct.s607* %s.addr.09, metadata !556, metadata !DIExpression()), !dbg !559
  %a = getelementptr inbounds %struct.s607, %struct.s607* %s.addr.09, i64 0, i32 0, !dbg !561
  %0 = load i32, i32* %a, align 8, !dbg !561, !tbaa !563
  %add = add nsw i32 %0, %sum.010, !dbg !565
  call void @llvm.dbg.value(metadata i32 %add, metadata !557, metadata !DIExpression()), !dbg !559
  %n = getelementptr inbounds %struct.s607, %struct.s607* %s.addr.09, i64 0, i32 1, !dbg !566
  %1 = load %struct.s607*, %struct.s607** %n, align 8, !dbg !566, !tbaa !567
  call void @llvm.dbg.value(metadata %struct.s607* %1, metadata !556, metadata !DIExpression()), !dbg !559
  %inc = add nuw nsw i32 %i.011, 1, !dbg !568
  call void @llvm.dbg.value(metadata i32 %inc, metadata !558, metadata !DIExpression()), !dbg !559
  %tobool.not = icmp eq %struct.s607* %1, null, !dbg !560
  br i1 %tobool.not, label %while.end.loopexit, label %while.body, !dbg !560, !llvm.loop !569

while.end.loopexit:                               ; preds = %while.body
  %phi.cmp = icmp eq i32 %inc, 4, !dbg !571
  %phi.sel = select i1 %phi.cmp, i32 0, i32 %add, !dbg !571
  br label %while.end, !dbg !571

while.end:                                        ; preds = %while.end.loopexit, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %phi.sel, %while.end.loopexit ]
  ret i32 %i.0.lcssa, !dbg !573
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!14}

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
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!15 = distinct !DISubprogram(name: "ex101Int", scope: !8, file: !8, line: 7, type: !16, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!13, !13}
!18 = !{!19}
!19 = !DILocalVariable(name: "a", arg: 1, scope: !15, file: !8, line: 7, type: !13)
!20 = !DILocation(line: 0, scope: !15)
!21 = !DILocation(line: 8, column: 3, scope: !15)
!22 = distinct !DISubprogram(name: "ex102Struct", scope: !8, file: !8, line: 15, type: !23, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !32)
!23 = !DISubroutineType(types: !24)
!24 = !{!13, !25}
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s102", file: !8, line: 11, size: 160, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !25, file: !8, line: 12, baseType: !13, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !25, file: !8, line: 13, baseType: !29, size: 128, offset: 32)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !30)
!30 = !{!31, !31}
!31 = !DISubrange(count: 2)
!32 = !{!33}
!33 = !DILocalVariable(name: "s", arg: 1, scope: !22, file: !8, line: 15, type: !25)
!34 = !DILocation(line: 15, column: 29, scope: !22)
!35 = !DILocation(line: 16, column: 12, scope: !22)
!36 = !{!37, !38, i64 0}
!37 = !{!"s102", !38, i64 0, !39, i64 4}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 16, column: 3, scope: !22)
!42 = distinct !DISubprogram(name: "ex105PointerSingleElementValue", scope: !8, file: !8, line: 21, type: !43, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !45)
!43 = !DISubroutineType(types: !44)
!44 = !{!13, !12}
!45 = !{!46}
!46 = !DILocalVariable(name: "a", arg: 1, scope: !42, file: !8, line: 21, type: !12)
!47 = !DILocation(line: 0, scope: !42)
!48 = !DILocation(line: 22, column: 10, scope: !42)
!49 = !{!38, !38, i64 0}
!50 = !DILocation(line: 22, column: 3, scope: !42)
!51 = distinct !DISubprogram(name: "ex106PointerSingleElementInstances", scope: !8, file: !8, line: 25, type: !52, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !54)
!52 = !DISubroutineType(types: !53)
!53 = !{!13, !12, !12}
!54 = !{!55, !56}
!55 = !DILocalVariable(name: "a", arg: 1, scope: !51, file: !8, line: 25, type: !12)
!56 = !DILocalVariable(name: "b", arg: 2, scope: !51, file: !8, line: 25, type: !12)
!57 = !DILocation(line: 0, scope: !51)
!58 = !DILocation(line: 26, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !51, file: !8, line: 26, column: 7)
!60 = !DILocation(line: 26, column: 17, scope: !59)
!61 = !DILocation(line: 0, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !8, line: 29, column: 14)
!63 = !DILocation(line: 0, scope: !59)
!64 = !DILocation(line: 35, column: 1, scope: !51)
!65 = distinct !DISubprogram(name: "ex108PointerFunction", scope: !8, file: !8, line: 39, type: !66, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !71)
!66 = !DISubroutineType(types: !67)
!67 = !{!13, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!13, null}
!71 = !{!72}
!72 = !DILocalVariable(name: "a", arg: 1, scope: !65, file: !8, line: 39, type: !68)
!73 = !DILocation(line: 0, scope: !65)
!74 = !DILocation(line: 41, column: 10, scope: !65)
!75 = !DILocation(line: 41, column: 3, scope: !65)
!76 = distinct !DISubprogram(name: "ex201StructFieldInt", scope: !8, file: !8, line: 50, type: !77, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !83)
!77 = !DISubroutineType(types: !78)
!78 = !{!13, !79}
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s201", file: !8, line: 46, size: 160, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !79, file: !8, line: 47, baseType: !13, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !79, file: !8, line: 48, baseType: !29, size: 128, offset: 32)
!83 = !{!84}
!84 = !DILocalVariable(name: "s", arg: 1, scope: !76, file: !8, line: 50, type: !79)
!85 = !DILocation(line: 50, column: 37, scope: !76)
!86 = !DILocation(line: 51, column: 12, scope: !76)
!87 = !{!88, !38, i64 0}
!88 = !{!"s201", !38, i64 0, !39, i64 4}
!89 = !DILocation(line: 51, column: 3, scope: !76)
!90 = distinct !DISubprogram(name: "ex202StructFieldStruct", scope: !8, file: !8, line: 60, type: !91, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !100)
!91 = !DISubroutineType(types: !92)
!92 = !{!13, !93}
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s202", file: !8, line: 54, size: 160, elements: !94)
!94 = !{!95, !99}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !93, file: !8, line: 57, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !8, line: 55, size: 32, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !96, file: !8, line: 56, baseType: !13, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !93, file: !8, line: 58, baseType: !29, size: 128, offset: 32)
!100 = !{!101}
!101 = !DILocalVariable(name: "s", arg: 1, scope: !90, file: !8, line: 60, type: !93)
!102 = !DILocation(line: 60, column: 40, scope: !90)
!103 = !DILocation(line: 61, column: 18, scope: !90)
!104 = !{!105, !38, i64 0}
!105 = !{!"s202", !106, i64 0, !39, i64 4}
!106 = !{!"", !38, i64 0}
!107 = !DILocation(line: 61, column: 3, scope: !90)
!108 = distinct !DISubprogram(name: "ex203StructFieldArrayFixedLength", scope: !8, file: !8, line: 68, type: !109, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !118)
!109 = !DISubroutineType(types: !110)
!110 = !{!13, !111}
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s203", file: !8, line: 64, size: 256, elements: !112)
!112 = !{!113, !117}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !111, file: !8, line: 65, baseType: !114, size: 128)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 4)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !111, file: !8, line: 66, baseType: !29, size: 128, offset: 128)
!118 = !{!119}
!119 = !DILocalVariable(name: "s", arg: 1, scope: !108, file: !8, line: 68, type: !111)
!120 = !DILocation(line: 68, column: 50, scope: !108)
!121 = !DILocation(line: 69, column: 10, scope: !108)
!122 = !DILocation(line: 69, column: 19, scope: !108)
!123 = !DILocation(line: 69, column: 17, scope: !108)
!124 = !DILocation(line: 69, column: 3, scope: !108)
!125 = distinct !DISubprogram(name: "ex204StructFieldArrayVariableLength", scope: !8, file: !8, line: 76, type: !126, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !135)
!126 = !DISubroutineType(types: !127)
!127 = !{!13, !128}
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s204", file: !8, line: 72, size: 32, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !128, file: !8, line: 73, baseType: !13, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !128, file: !8, line: 74, baseType: !132, offset: 32)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: -1)
!135 = !{!136}
!136 = !DILocalVariable(name: "s", arg: 1, scope: !125, file: !8, line: 76, type: !128)
!137 = !DILocation(line: 76, column: 53, scope: !125)
!138 = !DILocation(line: 77, column: 10, scope: !125)
!139 = !DILocation(line: 77, column: 19, scope: !125)
!140 = !DILocation(line: 77, column: 17, scope: !125)
!141 = !DILocation(line: 77, column: 3, scope: !125)
!142 = distinct !DISubprogram(name: "ex205StructFieldPointerSingleElementValue", scope: !8, file: !8, line: 84, type: !143, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !149)
!143 = !DISubroutineType(types: !144)
!144 = !{!13, !145}
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s205", file: !8, line: 80, size: 192, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !145, file: !8, line: 81, baseType: !12, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !145, file: !8, line: 82, baseType: !29, size: 128, offset: 64)
!149 = !{!150}
!150 = !DILocalVariable(name: "s", arg: 1, scope: !142, file: !8, line: 84, type: !145)
!151 = !DILocation(line: 84, column: 59, scope: !142)
!152 = !DILocation(line: 85, column: 13, scope: !142)
!153 = !{!154, !155, i64 0}
!154 = !{!"s205", !155, i64 0, !39, i64 8}
!155 = !{!"any pointer", !39, i64 0}
!156 = !DILocation(line: 85, column: 10, scope: !142)
!157 = !DILocation(line: 85, column: 3, scope: !142)
!158 = distinct !DISubprogram(name: "ex206StructFieldPointerSingleElementInstances", scope: !8, file: !8, line: 93, type: !159, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !166)
!159 = !DISubroutineType(types: !160)
!160 = !{!13, !161}
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s206", file: !8, line: 88, size: 256, elements: !162)
!162 = !{!163, !164, !165}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !161, file: !8, line: 89, baseType: !12, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !161, file: !8, line: 90, baseType: !12, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !161, file: !8, line: 91, baseType: !29, size: 128, offset: 128)
!166 = !{!167}
!167 = !DILocalVariable(name: "s", arg: 1, scope: !158, file: !8, line: 93, type: !161)
!168 = !DILocation(line: 93, column: 63, scope: !158)
!169 = !DILocation(line: 94, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !158, file: !8, line: 94, column: 7)
!171 = !{!172, !155, i64 0}
!172 = !{!"s206", !155, i64 0, !155, i64 8, !39, i64 16}
!173 = !DILocation(line: 94, column: 11, scope: !170)
!174 = !DILocation(line: 94, column: 19, scope: !170)
!175 = !DILocation(line: 94, column: 24, scope: !170)
!176 = !{!172, !155, i64 8}
!177 = !DILocation(line: 94, column: 26, scope: !170)
!178 = !DILocation(line: 94, column: 7, scope: !158)
!179 = !DILocation(line: 0, scope: !180)
!180 = distinct !DILexicalBlock(scope: !170, file: !8, line: 97, column: 14)
!181 = !DILocation(line: 0, scope: !170)
!182 = !DILocation(line: 103, column: 1, scope: !158)
!183 = distinct !DISubprogram(name: "ex207StructFieldPointerMultipleElementValues", scope: !8, file: !8, line: 109, type: !184, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !190)
!184 = !DISubroutineType(types: !185)
!185 = !{!13, !186}
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s207", file: !8, line: 105, size: 192, elements: !187)
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !186, file: !8, line: 106, baseType: !12, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !186, file: !8, line: 107, baseType: !29, size: 128, offset: 64)
!190 = !{!191}
!191 = !DILocalVariable(name: "s", arg: 1, scope: !183, file: !8, line: 109, type: !186)
!192 = !DILocation(line: 109, column: 62, scope: !183)
!193 = !DILocation(line: 111, column: 12, scope: !183)
!194 = !{!195, !155, i64 0}
!195 = !{!"s207", !155, i64 0, !39, i64 8}
!196 = !DILocation(line: 111, column: 10, scope: !183)
!197 = !DILocation(line: 111, column: 19, scope: !183)
!198 = !DILocation(line: 111, column: 17, scope: !183)
!199 = !DILocation(line: 111, column: 3, scope: !183)
!200 = distinct !DISubprogram(name: "ex208StructFieldPointerFunction", scope: !8, file: !8, line: 118, type: !201, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !207)
!201 = !DISubroutineType(types: !202)
!202 = !{!13, !203}
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s208", file: !8, line: 114, size: 192, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !203, file: !8, line: 115, baseType: !68, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !203, file: !8, line: 116, baseType: !29, size: 128, offset: 64)
!207 = !{!208}
!208 = !DILocalVariable(name: "s", arg: 1, scope: !200, file: !8, line: 118, type: !203)
!209 = !DILocation(line: 118, column: 49, scope: !200)
!210 = !DILocation(line: 120, column: 12, scope: !200)
!211 = !{!212, !155, i64 0}
!212 = !{!"s208", !155, i64 0, !39, i64 8}
!213 = !DILocation(line: 120, column: 10, scope: !200)
!214 = !DILocation(line: 120, column: 3, scope: !200)
!215 = distinct !DISubprogram(name: "ex301ArrayElemInt", scope: !8, file: !8, line: 129, type: !216, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !222)
!216 = !DISubroutineType(types: !217)
!217 = !{!13, !218}
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s301", file: !8, line: 125, size: 256, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !218, file: !8, line: 126, baseType: !114, size: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !218, file: !8, line: 127, baseType: !29, size: 128, offset: 128)
!222 = !{!223}
!223 = !DILocalVariable(name: "s", arg: 1, scope: !215, file: !8, line: 129, type: !218)
!224 = !DILocation(line: 129, column: 35, scope: !215)
!225 = !DILocation(line: 130, column: 10, scope: !215)
!226 = !DILocation(line: 130, column: 19, scope: !215)
!227 = !DILocation(line: 130, column: 17, scope: !215)
!228 = !DILocation(line: 130, column: 3, scope: !215)
!229 = distinct !DISubprogram(name: "ex302ArrayElemStruct", scope: !8, file: !8, line: 139, type: !230, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !240)
!230 = !DISubroutineType(types: !231)
!231 = !{!13, !232}
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s302", file: !8, line: 133, size: 256, elements: !233)
!233 = !{!234, !239}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !232, file: !8, line: 136, baseType: !235, size: 128)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 128, elements: !115)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !8, line: 134, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !236, file: !8, line: 135, baseType: !13, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !232, file: !8, line: 137, baseType: !29, size: 128, offset: 128)
!240 = !{!241}
!241 = !DILocalVariable(name: "s", arg: 1, scope: !229, file: !8, line: 139, type: !232)
!242 = !DILocation(line: 139, column: 38, scope: !229)
!243 = !DILocation(line: 140, column: 21, scope: !229)
!244 = !{!106, !38, i64 0}
!245 = !DILocation(line: 140, column: 36, scope: !229)
!246 = !DILocation(line: 140, column: 23, scope: !229)
!247 = !DILocation(line: 140, column: 3, scope: !229)
!248 = distinct !DISubprogram(name: "ex303ArrayElemArrayFixedLength", scope: !8, file: !8, line: 146, type: !249, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !256)
!249 = !DISubroutineType(types: !250)
!250 = !{!13, !251}
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s303", file: !8, line: 143, size: 512, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !251, file: !8, line: 144, baseType: !254, size: 512)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !255)
!255 = !{!116, !116}
!256 = !{!257}
!257 = !DILocalVariable(name: "s", arg: 1, scope: !248, file: !8, line: 146, type: !251)
!258 = !DILocation(line: 146, column: 48, scope: !248)
!259 = !DILocation(line: 147, column: 10, scope: !248)
!260 = !DILocation(line: 147, column: 22, scope: !248)
!261 = !DILocation(line: 147, column: 20, scope: !248)
!262 = !DILocation(line: 147, column: 3, scope: !248)
!263 = distinct !DISubprogram(name: "ex305ArrayElemPointerSingleElementValue", scope: !8, file: !8, line: 155, type: !264, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !270)
!264 = !DISubroutineType(types: !265)
!265 = !{!13, !266}
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s305", file: !8, line: 152, size: 256, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !266, file: !8, line: 153, baseType: !269, size: 256)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !115)
!270 = !{!271}
!271 = !DILocalVariable(name: "s", arg: 1, scope: !263, file: !8, line: 155, type: !266)
!272 = !DILocation(line: 155, column: 57, scope: !263)
!273 = !DILocation(line: 156, column: 11, scope: !263)
!274 = !{!155, !155, i64 0}
!275 = !DILocation(line: 156, column: 10, scope: !263)
!276 = !DILocation(line: 156, column: 3, scope: !263)
!277 = distinct !DISubprogram(name: "ex306ArrayElemPointerSingleElementInstances", scope: !8, file: !8, line: 162, type: !278, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !283)
!278 = !DISubroutineType(types: !279)
!279 = !{!13, !280}
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s306", file: !8, line: 159, size: 256, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !280, file: !8, line: 160, baseType: !269, size: 256)
!283 = !{!284}
!284 = !DILocalVariable(name: "s", arg: 1, scope: !277, file: !8, line: 162, type: !280)
!285 = !DILocation(line: 162, column: 61, scope: !277)
!286 = !DILocation(line: 163, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !277, file: !8, line: 163, column: 7)
!288 = !DILocation(line: 163, column: 14, scope: !287)
!289 = !DILocation(line: 163, column: 22, scope: !287)
!290 = !DILocation(line: 163, column: 25, scope: !287)
!291 = !DILocation(line: 163, column: 32, scope: !287)
!292 = !DILocation(line: 163, column: 7, scope: !277)
!293 = !DILocation(line: 0, scope: !294)
!294 = distinct !DILexicalBlock(scope: !287, file: !8, line: 166, column: 14)
!295 = !DILocation(line: 0, scope: !287)
!296 = !DILocation(line: 172, column: 1, scope: !277)
!297 = distinct !DISubprogram(name: "ex307ArrayElemPointerMultipleElementValues", scope: !8, file: !8, line: 177, type: !298, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !303)
!298 = !DISubroutineType(types: !299)
!299 = !{!13, !300}
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s307", file: !8, line: 174, size: 256, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !300, file: !8, line: 175, baseType: !269, size: 256)
!303 = !{!304}
!304 = !DILocalVariable(name: "s", arg: 1, scope: !297, file: !8, line: 177, type: !300)
!305 = !DILocation(line: 177, column: 60, scope: !297)
!306 = !DILocation(line: 179, column: 10, scope: !297)
!307 = !DILocation(line: 179, column: 22, scope: !297)
!308 = !DILocation(line: 179, column: 20, scope: !297)
!309 = !DILocation(line: 179, column: 3, scope: !297)
!310 = distinct !DISubprogram(name: "ex308ArrayElemPointerFunction", scope: !8, file: !8, line: 185, type: !311, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !317)
!311 = !DISubroutineType(types: !312)
!312 = !{!13, !313}
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s308", file: !8, line: 182, size: 256, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !313, file: !8, line: 183, baseType: !316, size: 256)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 256, elements: !115)
!317 = !{!318}
!318 = !DILocalVariable(name: "s", arg: 1, scope: !310, file: !8, line: 185, type: !313)
!319 = !DILocation(line: 185, column: 47, scope: !310)
!320 = !DILocation(line: 187, column: 10, scope: !310)
!321 = !DILocation(line: 187, column: 21, scope: !310)
!322 = !DILocation(line: 187, column: 19, scope: !310)
!323 = !DILocation(line: 187, column: 3, scope: !310)
!324 = distinct !DISubprogram(name: "ex401PointerToInt", scope: !8, file: !8, line: 192, type: !43, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !325)
!325 = !{!326}
!326 = !DILocalVariable(name: "a", arg: 1, scope: !324, file: !8, line: 192, type: !12)
!327 = !DILocation(line: 0, scope: !324)
!328 = !DILocation(line: 193, column: 10, scope: !324)
!329 = !DILocation(line: 193, column: 3, scope: !324)
!330 = distinct !DISubprogram(name: "ex402PointerToStruct", scope: !8, file: !8, line: 199, type: !331, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !337)
!331 = !DISubroutineType(types: !332)
!332 = !{!13, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s402", file: !8, line: 196, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !334, file: !8, line: 197, baseType: !13, size: 32)
!337 = !{!338}
!338 = !DILocalVariable(name: "s", arg: 1, scope: !330, file: !8, line: 199, type: !333)
!339 = !DILocation(line: 0, scope: !330)
!340 = !DILocation(line: 200, column: 13, scope: !330)
!341 = !{!342, !38, i64 0}
!342 = !{!"s402", !38, i64 0}
!343 = !DILocation(line: 200, column: 3, scope: !330)
!344 = distinct !DISubprogram(name: "ex405PointerToPointerSingleElementValue", scope: !8, file: !8, line: 205, type: !345, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !348)
!345 = !DISubroutineType(types: !346)
!346 = !{!13, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!348 = !{!349}
!349 = !DILocalVariable(name: "a", arg: 1, scope: !344, file: !8, line: 205, type: !347)
!350 = !DILocation(line: 0, scope: !344)
!351 = !DILocation(line: 206, column: 11, scope: !344)
!352 = !DILocation(line: 206, column: 10, scope: !344)
!353 = !DILocation(line: 206, column: 3, scope: !344)
!354 = distinct !DISubprogram(name: "ex406PointerToPointerSingleElementInstances", scope: !8, file: !8, line: 209, type: !355, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!13, !347, !347}
!357 = !{!358, !359}
!358 = !DILocalVariable(name: "a", arg: 1, scope: !354, file: !8, line: 209, type: !347)
!359 = !DILocalVariable(name: "b", arg: 2, scope: !354, file: !8, line: 209, type: !347)
!360 = !DILocation(line: 0, scope: !354)
!361 = !DILocation(line: 210, column: 7, scope: !362)
!362 = distinct !DILexicalBlock(scope: !354, file: !8, line: 210, column: 7)
!363 = !DILocation(line: 210, column: 10, scope: !362)
!364 = !DILocation(line: 210, column: 18, scope: !362)
!365 = !DILocation(line: 210, column: 21, scope: !362)
!366 = !DILocation(line: 210, column: 24, scope: !362)
!367 = !DILocation(line: 210, column: 7, scope: !354)
!368 = !DILocation(line: 0, scope: !369)
!369 = distinct !DILexicalBlock(scope: !362, file: !8, line: 213, column: 14)
!370 = !DILocation(line: 0, scope: !362)
!371 = !DILocation(line: 219, column: 1, scope: !354)
!372 = distinct !DISubprogram(name: "ex407PointerToPointerMultipleElementValues", scope: !8, file: !8, line: 221, type: !345, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !373)
!373 = !{!374}
!374 = !DILocalVariable(name: "a", arg: 1, scope: !372, file: !8, line: 221, type: !347)
!375 = !DILocation(line: 0, scope: !372)
!376 = !DILocation(line: 223, column: 11, scope: !372)
!377 = !DILocation(line: 223, column: 10, scope: !372)
!378 = !DILocation(line: 223, column: 20, scope: !372)
!379 = !DILocation(line: 223, column: 18, scope: !372)
!380 = !DILocation(line: 223, column: 3, scope: !372)
!381 = distinct !DISubprogram(name: "ex408PointerToPointerFunction", scope: !8, file: !8, line: 226, type: !382, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !385)
!382 = !DISubroutineType(types: !383)
!383 = !{!13, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!385 = !{!386}
!386 = !DILocalVariable(name: "a", arg: 1, scope: !381, file: !8, line: 226, type: !384)
!387 = !DILocation(line: 0, scope: !381)
!388 = !DILocation(line: 228, column: 11, scope: !381)
!389 = !DILocation(line: 228, column: 10, scope: !381)
!390 = !DILocation(line: 228, column: 3, scope: !381)
!391 = distinct !DISubprogram(name: "ex501PointerAsArrayOfInt", scope: !8, file: !8, line: 233, type: !43, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !392)
!392 = !{!393}
!393 = !DILocalVariable(name: "a", arg: 1, scope: !391, file: !8, line: 233, type: !12)
!394 = !DILocation(line: 0, scope: !391)
!395 = !DILocation(line: 235, column: 10, scope: !391)
!396 = !DILocation(line: 235, column: 17, scope: !391)
!397 = !DILocation(line: 235, column: 15, scope: !391)
!398 = !DILocation(line: 235, column: 3, scope: !391)
!399 = distinct !DISubprogram(name: "ex502PointerAsArrayOfStruct", scope: !8, file: !8, line: 241, type: !400, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !406)
!400 = !DISubroutineType(types: !401)
!401 = !{!13, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s502", file: !8, line: 238, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !403, file: !8, line: 239, baseType: !13, size: 32)
!406 = !{!407}
!407 = !DILocalVariable(name: "s", arg: 1, scope: !399, file: !8, line: 241, type: !402)
!408 = !DILocation(line: 0, scope: !399)
!409 = !DILocation(line: 243, column: 15, scope: !399)
!410 = !{!411, !38, i64 0}
!411 = !{!"s502", !38, i64 0}
!412 = !DILocation(line: 243, column: 24, scope: !399)
!413 = !DILocation(line: 243, column: 17, scope: !399)
!414 = !DILocation(line: 243, column: 3, scope: !399)
!415 = distinct !DISubprogram(name: "ex505PointerAsArrayOfPointerSingleElementValue", scope: !8, file: !8, line: 248, type: !345, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !416)
!416 = !{!417}
!417 = !DILocalVariable(name: "a", arg: 1, scope: !415, file: !8, line: 248, type: !347)
!418 = !DILocation(line: 0, scope: !415)
!419 = !DILocation(line: 250, column: 11, scope: !415)
!420 = !DILocation(line: 250, column: 10, scope: !415)
!421 = !DILocation(line: 250, column: 3, scope: !415)
!422 = distinct !DISubprogram(name: "ex506PointerAsArrayOfPointerSingleElementInstances", scope: !8, file: !8, line: 253, type: !345, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !423)
!423 = !{!424}
!424 = !DILocalVariable(name: "a", arg: 1, scope: !422, file: !8, line: 253, type: !347)
!425 = !DILocation(line: 0, scope: !422)
!426 = !DILocation(line: 255, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !422, file: !8, line: 255, column: 7)
!428 = !DILocation(line: 255, column: 12, scope: !427)
!429 = !DILocation(line: 255, column: 20, scope: !427)
!430 = !DILocation(line: 255, column: 23, scope: !427)
!431 = !DILocation(line: 255, column: 28, scope: !427)
!432 = !DILocation(line: 255, column: 7, scope: !422)
!433 = !DILocation(line: 0, scope: !434)
!434 = distinct !DILexicalBlock(scope: !427, file: !8, line: 257, column: 14)
!435 = !DILocation(line: 0, scope: !427)
!436 = !DILocation(line: 262, column: 1, scope: !422)
!437 = distinct !DISubprogram(name: "ex507PointerAsArrayOfPointerMultipleElementValues", scope: !8, file: !8, line: 264, type: !345, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !438)
!438 = !{!439}
!439 = !DILocalVariable(name: "a", arg: 1, scope: !437, file: !8, line: 264, type: !347)
!440 = !DILocation(line: 0, scope: !437)
!441 = !DILocation(line: 266, column: 11, scope: !437)
!442 = !DILocation(line: 266, column: 10, scope: !437)
!443 = !DILocation(line: 266, column: 19, scope: !437)
!444 = !DILocation(line: 266, column: 18, scope: !437)
!445 = !DILocation(line: 266, column: 16, scope: !437)
!446 = !DILocation(line: 266, column: 3, scope: !437)
!447 = distinct !DISubprogram(name: "ex508PointerAsArrayOfPointerFunction", scope: !8, file: !8, line: 269, type: !382, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !448)
!448 = !{!449}
!449 = !DILocalVariable(name: "a", arg: 1, scope: !447, file: !8, line: 269, type: !384)
!450 = !DILocation(line: 0, scope: !447)
!451 = !DILocation(line: 272, column: 10, scope: !447)
!452 = !DILocation(line: 272, column: 19, scope: !447)
!453 = !DILocation(line: 272, column: 17, scope: !447)
!454 = !DILocation(line: 272, column: 3, scope: !447)
!455 = distinct !DISubprogram(name: "ex601StructWithArrayOfPointers", scope: !8, file: !8, line: 282, type: !456, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !464)
!456 = !DISubroutineType(types: !457)
!457 = !{!13, !458}
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s601", file: !8, line: 277, size: 256, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !458, file: !8, line: 280, baseType: !461, size: 256)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !8, line: 278, size: 256, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !461, file: !8, line: 279, baseType: !269, size: 256)
!464 = !{!465}
!465 = !DILocalVariable(name: "s", arg: 1, scope: !455, file: !8, line: 282, type: !458)
!466 = !DILocation(line: 282, column: 48, scope: !455)
!467 = !DILocation(line: 283, column: 11, scope: !455)
!468 = !DILocation(line: 283, column: 10, scope: !455)
!469 = !DILocation(line: 283, column: 3, scope: !455)
!470 = distinct !DISubprogram(name: "ex602ArrayOfStructsWithPointer", scope: !8, file: !8, line: 291, type: !471, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !480)
!471 = !DISubroutineType(types: !472)
!472 = !{!13, !473}
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s602", file: !8, line: 286, size: 256, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !473, file: !8, line: 289, baseType: !476, size: 256)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 256, elements: !115)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !473, file: !8, line: 287, size: 64, elements: !478)
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !477, file: !8, line: 288, baseType: !12, size: 64)
!480 = !{!481}
!481 = !DILocalVariable(name: "s", arg: 1, scope: !470, file: !8, line: 291, type: !473)
!482 = !DILocation(line: 291, column: 48, scope: !470)
!483 = !DILocation(line: 292, column: 22, scope: !470)
!484 = !{!485, !155, i64 0}
!485 = !{!"", !155, i64 0}
!486 = !DILocation(line: 292, column: 10, scope: !470)
!487 = !DILocation(line: 292, column: 3, scope: !470)
!488 = distinct !DISubprogram(name: "ex603PointerArithmetic", scope: !8, file: !8, line: 297, type: !43, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !489)
!489 = !{!490}
!490 = !DILocalVariable(name: "a", arg: 1, scope: !488, file: !8, line: 297, type: !12)
!491 = !DILocation(line: 0, scope: !488)
!492 = !DILocation(line: 299, column: 14, scope: !488)
!493 = !DILocation(line: 299, column: 10, scope: !488)
!494 = !DILocation(line: 299, column: 3, scope: !488)
!495 = distinct !DISubprogram(name: "ex604PointerCast", scope: !8, file: !8, line: 302, type: !496, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!13, !11}
!498 = !{!499}
!499 = !DILocalVariable(name: "a", arg: 1, scope: !495, file: !8, line: 302, type: !11)
!500 = !DILocation(line: 0, scope: !495)
!501 = !DILocation(line: 303, column: 11, scope: !495)
!502 = !DILocation(line: 303, column: 10, scope: !495)
!503 = !DILocation(line: 303, column: 3, scope: !495)
!504 = distinct !DISubprogram(name: "ex605PointerFunction", scope: !8, file: !8, line: 306, type: !66, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !505)
!505 = !{!506, !507}
!506 = !DILocalVariable(name: "a", arg: 1, scope: !504, file: !8, line: 306, type: !68)
!507 = !DILocalVariable(name: "result", scope: !504, file: !8, line: 308, type: !13)
!508 = !DILocation(line: 0, scope: !504)
!509 = !DILocation(line: 308, column: 16, scope: !504)
!510 = !DILocation(line: 310, column: 3, scope: !504)
!511 = distinct !DISubprogram(name: "ex606ListLengthLimitedLoop", scope: !8, file: !8, line: 319, type: !512, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !519)
!512 = !DISubroutineType(types: !513)
!513 = !{!13, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s606", file: !8, line: 315, size: 128, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !515, file: !8, line: 316, baseType: !13, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !515, file: !8, line: 317, baseType: !514, size: 64, offset: 64)
!519 = !{!520, !521, !522}
!520 = !DILocalVariable(name: "s", arg: 1, scope: !511, file: !8, line: 319, type: !514)
!521 = !DILocalVariable(name: "sum", scope: !511, file: !8, line: 320, type: !13)
!522 = !DILocalVariable(name: "i", scope: !511, file: !8, line: 321, type: !13)
!523 = !DILocation(line: 0, scope: !511)
!524 = !DILocation(line: 322, column: 3, scope: !525)
!525 = distinct !DILexicalBlock(scope: !511, file: !8, line: 322, column: 3)
!526 = !DILocation(line: 323, column: 15, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !8, line: 322, column: 27)
!528 = distinct !DILexicalBlock(scope: !525, file: !8, line: 322, column: 3)
!529 = !{!530, !38, i64 0}
!530 = !{!"s606", !38, i64 0, !155, i64 8}
!531 = !DILocation(line: 323, column: 9, scope: !527)
!532 = !DILocation(line: 324, column: 13, scope: !533)
!533 = distinct !DILexicalBlock(scope: !527, file: !8, line: 324, column: 9)
!534 = !{!530, !155, i64 8}
!535 = !DILocation(line: 324, column: 10, scope: !533)
!536 = !DILocation(line: 324, column: 9, scope: !527)
!537 = !DILocation(line: 322, column: 23, scope: !528)
!538 = !DILocation(line: 322, column: 17, scope: !528)
!539 = distinct !{!539, !524, !540, !541, !542}
!540 = !DILocation(line: 327, column: 3, scope: !525)
!541 = !{!"llvm.loop.mustprogress"}
!542 = !{!"llvm.loop.unroll.disable"}
!543 = !DILocation(line: 0, scope: !525)
!544 = !DILocation(line: 328, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !511, file: !8, line: 328, column: 7)
!546 = !DILocation(line: 331, column: 1, scope: !511)
!547 = distinct !DISubprogram(name: "ex607ListLengthUnlimitedLoop", scope: !8, file: !8, line: 337, type: !548, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !555)
!548 = !DISubroutineType(types: !549)
!549 = !{!13, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s607", file: !8, line: 333, size: 128, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !551, file: !8, line: 334, baseType: !13, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !551, file: !8, line: 335, baseType: !550, size: 64, offset: 64)
!555 = !{!556, !557, !558}
!556 = !DILocalVariable(name: "s", arg: 1, scope: !547, file: !8, line: 337, type: !550)
!557 = !DILocalVariable(name: "sum", scope: !547, file: !8, line: 338, type: !13)
!558 = !DILocalVariable(name: "i", scope: !547, file: !8, line: 339, type: !13)
!559 = !DILocation(line: 0, scope: !547)
!560 = !DILocation(line: 340, column: 3, scope: !547)
!561 = !DILocation(line: 341, column: 15, scope: !562)
!562 = distinct !DILexicalBlock(scope: !547, file: !8, line: 340, column: 13)
!563 = !{!564, !38, i64 0}
!564 = !{!"s607", !38, i64 0, !155, i64 8}
!565 = !DILocation(line: 341, column: 9, scope: !562)
!566 = !DILocation(line: 342, column: 12, scope: !562)
!567 = !{!564, !155, i64 8}
!568 = !DILocation(line: 343, column: 5, scope: !562)
!569 = distinct !{!569, !560, !570, !541, !542}
!570 = !DILocation(line: 344, column: 3, scope: !547)
!571 = !DILocation(line: 345, column: 9, scope: !572)
!572 = distinct !DILexicalBlock(scope: !547, file: !8, line: 345, column: 7)
!573 = !DILocation(line: 348, column: 1, scope: !547)
