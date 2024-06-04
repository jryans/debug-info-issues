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
%struct.s507 = type { i32, %struct.s507* }

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
define i32 @ex107PointerMultipleElementValues(i32* %a) #0 !dbg !80 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !81, metadata !DIExpression()), !dbg !82
  %0 = load i32*, i32** %a.addr, align 8, !dbg !83
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !83
  %1 = load i32, i32* %arrayidx, align 4, !dbg !83
  %2 = load i32*, i32** %a.addr, align 8, !dbg !84
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !84
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !84
  %add = add nsw i32 %1, %3, !dbg !85
  ret i32 %add, !dbg !86
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex108PointerFunction(i32 (...)* %a) #0 !dbg !87 {
entry:
  %a.addr = alloca i32 (...)*, align 8
  store i32 (...)* %a, i32 (...)** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)** %a.addr, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = load i32 (...)*, i32 (...)** %a.addr, align 8, !dbg !95
  %call = call i32 (...) %0(), !dbg !95
  ret i32 %call, !dbg !96
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex201StructFieldInt(%struct.s201* byval(%struct.s201) align 8 %s) #0 !dbg !97 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s201* %s, metadata !104, metadata !DIExpression()), !dbg !105
  %a = getelementptr inbounds %struct.s201, %struct.s201* %s, i32 0, i32 0, !dbg !106
  %0 = load i32, i32* %a, align 8, !dbg !106
  ret i32 %0, !dbg !107
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex202StructFieldStruct(%struct.s202* byval(%struct.s202) align 8 %s) #0 !dbg !108 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s202* %s, metadata !118, metadata !DIExpression()), !dbg !119
  %inner = getelementptr inbounds %struct.s202, %struct.s202* %s, i32 0, i32 0, !dbg !120
  %a = getelementptr inbounds %struct.anon, %struct.anon* %inner, i32 0, i32 0, !dbg !121
  %0 = load i32, i32* %a, align 8, !dbg !121
  ret i32 %0, !dbg !122
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex203StructFieldArrayFixedLength(%struct.s203* byval(%struct.s203) align 8 %s) #0 !dbg !123 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s203* %s, metadata !133, metadata !DIExpression()), !dbg !134
  %a = getelementptr inbounds %struct.s203, %struct.s203* %s, i32 0, i32 0, !dbg !135
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0, !dbg !136
  %0 = load i32, i32* %arrayidx, align 8, !dbg !136
  %a1 = getelementptr inbounds %struct.s203, %struct.s203* %s, i32 0, i32 0, !dbg !137
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %a1, i64 0, i64 3, !dbg !138
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !138
  %add = add nsw i32 %0, %1, !dbg !139
  ret i32 %add, !dbg !140
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex204StructFieldArrayVariableLength(%struct.s204* byval(%struct.s204) align 8 %s) #0 !dbg !141 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s204* %s, metadata !151, metadata !DIExpression()), !dbg !152
  %a = getelementptr inbounds %struct.s204, %struct.s204* %s, i32 0, i32 1, !dbg !153
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* %a, i64 0, i64 0, !dbg !154
  %0 = load i32, i32* %arrayidx, align 4, !dbg !154
  %a1 = getelementptr inbounds %struct.s204, %struct.s204* %s, i32 0, i32 1, !dbg !155
  %arrayidx2 = getelementptr inbounds [0 x i32], [0 x i32]* %a1, i64 0, i64 3, !dbg !156
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !156
  %add = add nsw i32 %0, %1, !dbg !157
  ret i32 %add, !dbg !158
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex205StructFieldPointerSingleElementValue(%struct.s205* byval(%struct.s205) align 8 %s) #0 !dbg !159 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s205* %s, metadata !166, metadata !DIExpression()), !dbg !167
  %a = getelementptr inbounds %struct.s205, %struct.s205* %s, i32 0, i32 0, !dbg !168
  %0 = load i32*, i32** %a, align 8, !dbg !168
  %1 = load i32, i32* %0, align 4, !dbg !169
  ret i32 %1, !dbg !170
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex206StructFieldPointerSingleElementInstances(%struct.s206* byval(%struct.s206) align 8 %s) #0 !dbg !171 {
entry:
  %retval = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.s206* %s, metadata !179, metadata !DIExpression()), !dbg !180
  %a = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !181
  %0 = load i32*, i32** %a, align 8, !dbg !181
  %cmp = icmp eq i32* %0, null, !dbg !183
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !184

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !185
  %1 = load i32*, i32** %b, align 8, !dbg !185
  %cmp1 = icmp eq i32* %1, null, !dbg !186
  br i1 %cmp1, label %if.then, label %if.else, !dbg !187

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !188
  br label %return, !dbg !188

if.else:                                          ; preds = %lor.lhs.false
  %a2 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !190
  %2 = load i32*, i32** %a2, align 8, !dbg !190
  %b3 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !192
  %3 = load i32*, i32** %b3, align 8, !dbg !192
  %cmp4 = icmp ne i32* %2, %3, !dbg !193
  br i1 %cmp4, label %if.then5, label %if.else8, !dbg !194

if.then5:                                         ; preds = %if.else
  %a6 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !195
  %4 = load i32*, i32** %a6, align 8, !dbg !195
  %5 = load i32, i32* %4, align 4, !dbg !197
  %b7 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !198
  %6 = load i32*, i32** %b7, align 8, !dbg !198
  %7 = load i32, i32* %6, align 4, !dbg !199
  %add = add nsw i32 %5, %7, !dbg !200
  store i32 %add, i32* %retval, align 4, !dbg !201
  br label %return, !dbg !201

if.else8:                                         ; preds = %if.else
  %a9 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !202
  %8 = load i32*, i32** %a9, align 8, !dbg !202
  %9 = load i32, i32* %8, align 4, !dbg !204
  %b10 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !205
  %10 = load i32*, i32** %b10, align 8, !dbg !205
  %11 = load i32, i32* %10, align 4, !dbg !206
  %add11 = add nsw i32 %9, %11, !dbg !207
  store i32 %add11, i32* %retval, align 4, !dbg !208
  br label %return, !dbg !208

return:                                           ; preds = %if.else8, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !209
  ret i32 %12, !dbg !209
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex207StructFieldPointerMultipleElementValues(%struct.s207* byval(%struct.s207) align 8 %s) #0 !dbg !210 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s207* %s, metadata !217, metadata !DIExpression()), !dbg !218
  %a = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !219
  %0 = load i32*, i32** %a, align 8, !dbg !219
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !220
  %1 = load i32, i32* %arrayidx, align 4, !dbg !220
  %a1 = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !221
  %2 = load i32*, i32** %a1, align 8, !dbg !221
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !222
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !222
  %add = add nsw i32 %1, %3, !dbg !223
  ret i32 %add, !dbg !224
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex208StructFieldPointerFunction(%struct.s208* byval(%struct.s208) align 8 %s) #0 !dbg !225 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s208* %s, metadata !232, metadata !DIExpression()), !dbg !233
  %a = getelementptr inbounds %struct.s208, %struct.s208* %s, i32 0, i32 0, !dbg !234
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !234
  %call = call i32 (...) %0(), !dbg !235
  ret i32 %call, !dbg !236
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex301ArrayElemInt(%struct.s301* byval(%struct.s301) align 8 %s) #0 !dbg !237 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s301* %s, metadata !244, metadata !DIExpression()), !dbg !245
  %a = getelementptr inbounds %struct.s301, %struct.s301* %s, i32 0, i32 0, !dbg !246
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0, !dbg !247
  %0 = load i32, i32* %arrayidx, align 8, !dbg !247
  %a1 = getelementptr inbounds %struct.s301, %struct.s301* %s, i32 0, i32 0, !dbg !248
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %a1, i64 0, i64 3, !dbg !249
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !249
  %add = add nsw i32 %0, %1, !dbg !250
  ret i32 %add, !dbg !251
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex302ArrayElemStruct(%struct.s302* byval(%struct.s302) align 8 %s) #0 !dbg !252 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s302* %s, metadata !263, metadata !DIExpression()), !dbg !264
  %inner = getelementptr inbounds %struct.s302, %struct.s302* %s, i32 0, i32 0, !dbg !265
  %arrayidx = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* %inner, i64 0, i64 0, !dbg !266
  %a = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0, !dbg !267
  %0 = load i32, i32* %a, align 8, !dbg !267
  %inner1 = getelementptr inbounds %struct.s302, %struct.s302* %s, i32 0, i32 0, !dbg !268
  %arrayidx2 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* %inner1, i64 0, i64 3, !dbg !269
  %a3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx2, i32 0, i32 0, !dbg !270
  %1 = load i32, i32* %a3, align 4, !dbg !270
  %add = add nsw i32 %0, %1, !dbg !271
  ret i32 %add, !dbg !272
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex303ArrayElemArrayFixedLength(%struct.s303* byval(%struct.s303) align 8 %s) #0 !dbg !273 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s303* %s, metadata !281, metadata !DIExpression()), !dbg !282
  %a = getelementptr inbounds %struct.s303, %struct.s303* %s, i32 0, i32 0, !dbg !283
  %arrayidx = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %a, i64 0, i64 0, !dbg !284
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 0, !dbg !284
  %0 = load i32, i32* %arrayidx1, align 8, !dbg !284
  %a2 = getelementptr inbounds %struct.s303, %struct.s303* %s, i32 0, i32 0, !dbg !285
  %arrayidx3 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %a2, i64 0, i64 3, !dbg !286
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx3, i64 0, i64 3, !dbg !286
  %1 = load i32, i32* %arrayidx4, align 4, !dbg !286
  %add = add nsw i32 %0, %1, !dbg !287
  ret i32 %add, !dbg !288
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex305ArrayElemPointerSingleElementValue(%struct.s305* byval(%struct.s305) align 8 %s) #0 !dbg !289 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s305* %s, metadata !296, metadata !DIExpression()), !dbg !297
  %a = getelementptr inbounds %struct.s305, %struct.s305* %s, i32 0, i32 0, !dbg !298
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !299
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !299
  %1 = load i32, i32* %0, align 4, !dbg !300
  ret i32 %1, !dbg !301
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex306ArrayElemPointerSingleElementInstances(%struct.s306* byval(%struct.s306) align 8 %s) #0 !dbg !302 {
entry:
  %retval = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.s306* %s, metadata !308, metadata !DIExpression()), !dbg !309
  %a = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !310
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !312
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !312
  %cmp = icmp eq i32* %0, null, !dbg !313
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !314

lor.lhs.false:                                    ; preds = %entry
  %a1 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !315
  %arrayidx2 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a1, i64 0, i64 3, !dbg !316
  %1 = load i32*, i32** %arrayidx2, align 8, !dbg !316
  %cmp3 = icmp eq i32* %1, null, !dbg !317
  br i1 %cmp3, label %if.then, label %if.else, !dbg !318

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !319
  br label %return, !dbg !319

if.else:                                          ; preds = %lor.lhs.false
  %a4 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !321
  %arrayidx5 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a4, i64 0, i64 0, !dbg !323
  %2 = load i32*, i32** %arrayidx5, align 8, !dbg !323
  %a6 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !324
  %arrayidx7 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a6, i64 0, i64 3, !dbg !325
  %3 = load i32*, i32** %arrayidx7, align 8, !dbg !325
  %cmp8 = icmp ne i32* %2, %3, !dbg !326
  br i1 %cmp8, label %if.then9, label %if.else14, !dbg !327

if.then9:                                         ; preds = %if.else
  %a10 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !328
  %arrayidx11 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a10, i64 0, i64 0, !dbg !330
  %4 = load i32*, i32** %arrayidx11, align 8, !dbg !330
  %5 = load i32, i32* %4, align 4, !dbg !331
  %a12 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !332
  %arrayidx13 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a12, i64 0, i64 3, !dbg !333
  %6 = load i32*, i32** %arrayidx13, align 8, !dbg !333
  %7 = load i32, i32* %6, align 4, !dbg !334
  %add = add nsw i32 %5, %7, !dbg !335
  store i32 %add, i32* %retval, align 4, !dbg !336
  br label %return, !dbg !336

if.else14:                                        ; preds = %if.else
  %a15 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !337
  %arrayidx16 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a15, i64 0, i64 0, !dbg !339
  %8 = load i32*, i32** %arrayidx16, align 8, !dbg !339
  %9 = load i32, i32* %8, align 4, !dbg !340
  %a17 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !341
  %arrayidx18 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a17, i64 0, i64 3, !dbg !342
  %10 = load i32*, i32** %arrayidx18, align 8, !dbg !342
  %11 = load i32, i32* %10, align 4, !dbg !343
  %add19 = add nsw i32 %9, %11, !dbg !344
  store i32 %add19, i32* %retval, align 4, !dbg !345
  br label %return, !dbg !345

return:                                           ; preds = %if.else14, %if.then9, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !346
  ret i32 %12, !dbg !346
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex307ArrayElemPointerMultipleElementValues(%struct.s307* byval(%struct.s307) align 8 %s) #0 !dbg !347 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s307* %s, metadata !353, metadata !DIExpression()), !dbg !354
  %a = getelementptr inbounds %struct.s307, %struct.s307* %s, i32 0, i32 0, !dbg !355
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !356
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !356
  %arrayidx1 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !356
  %1 = load i32, i32* %arrayidx1, align 4, !dbg !356
  %a2 = getelementptr inbounds %struct.s307, %struct.s307* %s, i32 0, i32 0, !dbg !357
  %arrayidx3 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a2, i64 0, i64 0, !dbg !358
  %2 = load i32*, i32** %arrayidx3, align 8, !dbg !358
  %arrayidx4 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !358
  %3 = load i32, i32* %arrayidx4, align 4, !dbg !358
  %add = add nsw i32 %1, %3, !dbg !359
  ret i32 %add, !dbg !360
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex308ArrayElemPointerFunction(%struct.s308* byval(%struct.s308) align 8 %s) #0 !dbg !361 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s308* %s, metadata !368, metadata !DIExpression()), !dbg !369
  %a = getelementptr inbounds %struct.s308, %struct.s308* %s, i32 0, i32 0, !dbg !370
  %arrayidx = getelementptr inbounds [4 x i32 (...)*], [4 x i32 (...)*]* %a, i64 0, i64 0, !dbg !371
  %0 = load i32 (...)*, i32 (...)** %arrayidx, align 8, !dbg !371
  %call = call i32 (...) %0(), !dbg !371
  %a1 = getelementptr inbounds %struct.s308, %struct.s308* %s, i32 0, i32 0, !dbg !372
  %arrayidx2 = getelementptr inbounds [4 x i32 (...)*], [4 x i32 (...)*]* %a1, i64 0, i64 3, !dbg !373
  %1 = load i32 (...)*, i32 (...)** %arrayidx2, align 8, !dbg !373
  %call3 = call i32 (...) %1(), !dbg !373
  %add = add nsw i32 %call, %call3, !dbg !374
  ret i32 %add, !dbg !375
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex401PointerToInt(i32* %a) #0 !dbg !376 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load i32*, i32** %a.addr, align 8, !dbg !379
  %1 = load i32, i32* %0, align 4, !dbg !380
  ret i32 %1, !dbg !381
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex402PointerToStruct(%struct.s402* %s) #0 !dbg !382 {
entry:
  %s.addr = alloca %struct.s402*, align 8
  store %struct.s402* %s, %struct.s402** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s402** %s.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load %struct.s402*, %struct.s402** %s.addr, align 8, !dbg !391
  %a = getelementptr inbounds %struct.s402, %struct.s402* %0, i32 0, i32 0, !dbg !392
  %1 = load i32, i32* %a, align 4, !dbg !392
  ret i32 %1, !dbg !393
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex405PointerToPointerSingleElementValue(i32** %a) #0 !dbg !394 {
entry:
  %a.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !400
  %1 = load i32*, i32** %0, align 8, !dbg !401
  %2 = load i32, i32* %1, align 4, !dbg !402
  ret i32 %2, !dbg !403
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex406PointerToPointerSingleElementInstances(i32** %a, i32** %b) #0 !dbg !404 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !407, metadata !DIExpression()), !dbg !408
  store i32** %b, i32*** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !411
  %1 = load i32*, i32** %0, align 8, !dbg !413
  %cmp = icmp eq i32* %1, null, !dbg !414
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !415

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32**, i32*** %b.addr, align 8, !dbg !416
  %3 = load i32*, i32** %2, align 8, !dbg !417
  %cmp1 = icmp eq i32* %3, null, !dbg !418
  br i1 %cmp1, label %if.then, label %if.else, !dbg !419

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !420
  br label %return, !dbg !420

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32**, i32*** %a.addr, align 8, !dbg !422
  %5 = load i32*, i32** %4, align 8, !dbg !424
  %6 = load i32**, i32*** %b.addr, align 8, !dbg !425
  %7 = load i32*, i32** %6, align 8, !dbg !426
  %cmp2 = icmp ne i32* %5, %7, !dbg !427
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !428

if.then3:                                         ; preds = %if.else
  %8 = load i32**, i32*** %a.addr, align 8, !dbg !429
  %9 = load i32*, i32** %8, align 8, !dbg !431
  %10 = load i32, i32* %9, align 4, !dbg !432
  %11 = load i32**, i32*** %b.addr, align 8, !dbg !433
  %12 = load i32*, i32** %11, align 8, !dbg !434
  %13 = load i32, i32* %12, align 4, !dbg !435
  %add = add nsw i32 %10, %13, !dbg !436
  store i32 %add, i32* %retval, align 4, !dbg !437
  br label %return, !dbg !437

if.else4:                                         ; preds = %if.else
  %14 = load i32**, i32*** %a.addr, align 8, !dbg !438
  %15 = load i32*, i32** %14, align 8, !dbg !440
  %16 = load i32, i32* %15, align 4, !dbg !441
  %17 = load i32**, i32*** %b.addr, align 8, !dbg !442
  %18 = load i32*, i32** %17, align 8, !dbg !443
  %19 = load i32, i32* %18, align 4, !dbg !444
  %add5 = add nsw i32 %16, %19, !dbg !445
  store i32 %add5, i32* %retval, align 4, !dbg !446
  br label %return, !dbg !446

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !447
  ret i32 %20, !dbg !447
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex407PointerToPointerMultipleElementValues(i32** %a) #0 !dbg !448 {
entry:
  %a.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !451
  %1 = load i32*, i32** %0, align 8, !dbg !452
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0, !dbg !453
  %2 = load i32, i32* %arrayidx, align 4, !dbg !453
  %3 = load i32**, i32*** %a.addr, align 8, !dbg !454
  %4 = load i32*, i32** %3, align 8, !dbg !455
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 3, !dbg !456
  %5 = load i32, i32* %arrayidx1, align 4, !dbg !456
  %add = add nsw i32 %2, %5, !dbg !457
  ret i32 %add, !dbg !458
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex408PointerToPointerFunction(i32 (...)** %a) #0 !dbg !459 {
entry:
  %a.addr = alloca i32 (...)**, align 8
  store i32 (...)** %a, i32 (...)*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)*** %a.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load i32 (...)**, i32 (...)*** %a.addr, align 8, !dbg !465
  %1 = load i32 (...)*, i32 (...)** %0, align 8, !dbg !466
  %call = call i32 (...) %1(), !dbg !467
  ret i32 %call, !dbg !468
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex501StructWithArrayOfPointers(%struct.s501* byval(%struct.s501) align 8 %s) #0 !dbg !469 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s501* %s, metadata !478, metadata !DIExpression()), !dbg !479
  %inner = getelementptr inbounds %struct.s501, %struct.s501* %s, i32 0, i32 0, !dbg !480
  %a = getelementptr inbounds %struct.anon.1, %struct.anon.1* %inner, i32 0, i32 0, !dbg !481
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !482
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !482
  %1 = load i32, i32* %0, align 4, !dbg !483
  ret i32 %1, !dbg !484
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex502ArrayOfStructsWithPointer(%struct.s502* byval(%struct.s502) align 8 %s) #0 !dbg !485 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s502* %s, metadata !495, metadata !DIExpression()), !dbg !496
  %inner = getelementptr inbounds %struct.s502, %struct.s502* %s, i32 0, i32 0, !dbg !497
  %arrayidx = getelementptr inbounds [4 x %struct.anon.2], [4 x %struct.anon.2]* %inner, i64 0, i64 0, !dbg !498
  %a = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx, i32 0, i32 0, !dbg !499
  %0 = load i32*, i32** %a, align 8, !dbg !499
  %1 = load i32, i32* %0, align 4, !dbg !500
  ret i32 %1, !dbg !501
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex503PointerArithmetic(i32* %a) #0 !dbg !502 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !503, metadata !DIExpression()), !dbg !504
  %0 = load i32*, i32** %a.addr, align 8, !dbg !505
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 3, !dbg !506
  %1 = load i32, i32* %add.ptr, align 4, !dbg !507
  ret i32 %1, !dbg !508
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex504PointerCast(i8* %a) #0 !dbg !509 {
entry:
  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !512, metadata !DIExpression()), !dbg !513
  %0 = load i8*, i8** %a.addr, align 8, !dbg !514
  %1 = bitcast i8* %0 to i32*, !dbg !515
  %2 = load i32, i32* %1, align 4, !dbg !516
  ret i32 %2, !dbg !517
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex505PointerFunction(i32 (...)* %a) #0 !dbg !518 {
entry:
  %a.addr = alloca i32 (...)*, align 8
  %result = alloca i32, align 4
  store i32 (...)* %a, i32 (...)** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)** %a.addr, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata i32* %result, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load i32 (...)*, i32 (...)** %a.addr, align 8, !dbg !523
  %call = call i32 (...) %0(), !dbg !523
  store i32 %call, i32* %result, align 4, !dbg !522
  %1 = load i32, i32* %result, align 4, !dbg !524
  ret i32 %1, !dbg !525
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex506ListLengthLimitedLoop(%struct.s506* %s) #0 !dbg !526 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.s506*, align 8
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.s506* %s, %struct.s506** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s506** %s.addr, metadata !534, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !536, metadata !DIExpression()), !dbg !537
  store i32 0, i32* %sum, align 4, !dbg !537
  call void @llvm.dbg.declare(metadata i32* %i, metadata !538, metadata !DIExpression()), !dbg !539
  store i32 0, i32* %i, align 4, !dbg !540
  br label %for.cond, !dbg !542

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !543
  %cmp = icmp slt i32 %0, 4, !dbg !545
  br i1 %cmp, label %for.body, label %for.end, !dbg !546

for.body:                                         ; preds = %for.cond
  %1 = load %struct.s506*, %struct.s506** %s.addr, align 8, !dbg !547
  %a = getelementptr inbounds %struct.s506, %struct.s506* %1, i32 0, i32 0, !dbg !549
  %2 = load i32, i32* %a, align 8, !dbg !549
  %3 = load i32, i32* %sum, align 4, !dbg !550
  %add = add nsw i32 %3, %2, !dbg !550
  store i32 %add, i32* %sum, align 4, !dbg !550
  %4 = load %struct.s506*, %struct.s506** %s.addr, align 8, !dbg !551
  %n = getelementptr inbounds %struct.s506, %struct.s506* %4, i32 0, i32 1, !dbg !553
  %5 = load %struct.s506*, %struct.s506** %n, align 8, !dbg !553
  %tobool = icmp ne %struct.s506* %5, null, !dbg !551
  br i1 %tobool, label %if.end, label %if.then, !dbg !554

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !555

if.end:                                           ; preds = %for.body
  %6 = load %struct.s506*, %struct.s506** %s.addr, align 8, !dbg !556
  %n1 = getelementptr inbounds %struct.s506, %struct.s506* %6, i32 0, i32 1, !dbg !557
  %7 = load %struct.s506*, %struct.s506** %n1, align 8, !dbg !557
  store %struct.s506* %7, %struct.s506** %s.addr, align 8, !dbg !558
  br label %for.inc, !dbg !559

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !560
  %inc = add nsw i32 %8, 1, !dbg !560
  store i32 %inc, i32* %i, align 4, !dbg !560
  br label %for.cond, !dbg !561, !llvm.loop !562

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !565
  %cmp2 = icmp eq i32 %9, 4, !dbg !567
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !568

if.then3:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !569
  br label %return, !dbg !569

if.end4:                                          ; preds = %for.end
  %10 = load i32, i32* %sum, align 4, !dbg !570
  store i32 %10, i32* %retval, align 4, !dbg !571
  br label %return, !dbg !571

return:                                           ; preds = %if.end4, %if.then3
  %11 = load i32, i32* %retval, align 4, !dbg !572
  ret i32 %11, !dbg !572
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex507ListLengthUnlimitedLoop(%struct.s507* %s) #0 !dbg !573 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.s507*, align 8
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.s507* %s, %struct.s507** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s507** %s.addr, metadata !581, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !583, metadata !DIExpression()), !dbg !584
  store i32 0, i32* %sum, align 4, !dbg !584
  call void @llvm.dbg.declare(metadata i32* %i, metadata !585, metadata !DIExpression()), !dbg !586
  store i32 0, i32* %i, align 4, !dbg !586
  br label %while.cond, !dbg !587

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.s507*, %struct.s507** %s.addr, align 8, !dbg !588
  %tobool = icmp ne %struct.s507* %0, null, !dbg !587
  br i1 %tobool, label %while.body, label %while.end, !dbg !587

while.body:                                       ; preds = %while.cond
  %1 = load %struct.s507*, %struct.s507** %s.addr, align 8, !dbg !589
  %a = getelementptr inbounds %struct.s507, %struct.s507* %1, i32 0, i32 0, !dbg !591
  %2 = load i32, i32* %a, align 8, !dbg !591
  %3 = load i32, i32* %sum, align 4, !dbg !592
  %add = add nsw i32 %3, %2, !dbg !592
  store i32 %add, i32* %sum, align 4, !dbg !592
  %4 = load %struct.s507*, %struct.s507** %s.addr, align 8, !dbg !593
  %n = getelementptr inbounds %struct.s507, %struct.s507* %4, i32 0, i32 1, !dbg !594
  %5 = load %struct.s507*, %struct.s507** %n, align 8, !dbg !594
  store %struct.s507* %5, %struct.s507** %s.addr, align 8, !dbg !595
  %6 = load i32, i32* %i, align 4, !dbg !596
  %inc = add nsw i32 %6, 1, !dbg !596
  store i32 %inc, i32* %i, align 4, !dbg !596
  br label %while.cond, !dbg !587, !llvm.loop !597

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %i, align 4, !dbg !599
  %cmp = icmp eq i32 %7, 4, !dbg !601
  br i1 %cmp, label %if.then, label %if.end, !dbg !602

if.then:                                          ; preds = %while.end
  store i32 0, i32* %retval, align 4, !dbg !603
  br label %return, !dbg !603

if.end:                                           ; preds = %while.end
  %8 = load i32, i32* %sum, align 4, !dbg !604
  store i32 %8, i32* %retval, align 4, !dbg !605
  br label %return, !dbg !605

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !606
  ret i32 %9, !dbg !606
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
!80 = distinct !DISubprogram(name: "ex107PointerMultipleElementValues", scope: !8, file: !8, line: 37, type: !37, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!81 = !DILocalVariable(name: "a", arg: 1, scope: !80, file: !8, line: 37, type: !12)
!82 = !DILocation(line: 37, column: 44, scope: !80)
!83 = !DILocation(line: 39, column: 10, scope: !80)
!84 = !DILocation(line: 39, column: 17, scope: !80)
!85 = !DILocation(line: 39, column: 15, scope: !80)
!86 = !DILocation(line: 39, column: 3, scope: !80)
!87 = distinct !DISubprogram(name: "ex108PointerFunction", scope: !8, file: !8, line: 42, type: !88, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!88 = !DISubroutineType(types: !89)
!89 = !{!13, !90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!13, null}
!93 = !DILocalVariable(name: "a", arg: 1, scope: !87, file: !8, line: 42, type: !90)
!94 = !DILocation(line: 42, column: 32, scope: !87)
!95 = !DILocation(line: 44, column: 10, scope: !87)
!96 = !DILocation(line: 44, column: 3, scope: !87)
!97 = distinct !DISubprogram(name: "ex201StructFieldInt", scope: !8, file: !8, line: 53, type: !98, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!98 = !DISubroutineType(types: !99)
!99 = !{!13, !100}
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s201", file: !8, line: 49, size: 160, elements: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !100, file: !8, line: 50, baseType: !13, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !100, file: !8, line: 51, baseType: !29, size: 128, offset: 32)
!104 = !DILocalVariable(name: "s", arg: 1, scope: !97, file: !8, line: 53, type: !100)
!105 = !DILocation(line: 53, column: 37, scope: !97)
!106 = !DILocation(line: 54, column: 12, scope: !97)
!107 = !DILocation(line: 54, column: 3, scope: !97)
!108 = distinct !DISubprogram(name: "ex202StructFieldStruct", scope: !8, file: !8, line: 63, type: !109, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!109 = !DISubroutineType(types: !110)
!110 = !{!13, !111}
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s202", file: !8, line: 57, size: 160, elements: !112)
!112 = !{!113, !117}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !111, file: !8, line: 60, baseType: !114, size: 32)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !111, file: !8, line: 58, size: 32, elements: !115)
!115 = !{!116}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !114, file: !8, line: 59, baseType: !13, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !111, file: !8, line: 61, baseType: !29, size: 128, offset: 32)
!118 = !DILocalVariable(name: "s", arg: 1, scope: !108, file: !8, line: 63, type: !111)
!119 = !DILocation(line: 63, column: 40, scope: !108)
!120 = !DILocation(line: 64, column: 12, scope: !108)
!121 = !DILocation(line: 64, column: 18, scope: !108)
!122 = !DILocation(line: 64, column: 3, scope: !108)
!123 = distinct !DISubprogram(name: "ex203StructFieldArrayFixedLength", scope: !8, file: !8, line: 71, type: !124, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!124 = !DISubroutineType(types: !125)
!125 = !{!13, !126}
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s203", file: !8, line: 67, size: 256, elements: !127)
!127 = !{!128, !132}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !126, file: !8, line: 68, baseType: !129, size: 128)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 4)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !126, file: !8, line: 69, baseType: !29, size: 128, offset: 128)
!133 = !DILocalVariable(name: "s", arg: 1, scope: !123, file: !8, line: 71, type: !126)
!134 = !DILocation(line: 71, column: 50, scope: !123)
!135 = !DILocation(line: 72, column: 12, scope: !123)
!136 = !DILocation(line: 72, column: 10, scope: !123)
!137 = !DILocation(line: 72, column: 21, scope: !123)
!138 = !DILocation(line: 72, column: 19, scope: !123)
!139 = !DILocation(line: 72, column: 17, scope: !123)
!140 = !DILocation(line: 72, column: 3, scope: !123)
!141 = distinct !DISubprogram(name: "ex204StructFieldArrayVariableLength", scope: !8, file: !8, line: 79, type: !142, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!142 = !DISubroutineType(types: !143)
!143 = !{!13, !144}
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s204", file: !8, line: 75, size: 32, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !144, file: !8, line: 76, baseType: !13, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !144, file: !8, line: 77, baseType: !148, offset: 32)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: -1)
!151 = !DILocalVariable(name: "s", arg: 1, scope: !141, file: !8, line: 79, type: !144)
!152 = !DILocation(line: 79, column: 53, scope: !141)
!153 = !DILocation(line: 80, column: 12, scope: !141)
!154 = !DILocation(line: 80, column: 10, scope: !141)
!155 = !DILocation(line: 80, column: 21, scope: !141)
!156 = !DILocation(line: 80, column: 19, scope: !141)
!157 = !DILocation(line: 80, column: 17, scope: !141)
!158 = !DILocation(line: 80, column: 3, scope: !141)
!159 = distinct !DISubprogram(name: "ex205StructFieldPointerSingleElementValue", scope: !8, file: !8, line: 87, type: !160, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!160 = !DISubroutineType(types: !161)
!161 = !{!13, !162}
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s205", file: !8, line: 83, size: 192, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !162, file: !8, line: 84, baseType: !12, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !162, file: !8, line: 85, baseType: !29, size: 128, offset: 64)
!166 = !DILocalVariable(name: "s", arg: 1, scope: !159, file: !8, line: 87, type: !162)
!167 = !DILocation(line: 87, column: 59, scope: !159)
!168 = !DILocation(line: 88, column: 13, scope: !159)
!169 = !DILocation(line: 88, column: 10, scope: !159)
!170 = !DILocation(line: 88, column: 3, scope: !159)
!171 = distinct !DISubprogram(name: "ex206StructFieldPointerSingleElementInstances", scope: !8, file: !8, line: 96, type: !172, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!172 = !DISubroutineType(types: !173)
!173 = !{!13, !174}
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s206", file: !8, line: 91, size: 256, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !174, file: !8, line: 92, baseType: !12, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !174, file: !8, line: 93, baseType: !12, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !174, file: !8, line: 94, baseType: !29, size: 128, offset: 128)
!179 = !DILocalVariable(name: "s", arg: 1, scope: !171, file: !8, line: 96, type: !174)
!180 = !DILocation(line: 96, column: 63, scope: !171)
!181 = !DILocation(line: 97, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !171, file: !8, line: 97, column: 7)
!183 = !DILocation(line: 97, column: 11, scope: !182)
!184 = !DILocation(line: 97, column: 19, scope: !182)
!185 = !DILocation(line: 97, column: 24, scope: !182)
!186 = !DILocation(line: 97, column: 26, scope: !182)
!187 = !DILocation(line: 97, column: 7, scope: !171)
!188 = !DILocation(line: 99, column: 5, scope: !189)
!189 = distinct !DILexicalBlock(scope: !182, file: !8, line: 97, column: 35)
!190 = !DILocation(line: 100, column: 16, scope: !191)
!191 = distinct !DILexicalBlock(scope: !182, file: !8, line: 100, column: 14)
!192 = !DILocation(line: 100, column: 23, scope: !191)
!193 = !DILocation(line: 100, column: 18, scope: !191)
!194 = !DILocation(line: 100, column: 14, scope: !182)
!195 = !DILocation(line: 101, column: 15, scope: !196)
!196 = distinct !DILexicalBlock(scope: !191, file: !8, line: 100, column: 26)
!197 = !DILocation(line: 101, column: 12, scope: !196)
!198 = !DILocation(line: 101, column: 22, scope: !196)
!199 = !DILocation(line: 101, column: 19, scope: !196)
!200 = !DILocation(line: 101, column: 17, scope: !196)
!201 = !DILocation(line: 101, column: 5, scope: !196)
!202 = !DILocation(line: 104, column: 15, scope: !203)
!203 = distinct !DILexicalBlock(scope: !191, file: !8, line: 102, column: 10)
!204 = !DILocation(line: 104, column: 12, scope: !203)
!205 = !DILocation(line: 104, column: 22, scope: !203)
!206 = !DILocation(line: 104, column: 19, scope: !203)
!207 = !DILocation(line: 104, column: 17, scope: !203)
!208 = !DILocation(line: 104, column: 5, scope: !203)
!209 = !DILocation(line: 106, column: 1, scope: !171)
!210 = distinct !DISubprogram(name: "ex207StructFieldPointerMultipleElementValues", scope: !8, file: !8, line: 112, type: !211, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!211 = !DISubroutineType(types: !212)
!212 = !{!13, !213}
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s207", file: !8, line: 108, size: 192, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !213, file: !8, line: 109, baseType: !12, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !213, file: !8, line: 110, baseType: !29, size: 128, offset: 64)
!217 = !DILocalVariable(name: "s", arg: 1, scope: !210, file: !8, line: 112, type: !213)
!218 = !DILocation(line: 112, column: 62, scope: !210)
!219 = !DILocation(line: 114, column: 12, scope: !210)
!220 = !DILocation(line: 114, column: 10, scope: !210)
!221 = !DILocation(line: 114, column: 21, scope: !210)
!222 = !DILocation(line: 114, column: 19, scope: !210)
!223 = !DILocation(line: 114, column: 17, scope: !210)
!224 = !DILocation(line: 114, column: 3, scope: !210)
!225 = distinct !DISubprogram(name: "ex208StructFieldPointerFunction", scope: !8, file: !8, line: 121, type: !226, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!226 = !DISubroutineType(types: !227)
!227 = !{!13, !228}
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s208", file: !8, line: 117, size: 192, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !228, file: !8, line: 118, baseType: !90, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !228, file: !8, line: 119, baseType: !29, size: 128, offset: 64)
!232 = !DILocalVariable(name: "s", arg: 1, scope: !225, file: !8, line: 121, type: !228)
!233 = !DILocation(line: 121, column: 49, scope: !225)
!234 = !DILocation(line: 123, column: 12, scope: !225)
!235 = !DILocation(line: 123, column: 10, scope: !225)
!236 = !DILocation(line: 123, column: 3, scope: !225)
!237 = distinct !DISubprogram(name: "ex301ArrayElemInt", scope: !8, file: !8, line: 132, type: !238, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!238 = !DISubroutineType(types: !239)
!239 = !{!13, !240}
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s301", file: !8, line: 128, size: 256, elements: !241)
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !240, file: !8, line: 129, baseType: !129, size: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !240, file: !8, line: 130, baseType: !29, size: 128, offset: 128)
!244 = !DILocalVariable(name: "s", arg: 1, scope: !237, file: !8, line: 132, type: !240)
!245 = !DILocation(line: 132, column: 35, scope: !237)
!246 = !DILocation(line: 133, column: 12, scope: !237)
!247 = !DILocation(line: 133, column: 10, scope: !237)
!248 = !DILocation(line: 133, column: 21, scope: !237)
!249 = !DILocation(line: 133, column: 19, scope: !237)
!250 = !DILocation(line: 133, column: 17, scope: !237)
!251 = !DILocation(line: 133, column: 3, scope: !237)
!252 = distinct !DISubprogram(name: "ex302ArrayElemStruct", scope: !8, file: !8, line: 142, type: !253, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!253 = !DISubroutineType(types: !254)
!254 = !{!13, !255}
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s302", file: !8, line: 136, size: 256, elements: !256)
!256 = !{!257, !262}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !255, file: !8, line: 139, baseType: !258, size: 128)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 128, elements: !130)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !255, file: !8, line: 137, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !259, file: !8, line: 138, baseType: !13, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_", scope: !255, file: !8, line: 140, baseType: !29, size: 128, offset: 128)
!263 = !DILocalVariable(name: "s", arg: 1, scope: !252, file: !8, line: 142, type: !255)
!264 = !DILocation(line: 142, column: 38, scope: !252)
!265 = !DILocation(line: 143, column: 12, scope: !252)
!266 = !DILocation(line: 143, column: 10, scope: !252)
!267 = !DILocation(line: 143, column: 21, scope: !252)
!268 = !DILocation(line: 143, column: 27, scope: !252)
!269 = !DILocation(line: 143, column: 25, scope: !252)
!270 = !DILocation(line: 143, column: 36, scope: !252)
!271 = !DILocation(line: 143, column: 23, scope: !252)
!272 = !DILocation(line: 143, column: 3, scope: !252)
!273 = distinct !DISubprogram(name: "ex303ArrayElemArrayFixedLength", scope: !8, file: !8, line: 149, type: !274, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!274 = !DISubroutineType(types: !275)
!275 = !{!13, !276}
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s303", file: !8, line: 146, size: 512, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !276, file: !8, line: 147, baseType: !279, size: 512)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !280)
!280 = !{!131, !131}
!281 = !DILocalVariable(name: "s", arg: 1, scope: !273, file: !8, line: 149, type: !276)
!282 = !DILocation(line: 149, column: 48, scope: !273)
!283 = !DILocation(line: 150, column: 12, scope: !273)
!284 = !DILocation(line: 150, column: 10, scope: !273)
!285 = !DILocation(line: 150, column: 24, scope: !273)
!286 = !DILocation(line: 150, column: 22, scope: !273)
!287 = !DILocation(line: 150, column: 20, scope: !273)
!288 = !DILocation(line: 150, column: 3, scope: !273)
!289 = distinct !DISubprogram(name: "ex305ArrayElemPointerSingleElementValue", scope: !8, file: !8, line: 158, type: !290, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!290 = !DISubroutineType(types: !291)
!291 = !{!13, !292}
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s305", file: !8, line: 155, size: 256, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !292, file: !8, line: 156, baseType: !295, size: 256)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !130)
!296 = !DILocalVariable(name: "s", arg: 1, scope: !289, file: !8, line: 158, type: !292)
!297 = !DILocation(line: 158, column: 57, scope: !289)
!298 = !DILocation(line: 159, column: 13, scope: !289)
!299 = !DILocation(line: 159, column: 11, scope: !289)
!300 = !DILocation(line: 159, column: 10, scope: !289)
!301 = !DILocation(line: 159, column: 3, scope: !289)
!302 = distinct !DISubprogram(name: "ex306ArrayElemPointerSingleElementInstances", scope: !8, file: !8, line: 165, type: !303, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!303 = !DISubroutineType(types: !304)
!304 = !{!13, !305}
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s306", file: !8, line: 162, size: 256, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !305, file: !8, line: 163, baseType: !295, size: 256)
!308 = !DILocalVariable(name: "s", arg: 1, scope: !302, file: !8, line: 165, type: !305)
!309 = !DILocation(line: 165, column: 61, scope: !302)
!310 = !DILocation(line: 166, column: 9, scope: !311)
!311 = distinct !DILexicalBlock(scope: !302, file: !8, line: 166, column: 7)
!312 = !DILocation(line: 166, column: 7, scope: !311)
!313 = !DILocation(line: 166, column: 14, scope: !311)
!314 = !DILocation(line: 166, column: 22, scope: !311)
!315 = !DILocation(line: 166, column: 27, scope: !311)
!316 = !DILocation(line: 166, column: 25, scope: !311)
!317 = !DILocation(line: 166, column: 32, scope: !311)
!318 = !DILocation(line: 166, column: 7, scope: !302)
!319 = !DILocation(line: 168, column: 5, scope: !320)
!320 = distinct !DILexicalBlock(scope: !311, file: !8, line: 166, column: 41)
!321 = !DILocation(line: 169, column: 16, scope: !322)
!322 = distinct !DILexicalBlock(scope: !311, file: !8, line: 169, column: 14)
!323 = !DILocation(line: 169, column: 14, scope: !322)
!324 = !DILocation(line: 169, column: 26, scope: !322)
!325 = !DILocation(line: 169, column: 24, scope: !322)
!326 = !DILocation(line: 169, column: 21, scope: !322)
!327 = !DILocation(line: 169, column: 14, scope: !311)
!328 = !DILocation(line: 170, column: 15, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !8, line: 169, column: 32)
!330 = !DILocation(line: 170, column: 13, scope: !329)
!331 = !DILocation(line: 170, column: 12, scope: !329)
!332 = !DILocation(line: 170, column: 25, scope: !329)
!333 = !DILocation(line: 170, column: 23, scope: !329)
!334 = !DILocation(line: 170, column: 22, scope: !329)
!335 = !DILocation(line: 170, column: 20, scope: !329)
!336 = !DILocation(line: 170, column: 5, scope: !329)
!337 = !DILocation(line: 173, column: 15, scope: !338)
!338 = distinct !DILexicalBlock(scope: !322, file: !8, line: 171, column: 10)
!339 = !DILocation(line: 173, column: 13, scope: !338)
!340 = !DILocation(line: 173, column: 12, scope: !338)
!341 = !DILocation(line: 173, column: 25, scope: !338)
!342 = !DILocation(line: 173, column: 23, scope: !338)
!343 = !DILocation(line: 173, column: 22, scope: !338)
!344 = !DILocation(line: 173, column: 20, scope: !338)
!345 = !DILocation(line: 173, column: 5, scope: !338)
!346 = !DILocation(line: 175, column: 1, scope: !302)
!347 = distinct !DISubprogram(name: "ex307ArrayElemPointerMultipleElementValues", scope: !8, file: !8, line: 180, type: !348, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!348 = !DISubroutineType(types: !349)
!349 = !{!13, !350}
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s307", file: !8, line: 177, size: 256, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !350, file: !8, line: 178, baseType: !295, size: 256)
!353 = !DILocalVariable(name: "s", arg: 1, scope: !347, file: !8, line: 180, type: !350)
!354 = !DILocation(line: 180, column: 60, scope: !347)
!355 = !DILocation(line: 182, column: 12, scope: !347)
!356 = !DILocation(line: 182, column: 10, scope: !347)
!357 = !DILocation(line: 182, column: 24, scope: !347)
!358 = !DILocation(line: 182, column: 22, scope: !347)
!359 = !DILocation(line: 182, column: 20, scope: !347)
!360 = !DILocation(line: 182, column: 3, scope: !347)
!361 = distinct !DISubprogram(name: "ex308ArrayElemPointerFunction", scope: !8, file: !8, line: 188, type: !362, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!362 = !DISubroutineType(types: !363)
!363 = !{!13, !364}
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s308", file: !8, line: 185, size: 256, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !364, file: !8, line: 186, baseType: !367, size: 256)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !130)
!368 = !DILocalVariable(name: "s", arg: 1, scope: !361, file: !8, line: 188, type: !364)
!369 = !DILocation(line: 188, column: 47, scope: !361)
!370 = !DILocation(line: 190, column: 12, scope: !361)
!371 = !DILocation(line: 190, column: 10, scope: !361)
!372 = !DILocation(line: 190, column: 23, scope: !361)
!373 = !DILocation(line: 190, column: 21, scope: !361)
!374 = !DILocation(line: 190, column: 19, scope: !361)
!375 = !DILocation(line: 190, column: 3, scope: !361)
!376 = distinct !DISubprogram(name: "ex401PointerToInt", scope: !8, file: !8, line: 195, type: !37, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!377 = !DILocalVariable(name: "a", arg: 1, scope: !376, file: !8, line: 195, type: !12)
!378 = !DILocation(line: 195, column: 28, scope: !376)
!379 = !DILocation(line: 196, column: 11, scope: !376)
!380 = !DILocation(line: 196, column: 10, scope: !376)
!381 = !DILocation(line: 196, column: 3, scope: !376)
!382 = distinct !DISubprogram(name: "ex402PointerToStruct", scope: !8, file: !8, line: 202, type: !383, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!383 = !DISubroutineType(types: !384)
!384 = !{!13, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s402", file: !8, line: 199, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !386, file: !8, line: 200, baseType: !13, size: 32)
!389 = !DILocalVariable(name: "s", arg: 1, scope: !382, file: !8, line: 202, type: !385)
!390 = !DILocation(line: 202, column: 39, scope: !382)
!391 = !DILocation(line: 203, column: 10, scope: !382)
!392 = !DILocation(line: 203, column: 13, scope: !382)
!393 = !DILocation(line: 203, column: 3, scope: !382)
!394 = distinct !DISubprogram(name: "ex405PointerToPointerSingleElementValue", scope: !8, file: !8, line: 208, type: !395, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!395 = !DISubroutineType(types: !396)
!396 = !{!13, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!398 = !DILocalVariable(name: "a", arg: 1, scope: !394, file: !8, line: 208, type: !397)
!399 = !DILocation(line: 208, column: 51, scope: !394)
!400 = !DILocation(line: 209, column: 12, scope: !394)
!401 = !DILocation(line: 209, column: 11, scope: !394)
!402 = !DILocation(line: 209, column: 10, scope: !394)
!403 = !DILocation(line: 209, column: 3, scope: !394)
!404 = distinct !DISubprogram(name: "ex406PointerToPointerSingleElementInstances", scope: !8, file: !8, line: 212, type: !405, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!405 = !DISubroutineType(types: !406)
!406 = !{!13, !397, !397}
!407 = !DILocalVariable(name: "a", arg: 1, scope: !404, file: !8, line: 212, type: !397)
!408 = !DILocation(line: 212, column: 55, scope: !404)
!409 = !DILocalVariable(name: "b", arg: 2, scope: !404, file: !8, line: 212, type: !397)
!410 = !DILocation(line: 212, column: 64, scope: !404)
!411 = !DILocation(line: 213, column: 8, scope: !412)
!412 = distinct !DILexicalBlock(scope: !404, file: !8, line: 213, column: 7)
!413 = !DILocation(line: 213, column: 7, scope: !412)
!414 = !DILocation(line: 213, column: 10, scope: !412)
!415 = !DILocation(line: 213, column: 18, scope: !412)
!416 = !DILocation(line: 213, column: 22, scope: !412)
!417 = !DILocation(line: 213, column: 21, scope: !412)
!418 = !DILocation(line: 213, column: 24, scope: !412)
!419 = !DILocation(line: 213, column: 7, scope: !404)
!420 = !DILocation(line: 215, column: 5, scope: !421)
!421 = distinct !DILexicalBlock(scope: !412, file: !8, line: 213, column: 33)
!422 = !DILocation(line: 216, column: 15, scope: !423)
!423 = distinct !DILexicalBlock(scope: !412, file: !8, line: 216, column: 14)
!424 = !DILocation(line: 216, column: 14, scope: !423)
!425 = !DILocation(line: 216, column: 21, scope: !423)
!426 = !DILocation(line: 216, column: 20, scope: !423)
!427 = !DILocation(line: 216, column: 17, scope: !423)
!428 = !DILocation(line: 216, column: 14, scope: !412)
!429 = !DILocation(line: 217, column: 14, scope: !430)
!430 = distinct !DILexicalBlock(scope: !423, file: !8, line: 216, column: 24)
!431 = !DILocation(line: 217, column: 13, scope: !430)
!432 = !DILocation(line: 217, column: 12, scope: !430)
!433 = !DILocation(line: 217, column: 20, scope: !430)
!434 = !DILocation(line: 217, column: 19, scope: !430)
!435 = !DILocation(line: 217, column: 18, scope: !430)
!436 = !DILocation(line: 217, column: 16, scope: !430)
!437 = !DILocation(line: 217, column: 5, scope: !430)
!438 = !DILocation(line: 220, column: 14, scope: !439)
!439 = distinct !DILexicalBlock(scope: !423, file: !8, line: 218, column: 10)
!440 = !DILocation(line: 220, column: 13, scope: !439)
!441 = !DILocation(line: 220, column: 12, scope: !439)
!442 = !DILocation(line: 220, column: 20, scope: !439)
!443 = !DILocation(line: 220, column: 19, scope: !439)
!444 = !DILocation(line: 220, column: 18, scope: !439)
!445 = !DILocation(line: 220, column: 16, scope: !439)
!446 = !DILocation(line: 220, column: 5, scope: !439)
!447 = !DILocation(line: 222, column: 1, scope: !404)
!448 = distinct !DISubprogram(name: "ex407PointerToPointerMultipleElementValues", scope: !8, file: !8, line: 224, type: !395, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!449 = !DILocalVariable(name: "a", arg: 1, scope: !448, file: !8, line: 224, type: !397)
!450 = !DILocation(line: 224, column: 54, scope: !448)
!451 = !DILocation(line: 226, column: 12, scope: !448)
!452 = !DILocation(line: 226, column: 11, scope: !448)
!453 = !DILocation(line: 226, column: 10, scope: !448)
!454 = !DILocation(line: 226, column: 22, scope: !448)
!455 = !DILocation(line: 226, column: 21, scope: !448)
!456 = !DILocation(line: 226, column: 20, scope: !448)
!457 = !DILocation(line: 226, column: 18, scope: !448)
!458 = !DILocation(line: 226, column: 3, scope: !448)
!459 = distinct !DISubprogram(name: "ex408PointerToPointerFunction", scope: !8, file: !8, line: 229, type: !460, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!460 = !DISubroutineType(types: !461)
!461 = !{!13, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!463 = !DILocalVariable(name: "a", arg: 1, scope: !459, file: !8, line: 229, type: !462)
!464 = !DILocation(line: 229, column: 42, scope: !459)
!465 = !DILocation(line: 231, column: 12, scope: !459)
!466 = !DILocation(line: 231, column: 11, scope: !459)
!467 = !DILocation(line: 231, column: 10, scope: !459)
!468 = !DILocation(line: 231, column: 3, scope: !459)
!469 = distinct !DISubprogram(name: "ex501StructWithArrayOfPointers", scope: !8, file: !8, line: 241, type: !470, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!470 = !DISubroutineType(types: !471)
!471 = !{!13, !472}
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s501", file: !8, line: 236, size: 256, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !472, file: !8, line: 239, baseType: !475, size: 256)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !8, line: 237, size: 256, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !475, file: !8, line: 238, baseType: !295, size: 256)
!478 = !DILocalVariable(name: "s", arg: 1, scope: !469, file: !8, line: 241, type: !472)
!479 = !DILocation(line: 241, column: 48, scope: !469)
!480 = !DILocation(line: 242, column: 13, scope: !469)
!481 = !DILocation(line: 242, column: 19, scope: !469)
!482 = !DILocation(line: 242, column: 11, scope: !469)
!483 = !DILocation(line: 242, column: 10, scope: !469)
!484 = !DILocation(line: 242, column: 3, scope: !469)
!485 = distinct !DISubprogram(name: "ex502ArrayOfStructsWithPointer", scope: !8, file: !8, line: 250, type: !486, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!486 = !DISubroutineType(types: !487)
!487 = !{!13, !488}
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s502", file: !8, line: 245, size: 256, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !488, file: !8, line: 248, baseType: !491, size: 256)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 256, elements: !130)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !8, line: 246, size: 64, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !492, file: !8, line: 247, baseType: !12, size: 64)
!495 = !DILocalVariable(name: "s", arg: 1, scope: !485, file: !8, line: 250, type: !488)
!496 = !DILocation(line: 250, column: 48, scope: !485)
!497 = !DILocation(line: 251, column: 13, scope: !485)
!498 = !DILocation(line: 251, column: 11, scope: !485)
!499 = !DILocation(line: 251, column: 22, scope: !485)
!500 = !DILocation(line: 251, column: 10, scope: !485)
!501 = !DILocation(line: 251, column: 3, scope: !485)
!502 = distinct !DISubprogram(name: "ex503PointerArithmetic", scope: !8, file: !8, line: 256, type: !37, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!503 = !DILocalVariable(name: "a", arg: 1, scope: !502, file: !8, line: 256, type: !12)
!504 = !DILocation(line: 256, column: 33, scope: !502)
!505 = !DILocation(line: 258, column: 12, scope: !502)
!506 = !DILocation(line: 258, column: 14, scope: !502)
!507 = !DILocation(line: 258, column: 10, scope: !502)
!508 = !DILocation(line: 258, column: 3, scope: !502)
!509 = distinct !DISubprogram(name: "ex504PointerCast", scope: !8, file: !8, line: 261, type: !510, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!510 = !DISubroutineType(types: !511)
!511 = !{!13, !11}
!512 = !DILocalVariable(name: "a", arg: 1, scope: !509, file: !8, line: 261, type: !11)
!513 = !DILocation(line: 261, column: 28, scope: !509)
!514 = !DILocation(line: 262, column: 18, scope: !509)
!515 = !DILocation(line: 262, column: 11, scope: !509)
!516 = !DILocation(line: 262, column: 10, scope: !509)
!517 = !DILocation(line: 262, column: 3, scope: !509)
!518 = distinct !DISubprogram(name: "ex505PointerFunction", scope: !8, file: !8, line: 265, type: !88, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!519 = !DILocalVariable(name: "a", arg: 1, scope: !518, file: !8, line: 265, type: !90)
!520 = !DILocation(line: 265, column: 32, scope: !518)
!521 = !DILocalVariable(name: "result", scope: !518, file: !8, line: 267, type: !13)
!522 = !DILocation(line: 267, column: 7, scope: !518)
!523 = !DILocation(line: 267, column: 16, scope: !518)
!524 = !DILocation(line: 269, column: 10, scope: !518)
!525 = !DILocation(line: 269, column: 3, scope: !518)
!526 = distinct !DISubprogram(name: "ex506ListLengthLimitedLoop", scope: !8, file: !8, line: 278, type: !527, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!527 = !DISubroutineType(types: !528)
!528 = !{!13, !529}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s506", file: !8, line: 274, size: 128, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !530, file: !8, line: 275, baseType: !13, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !530, file: !8, line: 276, baseType: !529, size: 64, offset: 64)
!534 = !DILocalVariable(name: "s", arg: 1, scope: !526, file: !8, line: 278, type: !529)
!535 = !DILocation(line: 278, column: 45, scope: !526)
!536 = !DILocalVariable(name: "sum", scope: !526, file: !8, line: 279, type: !13)
!537 = !DILocation(line: 279, column: 7, scope: !526)
!538 = !DILocalVariable(name: "i", scope: !526, file: !8, line: 280, type: !13)
!539 = !DILocation(line: 280, column: 7, scope: !526)
!540 = !DILocation(line: 281, column: 10, scope: !541)
!541 = distinct !DILexicalBlock(scope: !526, file: !8, line: 281, column: 3)
!542 = !DILocation(line: 281, column: 8, scope: !541)
!543 = !DILocation(line: 281, column: 15, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !8, line: 281, column: 3)
!545 = !DILocation(line: 281, column: 17, scope: !544)
!546 = !DILocation(line: 281, column: 3, scope: !541)
!547 = !DILocation(line: 282, column: 12, scope: !548)
!548 = distinct !DILexicalBlock(scope: !544, file: !8, line: 281, column: 27)
!549 = !DILocation(line: 282, column: 15, scope: !548)
!550 = !DILocation(line: 282, column: 9, scope: !548)
!551 = !DILocation(line: 283, column: 10, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !8, line: 283, column: 9)
!553 = !DILocation(line: 283, column: 13, scope: !552)
!554 = !DILocation(line: 283, column: 9, scope: !548)
!555 = !DILocation(line: 284, column: 7, scope: !552)
!556 = !DILocation(line: 285, column: 9, scope: !548)
!557 = !DILocation(line: 285, column: 12, scope: !548)
!558 = !DILocation(line: 285, column: 7, scope: !548)
!559 = !DILocation(line: 286, column: 3, scope: !548)
!560 = !DILocation(line: 281, column: 23, scope: !544)
!561 = !DILocation(line: 281, column: 3, scope: !544)
!562 = distinct !{!562, !546, !563, !564}
!563 = !DILocation(line: 286, column: 3, scope: !541)
!564 = !{!"llvm.loop.mustprogress"}
!565 = !DILocation(line: 287, column: 7, scope: !566)
!566 = distinct !DILexicalBlock(scope: !526, file: !8, line: 287, column: 7)
!567 = !DILocation(line: 287, column: 9, scope: !566)
!568 = !DILocation(line: 287, column: 7, scope: !526)
!569 = !DILocation(line: 288, column: 5, scope: !566)
!570 = !DILocation(line: 289, column: 10, scope: !526)
!571 = !DILocation(line: 289, column: 3, scope: !526)
!572 = !DILocation(line: 290, column: 1, scope: !526)
!573 = distinct !DISubprogram(name: "ex507ListLengthUnlimitedLoop", scope: !8, file: !8, line: 296, type: !574, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!574 = !DISubroutineType(types: !575)
!575 = !{!13, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s507", file: !8, line: 292, size: 128, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !577, file: !8, line: 293, baseType: !13, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !577, file: !8, line: 294, baseType: !576, size: 64, offset: 64)
!581 = !DILocalVariable(name: "s", arg: 1, scope: !573, file: !8, line: 296, type: !576)
!582 = !DILocation(line: 296, column: 47, scope: !573)
!583 = !DILocalVariable(name: "sum", scope: !573, file: !8, line: 297, type: !13)
!584 = !DILocation(line: 297, column: 7, scope: !573)
!585 = !DILocalVariable(name: "i", scope: !573, file: !8, line: 298, type: !13)
!586 = !DILocation(line: 298, column: 7, scope: !573)
!587 = !DILocation(line: 299, column: 3, scope: !573)
!588 = !DILocation(line: 299, column: 10, scope: !573)
!589 = !DILocation(line: 300, column: 12, scope: !590)
!590 = distinct !DILexicalBlock(scope: !573, file: !8, line: 299, column: 13)
!591 = !DILocation(line: 300, column: 15, scope: !590)
!592 = !DILocation(line: 300, column: 9, scope: !590)
!593 = !DILocation(line: 301, column: 9, scope: !590)
!594 = !DILocation(line: 301, column: 12, scope: !590)
!595 = !DILocation(line: 301, column: 7, scope: !590)
!596 = !DILocation(line: 302, column: 5, scope: !590)
!597 = distinct !{!597, !587, !598, !564}
!598 = !DILocation(line: 303, column: 3, scope: !573)
!599 = !DILocation(line: 304, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !573, file: !8, line: 304, column: 7)
!601 = !DILocation(line: 304, column: 9, scope: !600)
!602 = !DILocation(line: 304, column: 7, scope: !573)
!603 = !DILocation(line: 305, column: 5, scope: !600)
!604 = !DILocation(line: 306, column: 10, scope: !573)
!605 = !DILocation(line: 306, column: 3, scope: !573)
!606 = !DILocation(line: 307, column: 1, scope: !573)
