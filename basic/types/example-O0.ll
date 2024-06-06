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
  store i32 0, i32* %retval, align 4, !dbg !58
  br label %return, !dbg !58

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32*, i32** %a.addr, align 8, !dbg !60
  %3 = load i32*, i32** %b.addr, align 8, !dbg !62
  %cmp2 = icmp ne i32* %2, %3, !dbg !63
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !64

if.then3:                                         ; preds = %if.else
  %4 = load i32*, i32** %a.addr, align 8, !dbg !65
  %5 = load i32, i32* %4, align 4, !dbg !67
  %6 = load i32*, i32** %b.addr, align 8, !dbg !68
  %7 = load i32, i32* %6, align 4, !dbg !69
  %add = add nsw i32 %5, %7, !dbg !70
  store i32 %add, i32* %retval, align 4, !dbg !71
  br label %return, !dbg !71

if.else4:                                         ; preds = %if.else
  %8 = load i32*, i32** %a.addr, align 8, !dbg !72
  %9 = load i32, i32* %8, align 4, !dbg !74
  %10 = load i32*, i32** %b.addr, align 8, !dbg !75
  %11 = load i32, i32* %10, align 4, !dbg !76
  %add5 = add nsw i32 %9, %11, !dbg !77
  store i32 %add5, i32* %retval, align 4, !dbg !78
  br label %return, !dbg !78

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !79
  ret i32 %12, !dbg !79
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex108PointerFunction(i32 (...)* %a) #0 !dbg !80 {
entry:
  %a.addr = alloca i32 (...)*, align 8
  store i32 (...)* %a, i32 (...)** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)** %a.addr, metadata !86, metadata !DIExpression()), !dbg !87
  %0 = load i32 (...)*, i32 (...)** %a.addr, align 8, !dbg !88
  %call = call i32 (...) %0(), !dbg !88
  ret i32 %call, !dbg !89
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex201StructFieldInt(%struct.s201* byval(%struct.s201) align 8 %s) #0 !dbg !90 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s201* %s, metadata !97, metadata !DIExpression()), !dbg !98
  %a = getelementptr inbounds %struct.s201, %struct.s201* %s, i32 0, i32 0, !dbg !99
  %0 = load i32, i32* %a, align 8, !dbg !99
  ret i32 %0, !dbg !100
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex202StructFieldStruct(%struct.s202* byval(%struct.s202) align 8 %s) #0 !dbg !101 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s202* %s, metadata !111, metadata !DIExpression()), !dbg !112
  %inner = getelementptr inbounds %struct.s202, %struct.s202* %s, i32 0, i32 0, !dbg !113
  %a = getelementptr inbounds %struct.anon, %struct.anon* %inner, i32 0, i32 0, !dbg !114
  %0 = load i32, i32* %a, align 8, !dbg !114
  ret i32 %0, !dbg !115
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex203StructFieldArrayFixedLength(%struct.s203* byval(%struct.s203) align 8 %s) #0 !dbg !116 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s203* %s, metadata !126, metadata !DIExpression()), !dbg !127
  %a = getelementptr inbounds %struct.s203, %struct.s203* %s, i32 0, i32 0, !dbg !128
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0, !dbg !129
  %0 = load i32, i32* %arrayidx, align 8, !dbg !129
  %a1 = getelementptr inbounds %struct.s203, %struct.s203* %s, i32 0, i32 0, !dbg !130
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %a1, i64 0, i64 3, !dbg !131
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !131
  %add = add nsw i32 %0, %1, !dbg !132
  ret i32 %add, !dbg !133
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex204StructFieldArrayVariableLength(%struct.s204* byval(%struct.s204) align 8 %s) #0 !dbg !134 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s204* %s, metadata !144, metadata !DIExpression()), !dbg !145
  %a = getelementptr inbounds %struct.s204, %struct.s204* %s, i32 0, i32 1, !dbg !146
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* %a, i64 0, i64 0, !dbg !147
  %0 = load i32, i32* %arrayidx, align 4, !dbg !147
  %a1 = getelementptr inbounds %struct.s204, %struct.s204* %s, i32 0, i32 1, !dbg !148
  %arrayidx2 = getelementptr inbounds [0 x i32], [0 x i32]* %a1, i64 0, i64 3, !dbg !149
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !149
  %add = add nsw i32 %0, %1, !dbg !150
  ret i32 %add, !dbg !151
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex205StructFieldPointerSingleElementValue(%struct.s205* byval(%struct.s205) align 8 %s) #0 !dbg !152 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s205* %s, metadata !159, metadata !DIExpression()), !dbg !160
  %a = getelementptr inbounds %struct.s205, %struct.s205* %s, i32 0, i32 0, !dbg !161
  %0 = load i32*, i32** %a, align 8, !dbg !161
  %1 = load i32, i32* %0, align 4, !dbg !162
  ret i32 %1, !dbg !163
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex206StructFieldPointerSingleElementInstances(%struct.s206* byval(%struct.s206) align 8 %s) #0 !dbg !164 {
entry:
  %retval = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.s206* %s, metadata !172, metadata !DIExpression()), !dbg !173
  %a = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !174
  %0 = load i32*, i32** %a, align 8, !dbg !174
  %cmp = icmp eq i32* %0, null, !dbg !176
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !177

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !178
  %1 = load i32*, i32** %b, align 8, !dbg !178
  %cmp1 = icmp eq i32* %1, null, !dbg !179
  br i1 %cmp1, label %if.then, label %if.else, !dbg !180

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !181
  br label %return, !dbg !181

if.else:                                          ; preds = %lor.lhs.false
  %a2 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !183
  %2 = load i32*, i32** %a2, align 8, !dbg !183
  %b3 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !185
  %3 = load i32*, i32** %b3, align 8, !dbg !185
  %cmp4 = icmp ne i32* %2, %3, !dbg !186
  br i1 %cmp4, label %if.then5, label %if.else8, !dbg !187

if.then5:                                         ; preds = %if.else
  %a6 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !188
  %4 = load i32*, i32** %a6, align 8, !dbg !188
  %5 = load i32, i32* %4, align 4, !dbg !190
  %b7 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !191
  %6 = load i32*, i32** %b7, align 8, !dbg !191
  %7 = load i32, i32* %6, align 4, !dbg !192
  %add = add nsw i32 %5, %7, !dbg !193
  store i32 %add, i32* %retval, align 4, !dbg !194
  br label %return, !dbg !194

if.else8:                                         ; preds = %if.else
  %a9 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !195
  %8 = load i32*, i32** %a9, align 8, !dbg !195
  %9 = load i32, i32* %8, align 4, !dbg !197
  %b10 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !198
  %10 = load i32*, i32** %b10, align 8, !dbg !198
  %11 = load i32, i32* %10, align 4, !dbg !199
  %add11 = add nsw i32 %9, %11, !dbg !200
  store i32 %add11, i32* %retval, align 4, !dbg !201
  br label %return, !dbg !201

return:                                           ; preds = %if.else8, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !202
  ret i32 %12, !dbg !202
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex207StructFieldPointerMultipleElementValues(%struct.s207* byval(%struct.s207) align 8 %s) #0 !dbg !203 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s207* %s, metadata !210, metadata !DIExpression()), !dbg !211
  %a = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !212
  %0 = load i32*, i32** %a, align 8, !dbg !212
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !213
  %1 = load i32, i32* %arrayidx, align 4, !dbg !213
  %a1 = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !214
  %2 = load i32*, i32** %a1, align 8, !dbg !214
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !215
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !215
  %add = add nsw i32 %1, %3, !dbg !216
  ret i32 %add, !dbg !217
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex208StructFieldPointerFunction(%struct.s208* byval(%struct.s208) align 8 %s) #0 !dbg !218 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s208* %s, metadata !225, metadata !DIExpression()), !dbg !226
  %a = getelementptr inbounds %struct.s208, %struct.s208* %s, i32 0, i32 0, !dbg !227
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !227
  %call = call i32 (...) %0(), !dbg !228
  ret i32 %call, !dbg !229
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex301ArrayElemInt(%struct.s301* byval(%struct.s301) align 8 %s) #0 !dbg !230 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s301* %s, metadata !237, metadata !DIExpression()), !dbg !238
  %a = getelementptr inbounds %struct.s301, %struct.s301* %s, i32 0, i32 0, !dbg !239
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0, !dbg !240
  %0 = load i32, i32* %arrayidx, align 8, !dbg !240
  %a1 = getelementptr inbounds %struct.s301, %struct.s301* %s, i32 0, i32 0, !dbg !241
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %a1, i64 0, i64 3, !dbg !242
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !242
  %add = add nsw i32 %0, %1, !dbg !243
  ret i32 %add, !dbg !244
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex302ArrayElemStruct(%struct.s302* byval(%struct.s302) align 8 %s) #0 !dbg !245 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s302* %s, metadata !256, metadata !DIExpression()), !dbg !257
  %inner = getelementptr inbounds %struct.s302, %struct.s302* %s, i32 0, i32 0, !dbg !258
  %arrayidx = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* %inner, i64 0, i64 0, !dbg !259
  %a = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0, !dbg !260
  %0 = load i32, i32* %a, align 8, !dbg !260
  %inner1 = getelementptr inbounds %struct.s302, %struct.s302* %s, i32 0, i32 0, !dbg !261
  %arrayidx2 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* %inner1, i64 0, i64 3, !dbg !262
  %a3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx2, i32 0, i32 0, !dbg !263
  %1 = load i32, i32* %a3, align 4, !dbg !263
  %add = add nsw i32 %0, %1, !dbg !264
  ret i32 %add, !dbg !265
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex303ArrayElemArrayFixedLength(%struct.s303* byval(%struct.s303) align 8 %s) #0 !dbg !266 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s303* %s, metadata !274, metadata !DIExpression()), !dbg !275
  %a = getelementptr inbounds %struct.s303, %struct.s303* %s, i32 0, i32 0, !dbg !276
  %arrayidx = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %a, i64 0, i64 0, !dbg !277
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 0, !dbg !277
  %0 = load i32, i32* %arrayidx1, align 8, !dbg !277
  %a2 = getelementptr inbounds %struct.s303, %struct.s303* %s, i32 0, i32 0, !dbg !278
  %arrayidx3 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %a2, i64 0, i64 3, !dbg !279
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx3, i64 0, i64 3, !dbg !279
  %1 = load i32, i32* %arrayidx4, align 4, !dbg !279
  %add = add nsw i32 %0, %1, !dbg !280
  ret i32 %add, !dbg !281
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex305ArrayElemPointerSingleElementValue(%struct.s305* byval(%struct.s305) align 8 %s) #0 !dbg !282 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s305* %s, metadata !289, metadata !DIExpression()), !dbg !290
  %a = getelementptr inbounds %struct.s305, %struct.s305* %s, i32 0, i32 0, !dbg !291
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !292
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !292
  %1 = load i32, i32* %0, align 4, !dbg !293
  ret i32 %1, !dbg !294
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex306ArrayElemPointerSingleElementInstances(%struct.s306* byval(%struct.s306) align 8 %s) #0 !dbg !295 {
entry:
  %retval = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.s306* %s, metadata !301, metadata !DIExpression()), !dbg !302
  %a = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !303
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !305
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !305
  %cmp = icmp eq i32* %0, null, !dbg !306
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !307

lor.lhs.false:                                    ; preds = %entry
  %a1 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !308
  %arrayidx2 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a1, i64 0, i64 3, !dbg !309
  %1 = load i32*, i32** %arrayidx2, align 8, !dbg !309
  %cmp3 = icmp eq i32* %1, null, !dbg !310
  br i1 %cmp3, label %if.then, label %if.else, !dbg !311

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !312
  br label %return, !dbg !312

if.else:                                          ; preds = %lor.lhs.false
  %a4 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !314
  %arrayidx5 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a4, i64 0, i64 0, !dbg !316
  %2 = load i32*, i32** %arrayidx5, align 8, !dbg !316
  %a6 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !317
  %arrayidx7 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a6, i64 0, i64 3, !dbg !318
  %3 = load i32*, i32** %arrayidx7, align 8, !dbg !318
  %cmp8 = icmp ne i32* %2, %3, !dbg !319
  br i1 %cmp8, label %if.then9, label %if.else14, !dbg !320

if.then9:                                         ; preds = %if.else
  %a10 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !321
  %arrayidx11 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a10, i64 0, i64 0, !dbg !323
  %4 = load i32*, i32** %arrayidx11, align 8, !dbg !323
  %5 = load i32, i32* %4, align 4, !dbg !324
  %a12 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !325
  %arrayidx13 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a12, i64 0, i64 3, !dbg !326
  %6 = load i32*, i32** %arrayidx13, align 8, !dbg !326
  %7 = load i32, i32* %6, align 4, !dbg !327
  %add = add nsw i32 %5, %7, !dbg !328
  store i32 %add, i32* %retval, align 4, !dbg !329
  br label %return, !dbg !329

if.else14:                                        ; preds = %if.else
  %a15 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !330
  %arrayidx16 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a15, i64 0, i64 0, !dbg !332
  %8 = load i32*, i32** %arrayidx16, align 8, !dbg !332
  %9 = load i32, i32* %8, align 4, !dbg !333
  %a17 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !334
  %arrayidx18 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a17, i64 0, i64 3, !dbg !335
  %10 = load i32*, i32** %arrayidx18, align 8, !dbg !335
  %11 = load i32, i32* %10, align 4, !dbg !336
  %add19 = add nsw i32 %9, %11, !dbg !337
  store i32 %add19, i32* %retval, align 4, !dbg !338
  br label %return, !dbg !338

return:                                           ; preds = %if.else14, %if.then9, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !339
  ret i32 %12, !dbg !339
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex307ArrayElemPointerMultipleElementValues(%struct.s307* byval(%struct.s307) align 8 %s) #0 !dbg !340 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s307* %s, metadata !346, metadata !DIExpression()), !dbg !347
  %a = getelementptr inbounds %struct.s307, %struct.s307* %s, i32 0, i32 0, !dbg !348
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !349
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !349
  %arrayidx1 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !349
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !349
  %a2 = getelementptr inbounds %struct.s307, %struct.s307* %s, i32 0, i32 0, !dbg !350
  %arrayidx3 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a2, i64 0, i64 0, !dbg !351
  %2 = load i32*, i32** %arrayidx3, align 8, !dbg !351
  %arrayidx4 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !351
  %3 = load i32, i32* %arrayidx4, align 4, !dbg !351
  %add = add nsw i32 %1, %3, !dbg !352
  ret i32 %add, !dbg !353
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex308ArrayElemPointerFunction(%struct.s308* byval(%struct.s308) align 8 %s) #0 !dbg !354 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s308* %s, metadata !361, metadata !DIExpression()), !dbg !362
  %a = getelementptr inbounds %struct.s308, %struct.s308* %s, i32 0, i32 0, !dbg !363
  %arrayidx = getelementptr inbounds [4 x i32 (...)*], [4 x i32 (...)*]* %a, i64 0, i64 0, !dbg !364
  %0 = load i32 (...)*, i32 (...)** %arrayidx, align 8, !dbg !364
  %call = call i32 (...) %0(), !dbg !364
  %a1 = getelementptr inbounds %struct.s308, %struct.s308* %s, i32 0, i32 0, !dbg !365
  %arrayidx2 = getelementptr inbounds [4 x i32 (...)*], [4 x i32 (...)*]* %a1, i64 0, i64 3, !dbg !366
  %1 = load i32 (...)*, i32 (...)** %arrayidx2, align 8, !dbg !366
  %call3 = call i32 (...) %1(), !dbg !366
  %add = add nsw i32 %call, %call3, !dbg !367
  ret i32 %add, !dbg !368
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex401PointerToInt(i32* %a) #0 !dbg !369 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !370, metadata !DIExpression()), !dbg !371
  %0 = load i32*, i32** %a.addr, align 8, !dbg !372
  %1 = load i32, i32* %0, align 4, !dbg !373
  ret i32 %1, !dbg !374
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex402PointerToStruct(%struct.s402* %s) #0 !dbg !375 {
entry:
  %s.addr = alloca %struct.s402*, align 8
  store %struct.s402* %s, %struct.s402** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s402** %s.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load %struct.s402*, %struct.s402** %s.addr, align 8, !dbg !384
  %a = getelementptr inbounds %struct.s402, %struct.s402* %0, i32 0, i32 0, !dbg !385
  %1 = load i32, i32* %a, align 4, !dbg !385
  ret i32 %1, !dbg !386
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex405PointerToPointerSingleElementValue(i32** %a) #0 !dbg !387 {
entry:
  %a.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !393
  %1 = load i32*, i32** %0, align 8, !dbg !394
  %2 = load i32, i32* %1, align 4, !dbg !395
  ret i32 %2, !dbg !396
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex406PointerToPointerSingleElementInstances(i32** %a, i32** %b) #0 !dbg !397 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !400, metadata !DIExpression()), !dbg !401
  store i32** %b, i32*** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !404
  %1 = load i32*, i32** %0, align 8, !dbg !406
  %cmp = icmp eq i32* %1, null, !dbg !407
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !408

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32**, i32*** %b.addr, align 8, !dbg !409
  %3 = load i32*, i32** %2, align 8, !dbg !410
  %cmp1 = icmp eq i32* %3, null, !dbg !411
  br i1 %cmp1, label %if.then, label %if.else, !dbg !412

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !413
  br label %return, !dbg !413

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32**, i32*** %a.addr, align 8, !dbg !415
  %5 = load i32*, i32** %4, align 8, !dbg !417
  %6 = load i32**, i32*** %b.addr, align 8, !dbg !418
  %7 = load i32*, i32** %6, align 8, !dbg !419
  %cmp2 = icmp ne i32* %5, %7, !dbg !420
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !421

if.then3:                                         ; preds = %if.else
  %8 = load i32**, i32*** %a.addr, align 8, !dbg !422
  %9 = load i32*, i32** %8, align 8, !dbg !424
  %10 = load i32, i32* %9, align 4, !dbg !425
  %11 = load i32**, i32*** %b.addr, align 8, !dbg !426
  %12 = load i32*, i32** %11, align 8, !dbg !427
  %13 = load i32, i32* %12, align 4, !dbg !428
  %add = add nsw i32 %10, %13, !dbg !429
  store i32 %add, i32* %retval, align 4, !dbg !430
  br label %return, !dbg !430

if.else4:                                         ; preds = %if.else
  %14 = load i32**, i32*** %a.addr, align 8, !dbg !431
  %15 = load i32*, i32** %14, align 8, !dbg !433
  %16 = load i32, i32* %15, align 4, !dbg !434
  %17 = load i32**, i32*** %b.addr, align 8, !dbg !435
  %18 = load i32*, i32** %17, align 8, !dbg !436
  %19 = load i32, i32* %18, align 4, !dbg !437
  %add5 = add nsw i32 %16, %19, !dbg !438
  store i32 %add5, i32* %retval, align 4, !dbg !439
  br label %return, !dbg !439

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !440
  ret i32 %20, !dbg !440
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex407PointerToPointerMultipleElementValues(i32** %a) #0 !dbg !441 {
entry:
  %a.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !444
  %1 = load i32*, i32** %0, align 8, !dbg !445
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0, !dbg !446
  %2 = load i32, i32* %arrayidx, align 4, !dbg !446
  %3 = load i32**, i32*** %a.addr, align 8, !dbg !447
  %4 = load i32*, i32** %3, align 8, !dbg !448
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 3, !dbg !449
  %5 = load i32, i32* %arrayidx1, align 4, !dbg !449
  %add = add nsw i32 %2, %5, !dbg !450
  ret i32 %add, !dbg !451
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex408PointerToPointerFunction(i32 (...)** %a) #0 !dbg !452 {
entry:
  %a.addr = alloca i32 (...)**, align 8
  store i32 (...)** %a, i32 (...)*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)*** %a.addr, metadata !456, metadata !DIExpression()), !dbg !457
  %0 = load i32 (...)**, i32 (...)*** %a.addr, align 8, !dbg !458
  %1 = load i32 (...)*, i32 (...)** %0, align 8, !dbg !459
  %call = call i32 (...) %1(), !dbg !460
  ret i32 %call, !dbg !461
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex501PointerAsArrayOfInt(i32* %a) #0 !dbg !462 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load i32*, i32** %a.addr, align 8, !dbg !465
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !465
  %1 = load i32, i32* %arrayidx, align 4, !dbg !465
  %2 = load i32*, i32** %a.addr, align 8, !dbg !466
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !466
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !466
  %add = add nsw i32 %1, %3, !dbg !467
  ret i32 %add, !dbg !468
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex502PointerAsArrayOfStruct(%struct.s502* %s) #0 !dbg !469 {
entry:
  %s.addr = alloca %struct.s502*, align 8
  store %struct.s502* %s, %struct.s502** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s502** %s.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load %struct.s502*, %struct.s502** %s.addr, align 8, !dbg !478
  %arrayidx = getelementptr inbounds %struct.s502, %struct.s502* %0, i64 0, !dbg !478
  %a = getelementptr inbounds %struct.s502, %struct.s502* %arrayidx, i32 0, i32 0, !dbg !479
  %1 = load i32, i32* %a, align 4, !dbg !479
  %2 = load %struct.s502*, %struct.s502** %s.addr, align 8, !dbg !480
  %arrayidx1 = getelementptr inbounds %struct.s502, %struct.s502* %2, i64 3, !dbg !480
  %a2 = getelementptr inbounds %struct.s502, %struct.s502* %arrayidx1, i32 0, i32 0, !dbg !481
  %3 = load i32, i32* %a2, align 4, !dbg !481
  %add = add nsw i32 %1, %3, !dbg !482
  ret i32 %add, !dbg !483
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex505PointerAsArrayOfPointerSingleElementValue(i32** %a) #0 !dbg !484 {
entry:
  %a.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !485, metadata !DIExpression()), !dbg !486
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !487
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0, !dbg !487
  %1 = load i32*, i32** %arrayidx, align 8, !dbg !487
  %2 = load i32, i32* %1, align 4, !dbg !488
  ret i32 %2, !dbg !489
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex506PointerAsArrayOfPointerSingleElementInstances(i32** %a) #0 !dbg !490 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !491, metadata !DIExpression()), !dbg !492
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !493
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0, !dbg !493
  %1 = load i32*, i32** %arrayidx, align 8, !dbg !493
  %cmp = icmp eq i32* %1, null, !dbg !495
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !496

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32**, i32*** %a.addr, align 8, !dbg !497
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 3, !dbg !497
  %3 = load i32*, i32** %arrayidx1, align 8, !dbg !497
  %cmp2 = icmp eq i32* %3, null, !dbg !498
  br i1 %cmp2, label %if.then, label %if.else, !dbg !499

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !500
  br label %return, !dbg !500

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32**, i32*** %a.addr, align 8, !dbg !502
  %arrayidx3 = getelementptr inbounds i32*, i32** %4, i64 0, !dbg !502
  %5 = load i32*, i32** %arrayidx3, align 8, !dbg !502
  %6 = load i32**, i32*** %a.addr, align 8, !dbg !504
  %arrayidx4 = getelementptr inbounds i32*, i32** %6, i64 3, !dbg !504
  %7 = load i32*, i32** %arrayidx4, align 8, !dbg !504
  %cmp5 = icmp ne i32* %5, %7, !dbg !505
  br i1 %cmp5, label %if.then6, label %if.else9, !dbg !506

if.then6:                                         ; preds = %if.else
  %8 = load i32**, i32*** %a.addr, align 8, !dbg !507
  %arrayidx7 = getelementptr inbounds i32*, i32** %8, i64 0, !dbg !507
  %9 = load i32*, i32** %arrayidx7, align 8, !dbg !507
  %10 = load i32, i32* %9, align 4, !dbg !509
  %11 = load i32**, i32*** %a.addr, align 8, !dbg !510
  %arrayidx8 = getelementptr inbounds i32*, i32** %11, i64 3, !dbg !510
  %12 = load i32*, i32** %arrayidx8, align 8, !dbg !510
  %13 = load i32, i32* %12, align 4, !dbg !511
  %add = add nsw i32 %10, %13, !dbg !512
  store i32 %add, i32* %retval, align 4, !dbg !513
  br label %return, !dbg !513

if.else9:                                         ; preds = %if.else
  %14 = load i32**, i32*** %a.addr, align 8, !dbg !514
  %arrayidx10 = getelementptr inbounds i32*, i32** %14, i64 0, !dbg !514
  %15 = load i32*, i32** %arrayidx10, align 8, !dbg !514
  %16 = load i32, i32* %15, align 4, !dbg !516
  %17 = load i32**, i32*** %a.addr, align 8, !dbg !517
  %arrayidx11 = getelementptr inbounds i32*, i32** %17, i64 3, !dbg !517
  %18 = load i32*, i32** %arrayidx11, align 8, !dbg !517
  %19 = load i32, i32* %18, align 4, !dbg !518
  %add12 = add nsw i32 %16, %19, !dbg !519
  store i32 %add12, i32* %retval, align 4, !dbg !520
  br label %return, !dbg !520

return:                                           ; preds = %if.else9, %if.then6, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !521
  ret i32 %20, !dbg !521
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex507PointerAsArrayOfPointerMultipleElementValues(i32** %a) #0 !dbg !522 {
entry:
  %a.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !523, metadata !DIExpression()), !dbg !524
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !525
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0, !dbg !525
  %1 = load i32*, i32** %arrayidx, align 8, !dbg !525
  %2 = load i32, i32* %1, align 4, !dbg !526
  %3 = load i32**, i32*** %a.addr, align 8, !dbg !527
  %arrayidx1 = getelementptr inbounds i32*, i32** %3, i64 3, !dbg !527
  %4 = load i32*, i32** %arrayidx1, align 8, !dbg !527
  %5 = load i32, i32* %4, align 4, !dbg !528
  %add = add nsw i32 %2, %5, !dbg !529
  ret i32 %add, !dbg !530
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex508PointerAsArrayOfPointerFunction(i32 (...)** %a) #0 !dbg !531 {
entry:
  %a.addr = alloca i32 (...)**, align 8
  store i32 (...)** %a, i32 (...)*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)*** %a.addr, metadata !532, metadata !DIExpression()), !dbg !533
  %0 = load i32 (...)**, i32 (...)*** %a.addr, align 8, !dbg !534
  %arrayidx = getelementptr inbounds i32 (...)*, i32 (...)** %0, i64 0, !dbg !534
  %1 = load i32 (...)*, i32 (...)** %arrayidx, align 8, !dbg !534
  %call = call i32 (...) %1(), !dbg !534
  %2 = load i32 (...)**, i32 (...)*** %a.addr, align 8, !dbg !535
  %arrayidx1 = getelementptr inbounds i32 (...)*, i32 (...)** %2, i64 3, !dbg !535
  %3 = load i32 (...)*, i32 (...)** %arrayidx1, align 8, !dbg !535
  %call2 = call i32 (...) %3(), !dbg !535
  %add = add nsw i32 %call, %call2, !dbg !536
  ret i32 %add, !dbg !537
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex601StructWithArrayOfPointers(%struct.s601* byval(%struct.s601) align 8 %s) #0 !dbg !538 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s601* %s, metadata !547, metadata !DIExpression()), !dbg !548
  %inner = getelementptr inbounds %struct.s601, %struct.s601* %s, i32 0, i32 0, !dbg !549
  %a = getelementptr inbounds %struct.anon.1, %struct.anon.1* %inner, i32 0, i32 0, !dbg !550
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !551
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !551
  %1 = load i32, i32* %0, align 4, !dbg !552
  ret i32 %1, !dbg !553
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex602ArrayOfStructsWithPointer(%struct.s602* byval(%struct.s602) align 8 %s) #0 !dbg !554 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s602* %s, metadata !564, metadata !DIExpression()), !dbg !565
  %inner = getelementptr inbounds %struct.s602, %struct.s602* %s, i32 0, i32 0, !dbg !566
  %arrayidx = getelementptr inbounds [4 x %struct.anon.2], [4 x %struct.anon.2]* %inner, i64 0, i64 0, !dbg !567
  %a = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx, i32 0, i32 0, !dbg !568
  %0 = load i32*, i32** %a, align 8, !dbg !568
  %1 = load i32, i32* %0, align 4, !dbg !569
  ret i32 %1, !dbg !570
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex603PointerArithmetic(i32* %a) #0 !dbg !571 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !572, metadata !DIExpression()), !dbg !573
  %0 = load i32*, i32** %a.addr, align 8, !dbg !574
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 3, !dbg !575
  %1 = load i32, i32* %add.ptr, align 4, !dbg !576
  ret i32 %1, !dbg !577
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex604PointerCast(i8* %a) #0 !dbg !578 {
entry:
  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !581, metadata !DIExpression()), !dbg !582
  %0 = load i8*, i8** %a.addr, align 8, !dbg !583
  %1 = bitcast i8* %0 to i32*, !dbg !584
  %2 = load i32, i32* %1, align 4, !dbg !585
  ret i32 %2, !dbg !586
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex605PointerFunction(i32 (...)* %a) #0 !dbg !587 {
entry:
  %a.addr = alloca i32 (...)*, align 8
  %result = alloca i32, align 4
  store i32 (...)* %a, i32 (...)** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)** %a.addr, metadata !588, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.declare(metadata i32* %result, metadata !590, metadata !DIExpression()), !dbg !591
  %0 = load i32 (...)*, i32 (...)** %a.addr, align 8, !dbg !592
  %call = call i32 (...) %0(), !dbg !592
  store i32 %call, i32* %result, align 4, !dbg !591
  %1 = load i32, i32* %result, align 4, !dbg !593
  ret i32 %1, !dbg !594
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex606ListLengthLimitedLoop(%struct.s606* %s) #0 !dbg !595 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.s606*, align 8
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.s606* %s, %struct.s606** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s606** %s.addr, metadata !603, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !605, metadata !DIExpression()), !dbg !606
  store i32 0, i32* %sum, align 4, !dbg !606
  call void @llvm.dbg.declare(metadata i32* %i, metadata !607, metadata !DIExpression()), !dbg !608
  store i32 0, i32* %i, align 4, !dbg !609
  br label %for.cond, !dbg !611

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !612
  %cmp = icmp slt i32 %0, 4, !dbg !614
  br i1 %cmp, label %for.body, label %for.end, !dbg !615

for.body:                                         ; preds = %for.cond
  %1 = load %struct.s606*, %struct.s606** %s.addr, align 8, !dbg !616
  %a = getelementptr inbounds %struct.s606, %struct.s606* %1, i32 0, i32 0, !dbg !618
  %2 = load i32, i32* %a, align 8, !dbg !618
  %3 = load i32, i32* %sum, align 4, !dbg !619
  %add = add nsw i32 %3, %2, !dbg !619
  store i32 %add, i32* %sum, align 4, !dbg !619
  %4 = load %struct.s606*, %struct.s606** %s.addr, align 8, !dbg !620
  %n = getelementptr inbounds %struct.s606, %struct.s606* %4, i32 0, i32 1, !dbg !622
  %5 = load %struct.s606*, %struct.s606** %n, align 8, !dbg !622
  %tobool = icmp ne %struct.s606* %5, null, !dbg !620
  br i1 %tobool, label %if.end, label %if.then, !dbg !623

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !624

if.end:                                           ; preds = %for.body
  %6 = load %struct.s606*, %struct.s606** %s.addr, align 8, !dbg !625
  %n1 = getelementptr inbounds %struct.s606, %struct.s606* %6, i32 0, i32 1, !dbg !626
  %7 = load %struct.s606*, %struct.s606** %n1, align 8, !dbg !626
  store %struct.s606* %7, %struct.s606** %s.addr, align 8, !dbg !627
  br label %for.inc, !dbg !628

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !629
  %inc = add nsw i32 %8, 1, !dbg !629
  store i32 %inc, i32* %i, align 4, !dbg !629
  br label %for.cond, !dbg !630, !llvm.loop !631

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !634
  %cmp2 = icmp eq i32 %9, 4, !dbg !636
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !637

if.then3:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !638
  br label %return, !dbg !638

if.end4:                                          ; preds = %for.end
  %10 = load i32, i32* %sum, align 4, !dbg !639
  store i32 %10, i32* %retval, align 4, !dbg !640
  br label %return, !dbg !640

return:                                           ; preds = %if.end4, %if.then3
  %11 = load i32, i32* %retval, align 4, !dbg !641
  ret i32 %11, !dbg !641
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex607ListLengthUnlimitedLoop(%struct.s607* %s) #0 !dbg !642 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.s607*, align 8
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.s607* %s, %struct.s607** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s607** %s.addr, metadata !650, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !652, metadata !DIExpression()), !dbg !653
  store i32 0, i32* %sum, align 4, !dbg !653
  call void @llvm.dbg.declare(metadata i32* %i, metadata !654, metadata !DIExpression()), !dbg !655
  store i32 0, i32* %i, align 4, !dbg !655
  br label %while.cond, !dbg !656

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.s607*, %struct.s607** %s.addr, align 8, !dbg !657
  %tobool = icmp ne %struct.s607* %0, null, !dbg !656
  br i1 %tobool, label %while.body, label %while.end, !dbg !656

while.body:                                       ; preds = %while.cond
  %1 = load %struct.s607*, %struct.s607** %s.addr, align 8, !dbg !658
  %a = getelementptr inbounds %struct.s607, %struct.s607* %1, i32 0, i32 0, !dbg !660
  %2 = load i32, i32* %a, align 8, !dbg !660
  %3 = load i32, i32* %sum, align 4, !dbg !661
  %add = add nsw i32 %3, %2, !dbg !661
  store i32 %add, i32* %sum, align 4, !dbg !661
  %4 = load %struct.s607*, %struct.s607** %s.addr, align 8, !dbg !662
  %n = getelementptr inbounds %struct.s607, %struct.s607* %4, i32 0, i32 1, !dbg !663
  %5 = load %struct.s607*, %struct.s607** %n, align 8, !dbg !663
  store %struct.s607* %5, %struct.s607** %s.addr, align 8, !dbg !664
  %6 = load i32, i32* %i, align 4, !dbg !665
  %inc = add nsw i32 %6, 1, !dbg !665
  store i32 %inc, i32* %i, align 4, !dbg !665
  br label %while.cond, !dbg !656, !llvm.loop !666

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %i, align 4, !dbg !668
  %cmp = icmp eq i32 %7, 4, !dbg !670
  br i1 %cmp, label %if.then, label %if.end, !dbg !671

if.then:                                          ; preds = %while.end
  store i32 0, i32* %retval, align 4, !dbg !672
  br label %return, !dbg !672

if.end:                                           ; preds = %while.end
  %8 = load i32, i32* %sum, align 4, !dbg !673
  store i32 %8, i32* %retval, align 4, !dbg !674
  br label %return, !dbg !674

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !675
  ret i32 %9, !dbg !675
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
!65 = !DILocation(line: 30, column: 13, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !8, line: 29, column: 22)
!67 = !DILocation(line: 30, column: 12, scope: !66)
!68 = !DILocation(line: 30, column: 18, scope: !66)
!69 = !DILocation(line: 30, column: 17, scope: !66)
!70 = !DILocation(line: 30, column: 15, scope: !66)
!71 = !DILocation(line: 30, column: 5, scope: !66)
!72 = !DILocation(line: 33, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !61, file: !8, line: 31, column: 10)
!74 = !DILocation(line: 33, column: 12, scope: !73)
!75 = !DILocation(line: 33, column: 18, scope: !73)
!76 = !DILocation(line: 33, column: 17, scope: !73)
!77 = !DILocation(line: 33, column: 15, scope: !73)
!78 = !DILocation(line: 33, column: 5, scope: !73)
!79 = !DILocation(line: 35, column: 1, scope: !44)
!80 = distinct !DISubprogram(name: "ex108PointerFunction", scope: !8, file: !8, line: 39, type: !81, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!81 = !DISubroutineType(types: !82)
!82 = !{!13, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!13, null}
!86 = !DILocalVariable(name: "a", arg: 1, scope: !80, file: !8, line: 39, type: !83)
!87 = !DILocation(line: 39, column: 32, scope: !80)
!88 = !DILocation(line: 41, column: 10, scope: !80)
!89 = !DILocation(line: 41, column: 3, scope: !80)
!90 = distinct !DISubprogram(name: "ex201StructFieldInt", scope: !8, file: !8, line: 50, type: !91, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!91 = !DISubroutineType(types: !92)
!92 = !{!13, !93}
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s201", file: !8, line: 46, size: 160, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !93, file: !8, line: 47, baseType: !13, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !93, file: !8, line: 48, baseType: !29, size: 128, offset: 32)
!97 = !DILocalVariable(name: "s", arg: 1, scope: !90, file: !8, line: 50, type: !93)
!98 = !DILocation(line: 50, column: 37, scope: !90)
!99 = !DILocation(line: 51, column: 12, scope: !90)
!100 = !DILocation(line: 51, column: 3, scope: !90)
!101 = distinct !DISubprogram(name: "ex202StructFieldStruct", scope: !8, file: !8, line: 60, type: !102, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!102 = !DISubroutineType(types: !103)
!103 = !{!13, !104}
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s202", file: !8, line: 54, size: 160, elements: !105)
!105 = !{!106, !110}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !104, file: !8, line: 57, baseType: !107, size: 32)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !8, line: 55, size: 32, elements: !108)
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !107, file: !8, line: 56, baseType: !13, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !104, file: !8, line: 58, baseType: !29, size: 128, offset: 32)
!111 = !DILocalVariable(name: "s", arg: 1, scope: !101, file: !8, line: 60, type: !104)
!112 = !DILocation(line: 60, column: 40, scope: !101)
!113 = !DILocation(line: 61, column: 12, scope: !101)
!114 = !DILocation(line: 61, column: 18, scope: !101)
!115 = !DILocation(line: 61, column: 3, scope: !101)
!116 = distinct !DISubprogram(name: "ex203StructFieldArrayFixedLength", scope: !8, file: !8, line: 68, type: !117, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!117 = !DISubroutineType(types: !118)
!118 = !{!13, !119}
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s203", file: !8, line: 64, size: 256, elements: !120)
!120 = !{!121, !125}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !119, file: !8, line: 65, baseType: !122, size: 128)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 4)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !119, file: !8, line: 66, baseType: !29, size: 128, offset: 128)
!126 = !DILocalVariable(name: "s", arg: 1, scope: !116, file: !8, line: 68, type: !119)
!127 = !DILocation(line: 68, column: 50, scope: !116)
!128 = !DILocation(line: 69, column: 12, scope: !116)
!129 = !DILocation(line: 69, column: 10, scope: !116)
!130 = !DILocation(line: 69, column: 21, scope: !116)
!131 = !DILocation(line: 69, column: 19, scope: !116)
!132 = !DILocation(line: 69, column: 17, scope: !116)
!133 = !DILocation(line: 69, column: 3, scope: !116)
!134 = distinct !DISubprogram(name: "ex204StructFieldArrayVariableLength", scope: !8, file: !8, line: 76, type: !135, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!135 = !DISubroutineType(types: !136)
!136 = !{!13, !137}
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s204", file: !8, line: 72, size: 32, elements: !138)
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !137, file: !8, line: 73, baseType: !13, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !137, file: !8, line: 74, baseType: !141, offset: 32)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: -1)
!144 = !DILocalVariable(name: "s", arg: 1, scope: !134, file: !8, line: 76, type: !137)
!145 = !DILocation(line: 76, column: 53, scope: !134)
!146 = !DILocation(line: 77, column: 12, scope: !134)
!147 = !DILocation(line: 77, column: 10, scope: !134)
!148 = !DILocation(line: 77, column: 21, scope: !134)
!149 = !DILocation(line: 77, column: 19, scope: !134)
!150 = !DILocation(line: 77, column: 17, scope: !134)
!151 = !DILocation(line: 77, column: 3, scope: !134)
!152 = distinct !DISubprogram(name: "ex205StructFieldPointerSingleElementValue", scope: !8, file: !8, line: 84, type: !153, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!153 = !DISubroutineType(types: !154)
!154 = !{!13, !155}
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s205", file: !8, line: 80, size: 192, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !155, file: !8, line: 81, baseType: !12, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !155, file: !8, line: 82, baseType: !29, size: 128, offset: 64)
!159 = !DILocalVariable(name: "s", arg: 1, scope: !152, file: !8, line: 84, type: !155)
!160 = !DILocation(line: 84, column: 59, scope: !152)
!161 = !DILocation(line: 85, column: 13, scope: !152)
!162 = !DILocation(line: 85, column: 10, scope: !152)
!163 = !DILocation(line: 85, column: 3, scope: !152)
!164 = distinct !DISubprogram(name: "ex206StructFieldPointerSingleElementInstances", scope: !8, file: !8, line: 93, type: !165, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!165 = !DISubroutineType(types: !166)
!166 = !{!13, !167}
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s206", file: !8, line: 88, size: 256, elements: !168)
!168 = !{!169, !170, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !167, file: !8, line: 89, baseType: !12, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !167, file: !8, line: 90, baseType: !12, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !167, file: !8, line: 91, baseType: !29, size: 128, offset: 128)
!172 = !DILocalVariable(name: "s", arg: 1, scope: !164, file: !8, line: 93, type: !167)
!173 = !DILocation(line: 93, column: 63, scope: !164)
!174 = !DILocation(line: 94, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !164, file: !8, line: 94, column: 7)
!176 = !DILocation(line: 94, column: 11, scope: !175)
!177 = !DILocation(line: 94, column: 19, scope: !175)
!178 = !DILocation(line: 94, column: 24, scope: !175)
!179 = !DILocation(line: 94, column: 26, scope: !175)
!180 = !DILocation(line: 94, column: 7, scope: !164)
!181 = !DILocation(line: 96, column: 5, scope: !182)
!182 = distinct !DILexicalBlock(scope: !175, file: !8, line: 94, column: 35)
!183 = !DILocation(line: 97, column: 16, scope: !184)
!184 = distinct !DILexicalBlock(scope: !175, file: !8, line: 97, column: 14)
!185 = !DILocation(line: 97, column: 23, scope: !184)
!186 = !DILocation(line: 97, column: 18, scope: !184)
!187 = !DILocation(line: 97, column: 14, scope: !175)
!188 = !DILocation(line: 98, column: 15, scope: !189)
!189 = distinct !DILexicalBlock(scope: !184, file: !8, line: 97, column: 26)
!190 = !DILocation(line: 98, column: 12, scope: !189)
!191 = !DILocation(line: 98, column: 22, scope: !189)
!192 = !DILocation(line: 98, column: 19, scope: !189)
!193 = !DILocation(line: 98, column: 17, scope: !189)
!194 = !DILocation(line: 98, column: 5, scope: !189)
!195 = !DILocation(line: 101, column: 15, scope: !196)
!196 = distinct !DILexicalBlock(scope: !184, file: !8, line: 99, column: 10)
!197 = !DILocation(line: 101, column: 12, scope: !196)
!198 = !DILocation(line: 101, column: 22, scope: !196)
!199 = !DILocation(line: 101, column: 19, scope: !196)
!200 = !DILocation(line: 101, column: 17, scope: !196)
!201 = !DILocation(line: 101, column: 5, scope: !196)
!202 = !DILocation(line: 103, column: 1, scope: !164)
!203 = distinct !DISubprogram(name: "ex207StructFieldPointerMultipleElementValues", scope: !8, file: !8, line: 109, type: !204, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!204 = !DISubroutineType(types: !205)
!205 = !{!13, !206}
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s207", file: !8, line: 105, size: 192, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !206, file: !8, line: 106, baseType: !12, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !206, file: !8, line: 107, baseType: !29, size: 128, offset: 64)
!210 = !DILocalVariable(name: "s", arg: 1, scope: !203, file: !8, line: 109, type: !206)
!211 = !DILocation(line: 109, column: 62, scope: !203)
!212 = !DILocation(line: 111, column: 12, scope: !203)
!213 = !DILocation(line: 111, column: 10, scope: !203)
!214 = !DILocation(line: 111, column: 21, scope: !203)
!215 = !DILocation(line: 111, column: 19, scope: !203)
!216 = !DILocation(line: 111, column: 17, scope: !203)
!217 = !DILocation(line: 111, column: 3, scope: !203)
!218 = distinct !DISubprogram(name: "ex208StructFieldPointerFunction", scope: !8, file: !8, line: 118, type: !219, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!219 = !DISubroutineType(types: !220)
!220 = !{!13, !221}
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s208", file: !8, line: 114, size: 192, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !221, file: !8, line: 115, baseType: !83, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !221, file: !8, line: 116, baseType: !29, size: 128, offset: 64)
!225 = !DILocalVariable(name: "s", arg: 1, scope: !218, file: !8, line: 118, type: !221)
!226 = !DILocation(line: 118, column: 49, scope: !218)
!227 = !DILocation(line: 120, column: 12, scope: !218)
!228 = !DILocation(line: 120, column: 10, scope: !218)
!229 = !DILocation(line: 120, column: 3, scope: !218)
!230 = distinct !DISubprogram(name: "ex301ArrayElemInt", scope: !8, file: !8, line: 129, type: !231, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!231 = !DISubroutineType(types: !232)
!232 = !{!13, !233}
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s301", file: !8, line: 125, size: 256, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !233, file: !8, line: 126, baseType: !122, size: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !233, file: !8, line: 127, baseType: !29, size: 128, offset: 128)
!237 = !DILocalVariable(name: "s", arg: 1, scope: !230, file: !8, line: 129, type: !233)
!238 = !DILocation(line: 129, column: 35, scope: !230)
!239 = !DILocation(line: 130, column: 12, scope: !230)
!240 = !DILocation(line: 130, column: 10, scope: !230)
!241 = !DILocation(line: 130, column: 21, scope: !230)
!242 = !DILocation(line: 130, column: 19, scope: !230)
!243 = !DILocation(line: 130, column: 17, scope: !230)
!244 = !DILocation(line: 130, column: 3, scope: !230)
!245 = distinct !DISubprogram(name: "ex302ArrayElemStruct", scope: !8, file: !8, line: 139, type: !246, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!246 = !DISubroutineType(types: !247)
!247 = !{!13, !248}
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s302", file: !8, line: 133, size: 256, elements: !249)
!249 = !{!250, !255}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !248, file: !8, line: 136, baseType: !251, size: 128)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 128, elements: !123)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !8, line: 134, size: 32, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !252, file: !8, line: 135, baseType: !13, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !248, file: !8, line: 137, baseType: !29, size: 128, offset: 128)
!256 = !DILocalVariable(name: "s", arg: 1, scope: !245, file: !8, line: 139, type: !248)
!257 = !DILocation(line: 139, column: 38, scope: !245)
!258 = !DILocation(line: 140, column: 12, scope: !245)
!259 = !DILocation(line: 140, column: 10, scope: !245)
!260 = !DILocation(line: 140, column: 21, scope: !245)
!261 = !DILocation(line: 140, column: 27, scope: !245)
!262 = !DILocation(line: 140, column: 25, scope: !245)
!263 = !DILocation(line: 140, column: 36, scope: !245)
!264 = !DILocation(line: 140, column: 23, scope: !245)
!265 = !DILocation(line: 140, column: 3, scope: !245)
!266 = distinct !DISubprogram(name: "ex303ArrayElemArrayFixedLength", scope: !8, file: !8, line: 146, type: !267, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!267 = !DISubroutineType(types: !268)
!268 = !{!13, !269}
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s303", file: !8, line: 143, size: 512, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !269, file: !8, line: 144, baseType: !272, size: 512)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !273)
!273 = !{!124, !124}
!274 = !DILocalVariable(name: "s", arg: 1, scope: !266, file: !8, line: 146, type: !269)
!275 = !DILocation(line: 146, column: 48, scope: !266)
!276 = !DILocation(line: 147, column: 12, scope: !266)
!277 = !DILocation(line: 147, column: 10, scope: !266)
!278 = !DILocation(line: 147, column: 24, scope: !266)
!279 = !DILocation(line: 147, column: 22, scope: !266)
!280 = !DILocation(line: 147, column: 20, scope: !266)
!281 = !DILocation(line: 147, column: 3, scope: !266)
!282 = distinct !DISubprogram(name: "ex305ArrayElemPointerSingleElementValue", scope: !8, file: !8, line: 155, type: !283, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!283 = !DISubroutineType(types: !284)
!284 = !{!13, !285}
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s305", file: !8, line: 152, size: 256, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !285, file: !8, line: 153, baseType: !288, size: 256)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !123)
!289 = !DILocalVariable(name: "s", arg: 1, scope: !282, file: !8, line: 155, type: !285)
!290 = !DILocation(line: 155, column: 57, scope: !282)
!291 = !DILocation(line: 156, column: 13, scope: !282)
!292 = !DILocation(line: 156, column: 11, scope: !282)
!293 = !DILocation(line: 156, column: 10, scope: !282)
!294 = !DILocation(line: 156, column: 3, scope: !282)
!295 = distinct !DISubprogram(name: "ex306ArrayElemPointerSingleElementInstances", scope: !8, file: !8, line: 162, type: !296, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!296 = !DISubroutineType(types: !297)
!297 = !{!13, !298}
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s306", file: !8, line: 159, size: 256, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !298, file: !8, line: 160, baseType: !288, size: 256)
!301 = !DILocalVariable(name: "s", arg: 1, scope: !295, file: !8, line: 162, type: !298)
!302 = !DILocation(line: 162, column: 61, scope: !295)
!303 = !DILocation(line: 163, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !295, file: !8, line: 163, column: 7)
!305 = !DILocation(line: 163, column: 7, scope: !304)
!306 = !DILocation(line: 163, column: 14, scope: !304)
!307 = !DILocation(line: 163, column: 22, scope: !304)
!308 = !DILocation(line: 163, column: 27, scope: !304)
!309 = !DILocation(line: 163, column: 25, scope: !304)
!310 = !DILocation(line: 163, column: 32, scope: !304)
!311 = !DILocation(line: 163, column: 7, scope: !295)
!312 = !DILocation(line: 165, column: 5, scope: !313)
!313 = distinct !DILexicalBlock(scope: !304, file: !8, line: 163, column: 41)
!314 = !DILocation(line: 166, column: 16, scope: !315)
!315 = distinct !DILexicalBlock(scope: !304, file: !8, line: 166, column: 14)
!316 = !DILocation(line: 166, column: 14, scope: !315)
!317 = !DILocation(line: 166, column: 26, scope: !315)
!318 = !DILocation(line: 166, column: 24, scope: !315)
!319 = !DILocation(line: 166, column: 21, scope: !315)
!320 = !DILocation(line: 166, column: 14, scope: !304)
!321 = !DILocation(line: 167, column: 15, scope: !322)
!322 = distinct !DILexicalBlock(scope: !315, file: !8, line: 166, column: 32)
!323 = !DILocation(line: 167, column: 13, scope: !322)
!324 = !DILocation(line: 167, column: 12, scope: !322)
!325 = !DILocation(line: 167, column: 25, scope: !322)
!326 = !DILocation(line: 167, column: 23, scope: !322)
!327 = !DILocation(line: 167, column: 22, scope: !322)
!328 = !DILocation(line: 167, column: 20, scope: !322)
!329 = !DILocation(line: 167, column: 5, scope: !322)
!330 = !DILocation(line: 170, column: 15, scope: !331)
!331 = distinct !DILexicalBlock(scope: !315, file: !8, line: 168, column: 10)
!332 = !DILocation(line: 170, column: 13, scope: !331)
!333 = !DILocation(line: 170, column: 12, scope: !331)
!334 = !DILocation(line: 170, column: 25, scope: !331)
!335 = !DILocation(line: 170, column: 23, scope: !331)
!336 = !DILocation(line: 170, column: 22, scope: !331)
!337 = !DILocation(line: 170, column: 20, scope: !331)
!338 = !DILocation(line: 170, column: 5, scope: !331)
!339 = !DILocation(line: 172, column: 1, scope: !295)
!340 = distinct !DISubprogram(name: "ex307ArrayElemPointerMultipleElementValues", scope: !8, file: !8, line: 177, type: !341, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!341 = !DISubroutineType(types: !342)
!342 = !{!13, !343}
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s307", file: !8, line: 174, size: 256, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !343, file: !8, line: 175, baseType: !288, size: 256)
!346 = !DILocalVariable(name: "s", arg: 1, scope: !340, file: !8, line: 177, type: !343)
!347 = !DILocation(line: 177, column: 60, scope: !340)
!348 = !DILocation(line: 179, column: 12, scope: !340)
!349 = !DILocation(line: 179, column: 10, scope: !340)
!350 = !DILocation(line: 179, column: 24, scope: !340)
!351 = !DILocation(line: 179, column: 22, scope: !340)
!352 = !DILocation(line: 179, column: 20, scope: !340)
!353 = !DILocation(line: 179, column: 3, scope: !340)
!354 = distinct !DISubprogram(name: "ex308ArrayElemPointerFunction", scope: !8, file: !8, line: 185, type: !355, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!355 = !DISubroutineType(types: !356)
!356 = !{!13, !357}
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s308", file: !8, line: 182, size: 256, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !357, file: !8, line: 183, baseType: !360, size: 256)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 256, elements: !123)
!361 = !DILocalVariable(name: "s", arg: 1, scope: !354, file: !8, line: 185, type: !357)
!362 = !DILocation(line: 185, column: 47, scope: !354)
!363 = !DILocation(line: 187, column: 12, scope: !354)
!364 = !DILocation(line: 187, column: 10, scope: !354)
!365 = !DILocation(line: 187, column: 23, scope: !354)
!366 = !DILocation(line: 187, column: 21, scope: !354)
!367 = !DILocation(line: 187, column: 19, scope: !354)
!368 = !DILocation(line: 187, column: 3, scope: !354)
!369 = distinct !DISubprogram(name: "ex401PointerToInt", scope: !8, file: !8, line: 192, type: !37, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!370 = !DILocalVariable(name: "a", arg: 1, scope: !369, file: !8, line: 192, type: !12)
!371 = !DILocation(line: 192, column: 28, scope: !369)
!372 = !DILocation(line: 193, column: 11, scope: !369)
!373 = !DILocation(line: 193, column: 10, scope: !369)
!374 = !DILocation(line: 193, column: 3, scope: !369)
!375 = distinct !DISubprogram(name: "ex402PointerToStruct", scope: !8, file: !8, line: 199, type: !376, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!376 = !DISubroutineType(types: !377)
!377 = !{!13, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s402", file: !8, line: 196, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !379, file: !8, line: 197, baseType: !13, size: 32)
!382 = !DILocalVariable(name: "s", arg: 1, scope: !375, file: !8, line: 199, type: !378)
!383 = !DILocation(line: 199, column: 39, scope: !375)
!384 = !DILocation(line: 200, column: 10, scope: !375)
!385 = !DILocation(line: 200, column: 13, scope: !375)
!386 = !DILocation(line: 200, column: 3, scope: !375)
!387 = distinct !DISubprogram(name: "ex405PointerToPointerSingleElementValue", scope: !8, file: !8, line: 205, type: !388, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!388 = !DISubroutineType(types: !389)
!389 = !{!13, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!391 = !DILocalVariable(name: "a", arg: 1, scope: !387, file: !8, line: 205, type: !390)
!392 = !DILocation(line: 205, column: 51, scope: !387)
!393 = !DILocation(line: 206, column: 12, scope: !387)
!394 = !DILocation(line: 206, column: 11, scope: !387)
!395 = !DILocation(line: 206, column: 10, scope: !387)
!396 = !DILocation(line: 206, column: 3, scope: !387)
!397 = distinct !DISubprogram(name: "ex406PointerToPointerSingleElementInstances", scope: !8, file: !8, line: 209, type: !398, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!398 = !DISubroutineType(types: !399)
!399 = !{!13, !390, !390}
!400 = !DILocalVariable(name: "a", arg: 1, scope: !397, file: !8, line: 209, type: !390)
!401 = !DILocation(line: 209, column: 55, scope: !397)
!402 = !DILocalVariable(name: "b", arg: 2, scope: !397, file: !8, line: 209, type: !390)
!403 = !DILocation(line: 209, column: 64, scope: !397)
!404 = !DILocation(line: 210, column: 8, scope: !405)
!405 = distinct !DILexicalBlock(scope: !397, file: !8, line: 210, column: 7)
!406 = !DILocation(line: 210, column: 7, scope: !405)
!407 = !DILocation(line: 210, column: 10, scope: !405)
!408 = !DILocation(line: 210, column: 18, scope: !405)
!409 = !DILocation(line: 210, column: 22, scope: !405)
!410 = !DILocation(line: 210, column: 21, scope: !405)
!411 = !DILocation(line: 210, column: 24, scope: !405)
!412 = !DILocation(line: 210, column: 7, scope: !397)
!413 = !DILocation(line: 212, column: 5, scope: !414)
!414 = distinct !DILexicalBlock(scope: !405, file: !8, line: 210, column: 33)
!415 = !DILocation(line: 213, column: 15, scope: !416)
!416 = distinct !DILexicalBlock(scope: !405, file: !8, line: 213, column: 14)
!417 = !DILocation(line: 213, column: 14, scope: !416)
!418 = !DILocation(line: 213, column: 21, scope: !416)
!419 = !DILocation(line: 213, column: 20, scope: !416)
!420 = !DILocation(line: 213, column: 17, scope: !416)
!421 = !DILocation(line: 213, column: 14, scope: !405)
!422 = !DILocation(line: 214, column: 14, scope: !423)
!423 = distinct !DILexicalBlock(scope: !416, file: !8, line: 213, column: 24)
!424 = !DILocation(line: 214, column: 13, scope: !423)
!425 = !DILocation(line: 214, column: 12, scope: !423)
!426 = !DILocation(line: 214, column: 20, scope: !423)
!427 = !DILocation(line: 214, column: 19, scope: !423)
!428 = !DILocation(line: 214, column: 18, scope: !423)
!429 = !DILocation(line: 214, column: 16, scope: !423)
!430 = !DILocation(line: 214, column: 5, scope: !423)
!431 = !DILocation(line: 217, column: 14, scope: !432)
!432 = distinct !DILexicalBlock(scope: !416, file: !8, line: 215, column: 10)
!433 = !DILocation(line: 217, column: 13, scope: !432)
!434 = !DILocation(line: 217, column: 12, scope: !432)
!435 = !DILocation(line: 217, column: 20, scope: !432)
!436 = !DILocation(line: 217, column: 19, scope: !432)
!437 = !DILocation(line: 217, column: 18, scope: !432)
!438 = !DILocation(line: 217, column: 16, scope: !432)
!439 = !DILocation(line: 217, column: 5, scope: !432)
!440 = !DILocation(line: 219, column: 1, scope: !397)
!441 = distinct !DISubprogram(name: "ex407PointerToPointerMultipleElementValues", scope: !8, file: !8, line: 221, type: !388, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!442 = !DILocalVariable(name: "a", arg: 1, scope: !441, file: !8, line: 221, type: !390)
!443 = !DILocation(line: 221, column: 54, scope: !441)
!444 = !DILocation(line: 223, column: 12, scope: !441)
!445 = !DILocation(line: 223, column: 11, scope: !441)
!446 = !DILocation(line: 223, column: 10, scope: !441)
!447 = !DILocation(line: 223, column: 22, scope: !441)
!448 = !DILocation(line: 223, column: 21, scope: !441)
!449 = !DILocation(line: 223, column: 20, scope: !441)
!450 = !DILocation(line: 223, column: 18, scope: !441)
!451 = !DILocation(line: 223, column: 3, scope: !441)
!452 = distinct !DISubprogram(name: "ex408PointerToPointerFunction", scope: !8, file: !8, line: 226, type: !453, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!453 = !DISubroutineType(types: !454)
!454 = !{!13, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!456 = !DILocalVariable(name: "a", arg: 1, scope: !452, file: !8, line: 226, type: !455)
!457 = !DILocation(line: 226, column: 42, scope: !452)
!458 = !DILocation(line: 228, column: 12, scope: !452)
!459 = !DILocation(line: 228, column: 11, scope: !452)
!460 = !DILocation(line: 228, column: 10, scope: !452)
!461 = !DILocation(line: 228, column: 3, scope: !452)
!462 = distinct !DISubprogram(name: "ex501PointerAsArrayOfInt", scope: !8, file: !8, line: 233, type: !37, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!463 = !DILocalVariable(name: "a", arg: 1, scope: !462, file: !8, line: 233, type: !12)
!464 = !DILocation(line: 233, column: 35, scope: !462)
!465 = !DILocation(line: 235, column: 10, scope: !462)
!466 = !DILocation(line: 235, column: 17, scope: !462)
!467 = !DILocation(line: 235, column: 15, scope: !462)
!468 = !DILocation(line: 235, column: 3, scope: !462)
!469 = distinct !DISubprogram(name: "ex502PointerAsArrayOfStruct", scope: !8, file: !8, line: 241, type: !470, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!470 = !DISubroutineType(types: !471)
!471 = !{!13, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s502", file: !8, line: 238, size: 32, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !473, file: !8, line: 239, baseType: !13, size: 32)
!476 = !DILocalVariable(name: "s", arg: 1, scope: !469, file: !8, line: 241, type: !472)
!477 = !DILocation(line: 241, column: 46, scope: !469)
!478 = !DILocation(line: 243, column: 10, scope: !469)
!479 = !DILocation(line: 243, column: 15, scope: !469)
!480 = !DILocation(line: 243, column: 19, scope: !469)
!481 = !DILocation(line: 243, column: 24, scope: !469)
!482 = !DILocation(line: 243, column: 17, scope: !469)
!483 = !DILocation(line: 243, column: 3, scope: !469)
!484 = distinct !DISubprogram(name: "ex505PointerAsArrayOfPointerSingleElementValue", scope: !8, file: !8, line: 248, type: !388, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!485 = !DILocalVariable(name: "a", arg: 1, scope: !484, file: !8, line: 248, type: !390)
!486 = !DILocation(line: 248, column: 58, scope: !484)
!487 = !DILocation(line: 250, column: 11, scope: !484)
!488 = !DILocation(line: 250, column: 10, scope: !484)
!489 = !DILocation(line: 250, column: 3, scope: !484)
!490 = distinct !DISubprogram(name: "ex506PointerAsArrayOfPointerSingleElementInstances", scope: !8, file: !8, line: 253, type: !388, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!491 = !DILocalVariable(name: "a", arg: 1, scope: !490, file: !8, line: 253, type: !390)
!492 = !DILocation(line: 253, column: 62, scope: !490)
!493 = !DILocation(line: 255, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !8, line: 255, column: 7)
!495 = !DILocation(line: 255, column: 12, scope: !494)
!496 = !DILocation(line: 255, column: 20, scope: !494)
!497 = !DILocation(line: 255, column: 23, scope: !494)
!498 = !DILocation(line: 255, column: 28, scope: !494)
!499 = !DILocation(line: 255, column: 7, scope: !490)
!500 = !DILocation(line: 256, column: 5, scope: !501)
!501 = distinct !DILexicalBlock(scope: !494, file: !8, line: 255, column: 37)
!502 = !DILocation(line: 257, column: 14, scope: !503)
!503 = distinct !DILexicalBlock(scope: !494, file: !8, line: 257, column: 14)
!504 = !DILocation(line: 257, column: 22, scope: !503)
!505 = !DILocation(line: 257, column: 19, scope: !503)
!506 = !DILocation(line: 257, column: 14, scope: !494)
!507 = !DILocation(line: 258, column: 13, scope: !508)
!508 = distinct !DILexicalBlock(scope: !503, file: !8, line: 257, column: 28)
!509 = !DILocation(line: 258, column: 12, scope: !508)
!510 = !DILocation(line: 258, column: 21, scope: !508)
!511 = !DILocation(line: 258, column: 20, scope: !508)
!512 = !DILocation(line: 258, column: 18, scope: !508)
!513 = !DILocation(line: 258, column: 5, scope: !508)
!514 = !DILocation(line: 260, column: 13, scope: !515)
!515 = distinct !DILexicalBlock(scope: !503, file: !8, line: 259, column: 10)
!516 = !DILocation(line: 260, column: 12, scope: !515)
!517 = !DILocation(line: 260, column: 21, scope: !515)
!518 = !DILocation(line: 260, column: 20, scope: !515)
!519 = !DILocation(line: 260, column: 18, scope: !515)
!520 = !DILocation(line: 260, column: 5, scope: !515)
!521 = !DILocation(line: 262, column: 1, scope: !490)
!522 = distinct !DISubprogram(name: "ex507PointerAsArrayOfPointerMultipleElementValues", scope: !8, file: !8, line: 264, type: !388, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!523 = !DILocalVariable(name: "a", arg: 1, scope: !522, file: !8, line: 264, type: !390)
!524 = !DILocation(line: 264, column: 61, scope: !522)
!525 = !DILocation(line: 266, column: 11, scope: !522)
!526 = !DILocation(line: 266, column: 10, scope: !522)
!527 = !DILocation(line: 266, column: 19, scope: !522)
!528 = !DILocation(line: 266, column: 18, scope: !522)
!529 = !DILocation(line: 266, column: 16, scope: !522)
!530 = !DILocation(line: 266, column: 3, scope: !522)
!531 = distinct !DISubprogram(name: "ex508PointerAsArrayOfPointerFunction", scope: !8, file: !8, line: 269, type: !453, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!532 = !DILocalVariable(name: "a", arg: 1, scope: !531, file: !8, line: 269, type: !455)
!533 = !DILocation(line: 269, column: 49, scope: !531)
!534 = !DILocation(line: 272, column: 10, scope: !531)
!535 = !DILocation(line: 272, column: 19, scope: !531)
!536 = !DILocation(line: 272, column: 17, scope: !531)
!537 = !DILocation(line: 272, column: 3, scope: !531)
!538 = distinct !DISubprogram(name: "ex601StructWithArrayOfPointers", scope: !8, file: !8, line: 282, type: !539, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!539 = !DISubroutineType(types: !540)
!540 = !{!13, !541}
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s601", file: !8, line: 277, size: 256, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !541, file: !8, line: 280, baseType: !544, size: 256)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !541, file: !8, line: 278, size: 256, elements: !545)
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !544, file: !8, line: 279, baseType: !288, size: 256)
!547 = !DILocalVariable(name: "s", arg: 1, scope: !538, file: !8, line: 282, type: !541)
!548 = !DILocation(line: 282, column: 48, scope: !538)
!549 = !DILocation(line: 283, column: 13, scope: !538)
!550 = !DILocation(line: 283, column: 19, scope: !538)
!551 = !DILocation(line: 283, column: 11, scope: !538)
!552 = !DILocation(line: 283, column: 10, scope: !538)
!553 = !DILocation(line: 283, column: 3, scope: !538)
!554 = distinct !DISubprogram(name: "ex602ArrayOfStructsWithPointer", scope: !8, file: !8, line: 291, type: !555, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!555 = !DISubroutineType(types: !556)
!556 = !{!13, !557}
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s602", file: !8, line: 286, size: 256, elements: !558)
!558 = !{!559}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !557, file: !8, line: 289, baseType: !560, size: 256)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 256, elements: !123)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !557, file: !8, line: 287, size: 64, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !561, file: !8, line: 288, baseType: !12, size: 64)
!564 = !DILocalVariable(name: "s", arg: 1, scope: !554, file: !8, line: 291, type: !557)
!565 = !DILocation(line: 291, column: 48, scope: !554)
!566 = !DILocation(line: 292, column: 13, scope: !554)
!567 = !DILocation(line: 292, column: 11, scope: !554)
!568 = !DILocation(line: 292, column: 22, scope: !554)
!569 = !DILocation(line: 292, column: 10, scope: !554)
!570 = !DILocation(line: 292, column: 3, scope: !554)
!571 = distinct !DISubprogram(name: "ex603PointerArithmetic", scope: !8, file: !8, line: 297, type: !37, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!572 = !DILocalVariable(name: "a", arg: 1, scope: !571, file: !8, line: 297, type: !12)
!573 = !DILocation(line: 297, column: 33, scope: !571)
!574 = !DILocation(line: 299, column: 12, scope: !571)
!575 = !DILocation(line: 299, column: 14, scope: !571)
!576 = !DILocation(line: 299, column: 10, scope: !571)
!577 = !DILocation(line: 299, column: 3, scope: !571)
!578 = distinct !DISubprogram(name: "ex604PointerCast", scope: !8, file: !8, line: 302, type: !579, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!579 = !DISubroutineType(types: !580)
!580 = !{!13, !11}
!581 = !DILocalVariable(name: "a", arg: 1, scope: !578, file: !8, line: 302, type: !11)
!582 = !DILocation(line: 302, column: 28, scope: !578)
!583 = !DILocation(line: 303, column: 18, scope: !578)
!584 = !DILocation(line: 303, column: 11, scope: !578)
!585 = !DILocation(line: 303, column: 10, scope: !578)
!586 = !DILocation(line: 303, column: 3, scope: !578)
!587 = distinct !DISubprogram(name: "ex605PointerFunction", scope: !8, file: !8, line: 306, type: !81, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!588 = !DILocalVariable(name: "a", arg: 1, scope: !587, file: !8, line: 306, type: !83)
!589 = !DILocation(line: 306, column: 32, scope: !587)
!590 = !DILocalVariable(name: "result", scope: !587, file: !8, line: 308, type: !13)
!591 = !DILocation(line: 308, column: 7, scope: !587)
!592 = !DILocation(line: 308, column: 16, scope: !587)
!593 = !DILocation(line: 310, column: 10, scope: !587)
!594 = !DILocation(line: 310, column: 3, scope: !587)
!595 = distinct !DISubprogram(name: "ex606ListLengthLimitedLoop", scope: !8, file: !8, line: 319, type: !596, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!596 = !DISubroutineType(types: !597)
!597 = !{!13, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s606", file: !8, line: 315, size: 128, elements: !600)
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !599, file: !8, line: 316, baseType: !13, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !599, file: !8, line: 317, baseType: !598, size: 64, offset: 64)
!603 = !DILocalVariable(name: "s", arg: 1, scope: !595, file: !8, line: 319, type: !598)
!604 = !DILocation(line: 319, column: 45, scope: !595)
!605 = !DILocalVariable(name: "sum", scope: !595, file: !8, line: 320, type: !13)
!606 = !DILocation(line: 320, column: 7, scope: !595)
!607 = !DILocalVariable(name: "i", scope: !595, file: !8, line: 321, type: !13)
!608 = !DILocation(line: 321, column: 7, scope: !595)
!609 = !DILocation(line: 322, column: 10, scope: !610)
!610 = distinct !DILexicalBlock(scope: !595, file: !8, line: 322, column: 3)
!611 = !DILocation(line: 322, column: 8, scope: !610)
!612 = !DILocation(line: 322, column: 15, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !8, line: 322, column: 3)
!614 = !DILocation(line: 322, column: 17, scope: !613)
!615 = !DILocation(line: 322, column: 3, scope: !610)
!616 = !DILocation(line: 323, column: 12, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !8, line: 322, column: 27)
!618 = !DILocation(line: 323, column: 15, scope: !617)
!619 = !DILocation(line: 323, column: 9, scope: !617)
!620 = !DILocation(line: 324, column: 10, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !8, line: 324, column: 9)
!622 = !DILocation(line: 324, column: 13, scope: !621)
!623 = !DILocation(line: 324, column: 9, scope: !617)
!624 = !DILocation(line: 325, column: 7, scope: !621)
!625 = !DILocation(line: 326, column: 9, scope: !617)
!626 = !DILocation(line: 326, column: 12, scope: !617)
!627 = !DILocation(line: 326, column: 7, scope: !617)
!628 = !DILocation(line: 327, column: 3, scope: !617)
!629 = !DILocation(line: 322, column: 23, scope: !613)
!630 = !DILocation(line: 322, column: 3, scope: !613)
!631 = distinct !{!631, !615, !632, !633}
!632 = !DILocation(line: 327, column: 3, scope: !610)
!633 = !{!"llvm.loop.mustprogress"}
!634 = !DILocation(line: 328, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !595, file: !8, line: 328, column: 7)
!636 = !DILocation(line: 328, column: 9, scope: !635)
!637 = !DILocation(line: 328, column: 7, scope: !595)
!638 = !DILocation(line: 329, column: 5, scope: !635)
!639 = !DILocation(line: 330, column: 10, scope: !595)
!640 = !DILocation(line: 330, column: 3, scope: !595)
!641 = !DILocation(line: 331, column: 1, scope: !595)
!642 = distinct !DISubprogram(name: "ex607ListLengthUnlimitedLoop", scope: !8, file: !8, line: 337, type: !643, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!643 = !DISubroutineType(types: !644)
!644 = !{!13, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s607", file: !8, line: 333, size: 128, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !646, file: !8, line: 334, baseType: !13, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !646, file: !8, line: 335, baseType: !645, size: 64, offset: 64)
!650 = !DILocalVariable(name: "s", arg: 1, scope: !642, file: !8, line: 337, type: !645)
!651 = !DILocation(line: 337, column: 47, scope: !642)
!652 = !DILocalVariable(name: "sum", scope: !642, file: !8, line: 338, type: !13)
!653 = !DILocation(line: 338, column: 7, scope: !642)
!654 = !DILocalVariable(name: "i", scope: !642, file: !8, line: 339, type: !13)
!655 = !DILocation(line: 339, column: 7, scope: !642)
!656 = !DILocation(line: 340, column: 3, scope: !642)
!657 = !DILocation(line: 340, column: 10, scope: !642)
!658 = !DILocation(line: 341, column: 12, scope: !659)
!659 = distinct !DILexicalBlock(scope: !642, file: !8, line: 340, column: 13)
!660 = !DILocation(line: 341, column: 15, scope: !659)
!661 = !DILocation(line: 341, column: 9, scope: !659)
!662 = !DILocation(line: 342, column: 9, scope: !659)
!663 = !DILocation(line: 342, column: 12, scope: !659)
!664 = !DILocation(line: 342, column: 7, scope: !659)
!665 = !DILocation(line: 343, column: 5, scope: !659)
!666 = distinct !{!666, !656, !667, !633}
!667 = !DILocation(line: 344, column: 3, scope: !642)
!668 = !DILocation(line: 345, column: 7, scope: !669)
!669 = distinct !DILexicalBlock(scope: !642, file: !8, line: 345, column: 7)
!670 = !DILocation(line: 345, column: 9, scope: !669)
!671 = !DILocation(line: 345, column: 7, scope: !642)
!672 = !DILocation(line: 346, column: 5, scope: !669)
!673 = !DILocation(line: 347, column: 10, scope: !642)
!674 = !DILocation(line: 347, column: 3, scope: !642)
!675 = !DILocation(line: 348, column: 1, scope: !642)
