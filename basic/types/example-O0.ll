; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.s102 = type { i32 }
%struct.s201 = type { i32 }
%struct.s202 = type { %struct.anon }
%struct.anon = type { i32 }
%struct.s203 = type { [4 x i32] }
%struct.s204 = type { i32, [0 x i32] }
%struct.s205 = type { i32* }
%struct.s206 = type { i32*, i32* }
%struct.s207 = type { i32* }
%struct.s208 = type { i32 (...)* }
%struct.s301 = type { [4 x i32] }
%struct.s302 = type { [4 x %struct.anon.0] }
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
define i32 @ex101Int(i32 %a) #0 !dbg !13 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, i32* %a.addr, align 4, !dbg !19
  ret i32 %0, !dbg !20
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex102Struct(i32 %s.coerce) #0 !dbg !21 {
entry:
  %s = alloca %struct.s102, align 4
  %coerce.dive = getelementptr inbounds %struct.s102, %struct.s102* %s, i32 0, i32 0
  store i32 %s.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.s102* %s, metadata !27, metadata !DIExpression()), !dbg !28
  %a = getelementptr inbounds %struct.s102, %struct.s102* %s, i32 0, i32 0, !dbg !29
  %0 = load i32, i32* %a, align 4, !dbg !29
  ret i32 %0, !dbg !30
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex105PointerSingleElementValue(i32* %a) #0 !dbg !31 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = load i32*, i32** %a.addr, align 8, !dbg !37
  %1 = load i32, i32* %0, align 4, !dbg !38
  ret i32 %1, !dbg !39
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex106PointerSingleElementInstances(i32* %a, i32* %b) #0 !dbg !40 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !43, metadata !DIExpression()), !dbg !44
  store i32* %b, i32** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !45, metadata !DIExpression()), !dbg !46
  %0 = load i32*, i32** %a.addr, align 8, !dbg !47
  %cmp = icmp eq i32* %0, null, !dbg !49
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !50

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %b.addr, align 8, !dbg !51
  %cmp1 = icmp eq i32* %1, null, !dbg !52
  br i1 %cmp1, label %if.then, label %if.else, !dbg !53

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !54
  br label %return, !dbg !54

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i32*, i32** %a.addr, align 8, !dbg !56
  %3 = load i32*, i32** %b.addr, align 8, !dbg !58
  %cmp2 = icmp ne i32* %2, %3, !dbg !59
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !60

if.then3:                                         ; preds = %if.else
  store i32 2, i32* %retval, align 4, !dbg !61
  br label %return, !dbg !61

if.else4:                                         ; preds = %if.else
  store i32 3, i32* %retval, align 4, !dbg !63
  br label %return, !dbg !63

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !65
  ret i32 %4, !dbg !65
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex107PointerMultipleElementValues(i32* %a) #0 !dbg !66 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !67, metadata !DIExpression()), !dbg !68
  %0 = load i32*, i32** %a.addr, align 8, !dbg !69
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !69
  %1 = load i32, i32* %arrayidx, align 4, !dbg !69
  %2 = load i32*, i32** %a.addr, align 8, !dbg !70
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !70
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !70
  %add = add nsw i32 %1, %3, !dbg !71
  ret i32 %add, !dbg !72
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex108PointerFunction(i32 (...)* %a) #0 !dbg !73 {
entry:
  %a.addr = alloca i32 (...)*, align 8
  store i32 (...)* %a, i32 (...)** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)** %a.addr, metadata !79, metadata !DIExpression()), !dbg !80
  %0 = load i32 (...)*, i32 (...)** %a.addr, align 8, !dbg !81
  %call = call i32 (...) %0(), !dbg !81
  ret i32 %call, !dbg !82
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex201StructFieldInt(i32 %s.coerce) #0 !dbg !83 {
entry:
  %s = alloca %struct.s201, align 4
  %coerce.dive = getelementptr inbounds %struct.s201, %struct.s201* %s, i32 0, i32 0
  store i32 %s.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.s201* %s, metadata !89, metadata !DIExpression()), !dbg !90
  %a = getelementptr inbounds %struct.s201, %struct.s201* %s, i32 0, i32 0, !dbg !91
  %0 = load i32, i32* %a, align 4, !dbg !91
  ret i32 %0, !dbg !92
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex202StructFieldStruct(i32 %s.coerce) #0 !dbg !93 {
entry:
  %s = alloca %struct.s202, align 4
  %coerce.dive = getelementptr inbounds %struct.s202, %struct.s202* %s, i32 0, i32 0
  %coerce.dive1 = getelementptr inbounds %struct.anon, %struct.anon* %coerce.dive, i32 0, i32 0
  store i32 %s.coerce, i32* %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata %struct.s202* %s, metadata !102, metadata !DIExpression()), !dbg !103
  %inner = getelementptr inbounds %struct.s202, %struct.s202* %s, i32 0, i32 0, !dbg !104
  %a = getelementptr inbounds %struct.anon, %struct.anon* %inner, i32 0, i32 0, !dbg !105
  %0 = load i32, i32* %a, align 4, !dbg !105
  ret i32 %0, !dbg !106
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex203StructFieldArrayFixedLength(i64 %s.coerce0, i64 %s.coerce1) #0 !dbg !107 {
entry:
  %s = alloca %struct.s203, align 4
  %0 = bitcast %struct.s203* %s to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %s.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %s.coerce1, i64* %2, align 4
  call void @llvm.dbg.declare(metadata %struct.s203* %s, metadata !116, metadata !DIExpression()), !dbg !117
  %a = getelementptr inbounds %struct.s203, %struct.s203* %s, i32 0, i32 0, !dbg !118
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0, !dbg !119
  %3 = load i32, i32* %arrayidx, align 4, !dbg !119
  %a1 = getelementptr inbounds %struct.s203, %struct.s203* %s, i32 0, i32 0, !dbg !120
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %a1, i64 0, i64 3, !dbg !121
  %4 = load i32, i32* %arrayidx2, align 4, !dbg !121
  %add = add nsw i32 %3, %4, !dbg !122
  ret i32 %add, !dbg !123
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex204StructFieldArrayVariableLength(%struct.s204* byval(%struct.s204) align 8 %s) #0 !dbg !124 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s204* %s, metadata !134, metadata !DIExpression()), !dbg !135
  %a = getelementptr inbounds %struct.s204, %struct.s204* %s, i32 0, i32 1, !dbg !136
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* %a, i64 0, i64 0, !dbg !137
  %0 = load i32, i32* %arrayidx, align 4, !dbg !137
  %a1 = getelementptr inbounds %struct.s204, %struct.s204* %s, i32 0, i32 1, !dbg !138
  %arrayidx2 = getelementptr inbounds [0 x i32], [0 x i32]* %a1, i64 0, i64 3, !dbg !139
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !139
  %add = add nsw i32 %0, %1, !dbg !140
  ret i32 %add, !dbg !141
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex205StructFieldPointerSingleElementValue(i32* %s.coerce) #0 !dbg !142 {
entry:
  %s = alloca %struct.s205, align 8
  %coerce.dive = getelementptr inbounds %struct.s205, %struct.s205* %s, i32 0, i32 0
  store i32* %s.coerce, i32** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.s205* %s, metadata !148, metadata !DIExpression()), !dbg !149
  %a = getelementptr inbounds %struct.s205, %struct.s205* %s, i32 0, i32 0, !dbg !150
  %0 = load i32*, i32** %a, align 8, !dbg !150
  %1 = load i32, i32* %0, align 4, !dbg !151
  ret i32 %1, !dbg !152
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex206StructFieldPointerSingleElementInstances(i32* %s.coerce0, i32* %s.coerce1) #0 !dbg !153 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.s206, align 8
  %0 = bitcast %struct.s206* %s to { i32*, i32* }*
  %1 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %0, i32 0, i32 0
  store i32* %s.coerce0, i32** %1, align 8
  %2 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %0, i32 0, i32 1
  store i32* %s.coerce1, i32** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.s206* %s, metadata !160, metadata !DIExpression()), !dbg !161
  %a = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !162
  %3 = load i32*, i32** %a, align 8, !dbg !162
  %cmp = icmp eq i32* %3, null, !dbg !164
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !165

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !166
  %4 = load i32*, i32** %b, align 8, !dbg !166
  %cmp1 = icmp eq i32* %4, null, !dbg !167
  br i1 %cmp1, label %if.then, label %if.else, !dbg !168

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !169
  br label %return, !dbg !169

if.else:                                          ; preds = %lor.lhs.false
  %a2 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 0, !dbg !171
  %5 = load i32*, i32** %a2, align 8, !dbg !171
  %b3 = getelementptr inbounds %struct.s206, %struct.s206* %s, i32 0, i32 1, !dbg !173
  %6 = load i32*, i32** %b3, align 8, !dbg !173
  %cmp4 = icmp ne i32* %5, %6, !dbg !174
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !175

if.then5:                                         ; preds = %if.else
  store i32 2, i32* %retval, align 4, !dbg !176
  br label %return, !dbg !176

if.else6:                                         ; preds = %if.else
  store i32 3, i32* %retval, align 4, !dbg !178
  br label %return, !dbg !178

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !180
  ret i32 %7, !dbg !180
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex207StructFieldPointerMultipleElementValues(i32* %s.coerce) #0 !dbg !181 {
entry:
  %s = alloca %struct.s207, align 8
  %coerce.dive = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0
  store i32* %s.coerce, i32** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.s207* %s, metadata !187, metadata !DIExpression()), !dbg !188
  %a = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !189
  %0 = load i32*, i32** %a, align 8, !dbg !189
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !190
  %1 = load i32, i32* %arrayidx, align 4, !dbg !190
  %a1 = getelementptr inbounds %struct.s207, %struct.s207* %s, i32 0, i32 0, !dbg !191
  %2 = load i32*, i32** %a1, align 8, !dbg !191
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 3, !dbg !192
  %3 = load i32, i32* %arrayidx2, align 4, !dbg !192
  %add = add nsw i32 %1, %3, !dbg !193
  ret i32 %add, !dbg !194
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex208StructFieldPointerFunction(i32 (...)* %s.coerce) #0 !dbg !195 {
entry:
  %s = alloca %struct.s208, align 8
  %coerce.dive = getelementptr inbounds %struct.s208, %struct.s208* %s, i32 0, i32 0
  store i32 (...)* %s.coerce, i32 (...)** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct.s208* %s, metadata !201, metadata !DIExpression()), !dbg !202
  %a = getelementptr inbounds %struct.s208, %struct.s208* %s, i32 0, i32 0, !dbg !203
  %0 = load i32 (...)*, i32 (...)** %a, align 8, !dbg !203
  %call = call i32 (...) %0(), !dbg !204
  ret i32 %call, !dbg !205
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex301ArrayElemInt(i64 %s.coerce0, i64 %s.coerce1) #0 !dbg !206 {
entry:
  %s = alloca %struct.s301, align 4
  %0 = bitcast %struct.s301* %s to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %s.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %s.coerce1, i64* %2, align 4
  call void @llvm.dbg.declare(metadata %struct.s301* %s, metadata !212, metadata !DIExpression()), !dbg !213
  %a = getelementptr inbounds %struct.s301, %struct.s301* %s, i32 0, i32 0, !dbg !214
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0, !dbg !215
  %3 = load i32, i32* %arrayidx, align 4, !dbg !215
  %a1 = getelementptr inbounds %struct.s301, %struct.s301* %s, i32 0, i32 0, !dbg !216
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %a1, i64 0, i64 3, !dbg !217
  %4 = load i32, i32* %arrayidx2, align 4, !dbg !217
  %add = add nsw i32 %3, %4, !dbg !218
  ret i32 %add, !dbg !219
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex302ArrayElemStruct(i64 %s.coerce0, i64 %s.coerce1) #0 !dbg !220 {
entry:
  %s = alloca %struct.s302, align 4
  %0 = bitcast %struct.s302* %s to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %s.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %s.coerce1, i64* %2, align 4
  call void @llvm.dbg.declare(metadata %struct.s302* %s, metadata !230, metadata !DIExpression()), !dbg !231
  %inner = getelementptr inbounds %struct.s302, %struct.s302* %s, i32 0, i32 0, !dbg !232
  %arrayidx = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* %inner, i64 0, i64 0, !dbg !233
  %a = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx, i32 0, i32 0, !dbg !234
  %3 = load i32, i32* %a, align 4, !dbg !234
  %inner1 = getelementptr inbounds %struct.s302, %struct.s302* %s, i32 0, i32 0, !dbg !235
  %arrayidx2 = getelementptr inbounds [4 x %struct.anon.0], [4 x %struct.anon.0]* %inner1, i64 0, i64 3, !dbg !236
  %a3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %arrayidx2, i32 0, i32 0, !dbg !237
  %4 = load i32, i32* %a3, align 4, !dbg !237
  %add = add nsw i32 %3, %4, !dbg !238
  ret i32 %add, !dbg !239
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex303ArrayElemArrayFixedLength(%struct.s303* byval(%struct.s303) align 8 %s) #0 !dbg !240 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s303* %s, metadata !248, metadata !DIExpression()), !dbg !249
  %a = getelementptr inbounds %struct.s303, %struct.s303* %s, i32 0, i32 0, !dbg !250
  %arrayidx = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %a, i64 0, i64 0, !dbg !251
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 0, !dbg !251
  %0 = load i32, i32* %arrayidx1, align 8, !dbg !251
  %a2 = getelementptr inbounds %struct.s303, %struct.s303* %s, i32 0, i32 0, !dbg !252
  %arrayidx3 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %a2, i64 0, i64 3, !dbg !253
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx3, i64 0, i64 3, !dbg !253
  %1 = load i32, i32* %arrayidx4, align 4, !dbg !253
  %add = add nsw i32 %0, %1, !dbg !254
  ret i32 %add, !dbg !255
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex305ArrayElemPointerSingleElementValue(%struct.s305* byval(%struct.s305) align 8 %s) #0 !dbg !256 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s305* %s, metadata !263, metadata !DIExpression()), !dbg !264
  %a = getelementptr inbounds %struct.s305, %struct.s305* %s, i32 0, i32 0, !dbg !265
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !266
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !266
  %1 = load i32, i32* %0, align 4, !dbg !267
  ret i32 %1, !dbg !268
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex306ArrayElemPointerSingleElementInstances(%struct.s306* byval(%struct.s306) align 8 %s) #0 !dbg !269 {
entry:
  %retval = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.s306* %s, metadata !275, metadata !DIExpression()), !dbg !276
  %a = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !277
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !279
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !279
  %cmp = icmp eq i32* %0, null, !dbg !280
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !281

lor.lhs.false:                                    ; preds = %entry
  %a1 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !282
  %arrayidx2 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a1, i64 0, i64 3, !dbg !283
  %1 = load i32*, i32** %arrayidx2, align 8, !dbg !283
  %cmp3 = icmp eq i32* %1, null, !dbg !284
  br i1 %cmp3, label %if.then, label %if.else, !dbg !285

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !286
  br label %return, !dbg !286

if.else:                                          ; preds = %lor.lhs.false
  %a4 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !288
  %arrayidx5 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a4, i64 0, i64 0, !dbg !290
  %2 = load i32*, i32** %arrayidx5, align 8, !dbg !290
  %a6 = getelementptr inbounds %struct.s306, %struct.s306* %s, i32 0, i32 0, !dbg !291
  %arrayidx7 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a6, i64 0, i64 3, !dbg !292
  %3 = load i32*, i32** %arrayidx7, align 8, !dbg !292
  %cmp8 = icmp ne i32* %2, %3, !dbg !293
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !294

if.then9:                                         ; preds = %if.else
  store i32 2, i32* %retval, align 4, !dbg !295
  br label %return, !dbg !295

if.else10:                                        ; preds = %if.else
  store i32 3, i32* %retval, align 4, !dbg !297
  br label %return, !dbg !297

return:                                           ; preds = %if.else10, %if.then9, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !299
  ret i32 %4, !dbg !299
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex307ArrayElemPointerMultipleElementValues(%struct.s307* byval(%struct.s307) align 8 %s) #0 !dbg !300 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s307* %s, metadata !306, metadata !DIExpression()), !dbg !307
  %a = getelementptr inbounds %struct.s307, %struct.s307* %s, i32 0, i32 0, !dbg !308
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !309
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !309
  %1 = load i32, i32* %0, align 4, !dbg !310
  %a1 = getelementptr inbounds %struct.s307, %struct.s307* %s, i32 0, i32 0, !dbg !311
  %arrayidx2 = getelementptr inbounds [4 x i32*], [4 x i32*]* %a1, i64 0, i64 3, !dbg !312
  %2 = load i32*, i32** %arrayidx2, align 8, !dbg !312
  %3 = load i32, i32* %2, align 4, !dbg !313
  %add = add nsw i32 %1, %3, !dbg !314
  ret i32 %add, !dbg !315
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex308ArrayElemPointerFunction(%struct.s308* byval(%struct.s308) align 8 %s) #0 !dbg !316 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s308* %s, metadata !323, metadata !DIExpression()), !dbg !324
  %a = getelementptr inbounds %struct.s308, %struct.s308* %s, i32 0, i32 0, !dbg !325
  %arrayidx = getelementptr inbounds [4 x i32 (...)*], [4 x i32 (...)*]* %a, i64 0, i64 0, !dbg !326
  %0 = load i32 (...)*, i32 (...)** %arrayidx, align 8, !dbg !326
  %call = call i32 (...) %0(), !dbg !326
  %a1 = getelementptr inbounds %struct.s308, %struct.s308* %s, i32 0, i32 0, !dbg !327
  %arrayidx2 = getelementptr inbounds [4 x i32 (...)*], [4 x i32 (...)*]* %a1, i64 0, i64 3, !dbg !328
  %1 = load i32 (...)*, i32 (...)** %arrayidx2, align 8, !dbg !328
  %call3 = call i32 (...) %1(), !dbg !328
  %add = add nsw i32 %call, %call3, !dbg !329
  ret i32 %add, !dbg !330
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex401PointerToInt(i32* %a) #0 !dbg !331 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load i32*, i32** %a.addr, align 8, !dbg !334
  %1 = load i32, i32* %0, align 4, !dbg !335
  ret i32 %1, !dbg !336
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex402PointerToStruct(%struct.s402* %s) #0 !dbg !337 {
entry:
  %s.addr = alloca %struct.s402*, align 8
  store %struct.s402* %s, %struct.s402** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s402** %s.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load %struct.s402*, %struct.s402** %s.addr, align 8, !dbg !346
  %a = getelementptr inbounds %struct.s402, %struct.s402* %0, i32 0, i32 0, !dbg !347
  %1 = load i32, i32* %a, align 4, !dbg !347
  ret i32 %1, !dbg !348
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex405PointerToPointerSingleElementValue(i32** %a) #0 !dbg !349 {
entry:
  %a.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !355
  %1 = load i32*, i32** %0, align 8, !dbg !356
  %2 = load i32, i32* %1, align 4, !dbg !357
  ret i32 %2, !dbg !358
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex406PointerToPointerSingleElementInstances(i32** %a, i32** %b) #0 !dbg !359 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !362, metadata !DIExpression()), !dbg !363
  store i32** %b, i32*** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !366
  %1 = load i32*, i32** %0, align 8, !dbg !368
  %cmp = icmp eq i32* %1, null, !dbg !369
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !370

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32**, i32*** %b.addr, align 8, !dbg !371
  %3 = load i32*, i32** %2, align 8, !dbg !372
  %cmp1 = icmp eq i32* %3, null, !dbg !373
  br i1 %cmp1, label %if.then, label %if.else, !dbg !374

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !375
  br label %return, !dbg !375

if.else:                                          ; preds = %lor.lhs.false
  %4 = load i32**, i32*** %a.addr, align 8, !dbg !377
  %5 = load i32*, i32** %4, align 8, !dbg !379
  %6 = load i32**, i32*** %b.addr, align 8, !dbg !380
  %7 = load i32*, i32** %6, align 8, !dbg !381
  %cmp2 = icmp ne i32* %5, %7, !dbg !382
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !383

if.then3:                                         ; preds = %if.else
  store i32 2, i32* %retval, align 4, !dbg !384
  br label %return, !dbg !384

if.else4:                                         ; preds = %if.else
  store i32 3, i32* %retval, align 4, !dbg !386
  br label %return, !dbg !386

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !388
  ret i32 %8, !dbg !388
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex407PointerToPointerMultipleElementValues(i32** %a) #0 !dbg !389 {
entry:
  %a.addr = alloca i32**, align 8
  store i32** %a, i32*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load i32**, i32*** %a.addr, align 8, !dbg !392
  %1 = load i32*, i32** %0, align 8, !dbg !393
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0, !dbg !394
  %2 = load i32, i32* %arrayidx, align 4, !dbg !394
  %3 = load i32**, i32*** %a.addr, align 8, !dbg !395
  %4 = load i32*, i32** %3, align 8, !dbg !396
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 3, !dbg !397
  %5 = load i32, i32* %arrayidx1, align 4, !dbg !397
  %add = add nsw i32 %2, %5, !dbg !398
  ret i32 %add, !dbg !399
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex408PointerToPointerFunction(i32 (...)** %a) #0 !dbg !400 {
entry:
  %a.addr = alloca i32 (...)**, align 8
  store i32 (...)** %a, i32 (...)*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)*** %a.addr, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load i32 (...)**, i32 (...)*** %a.addr, align 8, !dbg !406
  %1 = load i32 (...)*, i32 (...)** %0, align 8, !dbg !407
  %call = call i32 (...) %1(), !dbg !408
  ret i32 %call, !dbg !409
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex501StructWithArrayOfPointers(%struct.s501* byval(%struct.s501) align 8 %s) #0 !dbg !410 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s501* %s, metadata !419, metadata !DIExpression()), !dbg !420
  %inner = getelementptr inbounds %struct.s501, %struct.s501* %s, i32 0, i32 0, !dbg !421
  %a = getelementptr inbounds %struct.anon.1, %struct.anon.1* %inner, i32 0, i32 0, !dbg !422
  %arrayidx = getelementptr inbounds [4 x i32*], [4 x i32*]* %a, i64 0, i64 0, !dbg !423
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !423
  %1 = load i32, i32* %0, align 4, !dbg !424
  ret i32 %1, !dbg !425
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex502ArrayOfStructsWithPointer(%struct.s502* byval(%struct.s502) align 8 %s) #0 !dbg !426 {
entry:
  call void @llvm.dbg.declare(metadata %struct.s502* %s, metadata !436, metadata !DIExpression()), !dbg !437
  %inner = getelementptr inbounds %struct.s502, %struct.s502* %s, i32 0, i32 0, !dbg !438
  %arrayidx = getelementptr inbounds [4 x %struct.anon.2], [4 x %struct.anon.2]* %inner, i64 0, i64 0, !dbg !439
  %a = getelementptr inbounds %struct.anon.2, %struct.anon.2* %arrayidx, i32 0, i32 0, !dbg !440
  %0 = load i32*, i32** %a, align 8, !dbg !440
  %1 = load i32, i32* %0, align 4, !dbg !441
  ret i32 %1, !dbg !442
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/types")
!9 = !{}
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!13 = distinct !DISubprogram(name: "ex101Int", scope: !8, file: !8, line: 7, type: !14, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocalVariable(name: "a", arg: 1, scope: !13, file: !8, line: 7, type: !16)
!18 = !DILocation(line: 7, column: 18, scope: !13)
!19 = !DILocation(line: 8, column: 10, scope: !13)
!20 = !DILocation(line: 8, column: 3, scope: !13)
!21 = distinct !DISubprogram(name: "ex102Struct", scope: !8, file: !8, line: 14, type: !22, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!22 = !DISubroutineType(types: !23)
!23 = !{!16, !24}
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s102", file: !8, line: 11, size: 32, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !24, file: !8, line: 12, baseType: !16, size: 32)
!27 = !DILocalVariable(name: "s", arg: 1, scope: !21, file: !8, line: 14, type: !24)
!28 = !DILocation(line: 14, column: 29, scope: !21)
!29 = !DILocation(line: 15, column: 12, scope: !21)
!30 = !DILocation(line: 15, column: 3, scope: !21)
!31 = distinct !DISubprogram(name: "ex105PointerSingleElementValue", scope: !8, file: !8, line: 20, type: !32, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!32 = !DISubroutineType(types: !33)
!33 = !{!16, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!35 = !DILocalVariable(name: "a", arg: 1, scope: !31, file: !8, line: 20, type: !34)
!36 = !DILocation(line: 20, column: 41, scope: !31)
!37 = !DILocation(line: 21, column: 11, scope: !31)
!38 = !DILocation(line: 21, column: 10, scope: !31)
!39 = !DILocation(line: 21, column: 3, scope: !31)
!40 = distinct !DISubprogram(name: "ex106PointerSingleElementInstances", scope: !8, file: !8, line: 24, type: !41, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!41 = !DISubroutineType(types: !42)
!42 = !{!16, !34, !34}
!43 = !DILocalVariable(name: "a", arg: 1, scope: !40, file: !8, line: 24, type: !34)
!44 = !DILocation(line: 24, column: 45, scope: !40)
!45 = !DILocalVariable(name: "b", arg: 2, scope: !40, file: !8, line: 24, type: !34)
!46 = !DILocation(line: 24, column: 53, scope: !40)
!47 = !DILocation(line: 25, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !40, file: !8, line: 25, column: 7)
!49 = !DILocation(line: 25, column: 9, scope: !48)
!50 = !DILocation(line: 25, column: 17, scope: !48)
!51 = !DILocation(line: 25, column: 20, scope: !48)
!52 = !DILocation(line: 25, column: 22, scope: !48)
!53 = !DILocation(line: 25, column: 7, scope: !40)
!54 = !DILocation(line: 27, column: 5, scope: !55)
!55 = distinct !DILexicalBlock(scope: !48, file: !8, line: 25, column: 31)
!56 = !DILocation(line: 28, column: 14, scope: !57)
!57 = distinct !DILexicalBlock(scope: !48, file: !8, line: 28, column: 14)
!58 = !DILocation(line: 28, column: 19, scope: !57)
!59 = !DILocation(line: 28, column: 16, scope: !57)
!60 = !DILocation(line: 28, column: 14, scope: !48)
!61 = !DILocation(line: 29, column: 5, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !8, line: 28, column: 22)
!63 = !DILocation(line: 32, column: 5, scope: !64)
!64 = distinct !DILexicalBlock(scope: !57, file: !8, line: 30, column: 10)
!65 = !DILocation(line: 34, column: 1, scope: !40)
!66 = distinct !DISubprogram(name: "ex107PointerMultipleElementValues", scope: !8, file: !8, line: 36, type: !32, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!67 = !DILocalVariable(name: "a", arg: 1, scope: !66, file: !8, line: 36, type: !34)
!68 = !DILocation(line: 36, column: 44, scope: !66)
!69 = !DILocation(line: 38, column: 10, scope: !66)
!70 = !DILocation(line: 38, column: 17, scope: !66)
!71 = !DILocation(line: 38, column: 15, scope: !66)
!72 = !DILocation(line: 38, column: 3, scope: !66)
!73 = distinct !DISubprogram(name: "ex108PointerFunction", scope: !8, file: !8, line: 41, type: !74, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!74 = !DISubroutineType(types: !75)
!75 = !{!16, !76}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!16, null}
!79 = !DILocalVariable(name: "a", arg: 1, scope: !73, file: !8, line: 41, type: !76)
!80 = !DILocation(line: 41, column: 32, scope: !73)
!81 = !DILocation(line: 42, column: 10, scope: !73)
!82 = !DILocation(line: 42, column: 3, scope: !73)
!83 = distinct !DISubprogram(name: "ex201StructFieldInt", scope: !8, file: !8, line: 50, type: !84, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!84 = !DISubroutineType(types: !85)
!85 = !{!16, !86}
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s201", file: !8, line: 47, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !86, file: !8, line: 48, baseType: !16, size: 32)
!89 = !DILocalVariable(name: "s", arg: 1, scope: !83, file: !8, line: 50, type: !86)
!90 = !DILocation(line: 50, column: 37, scope: !83)
!91 = !DILocation(line: 51, column: 12, scope: !83)
!92 = !DILocation(line: 51, column: 3, scope: !83)
!93 = distinct !DISubprogram(name: "ex202StructFieldStruct", scope: !8, file: !8, line: 59, type: !94, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!94 = !DISubroutineType(types: !95)
!95 = !{!16, !96}
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s202", file: !8, line: 54, size: 32, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !96, file: !8, line: 57, baseType: !99, size: 32)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !8, line: 55, size: 32, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !99, file: !8, line: 56, baseType: !16, size: 32)
!102 = !DILocalVariable(name: "s", arg: 1, scope: !93, file: !8, line: 59, type: !96)
!103 = !DILocation(line: 59, column: 40, scope: !93)
!104 = !DILocation(line: 60, column: 12, scope: !93)
!105 = !DILocation(line: 60, column: 18, scope: !93)
!106 = !DILocation(line: 60, column: 3, scope: !93)
!107 = distinct !DISubprogram(name: "ex203StructFieldArrayFixedLength", scope: !8, file: !8, line: 66, type: !108, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!108 = !DISubroutineType(types: !109)
!109 = !{!16, !110}
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s203", file: !8, line: 63, size: 128, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !110, file: !8, line: 64, baseType: !113, size: 128)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 4)
!116 = !DILocalVariable(name: "s", arg: 1, scope: !107, file: !8, line: 66, type: !110)
!117 = !DILocation(line: 66, column: 50, scope: !107)
!118 = !DILocation(line: 67, column: 12, scope: !107)
!119 = !DILocation(line: 67, column: 10, scope: !107)
!120 = !DILocation(line: 67, column: 21, scope: !107)
!121 = !DILocation(line: 67, column: 19, scope: !107)
!122 = !DILocation(line: 67, column: 17, scope: !107)
!123 = !DILocation(line: 67, column: 3, scope: !107)
!124 = distinct !DISubprogram(name: "ex204StructFieldArrayVariableLength", scope: !8, file: !8, line: 74, type: !125, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!125 = !DISubroutineType(types: !126)
!126 = !{!16, !127}
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s204", file: !8, line: 70, size: 32, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !127, file: !8, line: 71, baseType: !16, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !127, file: !8, line: 72, baseType: !131, offset: 32)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: -1)
!134 = !DILocalVariable(name: "s", arg: 1, scope: !124, file: !8, line: 74, type: !127)
!135 = !DILocation(line: 74, column: 53, scope: !124)
!136 = !DILocation(line: 75, column: 12, scope: !124)
!137 = !DILocation(line: 75, column: 10, scope: !124)
!138 = !DILocation(line: 75, column: 21, scope: !124)
!139 = !DILocation(line: 75, column: 19, scope: !124)
!140 = !DILocation(line: 75, column: 17, scope: !124)
!141 = !DILocation(line: 75, column: 3, scope: !124)
!142 = distinct !DISubprogram(name: "ex205StructFieldPointerSingleElementValue", scope: !8, file: !8, line: 81, type: !143, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!143 = !DISubroutineType(types: !144)
!144 = !{!16, !145}
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s205", file: !8, line: 78, size: 64, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !145, file: !8, line: 79, baseType: !34, size: 64)
!148 = !DILocalVariable(name: "s", arg: 1, scope: !142, file: !8, line: 81, type: !145)
!149 = !DILocation(line: 81, column: 59, scope: !142)
!150 = !DILocation(line: 82, column: 13, scope: !142)
!151 = !DILocation(line: 82, column: 10, scope: !142)
!152 = !DILocation(line: 82, column: 3, scope: !142)
!153 = distinct !DISubprogram(name: "ex206StructFieldPointerSingleElementInstances", scope: !8, file: !8, line: 89, type: !154, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!154 = !DISubroutineType(types: !155)
!155 = !{!16, !156}
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s206", file: !8, line: 85, size: 128, elements: !157)
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !156, file: !8, line: 86, baseType: !34, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !156, file: !8, line: 87, baseType: !34, size: 64, offset: 64)
!160 = !DILocalVariable(name: "s", arg: 1, scope: !153, file: !8, line: 89, type: !156)
!161 = !DILocation(line: 89, column: 63, scope: !153)
!162 = !DILocation(line: 90, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !153, file: !8, line: 90, column: 7)
!164 = !DILocation(line: 90, column: 11, scope: !163)
!165 = !DILocation(line: 90, column: 19, scope: !163)
!166 = !DILocation(line: 90, column: 24, scope: !163)
!167 = !DILocation(line: 90, column: 26, scope: !163)
!168 = !DILocation(line: 90, column: 7, scope: !153)
!169 = !DILocation(line: 92, column: 5, scope: !170)
!170 = distinct !DILexicalBlock(scope: !163, file: !8, line: 90, column: 35)
!171 = !DILocation(line: 93, column: 16, scope: !172)
!172 = distinct !DILexicalBlock(scope: !163, file: !8, line: 93, column: 14)
!173 = !DILocation(line: 93, column: 23, scope: !172)
!174 = !DILocation(line: 93, column: 18, scope: !172)
!175 = !DILocation(line: 93, column: 14, scope: !163)
!176 = !DILocation(line: 94, column: 5, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !8, line: 93, column: 26)
!178 = !DILocation(line: 97, column: 5, scope: !179)
!179 = distinct !DILexicalBlock(scope: !172, file: !8, line: 95, column: 10)
!180 = !DILocation(line: 99, column: 1, scope: !153)
!181 = distinct !DISubprogram(name: "ex207StructFieldPointerMultipleElementValues", scope: !8, file: !8, line: 104, type: !182, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!182 = !DISubroutineType(types: !183)
!183 = !{!16, !184}
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s207", file: !8, line: 101, size: 64, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !184, file: !8, line: 102, baseType: !34, size: 64)
!187 = !DILocalVariable(name: "s", arg: 1, scope: !181, file: !8, line: 104, type: !184)
!188 = !DILocation(line: 104, column: 62, scope: !181)
!189 = !DILocation(line: 106, column: 12, scope: !181)
!190 = !DILocation(line: 106, column: 10, scope: !181)
!191 = !DILocation(line: 106, column: 21, scope: !181)
!192 = !DILocation(line: 106, column: 19, scope: !181)
!193 = !DILocation(line: 106, column: 17, scope: !181)
!194 = !DILocation(line: 106, column: 3, scope: !181)
!195 = distinct !DISubprogram(name: "ex208StructFieldPointerFunction", scope: !8, file: !8, line: 112, type: !196, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!196 = !DISubroutineType(types: !197)
!197 = !{!16, !198}
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s208", file: !8, line: 109, size: 64, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !198, file: !8, line: 110, baseType: !76, size: 64)
!201 = !DILocalVariable(name: "s", arg: 1, scope: !195, file: !8, line: 112, type: !198)
!202 = !DILocation(line: 112, column: 49, scope: !195)
!203 = !DILocation(line: 113, column: 12, scope: !195)
!204 = !DILocation(line: 113, column: 10, scope: !195)
!205 = !DILocation(line: 113, column: 3, scope: !195)
!206 = distinct !DISubprogram(name: "ex301ArrayElemInt", scope: !8, file: !8, line: 121, type: !207, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!207 = !DISubroutineType(types: !208)
!208 = !{!16, !209}
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s301", file: !8, line: 118, size: 128, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !209, file: !8, line: 119, baseType: !113, size: 128)
!212 = !DILocalVariable(name: "s", arg: 1, scope: !206, file: !8, line: 121, type: !209)
!213 = !DILocation(line: 121, column: 35, scope: !206)
!214 = !DILocation(line: 122, column: 12, scope: !206)
!215 = !DILocation(line: 122, column: 10, scope: !206)
!216 = !DILocation(line: 122, column: 21, scope: !206)
!217 = !DILocation(line: 122, column: 19, scope: !206)
!218 = !DILocation(line: 122, column: 17, scope: !206)
!219 = !DILocation(line: 122, column: 3, scope: !206)
!220 = distinct !DISubprogram(name: "ex302ArrayElemStruct", scope: !8, file: !8, line: 130, type: !221, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!221 = !DISubroutineType(types: !222)
!222 = !{!16, !223}
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s302", file: !8, line: 125, size: 128, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !223, file: !8, line: 128, baseType: !226, size: 128)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 128, elements: !114)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !223, file: !8, line: 126, size: 32, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !227, file: !8, line: 127, baseType: !16, size: 32)
!230 = !DILocalVariable(name: "s", arg: 1, scope: !220, file: !8, line: 130, type: !223)
!231 = !DILocation(line: 130, column: 38, scope: !220)
!232 = !DILocation(line: 131, column: 12, scope: !220)
!233 = !DILocation(line: 131, column: 10, scope: !220)
!234 = !DILocation(line: 131, column: 21, scope: !220)
!235 = !DILocation(line: 131, column: 27, scope: !220)
!236 = !DILocation(line: 131, column: 25, scope: !220)
!237 = !DILocation(line: 131, column: 36, scope: !220)
!238 = !DILocation(line: 131, column: 23, scope: !220)
!239 = !DILocation(line: 131, column: 3, scope: !220)
!240 = distinct !DISubprogram(name: "ex303ArrayElemArrayFixedLength", scope: !8, file: !8, line: 137, type: !241, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!241 = !DISubroutineType(types: !242)
!242 = !{!16, !243}
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s303", file: !8, line: 134, size: 512, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !243, file: !8, line: 135, baseType: !246, size: 512)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 512, elements: !247)
!247 = !{!115, !115}
!248 = !DILocalVariable(name: "s", arg: 1, scope: !240, file: !8, line: 137, type: !243)
!249 = !DILocation(line: 137, column: 48, scope: !240)
!250 = !DILocation(line: 138, column: 12, scope: !240)
!251 = !DILocation(line: 138, column: 10, scope: !240)
!252 = !DILocation(line: 138, column: 24, scope: !240)
!253 = !DILocation(line: 138, column: 22, scope: !240)
!254 = !DILocation(line: 138, column: 20, scope: !240)
!255 = !DILocation(line: 138, column: 3, scope: !240)
!256 = distinct !DISubprogram(name: "ex305ArrayElemPointerSingleElementValue", scope: !8, file: !8, line: 147, type: !257, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!257 = !DISubroutineType(types: !258)
!258 = !{!16, !259}
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s305", file: !8, line: 143, size: 256, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !259, file: !8, line: 144, baseType: !262, size: 256)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 256, elements: !114)
!263 = !DILocalVariable(name: "s", arg: 1, scope: !256, file: !8, line: 147, type: !259)
!264 = !DILocation(line: 147, column: 57, scope: !256)
!265 = !DILocation(line: 148, column: 13, scope: !256)
!266 = !DILocation(line: 148, column: 11, scope: !256)
!267 = !DILocation(line: 148, column: 10, scope: !256)
!268 = !DILocation(line: 148, column: 3, scope: !256)
!269 = distinct !DISubprogram(name: "ex306ArrayElemPointerSingleElementInstances", scope: !8, file: !8, line: 156, type: !270, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!270 = !DISubroutineType(types: !271)
!271 = !{!16, !272}
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s306", file: !8, line: 151, size: 256, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !272, file: !8, line: 152, baseType: !262, size: 256)
!275 = !DILocalVariable(name: "s", arg: 1, scope: !269, file: !8, line: 156, type: !272)
!276 = !DILocation(line: 156, column: 61, scope: !269)
!277 = !DILocation(line: 157, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !269, file: !8, line: 157, column: 7)
!279 = !DILocation(line: 157, column: 7, scope: !278)
!280 = !DILocation(line: 157, column: 14, scope: !278)
!281 = !DILocation(line: 157, column: 22, scope: !278)
!282 = !DILocation(line: 157, column: 27, scope: !278)
!283 = !DILocation(line: 157, column: 25, scope: !278)
!284 = !DILocation(line: 157, column: 32, scope: !278)
!285 = !DILocation(line: 157, column: 7, scope: !269)
!286 = !DILocation(line: 159, column: 5, scope: !287)
!287 = distinct !DILexicalBlock(scope: !278, file: !8, line: 157, column: 41)
!288 = !DILocation(line: 160, column: 16, scope: !289)
!289 = distinct !DILexicalBlock(scope: !278, file: !8, line: 160, column: 14)
!290 = !DILocation(line: 160, column: 14, scope: !289)
!291 = !DILocation(line: 160, column: 26, scope: !289)
!292 = !DILocation(line: 160, column: 24, scope: !289)
!293 = !DILocation(line: 160, column: 21, scope: !289)
!294 = !DILocation(line: 160, column: 14, scope: !278)
!295 = !DILocation(line: 161, column: 5, scope: !296)
!296 = distinct !DILexicalBlock(scope: !289, file: !8, line: 160, column: 32)
!297 = !DILocation(line: 164, column: 5, scope: !298)
!298 = distinct !DILexicalBlock(scope: !289, file: !8, line: 162, column: 10)
!299 = !DILocation(line: 166, column: 1, scope: !269)
!300 = distinct !DISubprogram(name: "ex307ArrayElemPointerMultipleElementValues", scope: !8, file: !8, line: 172, type: !301, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!301 = !DISubroutineType(types: !302)
!302 = !{!16, !303}
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s307", file: !8, line: 168, size: 256, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !303, file: !8, line: 169, baseType: !262, size: 256)
!306 = !DILocalVariable(name: "s", arg: 1, scope: !300, file: !8, line: 172, type: !303)
!307 = !DILocation(line: 172, column: 60, scope: !300)
!308 = !DILocation(line: 174, column: 13, scope: !300)
!309 = !DILocation(line: 174, column: 11, scope: !300)
!310 = !DILocation(line: 174, column: 10, scope: !300)
!311 = !DILocation(line: 174, column: 23, scope: !300)
!312 = !DILocation(line: 174, column: 21, scope: !300)
!313 = !DILocation(line: 174, column: 20, scope: !300)
!314 = !DILocation(line: 174, column: 18, scope: !300)
!315 = !DILocation(line: 174, column: 3, scope: !300)
!316 = distinct !DISubprogram(name: "ex308ArrayElemPointerFunction", scope: !8, file: !8, line: 181, type: !317, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!317 = !DISubroutineType(types: !318)
!318 = !{!16, !319}
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s308", file: !8, line: 177, size: 256, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !319, file: !8, line: 178, baseType: !322, size: 256)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !114)
!323 = !DILocalVariable(name: "s", arg: 1, scope: !316, file: !8, line: 181, type: !319)
!324 = !DILocation(line: 181, column: 47, scope: !316)
!325 = !DILocation(line: 182, column: 12, scope: !316)
!326 = !DILocation(line: 182, column: 10, scope: !316)
!327 = !DILocation(line: 182, column: 23, scope: !316)
!328 = !DILocation(line: 182, column: 21, scope: !316)
!329 = !DILocation(line: 182, column: 19, scope: !316)
!330 = !DILocation(line: 182, column: 3, scope: !316)
!331 = distinct !DISubprogram(name: "ex401PointerToInt", scope: !8, file: !8, line: 187, type: !32, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!332 = !DILocalVariable(name: "a", arg: 1, scope: !331, file: !8, line: 187, type: !34)
!333 = !DILocation(line: 187, column: 28, scope: !331)
!334 = !DILocation(line: 188, column: 11, scope: !331)
!335 = !DILocation(line: 188, column: 10, scope: !331)
!336 = !DILocation(line: 188, column: 3, scope: !331)
!337 = distinct !DISubprogram(name: "ex402PointerToStruct", scope: !8, file: !8, line: 194, type: !338, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!338 = !DISubroutineType(types: !339)
!339 = !{!16, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s402", file: !8, line: 191, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !341, file: !8, line: 192, baseType: !16, size: 32)
!344 = !DILocalVariable(name: "s", arg: 1, scope: !337, file: !8, line: 194, type: !340)
!345 = !DILocation(line: 194, column: 39, scope: !337)
!346 = !DILocation(line: 195, column: 10, scope: !337)
!347 = !DILocation(line: 195, column: 13, scope: !337)
!348 = !DILocation(line: 195, column: 3, scope: !337)
!349 = distinct !DISubprogram(name: "ex405PointerToPointerSingleElementValue", scope: !8, file: !8, line: 200, type: !350, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!350 = !DISubroutineType(types: !351)
!351 = !{!16, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!353 = !DILocalVariable(name: "a", arg: 1, scope: !349, file: !8, line: 200, type: !352)
!354 = !DILocation(line: 200, column: 51, scope: !349)
!355 = !DILocation(line: 201, column: 12, scope: !349)
!356 = !DILocation(line: 201, column: 11, scope: !349)
!357 = !DILocation(line: 201, column: 10, scope: !349)
!358 = !DILocation(line: 201, column: 3, scope: !349)
!359 = distinct !DISubprogram(name: "ex406PointerToPointerSingleElementInstances", scope: !8, file: !8, line: 204, type: !360, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!360 = !DISubroutineType(types: !361)
!361 = !{!16, !352, !352}
!362 = !DILocalVariable(name: "a", arg: 1, scope: !359, file: !8, line: 204, type: !352)
!363 = !DILocation(line: 204, column: 55, scope: !359)
!364 = !DILocalVariable(name: "b", arg: 2, scope: !359, file: !8, line: 204, type: !352)
!365 = !DILocation(line: 204, column: 64, scope: !359)
!366 = !DILocation(line: 205, column: 8, scope: !367)
!367 = distinct !DILexicalBlock(scope: !359, file: !8, line: 205, column: 7)
!368 = !DILocation(line: 205, column: 7, scope: !367)
!369 = !DILocation(line: 205, column: 10, scope: !367)
!370 = !DILocation(line: 205, column: 18, scope: !367)
!371 = !DILocation(line: 205, column: 22, scope: !367)
!372 = !DILocation(line: 205, column: 21, scope: !367)
!373 = !DILocation(line: 205, column: 24, scope: !367)
!374 = !DILocation(line: 205, column: 7, scope: !359)
!375 = !DILocation(line: 207, column: 5, scope: !376)
!376 = distinct !DILexicalBlock(scope: !367, file: !8, line: 205, column: 33)
!377 = !DILocation(line: 208, column: 15, scope: !378)
!378 = distinct !DILexicalBlock(scope: !367, file: !8, line: 208, column: 14)
!379 = !DILocation(line: 208, column: 14, scope: !378)
!380 = !DILocation(line: 208, column: 21, scope: !378)
!381 = !DILocation(line: 208, column: 20, scope: !378)
!382 = !DILocation(line: 208, column: 17, scope: !378)
!383 = !DILocation(line: 208, column: 14, scope: !367)
!384 = !DILocation(line: 209, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !378, file: !8, line: 208, column: 24)
!386 = !DILocation(line: 212, column: 5, scope: !387)
!387 = distinct !DILexicalBlock(scope: !378, file: !8, line: 210, column: 10)
!388 = !DILocation(line: 214, column: 1, scope: !359)
!389 = distinct !DISubprogram(name: "ex407PointerToPointerMultipleElementValues", scope: !8, file: !8, line: 216, type: !350, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!390 = !DILocalVariable(name: "a", arg: 1, scope: !389, file: !8, line: 216, type: !352)
!391 = !DILocation(line: 216, column: 54, scope: !389)
!392 = !DILocation(line: 218, column: 12, scope: !389)
!393 = !DILocation(line: 218, column: 11, scope: !389)
!394 = !DILocation(line: 218, column: 10, scope: !389)
!395 = !DILocation(line: 218, column: 22, scope: !389)
!396 = !DILocation(line: 218, column: 21, scope: !389)
!397 = !DILocation(line: 218, column: 20, scope: !389)
!398 = !DILocation(line: 218, column: 18, scope: !389)
!399 = !DILocation(line: 218, column: 3, scope: !389)
!400 = distinct !DISubprogram(name: "ex408PointerToPointerFunction", scope: !8, file: !8, line: 221, type: !401, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!401 = !DISubroutineType(types: !402)
!402 = !{!16, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!404 = !DILocalVariable(name: "a", arg: 1, scope: !400, file: !8, line: 221, type: !403)
!405 = !DILocation(line: 221, column: 42, scope: !400)
!406 = !DILocation(line: 222, column: 12, scope: !400)
!407 = !DILocation(line: 222, column: 11, scope: !400)
!408 = !DILocation(line: 222, column: 10, scope: !400)
!409 = !DILocation(line: 222, column: 3, scope: !400)
!410 = distinct !DISubprogram(name: "ex501StructWithArrayOfPointers", scope: !8, file: !8, line: 233, type: !411, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!411 = !DISubroutineType(types: !412)
!412 = !{!16, !413}
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s501", file: !8, line: 227, size: 256, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !413, file: !8, line: 230, baseType: !416, size: 256)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !8, line: 228, size: 256, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !416, file: !8, line: 229, baseType: !262, size: 256)
!419 = !DILocalVariable(name: "s", arg: 1, scope: !410, file: !8, line: 233, type: !413)
!420 = !DILocation(line: 233, column: 48, scope: !410)
!421 = !DILocation(line: 234, column: 13, scope: !410)
!422 = !DILocation(line: 234, column: 19, scope: !410)
!423 = !DILocation(line: 234, column: 11, scope: !410)
!424 = !DILocation(line: 234, column: 10, scope: !410)
!425 = !DILocation(line: 234, column: 3, scope: !410)
!426 = distinct !DISubprogram(name: "ex502ArrayOfStructsWithPointer", scope: !8, file: !8, line: 243, type: !427, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!427 = !DISubroutineType(types: !428)
!428 = !{!16, !429}
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s502", file: !8, line: 237, size: 256, elements: !430)
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !429, file: !8, line: 240, baseType: !432, size: 256)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 256, elements: !114)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !8, line: 238, size: 64, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !433, file: !8, line: 239, baseType: !34, size: 64)
!436 = !DILocalVariable(name: "s", arg: 1, scope: !426, file: !8, line: 243, type: !429)
!437 = !DILocation(line: 243, column: 48, scope: !426)
!438 = !DILocation(line: 244, column: 13, scope: !426)
!439 = !DILocation(line: 244, column: 11, scope: !426)
!440 = !DILocation(line: 244, column: 22, scope: !426)
!441 = !DILocation(line: 244, column: 10, scope: !426)
!442 = !DILocation(line: 244, column: 3, scope: !426)
