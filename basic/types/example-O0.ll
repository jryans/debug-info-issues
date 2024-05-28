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

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex101Int(i32 %a) #0 !dbg !15 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !18, metadata !DIExpression()), !dbg !19
  %0 = load i32, i32* %a.addr, align 4, !dbg !20
  ret i32 %0, !dbg !21
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex102Struct(%struct.s102* byval(%struct.s102) align 8 %s) #0 !dbg !22 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s102* %s, metadata !32, metadata !DIExpression()), !dbg !33
  %a = getelementptr inbounds %struct.s102, %struct.s102* %s, i32 0, i32 0, !dbg !34
  %0 = load i32, i32* %a, align 8, !dbg !34
  ret i32 %0, !dbg !35
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex105PointerSingleElementValue(i32* %a) #0 !dbg !36 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !39, metadata !DIExpression()), !dbg !40
  %0 = load i32*, i32** %a.addr, align 8, !dbg !41
  %1 = load i32, i32* %0, align 4, !dbg !42
  ret i32 %1, !dbg !43
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex106PointerSingleElementInstances(i32* %a, i32* %b) #0 !dbg !44 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !47, metadata !DIExpression()), !dbg !48
  store i32* %b, i32** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !49, metadata !DIExpression()), !dbg !50
  %0 = load i32*, i32** %a.addr, align 8, !dbg !51
  %cmp = icmp eq i32* %0, null, !dbg !53
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !54

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %b.addr, align 8, !dbg !55
  %cmp1 = icmp eq i32* %1, null, !dbg !56
  br i1 %cmp1, label %if.then, label %if.else, !dbg !57

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !58
  br label %return, !dbg !58

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32*, i32** %a.addr, align 8, !dbg !60
  %3 = load i32*, i32** %b.addr, align 8, !dbg !62
  %cmp2 = icmp ne i32* %2, %3, !dbg !63
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !64

if.then3:                                         ; preds = %if.else
  store i32 2, i32* %retval, align 4, !dbg !65
  br label %return, !dbg !65

if.else4:                                         ; preds = %if.else
  store i32 3, i32* %retval, align 4, !dbg !67
  br label %return, !dbg !67

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !69
  ret i32 %4, !dbg !69
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex107PointerMultipleElementValues(i32* %a) #0 !dbg !70 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !71, metadata !DIExpression()), !dbg !72
  %0 = load i32*, i32** %a.addr, align 8, !dbg !73
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !73
  %1 = load i32, i32* %arrayidx, align 4, !dbg !73
  %2 = load i32*, i32** %a.addr, align 8, !dbg !74
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !74
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !74
  %add = add nsw i32 %1, %3, !dbg !75
  ret i32 %add, !dbg !76
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex108PointerFunction(i32 (...)* %a) #0 !dbg !77 {
entry:
  %a.addr = alloca i32 (...)*, align 8
  store i32 (...)* %a, i32 (...)** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)** %a.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i32 (...)*, i32 (...)** %a.addr, align 8, !dbg !85
  %call = call i32 (...) %0(), !dbg !85
  ret i32 %call, !dbg !86
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex201StructFieldInt(%struct.s201* byval(%struct.s201) align 8 %s) #0 !dbg !87 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s201* %s, metadata !94, metadata !DIExpression()), !dbg !95
  %a = getelementptr inbounds %struct.s201, %struct.s201* %s, i32 0, i32 0, !dbg !96
  %0 = load i32, i32* %a, align 8, !dbg !96
  ret i32 %0, !dbg !97
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex202StructFieldStruct(%struct.s202* byval(%struct.s202) align 8 %s) #0 !dbg !98 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s202* %s, metadata !108, metadata !DIExpression()), !dbg !109
  %inner = getelementptr inbounds %struct.s202, %struct.s202* %s, i32 0, i32 0, !dbg !110
  %a = getelementptr inbounds %struct.anon, %struct.anon* %inner, i32 0, i32 0, !dbg !111
  %0 = load i32, i32* %a, align 8, !dbg !111
  ret i32 %0, !dbg !112
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex203StructFieldArrayFixedLength(%struct.s203* byval(%struct.s203) align 8 %s) #0 !dbg !113 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s203* %s, metadata !123, metadata !DIExpression()), !dbg !124
  %a = getelementptr inbounds %struct.s203, %struct.s203* %s, i32 0, i32 0, !dbg !125
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0, !dbg !126
  %0 = load i32, i32* %arrayidx, align 8, !dbg !126
  %a1 = getelementptr inbounds %struct.s203, %struct.s203* %s, i32 0, i32 0, !dbg !127
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %a1, i64 0, i64 3, !dbg !128
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !128
  %add = add nsw i32 %0, %1, !dbg !129
  ret i32 %add, !dbg !130
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex204StructFieldArrayVariableLength(%struct.s204* byval(%struct.s204) align 8 %s) #0 !dbg !131 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s204* %s, metadata !141, metadata !DIExpression()), !dbg !142
  %a = getelementptr inbounds %struct.s204, %struct.s204* %s, i32 0, i32 1, !dbg !143
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* %a, i64 0, i64 0, !dbg !144
  %0 = load i32, i32* %arrayidx, align 4, !dbg !144
  %a1 = getelementptr inbounds %struct.s204, %struct.s204* %s, i32 0, i32 1, !dbg !145
  %arrayidx2 = getelementptr inbounds [0 x i32], [0 x i32]* %a1, i64 0, i64 3, !dbg !146
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !146
  %add = add nsw i32 %0, %1, !dbg !147
  ret i32 %add, !dbg !148
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex205StructFieldPointerSingleElementValue(%struct.s205* byval(%struct.s205) align 8 %s) #0 !dbg !149 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s205* %s, metadata !156, metadata !DIExpression()), !dbg !157
  %a = getelementptr inbounds %struct.s205, %struct.s205* %s, i32 0, i32 0, !dbg !158
  %0 = load i32*, i32** %a, align 8, !dbg !158
  %1 = load i32, i32* %0, align 4, !dbg !159
  ret i32 %1, !dbg !160
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex206StructFieldPointerSingleElementInstances(%struct.s206* byval(%struct.s206) align 8 %s) #0 !dbg !161 {
entry:
  %retval = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.s206* %s, metadata !169, metadata !DIExpression()), !dbg !170
  %a = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !171
  %0 = load i32*, i32** %a, align 8, !dbg !171
  %cmp = icmp eq i32* %0, null, !dbg !173
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !174

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !175
  %1 = load i32*, i32** %b, align 8, !dbg !175
  %cmp1 = icmp eq i32* %1, null, !dbg !176
  br i1 %cmp1, label %if.then, label %if.else, !dbg !177

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !178
  br label %return, !dbg !178

if.else:                                          ; preds = %lor.lhs.false
  %a2 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !180
  %2 = load i32*, i32** %a2, align 8, !dbg !180
  %b3 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !182
  %3 = load i32*, i32** %b3, align 8, !dbg !182
  %cmp4 = icmp ne i32* %2, %3, !dbg !183
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !184

if.then5:                                         ; preds = %if.else
  store i32 2, i32* %retval, align 4, !dbg !185
  br label %return, !dbg !185

if.else6:                                         ; preds = %if.else
  store i32 3, i32* %retval, align 4, !dbg !187
  br label %return, !dbg !187

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !189
  ret i32 %4, !dbg !189
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex207StructFieldPointerMultipleElementValues(%struct.s207* byval(%struct.s207) align 8 %s) #0 !dbg !190 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s207* %s, metadata !197, metadata !DIExpression()), !dbg !198
  %a = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !199
  %0 = load i32*, i32** %a, align 8, !dbg !199
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !200
  %1 = load i32, i32* %arrayidx, align 4, !dbg !200
  %a1 = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !201
  %2 = load i32*, i32** %a1, align 8, !dbg !201
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !202
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !202
  %add = add nsw i32 %1, %3, !dbg !203
  ret i32 %add, !dbg !204
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex208StructFieldPointerFunction(%struct.s208* byval(%struct.s208) align 8 %s) #0 !dbg !205 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s208* %s, metadata !212, metadata !DIExpression()), !dbg !213
  %a = getelementptr inbounds %struct.s208, %struct.s208* %s, i32 0, i32 0, !dbg !214
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !214
  %call = call i32 (...) %0(), !dbg !215
  ret i32 %call, !dbg !216
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex301ArrayElemInt(%struct.s301* byval(%struct.s301) align 8 %s) #0 !dbg !217 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s301* %s, metadata !224, metadata !DIExpression()), !dbg !225
  %a = getelementptr inbounds %struct.s301, %struct.s301* %s, i32 0, i32 0, !dbg !226
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0, !dbg !227
  %0 = load i32, i32* %arrayidx, align 8, !dbg !227
  %a1 = getelementptr inbounds %struct.s301, %struct.s301* %s, i32 0, i32 0, !dbg !228
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %a1, i64 0, i64 3, !dbg !229
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !229
  %add = add nsw i32 %0, %1, !dbg !230
  ret i32 %add, !dbg !231
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex302ArrayElemStruct(%struct.s302* byval(%struct.s302) align 8 %s) #0 !dbg !232 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s302* %s, metadata !243, metadata !DIExpression()), !dbg !244
  %inner = getelementptr inbounds %struct.s302, %struct.s302* %s, i32 0, i32 0, !dbg !245
  %arrayidx = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* %inner, i64 0, i64 0, !dbg !246
  %a = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0, !dbg !247
  %0 = load i32, i32* %a, align 8, !dbg !247
  %inner1 = getelementptr inbounds %struct.s302, %struct.s302* %s, i32 0, i32 0, !dbg !248
  %arrayidx2 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* %inner1, i64 0, i64 3, !dbg !249
  %a3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx2, i32 0, i32 0, !dbg !250
  %1 = load i32, i32* %a3, align 4, !dbg !250
  %add = add nsw i32 %0, %1, !dbg !251
  ret i32 %add, !dbg !252
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex303ArrayElemArrayFixedLength(%struct.s303* byval(%struct.s303) align 8 %s) #0 !dbg !253 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s303* %s, metadata !261, metadata !DIExpression()), !dbg !262
  %a = getelementptr inbounds %struct.s303, %struct.s303* %s, i32 0, i32 0, !dbg !263
  %arrayidx = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %a, i64 0, i64 0, !dbg !264
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 0, !dbg !264
  %0 = load i32, i32* %arrayidx1, align 8, !dbg !264
  %a2 = getelementptr inbounds %struct.s303, %struct.s303* %s, i32 0, i32 0, !dbg !265
  %arrayidx3 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %a2, i64 0, i64 3, !dbg !266
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx3, i64 0, i64 3, !dbg !266
  %1 = load i32, i32* %arrayidx4, align 4, !dbg !266
  %add = add nsw i32 %0, %1, !dbg !267
  ret i32 %add, !dbg !268
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex305ArrayElemPointerSingleElementValue(%struct.s305* byval(%struct.s305) align 8 %s) #0 !dbg !269 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s305* %s, metadata !276, metadata !DIExpression()), !dbg !277
  %a = getelementptr inbounds %struct.s305, %struct.s305* %s, i32 0, i32 0, !dbg !278
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !279
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !279
  %1 = load i32, i32* %0, align 4, !dbg !280
  ret i32 %1, !dbg !281
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex306ArrayElemPointerSingleElementInstances(%struct.s306* byval(%struct.s306) align 8 %s) #0 !dbg !282 {
entry:
  %retval = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.s306* %s, metadata !288, metadata !DIExpression()), !dbg !289
  %a = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !290
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !292
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !292
  %cmp = icmp eq i32* %0, null, !dbg !293
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !294

lor.lhs.false:                                    ; preds = %entry
  %a1 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !295
  %arrayidx2 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a1, i64 0, i64 3, !dbg !296
  %1 = load i32*, i32** %arrayidx2, align 8, !dbg !296
  %cmp3 = icmp eq i32* %1, null, !dbg !297
  br i1 %cmp3, label %if.then, label %if.else, !dbg !298

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !299
  br label %return, !dbg !299

if.else:                                          ; preds = %lor.lhs.false
  %a4 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !301
  %arrayidx5 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a4, i64 0, i64 0, !dbg !303
  %2 = load i32*, i32** %arrayidx5, align 8, !dbg !303
  %a6 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !304
  %arrayidx7 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a6, i64 0, i64 3, !dbg !305
  %3 = load i32*, i32** %arrayidx7, align 8, !dbg !305
  %cmp8 = icmp ne i32* %2, %3, !dbg !306
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !307

if.then9:                                         ; preds = %if.else
  store i32 2, i32* %retval, align 4, !dbg !308
  br label %return, !dbg !308

if.else10:                                        ; preds = %if.else
  store i32 3, i32* %retval, align 4, !dbg !310
  br label %return, !dbg !310

return:                                           ; preds = %if.else10, %if.then9, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !312
  ret i32 %4, !dbg !312
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex307ArrayElemPointerMultipleElementValues(%struct.s307* byval(%struct.s307) align 8 %s) #0 !dbg !313 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s307* %s, metadata !319, metadata !DIExpression()), !dbg !320
  %a = getelementptr inbounds %struct.s307, %struct.s307* %s, i32 0, i32 0, !dbg !321
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !322
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !322
  %arrayidx1 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !322
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !322
  %a2 = getelementptr inbounds %struct.s307, %struct.s307* %s, i32 0, i32 0, !dbg !323
  %arrayidx3 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a2, i64 0, i64 0, !dbg !324
  %2 = load i32*, i32** %arrayidx3, align 8, !dbg !324
  %arrayidx4 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !324
  %3 = load i32, i32* %arrayidx4, align 4, !dbg !324
  %add = add nsw i32 %1, %3, !dbg !325
  ret i32 %add, !dbg !326
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex308ArrayElemPointerFunction(%struct.s308* byval(%struct.s308) align 8 %s) #0 !dbg !327 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s308* %s, metadata !334, metadata !DIExpression()), !dbg !335
  %a = getelementptr inbounds %struct.s308, %struct.s308* %s, i32 0, i32 0, !dbg !336
  %arrayidx = getelementptr inbounds [4 x i32 (...)*], [4 x i32 (...)*]* %a, i64 0, i64 0, !dbg !337
  %0 = load i32 (...)*, i32 (...)** %arrayidx, align 8, !dbg !337
  %call = call i32 (...) %0(), !dbg !337
  %a1 = getelementptr inbounds %struct.s308, %struct.s308* %s, i32 0, i32 0, !dbg !338
  %arrayidx2 = getelementptr inbounds [4 x i32 (...)*], [4 x i32 (...)*]* %a1, i64 0, i64 3, !dbg !339
  %1 = load i32 (...)*, i32 (...)** %arrayidx2, align 8, !dbg !339
  %call3 = call i32 (...) %1(), !dbg !339
  %add = add nsw i32 %call, %call3, !dbg !340
  ret i32 %add, !dbg !341
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex401PointerToInt(i32* %a) #0 !dbg !342 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !343, metadata !DIExpression()), !dbg !344
  %0 = load i32*, i32** %a.addr, align 8, !dbg !345
  %1 = load i32, i32* %0, align 4, !dbg !346
  ret i32 %1, !dbg !347
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex402PointerToStruct(%struct.s402* %s) #0 !dbg !348 {
entry:
  %s.addr = alloca %struct.s402*, align 8
  store %struct.s402* %s, %struct.s402** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s402** %s.addr, metadata !355, metadata !DIExpression()), !dbg !356
  %0 = load %struct.s402*, %struct.s402** %s.addr, align 8, !dbg !357
  %a = getelementptr inbounds %struct.s402, %struct.s402* %0, i32 0, i32 0, !dbg !358
  %1 = load i32, i32* %a, align 4, !dbg !358
  ret i32 %1, !dbg !359
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex405PointerToPointerSingleElementValue(i32** %a) #0 !dbg !360 {
entry:
  %a.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !366
  %1 = load i32*, i32** %0, align 8, !dbg !367
  %2 = load i32, i32* %1, align 4, !dbg !368
  ret i32 %2, !dbg !369
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex406PointerToPointerSingleElementInstances(i32** %a, i32** %b) #0 !dbg !370 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !373, metadata !DIExpression()), !dbg !374
  store i32** %b, i32*** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !377
  %1 = load i32*, i32** %0, align 8, !dbg !379
  %cmp = icmp eq i32* %1, null, !dbg !380
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !381

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32**, i32*** %b.addr, align 8, !dbg !382
  %3 = load i32*, i32** %2, align 8, !dbg !383
  %cmp1 = icmp eq i32* %3, null, !dbg !384
  br i1 %cmp1, label %if.then, label %if.else, !dbg !385

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !386
  br label %return, !dbg !386

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32**, i32*** %a.addr, align 8, !dbg !388
  %5 = load i32*, i32** %4, align 8, !dbg !390
  %6 = load i32**, i32*** %b.addr, align 8, !dbg !391
  %7 = load i32*, i32** %6, align 8, !dbg !392
  %cmp2 = icmp ne i32* %5, %7, !dbg !393
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !394

if.then3:                                         ; preds = %if.else
  store i32 2, i32* %retval, align 4, !dbg !395
  br label %return, !dbg !395

if.else4:                                         ; preds = %if.else
  store i32 3, i32* %retval, align 4, !dbg !397
  br label %return, !dbg !397

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !399
  ret i32 %8, !dbg !399
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex407PointerToPointerMultipleElementValues(i32** %a) #0 !dbg !400 {
entry:
  %a.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !403
  %1 = load i32*, i32** %0, align 8, !dbg !404
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0, !dbg !405
  %2 = load i32, i32* %arrayidx, align 4, !dbg !405
  %3 = load i32**, i32*** %a.addr, align 8, !dbg !406
  %4 = load i32*, i32** %3, align 8, !dbg !407
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 3, !dbg !408
  %5 = load i32, i32* %arrayidx1, align 4, !dbg !408
  %add = add nsw i32 %2, %5, !dbg !409
  ret i32 %add, !dbg !410
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex408PointerToPointerFunction(i32 (...)** %a) #0 !dbg !411 {
entry:
  %a.addr = alloca i32 (...)**, align 8
  store i32 (...)** %a, i32 (...)*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)*** %a.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load i32 (...)**, i32 (...)*** %a.addr, align 8, !dbg !417
  %1 = load i32 (...)*, i32 (...)** %0, align 8, !dbg !418
  %call = call i32 (...) %1(), !dbg !419
  ret i32 %call, !dbg !420
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex501StructWithArrayOfPointers(%struct.s501* byval(%struct.s501) align 8 %s) #0 !dbg !421 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s501* %s, metadata !430, metadata !DIExpression()), !dbg !431
  %inner = getelementptr inbounds %struct.s501, %struct.s501* %s, i32 0, i32 0, !dbg !432
  %a = getelementptr inbounds %struct.anon.1, %struct.anon.1* %inner, i32 0, i32 0, !dbg !433
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !434
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !434
  %1 = load i32, i32* %0, align 4, !dbg !435
  ret i32 %1, !dbg !436
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex502ArrayOfStructsWithPointer(%struct.s502* byval(%struct.s502) align 8 %s) #0 !dbg !437 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s502* %s, metadata !447, metadata !DIExpression()), !dbg !448
  %inner = getelementptr inbounds %struct.s502, %struct.s502* %s, i32 0, i32 0, !dbg !449
  %arrayidx = getelementptr inbounds [4 x %struct.anon.2], [4 x %struct.anon.2]* %inner, i64 0, i64 0, !dbg !450
  %a = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx, i32 0, i32 0, !dbg !451
  %0 = load i32*, i32** %a, align 8, !dbg !451
  %1 = load i32, i32* %0, align 4, !dbg !452
  ret i32 %1, !dbg !453
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex503PointerArithmetic(i32* %a) #0 !dbg !454 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load i32*, i32** %a.addr, align 8, !dbg !457
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 3, !dbg !458
  %1 = load i32, i32* %add.ptr, align 4, !dbg !459
  ret i32 %1, !dbg !460
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex504PointerCast(i8* %a) #0 !dbg !461 {
entry:
  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load i8*, i8** %a.addr, align 8, !dbg !466
  %1 = bitcast i8* %0 to i32*, !dbg !467
  %2 = load i32, i32* %1, align 4, !dbg !468
  ret i32 %2, !dbg !469
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/types")
!9 = !{}
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!15 = distinct !DISubprogram(name: "ex101Int", scope: !8, file: !8, line: 7, type: !16, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!16 = !DISubroutineType(types: !17)
!17 = !{!13, !13}
!18 = !DILocalVariable(name: "a", arg: 1, scope: !15, file: !8, line: 7, type: !13)
!19 = !DILocation(line: 7, column: 18, scope: !15)
!20 = !DILocation(line: 8, column: 10, scope: !15)
!21 = !DILocation(line: 8, column: 3, scope: !15)
!22 = distinct !DISubprogram(name: "ex102Struct", scope: !8, file: !8, line: 15, type: !23, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!23 = !DISubroutineType(types: !24)
!24 = !{!13, !25}
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s102", file: !8, line: 11, size: 160, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !25, file: !8, line: 12, baseType: !13, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !25, file: !8, line: 13, baseType: !29, size: 128, offset: 32)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !30)
!30 = !{!31, !31}
!31 = !DISubrange(count: 2)
!32 = !DILocalVariable(name: "s", arg: 1, scope: !22, file: !8, line: 15, type: !25)
!33 = !DILocation(line: 15, column: 29, scope: !22)
!34 = !DILocation(line: 16, column: 12, scope: !22)
!35 = !DILocation(line: 16, column: 3, scope: !22)
!36 = distinct !DISubprogram(name: "ex105PointerSingleElementValue", scope: !8, file: !8, line: 21, type: !37, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!37 = !DISubroutineType(types: !38)
!38 = !{!13, !12}
!39 = !DILocalVariable(name: "a", arg: 1, scope: !36, file: !8, line: 21, type: !12)
!40 = !DILocation(line: 21, column: 41, scope: !36)
!41 = !DILocation(line: 22, column: 11, scope: !36)
!42 = !DILocation(line: 22, column: 10, scope: !36)
!43 = !DILocation(line: 22, column: 3, scope: !36)
!44 = distinct !DISubprogram(name: "ex106PointerSingleElementInstances", scope: !8, file: !8, line: 25, type: !45, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!45 = !DISubroutineType(types: !46)
!46 = !{!13, !12, !12}
!47 = !DILocalVariable(name: "a", arg: 1, scope: !44, file: !8, line: 25, type: !12)
!48 = !DILocation(line: 25, column: 45, scope: !44)
!49 = !DILocalVariable(name: "b", arg: 2, scope: !44, file: !8, line: 25, type: !12)
!50 = !DILocation(line: 25, column: 53, scope: !44)
!51 = !DILocation(line: 26, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !44, file: !8, line: 26, column: 7)
!53 = !DILocation(line: 26, column: 9, scope: !52)
!54 = !DILocation(line: 26, column: 17, scope: !52)
!55 = !DILocation(line: 26, column: 20, scope: !52)
!56 = !DILocation(line: 26, column: 22, scope: !52)
!57 = !DILocation(line: 26, column: 7, scope: !44)
!58 = !DILocation(line: 28, column: 5, scope: !59)
!59 = distinct !DILexicalBlock(scope: !52, file: !8, line: 26, column: 31)
!60 = !DILocation(line: 29, column: 14, scope: !61)
!61 = distinct !DILexicalBlock(scope: !52, file: !8, line: 29, column: 14)
!62 = !DILocation(line: 29, column: 19, scope: !61)
!63 = !DILocation(line: 29, column: 16, scope: !61)
!64 = !DILocation(line: 29, column: 14, scope: !52)
!65 = !DILocation(line: 30, column: 5, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !8, line: 29, column: 22)
!67 = !DILocation(line: 33, column: 5, scope: !68)
!68 = distinct !DILexicalBlock(scope: !61, file: !8, line: 31, column: 10)
!69 = !DILocation(line: 35, column: 1, scope: !44)
!70 = distinct !DISubprogram(name: "ex107PointerMultipleElementValues", scope: !8, file: !8, line: 37, type: !37, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!71 = !DILocalVariable(name: "a", arg: 1, scope: !70, file: !8, line: 37, type: !12)
!72 = !DILocation(line: 37, column: 44, scope: !70)
!73 = !DILocation(line: 39, column: 10, scope: !70)
!74 = !DILocation(line: 39, column: 17, scope: !70)
!75 = !DILocation(line: 39, column: 15, scope: !70)
!76 = !DILocation(line: 39, column: 3, scope: !70)
!77 = distinct !DISubprogram(name: "ex108PointerFunction", scope: !8, file: !8, line: 42, type: !78, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!78 = !DISubroutineType(types: !79)
!79 = !{!13, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!13, null}
!83 = !DILocalVariable(name: "a", arg: 1, scope: !77, file: !8, line: 42, type: !80)
!84 = !DILocation(line: 42, column: 32, scope: !77)
!85 = !DILocation(line: 44, column: 10, scope: !77)
!86 = !DILocation(line: 44, column: 3, scope: !77)
!87 = distinct !DISubprogram(name: "ex201StructFieldInt", scope: !8, file: !8, line: 53, type: !88, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!88 = !DISubroutineType(types: !89)
!89 = !{!13, !90}
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s201", file: !8, line: 49, size: 160, elements: !91)
!91 = !{!92, !93}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !90, file: !8, line: 50, baseType: !13, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !90, file: !8, line: 51, baseType: !29, size: 128, offset: 32)
!94 = !DILocalVariable(name: "s", arg: 1, scope: !87, file: !8, line: 53, type: !90)
!95 = !DILocation(line: 53, column: 37, scope: !87)
!96 = !DILocation(line: 54, column: 12, scope: !87)
!97 = !DILocation(line: 54, column: 3, scope: !87)
!98 = distinct !DISubprogram(name: "ex202StructFieldStruct", scope: !8, file: !8, line: 63, type: !99, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!99 = !DISubroutineType(types: !100)
!100 = !{!13, !101}
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s202", file: !8, line: 57, size: 160, elements: !102)
!102 = !{!103, !107}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !101, file: !8, line: 60, baseType: !104, size: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !8, line: 58, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !104, file: !8, line: 59, baseType: !13, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !101, file: !8, line: 61, baseType: !29, size: 128, offset: 32)
!108 = !DILocalVariable(name: "s", arg: 1, scope: !98, file: !8, line: 63, type: !101)
!109 = !DILocation(line: 63, column: 40, scope: !98)
!110 = !DILocation(line: 64, column: 12, scope: !98)
!111 = !DILocation(line: 64, column: 18, scope: !98)
!112 = !DILocation(line: 64, column: 3, scope: !98)
!113 = distinct !DISubprogram(name: "ex203StructFieldArrayFixedLength", scope: !8, file: !8, line: 71, type: !114, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!114 = !DISubroutineType(types: !115)
!115 = !{!13, !116}
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s203", file: !8, line: 67, size: 256, elements: !117)
!117 = !{!118, !122}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !116, file: !8, line: 68, baseType: !119, size: 128)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 4)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !116, file: !8, line: 69, baseType: !29, size: 128, offset: 128)
!123 = !DILocalVariable(name: "s", arg: 1, scope: !113, file: !8, line: 71, type: !116)
!124 = !DILocation(line: 71, column: 50, scope: !113)
!125 = !DILocation(line: 72, column: 12, scope: !113)
!126 = !DILocation(line: 72, column: 10, scope: !113)
!127 = !DILocation(line: 72, column: 21, scope: !113)
!128 = !DILocation(line: 72, column: 19, scope: !113)
!129 = !DILocation(line: 72, column: 17, scope: !113)
!130 = !DILocation(line: 72, column: 3, scope: !113)
!131 = distinct !DISubprogram(name: "ex204StructFieldArrayVariableLength", scope: !8, file: !8, line: 79, type: !132, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!132 = !DISubroutineType(types: !133)
!133 = !{!13, !134}
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s204", file: !8, line: 75, size: 32, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !134, file: !8, line: 76, baseType: !13, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !134, file: !8, line: 77, baseType: !138, offset: 32)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: -1)
!141 = !DILocalVariable(name: "s", arg: 1, scope: !131, file: !8, line: 79, type: !134)
!142 = !DILocation(line: 79, column: 53, scope: !131)
!143 = !DILocation(line: 80, column: 12, scope: !131)
!144 = !DILocation(line: 80, column: 10, scope: !131)
!145 = !DILocation(line: 80, column: 21, scope: !131)
!146 = !DILocation(line: 80, column: 19, scope: !131)
!147 = !DILocation(line: 80, column: 17, scope: !131)
!148 = !DILocation(line: 80, column: 3, scope: !131)
!149 = distinct !DISubprogram(name: "ex205StructFieldPointerSingleElementValue", scope: !8, file: !8, line: 87, type: !150, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!150 = !DISubroutineType(types: !151)
!151 = !{!13, !152}
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s205", file: !8, line: 83, size: 192, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !152, file: !8, line: 84, baseType: !12, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !152, file: !8, line: 85, baseType: !29, size: 128, offset: 64)
!156 = !DILocalVariable(name: "s", arg: 1, scope: !149, file: !8, line: 87, type: !152)
!157 = !DILocation(line: 87, column: 59, scope: !149)
!158 = !DILocation(line: 88, column: 13, scope: !149)
!159 = !DILocation(line: 88, column: 10, scope: !149)
!160 = !DILocation(line: 88, column: 3, scope: !149)
!161 = distinct !DISubprogram(name: "ex206StructFieldPointerSingleElementInstances", scope: !8, file: !8, line: 96, type: !162, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!162 = !DISubroutineType(types: !163)
!163 = !{!13, !164}
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s206", file: !8, line: 91, size: 256, elements: !165)
!165 = !{!166, !167, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !164, file: !8, line: 92, baseType: !12, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !164, file: !8, line: 93, baseType: !12, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !164, file: !8, line: 94, baseType: !29, size: 128, offset: 128)
!169 = !DILocalVariable(name: "s", arg: 1, scope: !161, file: !8, line: 96, type: !164)
!170 = !DILocation(line: 96, column: 63, scope: !161)
!171 = !DILocation(line: 97, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !161, file: !8, line: 97, column: 7)
!173 = !DILocation(line: 97, column: 11, scope: !172)
!174 = !DILocation(line: 97, column: 19, scope: !172)
!175 = !DILocation(line: 97, column: 24, scope: !172)
!176 = !DILocation(line: 97, column: 26, scope: !172)
!177 = !DILocation(line: 97, column: 7, scope: !161)
!178 = !DILocation(line: 99, column: 5, scope: !179)
!179 = distinct !DILexicalBlock(scope: !172, file: !8, line: 97, column: 35)
!180 = !DILocation(line: 100, column: 16, scope: !181)
!181 = distinct !DILexicalBlock(scope: !172, file: !8, line: 100, column: 14)
!182 = !DILocation(line: 100, column: 23, scope: !181)
!183 = !DILocation(line: 100, column: 18, scope: !181)
!184 = !DILocation(line: 100, column: 14, scope: !172)
!185 = !DILocation(line: 101, column: 5, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !8, line: 100, column: 26)
!187 = !DILocation(line: 104, column: 5, scope: !188)
!188 = distinct !DILexicalBlock(scope: !181, file: !8, line: 102, column: 10)
!189 = !DILocation(line: 106, column: 1, scope: !161)
!190 = distinct !DISubprogram(name: "ex207StructFieldPointerMultipleElementValues", scope: !8, file: !8, line: 112, type: !191, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!191 = !DISubroutineType(types: !192)
!192 = !{!13, !193}
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s207", file: !8, line: 108, size: 192, elements: !194)
!194 = !{!195, !196}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !193, file: !8, line: 109, baseType: !12, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !193, file: !8, line: 110, baseType: !29, size: 128, offset: 64)
!197 = !DILocalVariable(name: "s", arg: 1, scope: !190, file: !8, line: 112, type: !193)
!198 = !DILocation(line: 112, column: 62, scope: !190)
!199 = !DILocation(line: 114, column: 12, scope: !190)
!200 = !DILocation(line: 114, column: 10, scope: !190)
!201 = !DILocation(line: 114, column: 21, scope: !190)
!202 = !DILocation(line: 114, column: 19, scope: !190)
!203 = !DILocation(line: 114, column: 17, scope: !190)
!204 = !DILocation(line: 114, column: 3, scope: !190)
!205 = distinct !DISubprogram(name: "ex208StructFieldPointerFunction", scope: !8, file: !8, line: 121, type: !206, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!206 = !DISubroutineType(types: !207)
!207 = !{!13, !208}
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s208", file: !8, line: 117, size: 192, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !208, file: !8, line: 118, baseType: !80, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !208, file: !8, line: 119, baseType: !29, size: 128, offset: 64)
!212 = !DILocalVariable(name: "s", arg: 1, scope: !205, file: !8, line: 121, type: !208)
!213 = !DILocation(line: 121, column: 49, scope: !205)
!214 = !DILocation(line: 123, column: 12, scope: !205)
!215 = !DILocation(line: 123, column: 10, scope: !205)
!216 = !DILocation(line: 123, column: 3, scope: !205)
!217 = distinct !DISubprogram(name: "ex301ArrayElemInt", scope: !8, file: !8, line: 132, type: !218, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!218 = !DISubroutineType(types: !219)
!219 = !{!13, !220}
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s301", file: !8, line: 128, size: 256, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !220, file: !8, line: 129, baseType: !119, size: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !220, file: !8, line: 130, baseType: !29, size: 128, offset: 128)
!224 = !DILocalVariable(name: "s", arg: 1, scope: !217, file: !8, line: 132, type: !220)
!225 = !DILocation(line: 132, column: 35, scope: !217)
!226 = !DILocation(line: 133, column: 12, scope: !217)
!227 = !DILocation(line: 133, column: 10, scope: !217)
!228 = !DILocation(line: 133, column: 21, scope: !217)
!229 = !DILocation(line: 133, column: 19, scope: !217)
!230 = !DILocation(line: 133, column: 17, scope: !217)
!231 = !DILocation(line: 133, column: 3, scope: !217)
!232 = distinct !DISubprogram(name: "ex302ArrayElemStruct", scope: !8, file: !8, line: 142, type: !233, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!233 = !DISubroutineType(types: !234)
!234 = !{!13, !235}
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s302", file: !8, line: 136, size: 256, elements: !236)
!236 = !{!237, !242}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !235, file: !8, line: 139, baseType: !238, size: 128)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 128, elements: !120)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !8, line: 137, size: 32, elements: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !239, file: !8, line: 138, baseType: !13, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !235, file: !8, line: 140, baseType: !29, size: 128, offset: 128)
!243 = !DILocalVariable(name: "s", arg: 1, scope: !232, file: !8, line: 142, type: !235)
!244 = !DILocation(line: 142, column: 38, scope: !232)
!245 = !DILocation(line: 143, column: 12, scope: !232)
!246 = !DILocation(line: 143, column: 10, scope: !232)
!247 = !DILocation(line: 143, column: 21, scope: !232)
!248 = !DILocation(line: 143, column: 27, scope: !232)
!249 = !DILocation(line: 143, column: 25, scope: !232)
!250 = !DILocation(line: 143, column: 36, scope: !232)
!251 = !DILocation(line: 143, column: 23, scope: !232)
!252 = !DILocation(line: 143, column: 3, scope: !232)
!253 = distinct !DISubprogram(name: "ex303ArrayElemArrayFixedLength", scope: !8, file: !8, line: 149, type: !254, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!254 = !DISubroutineType(types: !255)
!255 = !{!13, !256}
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s303", file: !8, line: 146, size: 512, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !256, file: !8, line: 147, baseType: !259, size: 512)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !260)
!260 = !{!121, !121}
!261 = !DILocalVariable(name: "s", arg: 1, scope: !253, file: !8, line: 149, type: !256)
!262 = !DILocation(line: 149, column: 48, scope: !253)
!263 = !DILocation(line: 150, column: 12, scope: !253)
!264 = !DILocation(line: 150, column: 10, scope: !253)
!265 = !DILocation(line: 150, column: 24, scope: !253)
!266 = !DILocation(line: 150, column: 22, scope: !253)
!267 = !DILocation(line: 150, column: 20, scope: !253)
!268 = !DILocation(line: 150, column: 3, scope: !253)
!269 = distinct !DISubprogram(name: "ex305ArrayElemPointerSingleElementValue", scope: !8, file: !8, line: 158, type: !270, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!270 = !DISubroutineType(types: !271)
!271 = !{!13, !272}
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s305", file: !8, line: 155, size: 256, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !272, file: !8, line: 156, baseType: !275, size: 256)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !120)
!276 = !DILocalVariable(name: "s", arg: 1, scope: !269, file: !8, line: 158, type: !272)
!277 = !DILocation(line: 158, column: 57, scope: !269)
!278 = !DILocation(line: 159, column: 13, scope: !269)
!279 = !DILocation(line: 159, column: 11, scope: !269)
!280 = !DILocation(line: 159, column: 10, scope: !269)
!281 = !DILocation(line: 159, column: 3, scope: !269)
!282 = distinct !DISubprogram(name: "ex306ArrayElemPointerSingleElementInstances", scope: !8, file: !8, line: 165, type: !283, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!283 = !DISubroutineType(types: !284)
!284 = !{!13, !285}
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s306", file: !8, line: 162, size: 256, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !285, file: !8, line: 163, baseType: !275, size: 256)
!288 = !DILocalVariable(name: "s", arg: 1, scope: !282, file: !8, line: 165, type: !285)
!289 = !DILocation(line: 165, column: 61, scope: !282)
!290 = !DILocation(line: 166, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !282, file: !8, line: 166, column: 7)
!292 = !DILocation(line: 166, column: 7, scope: !291)
!293 = !DILocation(line: 166, column: 14, scope: !291)
!294 = !DILocation(line: 166, column: 22, scope: !291)
!295 = !DILocation(line: 166, column: 27, scope: !291)
!296 = !DILocation(line: 166, column: 25, scope: !291)
!297 = !DILocation(line: 166, column: 32, scope: !291)
!298 = !DILocation(line: 166, column: 7, scope: !282)
!299 = !DILocation(line: 168, column: 5, scope: !300)
!300 = distinct !DILexicalBlock(scope: !291, file: !8, line: 166, column: 41)
!301 = !DILocation(line: 169, column: 16, scope: !302)
!302 = distinct !DILexicalBlock(scope: !291, file: !8, line: 169, column: 14)
!303 = !DILocation(line: 169, column: 14, scope: !302)
!304 = !DILocation(line: 169, column: 26, scope: !302)
!305 = !DILocation(line: 169, column: 24, scope: !302)
!306 = !DILocation(line: 169, column: 21, scope: !302)
!307 = !DILocation(line: 169, column: 14, scope: !291)
!308 = !DILocation(line: 170, column: 5, scope: !309)
!309 = distinct !DILexicalBlock(scope: !302, file: !8, line: 169, column: 32)
!310 = !DILocation(line: 173, column: 5, scope: !311)
!311 = distinct !DILexicalBlock(scope: !302, file: !8, line: 171, column: 10)
!312 = !DILocation(line: 175, column: 1, scope: !282)
!313 = distinct !DISubprogram(name: "ex307ArrayElemPointerMultipleElementValues", scope: !8, file: !8, line: 180, type: !314, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!314 = !DISubroutineType(types: !315)
!315 = !{!13, !316}
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s307", file: !8, line: 177, size: 256, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !316, file: !8, line: 178, baseType: !275, size: 256)
!319 = !DILocalVariable(name: "s", arg: 1, scope: !313, file: !8, line: 180, type: !316)
!320 = !DILocation(line: 180, column: 60, scope: !313)
!321 = !DILocation(line: 182, column: 12, scope: !313)
!322 = !DILocation(line: 182, column: 10, scope: !313)
!323 = !DILocation(line: 182, column: 24, scope: !313)
!324 = !DILocation(line: 182, column: 22, scope: !313)
!325 = !DILocation(line: 182, column: 20, scope: !313)
!326 = !DILocation(line: 182, column: 3, scope: !313)
!327 = distinct !DISubprogram(name: "ex308ArrayElemPointerFunction", scope: !8, file: !8, line: 188, type: !328, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!328 = !DISubroutineType(types: !329)
!329 = !{!13, !330}
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s308", file: !8, line: 185, size: 256, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !330, file: !8, line: 186, baseType: !333, size: 256)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 256, elements: !120)
!334 = !DILocalVariable(name: "s", arg: 1, scope: !327, file: !8, line: 188, type: !330)
!335 = !DILocation(line: 188, column: 47, scope: !327)
!336 = !DILocation(line: 190, column: 12, scope: !327)
!337 = !DILocation(line: 190, column: 10, scope: !327)
!338 = !DILocation(line: 190, column: 23, scope: !327)
!339 = !DILocation(line: 190, column: 21, scope: !327)
!340 = !DILocation(line: 190, column: 19, scope: !327)
!341 = !DILocation(line: 190, column: 3, scope: !327)
!342 = distinct !DISubprogram(name: "ex401PointerToInt", scope: !8, file: !8, line: 195, type: !37, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!343 = !DILocalVariable(name: "a", arg: 1, scope: !342, file: !8, line: 195, type: !12)
!344 = !DILocation(line: 195, column: 28, scope: !342)
!345 = !DILocation(line: 196, column: 11, scope: !342)
!346 = !DILocation(line: 196, column: 10, scope: !342)
!347 = !DILocation(line: 196, column: 3, scope: !342)
!348 = distinct !DISubprogram(name: "ex402PointerToStruct", scope: !8, file: !8, line: 202, type: !349, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!349 = !DISubroutineType(types: !350)
!350 = !{!13, !351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s402", file: !8, line: 199, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !352, file: !8, line: 200, baseType: !13, size: 32)
!355 = !DILocalVariable(name: "s", arg: 1, scope: !348, file: !8, line: 202, type: !351)
!356 = !DILocation(line: 202, column: 39, scope: !348)
!357 = !DILocation(line: 203, column: 10, scope: !348)
!358 = !DILocation(line: 203, column: 13, scope: !348)
!359 = !DILocation(line: 203, column: 3, scope: !348)
!360 = distinct !DISubprogram(name: "ex405PointerToPointerSingleElementValue", scope: !8, file: !8, line: 208, type: !361, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!361 = !DISubroutineType(types: !362)
!362 = !{!13, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!364 = !DILocalVariable(name: "a", arg: 1, scope: !360, file: !8, line: 208, type: !363)
!365 = !DILocation(line: 208, column: 51, scope: !360)
!366 = !DILocation(line: 209, column: 12, scope: !360)
!367 = !DILocation(line: 209, column: 11, scope: !360)
!368 = !DILocation(line: 209, column: 10, scope: !360)
!369 = !DILocation(line: 209, column: 3, scope: !360)
!370 = distinct !DISubprogram(name: "ex406PointerToPointerSingleElementInstances", scope: !8, file: !8, line: 212, type: !371, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!371 = !DISubroutineType(types: !372)
!372 = !{!13, !363, !363}
!373 = !DILocalVariable(name: "a", arg: 1, scope: !370, file: !8, line: 212, type: !363)
!374 = !DILocation(line: 212, column: 55, scope: !370)
!375 = !DILocalVariable(name: "b", arg: 2, scope: !370, file: !8, line: 212, type: !363)
!376 = !DILocation(line: 212, column: 64, scope: !370)
!377 = !DILocation(line: 213, column: 8, scope: !378)
!378 = distinct !DILexicalBlock(scope: !370, file: !8, line: 213, column: 7)
!379 = !DILocation(line: 213, column: 7, scope: !378)
!380 = !DILocation(line: 213, column: 10, scope: !378)
!381 = !DILocation(line: 213, column: 18, scope: !378)
!382 = !DILocation(line: 213, column: 22, scope: !378)
!383 = !DILocation(line: 213, column: 21, scope: !378)
!384 = !DILocation(line: 213, column: 24, scope: !378)
!385 = !DILocation(line: 213, column: 7, scope: !370)
!386 = !DILocation(line: 215, column: 5, scope: !387)
!387 = distinct !DILexicalBlock(scope: !378, file: !8, line: 213, column: 33)
!388 = !DILocation(line: 216, column: 15, scope: !389)
!389 = distinct !DILexicalBlock(scope: !378, file: !8, line: 216, column: 14)
!390 = !DILocation(line: 216, column: 14, scope: !389)
!391 = !DILocation(line: 216, column: 21, scope: !389)
!392 = !DILocation(line: 216, column: 20, scope: !389)
!393 = !DILocation(line: 216, column: 17, scope: !389)
!394 = !DILocation(line: 216, column: 14, scope: !378)
!395 = !DILocation(line: 217, column: 5, scope: !396)
!396 = distinct !DILexicalBlock(scope: !389, file: !8, line: 216, column: 24)
!397 = !DILocation(line: 220, column: 5, scope: !398)
!398 = distinct !DILexicalBlock(scope: !389, file: !8, line: 218, column: 10)
!399 = !DILocation(line: 222, column: 1, scope: !370)
!400 = distinct !DISubprogram(name: "ex407PointerToPointerMultipleElementValues", scope: !8, file: !8, line: 224, type: !361, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!401 = !DILocalVariable(name: "a", arg: 1, scope: !400, file: !8, line: 224, type: !363)
!402 = !DILocation(line: 224, column: 54, scope: !400)
!403 = !DILocation(line: 226, column: 12, scope: !400)
!404 = !DILocation(line: 226, column: 11, scope: !400)
!405 = !DILocation(line: 226, column: 10, scope: !400)
!406 = !DILocation(line: 226, column: 22, scope: !400)
!407 = !DILocation(line: 226, column: 21, scope: !400)
!408 = !DILocation(line: 226, column: 20, scope: !400)
!409 = !DILocation(line: 226, column: 18, scope: !400)
!410 = !DILocation(line: 226, column: 3, scope: !400)
!411 = distinct !DISubprogram(name: "ex408PointerToPointerFunction", scope: !8, file: !8, line: 229, type: !412, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!412 = !DISubroutineType(types: !413)
!413 = !{!13, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!415 = !DILocalVariable(name: "a", arg: 1, scope: !411, file: !8, line: 229, type: !414)
!416 = !DILocation(line: 229, column: 42, scope: !411)
!417 = !DILocation(line: 231, column: 12, scope: !411)
!418 = !DILocation(line: 231, column: 11, scope: !411)
!419 = !DILocation(line: 231, column: 10, scope: !411)
!420 = !DILocation(line: 231, column: 3, scope: !411)
!421 = distinct !DISubprogram(name: "ex501StructWithArrayOfPointers", scope: !8, file: !8, line: 241, type: !422, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!422 = !DISubroutineType(types: !423)
!423 = !{!13, !424}
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s501", file: !8, line: 236, size: 256, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !424, file: !8, line: 239, baseType: !427, size: 256)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !424, file: !8, line: 237, size: 256, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !427, file: !8, line: 238, baseType: !275, size: 256)
!430 = !DILocalVariable(name: "s", arg: 1, scope: !421, file: !8, line: 241, type: !424)
!431 = !DILocation(line: 241, column: 48, scope: !421)
!432 = !DILocation(line: 242, column: 13, scope: !421)
!433 = !DILocation(line: 242, column: 19, scope: !421)
!434 = !DILocation(line: 242, column: 11, scope: !421)
!435 = !DILocation(line: 242, column: 10, scope: !421)
!436 = !DILocation(line: 242, column: 3, scope: !421)
!437 = distinct !DISubprogram(name: "ex502ArrayOfStructsWithPointer", scope: !8, file: !8, line: 250, type: !438, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!438 = !DISubroutineType(types: !439)
!439 = !{!13, !440}
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s502", file: !8, line: 245, size: 256, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !440, file: !8, line: 248, baseType: !443, size: 256)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 256, elements: !120)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !440, file: !8, line: 246, size: 64, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !444, file: !8, line: 247, baseType: !12, size: 64)
!447 = !DILocalVariable(name: "s", arg: 1, scope: !437, file: !8, line: 250, type: !440)
!448 = !DILocation(line: 250, column: 48, scope: !437)
!449 = !DILocation(line: 251, column: 13, scope: !437)
!450 = !DILocation(line: 251, column: 11, scope: !437)
!451 = !DILocation(line: 251, column: 22, scope: !437)
!452 = !DILocation(line: 251, column: 10, scope: !437)
!453 = !DILocation(line: 251, column: 3, scope: !437)
!454 = distinct !DISubprogram(name: "ex503PointerArithmetic", scope: !8, file: !8, line: 254, type: !37, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!455 = !DILocalVariable(name: "a", arg: 1, scope: !454, file: !8, line: 254, type: !12)
!456 = !DILocation(line: 254, column: 33, scope: !454)
!457 = !DILocation(line: 256, column: 12, scope: !454)
!458 = !DILocation(line: 256, column: 14, scope: !454)
!459 = !DILocation(line: 256, column: 10, scope: !454)
!460 = !DILocation(line: 256, column: 3, scope: !454)
!461 = distinct !DISubprogram(name: "ex504PointerCast", scope: !8, file: !8, line: 259, type: !462, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!462 = !DISubroutineType(types: !463)
!463 = !{!13, !11}
!464 = !DILocalVariable(name: "a", arg: 1, scope: !461, file: !8, line: 259, type: !11)
!465 = !DILocation(line: 259, column: 28, scope: !461)
!466 = !DILocation(line: 261, column: 18, scope: !461)
!467 = !DILocation(line: 261, column: 11, scope: !461)
!468 = !DILocation(line: 261, column: 10, scope: !461)
!469 = !DILocation(line: 261, column: 3, scope: !461)
