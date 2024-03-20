; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.S0 = type { [7 x i8], i8, [3 x i8] }

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_2 = internal global i32 1560930968, align 4, !dbg !43
@g_6 = internal global i32 -2, align 4, !dbg !45
@g_7 = internal global i32 -1958922146, align 4, !dbg !48
@g_20 = internal global [4 x i32] [i32 -1535083489, i32 -1535083489, i32 -1535083489, i32 -1535083489], align 16, !dbg !50
@g_33 = internal global i32 1031534065, align 4, !dbg !55
@g_48 = internal global [6 x i32] [i32 -8, i32 -8, i32 -970450078, i32 -8, i32 -8, i32 -970450078], align 16, !dbg !71
@__const.func_1.l_5 = private unnamed_addr constant [5 x [6 x [8 x i16]]] [[6 x [8 x i16]] [[8 x i16] [i16 -20131, i16 1, i16 24802, i16 30535, i16 -14372, i16 -28248, i16 -1, i16 6], [8 x i16] [i16 1, i16 2606, i16 0, i16 -14372, i16 2539, i16 0, i16 18246, i16 -1], [8 x i16] [i16 2, i16 1, i16 4, i16 6, i16 1, i16 3, i16 -6, i16 -1], [8 x i16] [i16 -13394, i16 0, i16 12264, i16 -1, i16 9, i16 -1, i16 6, i16 7], [8 x i16] [i16 0, i16 11909, i16 3, i16 -28248, i16 -7, i16 4, i16 -13394, i16 6], [8 x i16] [i16 7, i16 5653, i16 -8, i16 -13394, i16 0, i16 -7, i16 -13394, i16 30535]], [6 x [8 x i16]] [[8 x i16] [i16 29191, i16 -13394, i16 3, i16 4, i16 1, i16 30678, i16 6, i16 -1], [8 x i16] [i16 1, i16 30678, i16 6, i16 -1, i16 5, i16 21598, i16 12264, i16 1597], [8 x i16] [i16 -1, i16 2606, i16 -24217, i16 -20131, i16 -1, i16 6, i16 5653, i16 30535], [8 x i16] [i16 0, i16 24802, i16 4, i16 29191, i16 2539, i16 15457, i16 15457, i16 2539], [8 x i16] [i16 -28248, i16 5, i16 5, i16 -28248, i16 15457, i16 29191, i16 -1, i16 27339], [8 x i16] [i16 -1, i16 9, i16 1900, i16 5653, i16 12264, i16 18246, i16 7, i16 2606]], [6 x [8 x i16]] [[8 x i16] [i16 4, i16 9, i16 1597, i16 -7, i16 1, i16 29191, i16 0, i16 -17401], [8 x i16] [i16 -13394, i16 5, i16 4, i16 30535, i16 -1, i16 15457, i16 9, i16 -7], [8 x i16] [i16 7, i16 24802, i16 28661, i16 1, i16 24802, i16 6, i16 -28248, i16 0], [8 x i16] [i16 -1, i16 2606, i16 1597, i16 11909, i16 9, i16 21598, i16 27339, i16 -13394], [8 x i16] [i16 -1, i16 30678, i16 29191, i16 -17401, i16 29191, i16 30678, i16 -1, i16 -1], [8 x i16] [i16 24802, i16 -13394, i16 -26070, i16 1, i16 30535, i16 -7, i16 -1, i16 9]], [6 x [8 x i16]] [[8 x i16] [i16 11909, i16 5653, i16 4, i16 21598, i16 30535, i16 4, i16 -1, i16 -17401], [8 x i16] [i16 24802, i16 11909, i16 30678, i16 9, i16 29191, i16 -1, i16 12264, i16 3], [8 x i16] [i16 -1, i16 7, i16 -14372, i16 5653, i16 9, i16 0, i16 2539, i16 7], [8 x i16] [i16 -1, i16 -17401, i16 3, i16 0, i16 24802, i16 4, i16 29191, i16 2539], [8 x i16] [i16 7, i16 -1, i16 21598, i16 -13394, i16 -1, i16 -1, i16 -13394, i16 21598], [8 x i16] [i16 -13394, i16 -13394, i16 18246, i16 -20131, i16 1, i16 -24217, i16 2539, i16 -1]], [6 x [8 x i16]] [[8 x i16] [i16 4, i16 -1, i16 6, i16 1597, i16 12264, i16 21598, i16 5, i16 -1], [8 x i16] [i16 -1, i16 3, i16 30678, i16 -20131, i16 15457, i16 27339, i16 5653, i16 21598], [8 x i16] [i16 -28248, i16 24802, i16 2, i16 -13394, i16 2539, i16 -1, i16 -1, i16 2539], [8 x i16] [i16 0, i16 6, i16 -14372, i16 -7, i16 3, i16 1, i16 -1, i16 -7], [8 x i16] [i16 15457, i16 1900, i16 1, i16 27339, i16 -14372, i16 0, i16 -7, i16 0], [8 x i16] [i16 30678, i16 29191, i16 -17401, i16 29191, i16 30678, i16 -1, i16 -1, i16 0]]], align 16
@__const.func_1.l_55 = private unnamed_addr constant [7 x [1 x [10 x i32*]]] [[1 x [10 x i32*]] [[10 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* @g_7, i32* null, i32* @g_7, i32* @g_2, i32* @g_7, i32* @g_7, i32* @g_7, i32* @g_7, i32* @g_2]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_7, i32* @g_7, i32* @g_7, i32* @g_7, i32* @g_7, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* @g_7, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0)]], [1 x [10 x i32*]] [[10 x i32*] [i32* null, i32* @g_7, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* @g_7, i32* @g_7, i32* @g_7, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* @g_7]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_7, i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* @g_7, i32* @g_7]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_2, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* @g_7, i32* @g_7, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* @g_2, i32* @g_7, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*)]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_2, i32* @g_2, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* @g_2, i32* @g_7, i32* @g_7, i32* @g_7, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* @g_7, i32* @g_7]], [1 x [10 x i32*]] [[10 x i32*] [i32* null, i32* @g_7, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* @g_7, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* @g_7, i32* @g_2, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*)]]], align 16
@__const.func_1.l_51 = private unnamed_addr constant [4 x i16] [i16 -1, i16 -1, i16 -1, i16 -1], align 2
@g_50 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), align 8, !dbg !40
@__const.func_8.l_15 = private unnamed_addr constant [4 x [9 x i32*]] [[9 x i32*] [i32* @g_7, i32* null, i32* @g_7, i32* @g_2, i32* @g_2, i32* @g_7, i32* null, i32* @g_7, i32* @g_7], [9 x i32*] [i32* null, i32* @g_7, i32* @g_2, i32* @g_7, i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_2], [9 x i32*] [i32* @g_2, i32* @g_2, i32* @g_7, i32* @g_7, i32* @g_7, i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_7], [9 x i32*] [i32* @g_2, i32* @g_7, i32* @g_2, i32* @g_7, i32* @g_2, i32* @g_2, i32* null, i32* @g_7, i32* null]], align 16
@g_17 = internal global i32* @g_2, align 8, !dbg !30
@g_16 = internal global i32** @g_17, align 8, !dbg !33
@g_29 = internal constant i32 -1263720131, align 4, !dbg !22
@g_30 = internal global i32* @g_31, align 8, !dbg !37
@g_31 = internal constant i32 4, align 4, !dbg !28
@g_46 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -85, i8 31, i8 0, i8 -80, i8 -107, i8 -1, i8 7, i8 7, i8 121, i8 2, i8 0 }, align 1, !dbg !57

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !88 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %j, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %k, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !97, metadata !DIExpression()), !dbg !98
  store i32 0, i32* %print_hash_value, align 4, !dbg !98
  %call = call i64 @func_1(), !dbg !99
  %0 = load i32, i32* @g_2, align 4, !dbg !100
  %conv = sext i32 %0 to i64, !dbg !100
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !101
  %1 = load volatile i32, i32* @g_6, align 4, !dbg !102
  %conv1 = sext i32 %1 to i64, !dbg !102
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !103
  %2 = load i32, i32* @g_7, align 4, !dbg !104
  %conv2 = sext i32 %2 to i64, !dbg !104
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !105
  store i32 0, i32* %i, align 4, !dbg !106
  br label %for.cond, !dbg !108

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !109
  %cmp = icmp slt i32 %3, 4, !dbg !111
  br i1 %cmp, label %for.body, label %for.end, !dbg !112

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !113
  %idxprom = sext i32 %4 to i64, !dbg !115
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @g_20, i64 0, i64 %idxprom, !dbg !115
  %5 = load i32, i32* %arrayidx, align 4, !dbg !115
  %conv4 = sext i32 %5 to i64, !dbg !115
  store volatile i64 %conv4, i64* @csmith_sink_, align 8, !dbg !116
  br label %for.inc, !dbg !117

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !118
  %inc = add nsw i32 %6, 1, !dbg !118
  store i32 %inc, i32* %i, align 4, !dbg !118
  br label %for.cond, !dbg !119, !llvm.loop !120

for.end:                                          ; preds = %for.cond
  store volatile i64 -1263720131, i64* @csmith_sink_, align 8, !dbg !123
  store volatile i64 4, i64* @csmith_sink_, align 8, !dbg !124
  %7 = load i32, i32* @g_33, align 4, !dbg !125
  %conv5 = zext i32 %7 to i64, !dbg !125
  store volatile i64 %conv5, i64* @csmith_sink_, align 8, !dbg !126
  %bf.load = load i56, i56* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to i56*), align 1, !dbg !127
  %bf.shl = shl i56 %bf.load, 43, !dbg !127
  %bf.ashr = ashr i56 %bf.shl, 43, !dbg !127
  %bf.cast = trunc i56 %bf.ashr to i32, !dbg !127
  %conv6 = sext i32 %bf.cast to i64, !dbg !128
  store volatile i64 %conv6, i64* @csmith_sink_, align 8, !dbg !129
  %bf.load7 = load volatile i56, i56* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to i56*), align 1, !dbg !130
  %bf.lshr = lshr i56 %bf.load7, 13, !dbg !130
  %bf.clear = and i56 %bf.lshr, 16383, !dbg !130
  %bf.cast8 = trunc i56 %bf.clear to i32, !dbg !130
  %conv9 = zext i32 %bf.cast8 to i64, !dbg !131
  store volatile i64 %conv9, i64* @csmith_sink_, align 8, !dbg !132
  %bf.load10 = load i56, i56* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to i56*), align 1, !dbg !133
  %bf.shl11 = shl i56 %bf.load10, 5, !dbg !133
  %bf.ashr12 = ashr i56 %bf.shl11, 32, !dbg !133
  %bf.cast13 = trunc i56 %bf.ashr12 to i32, !dbg !133
  %conv14 = sext i32 %bf.cast13 to i64, !dbg !134
  store volatile i64 %conv14, i64* @csmith_sink_, align 8, !dbg !135
  %8 = load i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to %struct.S0*), i32 0, i32 1), align 1, !dbg !136
  %conv15 = sext i8 %8 to i64, !dbg !137
  store volatile i64 %conv15, i64* @csmith_sink_, align 8, !dbg !138
  %bf.load16 = load i24, i24* bitcast ([3 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to %struct.S0*), i32 0, i32 2) to i24*), align 1, !dbg !139
  %bf.clear17 = and i24 %bf.load16, 7, !dbg !139
  %bf.cast18 = zext i24 %bf.clear17 to i32, !dbg !139
  %conv19 = zext i32 %bf.cast18 to i64, !dbg !140
  store volatile i64 %conv19, i64* @csmith_sink_, align 8, !dbg !141
  %bf.load20 = load volatile i24, i24* bitcast ([3 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to %struct.S0*), i32 0, i32 2) to i24*), align 1, !dbg !142
  %bf.shl21 = shl i24 %bf.load20, 7, !dbg !142
  %bf.ashr22 = ashr i24 %bf.shl21, 10, !dbg !142
  %bf.cast23 = sext i24 %bf.ashr22 to i32, !dbg !142
  %conv24 = sext i32 %bf.cast23 to i64, !dbg !143
  store volatile i64 %conv24, i64* @csmith_sink_, align 8, !dbg !144
  store i32 0, i32* %i, align 4, !dbg !145
  br label %for.cond25, !dbg !147

for.cond25:                                       ; preds = %for.inc32, %for.end
  %9 = load i32, i32* %i, align 4, !dbg !148
  %cmp26 = icmp slt i32 %9, 6, !dbg !150
  br i1 %cmp26, label %for.body28, label %for.end34, !dbg !151

for.body28:                                       ; preds = %for.cond25
  %10 = load i32, i32* %i, align 4, !dbg !152
  %idxprom29 = sext i32 %10 to i64, !dbg !154
  %arrayidx30 = getelementptr inbounds [6 x i32], [6 x i32]* @g_48, i64 0, i64 %idxprom29, !dbg !154
  %11 = load i32, i32* %arrayidx30, align 4, !dbg !154
  %conv31 = sext i32 %11 to i64, !dbg !154
  store volatile i64 %conv31, i64* @csmith_sink_, align 8, !dbg !155
  br label %for.inc32, !dbg !156

for.inc32:                                        ; preds = %for.body28
  %12 = load i32, i32* %i, align 4, !dbg !157
  %inc33 = add nsw i32 %12, 1, !dbg !157
  store i32 %inc33, i32* %i, align 4, !dbg !157
  br label %for.cond25, !dbg !158, !llvm.loop !159

for.end34:                                        ; preds = %for.cond25
  ret i32 0, !dbg !161
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @func_1() #0 !dbg !162 {
entry:
  %l_5 = alloca [5 x [6 x [8 x i16]]], align 16
  %l_54 = alloca i32*, align 8
  %l_55 = alloca [7 x [1 x [10 x i32*]]], align 16
  %l_56 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_51 = alloca [4 x i16], align 2
  %i1 = alloca i32, align 4
  %l_14 = alloca i16, align 2
  %coerce = alloca %struct.S0, align 1
  %tmp.coerce = alloca { i64, i24 }, align 8
  call void @llvm.dbg.declare(metadata [5 x [6 x [8 x i16]]]* %l_5, metadata !165, metadata !DIExpression()), !dbg !170
  %0 = bitcast [5 x [6 x [8 x i16]]]* %l_5 to i8*, !dbg !170
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x [6 x [8 x i16]]]* @__const.func_1.l_5 to i8*), i64 480, i1 false), !dbg !170
  call void @llvm.dbg.declare(metadata i32** %l_54, metadata !171, metadata !DIExpression()), !dbg !172
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i64 0, i64 5), i32** %l_54, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata [7 x [1 x [10 x i32*]]]* %l_55, metadata !173, metadata !DIExpression()), !dbg !179
  %1 = bitcast [7 x [1 x [10 x i32*]]]* %l_55 to i8*, !dbg !179
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([7 x [1 x [10 x i32*]]]* @__const.func_1.l_55 to i8*), i64 560, i1 false), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %l_56, metadata !180, metadata !DIExpression()), !dbg !181
  store i32 -181181382, i32* %l_56, align 4, !dbg !181
  call void @llvm.dbg.declare(metadata i32* %i, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %j, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i32* %k, metadata !186, metadata !DIExpression()), !dbg !187
  store i32 -17, i32* @g_2, align 4, !dbg !188
  br label %for.cond, !dbg !190

for.cond:                                         ; preds = %for.inc12, %entry
  %2 = load i32, i32* @g_2, align 4, !dbg !191
  %cmp = icmp sge i32 %2, -1, !dbg !193
  br i1 %cmp, label %for.body, label %for.end13, !dbg !194

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [4 x i16]* %l_51, metadata !195, metadata !DIExpression()), !dbg !198
  %3 = bitcast [4 x i16]* %l_51 to i8*, !dbg !198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %3, i8* align 2 bitcast ([4 x i16]* @__const.func_1.l_51 to i8*), i64 8, i1 false), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !199, metadata !DIExpression()), !dbg !200
  store i32 1, i32* @g_7, align 4, !dbg !201
  br label %for.cond2, !dbg !203

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* @g_7, align 4, !dbg !204
  %cmp3 = icmp sle i32 %4, 4, !dbg !206
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !207

for.body4:                                        ; preds = %for.cond2
  call void @llvm.dbg.declare(metadata i16* %l_14, metadata !208, metadata !DIExpression()), !dbg !210
  store i16 1, i16* %l_14, align 2, !dbg !210
  %5 = load i32, i32* @g_7, align 4, !dbg !211
  %6 = load i32, i32* @g_2, align 4, !dbg !212
  %conv = trunc i32 %6 to i8, !dbg !212
  %7 = load volatile i32, i32* @g_6, align 4, !dbg !213
  %8 = load i16, i16* %l_14, align 2, !dbg !214
  %conv5 = zext i16 %8 to i32, !dbg !214
  %9 = load i32, i32* @g_7, align 4, !dbg !215
  %arrayidx = getelementptr inbounds [5 x [6 x [8 x i16]]], [5 x [6 x [8 x i16]]]* %l_5, i64 0, i64 3, !dbg !216
  %arrayidx6 = getelementptr inbounds [6 x [8 x i16]], [6 x [8 x i16]]* %arrayidx, i64 0, i64 5, !dbg !216
  %arrayidx7 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx6, i64 0, i64 3, !dbg !216
  %10 = load i16, i16* %arrayidx7, align 2, !dbg !216
  %conv8 = sext i16 %10 to i32, !dbg !216
  %call = call { i64, i24 } @func_8(i8 signext %conv, i32 %7, i32 %conv5, i32 %9, i32 %conv8), !dbg !217
  store { i64, i24 } %call, { i64, i24 }* %tmp.coerce, align 8, !dbg !217
  %11 = bitcast %struct.S0* %coerce to i8*, !dbg !217
  %12 = bitcast { i64, i24 }* %tmp.coerce to i8*, !dbg !217
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 8 %12, i64 11, i1 false), !dbg !217
  %13 = load i32, i32* @g_33, align 4, !dbg !218
  %cmp9 = icmp ule i32 %5, %13, !dbg !219
  %conv10 = zext i1 %cmp9 to i32, !dbg !219
  %14 = load volatile i32*, i32** @g_50, align 8, !dbg !220
  store i32 %conv10, i32* %14, align 4, !dbg !221
  br label %for.inc, !dbg !222

for.inc:                                          ; preds = %for.body4
  %15 = load i32, i32* @g_7, align 4, !dbg !223
  %add = add nsw i32 %15, 1, !dbg !223
  store i32 %add, i32* @g_7, align 4, !dbg !223
  br label %for.cond2, !dbg !224, !llvm.loop !225

for.end:                                          ; preds = %for.cond2
  %arrayidx11 = getelementptr inbounds [4 x i16], [4 x i16]* %l_51, i64 0, i64 3, !dbg !227
  %16 = load i16, i16* %arrayidx11, align 2, !dbg !228
  %dec = add i16 %16, -1, !dbg !228
  store i16 %dec, i16* %arrayidx11, align 2, !dbg !228
  br label %for.inc12, !dbg !229

for.inc12:                                        ; preds = %for.end
  %17 = load i32, i32* @g_2, align 4, !dbg !230
  %inc = add nsw i32 %17, 1, !dbg !230
  store i32 %inc, i32* @g_2, align 4, !dbg !230
  br label %for.cond, !dbg !231, !llvm.loop !232

for.end13:                                        ; preds = %for.cond
  %18 = load i32, i32* %l_56, align 4, !dbg !234
  %inc14 = add i32 %18, 1, !dbg !234
  store i32 %inc14, i32* %l_56, align 4, !dbg !234
  %bf.load = load volatile i24, i24* bitcast ([3 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to %struct.S0*), i32 0, i32 2) to i24*), align 1, !dbg !235
  %bf.shl = shl i24 %bf.load, 7, !dbg !235
  %bf.ashr = ashr i24 %bf.shl, 10, !dbg !235
  %bf.cast = sext i24 %bf.ashr to i32, !dbg !235
  %conv15 = sext i32 %bf.cast to i64, !dbg !236
  ret i64 %conv15, !dbg !237
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal { i64, i24 } @func_8(i8 signext %p_9, i32 %p_10, i32 %p_11, i32 %p_12, i32 %p_13) #0 !dbg !238 {
entry:
  %retval = alloca %struct.S0, align 1
  %p_9.addr = alloca i8, align 1
  %p_10.addr = alloca i32, align 4
  %p_11.addr = alloca i32, align 4
  %p_12.addr = alloca i32, align 4
  %p_13.addr = alloca i32, align 4
  %l_15 = alloca [4 x [9 x i32*]], align 16
  %l_45 = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %l_34 = alloca i32, align 4
  %l_37 = alloca i32*, align 8
  %l_39 = alloca i32*, align 8
  %l_40 = alloca i32, align 4
  %l_28 = alloca i32*, align 8
  %l_27 = alloca [1 x i32**], align 8
  %l_38 = alloca i32**, align 8
  %i5 = alloca i32, align 4
  %retval.coerce = alloca { i64, i24 }, align 8
  store i8 %p_9, i8* %p_9.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %p_9.addr, metadata !241, metadata !DIExpression()), !dbg !242
  store i32 %p_10, i32* %p_10.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p_10.addr, metadata !243, metadata !DIExpression()), !dbg !244
  store i32 %p_11, i32* %p_11.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p_11.addr, metadata !245, metadata !DIExpression()), !dbg !246
  store i32 %p_12, i32* %p_12.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p_12.addr, metadata !247, metadata !DIExpression()), !dbg !248
  store i32 %p_13, i32* %p_13.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p_13.addr, metadata !249, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.declare(metadata [4 x [9 x i32*]]* %l_15, metadata !251, metadata !DIExpression()), !dbg !256
  %0 = bitcast [4 x [9 x i32*]]* %l_15 to i8*, !dbg !256
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x [9 x i32*]]* @__const.func_8.l_15 to i8*), i64 288, i1 false), !dbg !256
  call void @llvm.dbg.declare(metadata i32*** %l_45, metadata !257, metadata !DIExpression()), !dbg !258
  store i32** @g_17, i32*** %l_45, align 8, !dbg !258
  call void @llvm.dbg.declare(metadata i32* %i, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i32* %j, metadata !261, metadata !DIExpression()), !dbg !262
  %arrayidx = getelementptr inbounds [4 x [9 x i32*]], [4 x [9 x i32*]]* %l_15, i64 0, i64 3, !dbg !263
  %arrayidx1 = getelementptr inbounds [9 x i32*], [9 x i32*]* %arrayidx, i64 0, i64 2, !dbg !263
  %1 = load i32*, i32** %arrayidx1, align 8, !dbg !263
  %2 = load volatile i32**, i32*** @g_16, align 8, !dbg !264
  store i32* %1, i32** %2, align 8, !dbg !265
  store i32 0, i32* %p_12.addr, align 4, !dbg !266
  br label %for.cond, !dbg !268

for.cond:                                         ; preds = %for.inc39, %entry
  %3 = load i32, i32* %p_12.addr, align 4, !dbg !269
  %cmp = icmp ule i32 %3, 29, !dbg !271
  br i1 %cmp, label %for.body, label %for.end41, !dbg !272

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %l_34, metadata !273, metadata !DIExpression()), !dbg !275
  store i32 918793307, i32* %l_34, align 4, !dbg !275
  call void @llvm.dbg.declare(metadata i32** %l_37, metadata !276, metadata !DIExpression()), !dbg !277
  store i32* @g_2, i32** %l_37, align 8, !dbg !277
  call void @llvm.dbg.declare(metadata i32** %l_39, metadata !278, metadata !DIExpression()), !dbg !279
  store i32* @g_7, i32** %l_39, align 8, !dbg !279
  call void @llvm.dbg.declare(metadata i32* %l_40, metadata !280, metadata !DIExpression()), !dbg !281
  store i32 1, i32* %l_40, align 4, !dbg !281
  store i32 0, i32* %p_13.addr, align 4, !dbg !282
  br label %for.cond2, !dbg !284

for.cond2:                                        ; preds = %for.inc27, %for.body
  %4 = load i32, i32* %p_13.addr, align 4, !dbg !285
  %cmp3 = icmp ule i32 %4, 3, !dbg !287
  br i1 %cmp3, label %for.body4, label %for.end29, !dbg !288

for.body4:                                        ; preds = %for.cond2
  call void @llvm.dbg.declare(metadata i32** %l_28, metadata !289, metadata !DIExpression()), !dbg !291
  store i32* @g_29, i32** %l_28, align 8, !dbg !291
  call void @llvm.dbg.declare(metadata [1 x i32**]* %l_27, metadata !292, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata i32*** %l_38, metadata !297, metadata !DIExpression()), !dbg !298
  store i32** null, i32*** %l_38, align 8, !dbg !298
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !299, metadata !DIExpression()), !dbg !300
  store i32 0, i32* %i5, align 4, !dbg !301
  br label %for.cond6, !dbg !303

for.cond6:                                        ; preds = %for.inc, %for.body4
  %5 = load i32, i32* %i5, align 4, !dbg !304
  %cmp7 = icmp slt i32 %5, 1, !dbg !306
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !307

for.body8:                                        ; preds = %for.cond6
  %6 = load i32, i32* %i5, align 4, !dbg !308
  %idxprom = sext i32 %6 to i64, !dbg !309
  %arrayidx9 = getelementptr inbounds [1 x i32**], [1 x i32**]* %l_27, i64 0, i64 %idxprom, !dbg !309
  store i32** %l_28, i32*** %arrayidx9, align 8, !dbg !310
  br label %for.inc, !dbg !309

for.inc:                                          ; preds = %for.body8
  %7 = load i32, i32* %i5, align 4, !dbg !311
  %inc = add nsw i32 %7, 1, !dbg !311
  store i32 %inc, i32* %i5, align 4, !dbg !311
  br label %for.cond6, !dbg !312, !llvm.loop !313

for.end:                                          ; preds = %for.cond6
  %8 = load volatile i32, i32* @g_6, align 4, !dbg !315
  store i32* @g_7, i32** @g_30, align 8, !dbg !316
  %9 = load i32, i32* @g_7, align 4, !dbg !317
  %tobool = icmp ne i32 %9, 0, !dbg !318
  %lnot = xor i1 %tobool, true, !dbg !318
  %lnot.ext = zext i1 %lnot to i32, !dbg !318
  store i32 %lnot.ext, i32* @g_33, align 4, !dbg !319
  %arrayidx10 = getelementptr inbounds [4 x [9 x i32*]], [4 x [9 x i32*]]* %l_15, i64 0, i64 3, !dbg !320
  %arrayidx11 = getelementptr inbounds [9 x i32*], [9 x i32*]* %arrayidx10, i64 0, i64 2, !dbg !320
  %10 = load i32*, i32** %arrayidx11, align 8, !dbg !320
  %cmp12 = icmp eq i32* @g_7, %10, !dbg !321
  %conv = zext i1 %cmp12 to i32, !dbg !321
  %11 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_20, i64 0, i64 0), align 16, !dbg !322
  %12 = load i32, i32* %p_11.addr, align 4, !dbg !323
  %cmp13 = icmp eq i32 -3, %12, !dbg !324
  %conv14 = zext i1 %cmp13 to i32, !dbg !324
  %conv15 = trunc i32 %conv14 to i16, !dbg !325
  %conv16 = zext i16 %conv15 to i32, !dbg !325
  %add = add nsw i32 %conv16, 59583, !dbg !326
  %13 = load i32, i32* %p_12.addr, align 4, !dbg !327
  %conv17 = trunc i32 %13 to i8, !dbg !328
  %conv18 = sext i8 %conv17 to i32, !dbg !328
  %mul = mul nsw i32 1, %conv18, !dbg !329
  %cmp19 = icmp ne i32 %mul, -1263720131, !dbg !330
  %conv20 = zext i1 %cmp19 to i32, !dbg !330
  %cmp21 = icmp sle i32 %8, %conv20, !dbg !331
  %conv22 = zext i1 %cmp21 to i32, !dbg !331
  store i32 %conv22, i32* %l_34, align 4, !dbg !332
  %14 = load i32*, i32** %l_37, align 8, !dbg !333
  store i32* %14, i32** %l_37, align 8, !dbg !334
  %15 = load i32*, i32** %l_39, align 8, !dbg !335
  %cmp23 = icmp eq i32* %14, %15, !dbg !336
  %conv24 = zext i1 %cmp23 to i32, !dbg !336
  %conv25 = trunc i32 %conv24 to i16, !dbg !337
  %conv26 = sext i16 %conv25 to i32, !dbg !337
  %shr = ashr i32 %conv26, 3, !dbg !338
  %16 = load i32, i32* %l_40, align 4, !dbg !339
  %xor = xor i32 %16, %shr, !dbg !339
  store i32 %xor, i32* %l_40, align 4, !dbg !339
  br label %for.inc27, !dbg !340

for.inc27:                                        ; preds = %for.end
  %17 = load i32, i32* %p_13.addr, align 4, !dbg !341
  %add28 = add i32 %17, 1, !dbg !341
  store i32 %add28, i32* %p_13.addr, align 4, !dbg !341
  br label %for.cond2, !dbg !342, !llvm.loop !343

for.end29:                                        ; preds = %for.cond2
  %18 = load i8, i8* %p_9.addr, align 1, !dbg !345
  %conv30 = sext i8 %18 to i16, !dbg !346
  %conv31 = zext i16 %conv30 to i32, !dbg !346
  store i32** %l_37, i32*** %l_45, align 8, !dbg !347
  %cmp32 = icmp eq i32** @g_30, %l_37, !dbg !348
  %conv33 = zext i1 %cmp32 to i32, !dbg !348
  %conv34 = trunc i32 %conv33 to i16, !dbg !349
  %conv35 = zext i16 %conv34 to i32, !dbg !349
  %sub = sub nsw i32 %conv31, %conv35, !dbg !350
  %conv36 = trunc i32 %sub to i8, !dbg !351
  %conv37 = zext i8 %conv36 to i32, !dbg !351
  %mul38 = mul nsw i32 %conv37, 217, !dbg !352
  store volatile i32 %mul38, i32* @g_6, align 4, !dbg !353
  br label %for.inc39, !dbg !354

for.inc39:                                        ; preds = %for.end29
  %19 = load i32, i32* %p_12.addr, align 4, !dbg !355
  %add40 = add i32 %19, 4, !dbg !355
  store i32 %add40, i32* %p_12.addr, align 4, !dbg !355
  br label %for.cond, !dbg !356, !llvm.loop !357

for.end41:                                        ; preds = %for.cond
  %20 = bitcast %struct.S0* %retval to i8*, !dbg !359
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to %struct.S0*), i32 0, i32 0, i32 0), i64 11, i1 false), !dbg !359
  %21 = bitcast { i64, i24 }* %retval.coerce to i8*, !dbg !360
  %22 = bitcast %struct.S0* %retval to i8*, !dbg !360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 1 %22, i64 11, i1 false), !dbg !360
  %23 = load { i64, i24 }, { i64, i24 }* %retval.coerce, align 8, !dbg !360
  ret { i64, i24 } %23, !dbg !360
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !76, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !21, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-11T18:05/1")
!4 = !{}
!5 = !{!6, !9, !12, !15, !18}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 30, baseType: !8)
!7 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h", directory: "")
!8 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !10, line: 31, baseType: !11)
!10 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h", directory: "")
!11 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 31, baseType: !14)
!13 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !16, line: 30, baseType: !17)
!16 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h", directory: "")
!17 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !19, line: 31, baseType: !20)
!19 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h", directory: "")
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{!0, !22, !28, !30, !33, !37, !40, !43, !45, !48, !50, !55, !57, !71}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 18446744072445831485, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "g_29", scope: !2, file: !3, line: 36, type: !24, isLocal: true, isDefinition: true)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !26, line: 30, baseType: !27)
!26 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h", directory: "")
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "g_31", scope: !2, file: !3, line: 37, type: !24, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "g_17", scope: !2, file: !3, line: 33, type: !32, isLocal: true, isDefinition: true)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "g_16", scope: !2, file: !3, line: 34, type: !35, isLocal: true, isDefinition: true)
!35 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "g_30", scope: !2, file: !3, line: 38, type: !39, isLocal: true, isDefinition: true)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "g_50", scope: !2, file: !3, line: 44, type: !42, isLocal: true, isDefinition: true)
!42 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "g_2", scope: !2, file: !3, line: 30, type: !25, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "g_6", scope: !2, file: !3, line: 31, type: !47, isLocal: true, isDefinition: true)
!47 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "g_7", scope: !2, file: !3, line: 32, type: !25, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "g_20", scope: !2, file: !3, line: 35, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 4)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "g_33", scope: !2, file: !3, line: 39, type: !12, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "g_46", scope: !2, file: !3, line: 40, type: !59, isLocal: true, isDefinition: true)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S0", file: !3, line: 19, size: 88, elements: !60)
!60 = !{!61, !62, !64, !65, !67, !69}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !59, file: !3, line: 20, baseType: !27, size: 13, flags: DIFlagBitField, extraData: i64 0)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !59, file: !3, line: 21, baseType: !63, size: 14, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!63 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !59, file: !3, line: 22, baseType: !27, size: 24, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !59, file: !3, line: 23, baseType: !66, size: 8, offset: 56)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "f4", scope: !59, file: !3, line: 24, baseType: !68, size: 3, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "f5", scope: !59, file: !3, line: 25, baseType: !70, size: 14, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!70 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "g_48", scope: !2, file: !3, line: 41, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 192, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 6)
!76 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !78, line: 31, baseType: !79)
!78 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!79 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
!81 = !{i32 7, !"Dwarf Version", i32 4}
!82 = !{i32 2, !"Debug Info Version", i32 3}
!83 = !{i32 1, !"wchar_size", i32 4}
!84 = !{i32 7, !"PIC Level", i32 2}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!88 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 118, type: !89, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!89 = !DISubroutineType(types: !90)
!90 = !{!27}
!91 = !DILocalVariable(name: "i", scope: !88, file: !3, line: 120, type: !27)
!92 = !DILocation(line: 120, column: 9, scope: !88)
!93 = !DILocalVariable(name: "j", scope: !88, file: !3, line: 120, type: !27)
!94 = !DILocation(line: 120, column: 12, scope: !88)
!95 = !DILocalVariable(name: "k", scope: !88, file: !3, line: 120, type: !27)
!96 = !DILocation(line: 120, column: 15, scope: !88)
!97 = !DILocalVariable(name: "print_hash_value", scope: !88, file: !3, line: 121, type: !27)
!98 = !DILocation(line: 121, column: 9, scope: !88)
!99 = !DILocation(line: 123, column: 5, scope: !88)
!100 = !DILocation(line: 124, column: 20, scope: !88)
!101 = !DILocation(line: 124, column: 18, scope: !88)
!102 = !DILocation(line: 125, column: 20, scope: !88)
!103 = !DILocation(line: 125, column: 18, scope: !88)
!104 = !DILocation(line: 126, column: 20, scope: !88)
!105 = !DILocation(line: 126, column: 18, scope: !88)
!106 = !DILocation(line: 127, column: 12, scope: !107)
!107 = distinct !DILexicalBlock(scope: !88, file: !3, line: 127, column: 5)
!108 = !DILocation(line: 127, column: 10, scope: !107)
!109 = !DILocation(line: 127, column: 17, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !3, line: 127, column: 5)
!111 = !DILocation(line: 127, column: 19, scope: !110)
!112 = !DILocation(line: 127, column: 5, scope: !107)
!113 = !DILocation(line: 129, column: 29, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !3, line: 128, column: 5)
!115 = !DILocation(line: 129, column: 24, scope: !114)
!116 = !DILocation(line: 129, column: 22, scope: !114)
!117 = !DILocation(line: 130, column: 5, scope: !114)
!118 = !DILocation(line: 127, column: 25, scope: !110)
!119 = !DILocation(line: 127, column: 5, scope: !110)
!120 = distinct !{!120, !112, !121, !122}
!121 = !DILocation(line: 130, column: 5, scope: !107)
!122 = !{!"llvm.loop.mustprogress"}
!123 = !DILocation(line: 131, column: 18, scope: !88)
!124 = !DILocation(line: 132, column: 18, scope: !88)
!125 = !DILocation(line: 133, column: 20, scope: !88)
!126 = !DILocation(line: 133, column: 18, scope: !88)
!127 = !DILocation(line: 134, column: 25, scope: !88)
!128 = !DILocation(line: 134, column: 20, scope: !88)
!129 = !DILocation(line: 134, column: 18, scope: !88)
!130 = !DILocation(line: 135, column: 25, scope: !88)
!131 = !DILocation(line: 135, column: 20, scope: !88)
!132 = !DILocation(line: 135, column: 18, scope: !88)
!133 = !DILocation(line: 136, column: 25, scope: !88)
!134 = !DILocation(line: 136, column: 20, scope: !88)
!135 = !DILocation(line: 136, column: 18, scope: !88)
!136 = !DILocation(line: 137, column: 25, scope: !88)
!137 = !DILocation(line: 137, column: 20, scope: !88)
!138 = !DILocation(line: 137, column: 18, scope: !88)
!139 = !DILocation(line: 138, column: 25, scope: !88)
!140 = !DILocation(line: 138, column: 20, scope: !88)
!141 = !DILocation(line: 138, column: 18, scope: !88)
!142 = !DILocation(line: 139, column: 25, scope: !88)
!143 = !DILocation(line: 139, column: 20, scope: !88)
!144 = !DILocation(line: 139, column: 18, scope: !88)
!145 = !DILocation(line: 140, column: 12, scope: !146)
!146 = distinct !DILexicalBlock(scope: !88, file: !3, line: 140, column: 5)
!147 = !DILocation(line: 140, column: 10, scope: !146)
!148 = !DILocation(line: 140, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !3, line: 140, column: 5)
!150 = !DILocation(line: 140, column: 19, scope: !149)
!151 = !DILocation(line: 140, column: 5, scope: !146)
!152 = !DILocation(line: 142, column: 29, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !3, line: 141, column: 5)
!154 = !DILocation(line: 142, column: 24, scope: !153)
!155 = !DILocation(line: 142, column: 22, scope: !153)
!156 = !DILocation(line: 143, column: 5, scope: !153)
!157 = !DILocation(line: 140, column: 25, scope: !149)
!158 = !DILocation(line: 140, column: 5, scope: !149)
!159 = distinct !{!159, !151, !160, !122}
!160 = !DILocation(line: 143, column: 5, scope: !146)
!161 = !DILocation(line: 145, column: 5, scope: !88)
!162 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 58, type: !163, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!163 = !DISubroutineType(types: !164)
!164 = !{!77}
!165 = !DILocalVariable(name: "l_5", scope: !162, file: !3, line: 60, type: !166)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 3840, elements: !167)
!167 = !{!168, !75, !169}
!168 = !DISubrange(count: 5)
!169 = !DISubrange(count: 8)
!170 = !DILocation(line: 60, column: 13, scope: !162)
!171 = !DILocalVariable(name: "l_54", scope: !162, file: !3, line: 61, type: !32)
!172 = !DILocation(line: 61, column: 14, scope: !162)
!173 = !DILocalVariable(name: "l_55", scope: !162, file: !3, line: 62, type: !174)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 4480, elements: !175)
!175 = !{!176, !177, !178}
!176 = !DISubrange(count: 7)
!177 = !DISubrange(count: 1)
!178 = !DISubrange(count: 10)
!179 = !DILocation(line: 62, column: 14, scope: !162)
!180 = !DILocalVariable(name: "l_56", scope: !162, file: !3, line: 63, type: !12)
!181 = !DILocation(line: 63, column: 14, scope: !162)
!182 = !DILocalVariable(name: "i", scope: !162, file: !3, line: 64, type: !27)
!183 = !DILocation(line: 64, column: 9, scope: !162)
!184 = !DILocalVariable(name: "j", scope: !162, file: !3, line: 64, type: !27)
!185 = !DILocation(line: 64, column: 12, scope: !162)
!186 = !DILocalVariable(name: "k", scope: !162, file: !3, line: 64, type: !27)
!187 = !DILocation(line: 64, column: 15, scope: !162)
!188 = !DILocation(line: 65, column: 14, scope: !189)
!189 = distinct !DILexicalBlock(scope: !162, file: !3, line: 65, column: 5)
!190 = !DILocation(line: 65, column: 10, scope: !189)
!191 = !DILocation(line: 65, column: 24, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !3, line: 65, column: 5)
!193 = !DILocation(line: 65, column: 28, scope: !192)
!194 = !DILocation(line: 65, column: 5, scope: !189)
!195 = !DILocalVariable(name: "l_51", scope: !196, file: !3, line: 67, type: !197)
!196 = distinct !DILexicalBlock(scope: !192, file: !3, line: 66, column: 5)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !53)
!198 = !DILocation(line: 67, column: 18, scope: !196)
!199 = !DILocalVariable(name: "i", scope: !196, file: !3, line: 68, type: !27)
!200 = !DILocation(line: 68, column: 13, scope: !196)
!201 = !DILocation(line: 69, column: 18, scope: !202)
!202 = distinct !DILexicalBlock(scope: !196, file: !3, line: 69, column: 9)
!203 = !DILocation(line: 69, column: 14, scope: !202)
!204 = !DILocation(line: 69, column: 24, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !3, line: 69, column: 9)
!206 = !DILocation(line: 69, column: 28, scope: !205)
!207 = !DILocation(line: 69, column: 9, scope: !202)
!208 = !DILocalVariable(name: "l_14", scope: !209, file: !3, line: 71, type: !9)
!209 = distinct !DILexicalBlock(scope: !205, file: !3, line: 70, column: 9)
!210 = !DILocation(line: 71, column: 22, scope: !209)
!211 = !DILocation(line: 72, column: 24, scope: !209)
!212 = !DILocation(line: 72, column: 39, scope: !209)
!213 = !DILocation(line: 72, column: 44, scope: !209)
!214 = !DILocation(line: 72, column: 49, scope: !209)
!215 = !DILocation(line: 72, column: 55, scope: !209)
!216 = !DILocation(line: 72, column: 60, scope: !209)
!217 = !DILocation(line: 72, column: 32, scope: !209)
!218 = !DILocation(line: 72, column: 76, scope: !209)
!219 = !DILocation(line: 72, column: 28, scope: !209)
!220 = !DILocation(line: 72, column: 15, scope: !209)
!221 = !DILocation(line: 72, column: 21, scope: !209)
!222 = !DILocation(line: 73, column: 9, scope: !209)
!223 = !DILocation(line: 69, column: 39, scope: !205)
!224 = !DILocation(line: 69, column: 9, scope: !205)
!225 = distinct !{!225, !207, !226, !122}
!226 = !DILocation(line: 73, column: 9, scope: !202)
!227 = !DILocation(line: 74, column: 11, scope: !196)
!228 = !DILocation(line: 74, column: 9, scope: !196)
!229 = !DILocation(line: 75, column: 5, scope: !196)
!230 = !DILocation(line: 65, column: 41, scope: !192)
!231 = !DILocation(line: 65, column: 5, scope: !192)
!232 = distinct !{!232, !194, !233, !122}
!233 = !DILocation(line: 75, column: 5, scope: !189)
!234 = !DILocation(line: 76, column: 5, scope: !162)
!235 = !DILocation(line: 77, column: 17, scope: !162)
!236 = !DILocation(line: 77, column: 12, scope: !162)
!237 = !DILocation(line: 77, column: 5, scope: !162)
!238 = distinct !DISubprogram(name: "func_8", scope: !3, file: !3, line: 86, type: !239, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!239 = !DISubroutineType(types: !240)
!240 = !{!59, !6, !12, !12, !12, !12}
!241 = !DILocalVariable(name: "p_9", arg: 1, scope: !238, file: !3, line: 86, type: !6)
!242 = !DILocation(line: 86, column: 34, scope: !238)
!243 = !DILocalVariable(name: "p_10", arg: 2, scope: !238, file: !3, line: 86, type: !12)
!244 = !DILocation(line: 86, column: 49, scope: !238)
!245 = !DILocalVariable(name: "p_11", arg: 3, scope: !238, file: !3, line: 86, type: !12)
!246 = !DILocation(line: 86, column: 65, scope: !238)
!247 = !DILocalVariable(name: "p_12", arg: 4, scope: !238, file: !3, line: 86, type: !12)
!248 = !DILocation(line: 86, column: 81, scope: !238)
!249 = !DILocalVariable(name: "p_13", arg: 5, scope: !238, file: !3, line: 86, type: !12)
!250 = !DILocation(line: 86, column: 97, scope: !238)
!251 = !DILocalVariable(name: "l_15", scope: !238, file: !3, line: 88, type: !252)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 2304, elements: !254)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!254 = !{!54, !255}
!255 = !DISubrange(count: 9)
!256 = !DILocation(line: 88, column: 21, scope: !238)
!257 = !DILocalVariable(name: "l_45", scope: !238, file: !3, line: 89, type: !36)
!258 = !DILocation(line: 89, column: 15, scope: !238)
!259 = !DILocalVariable(name: "i", scope: !238, file: !3, line: 90, type: !27)
!260 = !DILocation(line: 90, column: 9, scope: !238)
!261 = !DILocalVariable(name: "j", scope: !238, file: !3, line: 90, type: !27)
!262 = !DILocation(line: 90, column: 12, scope: !238)
!263 = !DILocation(line: 91, column: 15, scope: !238)
!264 = !DILocation(line: 91, column: 7, scope: !238)
!265 = !DILocation(line: 91, column: 13, scope: !238)
!266 = !DILocation(line: 92, column: 15, scope: !267)
!267 = distinct !DILexicalBlock(scope: !238, file: !3, line: 92, column: 5)
!268 = !DILocation(line: 92, column: 10, scope: !267)
!269 = !DILocation(line: 92, column: 21, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !3, line: 92, column: 5)
!271 = !DILocation(line: 92, column: 26, scope: !270)
!272 = !DILocation(line: 92, column: 5, scope: !267)
!273 = !DILocalVariable(name: "l_34", scope: !274, file: !3, line: 94, type: !12)
!274 = distinct !DILexicalBlock(scope: !270, file: !3, line: 93, column: 5)
!275 = !DILocation(line: 94, column: 18, scope: !274)
!276 = !DILocalVariable(name: "l_37", scope: !274, file: !3, line: 95, type: !32)
!277 = !DILocation(line: 95, column: 18, scope: !274)
!278 = !DILocalVariable(name: "l_39", scope: !274, file: !3, line: 96, type: !32)
!279 = !DILocation(line: 96, column: 18, scope: !274)
!280 = !DILocalVariable(name: "l_40", scope: !274, file: !3, line: 97, type: !25)
!281 = !DILocation(line: 97, column: 17, scope: !274)
!282 = !DILocation(line: 98, column: 19, scope: !283)
!283 = distinct !DILexicalBlock(scope: !274, file: !3, line: 98, column: 9)
!284 = !DILocation(line: 98, column: 14, scope: !283)
!285 = !DILocation(line: 98, column: 25, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !3, line: 98, column: 9)
!287 = !DILocation(line: 98, column: 30, scope: !286)
!288 = !DILocation(line: 98, column: 9, scope: !283)
!289 = !DILocalVariable(name: "l_28", scope: !290, file: !3, line: 100, type: !39)
!290 = distinct !DILexicalBlock(scope: !286, file: !3, line: 99, column: 9)
!291 = !DILocation(line: 100, column: 28, scope: !290)
!292 = !DILocalVariable(name: "l_27", scope: !290, file: !3, line: 101, type: !293)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 64, elements: !295)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!295 = !{!177}
!296 = !DILocation(line: 101, column: 29, scope: !290)
!297 = !DILocalVariable(name: "l_38", scope: !290, file: !3, line: 102, type: !36)
!298 = !DILocation(line: 102, column: 23, scope: !290)
!299 = !DILocalVariable(name: "i", scope: !290, file: !3, line: 103, type: !27)
!300 = !DILocation(line: 103, column: 17, scope: !290)
!301 = !DILocation(line: 104, column: 20, scope: !302)
!302 = distinct !DILexicalBlock(scope: !290, file: !3, line: 104, column: 13)
!303 = !DILocation(line: 104, column: 18, scope: !302)
!304 = !DILocation(line: 104, column: 25, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !3, line: 104, column: 13)
!306 = !DILocation(line: 104, column: 27, scope: !305)
!307 = !DILocation(line: 104, column: 13, scope: !302)
!308 = !DILocation(line: 105, column: 22, scope: !305)
!309 = !DILocation(line: 105, column: 17, scope: !305)
!310 = !DILocation(line: 105, column: 25, scope: !305)
!311 = !DILocation(line: 104, column: 33, scope: !305)
!312 = !DILocation(line: 104, column: 13, scope: !305)
!313 = distinct !{!313, !307, !314, !122}
!314 = !DILocation(line: 105, column: 28, scope: !302)
!315 = !DILocation(line: 106, column: 21, scope: !290)
!316 = !DILocation(line: 106, column: 72, scope: !290)
!317 = !DILocation(line: 106, column: 94, scope: !290)
!318 = !DILocation(line: 106, column: 93, scope: !290)
!319 = !DILocation(line: 106, column: 90, scope: !290)
!320 = !DILocation(line: 106, column: 102, scope: !290)
!321 = !DILocation(line: 106, column: 80, scope: !290)
!322 = !DILocation(line: 106, column: 117, scope: !290)
!323 = !DILocation(line: 106, column: 154, scope: !290)
!324 = !DILocation(line: 106, column: 151, scope: !290)
!325 = !DILocation(line: 106, column: 41, scope: !290)
!326 = !DILocation(line: 106, column: 160, scope: !290)
!327 = !DILocation(line: 106, column: 211, scope: !290)
!328 = !DILocation(line: 106, column: 203, scope: !290)
!329 = !DILocation(line: 106, column: 201, scope: !290)
!330 = !DILocation(line: 106, column: 217, scope: !290)
!331 = !DILocation(line: 106, column: 25, scope: !290)
!332 = !DILocation(line: 106, column: 18, scope: !290)
!333 = !DILocation(line: 107, column: 40, scope: !290)
!334 = !DILocation(line: 107, column: 38, scope: !290)
!335 = !DILocation(line: 107, column: 49, scope: !290)
!336 = !DILocation(line: 107, column: 46, scope: !290)
!337 = !DILocation(line: 107, column: 22, scope: !290)
!338 = !DILocation(line: 107, column: 55, scope: !290)
!339 = !DILocation(line: 107, column: 18, scope: !290)
!340 = !DILocation(line: 108, column: 9, scope: !290)
!341 = !DILocation(line: 98, column: 42, scope: !286)
!342 = !DILocation(line: 98, column: 9, scope: !286)
!343 = distinct !{!343, !288, !344, !122}
!344 = !DILocation(line: 108, column: 9, scope: !283)
!345 = !DILocation(line: 109, column: 36, scope: !274)
!346 = !DILocation(line: 109, column: 26, scope: !274)
!347 = !DILocation(line: 109, column: 68, scope: !274)
!348 = !DILocation(line: 109, column: 59, scope: !274)
!349 = !DILocation(line: 109, column: 42, scope: !274)
!350 = !DILocation(line: 109, column: 40, scope: !274)
!351 = !DILocation(line: 109, column: 16, scope: !274)
!352 = !DILocation(line: 109, column: 79, scope: !274)
!353 = !DILocation(line: 109, column: 13, scope: !274)
!354 = !DILocation(line: 110, column: 5, scope: !274)
!355 = !DILocation(line: 92, column: 39, scope: !270)
!356 = !DILocation(line: 92, column: 5, scope: !270)
!357 = distinct !{!357, !272, !358, !122}
!358 = !DILocation(line: 110, column: 5, scope: !267)
!359 = !DILocation(line: 111, column: 12, scope: !238)
!360 = !DILocation(line: 111, column: 5, scope: !238)
