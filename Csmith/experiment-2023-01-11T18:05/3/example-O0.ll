; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_18 = internal global i64 -7452851814065785156, align 8, !dbg !17
@g_23 = internal global [7 x [1 x [4 x i64]]] [[1 x [4 x i64]] [[4 x i64] [i64 -8298649277171715255, i64 1, i64 4524214106003679608, i64 -4397432519571325210]], [1 x [4 x i64]] [[4 x i64] [i64 7513574240801748731, i64 4262329213784725821, i64 7513574240801748731, i64 -4397432519571325210]], [1 x [4 x i64]] [[4 x i64] [i64 4524214106003679608, i64 1, i64 -8298649277171715255, i64 2]], [1 x [4 x i64]] [[4 x i64] [i64 -1210463345470187802, i64 -8689053581271351668, i64 1, i64 1]], [1 x [4 x i64]] [[4 x i64] [i64 0, i64 0, i64 1, i64 7513574240801748731]], [1 x [4 x i64]] [[4 x i64] [i64 -1210463345470187802, i64 8053252004947928403, i64 -8298649277171715255, i64 -8689053581271351668]], [1 x [4 x i64]] [[4 x i64] [i64 4524214106003679608, i64 -8298649277171715255, i64 7513574240801748731, i64 -8298649277171715255]]], align 16, !dbg !21
@g_26 = internal global i32 -199565431, align 4, !dbg !28
@g_29 = internal global i16 1, align 2, !dbg !32
@g_33 = internal global i32 132953365, align 4, !dbg !34
@__const.func_1.l_24 = private unnamed_addr constant [6 x [3 x i32]] [[3 x i32] [i32 451802239, i32 1263216344, i32 1263216344], [3 x i32] [i32 -1824343266, i32 -2127958930, i32 -1824343266], [3 x i32] [i32 451802239, i32 451802239, i32 1263216344], [3 x i32] [i32 1, i32 -2127958930, i32 1], [3 x i32] [i32 451802239, i32 1263216344, i32 1263216344], [3 x i32] [i32 -1824343266, i32 -2127958930, i32 -1824343266]], align 16
@__const.func_2.l_25 = private unnamed_addr constant [10 x [3 x [8 x i32*]]] [[3 x [8 x i32*]] [[8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* null, i32* @g_26, i32* @g_26]], [3 x [8 x i32*]] [[8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26]], [3 x [8 x i32*]] [[8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* null, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26]], [3 x [8 x i32*]] [[8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* null, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26]], [3 x [8 x i32*]] [[8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* null, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26]], [3 x [8 x i32*]] [[8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* null, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26]], [3 x [8 x i32*]] [[8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* null, i32* @g_26, i32* @g_26]], [3 x [8 x i32*]] [[8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* null, i32* @g_26, i32* @g_26]], [3 x [8 x i32*]] [[8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* null, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* null, i32* @g_26, i32* @g_26]], [3 x [8 x i32*]] [[8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26, i32* @g_26], [8 x i32*] [i32* @g_26, i32* null, i32* @g_26, i32* @g_26, i32* null, i32* @g_26, i32* @g_26, i32* @g_26]]], align 16

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !46 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %j, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %k, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 0, i32* %print_hash_value, align 4, !dbg !56
  %call = call i32 @func_1(), !dbg !57
  %0 = load i64, i64* @g_18, align 8, !dbg !58
  store volatile i64 %0, i64* @csmith_sink_, align 8, !dbg !59
  store i32 0, i32* %i, align 4, !dbg !60
  br label %for.cond, !dbg !62

for.cond:                                         ; preds = %for.inc14, %entry
  %1 = load i32, i32* %i, align 4, !dbg !63
  %cmp = icmp slt i32 %1, 7, !dbg !65
  br i1 %cmp, label %for.body, label %for.end16, !dbg !66

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !67
  br label %for.cond1, !dbg !70

for.cond1:                                        ; preds = %for.inc11, %for.body
  %2 = load i32, i32* %j, align 4, !dbg !71
  %cmp2 = icmp slt i32 %2, 1, !dbg !73
  br i1 %cmp2, label %for.body3, label %for.end13, !dbg !74

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4, !dbg !75
  br label %for.cond4, !dbg !78

for.cond4:                                        ; preds = %for.inc, %for.body3
  %3 = load i32, i32* %k, align 4, !dbg !79
  %cmp5 = icmp slt i32 %3, 4, !dbg !81
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !82

for.body6:                                        ; preds = %for.cond4
  %4 = load i32, i32* %i, align 4, !dbg !83
  %idxprom = sext i32 %4 to i64, !dbg !85
  %arrayidx = getelementptr inbounds [7 x [1 x [4 x i64]]], [7 x [1 x [4 x i64]]]* @g_23, i64 0, i64 %idxprom, !dbg !85
  %5 = load i32, i32* %j, align 4, !dbg !86
  %idxprom7 = sext i32 %5 to i64, !dbg !85
  %arrayidx8 = getelementptr inbounds [1 x [4 x i64]], [1 x [4 x i64]]* %arrayidx, i64 0, i64 %idxprom7, !dbg !85
  %6 = load i32, i32* %k, align 4, !dbg !87
  %idxprom9 = sext i32 %6 to i64, !dbg !85
  %arrayidx10 = getelementptr inbounds [4 x i64], [4 x i64]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !85
  %7 = load i64, i64* %arrayidx10, align 8, !dbg !85
  store volatile i64 %7, i64* @csmith_sink_, align 8, !dbg !88
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %for.body6
  %8 = load i32, i32* %k, align 4, !dbg !90
  %inc = add nsw i32 %8, 1, !dbg !90
  store i32 %inc, i32* %k, align 4, !dbg !90
  br label %for.cond4, !dbg !91, !llvm.loop !92

for.end:                                          ; preds = %for.cond4
  br label %for.inc11, !dbg !95

for.inc11:                                        ; preds = %for.end
  %9 = load i32, i32* %j, align 4, !dbg !96
  %inc12 = add nsw i32 %9, 1, !dbg !96
  store i32 %inc12, i32* %j, align 4, !dbg !96
  br label %for.cond1, !dbg !97, !llvm.loop !98

for.end13:                                        ; preds = %for.cond1
  br label %for.inc14, !dbg !100

for.inc14:                                        ; preds = %for.end13
  %10 = load i32, i32* %i, align 4, !dbg !101
  %inc15 = add nsw i32 %10, 1, !dbg !101
  store i32 %inc15, i32* %i, align 4, !dbg !101
  br label %for.cond, !dbg !102, !llvm.loop !103

for.end16:                                        ; preds = %for.cond
  %11 = load i32, i32* @g_26, align 4, !dbg !105
  %conv = sext i32 %11 to i64, !dbg !105
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !106
  %12 = load i16, i16* @g_29, align 2, !dbg !107
  %conv17 = zext i16 %12 to i64, !dbg !107
  store volatile i64 %conv17, i64* @csmith_sink_, align 8, !dbg !108
  %13 = load i32, i32* @g_33, align 4, !dbg !109
  %conv18 = zext i32 %13 to i64, !dbg !109
  store volatile i64 %conv18, i64* @csmith_sink_, align 8, !dbg !110
  ret i32 0, !dbg !111
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @func_1() #0 !dbg !112 {
entry:
  %l_21 = alloca i16, align 2
  %l_22 = alloca i64*, align 8
  %l_24 = alloca [6 x [3 x i32]], align 16
  %l_30 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i16* %l_21, metadata !115, metadata !DIExpression()), !dbg !118
  store i16 -1, i16* %l_21, align 2, !dbg !118
  call void @llvm.dbg.declare(metadata i64** %l_22, metadata !119, metadata !DIExpression()), !dbg !121
  store i64* getelementptr inbounds ([7 x [1 x [4 x i64]]], [7 x [1 x [4 x i64]]]* @g_23, i64 0, i64 2, i64 0, i64 1), i64** %l_22, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata [6 x [3 x i32]]* %l_24, metadata !122, metadata !DIExpression()), !dbg !127
  %0 = bitcast [6 x [3 x i32]]* %l_24 to i8*, !dbg !127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x [3 x i32]]* @__const.func_1.l_24 to i8*), i64 72, i1 false), !dbg !127
  call void @llvm.dbg.declare(metadata i32** %l_30, metadata !128, metadata !DIExpression()), !dbg !130
  store i32* @g_26, i32** %l_30, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %i, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %j, metadata !133, metadata !DIExpression()), !dbg !134
  %1 = load i64, i64* @g_18, align 8, !dbg !135
  %2 = load i16, i16* %l_21, align 2, !dbg !136
  %conv = zext i16 %2 to i32, !dbg !137
  %shr = ashr i32 %conv, 7, !dbg !138
  %3 = load i16, i16* %l_21, align 2, !dbg !139
  %conv1 = sext i16 %3 to i32, !dbg !139
  %cmp = icmp sge i32 %shr, %conv1, !dbg !140
  %conv2 = zext i1 %cmp to i32, !dbg !140
  %conv3 = sext i32 %conv2 to i64, !dbg !141
  %xor = xor i64 %1, %conv3, !dbg !142
  %cmp4 = icmp eq i64 %xor, 3405394685, !dbg !143
  %conv5 = zext i1 %cmp4 to i32, !dbg !143
  %4 = load i64, i64* @g_18, align 8, !dbg !144
  %conv6 = trunc i64 %4 to i16, !dbg !145
  %conv7 = zext i16 %conv6 to i32, !dbg !145
  %5 = load i64, i64* @g_18, align 8, !dbg !146
  %conv8 = trunc i64 %5 to i16, !dbg !147
  %conv9 = zext i16 %conv8 to i32, !dbg !147
  %div = sdiv i32 %conv7, %conv9, !dbg !148
  %conv10 = trunc i32 %div to i8, !dbg !149
  %conv11 = sext i8 %conv10 to i32, !dbg !149
  %mul = mul nsw i32 114, %conv11, !dbg !150
  %conv12 = sext i32 %mul to i64, !dbg !151
  %sub = sub nsw i64 %conv12, 0, !dbg !152
  %conv13 = trunc i64 %sub to i8, !dbg !153
  %conv14 = zext i8 %conv13 to i32, !dbg !153
  %rem = srem i32 %conv14, 195, !dbg !154
  %6 = load i64, i64* @g_18, align 8, !dbg !155
  %7 = load i64, i64* @g_18, align 8, !dbg !156
  %cmp15 = icmp uge i64 %6, %7, !dbg !157
  br i1 %cmp15, label %lor.end, label %lor.rhs, !dbg !158

lor.rhs:                                          ; preds = %entry
  br label %lor.end, !dbg !158

lor.end:                                          ; preds = %lor.rhs, %entry
  %8 = phi i1 [ true, %entry ], [ false, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32, !dbg !158
  %conv17 = sext i32 %lor.ext to i64, !dbg !159
  %9 = load i64*, i64** %l_22, align 8, !dbg !160
  store i64 %conv17, i64* %9, align 8, !dbg !161
  %10 = load i64, i64* @g_18, align 8, !dbg !162
  %conv18 = trunc i64 %10 to i32, !dbg !162
  %arrayidx = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* %l_24, i64 0, i64 1, !dbg !163
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i64 0, i64 2, !dbg !163
  %11 = load i32, i32* %arrayidx19, align 4, !dbg !163
  %12 = load i64, i64* @g_18, align 8, !dbg !164
  %conv20 = trunc i64 %12 to i8, !dbg !164
  %13 = load i64, i64* @g_18, align 8, !dbg !165
  %call = call zeroext i16 @func_2(i64 %conv17, i32 %conv18, i32 %11, i8 zeroext %conv20, i64 %13), !dbg !166
  %conv21 = zext i16 %call to i64, !dbg !166
  %14 = load i64, i64* @g_18, align 8, !dbg !167
  %cmp22 = icmp ult i64 %conv21, %14, !dbg !168
  %conv23 = zext i1 %cmp22 to i32, !dbg !168
  %arrayidx24 = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* %l_24, i64 0, i64 0, !dbg !169
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx24, i64 0, i64 1, !dbg !169
  %15 = load i32, i32* %arrayidx25, align 4, !dbg !169
  %cmp26 = icmp ugt i32 %conv23, %15, !dbg !170
  %conv27 = zext i1 %cmp26 to i32, !dbg !170
  %16 = load i32*, i32** %l_30, align 8, !dbg !171
  store i32 %conv27, i32* %16, align 4, !dbg !172
  %17 = load i64, i64* getelementptr inbounds ([7 x [1 x [4 x i64]]], [7 x [1 x [4 x i64]]]* @g_23, i64 0, i64 3, i64 0, i64 3), align 8, !dbg !173
  %cmp28 = icmp sgt i64 1, %17, !dbg !174
  %conv29 = zext i1 %cmp28 to i32, !dbg !174
  %18 = load i32*, i32** %l_30, align 8, !dbg !175
  %19 = load i32, i32* %18, align 4, !dbg !176
  %conv30 = trunc i32 %19 to i8, !dbg !177
  %conv31 = zext i8 %conv30 to i32, !dbg !177
  %mul32 = mul nsw i32 %conv31, 210, !dbg !178
  %tobool = icmp ne i32 %mul32, 0, !dbg !178
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !179

land.rhs:                                         ; preds = %lor.end
  %20 = load i32*, i32** %l_30, align 8, !dbg !180
  %21 = load i32, i32* %20, align 4, !dbg !181
  %tobool33 = icmp ne i32 %21, 0, !dbg !179
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %22 = phi i1 [ false, %lor.end ], [ %tobool33, %land.rhs ], !dbg !182
  %land.ext = zext i1 %22 to i32, !dbg !179
  %xor34 = xor i32 %conv29, %land.ext, !dbg !183
  %23 = load i32, i32* @g_33, align 4, !dbg !184
  %or = or i32 %23, %xor34, !dbg !184
  store i32 %or, i32* @g_33, align 4, !dbg !184
  %24 = load i64, i64* @g_18, align 8, !dbg !185
  %conv35 = trunc i64 %24 to i32, !dbg !185
  ret i32 %conv35, !dbg !186
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal zeroext i16 @func_2(i64 %p_3, i32 %p_4, i32 %p_5, i8 zeroext %p_6, i64 %p_7) #0 !dbg !187 {
entry:
  %p_3.addr = alloca i64, align 8
  %p_4.addr = alloca i32, align 4
  %p_5.addr = alloca i32, align 4
  %p_6.addr = alloca i8, align 1
  %p_7.addr = alloca i64, align 8
  %l_25 = alloca [10 x [3 x [8 x i32*]]], align 16
  %l_28 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i64 %p_3, i64* %p_3.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %p_3.addr, metadata !190, metadata !DIExpression()), !dbg !191
  store i32 %p_4, i32* %p_4.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p_4.addr, metadata !192, metadata !DIExpression()), !dbg !193
  store i32 %p_5, i32* %p_5.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p_5.addr, metadata !194, metadata !DIExpression()), !dbg !195
  store i8 %p_6, i8* %p_6.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %p_6.addr, metadata !196, metadata !DIExpression()), !dbg !197
  store i64 %p_7, i64* %p_7.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %p_7.addr, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata [10 x [3 x [8 x i32*]]]* %l_25, metadata !200, metadata !DIExpression()), !dbg !205
  %0 = bitcast [10 x [3 x [8 x i32*]]]* %l_25 to i8*, !dbg !205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x [3 x [8 x i32*]]]* @__const.func_2.l_25 to i8*), i64 1920, i1 false), !dbg !205
  call void @llvm.dbg.declare(metadata i32** %l_28, metadata !206, metadata !DIExpression()), !dbg !208
  store i32* null, i32** %l_28, align 8, !dbg !208
  call void @llvm.dbg.declare(metadata i32* %i, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %j, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %k, metadata !213, metadata !DIExpression()), !dbg !214
  store i32 0, i32* @g_26, align 4, !dbg !215
  %1 = load i32, i32* @g_26, align 4, !dbg !216
  %cmp = icmp sle i32 1, %1, !dbg !217
  %conv = zext i1 %cmp to i32, !dbg !217
  %conv1 = sext i32 %conv to i64, !dbg !218
  %cmp2 = icmp eq i64 %conv1, 0, !dbg !219
  %conv3 = zext i1 %cmp2 to i32, !dbg !219
  %2 = load i32, i32* @g_26, align 4, !dbg !220
  %cmp4 = icmp sge i32 %conv3, %2, !dbg !221
  %conv5 = zext i1 %cmp4 to i32, !dbg !221
  %neg = xor i32 %conv5, -1, !dbg !222
  %3 = load i16, i16* @g_29, align 2, !dbg !223
  %conv6 = zext i16 %3 to i32, !dbg !223
  %and = and i32 %conv6, %neg, !dbg !223
  %conv7 = trunc i32 %and to i16, !dbg !223
  store i16 %conv7, i16* @g_29, align 2, !dbg !223
  %4 = load i32, i32* %p_4.addr, align 4, !dbg !224
  %conv8 = trunc i32 %4 to i16, !dbg !224
  ret i16 %conv8, !dbg !225
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !38, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !16, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-11T18:05/3")
!4 = !{}
!5 = !{!6, !9, !11, !13, !15}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !10)
!10 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !12)
!12 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !14)
!14 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{!0, !17, !21, !28, !32, !34}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "g_18", scope: !2, file: !3, line: 18, type: !19, isLocal: true, isDefinition: true)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !20)
!20 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "g_23", scope: !2, file: !3, line: 19, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1792, elements: !24)
!24 = !{!25, !26, !27}
!25 = !DISubrange(count: 7)
!26 = !DISubrange(count: 1)
!27 = !DISubrange(count: 4)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "g_26", scope: !2, file: !3, line: 20, type: !30, isLocal: true, isDefinition: true)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !31)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "g_29", scope: !2, file: !3, line: 21, type: !13, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "g_33", scope: !2, file: !3, line: 22, type: !36, isLocal: true, isDefinition: true)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!39 = !{i32 7, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{i32 7, !"PIC Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!46 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !47, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!47 = !DISubroutineType(types: !48)
!48 = !{!31}
!49 = !DILocalVariable(name: "i", scope: !46, file: !3, line: 70, type: !31)
!50 = !DILocation(line: 70, column: 9, scope: !46)
!51 = !DILocalVariable(name: "j", scope: !46, file: !3, line: 70, type: !31)
!52 = !DILocation(line: 70, column: 12, scope: !46)
!53 = !DILocalVariable(name: "k", scope: !46, file: !3, line: 70, type: !31)
!54 = !DILocation(line: 70, column: 15, scope: !46)
!55 = !DILocalVariable(name: "print_hash_value", scope: !46, file: !3, line: 71, type: !31)
!56 = !DILocation(line: 71, column: 9, scope: !46)
!57 = !DILocation(line: 73, column: 5, scope: !46)
!58 = !DILocation(line: 74, column: 20, scope: !46)
!59 = !DILocation(line: 74, column: 18, scope: !46)
!60 = !DILocation(line: 75, column: 12, scope: !61)
!61 = distinct !DILexicalBlock(scope: !46, file: !3, line: 75, column: 5)
!62 = !DILocation(line: 75, column: 10, scope: !61)
!63 = !DILocation(line: 75, column: 17, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !3, line: 75, column: 5)
!65 = !DILocation(line: 75, column: 19, scope: !64)
!66 = !DILocation(line: 75, column: 5, scope: !61)
!67 = !DILocation(line: 77, column: 16, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !3, line: 77, column: 9)
!69 = distinct !DILexicalBlock(scope: !64, file: !3, line: 76, column: 5)
!70 = !DILocation(line: 77, column: 14, scope: !68)
!71 = !DILocation(line: 77, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 77, column: 9)
!73 = !DILocation(line: 77, column: 23, scope: !72)
!74 = !DILocation(line: 77, column: 9, scope: !68)
!75 = !DILocation(line: 79, column: 20, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 79, column: 13)
!77 = distinct !DILexicalBlock(scope: !72, file: !3, line: 78, column: 9)
!78 = !DILocation(line: 79, column: 18, scope: !76)
!79 = !DILocation(line: 79, column: 25, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !3, line: 79, column: 13)
!81 = !DILocation(line: 79, column: 27, scope: !80)
!82 = !DILocation(line: 79, column: 13, scope: !76)
!83 = !DILocation(line: 81, column: 37, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !3, line: 80, column: 13)
!85 = !DILocation(line: 81, column: 32, scope: !84)
!86 = !DILocation(line: 81, column: 40, scope: !84)
!87 = !DILocation(line: 81, column: 43, scope: !84)
!88 = !DILocation(line: 81, column: 30, scope: !84)
!89 = !DILocation(line: 82, column: 13, scope: !84)
!90 = !DILocation(line: 79, column: 33, scope: !80)
!91 = !DILocation(line: 79, column: 13, scope: !80)
!92 = distinct !{!92, !82, !93, !94}
!93 = !DILocation(line: 82, column: 13, scope: !76)
!94 = !{!"llvm.loop.mustprogress"}
!95 = !DILocation(line: 83, column: 9, scope: !77)
!96 = !DILocation(line: 77, column: 29, scope: !72)
!97 = !DILocation(line: 77, column: 9, scope: !72)
!98 = distinct !{!98, !74, !99, !94}
!99 = !DILocation(line: 83, column: 9, scope: !68)
!100 = !DILocation(line: 84, column: 5, scope: !69)
!101 = !DILocation(line: 75, column: 25, scope: !64)
!102 = !DILocation(line: 75, column: 5, scope: !64)
!103 = distinct !{!103, !66, !104, !94}
!104 = !DILocation(line: 84, column: 5, scope: !61)
!105 = !DILocation(line: 85, column: 20, scope: !46)
!106 = !DILocation(line: 85, column: 18, scope: !46)
!107 = !DILocation(line: 86, column: 20, scope: !46)
!108 = !DILocation(line: 86, column: 18, scope: !46)
!109 = !DILocation(line: 87, column: 20, scope: !46)
!110 = !DILocation(line: 87, column: 18, scope: !46)
!111 = !DILocation(line: 89, column: 5, scope: !46)
!112 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 36, type: !113, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!113 = !DISubroutineType(types: !114)
!114 = !{!30}
!115 = !DILocalVariable(name: "l_21", scope: !112, file: !3, line: 38, type: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !117)
!117 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!118 = !DILocation(line: 38, column: 13, scope: !112)
!119 = !DILocalVariable(name: "l_22", scope: !112, file: !3, line: 39, type: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!121 = !DILocation(line: 39, column: 14, scope: !112)
!122 = !DILocalVariable(name: "l_24", scope: !112, file: !3, line: 40, type: !123)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 576, elements: !124)
!124 = !{!125, !126}
!125 = !DISubrange(count: 6)
!126 = !DISubrange(count: 3)
!127 = !DILocation(line: 40, column: 14, scope: !112)
!128 = !DILocalVariable(name: "l_30", scope: !112, file: !3, line: 41, type: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!130 = !DILocation(line: 41, column: 14, scope: !112)
!131 = !DILocalVariable(name: "i", scope: !112, file: !3, line: 42, type: !31)
!132 = !DILocation(line: 42, column: 9, scope: !112)
!133 = !DILocalVariable(name: "j", scope: !112, file: !3, line: 42, type: !31)
!134 = !DILocation(line: 42, column: 12, scope: !112)
!135 = !DILocation(line: 43, column: 97, scope: !112)
!136 = !DILocation(line: 43, column: 116, scope: !112)
!137 = !DILocation(line: 43, column: 106, scope: !112)
!138 = !DILocation(line: 43, column: 121, scope: !112)
!139 = !DILocation(line: 43, column: 140, scope: !112)
!140 = !DILocation(line: 43, column: 137, scope: !112)
!141 = !DILocation(line: 43, column: 104, scope: !112)
!142 = !DILocation(line: 43, column: 102, scope: !112)
!143 = !DILocation(line: 43, column: 147, scope: !112)
!144 = !DILocation(line: 43, column: 165, scope: !112)
!145 = !DILocation(line: 43, column: 84, scope: !112)
!146 = !DILocation(line: 43, column: 183, scope: !112)
!147 = !DILocation(line: 43, column: 173, scope: !112)
!148 = !DILocation(line: 43, column: 171, scope: !112)
!149 = !DILocation(line: 43, column: 75, scope: !112)
!150 = !DILocation(line: 43, column: 73, scope: !112)
!151 = !DILocation(line: 43, column: 49, scope: !112)
!152 = !DILocation(line: 43, column: 190, scope: !112)
!153 = !DILocation(line: 43, column: 39, scope: !112)
!154 = !DILocation(line: 43, column: 205, scope: !112)
!155 = !DILocation(line: 43, column: 225, scope: !112)
!156 = !DILocation(line: 43, column: 234, scope: !112)
!157 = !DILocation(line: 43, column: 231, scope: !112)
!158 = !DILocation(line: 43, column: 240, scope: !112)
!159 = !DILocation(line: 43, column: 35, scope: !112)
!160 = !DILocation(line: 43, column: 27, scope: !112)
!161 = !DILocation(line: 43, column: 33, scope: !112)
!162 = !DILocation(line: 43, column: 250, scope: !112)
!163 = !DILocation(line: 43, column: 256, scope: !112)
!164 = !DILocation(line: 43, column: 268, scope: !112)
!165 = !DILocation(line: 43, column: 274, scope: !112)
!166 = !DILocation(line: 43, column: 17, scope: !112)
!167 = !DILocation(line: 43, column: 282, scope: !112)
!168 = !DILocation(line: 43, column: 280, scope: !112)
!169 = !DILocation(line: 43, column: 290, scope: !112)
!170 = !DILocation(line: 43, column: 288, scope: !112)
!171 = !DILocation(line: 43, column: 7, scope: !112)
!172 = !DILocation(line: 43, column: 13, scope: !112)
!173 = !DILocation(line: 44, column: 20, scope: !112)
!174 = !DILocation(line: 44, column: 18, scope: !112)
!175 = !DILocation(line: 44, column: 50, scope: !112)
!176 = !DILocation(line: 44, column: 49, scope: !112)
!177 = !DILocation(line: 44, column: 39, scope: !112)
!178 = !DILocation(line: 44, column: 56, scope: !112)
!179 = !DILocation(line: 44, column: 74, scope: !112)
!180 = !DILocation(line: 44, column: 79, scope: !112)
!181 = !DILocation(line: 44, column: 78, scope: !112)
!182 = !DILocation(line: 0, scope: !112)
!183 = !DILocation(line: 44, column: 35, scope: !112)
!184 = !DILocation(line: 44, column: 10, scope: !112)
!185 = !DILocation(line: 45, column: 12, scope: !112)
!186 = !DILocation(line: 45, column: 5, scope: !112)
!187 = distinct !DISubprogram(name: "func_2", scope: !3, file: !3, line: 54, type: !188, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!188 = !DISubroutineType(types: !189)
!189 = !{!13, !9, !36, !36, !6, !19}
!190 = !DILocalVariable(name: "p_3", arg: 1, scope: !187, file: !3, line: 54, type: !9)
!191 = !DILocation(line: 54, column: 34, scope: !187)
!192 = !DILocalVariable(name: "p_4", arg: 2, scope: !187, file: !3, line: 54, type: !36)
!193 = !DILocation(line: 54, column: 49, scope: !187)
!194 = !DILocalVariable(name: "p_5", arg: 3, scope: !187, file: !3, line: 54, type: !36)
!195 = !DILocation(line: 54, column: 64, scope: !187)
!196 = !DILocalVariable(name: "p_6", arg: 4, scope: !187, file: !3, line: 54, type: !6)
!197 = !DILocation(line: 54, column: 78, scope: !187)
!198 = !DILocalVariable(name: "p_7", arg: 5, scope: !187, file: !3, line: 54, type: !19)
!199 = !DILocation(line: 54, column: 93, scope: !187)
!200 = !DILocalVariable(name: "l_25", scope: !187, file: !3, line: 56, type: !201)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 15360, elements: !202)
!202 = !{!203, !126, !204}
!203 = !DISubrange(count: 10)
!204 = !DISubrange(count: 8)
!205 = !DILocation(line: 56, column: 14, scope: !187)
!206 = !DILocalVariable(name: "l_28", scope: !187, file: !3, line: 57, type: !207)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!208 = !DILocation(line: 57, column: 21, scope: !187)
!209 = !DILocalVariable(name: "i", scope: !187, file: !3, line: 58, type: !31)
!210 = !DILocation(line: 58, column: 9, scope: !187)
!211 = !DILocalVariable(name: "j", scope: !187, file: !3, line: 58, type: !31)
!212 = !DILocation(line: 58, column: 12, scope: !187)
!213 = !DILocalVariable(name: "k", scope: !187, file: !3, line: 58, type: !31)
!214 = !DILocation(line: 58, column: 15, scope: !187)
!215 = !DILocation(line: 59, column: 10, scope: !187)
!216 = !DILocation(line: 60, column: 40, scope: !187)
!217 = !DILocation(line: 60, column: 37, scope: !187)
!218 = !DILocation(line: 60, column: 17, scope: !187)
!219 = !DILocation(line: 60, column: 46, scope: !187)
!220 = !DILocation(line: 60, column: 56, scope: !187)
!221 = !DILocation(line: 60, column: 53, scope: !187)
!222 = !DILocation(line: 60, column: 14, scope: !187)
!223 = !DILocation(line: 60, column: 10, scope: !187)
!224 = !DILocation(line: 61, column: 12, scope: !187)
!225 = !DILocation(line: 61, column: 5, scope: !187)
