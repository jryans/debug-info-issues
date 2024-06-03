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
%struct.s506 = type { i32, %struct.s506* }

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex107PointerMultipleElementValues(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !67, metadata !DIExpression()), !dbg !68
  %0 = load i32, i32* %a, align 4, !dbg !69, !tbaa !49
  %arrayidx1 = getelementptr inbounds i32, i32* %a, i64 3, !dbg !70
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !70, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !71
  ret i32 %add, !dbg !72
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex108PointerFunction(i32 (...)* nocapture %a) local_unnamed_addr #3 !dbg !73 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* %a, metadata !80, metadata !DIExpression()), !dbg !81
  %call = call i32 (...) %a() #6, !dbg !82
  ret i32 %call, !dbg !83
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex201StructFieldInt(%struct.s201* nocapture readonly byval(%struct.s201) align 8 %s) local_unnamed_addr #2 !dbg !84 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s201* %s, metadata !92, metadata !DIExpression()), !dbg !93
  %a = getelementptr inbounds %struct.s201, %struct.s201* %s, i64 0, i32 0, !dbg !94
  %0 = load i32, i32* %a, align 8, !dbg !94, !tbaa !95
  ret i32 %0, !dbg !97
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex202StructFieldStruct(%struct.s202* nocapture readonly byval(%struct.s202) align 8 %s) local_unnamed_addr #2 !dbg !98 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s202* %s, metadata !109, metadata !DIExpression()), !dbg !110
  %a = getelementptr inbounds %struct.s202, %struct.s202* %s, i64 0, i32 0, i32 0, !dbg !111
  %0 = load i32, i32* %a, align 8, !dbg !111, !tbaa !112
  ret i32 %0, !dbg !115
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex203StructFieldArrayFixedLength(%struct.s203* nocapture readonly byval(%struct.s203) align 8 %s) local_unnamed_addr #2 !dbg !116 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s203* %s, metadata !127, metadata !DIExpression()), !dbg !128
  %arrayidx = getelementptr inbounds %struct.s203, %struct.s203* %s, i64 0, i32 0, i64 0, !dbg !129
  %0 = load i32, i32* %arrayidx, align 8, !dbg !129, !tbaa !49
  %arrayidx2 = getelementptr inbounds %struct.s203, %struct.s203* %s, i64 0, i32 0, i64 3, !dbg !130
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !130, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !131
  ret i32 %add, !dbg !132
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex204StructFieldArrayVariableLength(%struct.s204* nocapture readonly byval(%struct.s204) align 8 %s) local_unnamed_addr #2 !dbg !133 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s204* %s, metadata !144, metadata !DIExpression()), !dbg !145
  %arrayidx = getelementptr inbounds %struct.s204, %struct.s204* %s, i64 0, i32 1, i64 0, !dbg !146
  %0 = load i32, i32* %arrayidx, align 4, !dbg !146, !tbaa !49
  %arrayidx2 = getelementptr inbounds %struct.s204, %struct.s204* %s, i64 0, i32 1, i64 3, !dbg !147
  %1 = load i32, i32* %arrayidx2, align 8, !dbg !147, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !148
  ret i32 %add, !dbg !149
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex205StructFieldPointerSingleElementValue(%struct.s205* nocapture readonly byval(%struct.s205) align 8 %s) local_unnamed_addr #2 !dbg !150 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s205* %s, metadata !158, metadata !DIExpression()), !dbg !159
  %a = getelementptr inbounds %struct.s205, %struct.s205* %s, i64 0, i32 0, !dbg !160
  %0 = load i32*, i32** %a, align 8, !dbg !160, !tbaa !161
  %1 = load i32, i32* %0, align 4, !dbg !164, !tbaa !49
  ret i32 %1, !dbg !165
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex206StructFieldPointerSingleElementInstances(%struct.s206* nocapture readonly byval(%struct.s206) align 8 %s) local_unnamed_addr #2 !dbg !166 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s206* %s, metadata !175, metadata !DIExpression()), !dbg !176
  %a = getelementptr inbounds %struct.s206, %struct.s206* %s, i64 0, i32 0, !dbg !177
  %0 = load i32*, i32** %a, align 8, !dbg !177, !tbaa !179
  %cmp = icmp eq i32* %0, null, !dbg !181
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !182

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds %struct.s206, %struct.s206* %s, i64 0, i32 1, !dbg !183
  %1 = load i32*, i32** %b, align 8, !dbg !183, !tbaa !184
  %cmp1 = icmp eq i32* %1, null, !dbg !185
  br i1 %cmp1, label %return, label %if.else, !dbg !186

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %0, align 4, !dbg !187, !tbaa !49
  %3 = load i32, i32* %1, align 4, !dbg !187, !tbaa !49
  %add11 = add nsw i32 %3, %2, !dbg !187
  br label %return, !dbg !187

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %add11, %if.else ], !dbg !189
  ret i32 %retval.0, !dbg !190
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex207StructFieldPointerMultipleElementValues(%struct.s207* nocapture readonly byval(%struct.s207) align 8 %s) local_unnamed_addr #2 !dbg !191 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s207* %s, metadata !199, metadata !DIExpression()), !dbg !200
  %a = getelementptr inbounds %struct.s207, %struct.s207* %s, i64 0, i32 0, !dbg !201
  %0 = load i32*, i32** %a, align 8, !dbg !201, !tbaa !202
  %1 = load i32, i32* %0, align 4, !dbg !204, !tbaa !49
  %arrayidx2 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !205
  %2 = load i32, i32* %arrayidx2, align 4, !dbg !205, !tbaa !49
  %add = add nsw i32 %2, %1, !dbg !206
  ret i32 %add, !dbg !207
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex208StructFieldPointerFunction(%struct.s208* nocapture readonly byval(%struct.s208) align 8 %s) local_unnamed_addr #3 !dbg !208 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s208* %s, metadata !216, metadata !DIExpression()), !dbg !217
  %a = getelementptr inbounds %struct.s208, %struct.s208* %s, i64 0, i32 0, !dbg !218
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !218, !tbaa !219
  %call = call i32 (...) %0() #6, !dbg !221
  ret i32 %call, !dbg !222
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex301ArrayElemInt(%struct.s301* nocapture readonly byval(%struct.s301) align 8 %s) local_unnamed_addr #2 !dbg !223 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s301* %s, metadata !231, metadata !DIExpression()), !dbg !232
  %arrayidx = getelementptr inbounds %struct.s301, %struct.s301* %s, i64 0, i32 0, i64 0, !dbg !233
  %0 = load i32, i32* %arrayidx, align 8, !dbg !233, !tbaa !49
  %arrayidx2 = getelementptr inbounds %struct.s301, %struct.s301* %s, i64 0, i32 0, i64 3, !dbg !234
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !234, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !235
  ret i32 %add, !dbg !236
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex302ArrayElemStruct(%struct.s302* nocapture readonly byval(%struct.s302) align 8 %s) local_unnamed_addr #2 !dbg !237 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s302* %s, metadata !249, metadata !DIExpression()), !dbg !250
  %a = getelementptr inbounds %struct.s302, %struct.s302* %s, i64 0, i32 0, i64 0, i32 0, !dbg !251
  %0 = load i32, i32* %a, align 8, !dbg !251, !tbaa !252
  %a3 = getelementptr inbounds %struct.s302, %struct.s302* %s, i64 0, i32 0, i64 3, i32 0, !dbg !253
  %1 = load i32, i32* %a3, align 4, !dbg !253, !tbaa !252
  %add = add nsw i32 %1, %0, !dbg !254
  ret i32 %add, !dbg !255
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex303ArrayElemArrayFixedLength(%struct.s303* nocapture readonly byval(%struct.s303) align 8 %s) local_unnamed_addr #2 !dbg !256 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s303* %s, metadata !265, metadata !DIExpression()), !dbg !266
  %arrayidx1 = getelementptr inbounds %struct.s303, %struct.s303* %s, i64 0, i32 0, i64 0, i64 0, !dbg !267
  %0 = load i32, i32* %arrayidx1, align 8, !dbg !267, !tbaa !49
  %arrayidx4 = getelementptr inbounds %struct.s303, %struct.s303* %s, i64 0, i32 0, i64 3, i64 3, !dbg !268
  %1 = load i32, i32* %arrayidx4, align 4, !dbg !268, !tbaa !49
  %add = add nsw i32 %1, %0, !dbg !269
  ret i32 %add, !dbg !270
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex305ArrayElemPointerSingleElementValue(%struct.s305* nocapture readonly byval(%struct.s305) align 8 %s) local_unnamed_addr #2 !dbg !271 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s305* %s, metadata !279, metadata !DIExpression()), !dbg !280
  %arrayidx = getelementptr inbounds %struct.s305, %struct.s305* %s, i64 0, i32 0, i64 0, !dbg !281
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !281, !tbaa !282
  %1 = load i32, i32* %0, align 4, !dbg !283, !tbaa !49
  ret i32 %1, !dbg !284
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex306ArrayElemPointerSingleElementInstances(%struct.s306* nocapture readonly byval(%struct.s306) align 8 %s) local_unnamed_addr #2 !dbg !285 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s306* %s, metadata !292, metadata !DIExpression()), !dbg !293
  %arrayidx = getelementptr inbounds %struct.s306, %struct.s306* %s, i64 0, i32 0, i64 0, !dbg !294
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !294, !tbaa !282
  %cmp = icmp eq i32* %0, null, !dbg !296
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !297

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr inbounds %struct.s306, %struct.s306* %s, i64 0, i32 0, i64 3, !dbg !298
  %1 = load i32*, i32** %arrayidx2, align 8, !dbg !298, !tbaa !282
  %cmp3 = icmp eq i32* %1, null, !dbg !299
  br i1 %cmp3, label %return, label %if.else, !dbg !300

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %0, align 4, !dbg !301, !tbaa !49
  %3 = load i32, i32* %1, align 4, !dbg !301, !tbaa !49
  %add19 = add nsw i32 %3, %2, !dbg !301
  br label %return, !dbg !301

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %add19, %if.else ], !dbg !303
  ret i32 %retval.0, !dbg !304
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex307ArrayElemPointerMultipleElementValues(%struct.s307* nocapture readonly byval(%struct.s307) align 8 %s) local_unnamed_addr #2 !dbg !305 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s307* %s, metadata !312, metadata !DIExpression()), !dbg !313
  %arrayidx = getelementptr inbounds %struct.s307, %struct.s307* %s, i64 0, i32 0, i64 0, !dbg !314
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !314, !tbaa !282
  %1 = load i32, i32* %0, align 4, !dbg !314, !tbaa !49
  %arrayidx4 = getelementptr inbounds i32, i32* %0, i64 3, !dbg !315
  %2 = load i32, i32* %arrayidx4, align 4, !dbg !315, !tbaa !49
  %add = add nsw i32 %2, %1, !dbg !316
  ret i32 %add, !dbg !317
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex308ArrayElemPointerFunction(%struct.s308* nocapture readonly byval(%struct.s308) align 8 %s) local_unnamed_addr #3 !dbg !318 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s308* %s, metadata !326, metadata !DIExpression()), !dbg !327
  %arrayidx = getelementptr inbounds %struct.s308, %struct.s308* %s, i64 0, i32 0, i64 0, !dbg !328
  %0 = load i32 (...)*, i32 (...)** %arrayidx, align 8, !dbg !328, !tbaa !282
  %call = call i32 (...) %0() #6, !dbg !328
  %arrayidx2 = getelementptr inbounds %struct.s308, %struct.s308* %s, i64 0, i32 0, i64 3, !dbg !329
  %1 = load i32 (...)*, i32 (...)** %arrayidx2, align 8, !dbg !329, !tbaa !282
  %call3 = call i32 (...) %1() #6, !dbg !329
  %add = add nsw i32 %call3, %call, !dbg !330
  ret i32 %add, !dbg !331
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex401PointerToInt(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !332 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !334, metadata !DIExpression()), !dbg !335
  %0 = load i32, i32* %a, align 4, !dbg !336, !tbaa !49
  ret i32 %0, !dbg !337
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex402PointerToStruct(%struct.s402* nocapture readonly %s) local_unnamed_addr #2 !dbg !338 {
entry:
  call void @llvm.dbg.value(metadata %struct.s402* %s, metadata !346, metadata !DIExpression()), !dbg !347
  %a = getelementptr inbounds %struct.s402, %struct.s402* %s, i64 0, i32 0, !dbg !348
  %0 = load i32, i32* %a, align 4, !dbg !348, !tbaa !349
  ret i32 %0, !dbg !351
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex405PointerToPointerSingleElementValue(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !352 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !357, metadata !DIExpression()), !dbg !358
  %0 = load i32*, i32** %a, align 8, !dbg !359, !tbaa !282
  %1 = load i32, i32* %0, align 4, !dbg !360, !tbaa !49
  ret i32 %1, !dbg !361
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex406PointerToPointerSingleElementInstances(i32** nocapture readonly %a, i32** nocapture readonly %b) local_unnamed_addr #2 !dbg !362 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.value(metadata i32** %b, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load i32*, i32** %a, align 8, !dbg !369, !tbaa !282
  %cmp = icmp eq i32* %0, null, !dbg !371
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !372

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %b, align 8, !dbg !373, !tbaa !282
  %cmp1 = icmp eq i32* %1, null, !dbg !374
  br i1 %cmp1, label %return, label %if.else, !dbg !375

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32, i32* %0, align 4, !dbg !376, !tbaa !49
  %3 = load i32, i32* %1, align 4, !dbg !376, !tbaa !49
  %add5 = add nsw i32 %3, %2, !dbg !376
  br label %return, !dbg !376

return:                                           ; preds = %if.else, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %add5, %if.else ], !dbg !378
  ret i32 %retval.0, !dbg !379
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex407PointerToPointerMultipleElementValues(i32** nocapture readonly %a) local_unnamed_addr #2 !dbg !380 {
entry:
  call void @llvm.dbg.value(metadata i32** %a, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i32*, i32** %a, align 8, !dbg !384, !tbaa !282
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
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !396, !tbaa !282
  %call = call i32 (...) %0() #6, !dbg !397
  ret i32 %call, !dbg !398
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex501StructWithArrayOfPointers(%struct.s501* nocapture readonly byval(%struct.s501) align 8 %s) local_unnamed_addr #2 !dbg !399 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s501* %s, metadata !409, metadata !DIExpression()), !dbg !410
  %arrayidx = getelementptr inbounds %struct.s501, %struct.s501* %s, i64 0, i32 0, i32 0, i64 0, !dbg !411
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !411, !tbaa !282
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex503PointerArithmetic(i32* nocapture readonly %a) local_unnamed_addr #2 !dbg !432 {
entry:
  call void @llvm.dbg.value(metadata i32* %a, metadata !434, metadata !DIExpression()), !dbg !435
  %add.ptr = getelementptr inbounds i32, i32* %a, i64 3, !dbg !436
  %0 = load i32, i32* %add.ptr, align 4, !dbg !437, !tbaa !49
  ret i32 %0, !dbg !438
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i32 @ex504PointerCast(i8* nocapture readonly %a) local_unnamed_addr #2 !dbg !439 {
entry:
  call void @llvm.dbg.value(metadata i8* %a, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = bitcast i8* %a to i32*, !dbg !445
  %1 = load i32, i32* %0, align 4, !dbg !446, !tbaa !49
  ret i32 %1, !dbg !447
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex505PointerFunction(i32 (...)* nocapture %a) local_unnamed_addr #3 !dbg !448 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* %a, metadata !450, metadata !DIExpression()), !dbg !452
  %call = call i32 (...) %a() #6, !dbg !453
  call void @llvm.dbg.value(metadata i32 %call, metadata !451, metadata !DIExpression()), !dbg !452
  ret i32 %call, !dbg !454
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly ssp uwtable
define i32 @ex506ListLengthLimited(%struct.s506* nocapture readonly %s) local_unnamed_addr #4 !dbg !455 {
entry:
  call void @llvm.dbg.value(metadata %struct.s506* %s, metadata !464, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 0, metadata !465, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 0, metadata !466, metadata !DIExpression()), !dbg !467
  br label %for.body, !dbg !468

for.body:                                         ; preds = %entry, %if.end
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %sum.014 = phi i32 [ 0, %entry ], [ %add, %if.end ]
  %s.addr.013 = phi %struct.s506* [ %s, %entry ], [ %1, %if.end ]
  call void @llvm.dbg.value(metadata i32 %i.015, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %sum.014, metadata !465, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata %struct.s506* %s.addr.013, metadata !464, metadata !DIExpression()), !dbg !467
  %a = getelementptr inbounds %struct.s506, %struct.s506* %s.addr.013, i64 0, i32 0, !dbg !470
  %0 = load i32, i32* %a, align 8, !dbg !470, !tbaa !473
  %add = add nsw i32 %0, %sum.014, !dbg !475
  call void @llvm.dbg.value(metadata i32 %add, metadata !465, metadata !DIExpression()), !dbg !467
  %n = getelementptr inbounds %struct.s506, %struct.s506* %s.addr.013, i64 0, i32 1, !dbg !476
  %1 = load %struct.s506*, %struct.s506** %n, align 8, !dbg !476, !tbaa !478
  %tobool.not = icmp eq %struct.s506* %1, null, !dbg !479
  br i1 %tobool.not, label %for.end, label %if.end, !dbg !480

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.s506* %1, metadata !464, metadata !DIExpression()), !dbg !467
  %inc = add nuw nsw i32 %i.015, 1, !dbg !481
  call void @llvm.dbg.value(metadata i32 %inc, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %add, metadata !465, metadata !DIExpression()), !dbg !467
  %exitcond.not = icmp eq i32 %inc, 4, !dbg !482
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !468, !llvm.loop !483

for.end:                                          ; preds = %for.body, %if.end
  %i.0.lcssa = phi i32 [ %i.015, %for.body ], [ 4, %if.end ], !dbg !487
  call void @llvm.dbg.value(metadata i32 %add, metadata !465, metadata !DIExpression()), !dbg !467
  %cmp2 = icmp eq i32 %i.0.lcssa, 4, !dbg !488
  %.sum.1 = select i1 %cmp2, i32 0, i32 %add, !dbg !467
  ret i32 %.sum.1, !dbg !490
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
!65 = distinct !DISubprogram(name: "ex107PointerMultipleElementValues", scope: !8, file: !8, line: 37, type: !43, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !66)
!66 = !{!67}
!67 = !DILocalVariable(name: "a", arg: 1, scope: !65, file: !8, line: 37, type: !12)
!68 = !DILocation(line: 0, scope: !65)
!69 = !DILocation(line: 39, column: 10, scope: !65)
!70 = !DILocation(line: 39, column: 17, scope: !65)
!71 = !DILocation(line: 39, column: 15, scope: !65)
!72 = !DILocation(line: 39, column: 3, scope: !65)
!73 = distinct !DISubprogram(name: "ex108PointerFunction", scope: !8, file: !8, line: 42, type: !74, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !79)
!74 = !DISubroutineType(types: !75)
!75 = !{!13, !76}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!13, null}
!79 = !{!80}
!80 = !DILocalVariable(name: "a", arg: 1, scope: !73, file: !8, line: 42, type: !76)
!81 = !DILocation(line: 0, scope: !73)
!82 = !DILocation(line: 44, column: 10, scope: !73)
!83 = !DILocation(line: 44, column: 3, scope: !73)
!84 = distinct !DISubprogram(name: "ex201StructFieldInt", scope: !8, file: !8, line: 53, type: !85, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !91)
!85 = !DISubroutineType(types: !86)
!86 = !{!13, !87}
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s201", file: !8, line: 49, size: 160, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !87, file: !8, line: 50, baseType: !13, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !87, file: !8, line: 51, baseType: !29, size: 128, offset: 32)
!91 = !{!92}
!92 = !DILocalVariable(name: "s", arg: 1, scope: !84, file: !8, line: 53, type: !87)
!93 = !DILocation(line: 53, column: 37, scope: !84)
!94 = !DILocation(line: 54, column: 12, scope: !84)
!95 = !{!96, !38, i64 0}
!96 = !{!"s201", !38, i64 0, !39, i64 4}
!97 = !DILocation(line: 54, column: 3, scope: !84)
!98 = distinct !DISubprogram(name: "ex202StructFieldStruct", scope: !8, file: !8, line: 63, type: !99, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !108)
!99 = !DISubroutineType(types: !100)
!100 = !{!13, !101}
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s202", file: !8, line: 57, size: 160, elements: !102)
!102 = !{!103, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !101, file: !8, line: 60, baseType: !104, size: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !8, line: 58, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !104, file: !8, line: 59, baseType: !13, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !101, file: !8, line: 61, baseType: !29, size: 128, offset: 32)
!108 = !{!109}
!109 = !DILocalVariable(name: "s", arg: 1, scope: !98, file: !8, line: 63, type: !101)
!110 = !DILocation(line: 63, column: 40, scope: !98)
!111 = !DILocation(line: 64, column: 18, scope: !98)
!112 = !{!113, !38, i64 0}
!113 = !{!"s202", !114, i64 0, !39, i64 4}
!114 = !{!"", !38, i64 0}
!115 = !DILocation(line: 64, column: 3, scope: !98)
!116 = distinct !DISubprogram(name: "ex203StructFieldArrayFixedLength", scope: !8, file: !8, line: 71, type: !117, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !126)
!117 = !DISubroutineType(types: !118)
!118 = !{!13, !119}
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s203", file: !8, line: 67, size: 256, elements: !120)
!120 = !{!121, !125}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !119, file: !8, line: 68, baseType: !122, size: 128)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 4)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !119, file: !8, line: 69, baseType: !29, size: 128, offset: 128)
!126 = !{!127}
!127 = !DILocalVariable(name: "s", arg: 1, scope: !116, file: !8, line: 71, type: !119)
!128 = !DILocation(line: 71, column: 50, scope: !116)
!129 = !DILocation(line: 72, column: 10, scope: !116)
!130 = !DILocation(line: 72, column: 19, scope: !116)
!131 = !DILocation(line: 72, column: 17, scope: !116)
!132 = !DILocation(line: 72, column: 3, scope: !116)
!133 = distinct !DISubprogram(name: "ex204StructFieldArrayVariableLength", scope: !8, file: !8, line: 79, type: !134, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !143)
!134 = !DISubroutineType(types: !135)
!135 = !{!13, !136}
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s204", file: !8, line: 75, size: 32, elements: !137)
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !136, file: !8, line: 76, baseType: !13, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !136, file: !8, line: 77, baseType: !140, offset: 32)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: -1)
!143 = !{!144}
!144 = !DILocalVariable(name: "s", arg: 1, scope: !133, file: !8, line: 79, type: !136)
!145 = !DILocation(line: 79, column: 53, scope: !133)
!146 = !DILocation(line: 80, column: 10, scope: !133)
!147 = !DILocation(line: 80, column: 19, scope: !133)
!148 = !DILocation(line: 80, column: 17, scope: !133)
!149 = !DILocation(line: 80, column: 3, scope: !133)
!150 = distinct !DISubprogram(name: "ex205StructFieldPointerSingleElementValue", scope: !8, file: !8, line: 87, type: !151, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !157)
!151 = !DISubroutineType(types: !152)
!152 = !{!13, !153}
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s205", file: !8, line: 83, size: 192, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !153, file: !8, line: 84, baseType: !12, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !153, file: !8, line: 85, baseType: !29, size: 128, offset: 64)
!157 = !{!158}
!158 = !DILocalVariable(name: "s", arg: 1, scope: !150, file: !8, line: 87, type: !153)
!159 = !DILocation(line: 87, column: 59, scope: !150)
!160 = !DILocation(line: 88, column: 13, scope: !150)
!161 = !{!162, !163, i64 0}
!162 = !{!"s205", !163, i64 0, !39, i64 8}
!163 = !{!"any pointer", !39, i64 0}
!164 = !DILocation(line: 88, column: 10, scope: !150)
!165 = !DILocation(line: 88, column: 3, scope: !150)
!166 = distinct !DISubprogram(name: "ex206StructFieldPointerSingleElementInstances", scope: !8, file: !8, line: 96, type: !167, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !174)
!167 = !DISubroutineType(types: !168)
!168 = !{!13, !169}
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s206", file: !8, line: 91, size: 256, elements: !170)
!170 = !{!171, !172, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !169, file: !8, line: 92, baseType: !12, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !169, file: !8, line: 93, baseType: !12, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !169, file: !8, line: 94, baseType: !29, size: 128, offset: 128)
!174 = !{!175}
!175 = !DILocalVariable(name: "s", arg: 1, scope: !166, file: !8, line: 96, type: !169)
!176 = !DILocation(line: 96, column: 63, scope: !166)
!177 = !DILocation(line: 97, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !166, file: !8, line: 97, column: 7)
!179 = !{!180, !163, i64 0}
!180 = !{!"s206", !163, i64 0, !163, i64 8, !39, i64 16}
!181 = !DILocation(line: 97, column: 11, scope: !178)
!182 = !DILocation(line: 97, column: 19, scope: !178)
!183 = !DILocation(line: 97, column: 24, scope: !178)
!184 = !{!180, !163, i64 8}
!185 = !DILocation(line: 97, column: 26, scope: !178)
!186 = !DILocation(line: 97, column: 7, scope: !166)
!187 = !DILocation(line: 0, scope: !188)
!188 = distinct !DILexicalBlock(scope: !178, file: !8, line: 100, column: 14)
!189 = !DILocation(line: 0, scope: !178)
!190 = !DILocation(line: 106, column: 1, scope: !166)
!191 = distinct !DISubprogram(name: "ex207StructFieldPointerMultipleElementValues", scope: !8, file: !8, line: 112, type: !192, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !198)
!192 = !DISubroutineType(types: !193)
!193 = !{!13, !194}
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s207", file: !8, line: 108, size: 192, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !194, file: !8, line: 109, baseType: !12, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !194, file: !8, line: 110, baseType: !29, size: 128, offset: 64)
!198 = !{!199}
!199 = !DILocalVariable(name: "s", arg: 1, scope: !191, file: !8, line: 112, type: !194)
!200 = !DILocation(line: 112, column: 62, scope: !191)
!201 = !DILocation(line: 114, column: 12, scope: !191)
!202 = !{!203, !163, i64 0}
!203 = !{!"s207", !163, i64 0, !39, i64 8}
!204 = !DILocation(line: 114, column: 10, scope: !191)
!205 = !DILocation(line: 114, column: 19, scope: !191)
!206 = !DILocation(line: 114, column: 17, scope: !191)
!207 = !DILocation(line: 114, column: 3, scope: !191)
!208 = distinct !DISubprogram(name: "ex208StructFieldPointerFunction", scope: !8, file: !8, line: 121, type: !209, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !215)
!209 = !DISubroutineType(types: !210)
!210 = !{!13, !211}
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s208", file: !8, line: 117, size: 192, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !211, file: !8, line: 118, baseType: !76, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !211, file: !8, line: 119, baseType: !29, size: 128, offset: 64)
!215 = !{!216}
!216 = !DILocalVariable(name: "s", arg: 1, scope: !208, file: !8, line: 121, type: !211)
!217 = !DILocation(line: 121, column: 49, scope: !208)
!218 = !DILocation(line: 123, column: 12, scope: !208)
!219 = !{!220, !163, i64 0}
!220 = !{!"s208", !163, i64 0, !39, i64 8}
!221 = !DILocation(line: 123, column: 10, scope: !208)
!222 = !DILocation(line: 123, column: 3, scope: !208)
!223 = distinct !DISubprogram(name: "ex301ArrayElemInt", scope: !8, file: !8, line: 132, type: !224, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !230)
!224 = !DISubroutineType(types: !225)
!225 = !{!13, !226}
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s301", file: !8, line: 128, size: 256, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !226, file: !8, line: 129, baseType: !122, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !226, file: !8, line: 130, baseType: !29, size: 128, offset: 128)
!230 = !{!231}
!231 = !DILocalVariable(name: "s", arg: 1, scope: !223, file: !8, line: 132, type: !226)
!232 = !DILocation(line: 132, column: 35, scope: !223)
!233 = !DILocation(line: 133, column: 10, scope: !223)
!234 = !DILocation(line: 133, column: 19, scope: !223)
!235 = !DILocation(line: 133, column: 17, scope: !223)
!236 = !DILocation(line: 133, column: 3, scope: !223)
!237 = distinct !DISubprogram(name: "ex302ArrayElemStruct", scope: !8, file: !8, line: 142, type: !238, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !248)
!238 = !DISubroutineType(types: !239)
!239 = !{!13, !240}
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s302", file: !8, line: 136, size: 256, elements: !241)
!241 = !{!242, !247}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !240, file: !8, line: 139, baseType: !243, size: 128)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 128, elements: !123)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !240, file: !8, line: 137, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !244, file: !8, line: 138, baseType: !13, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !240, file: !8, line: 140, baseType: !29, size: 128, offset: 128)
!248 = !{!249}
!249 = !DILocalVariable(name: "s", arg: 1, scope: !237, file: !8, line: 142, type: !240)
!250 = !DILocation(line: 142, column: 38, scope: !237)
!251 = !DILocation(line: 143, column: 21, scope: !237)
!252 = !{!114, !38, i64 0}
!253 = !DILocation(line: 143, column: 36, scope: !237)
!254 = !DILocation(line: 143, column: 23, scope: !237)
!255 = !DILocation(line: 143, column: 3, scope: !237)
!256 = distinct !DISubprogram(name: "ex303ArrayElemArrayFixedLength", scope: !8, file: !8, line: 149, type: !257, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !264)
!257 = !DISubroutineType(types: !258)
!258 = !{!13, !259}
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s303", file: !8, line: 146, size: 512, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !259, file: !8, line: 147, baseType: !262, size: 512)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !263)
!263 = !{!124, !124}
!264 = !{!265}
!265 = !DILocalVariable(name: "s", arg: 1, scope: !256, file: !8, line: 149, type: !259)
!266 = !DILocation(line: 149, column: 48, scope: !256)
!267 = !DILocation(line: 150, column: 10, scope: !256)
!268 = !DILocation(line: 150, column: 22, scope: !256)
!269 = !DILocation(line: 150, column: 20, scope: !256)
!270 = !DILocation(line: 150, column: 3, scope: !256)
!271 = distinct !DISubprogram(name: "ex305ArrayElemPointerSingleElementValue", scope: !8, file: !8, line: 158, type: !272, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !278)
!272 = !DISubroutineType(types: !273)
!273 = !{!13, !274}
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s305", file: !8, line: 155, size: 256, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !274, file: !8, line: 156, baseType: !277, size: 256)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !123)
!278 = !{!279}
!279 = !DILocalVariable(name: "s", arg: 1, scope: !271, file: !8, line: 158, type: !274)
!280 = !DILocation(line: 158, column: 57, scope: !271)
!281 = !DILocation(line: 159, column: 11, scope: !271)
!282 = !{!163, !163, i64 0}
!283 = !DILocation(line: 159, column: 10, scope: !271)
!284 = !DILocation(line: 159, column: 3, scope: !271)
!285 = distinct !DISubprogram(name: "ex306ArrayElemPointerSingleElementInstances", scope: !8, file: !8, line: 165, type: !286, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !291)
!286 = !DISubroutineType(types: !287)
!287 = !{!13, !288}
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s306", file: !8, line: 162, size: 256, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !288, file: !8, line: 163, baseType: !277, size: 256)
!291 = !{!292}
!292 = !DILocalVariable(name: "s", arg: 1, scope: !285, file: !8, line: 165, type: !288)
!293 = !DILocation(line: 165, column: 61, scope: !285)
!294 = !DILocation(line: 166, column: 7, scope: !295)
!295 = distinct !DILexicalBlock(scope: !285, file: !8, line: 166, column: 7)
!296 = !DILocation(line: 166, column: 14, scope: !295)
!297 = !DILocation(line: 166, column: 22, scope: !295)
!298 = !DILocation(line: 166, column: 25, scope: !295)
!299 = !DILocation(line: 166, column: 32, scope: !295)
!300 = !DILocation(line: 166, column: 7, scope: !285)
!301 = !DILocation(line: 0, scope: !302)
!302 = distinct !DILexicalBlock(scope: !295, file: !8, line: 169, column: 14)
!303 = !DILocation(line: 0, scope: !295)
!304 = !DILocation(line: 175, column: 1, scope: !285)
!305 = distinct !DISubprogram(name: "ex307ArrayElemPointerMultipleElementValues", scope: !8, file: !8, line: 180, type: !306, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !311)
!306 = !DISubroutineType(types: !307)
!307 = !{!13, !308}
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s307", file: !8, line: 177, size: 256, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !308, file: !8, line: 178, baseType: !277, size: 256)
!311 = !{!312}
!312 = !DILocalVariable(name: "s", arg: 1, scope: !305, file: !8, line: 180, type: !308)
!313 = !DILocation(line: 180, column: 60, scope: !305)
!314 = !DILocation(line: 182, column: 10, scope: !305)
!315 = !DILocation(line: 182, column: 22, scope: !305)
!316 = !DILocation(line: 182, column: 20, scope: !305)
!317 = !DILocation(line: 182, column: 3, scope: !305)
!318 = distinct !DISubprogram(name: "ex308ArrayElemPointerFunction", scope: !8, file: !8, line: 188, type: !319, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !325)
!319 = !DISubroutineType(types: !320)
!320 = !{!13, !321}
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s308", file: !8, line: 185, size: 256, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !321, file: !8, line: 186, baseType: !324, size: 256)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !123)
!325 = !{!326}
!326 = !DILocalVariable(name: "s", arg: 1, scope: !318, file: !8, line: 188, type: !321)
!327 = !DILocation(line: 188, column: 47, scope: !318)
!328 = !DILocation(line: 190, column: 10, scope: !318)
!329 = !DILocation(line: 190, column: 21, scope: !318)
!330 = !DILocation(line: 190, column: 19, scope: !318)
!331 = !DILocation(line: 190, column: 3, scope: !318)
!332 = distinct !DISubprogram(name: "ex401PointerToInt", scope: !8, file: !8, line: 195, type: !43, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !333)
!333 = !{!334}
!334 = !DILocalVariable(name: "a", arg: 1, scope: !332, file: !8, line: 195, type: !12)
!335 = !DILocation(line: 0, scope: !332)
!336 = !DILocation(line: 196, column: 10, scope: !332)
!337 = !DILocation(line: 196, column: 3, scope: !332)
!338 = distinct !DISubprogram(name: "ex402PointerToStruct", scope: !8, file: !8, line: 202, type: !339, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !345)
!339 = !DISubroutineType(types: !340)
!340 = !{!13, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s402", file: !8, line: 199, size: 32, elements: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !342, file: !8, line: 200, baseType: !13, size: 32)
!345 = !{!346}
!346 = !DILocalVariable(name: "s", arg: 1, scope: !338, file: !8, line: 202, type: !341)
!347 = !DILocation(line: 0, scope: !338)
!348 = !DILocation(line: 203, column: 13, scope: !338)
!349 = !{!350, !38, i64 0}
!350 = !{!"s402", !38, i64 0}
!351 = !DILocation(line: 203, column: 3, scope: !338)
!352 = distinct !DISubprogram(name: "ex405PointerToPointerSingleElementValue", scope: !8, file: !8, line: 208, type: !353, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !356)
!353 = !DISubroutineType(types: !354)
!354 = !{!13, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!356 = !{!357}
!357 = !DILocalVariable(name: "a", arg: 1, scope: !352, file: !8, line: 208, type: !355)
!358 = !DILocation(line: 0, scope: !352)
!359 = !DILocation(line: 209, column: 11, scope: !352)
!360 = !DILocation(line: 209, column: 10, scope: !352)
!361 = !DILocation(line: 209, column: 3, scope: !352)
!362 = distinct !DISubprogram(name: "ex406PointerToPointerSingleElementInstances", scope: !8, file: !8, line: 212, type: !363, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{!13, !355, !355}
!365 = !{!366, !367}
!366 = !DILocalVariable(name: "a", arg: 1, scope: !362, file: !8, line: 212, type: !355)
!367 = !DILocalVariable(name: "b", arg: 2, scope: !362, file: !8, line: 212, type: !355)
!368 = !DILocation(line: 0, scope: !362)
!369 = !DILocation(line: 213, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !362, file: !8, line: 213, column: 7)
!371 = !DILocation(line: 213, column: 10, scope: !370)
!372 = !DILocation(line: 213, column: 18, scope: !370)
!373 = !DILocation(line: 213, column: 21, scope: !370)
!374 = !DILocation(line: 213, column: 24, scope: !370)
!375 = !DILocation(line: 213, column: 7, scope: !362)
!376 = !DILocation(line: 0, scope: !377)
!377 = distinct !DILexicalBlock(scope: !370, file: !8, line: 216, column: 14)
!378 = !DILocation(line: 0, scope: !370)
!379 = !DILocation(line: 222, column: 1, scope: !362)
!380 = distinct !DISubprogram(name: "ex407PointerToPointerMultipleElementValues", scope: !8, file: !8, line: 224, type: !353, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !381)
!381 = !{!382}
!382 = !DILocalVariable(name: "a", arg: 1, scope: !380, file: !8, line: 224, type: !355)
!383 = !DILocation(line: 0, scope: !380)
!384 = !DILocation(line: 226, column: 11, scope: !380)
!385 = !DILocation(line: 226, column: 10, scope: !380)
!386 = !DILocation(line: 226, column: 20, scope: !380)
!387 = !DILocation(line: 226, column: 18, scope: !380)
!388 = !DILocation(line: 226, column: 3, scope: !380)
!389 = distinct !DISubprogram(name: "ex408PointerToPointerFunction", scope: !8, file: !8, line: 229, type: !390, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !393)
!390 = !DISubroutineType(types: !391)
!391 = !{!13, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!393 = !{!394}
!394 = !DILocalVariable(name: "a", arg: 1, scope: !389, file: !8, line: 229, type: !392)
!395 = !DILocation(line: 0, scope: !389)
!396 = !DILocation(line: 231, column: 11, scope: !389)
!397 = !DILocation(line: 231, column: 10, scope: !389)
!398 = !DILocation(line: 231, column: 3, scope: !389)
!399 = distinct !DISubprogram(name: "ex501StructWithArrayOfPointers", scope: !8, file: !8, line: 241, type: !400, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !408)
!400 = !DISubroutineType(types: !401)
!401 = !{!13, !402}
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s501", file: !8, line: 236, size: 256, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !402, file: !8, line: 239, baseType: !405, size: 256)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !8, line: 237, size: 256, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !405, file: !8, line: 238, baseType: !277, size: 256)
!408 = !{!409}
!409 = !DILocalVariable(name: "s", arg: 1, scope: !399, file: !8, line: 241, type: !402)
!410 = !DILocation(line: 241, column: 48, scope: !399)
!411 = !DILocation(line: 242, column: 11, scope: !399)
!412 = !DILocation(line: 242, column: 10, scope: !399)
!413 = !DILocation(line: 242, column: 3, scope: !399)
!414 = distinct !DISubprogram(name: "ex502ArrayOfStructsWithPointer", scope: !8, file: !8, line: 250, type: !415, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !424)
!415 = !DISubroutineType(types: !416)
!416 = !{!13, !417}
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s502", file: !8, line: 245, size: 256, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !417, file: !8, line: 248, baseType: !420, size: 256)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 256, elements: !123)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !417, file: !8, line: 246, size: 64, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !421, file: !8, line: 247, baseType: !12, size: 64)
!424 = !{!425}
!425 = !DILocalVariable(name: "s", arg: 1, scope: !414, file: !8, line: 250, type: !417)
!426 = !DILocation(line: 250, column: 48, scope: !414)
!427 = !DILocation(line: 251, column: 22, scope: !414)
!428 = !{!429, !163, i64 0}
!429 = !{!"", !163, i64 0}
!430 = !DILocation(line: 251, column: 10, scope: !414)
!431 = !DILocation(line: 251, column: 3, scope: !414)
!432 = distinct !DISubprogram(name: "ex503PointerArithmetic", scope: !8, file: !8, line: 256, type: !43, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !433)
!433 = !{!434}
!434 = !DILocalVariable(name: "a", arg: 1, scope: !432, file: !8, line: 256, type: !12)
!435 = !DILocation(line: 0, scope: !432)
!436 = !DILocation(line: 258, column: 14, scope: !432)
!437 = !DILocation(line: 258, column: 10, scope: !432)
!438 = !DILocation(line: 258, column: 3, scope: !432)
!439 = distinct !DISubprogram(name: "ex504PointerCast", scope: !8, file: !8, line: 261, type: !440, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!13, !11}
!442 = !{!443}
!443 = !DILocalVariable(name: "a", arg: 1, scope: !439, file: !8, line: 261, type: !11)
!444 = !DILocation(line: 0, scope: !439)
!445 = !DILocation(line: 262, column: 11, scope: !439)
!446 = !DILocation(line: 262, column: 10, scope: !439)
!447 = !DILocation(line: 262, column: 3, scope: !439)
!448 = distinct !DISubprogram(name: "ex505PointerFunction", scope: !8, file: !8, line: 265, type: !74, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !449)
!449 = !{!450, !451}
!450 = !DILocalVariable(name: "a", arg: 1, scope: !448, file: !8, line: 265, type: !76)
!451 = !DILocalVariable(name: "result", scope: !448, file: !8, line: 267, type: !13)
!452 = !DILocation(line: 0, scope: !448)
!453 = !DILocation(line: 267, column: 16, scope: !448)
!454 = !DILocation(line: 269, column: 3, scope: !448)
!455 = distinct !DISubprogram(name: "ex506ListLengthLimited", scope: !8, file: !8, line: 278, type: !456, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !463)
!456 = !DISubroutineType(types: !457)
!457 = !{!13, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s506", file: !8, line: 274, size: 128, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !459, file: !8, line: 275, baseType: !13, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !459, file: !8, line: 276, baseType: !458, size: 64, offset: 64)
!463 = !{!464, !465, !466}
!464 = !DILocalVariable(name: "s", arg: 1, scope: !455, file: !8, line: 278, type: !458)
!465 = !DILocalVariable(name: "sum", scope: !455, file: !8, line: 279, type: !13)
!466 = !DILocalVariable(name: "i", scope: !455, file: !8, line: 280, type: !13)
!467 = !DILocation(line: 0, scope: !455)
!468 = !DILocation(line: 281, column: 3, scope: !469)
!469 = distinct !DILexicalBlock(scope: !455, file: !8, line: 281, column: 3)
!470 = !DILocation(line: 282, column: 15, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !8, line: 281, column: 27)
!472 = distinct !DILexicalBlock(scope: !469, file: !8, line: 281, column: 3)
!473 = !{!474, !38, i64 0}
!474 = !{!"s506", !38, i64 0, !163, i64 8}
!475 = !DILocation(line: 282, column: 9, scope: !471)
!476 = !DILocation(line: 283, column: 13, scope: !477)
!477 = distinct !DILexicalBlock(scope: !471, file: !8, line: 283, column: 9)
!478 = !{!474, !163, i64 8}
!479 = !DILocation(line: 283, column: 10, scope: !477)
!480 = !DILocation(line: 283, column: 9, scope: !471)
!481 = !DILocation(line: 281, column: 23, scope: !472)
!482 = !DILocation(line: 281, column: 17, scope: !472)
!483 = distinct !{!483, !468, !484, !485, !486}
!484 = !DILocation(line: 286, column: 3, scope: !469)
!485 = !{!"llvm.loop.mustprogress"}
!486 = !{!"llvm.loop.unroll.disable"}
!487 = !DILocation(line: 0, scope: !469)
!488 = !DILocation(line: 287, column: 9, scope: !489)
!489 = distinct !DILexicalBlock(scope: !455, file: !8, line: 287, column: 7)
!490 = !DILocation(line: 290, column: 1, scope: !455)
