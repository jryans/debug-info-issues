; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_2 = global i32 -1435603073, align 4, !dbg !12
@g_3 = global i32 1, align 4, !dbg !17
@g_4 = global [8 x [9 x [3 x i32]]] [[9 x [3 x i32]] [[3 x i32] [i32 -1579039325, i32 2141446061, i32 -1998488700], [3 x i32] [i32 644686094, i32 -1487654386, i32 644686094], [3 x i32] [i32 0, i32 -4, i32 -1998488700], [3 x i32] [i32 -4, i32 9, i32 -1], [3 x i32] [i32 -1, i32 -4, i32 -1579039325], [3 x i32] [i32 -1, i32 -1487654386, i32 -1968239973], [3 x i32] [i32 -1, i32 2141446061, i32 -1], [3 x i32] [i32 -4, i32 1451296851, i32 -1968239973], [3 x i32] [i32 0, i32 -6, i32 -1579039325]], [9 x [3 x i32]] [[3 x i32] [i32 644686094, i32 1451296851, i32 -1], [3 x i32] [i32 -1579039325, i32 2141446061, i32 -1998488700], [3 x i32] [i32 644686094, i32 -1487654386, i32 644686094], [3 x i32] [i32 0, i32 -4, i32 -1998488700], [3 x i32] [i32 -4, i32 9, i32 -1], [3 x i32] [i32 -1, i32 -4, i32 -1579039325], [3 x i32] [i32 -1, i32 -4, i32 -7], [3 x i32] [i32 -1447254091, i32 0, i32 -1447254091], [3 x i32] [i32 -1271060713, i32 644686094, i32 -7]], [9 x [3 x i32]] [[3 x i32] [i32 -3, i32 -1579039325, i32 -783493995], [3 x i32] [i32 1801810443, i32 644686094, i32 -1], [3 x i32] [i32 -783493995, i32 0, i32 1226548916], [3 x i32] [i32 1801810443, i32 -4, i32 1801810443], [3 x i32] [i32 -3, i32 -1, i32 1226548916], [3 x i32] [i32 -1271060713, i32 -1, i32 -1], [3 x i32] [i32 -1447254091, i32 -1, i32 -783493995], [3 x i32] [i32 -1, i32 -4, i32 -7], [3 x i32] [i32 -1447254091, i32 0, i32 -1447254091]], [9 x [3 x i32]] [[3 x i32] [i32 -1271060713, i32 644686094, i32 -7], [3 x i32] [i32 -3, i32 -1579039325, i32 -783493995], [3 x i32] [i32 1801810443, i32 644686094, i32 -1], [3 x i32] [i32 -783493995, i32 0, i32 1226548916], [3 x i32] [i32 1801810443, i32 -4, i32 1801810443], [3 x i32] [i32 -3, i32 -1, i32 1226548916], [3 x i32] [i32 -1271060713, i32 -1, i32 -1], [3 x i32] [i32 -1447254091, i32 -1, i32 -783493995], [3 x i32] [i32 -1, i32 -4, i32 -7]], [9 x [3 x i32]] [[3 x i32] [i32 -1447254091, i32 0, i32 -1447254091], [3 x i32] [i32 -1271060713, i32 644686094, i32 -7], [3 x i32] [i32 -3, i32 -1579039325, i32 -783493995], [3 x i32] [i32 1801810443, i32 644686094, i32 -1], [3 x i32] [i32 -783493995, i32 0, i32 1226548916], [3 x i32] [i32 1801810443, i32 -4, i32 1801810443], [3 x i32] [i32 -3, i32 -1, i32 1226548916], [3 x i32] [i32 -1271060713, i32 -1, i32 -1], [3 x i32] [i32 -1447254091, i32 -1, i32 -783493995]], [9 x [3 x i32]] [[3 x i32] [i32 -1, i32 -4, i32 -7], [3 x i32] [i32 -1447254091, i32 0, i32 -1447254091], [3 x i32] [i32 -1271060713, i32 644686094, i32 -7], [3 x i32] [i32 -3, i32 -1579039325, i32 -783493995], [3 x i32] [i32 1801810443, i32 644686094, i32 -1], [3 x i32] [i32 -783493995, i32 0, i32 1226548916], [3 x i32] [i32 1801810443, i32 -4, i32 1801810443], [3 x i32] [i32 -3, i32 -1, i32 1226548916], [3 x i32] [i32 -1271060713, i32 -1, i32 -1]], [9 x [3 x i32]] [[3 x i32] [i32 -1447254091, i32 -1, i32 -783493995], [3 x i32] [i32 -1, i32 -4, i32 -7], [3 x i32] [i32 -1447254091, i32 0, i32 -1447254091], [3 x i32] [i32 -1271060713, i32 644686094, i32 -7], [3 x i32] [i32 -3, i32 -1579039325, i32 -783493995], [3 x i32] [i32 1801810443, i32 644686094, i32 -1], [3 x i32] [i32 -783493995, i32 0, i32 1226548916], [3 x i32] [i32 1801810443, i32 -4, i32 1801810443], [3 x i32] [i32 -3, i32 -1, i32 1226548916]], [9 x [3 x i32]] [[3 x i32] [i32 -1271060713, i32 -1, i32 -1], [3 x i32] [i32 -1447254091, i32 -1, i32 -783493995], [3 x i32] [i32 -1, i32 -4, i32 -7], [3 x i32] [i32 -1447254091, i32 0, i32 -1447254091], [3 x i32] [i32 -1271060713, i32 644686094, i32 -7], [3 x i32] [i32 -3, i32 -1579039325, i32 -783493995], [3 x i32] [i32 1801810443, i32 644686094, i32 -1], [3 x i32] [i32 -783493995, i32 0, i32 1226548916], [3 x i32] [i32 1801810443, i32 -4, i32 1801810443]]], align 16, !dbg !19
@g_5 = global i32 -1, align 4, !dbg !26
@g_8 = global i32 -9, align 4, !dbg !28
@g_29 = global i32* null, align 8, !dbg !30
@g_28 = constant i32** @g_29, align 8, !dbg !33
@g_34 = global i32* null, align 8, !dbg !38
@g_33 = global i32** @g_34, align 8, !dbg !41
@g_37 = global i16 1, align 2, !dbg !45

; Function Attrs: noinline nounwind ssp uwtable
define zeroext i16 @func_1() #0 !dbg !57 {
entry:
  %retval = alloca i16, align 2
  %l_11 = alloca i16, align 2
  %l_23 = alloca i32, align 4
  %l_24 = alloca i32*, align 8
  %l_25 = alloca i32*, align 8
  %l_38 = alloca i32**, align 8
  %l_12 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i16* %l_11, metadata !60, metadata !DIExpression()), !dbg !63
  store i16 1, i16* %l_11, align 2, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %l_23, metadata !64, metadata !DIExpression()), !dbg !67
  store i32 346269399, i32* %l_23, align 4, !dbg !67
  call void @llvm.dbg.declare(metadata i32** %l_24, metadata !68, metadata !DIExpression()), !dbg !69
  store i32* null, i32** %l_24, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i32** %l_25, metadata !70, metadata !DIExpression()), !dbg !71
  store i32* null, i32** %l_25, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i32*** %l_38, metadata !72, metadata !DIExpression()), !dbg !73
  store i32** %l_24, i32*** %l_38, align 8, !dbg !73
  store i32 0, i32* @g_5, align 4, !dbg !74
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, i32* @g_5, align 4, !dbg !77
  %cmp = icmp slt i32 %0, 13, !dbg !79
  br i1 %cmp, label %for.body, label %for.end7, !dbg !80

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32** %l_12, metadata !81, metadata !DIExpression()), !dbg !83
  store i32* @g_8, i32** %l_12, align 8, !dbg !83
  store i32 -26, i32* @g_8, align 4, !dbg !84
  br label %for.cond1, !dbg !86

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* @g_8, align 4, !dbg !87
  %cmp2 = icmp eq i32 %1, 12, !dbg !89
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !90

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* @g_5, align 4, !dbg !91
  %conv = trunc i32 %2 to i16, !dbg !91
  store i16 %conv, i16* %retval, align 2, !dbg !93
  br label %return, !dbg !93

for.inc:                                          ; No predecessors!
  %3 = load i32, i32* @g_8, align 4, !dbg !94
  %add = add nsw i32 %3, 3, !dbg !94
  store i32 %add, i32* @g_8, align 4, !dbg !94
  br label %for.cond1, !dbg !95, !llvm.loop !96

for.end:                                          ; preds = %for.cond1
  %4 = load i16, i16* %l_11, align 2, !dbg !99
  %conv4 = sext i16 %4 to i32, !dbg !99
  %5 = load i32*, i32** %l_12, align 8, !dbg !100
  store i32 %conv4, i32* %5, align 4, !dbg !101
  store volatile i32 %conv4, i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_4, i64 0, i64 1, i64 5, i64 1), align 4, !dbg !102
  br label %for.inc5, !dbg !103

for.inc5:                                         ; preds = %for.end
  %6 = load i32, i32* @g_5, align 4, !dbg !104
  %add6 = add nsw i32 %6, 7, !dbg !104
  store i32 %add6, i32* @g_5, align 4, !dbg !104
  br label %for.cond, !dbg !105, !llvm.loop !106

for.end7:                                         ; preds = %for.cond
  %7 = load i32, i32* %l_23, align 4, !dbg !108
  %conv8 = trunc i32 %7 to i8, !dbg !108
  %8 = load i32*, i32** %l_24, align 8, !dbg !109
  %9 = load i32*, i32** %l_24, align 8, !dbg !110
  %10 = load i32*, i32** %l_25, align 8, !dbg !111
  %call = call zeroext i16 @func_17(i8 zeroext %conv8, i32* %8, i32* %9, i32* %10, i32* @g_5), !dbg !112
  %conv9 = zext i16 %call to i32, !dbg !113
  %add10 = add nsw i32 %conv9, 65534, !dbg !114
  %conv11 = sext i32 %add10 to i64, !dbg !115
  %or = or i64 %conv11, 2586800733, !dbg !116
  %11 = load i16, i16* @g_37, align 2, !dbg !117
  %conv12 = zext i16 %11 to i64, !dbg !117
  %or13 = or i64 %or, %conv12, !dbg !118
  %conv14 = trunc i64 %or13 to i8, !dbg !119
  %conv15 = zext i8 %conv14 to i32, !dbg !119
  %shl = shl i32 81, %conv15, !dbg !120
  %12 = load i32*, i32** %l_25, align 8, !dbg !121
  %13 = load i32**, i32*** %l_38, align 8, !dbg !122
  store i32* %12, i32** %13, align 8, !dbg !123
  %14 = load i16, i16* %l_11, align 2, !dbg !124
  store i16 %14, i16* %retval, align 2, !dbg !125
  br label %return, !dbg !125

return:                                           ; preds = %for.end7, %for.body3
  %15 = load i16, i16* %retval, align 2, !dbg !126
  ret i16 %15, !dbg !126
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define zeroext i16 @func_17(i8 zeroext %p_18, i32* %p_19, i32* %p_20, i32* %p_21, i32* %p_22) #0 !dbg !127 {
entry:
  %p_18.addr = alloca i8, align 1
  %p_19.addr = alloca i32*, align 8
  %p_20.addr = alloca i32*, align 8
  %p_21.addr = alloca i32*, align 8
  %p_22.addr = alloca i32*, align 8
  %l_32 = alloca i32*, align 8
  store i8 %p_18, i8* %p_18.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %p_18.addr, metadata !131, metadata !DIExpression()), !dbg !132
  store i32* %p_19, i32** %p_19.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p_19.addr, metadata !133, metadata !DIExpression()), !dbg !134
  store i32* %p_20, i32** %p_20.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p_20.addr, metadata !135, metadata !DIExpression()), !dbg !136
  store i32* %p_21, i32** %p_21.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p_21.addr, metadata !137, metadata !DIExpression()), !dbg !138
  store i32* %p_22, i32** %p_22.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p_22.addr, metadata !139, metadata !DIExpression()), !dbg !140
  store i8 -17, i8* %p_18.addr, align 1, !dbg !141
  br label %for.cond, !dbg !143

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i8, i8* %p_18.addr, align 1, !dbg !144
  %conv = zext i8 %0 to i32, !dbg !144
  %cmp = icmp sge i32 %conv, 36, !dbg !146
  br i1 %cmp, label %for.body, label %for.end14, !dbg !147

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32** %l_32, metadata !148, metadata !DIExpression()), !dbg !150
  store i32* @g_8, i32** %l_32, align 8, !dbg !150
  %1 = load volatile i32**, i32*** @g_28, align 8, !dbg !151
  store i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_4, i64 0, i64 2, i64 6, i64 0), i32** %1, align 8, !dbg !152
  store i32 0, i32* @g_8, align 4, !dbg !153
  br label %for.cond2, !dbg !155

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* @g_8, align 4, !dbg !156
  %cmp3 = icmp ne i32 %2, 24, !dbg !158
  br i1 %cmp3, label %for.body5, label %for.end, !dbg !159

for.body5:                                        ; preds = %for.cond2
  %3 = load i32*, i32** %l_32, align 8, !dbg !160
  %4 = load volatile i32**, i32*** @g_33, align 8, !dbg !162
  store i32* %3, i32** %4, align 8, !dbg !163
  %5 = load volatile i32, i32* @g_3, align 4, !dbg !164
  %tobool = icmp ne i32 %5, 0, !dbg !164
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !165

land.rhs:                                         ; preds = %for.body5
  %6 = load i32*, i32** %p_19.addr, align 8, !dbg !166
  %7 = load i32*, i32** %p_22.addr, align 8, !dbg !167
  %cmp6 = icmp eq i32* %6, %7, !dbg !168
  %conv7 = zext i1 %cmp6 to i32, !dbg !168
  %8 = load volatile i32**, i32*** @g_33, align 8, !dbg !169
  %9 = load i32*, i32** %8, align 8, !dbg !170
  %10 = load i32, i32* %9, align 4, !dbg !171
  %or = or i32 %conv7, %10, !dbg !172
  %11 = load i32*, i32** @g_34, align 8, !dbg !173
  %12 = load i32, i32* %11, align 4, !dbg !174
  %xor = xor i32 %or, %12, !dbg !175
  %tobool8 = icmp ne i32 %xor, 0, !dbg !165
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body5
  %13 = phi i1 [ false, %for.body5 ], [ %tobool8, %land.rhs ], !dbg !176
  %land.ext = zext i1 %13 to i32, !dbg !165
  %14 = load i8, i8* %p_18.addr, align 1, !dbg !177
  %conv9 = zext i8 %14 to i32, !dbg !177
  %cmp10 = icmp sle i32 54, %conv9, !dbg !178
  %conv11 = zext i1 %cmp10 to i32, !dbg !178
  %15 = load i32*, i32** %p_22.addr, align 8, !dbg !179
  %16 = load i32, i32* %15, align 4, !dbg !180
  %or12 = or i32 %16, %conv11, !dbg !180
  store i32 %or12, i32* %15, align 4, !dbg !180
  br label %for.inc, !dbg !181

for.inc:                                          ; preds = %land.end
  %17 = load i32, i32* @g_8, align 4, !dbg !182
  %add = add nsw i32 %17, 8, !dbg !182
  store i32 %add, i32* @g_8, align 4, !dbg !182
  br label %for.cond2, !dbg !183, !llvm.loop !184

for.end:                                          ; preds = %for.cond2
  br label %for.inc13, !dbg !186

for.inc13:                                        ; preds = %for.end
  %18 = load i8, i8* %p_18.addr, align 1, !dbg !187
  %inc = add i8 %18, 1, !dbg !187
  store i8 %inc, i8* %p_18.addr, align 1, !dbg !187
  br label %for.cond, !dbg !188, !llvm.loop !189

for.end14:                                        ; preds = %for.cond
  %19 = load i8, i8* %p_18.addr, align 1, !dbg !191
  %conv15 = zext i8 %19 to i16, !dbg !191
  ret i16 %conv15, !dbg !192
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !193 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata i32* %j, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata i32* %k, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !202, metadata !DIExpression()), !dbg !203
  store i32 0, i32* %print_hash_value, align 4, !dbg !203
  %call = call zeroext i16 @func_1(), !dbg !204
  %0 = load volatile i32, i32* @g_2, align 4, !dbg !205
  %conv = sext i32 %0 to i64, !dbg !205
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !206
  %1 = load volatile i32, i32* @g_3, align 4, !dbg !207
  %conv1 = sext i32 %1 to i64, !dbg !207
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !208
  store i32 0, i32* %i, align 4, !dbg !209
  br label %for.cond, !dbg !211

for.cond:                                         ; preds = %for.inc19, %entry
  %2 = load i32, i32* %i, align 4, !dbg !212
  %cmp = icmp slt i32 %2, 8, !dbg !214
  br i1 %cmp, label %for.body, label %for.end21, !dbg !215

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !216
  br label %for.cond3, !dbg !219

for.cond3:                                        ; preds = %for.inc16, %for.body
  %3 = load i32, i32* %j, align 4, !dbg !220
  %cmp4 = icmp slt i32 %3, 9, !dbg !222
  br i1 %cmp4, label %for.body6, label %for.end18, !dbg !223

for.body6:                                        ; preds = %for.cond3
  store i32 0, i32* %k, align 4, !dbg !224
  br label %for.cond7, !dbg !227

for.cond7:                                        ; preds = %for.inc, %for.body6
  %4 = load i32, i32* %k, align 4, !dbg !228
  %cmp8 = icmp slt i32 %4, 3, !dbg !230
  br i1 %cmp8, label %for.body10, label %for.end, !dbg !231

for.body10:                                       ; preds = %for.cond7
  %5 = load i32, i32* %i, align 4, !dbg !232
  %idxprom = sext i32 %5 to i64, !dbg !234
  %arrayidx = getelementptr inbounds [8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_4, i64 0, i64 %idxprom, !dbg !234
  %6 = load i32, i32* %j, align 4, !dbg !235
  %idxprom11 = sext i32 %6 to i64, !dbg !234
  %arrayidx12 = getelementptr inbounds [9 x [3 x i32]], [9 x [3 x i32]]* %arrayidx, i64 0, i64 %idxprom11, !dbg !234
  %7 = load i32, i32* %k, align 4, !dbg !236
  %idxprom13 = sext i32 %7 to i64, !dbg !234
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx12, i64 0, i64 %idxprom13, !dbg !234
  %8 = load volatile i32, i32* %arrayidx14, align 4, !dbg !234
  %conv15 = sext i32 %8 to i64, !dbg !234
  store volatile i64 %conv15, i64* @csmith_sink_, align 8, !dbg !237
  br label %for.inc, !dbg !238

for.inc:                                          ; preds = %for.body10
  %9 = load i32, i32* %k, align 4, !dbg !239
  %inc = add nsw i32 %9, 1, !dbg !239
  store i32 %inc, i32* %k, align 4, !dbg !239
  br label %for.cond7, !dbg !240, !llvm.loop !241

for.end:                                          ; preds = %for.cond7
  br label %for.inc16, !dbg !243

for.inc16:                                        ; preds = %for.end
  %10 = load i32, i32* %j, align 4, !dbg !244
  %inc17 = add nsw i32 %10, 1, !dbg !244
  store i32 %inc17, i32* %j, align 4, !dbg !244
  br label %for.cond3, !dbg !245, !llvm.loop !246

for.end18:                                        ; preds = %for.cond3
  br label %for.inc19, !dbg !248

for.inc19:                                        ; preds = %for.end18
  %11 = load i32, i32* %i, align 4, !dbg !249
  %inc20 = add nsw i32 %11, 1, !dbg !249
  store i32 %inc20, i32* %i, align 4, !dbg !249
  br label %for.cond, !dbg !250, !llvm.loop !251

for.end21:                                        ; preds = %for.cond
  %12 = load i32, i32* @g_5, align 4, !dbg !253
  %conv22 = sext i32 %12 to i64, !dbg !253
  store volatile i64 %conv22, i64* @csmith_sink_, align 8, !dbg !254
  %13 = load i32, i32* @g_8, align 4, !dbg !255
  %conv23 = sext i32 %13 to i64, !dbg !255
  store volatile i64 %conv23, i64* @csmith_sink_, align 8, !dbg !256
  %14 = load i16, i16* @g_37, align 2, !dbg !257
  %conv24 = zext i16 %14 to i64, !dbg !257
  store volatile i64 %conv24, i64* @csmith_sink_, align 8, !dbg !258
  ret i32 0, !dbg !259
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !47, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6")
!4 = !{}
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !10)
!10 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!11 = !{!0, !12, !17, !19, !26, !28, !30, !33, !38, !41, !45}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "g_2", scope: !2, file: !3, line: 18, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !16)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "g_3", scope: !2, file: !3, line: 19, type: !14, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "g_4", scope: !2, file: !3, line: 20, type: !21, isLocal: false, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 6912, elements: !22)
!22 = !{!23, !24, !25}
!23 = !DISubrange(count: 8)
!24 = !DISubrange(count: 9)
!25 = !DISubrange(count: 3)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "g_5", scope: !2, file: !3, line: 21, type: !15, isLocal: false, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "g_8", scope: !2, file: !3, line: 22, type: !15, isLocal: false, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "g_29", scope: !2, file: !3, line: 23, type: !32, isLocal: false, isDefinition: true)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "g_28", scope: !2, file: !3, line: 24, type: !35, isLocal: false, isDefinition: true)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "g_34", scope: !2, file: !3, line: 25, type: !40, isLocal: false, isDefinition: true)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "g_33", scope: !2, file: !3, line: 26, type: !43, isLocal: false, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "g_37", scope: !2, file: !3, line: 27, type: !9, isLocal: false, isDefinition: true)
!47 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !49)
!49 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !{i32 7, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = !{i32 7, !"PIC Level", i32 2}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!57 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 41, type: !58, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!58 = !DISubroutineType(types: !59)
!59 = !{!9}
!60 = !DILocalVariable(name: "l_11", scope: !57, file: !3, line: 43, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !62)
!62 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!63 = !DILocation(line: 43, column: 13, scope: !57)
!64 = !DILocalVariable(name: "l_23", scope: !57, file: !3, line: 44, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !66)
!66 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!67 = !DILocation(line: 44, column: 14, scope: !57)
!68 = !DILocalVariable(name: "l_24", scope: !57, file: !3, line: 45, type: !40)
!69 = !DILocation(line: 45, column: 14, scope: !57)
!70 = !DILocalVariable(name: "l_25", scope: !57, file: !3, line: 46, type: !40)
!71 = !DILocation(line: 46, column: 14, scope: !57)
!72 = !DILocalVariable(name: "l_38", scope: !57, file: !3, line: 47, type: !44)
!73 = !DILocation(line: 47, column: 15, scope: !57)
!74 = !DILocation(line: 48, column: 14, scope: !75)
!75 = distinct !DILexicalBlock(scope: !57, file: !3, line: 48, column: 5)
!76 = !DILocation(line: 48, column: 10, scope: !75)
!77 = !DILocation(line: 48, column: 20, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !3, line: 48, column: 5)
!79 = !DILocation(line: 48, column: 24, scope: !78)
!80 = !DILocation(line: 48, column: 5, scope: !75)
!81 = !DILocalVariable(name: "l_12", scope: !82, file: !3, line: 50, type: !40)
!82 = distinct !DILexicalBlock(scope: !78, file: !3, line: 49, column: 5)
!83 = !DILocation(line: 50, column: 18, scope: !82)
!84 = !DILocation(line: 51, column: 18, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !3, line: 51, column: 9)
!86 = !DILocation(line: 51, column: 14, scope: !85)
!87 = !DILocation(line: 51, column: 28, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !3, line: 51, column: 9)
!89 = !DILocation(line: 51, column: 32, scope: !88)
!90 = !DILocation(line: 51, column: 9, scope: !85)
!91 = !DILocation(line: 53, column: 20, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !3, line: 52, column: 9)
!93 = !DILocation(line: 53, column: 13, scope: !92)
!94 = !DILocation(line: 51, column: 44, scope: !88)
!95 = !DILocation(line: 51, column: 9, scope: !88)
!96 = distinct !{!96, !90, !97, !98}
!97 = !DILocation(line: 54, column: 9, scope: !85)
!98 = !{!"llvm.loop.mustprogress"}
!99 = !DILocation(line: 55, column: 35, scope: !82)
!100 = !DILocation(line: 55, column: 27, scope: !82)
!101 = !DILocation(line: 55, column: 33, scope: !82)
!102 = !DILocation(line: 55, column: 22, scope: !82)
!103 = !DILocation(line: 56, column: 5, scope: !82)
!104 = !DILocation(line: 48, column: 35, scope: !78)
!105 = !DILocation(line: 48, column: 5, scope: !78)
!106 = distinct !{!106, !80, !107, !98}
!107 = !DILocation(line: 56, column: 5, scope: !75)
!108 = !DILocation(line: 57, column: 65, scope: !57)
!109 = !DILocation(line: 57, column: 71, scope: !57)
!110 = !DILocation(line: 57, column: 77, scope: !57)
!111 = !DILocation(line: 57, column: 83, scope: !57)
!112 = !DILocation(line: 57, column: 57, scope: !57)
!113 = !DILocation(line: 57, column: 47, scope: !57)
!114 = !DILocation(line: 57, column: 95, scope: !57)
!115 = !DILocation(line: 57, column: 46, scope: !57)
!116 = !DILocation(line: 57, column: 116, scope: !57)
!117 = !DILocation(line: 57, column: 133, scope: !57)
!118 = !DILocation(line: 57, column: 131, scope: !57)
!119 = !DILocation(line: 57, column: 35, scope: !57)
!120 = !DILocation(line: 57, column: 32, scope: !57)
!121 = !DILocation(line: 57, column: 142, scope: !57)
!122 = !DILocation(line: 57, column: 7, scope: !57)
!123 = !DILocation(line: 57, column: 13, scope: !57)
!124 = !DILocation(line: 58, column: 12, scope: !57)
!125 = !DILocation(line: 58, column: 5, scope: !57)
!126 = !DILocation(line: 59, column: 1, scope: !57)
!127 = distinct !DISubprogram(name: "func_17", scope: !3, file: !3, line: 67, type: !128, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!128 = !DISubroutineType(types: !129)
!129 = !{!9, !6, !40, !40, !40, !130}
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!131 = !DILocalVariable(name: "p_18", arg: 1, scope: !127, file: !3, line: 67, type: !6)
!132 = !DILocation(line: 67, column: 28, scope: !127)
!133 = !DILocalVariable(name: "p_19", arg: 2, scope: !127, file: !3, line: 67, type: !40)
!134 = !DILocation(line: 67, column: 44, scope: !127)
!135 = !DILocalVariable(name: "p_20", arg: 3, scope: !127, file: !3, line: 67, type: !40)
!136 = !DILocation(line: 67, column: 60, scope: !127)
!137 = !DILocalVariable(name: "p_21", arg: 4, scope: !127, file: !3, line: 67, type: !40)
!138 = !DILocation(line: 67, column: 76, scope: !127)
!139 = !DILocalVariable(name: "p_22", arg: 5, scope: !127, file: !3, line: 67, type: !130)
!140 = !DILocation(line: 67, column: 99, scope: !127)
!141 = !DILocation(line: 69, column: 15, scope: !142)
!142 = distinct !DILexicalBlock(scope: !127, file: !3, line: 69, column: 5)
!143 = !DILocation(line: 69, column: 10, scope: !142)
!144 = !DILocation(line: 69, column: 25, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !3, line: 69, column: 5)
!146 = !DILocation(line: 69, column: 30, scope: !145)
!147 = !DILocation(line: 69, column: 5, scope: !142)
!148 = !DILocalVariable(name: "l_32", scope: !149, file: !3, line: 71, type: !40)
!149 = distinct !DILexicalBlock(scope: !145, file: !3, line: 70, column: 5)
!150 = !DILocation(line: 71, column: 18, scope: !149)
!151 = !DILocation(line: 72, column: 11, scope: !149)
!152 = !DILocation(line: 72, column: 17, scope: !149)
!153 = !DILocation(line: 73, column: 18, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !3, line: 73, column: 9)
!155 = !DILocation(line: 73, column: 14, scope: !154)
!156 = !DILocation(line: 73, column: 24, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !3, line: 73, column: 9)
!158 = !DILocation(line: 73, column: 28, scope: !157)
!159 = !DILocation(line: 73, column: 9, scope: !154)
!160 = !DILocation(line: 75, column: 23, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !3, line: 74, column: 9)
!162 = !DILocation(line: 75, column: 15, scope: !161)
!163 = !DILocation(line: 75, column: 21, scope: !161)
!164 = !DILocation(line: 76, column: 38, scope: !161)
!165 = !DILocation(line: 76, column: 42, scope: !161)
!166 = !DILocation(line: 76, column: 48, scope: !161)
!167 = !DILocation(line: 76, column: 56, scope: !161)
!168 = !DILocation(line: 76, column: 53, scope: !161)
!169 = !DILocation(line: 76, column: 67, scope: !161)
!170 = !DILocation(line: 76, column: 66, scope: !161)
!171 = !DILocation(line: 76, column: 65, scope: !161)
!172 = !DILocation(line: 76, column: 62, scope: !161)
!173 = !DILocation(line: 76, column: 78, scope: !161)
!174 = !DILocation(line: 76, column: 77, scope: !161)
!175 = !DILocation(line: 76, column: 74, scope: !161)
!176 = !DILocation(line: 0, scope: !161)
!177 = !DILocation(line: 76, column: 121, scope: !161)
!178 = !DILocation(line: 76, column: 118, scope: !161)
!179 = !DILocation(line: 76, column: 15, scope: !161)
!180 = !DILocation(line: 76, column: 21, scope: !161)
!181 = !DILocation(line: 77, column: 9, scope: !161)
!182 = !DILocation(line: 73, column: 40, scope: !157)
!183 = !DILocation(line: 73, column: 9, scope: !157)
!184 = distinct !{!184, !159, !185, !98}
!185 = !DILocation(line: 77, column: 9, scope: !154)
!186 = !DILocation(line: 78, column: 5, scope: !149)
!187 = !DILocation(line: 69, column: 38, scope: !145)
!188 = !DILocation(line: 69, column: 5, scope: !145)
!189 = distinct !{!189, !147, !190, !98}
!190 = !DILocation(line: 78, column: 5, scope: !142)
!191 = !DILocation(line: 79, column: 12, scope: !127)
!192 = !DILocation(line: 79, column: 5, scope: !127)
!193 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 86, type: !194, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!194 = !DISubroutineType(types: !195)
!195 = !{!16}
!196 = !DILocalVariable(name: "i", scope: !193, file: !3, line: 88, type: !16)
!197 = !DILocation(line: 88, column: 9, scope: !193)
!198 = !DILocalVariable(name: "j", scope: !193, file: !3, line: 88, type: !16)
!199 = !DILocation(line: 88, column: 12, scope: !193)
!200 = !DILocalVariable(name: "k", scope: !193, file: !3, line: 88, type: !16)
!201 = !DILocation(line: 88, column: 15, scope: !193)
!202 = !DILocalVariable(name: "print_hash_value", scope: !193, file: !3, line: 89, type: !16)
!203 = !DILocation(line: 89, column: 9, scope: !193)
!204 = !DILocation(line: 91, column: 5, scope: !193)
!205 = !DILocation(line: 92, column: 20, scope: !193)
!206 = !DILocation(line: 92, column: 18, scope: !193)
!207 = !DILocation(line: 93, column: 20, scope: !193)
!208 = !DILocation(line: 93, column: 18, scope: !193)
!209 = !DILocation(line: 94, column: 12, scope: !210)
!210 = distinct !DILexicalBlock(scope: !193, file: !3, line: 94, column: 5)
!211 = !DILocation(line: 94, column: 10, scope: !210)
!212 = !DILocation(line: 94, column: 17, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !3, line: 94, column: 5)
!214 = !DILocation(line: 94, column: 19, scope: !213)
!215 = !DILocation(line: 94, column: 5, scope: !210)
!216 = !DILocation(line: 96, column: 16, scope: !217)
!217 = distinct !DILexicalBlock(scope: !218, file: !3, line: 96, column: 9)
!218 = distinct !DILexicalBlock(scope: !213, file: !3, line: 95, column: 5)
!219 = !DILocation(line: 96, column: 14, scope: !217)
!220 = !DILocation(line: 96, column: 21, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !3, line: 96, column: 9)
!222 = !DILocation(line: 96, column: 23, scope: !221)
!223 = !DILocation(line: 96, column: 9, scope: !217)
!224 = !DILocation(line: 98, column: 20, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 98, column: 13)
!226 = distinct !DILexicalBlock(scope: !221, file: !3, line: 97, column: 9)
!227 = !DILocation(line: 98, column: 18, scope: !225)
!228 = !DILocation(line: 98, column: 25, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !3, line: 98, column: 13)
!230 = !DILocation(line: 98, column: 27, scope: !229)
!231 = !DILocation(line: 98, column: 13, scope: !225)
!232 = !DILocation(line: 100, column: 36, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !3, line: 99, column: 13)
!234 = !DILocation(line: 100, column: 32, scope: !233)
!235 = !DILocation(line: 100, column: 39, scope: !233)
!236 = !DILocation(line: 100, column: 42, scope: !233)
!237 = !DILocation(line: 100, column: 30, scope: !233)
!238 = !DILocation(line: 101, column: 13, scope: !233)
!239 = !DILocation(line: 98, column: 33, scope: !229)
!240 = !DILocation(line: 98, column: 13, scope: !229)
!241 = distinct !{!241, !231, !242, !98}
!242 = !DILocation(line: 101, column: 13, scope: !225)
!243 = !DILocation(line: 102, column: 9, scope: !226)
!244 = !DILocation(line: 96, column: 29, scope: !221)
!245 = !DILocation(line: 96, column: 9, scope: !221)
!246 = distinct !{!246, !223, !247, !98}
!247 = !DILocation(line: 102, column: 9, scope: !217)
!248 = !DILocation(line: 103, column: 5, scope: !218)
!249 = !DILocation(line: 94, column: 25, scope: !213)
!250 = !DILocation(line: 94, column: 5, scope: !213)
!251 = distinct !{!251, !215, !252, !98}
!252 = !DILocation(line: 103, column: 5, scope: !210)
!253 = !DILocation(line: 104, column: 20, scope: !193)
!254 = !DILocation(line: 104, column: 18, scope: !193)
!255 = !DILocation(line: 105, column: 20, scope: !193)
!256 = !DILocation(line: 105, column: 18, scope: !193)
!257 = !DILocation(line: 106, column: 20, scope: !193)
!258 = !DILocation(line: 106, column: 18, scope: !193)
!259 = !DILocation(line: 108, column: 5, scope: !193)
