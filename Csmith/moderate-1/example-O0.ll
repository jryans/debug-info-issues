; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

%struct.S0 = type { i16, i8 }

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_4 = internal global i64 -2, align 8, !dbg !43
@g_13 = internal global i32 -1656438727, align 4, !dbg !47
@g_20 = internal global [8 x [6 x [1 x i32]]] [[6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer], [6 x [1 x i32]] [[1 x i32] [i32 7], [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] [i32 4], [1 x i32] [i32 7], [1 x i32] [i32 4]]], align 16, !dbg !49
@g_21 = internal global i32 1, align 4, !dbg !56
@g_22 = internal global i32 -116915628, align 4, !dbg !58
@g_25 = internal global %struct.S0 { i16 7191, i8 2 }, align 2, !dbg !63
@g_35 = internal global i16 26688, align 2, !dbg !65
@g_37 = internal global [1 x i16] [i16 13276], align 2, !dbg !68
@g_9 = internal global i32* null, align 8, !dbg !15
@g_11 = internal global i32** @g_12, align 8, !dbg !18
@g_27 = internal global %struct.S0* @g_25, align 8, !dbg !24
@__const.func_1.l_33 = private unnamed_addr constant [7 x i32*] [i32* @g_13, i32* @g_13, i32* @g_13, i32* @g_13, i32* @g_13, i32* @g_13, i32* @g_13], align 16
@g_50 = internal global [2 x %struct.S0] [%struct.S0 { i16 -9, i8 1 }, %struct.S0 { i16 -9, i8 1 }], align 2, !dbg !38
@__const.func_2.l_10 = private unnamed_addr constant [4 x i64] [i64 1, i64 1, i64 1, i64 1], align 16
@g_12 = internal global i32* @g_13, align 8, !dbg !22

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !81 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %j, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %k, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !90, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %print_hash_value, align 4, !dbg !91
  %call = call i64 @func_1(), !dbg !92
  %0 = load i64, i64* @g_4, align 8, !dbg !93
  store volatile i64 %0, i64* @csmith_sink_, align 8, !dbg !94
  %1 = load i32, i32* @g_13, align 4, !dbg !95
  %conv = sext i32 %1 to i64, !dbg !95
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !96
  store i32 0, i32* %i, align 4, !dbg !97
  br label %for.cond, !dbg !99

for.cond:                                         ; preds = %for.inc18, %entry
  %2 = load i32, i32* %i, align 4, !dbg !100
  %cmp = icmp slt i32 %2, 8, !dbg !102
  br i1 %cmp, label %for.body, label %for.end20, !dbg !103

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !104
  br label %for.cond2, !dbg !107

for.cond2:                                        ; preds = %for.inc15, %for.body
  %3 = load i32, i32* %j, align 4, !dbg !108
  %cmp3 = icmp slt i32 %3, 6, !dbg !110
  br i1 %cmp3, label %for.body5, label %for.end17, !dbg !111

for.body5:                                        ; preds = %for.cond2
  store i32 0, i32* %k, align 4, !dbg !112
  br label %for.cond6, !dbg !115

for.cond6:                                        ; preds = %for.inc, %for.body5
  %4 = load i32, i32* %k, align 4, !dbg !116
  %cmp7 = icmp slt i32 %4, 1, !dbg !118
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !119

for.body9:                                        ; preds = %for.cond6
  %5 = load i32, i32* %i, align 4, !dbg !120
  %idxprom = sext i32 %5 to i64, !dbg !122
  %arrayidx = getelementptr inbounds [8 x [6 x [1 x i32]]], [8 x [6 x [1 x i32]]]* @g_20, i64 0, i64 %idxprom, !dbg !122
  %6 = load i32, i32* %j, align 4, !dbg !123
  %idxprom10 = sext i32 %6 to i64, !dbg !122
  %arrayidx11 = getelementptr inbounds [6 x [1 x i32]], [6 x [1 x i32]]* %arrayidx, i64 0, i64 %idxprom10, !dbg !122
  %7 = load i32, i32* %k, align 4, !dbg !124
  %idxprom12 = sext i32 %7 to i64, !dbg !122
  %arrayidx13 = getelementptr inbounds [1 x i32], [1 x i32]* %arrayidx11, i64 0, i64 %idxprom12, !dbg !122
  %8 = load i32, i32* %arrayidx13, align 4, !dbg !122
  %conv14 = sext i32 %8 to i64, !dbg !122
  store volatile i64 %conv14, i64* @csmith_sink_, align 8, !dbg !125
  br label %for.inc, !dbg !126

for.inc:                                          ; preds = %for.body9
  %9 = load i32, i32* %k, align 4, !dbg !127
  %inc = add nsw i32 %9, 1, !dbg !127
  store i32 %inc, i32* %k, align 4, !dbg !127
  br label %for.cond6, !dbg !128, !llvm.loop !129

for.end:                                          ; preds = %for.cond6
  br label %for.inc15, !dbg !132

for.inc15:                                        ; preds = %for.end
  %10 = load i32, i32* %j, align 4, !dbg !133
  %inc16 = add nsw i32 %10, 1, !dbg !133
  store i32 %inc16, i32* %j, align 4, !dbg !133
  br label %for.cond2, !dbg !134, !llvm.loop !135

for.end17:                                        ; preds = %for.cond2
  br label %for.inc18, !dbg !137

for.inc18:                                        ; preds = %for.end17
  %11 = load i32, i32* %i, align 4, !dbg !138
  %inc19 = add nsw i32 %11, 1, !dbg !138
  store i32 %inc19, i32* %i, align 4, !dbg !138
  br label %for.cond, !dbg !139, !llvm.loop !140

for.end20:                                        ; preds = %for.cond
  %12 = load i32, i32* @g_21, align 4, !dbg !142
  %conv21 = sext i32 %12 to i64, !dbg !142
  store volatile i64 %conv21, i64* @csmith_sink_, align 8, !dbg !143
  %13 = load volatile i32, i32* @g_22, align 4, !dbg !144
  %conv22 = zext i32 %13 to i64, !dbg !144
  store volatile i64 %conv22, i64* @csmith_sink_, align 8, !dbg !145
  %14 = load volatile i16, i16* getelementptr inbounds (%struct.S0, %struct.S0* @g_25, i32 0, i32 0), align 2, !dbg !146
  %conv23 = sext i16 %14 to i64, !dbg !147
  store volatile i64 %conv23, i64* @csmith_sink_, align 8, !dbg !148
  %15 = load volatile i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_25, i32 0, i32 1), align 2, !dbg !149
  %conv24 = zext i8 %15 to i64, !dbg !150
  store volatile i64 %conv24, i64* @csmith_sink_, align 8, !dbg !151
  %16 = load volatile i16, i16* @g_35, align 2, !dbg !152
  %conv25 = sext i16 %16 to i64, !dbg !152
  store volatile i64 %conv25, i64* @csmith_sink_, align 8, !dbg !153
  store i32 0, i32* %i, align 4, !dbg !154
  br label %for.cond26, !dbg !156

for.cond26:                                       ; preds = %for.inc33, %for.end20
  %17 = load i32, i32* %i, align 4, !dbg !157
  %cmp27 = icmp slt i32 %17, 1, !dbg !159
  br i1 %cmp27, label %for.body29, label %for.end35, !dbg !160

for.body29:                                       ; preds = %for.cond26
  %18 = load i32, i32* %i, align 4, !dbg !161
  %idxprom30 = sext i32 %18 to i64, !dbg !163
  %arrayidx31 = getelementptr inbounds [1 x i16], [1 x i16]* @g_37, i64 0, i64 %idxprom30, !dbg !163
  %19 = load volatile i16, i16* %arrayidx31, align 2, !dbg !163
  %conv32 = zext i16 %19 to i64, !dbg !163
  store volatile i64 %conv32, i64* @csmith_sink_, align 8, !dbg !164
  br label %for.inc33, !dbg !165

for.inc33:                                        ; preds = %for.body29
  %20 = load i32, i32* %i, align 4, !dbg !166
  %inc34 = add nsw i32 %20, 1, !dbg !166
  store i32 %inc34, i32* %i, align 4, !dbg !166
  br label %for.cond26, !dbg !167, !llvm.loop !168

for.end35:                                        ; preds = %for.cond26
  store i32 0, i32* %i, align 4, !dbg !170
  br label %for.cond36, !dbg !172

for.cond36:                                       ; preds = %for.inc40, %for.end35
  %21 = load i32, i32* %i, align 4, !dbg !173
  %cmp37 = icmp slt i32 %21, 2, !dbg !175
  br i1 %cmp37, label %for.body39, label %for.end42, !dbg !176

for.body39:                                       ; preds = %for.cond36
  br label %for.inc40, !dbg !177

for.inc40:                                        ; preds = %for.body39
  %22 = load i32, i32* %i, align 4, !dbg !179
  %inc41 = add nsw i32 %22, 1, !dbg !179
  store i32 %inc41, i32* %i, align 4, !dbg !179
  br label %for.cond36, !dbg !180, !llvm.loop !181

for.end42:                                        ; preds = %for.cond36
  ret i32 0, !dbg !183
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @func_1() #0 !dbg !184 {
entry:
  %l_16 = alloca [1 x i64], align 8
  %l_17 = alloca i32, align 4
  %l_36 = alloca i32, align 4
  %i = alloca i32, align 4
  %l_34 = alloca i8, align 1
  %l_49 = alloca i32, align 4
  %i9 = alloca i32, align 4
  %l_18 = alloca [4 x i32*], align 16
  %l_19 = alloca i64, align 8
  %i21 = alloca i32, align 4
  %l_28 = alloca i32*, align 8
  %l_29 = alloca i32*, align 8
  %l_30 = alloca i32*, align 8
  %l_31 = alloca i32*, align 8
  %l_32 = alloca i32*, align 8
  %l_33 = alloca [7 x i32*], align 16
  %l_46 = alloca i8*, align 8
  %i31 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [1 x i64]* %l_16, metadata !189, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %l_17, metadata !192, metadata !DIExpression()), !dbg !193
  store i32 -1422269916, i32* %l_17, align 4, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %l_36, metadata !194, metadata !DIExpression()), !dbg !195
  store i32 -4, i32* %l_36, align 4, !dbg !195
  call void @llvm.dbg.declare(metadata i32* %i, metadata !196, metadata !DIExpression()), !dbg !197
  store i32 0, i32* %i, align 4, !dbg !198
  br label %for.cond, !dbg !200

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !201
  %cmp = icmp slt i32 %0, 1, !dbg !203
  br i1 %cmp, label %for.body, label %for.end, !dbg !204

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !205
  %idxprom = sext i32 %1 to i64, !dbg !206
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %l_16, i64 0, i64 %idxprom, !dbg !206
  store i64 -1, i64* %arrayidx, align 8, !dbg !207
  br label %for.inc, !dbg !206

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !208
  %inc = add nsw i32 %2, 1, !dbg !208
  store i32 %inc, i32* %i, align 4, !dbg !208
  br label %for.cond, !dbg !209, !llvm.loop !210

for.end:                                          ; preds = %for.cond
  %3 = load i64, i64* @g_4, align 8, !dbg !212
  %conv = trunc i64 %3 to i8, !dbg !212
  %call = call i32* @func_2(i8 signext %conv), !dbg !213
  store i32* %call, i32** @g_9, align 8, !dbg !214
  %4 = load volatile i32**, i32*** @g_11, align 8, !dbg !215
  store i32* %call, i32** %4, align 8, !dbg !216
  store i64 -2, i64* @g_4, align 8, !dbg !217
  br label %for.cond1, !dbg !219

for.cond1:                                        ; preds = %for.inc45, %for.end
  %5 = load i64, i64* @g_4, align 8, !dbg !220
  %cmp2 = icmp ult i64 %5, 19, !dbg !222
  br i1 %cmp2, label %for.body4, label %for.end47, !dbg !223

for.body4:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i8* %l_34, metadata !224, metadata !DIExpression()), !dbg !226
  store i8 0, i8* %l_34, align 1, !dbg !226
  call void @llvm.dbg.declare(metadata i32* %l_49, metadata !227, metadata !DIExpression()), !dbg !229
  store i32 -1, i32* %l_49, align 4, !dbg !229
  store i32 0, i32* @g_13, align 4, !dbg !230
  br label %for.cond5, !dbg !232

for.cond5:                                        ; preds = %for.inc12, %for.body4
  %6 = load i32, i32* @g_13, align 4, !dbg !233
  %cmp6 = icmp sge i32 %6, 0, !dbg !235
  br i1 %cmp6, label %for.body8, label %for.end13, !dbg !236

for.body8:                                        ; preds = %for.cond5
  call void @llvm.dbg.declare(metadata i32* %i9, metadata !237, metadata !DIExpression()), !dbg !239
  %7 = load i32, i32* @g_13, align 4, !dbg !240
  %idxprom10 = sext i32 %7 to i64, !dbg !242
  %arrayidx11 = getelementptr inbounds [1 x i64], [1 x i64]* %l_16, i64 0, i64 %idxprom10, !dbg !242
  %8 = load i64, i64* %arrayidx11, align 8, !dbg !242
  %tobool = icmp ne i64 %8, 0, !dbg !242
  br i1 %tobool, label %if.then, label %if.end, !dbg !243

if.then:                                          ; preds = %for.body8
  br label %for.end13, !dbg !244

if.end:                                           ; preds = %for.body8
  br label %for.inc12, !dbg !245

for.inc12:                                        ; preds = %if.end
  %9 = load i32, i32* @g_13, align 4, !dbg !246
  %sub = sub nsw i32 %9, 1, !dbg !246
  store i32 %sub, i32* @g_13, align 4, !dbg !246
  br label %for.cond5, !dbg !247, !llvm.loop !248

for.end13:                                        ; preds = %if.then, %for.cond5
  %arrayidx14 = getelementptr inbounds [1 x i64], [1 x i64]* %l_16, i64 0, i64 0, !dbg !250
  %10 = load i64, i64* %arrayidx14, align 8, !dbg !250
  %cmp15 = icmp ne i64 %10, 1, !dbg !252
  %conv16 = zext i1 %cmp15 to i32, !dbg !252
  %conv17 = sext i32 %conv16 to i64, !dbg !253
  %cmp18 = icmp eq i64 %conv17, -1184326254995622926, !dbg !254
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !255

if.then20:                                        ; preds = %for.end13
  call void @llvm.dbg.declare(metadata [4 x i32*]* %l_18, metadata !256, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i64* %l_19, metadata !262, metadata !DIExpression()), !dbg !263
  store i64 5, i64* %l_19, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata i32* %i21, metadata !264, metadata !DIExpression()), !dbg !265
  store i32 0, i32* %i21, align 4, !dbg !266
  br label %for.cond22, !dbg !268

for.cond22:                                       ; preds = %for.inc28, %if.then20
  %11 = load i32, i32* %i21, align 4, !dbg !269
  %cmp23 = icmp slt i32 %11, 4, !dbg !271
  br i1 %cmp23, label %for.body25, label %for.end30, !dbg !272

for.body25:                                       ; preds = %for.cond22
  %12 = load i32, i32* %i21, align 4, !dbg !273
  %idxprom26 = sext i32 %12 to i64, !dbg !274
  %arrayidx27 = getelementptr inbounds [4 x i32*], [4 x i32*]* %l_18, i64 0, i64 %idxprom26, !dbg !274
  store i32* null, i32** %arrayidx27, align 8, !dbg !275
  br label %for.inc28, !dbg !274

for.inc28:                                        ; preds = %for.body25
  %13 = load i32, i32* %i21, align 4, !dbg !276
  %inc29 = add nsw i32 %13, 1, !dbg !276
  store i32 %inc29, i32* %i21, align 4, !dbg !276
  br label %for.cond22, !dbg !277, !llvm.loop !278

for.end30:                                        ; preds = %for.cond22
  %14 = load volatile i32, i32* @g_22, align 4, !dbg !280
  %dec = add i32 %14, -1, !dbg !280
  store volatile i32 %dec, i32* @g_22, align 4, !dbg !280
  %15 = load volatile %struct.S0*, %struct.S0** @g_27, align 8, !dbg !281
  %16 = bitcast %struct.S0* %15 to i8*, !dbg !282
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %16, i8* align 2 bitcast (%struct.S0* @g_25 to i8*), i64 4, i1 true), !dbg !282
  br label %if.end44, !dbg !283

if.else:                                          ; preds = %for.end13
  call void @llvm.dbg.declare(metadata i32** %l_28, metadata !284, metadata !DIExpression()), !dbg !286
  store i32* @g_13, i32** %l_28, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata i32** %l_29, metadata !287, metadata !DIExpression()), !dbg !288
  store i32* %l_17, i32** %l_29, align 8, !dbg !288
  call void @llvm.dbg.declare(metadata i32** %l_30, metadata !289, metadata !DIExpression()), !dbg !290
  store i32* @g_13, i32** %l_30, align 8, !dbg !290
  call void @llvm.dbg.declare(metadata i32** %l_31, metadata !291, metadata !DIExpression()), !dbg !292
  store i32* @g_13, i32** %l_31, align 8, !dbg !292
  call void @llvm.dbg.declare(metadata i32** %l_32, metadata !293, metadata !DIExpression()), !dbg !294
  store i32* %l_17, i32** %l_32, align 8, !dbg !294
  call void @llvm.dbg.declare(metadata [7 x i32*]* %l_33, metadata !295, metadata !DIExpression()), !dbg !299
  %17 = bitcast [7 x i32*]* %l_33 to i8*, !dbg !299
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([7 x i32*]* @__const.func_1.l_33 to i8*), i64 56, i1 false), !dbg !299
  call void @llvm.dbg.declare(metadata i8** %l_46, metadata !300, metadata !DIExpression()), !dbg !302
  store i8* %l_34, i8** %l_46, align 8, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %i31, metadata !303, metadata !DIExpression()), !dbg !304
  %18 = load volatile i16, i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_37, i64 0, i64 0), align 2, !dbg !305
  %dec32 = add i16 %18, -1, !dbg !305
  store volatile i16 %dec32, i16* getelementptr inbounds ([1 x i16], [1 x i16]* @g_37, i64 0, i64 0), align 2, !dbg !305
  %19 = load i32*, i32** %l_28, align 8, !dbg !306
  %20 = load i32, i32* %19, align 4, !dbg !307
  %conv33 = trunc i32 %20 to i8, !dbg !308
  %21 = load i8*, i8** %l_46, align 8, !dbg !309
  store i8 %conv33, i8* %21, align 1, !dbg !310
  %conv34 = sext i8 %conv33 to i32, !dbg !311
  %arrayidx35 = getelementptr inbounds [1 x i64], [1 x i64]* %l_16, i64 0, i64 0, !dbg !312
  %22 = load i64, i64* %arrayidx35, align 8, !dbg !312
  %conv36 = trunc i64 %22 to i8, !dbg !313
  %conv37 = sext i8 %conv36 to i32, !dbg !313
  %add = add nsw i32 %conv34, %conv37, !dbg !314
  %sub38 = sub nsw i32 %add, -1, !dbg !315
  %conv39 = trunc i32 %sub38 to i8, !dbg !316
  %conv40 = sext i8 %conv39 to i32, !dbg !316
  %23 = load i64, i64* @g_4, align 8, !dbg !317
  %conv41 = trunc i64 %23 to i8, !dbg !318
  %conv42 = sext i8 %conv41 to i32, !dbg !318
  %sub43 = sub nsw i32 %conv40, %conv42, !dbg !319
  %24 = load i32*, i32** %l_29, align 8, !dbg !320
  %25 = load i32, i32* %24, align 4, !dbg !321
  %or = or i32 %25, %sub43, !dbg !321
  store i32 %or, i32* %24, align 4, !dbg !321
  br label %if.end44

if.end44:                                         ; preds = %if.else, %for.end30
  br label %for.inc45, !dbg !322

for.inc45:                                        ; preds = %if.end44
  %26 = load i64, i64* @g_4, align 8, !dbg !323
  %inc46 = add i64 %26, 1, !dbg !323
  store i64 %inc46, i64* @g_4, align 8, !dbg !323
  br label %for.cond1, !dbg !324, !llvm.loop !325

for.end47:                                        ; preds = %for.cond1
  %27 = load volatile i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* @g_25, i32 0, i32 1), align 2, !dbg !327
  %conv48 = zext i8 %27 to i64, !dbg !328
  ret i64 %conv48, !dbg !329
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32* @func_2(i8 signext %p_3) #0 !dbg !330 {
entry:
  %p_3.addr = alloca i8, align 1
  %l_10 = alloca [4 x i64], align 16
  %i = alloca i32, align 4
  store i8 %p_3, i8* %p_3.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %p_3.addr, metadata !333, metadata !DIExpression()), !dbg !334
  store i64 6, i64* @g_4, align 8, !dbg !335
  br label %for.cond, !dbg !337

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i64, i64* @g_4, align 8, !dbg !338
  %cmp = icmp eq i64 %0, 55, !dbg !340
  br i1 %cmp, label %for.body, label %for.end9, !dbg !341

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [4 x i64]* %l_10, metadata !342, metadata !DIExpression()), !dbg !345
  %1 = bitcast [4 x i64]* %l_10 to i8*, !dbg !345
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([4 x i64]* @__const.func_2.l_10 to i8*), i64 32, i1 false), !dbg !345
  call void @llvm.dbg.declare(metadata i32* %i, metadata !346, metadata !DIExpression()), !dbg !347
  store i8 0, i8* %p_3.addr, align 1, !dbg !348
  br label %for.cond1, !dbg !350

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i8, i8* %p_3.addr, align 1, !dbg !351
  %conv = sext i8 %2 to i32, !dbg !351
  %cmp2 = icmp sle i32 %conv, 21, !dbg !353
  br i1 %cmp2, label %for.body4, label %for.end, !dbg !354

for.body4:                                        ; preds = %for.cond1
  %3 = load i32*, i32** @g_9, align 8, !dbg !355
  %cmp5 = icmp ne i32* null, %3, !dbg !357
  %conv6 = zext i1 %cmp5 to i32, !dbg !357
  %conv7 = sext i32 %conv6 to i64, !dbg !358
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* %l_10, i64 0, i64 2, !dbg !359
  %4 = load i64, i64* %arrayidx, align 16, !dbg !360
  %or = or i64 %4, %conv7, !dbg !360
  store i64 %or, i64* %arrayidx, align 16, !dbg !360
  br label %for.inc, !dbg !361

for.inc:                                          ; preds = %for.body4
  %5 = load i8, i8* %p_3.addr, align 1, !dbg !362
  %inc = add i8 %5, 1, !dbg !362
  store i8 %inc, i8* %p_3.addr, align 1, !dbg !362
  br label %for.cond1, !dbg !363, !llvm.loop !364

for.end:                                          ; preds = %for.cond1
  %6 = load i8, i8* %p_3.addr, align 1, !dbg !366
  %tobool = icmp ne i8 %6, 0, !dbg !366
  br i1 %tobool, label %if.then, label %if.end, !dbg !368

if.then:                                          ; preds = %for.end
  br label %for.inc8, !dbg !369

if.end:                                           ; preds = %for.end
  br label %for.inc8, !dbg !370

for.inc8:                                         ; preds = %if.end, %if.then
  %7 = load i64, i64* @g_4, align 8, !dbg !371
  %add = add i64 %7, 8, !dbg !371
  store i64 %add, i64* @g_4, align 8, !dbg !371
  br label %for.cond, !dbg !372, !llvm.loop !373

for.end9:                                         ; preds = %for.cond
  %8 = load i32*, i32** @g_9, align 8, !dbg !375
  ret i32* %8, !dbg !376
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 13, type: !73, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Homebrew clang version 13.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/moderate-1")
!4 = !{}
!5 = !{!6, !9, !11, !13}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !8)
!7 = !DIFile(filename: "/usr/local/Cellar/llvm/13.0.0_1/lib/clang/13.0.0/include/stdint.h", directory: "")
!8 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !10)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !12)
!12 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !{!0, !15, !18, !22, !24, !38, !43, !47, !49, !56, !58, !63, !65, !68}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "g_9", scope: !2, file: !3, line: 25, type: !17, isLocal: true, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "g_11", scope: !2, file: !3, line: 28, type: !20, isLocal: true, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "g_12", scope: !2, file: !3, line: 27, type: !17, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "g_27", scope: !2, file: !3, line: 38, type: !26, isLocal: true, isDefinition: true)
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S0", file: !3, line: 18, size: 32, elements: !30)
!30 = !{!31, !34}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !29, file: !3, line: 19, baseType: !32, size: 16)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !33)
!33 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !29, file: !3, line: 20, baseType: !35, size: 8, offset: 16)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !37)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "g_50", scope: !2, file: !3, line: 41, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 2)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "g_4", scope: !2, file: !3, line: 24, type: !45, isLocal: true, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !46)
!46 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "g_13", scope: !2, file: !3, line: 26, type: !9, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "g_20", scope: !2, file: !3, line: 29, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1536, elements: !52)
!52 = !{!53, !54, !55}
!53 = !DISubrange(count: 8)
!54 = !DISubrange(count: 6)
!55 = !DISubrange(count: 1)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "g_21", scope: !2, file: !3, line: 34, type: !9, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "g_22", scope: !2, file: !3, line: 35, type: !60, isLocal: true, isDefinition: true)
!60 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !62)
!62 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "g_25", scope: !2, file: !3, line: 36, type: !28, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "g_35", scope: !2, file: !3, line: 39, type: !67, isLocal: true, isDefinition: true)
!67 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "g_37", scope: !2, file: !3, line: 40, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 16, elements: !72)
!71 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!72 = !{!55}
!73 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!74 = !{i32 7, !"Dwarf Version", i32 4}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{i32 1, !"wchar_size", i32 4}
!77 = !{i32 7, !"PIC Level", i32 2}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"Homebrew clang version 13.0.0"}
!81 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 119, type: !82, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!82 = !DISubroutineType(types: !83)
!83 = !{!10}
!84 = !DILocalVariable(name: "i", scope: !81, file: !3, line: 120, type: !10)
!85 = !DILocation(line: 120, column: 7, scope: !81)
!86 = !DILocalVariable(name: "j", scope: !81, file: !3, line: 120, type: !10)
!87 = !DILocation(line: 120, column: 10, scope: !81)
!88 = !DILocalVariable(name: "k", scope: !81, file: !3, line: 120, type: !10)
!89 = !DILocation(line: 120, column: 13, scope: !81)
!90 = !DILocalVariable(name: "print_hash_value", scope: !81, file: !3, line: 121, type: !10)
!91 = !DILocation(line: 121, column: 7, scope: !81)
!92 = !DILocation(line: 123, column: 3, scope: !81)
!93 = !DILocation(line: 124, column: 18, scope: !81)
!94 = !DILocation(line: 124, column: 16, scope: !81)
!95 = !DILocation(line: 125, column: 18, scope: !81)
!96 = !DILocation(line: 125, column: 16, scope: !81)
!97 = !DILocation(line: 126, column: 10, scope: !98)
!98 = distinct !DILexicalBlock(scope: !81, file: !3, line: 126, column: 3)
!99 = !DILocation(line: 126, column: 8, scope: !98)
!100 = !DILocation(line: 126, column: 15, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !3, line: 126, column: 3)
!102 = !DILocation(line: 126, column: 17, scope: !101)
!103 = !DILocation(line: 126, column: 3, scope: !98)
!104 = !DILocation(line: 127, column: 12, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 127, column: 5)
!106 = distinct !DILexicalBlock(scope: !101, file: !3, line: 126, column: 27)
!107 = !DILocation(line: 127, column: 10, scope: !105)
!108 = !DILocation(line: 127, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !3, line: 127, column: 5)
!110 = !DILocation(line: 127, column: 19, scope: !109)
!111 = !DILocation(line: 127, column: 5, scope: !105)
!112 = !DILocation(line: 128, column: 14, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !3, line: 128, column: 7)
!114 = distinct !DILexicalBlock(scope: !109, file: !3, line: 127, column: 29)
!115 = !DILocation(line: 128, column: 12, scope: !113)
!116 = !DILocation(line: 128, column: 19, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !3, line: 128, column: 7)
!118 = !DILocation(line: 128, column: 21, scope: !117)
!119 = !DILocation(line: 128, column: 7, scope: !113)
!120 = !DILocation(line: 129, column: 29, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !3, line: 128, column: 31)
!122 = !DILocation(line: 129, column: 24, scope: !121)
!123 = !DILocation(line: 129, column: 32, scope: !121)
!124 = !DILocation(line: 129, column: 35, scope: !121)
!125 = !DILocation(line: 129, column: 22, scope: !121)
!126 = !DILocation(line: 130, column: 7, scope: !121)
!127 = !DILocation(line: 128, column: 27, scope: !117)
!128 = !DILocation(line: 128, column: 7, scope: !117)
!129 = distinct !{!129, !119, !130, !131}
!130 = !DILocation(line: 130, column: 7, scope: !113)
!131 = !{!"llvm.loop.mustprogress"}
!132 = !DILocation(line: 131, column: 5, scope: !114)
!133 = !DILocation(line: 127, column: 25, scope: !109)
!134 = !DILocation(line: 127, column: 5, scope: !109)
!135 = distinct !{!135, !111, !136, !131}
!136 = !DILocation(line: 131, column: 5, scope: !105)
!137 = !DILocation(line: 132, column: 3, scope: !106)
!138 = !DILocation(line: 126, column: 23, scope: !101)
!139 = !DILocation(line: 126, column: 3, scope: !101)
!140 = distinct !{!140, !103, !141, !131}
!141 = !DILocation(line: 132, column: 3, scope: !98)
!142 = !DILocation(line: 133, column: 18, scope: !81)
!143 = !DILocation(line: 133, column: 16, scope: !81)
!144 = !DILocation(line: 134, column: 18, scope: !81)
!145 = !DILocation(line: 134, column: 16, scope: !81)
!146 = !DILocation(line: 135, column: 23, scope: !81)
!147 = !DILocation(line: 135, column: 18, scope: !81)
!148 = !DILocation(line: 135, column: 16, scope: !81)
!149 = !DILocation(line: 136, column: 23, scope: !81)
!150 = !DILocation(line: 136, column: 18, scope: !81)
!151 = !DILocation(line: 136, column: 16, scope: !81)
!152 = !DILocation(line: 137, column: 18, scope: !81)
!153 = !DILocation(line: 137, column: 16, scope: !81)
!154 = !DILocation(line: 138, column: 10, scope: !155)
!155 = distinct !DILexicalBlock(scope: !81, file: !3, line: 138, column: 3)
!156 = !DILocation(line: 138, column: 8, scope: !155)
!157 = !DILocation(line: 138, column: 15, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !3, line: 138, column: 3)
!159 = !DILocation(line: 138, column: 17, scope: !158)
!160 = !DILocation(line: 138, column: 3, scope: !155)
!161 = !DILocation(line: 139, column: 25, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 138, column: 27)
!163 = !DILocation(line: 139, column: 20, scope: !162)
!164 = !DILocation(line: 139, column: 18, scope: !162)
!165 = !DILocation(line: 140, column: 3, scope: !162)
!166 = !DILocation(line: 138, column: 23, scope: !158)
!167 = !DILocation(line: 138, column: 3, scope: !158)
!168 = distinct !{!168, !160, !169, !131}
!169 = !DILocation(line: 140, column: 3, scope: !155)
!170 = !DILocation(line: 141, column: 10, scope: !171)
!171 = distinct !DILexicalBlock(scope: !81, file: !3, line: 141, column: 3)
!172 = !DILocation(line: 141, column: 8, scope: !171)
!173 = !DILocation(line: 141, column: 15, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !3, line: 141, column: 3)
!175 = !DILocation(line: 141, column: 17, scope: !174)
!176 = !DILocation(line: 141, column: 3, scope: !171)
!177 = !DILocation(line: 142, column: 3, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !3, line: 141, column: 27)
!179 = !DILocation(line: 141, column: 23, scope: !174)
!180 = !DILocation(line: 141, column: 3, scope: !174)
!181 = distinct !{!181, !176, !182, !131}
!182 = !DILocation(line: 142, column: 3, scope: !171)
!183 = !DILocation(line: 144, column: 3, scope: !81)
!184 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 53, type: !185, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!185 = !DISubroutineType(types: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !188)
!188 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!189 = !DILocalVariable(name: "l_16", scope: !184, file: !3, line: 54, type: !190)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 64, elements: !72)
!191 = !DILocation(line: 54, column: 11, scope: !184)
!192 = !DILocalVariable(name: "l_17", scope: !184, file: !3, line: 55, type: !9)
!193 = !DILocation(line: 55, column: 11, scope: !184)
!194 = !DILocalVariable(name: "l_36", scope: !184, file: !3, line: 56, type: !9)
!195 = !DILocation(line: 56, column: 11, scope: !184)
!196 = !DILocalVariable(name: "i", scope: !184, file: !3, line: 57, type: !10)
!197 = !DILocation(line: 57, column: 7, scope: !184)
!198 = !DILocation(line: 58, column: 10, scope: !199)
!199 = distinct !DILexicalBlock(scope: !184, file: !3, line: 58, column: 3)
!200 = !DILocation(line: 58, column: 8, scope: !199)
!201 = !DILocation(line: 58, column: 15, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !3, line: 58, column: 3)
!203 = !DILocation(line: 58, column: 17, scope: !202)
!204 = !DILocation(line: 58, column: 3, scope: !199)
!205 = !DILocation(line: 59, column: 10, scope: !202)
!206 = !DILocation(line: 59, column: 5, scope: !202)
!207 = !DILocation(line: 59, column: 13, scope: !202)
!208 = !DILocation(line: 58, column: 23, scope: !202)
!209 = !DILocation(line: 58, column: 3, scope: !202)
!210 = distinct !{!210, !204, !211, !131}
!211 = !DILocation(line: 59, column: 19, scope: !199)
!212 = !DILocation(line: 60, column: 27, scope: !184)
!213 = !DILocation(line: 60, column: 20, scope: !184)
!214 = !DILocation(line: 60, column: 18, scope: !184)
!215 = !DILocation(line: 60, column: 5, scope: !184)
!216 = !DILocation(line: 60, column: 11, scope: !184)
!217 = !DILocation(line: 61, column: 12, scope: !218)
!218 = distinct !DILexicalBlock(scope: !184, file: !3, line: 61, column: 3)
!219 = !DILocation(line: 61, column: 8, scope: !218)
!220 = !DILocation(line: 61, column: 21, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !3, line: 61, column: 3)
!222 = !DILocation(line: 61, column: 25, scope: !221)
!223 = !DILocation(line: 61, column: 3, scope: !218)
!224 = !DILocalVariable(name: "l_34", scope: !225, file: !3, line: 62, type: !6)
!225 = distinct !DILexicalBlock(scope: !221, file: !3, line: 61, column: 39)
!226 = !DILocation(line: 62, column: 12, scope: !225)
!227 = !DILocalVariable(name: "l_49", scope: !225, file: !3, line: 63, type: !228)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!229 = !DILocation(line: 63, column: 19, scope: !225)
!230 = !DILocation(line: 64, column: 15, scope: !231)
!231 = distinct !DILexicalBlock(scope: !225, file: !3, line: 64, column: 5)
!232 = !DILocation(line: 64, column: 10, scope: !231)
!233 = !DILocation(line: 64, column: 21, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !3, line: 64, column: 5)
!235 = !DILocation(line: 64, column: 26, scope: !234)
!236 = !DILocation(line: 64, column: 5, scope: !231)
!237 = !DILocalVariable(name: "i", scope: !238, file: !3, line: 65, type: !10)
!238 = distinct !DILexicalBlock(scope: !234, file: !3, line: 64, column: 44)
!239 = !DILocation(line: 65, column: 11, scope: !238)
!240 = !DILocation(line: 66, column: 16, scope: !241)
!241 = distinct !DILexicalBlock(scope: !238, file: !3, line: 66, column: 11)
!242 = !DILocation(line: 66, column: 11, scope: !241)
!243 = !DILocation(line: 66, column: 11, scope: !238)
!244 = !DILocation(line: 67, column: 9, scope: !241)
!245 = !DILocation(line: 68, column: 5, scope: !238)
!246 = !DILocation(line: 64, column: 38, scope: !234)
!247 = !DILocation(line: 64, column: 5, scope: !234)
!248 = distinct !{!248, !236, !249, !131}
!249 = !DILocation(line: 68, column: 5, scope: !231)
!250 = !DILocation(line: 69, column: 11, scope: !251)
!251 = distinct !DILexicalBlock(scope: !225, file: !3, line: 69, column: 9)
!252 = !DILocation(line: 69, column: 19, scope: !251)
!253 = !DILocation(line: 69, column: 10, scope: !251)
!254 = !DILocation(line: 69, column: 43, scope: !251)
!255 = !DILocation(line: 69, column: 9, scope: !225)
!256 = !DILocalVariable(name: "l_18", scope: !257, file: !3, line: 71, type: !258)
!257 = distinct !DILexicalBlock(scope: !251, file: !3, line: 70, column: 33)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 4)
!261 = !DILocation(line: 71, column: 16, scope: !257)
!262 = !DILocalVariable(name: "l_19", scope: !257, file: !3, line: 72, type: !187)
!263 = !DILocation(line: 72, column: 15, scope: !257)
!264 = !DILocalVariable(name: "i", scope: !257, file: !3, line: 73, type: !10)
!265 = !DILocation(line: 73, column: 11, scope: !257)
!266 = !DILocation(line: 74, column: 14, scope: !267)
!267 = distinct !DILexicalBlock(scope: !257, file: !3, line: 74, column: 7)
!268 = !DILocation(line: 74, column: 12, scope: !267)
!269 = !DILocation(line: 74, column: 19, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !3, line: 74, column: 7)
!271 = !DILocation(line: 74, column: 21, scope: !270)
!272 = !DILocation(line: 74, column: 7, scope: !267)
!273 = !DILocation(line: 75, column: 14, scope: !270)
!274 = !DILocation(line: 75, column: 9, scope: !270)
!275 = !DILocation(line: 75, column: 17, scope: !270)
!276 = !DILocation(line: 74, column: 27, scope: !270)
!277 = !DILocation(line: 74, column: 7, scope: !270)
!278 = distinct !{!278, !272, !279, !131}
!279 = !DILocation(line: 75, column: 27, scope: !267)
!280 = !DILocation(line: 76, column: 7, scope: !257)
!281 = !DILocation(line: 77, column: 9, scope: !257)
!282 = !DILocation(line: 77, column: 17, scope: !257)
!283 = !DILocation(line: 78, column: 5, scope: !257)
!284 = !DILocalVariable(name: "l_28", scope: !285, file: !3, line: 79, type: !17)
!285 = distinct !DILexicalBlock(scope: !251, file: !3, line: 78, column: 12)
!286 = !DILocation(line: 79, column: 16, scope: !285)
!287 = !DILocalVariable(name: "l_29", scope: !285, file: !3, line: 80, type: !17)
!288 = !DILocation(line: 80, column: 16, scope: !285)
!289 = !DILocalVariable(name: "l_30", scope: !285, file: !3, line: 81, type: !17)
!290 = !DILocation(line: 81, column: 16, scope: !285)
!291 = !DILocalVariable(name: "l_31", scope: !285, file: !3, line: 82, type: !17)
!292 = !DILocation(line: 82, column: 16, scope: !285)
!293 = !DILocalVariable(name: "l_32", scope: !285, file: !3, line: 83, type: !17)
!294 = !DILocation(line: 83, column: 16, scope: !285)
!295 = !DILocalVariable(name: "l_33", scope: !285, file: !3, line: 84, type: !296)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 448, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 7)
!299 = !DILocation(line: 84, column: 16, scope: !285)
!300 = !DILocalVariable(name: "l_46", scope: !285, file: !3, line: 85, type: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!302 = !DILocation(line: 85, column: 15, scope: !285)
!303 = !DILocalVariable(name: "i", scope: !285, file: !3, line: 86, type: !10)
!304 = !DILocation(line: 86, column: 11, scope: !285)
!305 = !DILocation(line: 87, column: 7, scope: !285)
!306 = !DILocation(line: 89, column: 52, scope: !285)
!307 = !DILocation(line: 89, column: 51, scope: !285)
!308 = !DILocation(line: 89, column: 50, scope: !285)
!309 = !DILocation(line: 89, column: 42, scope: !285)
!310 = !DILocation(line: 89, column: 48, scope: !285)
!311 = !DILocation(line: 89, column: 31, scope: !285)
!312 = !DILocation(line: 89, column: 69, scope: !285)
!313 = !DILocation(line: 89, column: 61, scope: !285)
!314 = !DILocation(line: 89, column: 59, scope: !285)
!315 = !DILocation(line: 89, column: 78, scope: !285)
!316 = !DILocation(line: 89, column: 12, scope: !285)
!317 = !DILocation(line: 94, column: 20, scope: !285)
!318 = !DILocation(line: 94, column: 12, scope: !285)
!319 = !DILocation(line: 93, column: 38, scope: !285)
!320 = !DILocation(line: 88, column: 9, scope: !285)
!321 = !DILocation(line: 88, column: 15, scope: !285)
!322 = !DILocation(line: 96, column: 3, scope: !225)
!323 = !DILocation(line: 61, column: 32, scope: !221)
!324 = !DILocation(line: 61, column: 3, scope: !221)
!325 = distinct !{!325, !223, !326, !131}
!326 = !DILocation(line: 96, column: 3, scope: !218)
!327 = !DILocation(line: 97, column: 15, scope: !184)
!328 = !DILocation(line: 97, column: 10, scope: !184)
!329 = !DILocation(line: 97, column: 3, scope: !184)
!330 = distinct !DISubprogram(name: "func_2", scope: !3, file: !3, line: 105, type: !331, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!331 = !DISubroutineType(types: !332)
!332 = !{!17, !6}
!333 = !DILocalVariable(name: "p_3", arg: 1, scope: !330, file: !3, line: 105, type: !6)
!334 = !DILocation(line: 105, column: 31, scope: !330)
!335 = !DILocation(line: 106, column: 12, scope: !336)
!336 = distinct !DILexicalBlock(scope: !330, file: !3, line: 106, column: 3)
!337 = !DILocation(line: 106, column: 8, scope: !336)
!338 = !DILocation(line: 106, column: 18, scope: !339)
!339 = distinct !DILexicalBlock(scope: !336, file: !3, line: 106, column: 3)
!340 = !DILocation(line: 106, column: 22, scope: !339)
!341 = !DILocation(line: 106, column: 3, scope: !336)
!342 = !DILocalVariable(name: "l_10", scope: !343, file: !3, line: 107, type: !344)
!343 = distinct !DILexicalBlock(scope: !339, file: !3, line: 106, column: 40)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !259)
!345 = !DILocation(line: 107, column: 14, scope: !343)
!346 = !DILocalVariable(name: "i", scope: !343, file: !3, line: 108, type: !10)
!347 = !DILocation(line: 108, column: 9, scope: !343)
!348 = !DILocation(line: 109, column: 14, scope: !349)
!349 = distinct !DILexicalBlock(scope: !343, file: !3, line: 109, column: 5)
!350 = !DILocation(line: 109, column: 10, scope: !349)
!351 = !DILocation(line: 109, column: 20, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !3, line: 109, column: 5)
!353 = !DILocation(line: 109, column: 24, scope: !352)
!354 = !DILocation(line: 109, column: 5, scope: !349)
!355 = !DILocation(line: 110, column: 32, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 109, column: 39)
!357 = !DILocation(line: 110, column: 29, scope: !356)
!358 = !DILocation(line: 110, column: 18, scope: !356)
!359 = !DILocation(line: 110, column: 7, scope: !356)
!360 = !DILocation(line: 110, column: 15, scope: !356)
!361 = !DILocation(line: 111, column: 5, scope: !356)
!362 = !DILocation(line: 109, column: 32, scope: !352)
!363 = !DILocation(line: 109, column: 5, scope: !352)
!364 = distinct !{!364, !354, !365, !131}
!365 = !DILocation(line: 111, column: 5, scope: !349)
!366 = !DILocation(line: 112, column: 9, scope: !367)
!367 = distinct !DILexicalBlock(scope: !343, file: !3, line: 112, column: 9)
!368 = !DILocation(line: 112, column: 9, scope: !343)
!369 = !DILocation(line: 113, column: 7, scope: !367)
!370 = !DILocation(line: 114, column: 3, scope: !343)
!371 = !DILocation(line: 106, column: 34, scope: !339)
!372 = !DILocation(line: 106, column: 3, scope: !339)
!373 = distinct !{!373, !341, !374, !131}
!374 = !DILocation(line: 114, column: 3, scope: !336)
!375 = !DILocation(line: 115, column: 10, scope: !330)
!376 = !DILocation(line: 115, column: 3, scope: !330)
