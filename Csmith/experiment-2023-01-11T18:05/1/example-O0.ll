; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.S0 = type { [7 x i8], i8, [3 x i8] }

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_2 = internal global i32 1560930968, align 4, !dbg !38
@g_6 = internal global i32 -2, align 4, !dbg !40
@g_7 = internal global i32 -1958922146, align 4, !dbg !43
@g_20 = internal global [4 x i32] [i32 -1535083489, i32 -1535083489, i32 -1535083489, i32 -1535083489], align 16, !dbg !45
@g_33 = internal global i32 1031534065, align 4, !dbg !50
@g_48 = internal global [6 x i32] [i32 -8, i32 -8, i32 -970450078, i32 -8, i32 -8, i32 -970450078], align 16, !dbg !66
@__const.func_1.l_5 = private unnamed_addr constant [5 x [6 x [8 x i16]]] [[6 x [8 x i16]] [[8 x i16] [i16 -20131, i16 1, i16 24802, i16 30535, i16 -14372, i16 -28248, i16 -1, i16 6], [8 x i16] [i16 1, i16 2606, i16 0, i16 -14372, i16 2539, i16 0, i16 18246, i16 -1], [8 x i16] [i16 2, i16 1, i16 4, i16 6, i16 1, i16 3, i16 -6, i16 -1], [8 x i16] [i16 -13394, i16 0, i16 12264, i16 -1, i16 9, i16 -1, i16 6, i16 7], [8 x i16] [i16 0, i16 11909, i16 3, i16 -28248, i16 -7, i16 4, i16 -13394, i16 6], [8 x i16] [i16 7, i16 5653, i16 -8, i16 -13394, i16 0, i16 -7, i16 -13394, i16 30535]], [6 x [8 x i16]] [[8 x i16] [i16 29191, i16 -13394, i16 3, i16 4, i16 1, i16 30678, i16 6, i16 -1], [8 x i16] [i16 1, i16 30678, i16 6, i16 -1, i16 5, i16 21598, i16 12264, i16 1597], [8 x i16] [i16 -1, i16 2606, i16 -24217, i16 -20131, i16 -1, i16 6, i16 5653, i16 30535], [8 x i16] [i16 0, i16 24802, i16 4, i16 29191, i16 2539, i16 15457, i16 15457, i16 2539], [8 x i16] [i16 -28248, i16 5, i16 5, i16 -28248, i16 15457, i16 29191, i16 -1, i16 27339], [8 x i16] [i16 -1, i16 9, i16 1900, i16 5653, i16 12264, i16 18246, i16 7, i16 2606]], [6 x [8 x i16]] [[8 x i16] [i16 4, i16 9, i16 1597, i16 -7, i16 1, i16 29191, i16 0, i16 -17401], [8 x i16] [i16 -13394, i16 5, i16 4, i16 30535, i16 -1, i16 15457, i16 9, i16 -7], [8 x i16] [i16 7, i16 24802, i16 28661, i16 1, i16 24802, i16 6, i16 -28248, i16 0], [8 x i16] [i16 -1, i16 2606, i16 1597, i16 11909, i16 9, i16 21598, i16 27339, i16 -13394], [8 x i16] [i16 -1, i16 30678, i16 29191, i16 -17401, i16 29191, i16 30678, i16 -1, i16 -1], [8 x i16] [i16 24802, i16 -13394, i16 -26070, i16 1, i16 30535, i16 -7, i16 -1, i16 9]], [6 x [8 x i16]] [[8 x i16] [i16 11909, i16 5653, i16 4, i16 21598, i16 30535, i16 4, i16 -1, i16 -17401], [8 x i16] [i16 24802, i16 11909, i16 30678, i16 9, i16 29191, i16 -1, i16 12264, i16 3], [8 x i16] [i16 -1, i16 7, i16 -14372, i16 5653, i16 9, i16 0, i16 2539, i16 7], [8 x i16] [i16 -1, i16 -17401, i16 3, i16 0, i16 24802, i16 4, i16 29191, i16 2539], [8 x i16] [i16 7, i16 -1, i16 21598, i16 -13394, i16 -1, i16 -1, i16 -13394, i16 21598], [8 x i16] [i16 -13394, i16 -13394, i16 18246, i16 -20131, i16 1, i16 -24217, i16 2539, i16 -1]], [6 x [8 x i16]] [[8 x i16] [i16 4, i16 -1, i16 6, i16 1597, i16 12264, i16 21598, i16 5, i16 -1], [8 x i16] [i16 -1, i16 3, i16 30678, i16 -20131, i16 15457, i16 27339, i16 5653, i16 21598], [8 x i16] [i16 -28248, i16 24802, i16 2, i16 -13394, i16 2539, i16 -1, i16 -1, i16 2539], [8 x i16] [i16 0, i16 6, i16 -14372, i16 -7, i16 3, i16 1, i16 -1, i16 -7], [8 x i16] [i16 15457, i16 1900, i16 1, i16 27339, i16 -14372, i16 0, i16 -7, i16 0], [8 x i16] [i16 30678, i16 29191, i16 -17401, i16 29191, i16 30678, i16 -1, i16 -1, i16 0]]], align 16
@__const.func_1.l_55 = private unnamed_addr constant [7 x [1 x [10 x i32*]]] [[1 x [10 x i32*]] [[10 x i32*] [i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* @g_7, i32* null, i32* @g_7, i32* @g_2, i32* @g_7, i32* @g_7, i32* @g_7, i32* @g_7, i32* @g_2]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_7, i32* @g_7, i32* @g_7, i32* @g_7, i32* @g_7, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* @g_7, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0)]], [1 x [10 x i32*]] [[10 x i32*] [i32* null, i32* @g_7, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* @g_7, i32* @g_7, i32* @g_7, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* @g_7]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_7, i32* @g_2, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* @g_7, i32* @g_7]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_2, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* @g_7, i32* @g_7, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* @g_2, i32* @g_7, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*)]], [1 x [10 x i32*]] [[10 x i32*] [i32* @g_2, i32* @g_2, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* @g_2, i32* @g_7, i32* @g_7, i32* @g_7, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* @g_7, i32* @g_7]], [1 x [10 x i32*]] [[10 x i32*] [i32* null, i32* @g_7, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* @g_7, i32* null, i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), i32* @g_7, i32* @g_2, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i32 0, i32 0), i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*)]]], align 16
@__const.func_1.l_51 = private unnamed_addr constant [4 x i16] [i16 -1, i16 -1, i16 -1, i16 -1], align 2
@g_50 = internal global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([6 x i32]* @g_48 to i8*), i64 8) to i32*), align 8, !dbg !35
@__const.func_8.l_15 = private unnamed_addr constant [4 x [9 x i32*]] [[9 x i32*] [i32* @g_7, i32* null, i32* @g_7, i32* @g_2, i32* @g_2, i32* @g_7, i32* null, i32* @g_7, i32* @g_7], [9 x i32*] [i32* null, i32* @g_7, i32* @g_2, i32* @g_7, i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_2], [9 x i32*] [i32* @g_2, i32* @g_2, i32* @g_7, i32* @g_7, i32* @g_7, i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_7], [9 x i32*] [i32* @g_2, i32* @g_7, i32* @g_2, i32* @g_7, i32* @g_2, i32* @g_2, i32* null, i32* @g_7, i32* null]], align 16
@g_17 = internal global i32* @g_2, align 8, !dbg !25
@g_16 = internal global i32** @g_17, align 8, !dbg !28
@g_29 = internal constant i32 -1263720131, align 4, !dbg !18
@g_30 = internal global i32* @g_31, align 8, !dbg !32
@g_31 = internal constant i32 4, align 4, !dbg !23
@g_46 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -85, i8 31, i8 0, i8 -80, i8 -107, i8 -1, i8 7, i8 7, i8 121, i8 2, i8 0 }, align 1, !dbg !52

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
  %0 = load i32, i32* @g_2, align 4, !dbg !93
  %conv = sext i32 %0 to i64, !dbg !93
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !94
  %1 = load volatile i32, i32* @g_6, align 4, !dbg !95
  %conv1 = sext i32 %1 to i64, !dbg !95
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !96
  %2 = load i32, i32* @g_7, align 4, !dbg !97
  %conv2 = sext i32 %2 to i64, !dbg !97
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !98
  store i32 0, i32* %i, align 4, !dbg !99
  br label %for.cond, !dbg !101

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !102
  %cmp = icmp slt i32 %3, 4, !dbg !104
  br i1 %cmp, label %for.body, label %for.end, !dbg !105

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !106
  %idxprom = sext i32 %4 to i64, !dbg !108
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @g_20, i64 0, i64 %idxprom, !dbg !108
  %5 = load i32, i32* %arrayidx, align 4, !dbg !108
  %conv4 = sext i32 %5 to i64, !dbg !108
  store volatile i64 %conv4, i64* @csmith_sink_, align 8, !dbg !109
  br label %for.inc, !dbg !110

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !111
  %inc = add nsw i32 %6, 1, !dbg !111
  store i32 %inc, i32* %i, align 4, !dbg !111
  br label %for.cond, !dbg !112, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  store volatile i64 -1263720131, i64* @csmith_sink_, align 8, !dbg !116
  store volatile i64 4, i64* @csmith_sink_, align 8, !dbg !117
  %7 = load i32, i32* @g_33, align 4, !dbg !118
  %conv5 = zext i32 %7 to i64, !dbg !118
  store volatile i64 %conv5, i64* @csmith_sink_, align 8, !dbg !119
  %bf.load = load i56, i56* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to i56*), align 1, !dbg !120
  %bf.shl = shl i56 %bf.load, 43, !dbg !120
  %bf.ashr = ashr i56 %bf.shl, 43, !dbg !120
  %bf.cast = trunc i56 %bf.ashr to i32, !dbg !120
  %conv6 = sext i32 %bf.cast to i64, !dbg !121
  store volatile i64 %conv6, i64* @csmith_sink_, align 8, !dbg !122
  %bf.load7 = load volatile i56, i56* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to i56*), align 1, !dbg !123
  %bf.lshr = lshr i56 %bf.load7, 13, !dbg !123
  %bf.clear = and i56 %bf.lshr, 16383, !dbg !123
  %bf.cast8 = trunc i56 %bf.clear to i32, !dbg !123
  %conv9 = zext i32 %bf.cast8 to i64, !dbg !124
  store volatile i64 %conv9, i64* @csmith_sink_, align 8, !dbg !125
  %bf.load10 = load i56, i56* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to i56*), align 1, !dbg !126
  %bf.shl11 = shl i56 %bf.load10, 5, !dbg !126
  %bf.ashr12 = ashr i56 %bf.shl11, 32, !dbg !126
  %bf.cast13 = trunc i56 %bf.ashr12 to i32, !dbg !126
  %conv14 = sext i32 %bf.cast13 to i64, !dbg !127
  store volatile i64 %conv14, i64* @csmith_sink_, align 8, !dbg !128
  %8 = load i8, i8* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to %struct.S0*), i32 0, i32 1), align 1, !dbg !129
  %conv15 = sext i8 %8 to i64, !dbg !130
  store volatile i64 %conv15, i64* @csmith_sink_, align 8, !dbg !131
  %bf.load16 = load i24, i24* bitcast ([3 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to %struct.S0*), i32 0, i32 2) to i24*), align 1, !dbg !132
  %bf.clear17 = and i24 %bf.load16, 7, !dbg !132
  %bf.cast18 = zext i24 %bf.clear17 to i32, !dbg !132
  %conv19 = zext i32 %bf.cast18 to i64, !dbg !133
  store volatile i64 %conv19, i64* @csmith_sink_, align 8, !dbg !134
  %bf.load20 = load volatile i24, i24* bitcast ([3 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to %struct.S0*), i32 0, i32 2) to i24*), align 1, !dbg !135
  %bf.shl21 = shl i24 %bf.load20, 7, !dbg !135
  %bf.ashr22 = ashr i24 %bf.shl21, 10, !dbg !135
  %bf.cast23 = sext i24 %bf.ashr22 to i32, !dbg !135
  %conv24 = sext i32 %bf.cast23 to i64, !dbg !136
  store volatile i64 %conv24, i64* @csmith_sink_, align 8, !dbg !137
  store i32 0, i32* %i, align 4, !dbg !138
  br label %for.cond25, !dbg !140

for.cond25:                                       ; preds = %for.inc32, %for.end
  %9 = load i32, i32* %i, align 4, !dbg !141
  %cmp26 = icmp slt i32 %9, 6, !dbg !143
  br i1 %cmp26, label %for.body28, label %for.end34, !dbg !144

for.body28:                                       ; preds = %for.cond25
  %10 = load i32, i32* %i, align 4, !dbg !145
  %idxprom29 = sext i32 %10 to i64, !dbg !147
  %arrayidx30 = getelementptr inbounds [6 x i32], [6 x i32]* @g_48, i64 0, i64 %idxprom29, !dbg !147
  %11 = load i32, i32* %arrayidx30, align 4, !dbg !147
  %conv31 = sext i32 %11 to i64, !dbg !147
  store volatile i64 %conv31, i64* @csmith_sink_, align 8, !dbg !148
  br label %for.inc32, !dbg !149

for.inc32:                                        ; preds = %for.body28
  %12 = load i32, i32* %i, align 4, !dbg !150
  %inc33 = add nsw i32 %12, 1, !dbg !150
  store i32 %inc33, i32* %i, align 4, !dbg !150
  br label %for.cond25, !dbg !151, !llvm.loop !152

for.end34:                                        ; preds = %for.cond25
  ret i32 0, !dbg !154
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @func_1() #0 !dbg !155 {
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
  call void @llvm.dbg.declare(metadata [5 x [6 x [8 x i16]]]* %l_5, metadata !158, metadata !DIExpression()), !dbg !163
  %0 = bitcast [5 x [6 x [8 x i16]]]* %l_5 to i8*, !dbg !163
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x [6 x [8 x i16]]]* @__const.func_1.l_5 to i8*), i64 480, i1 false), !dbg !163
  call void @llvm.dbg.declare(metadata i32** %l_54, metadata !164, metadata !DIExpression()), !dbg !165
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i64 0, i64 5), i32** %l_54, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata [7 x [1 x [10 x i32*]]]* %l_55, metadata !166, metadata !DIExpression()), !dbg !172
  %1 = bitcast [7 x [1 x [10 x i32*]]]* %l_55 to i8*, !dbg !172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([7 x [1 x [10 x i32*]]]* @__const.func_1.l_55 to i8*), i64 560, i1 false), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %l_56, metadata !173, metadata !DIExpression()), !dbg !174
  store i32 -181181382, i32* %l_56, align 4, !dbg !174
  call void @llvm.dbg.declare(metadata i32* %i, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %j, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %k, metadata !179, metadata !DIExpression()), !dbg !180
  store i32 -17, i32* @g_2, align 4, !dbg !181
  br label %for.cond, !dbg !183

for.cond:                                         ; preds = %for.inc12, %entry
  %2 = load i32, i32* @g_2, align 4, !dbg !184
  %cmp = icmp sge i32 %2, -1, !dbg !186
  br i1 %cmp, label %for.body, label %for.end13, !dbg !187

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata [4 x i16]* %l_51, metadata !188, metadata !DIExpression()), !dbg !191
  %3 = bitcast [4 x i16]* %l_51 to i8*, !dbg !191
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %3, i8* align 2 bitcast ([4 x i16]* @__const.func_1.l_51 to i8*), i64 8, i1 false), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !192, metadata !DIExpression()), !dbg !193
  store i32 1, i32* @g_7, align 4, !dbg !194
  br label %for.cond2, !dbg !196

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* @g_7, align 4, !dbg !197
  %cmp3 = icmp sle i32 %4, 4, !dbg !199
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !200

for.body4:                                        ; preds = %for.cond2
  call void @llvm.dbg.declare(metadata i16* %l_14, metadata !201, metadata !DIExpression()), !dbg !203
  store i16 1, i16* %l_14, align 2, !dbg !203
  %5 = load i32, i32* @g_7, align 4, !dbg !204
  %6 = load i32, i32* @g_2, align 4, !dbg !205
  %conv = trunc i32 %6 to i8, !dbg !205
  %7 = load volatile i32, i32* @g_6, align 4, !dbg !206
  %8 = load i16, i16* %l_14, align 2, !dbg !207
  %conv5 = zext i16 %8 to i32, !dbg !207
  %9 = load i32, i32* @g_7, align 4, !dbg !208
  %arrayidx = getelementptr inbounds [5 x [6 x [8 x i16]]], [5 x [6 x [8 x i16]]]* %l_5, i64 0, i64 3, !dbg !209
  %arrayidx6 = getelementptr inbounds [6 x [8 x i16]], [6 x [8 x i16]]* %arrayidx, i64 0, i64 5, !dbg !209
  %arrayidx7 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx6, i64 0, i64 3, !dbg !209
  %10 = load i16, i16* %arrayidx7, align 2, !dbg !209
  %conv8 = sext i16 %10 to i32, !dbg !209
  %call = call { i64, i24 } @func_8(i8 signext %conv, i32 %7, i32 %conv5, i32 %9, i32 %conv8), !dbg !210
  store { i64, i24 } %call, { i64, i24 }* %tmp.coerce, align 8, !dbg !210
  %11 = bitcast %struct.S0* %coerce to i8*, !dbg !210
  %12 = bitcast { i64, i24 }* %tmp.coerce to i8*, !dbg !210
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 8 %12, i64 11, i1 false), !dbg !210
  %13 = load i32, i32* @g_33, align 4, !dbg !211
  %cmp9 = icmp ule i32 %5, %13, !dbg !212
  %conv10 = zext i1 %cmp9 to i32, !dbg !212
  %14 = load volatile i32*, i32** @g_50, align 8, !dbg !213
  store i32 %conv10, i32* %14, align 4, !dbg !214
  br label %for.inc, !dbg !215

for.inc:                                          ; preds = %for.body4
  %15 = load i32, i32* @g_7, align 4, !dbg !216
  %add = add nsw i32 %15, 1, !dbg !216
  store i32 %add, i32* @g_7, align 4, !dbg !216
  br label %for.cond2, !dbg !217, !llvm.loop !218

for.end:                                          ; preds = %for.cond2
  %arrayidx11 = getelementptr inbounds [4 x i16], [4 x i16]* %l_51, i64 0, i64 3, !dbg !220
  %16 = load i16, i16* %arrayidx11, align 2, !dbg !221
  %dec = add i16 %16, -1, !dbg !221
  store i16 %dec, i16* %arrayidx11, align 2, !dbg !221
  br label %for.inc12, !dbg !222

for.inc12:                                        ; preds = %for.end
  %17 = load i32, i32* @g_2, align 4, !dbg !223
  %inc = add nsw i32 %17, 1, !dbg !223
  store i32 %inc, i32* @g_2, align 4, !dbg !223
  br label %for.cond, !dbg !224, !llvm.loop !225

for.end13:                                        ; preds = %for.cond
  %18 = load i32, i32* %l_56, align 4, !dbg !227
  %inc14 = add i32 %18, 1, !dbg !227
  store i32 %inc14, i32* %l_56, align 4, !dbg !227
  %bf.load = load volatile i24, i24* bitcast ([3 x i8]* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to %struct.S0*), i32 0, i32 2) to i24*), align 1, !dbg !228
  %bf.shl = shl i24 %bf.load, 7, !dbg !228
  %bf.ashr = ashr i24 %bf.shl, 10, !dbg !228
  %bf.cast = sext i24 %bf.ashr to i32, !dbg !228
  %conv15 = sext i32 %bf.cast to i64, !dbg !229
  ret i64 %conv15, !dbg !230
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal { i64, i24 } @func_8(i8 signext %p_9, i32 %p_10, i32 %p_11, i32 %p_12, i32 %p_13) #0 !dbg !231 {
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
  call void @llvm.dbg.declare(metadata i8* %p_9.addr, metadata !234, metadata !DIExpression()), !dbg !235
  store i32 %p_10, i32* %p_10.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p_10.addr, metadata !236, metadata !DIExpression()), !dbg !237
  store i32 %p_11, i32* %p_11.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p_11.addr, metadata !238, metadata !DIExpression()), !dbg !239
  store i32 %p_12, i32* %p_12.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p_12.addr, metadata !240, metadata !DIExpression()), !dbg !241
  store i32 %p_13, i32* %p_13.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p_13.addr, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata [4 x [9 x i32*]]* %l_15, metadata !244, metadata !DIExpression()), !dbg !249
  %0 = bitcast [4 x [9 x i32*]]* %l_15 to i8*, !dbg !249
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x [9 x i32*]]* @__const.func_8.l_15 to i8*), i64 288, i1 false), !dbg !249
  call void @llvm.dbg.declare(metadata i32*** %l_45, metadata !250, metadata !DIExpression()), !dbg !251
  store i32** @g_17, i32*** %l_45, align 8, !dbg !251
  call void @llvm.dbg.declare(metadata i32* %i, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %j, metadata !254, metadata !DIExpression()), !dbg !255
  %arrayidx = getelementptr inbounds [4 x [9 x i32*]], [4 x [9 x i32*]]* %l_15, i64 0, i64 3, !dbg !256
  %arrayidx1 = getelementptr inbounds [9 x i32*], [9 x i32*]* %arrayidx, i64 0, i64 2, !dbg !256
  %1 = load i32*, i32** %arrayidx1, align 8, !dbg !256
  %2 = load volatile i32**, i32*** @g_16, align 8, !dbg !257
  store i32* %1, i32** %2, align 8, !dbg !258
  store i32 0, i32* %p_12.addr, align 4, !dbg !259
  br label %for.cond, !dbg !261

for.cond:                                         ; preds = %for.inc39, %entry
  %3 = load i32, i32* %p_12.addr, align 4, !dbg !262
  %cmp = icmp ule i32 %3, 29, !dbg !264
  br i1 %cmp, label %for.body, label %for.end41, !dbg !265

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %l_34, metadata !266, metadata !DIExpression()), !dbg !268
  store i32 918793307, i32* %l_34, align 4, !dbg !268
  call void @llvm.dbg.declare(metadata i32** %l_37, metadata !269, metadata !DIExpression()), !dbg !270
  store i32* @g_2, i32** %l_37, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata i32** %l_39, metadata !271, metadata !DIExpression()), !dbg !272
  store i32* @g_7, i32** %l_39, align 8, !dbg !272
  call void @llvm.dbg.declare(metadata i32* %l_40, metadata !273, metadata !DIExpression()), !dbg !274
  store i32 1, i32* %l_40, align 4, !dbg !274
  store i32 0, i32* %p_13.addr, align 4, !dbg !275
  br label %for.cond2, !dbg !277

for.cond2:                                        ; preds = %for.inc27, %for.body
  %4 = load i32, i32* %p_13.addr, align 4, !dbg !278
  %cmp3 = icmp ule i32 %4, 3, !dbg !280
  br i1 %cmp3, label %for.body4, label %for.end29, !dbg !281

for.body4:                                        ; preds = %for.cond2
  call void @llvm.dbg.declare(metadata i32** %l_28, metadata !282, metadata !DIExpression()), !dbg !284
  store i32* @g_29, i32** %l_28, align 8, !dbg !284
  call void @llvm.dbg.declare(metadata [1 x i32**]* %l_27, metadata !285, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata i32*** %l_38, metadata !290, metadata !DIExpression()), !dbg !291
  store i32** null, i32*** %l_38, align 8, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !292, metadata !DIExpression()), !dbg !293
  store i32 0, i32* %i5, align 4, !dbg !294
  br label %for.cond6, !dbg !296

for.cond6:                                        ; preds = %for.inc, %for.body4
  %5 = load i32, i32* %i5, align 4, !dbg !297
  %cmp7 = icmp slt i32 %5, 1, !dbg !299
  br i1 %cmp7, label %for.body8, label %for.end, !dbg !300

for.body8:                                        ; preds = %for.cond6
  %6 = load i32, i32* %i5, align 4, !dbg !301
  %idxprom = sext i32 %6 to i64, !dbg !302
  %arrayidx9 = getelementptr inbounds [1 x i32**], [1 x i32**]* %l_27, i64 0, i64 %idxprom, !dbg !302
  store i32** %l_28, i32*** %arrayidx9, align 8, !dbg !303
  br label %for.inc, !dbg !302

for.inc:                                          ; preds = %for.body8
  %7 = load i32, i32* %i5, align 4, !dbg !304
  %inc = add nsw i32 %7, 1, !dbg !304
  store i32 %inc, i32* %i5, align 4, !dbg !304
  br label %for.cond6, !dbg !305, !llvm.loop !306

for.end:                                          ; preds = %for.cond6
  %8 = load volatile i32, i32* @g_6, align 4, !dbg !308
  store i32* @g_7, i32** @g_30, align 8, !dbg !309
  %9 = load i32, i32* @g_7, align 4, !dbg !310
  %tobool = icmp ne i32 %9, 0, !dbg !311
  %lnot = xor i1 %tobool, true, !dbg !311
  %lnot.ext = zext i1 %lnot to i32, !dbg !311
  store i32 %lnot.ext, i32* @g_33, align 4, !dbg !312
  %arrayidx10 = getelementptr inbounds [4 x [9 x i32*]], [4 x [9 x i32*]]* %l_15, i64 0, i64 3, !dbg !313
  %arrayidx11 = getelementptr inbounds [9 x i32*], [9 x i32*]* %arrayidx10, i64 0, i64 2, !dbg !313
  %10 = load i32*, i32** %arrayidx11, align 8, !dbg !313
  %cmp12 = icmp eq i32* @g_7, %10, !dbg !314
  %conv = zext i1 %cmp12 to i32, !dbg !314
  %11 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_20, i64 0, i64 0), align 16, !dbg !315
  %12 = load i32, i32* %p_11.addr, align 4, !dbg !316
  %cmp13 = icmp eq i32 -3, %12, !dbg !317
  %conv14 = zext i1 %cmp13 to i32, !dbg !317
  %conv15 = trunc i32 %conv14 to i16, !dbg !318
  %conv16 = zext i16 %conv15 to i32, !dbg !318
  %add = add nsw i32 %conv16, 59583, !dbg !319
  %13 = load i32, i32* %p_12.addr, align 4, !dbg !320
  %conv17 = trunc i32 %13 to i8, !dbg !321
  %conv18 = sext i8 %conv17 to i32, !dbg !321
  %mul = mul nsw i32 1, %conv18, !dbg !322
  %cmp19 = icmp ne i32 %mul, -1263720131, !dbg !323
  %conv20 = zext i1 %cmp19 to i32, !dbg !323
  %cmp21 = icmp sle i32 %8, %conv20, !dbg !324
  %conv22 = zext i1 %cmp21 to i32, !dbg !324
  store i32 %conv22, i32* %l_34, align 4, !dbg !325
  %14 = load i32*, i32** %l_37, align 8, !dbg !326
  store i32* %14, i32** %l_37, align 8, !dbg !327
  %15 = load i32*, i32** %l_39, align 8, !dbg !328
  %cmp23 = icmp eq i32* %14, %15, !dbg !329
  %conv24 = zext i1 %cmp23 to i32, !dbg !329
  %conv25 = trunc i32 %conv24 to i16, !dbg !330
  %conv26 = sext i16 %conv25 to i32, !dbg !330
  %shr = ashr i32 %conv26, 3, !dbg !331
  %16 = load i32, i32* %l_40, align 4, !dbg !332
  %xor = xor i32 %16, %shr, !dbg !332
  store i32 %xor, i32* %l_40, align 4, !dbg !332
  br label %for.inc27, !dbg !333

for.inc27:                                        ; preds = %for.end
  %17 = load i32, i32* %p_13.addr, align 4, !dbg !334
  %add28 = add i32 %17, 1, !dbg !334
  store i32 %add28, i32* %p_13.addr, align 4, !dbg !334
  br label %for.cond2, !dbg !335, !llvm.loop !336

for.end29:                                        ; preds = %for.cond2
  %18 = load i8, i8* %p_9.addr, align 1, !dbg !338
  %conv30 = sext i8 %18 to i16, !dbg !339
  %conv31 = zext i16 %conv30 to i32, !dbg !339
  store i32** %l_37, i32*** %l_45, align 8, !dbg !340
  %cmp32 = icmp eq i32** @g_30, %l_37, !dbg !341
  %conv33 = zext i1 %cmp32 to i32, !dbg !341
  %conv34 = trunc i32 %conv33 to i16, !dbg !342
  %conv35 = zext i16 %conv34 to i32, !dbg !342
  %sub = sub nsw i32 %conv31, %conv35, !dbg !343
  %conv36 = trunc i32 %sub to i8, !dbg !344
  %conv37 = zext i8 %conv36 to i32, !dbg !344
  %mul38 = mul nsw i32 %conv37, 217, !dbg !345
  store volatile i32 %mul38, i32* @g_6, align 4, !dbg !346
  br label %for.inc39, !dbg !347

for.inc39:                                        ; preds = %for.end29
  %19 = load i32, i32* %p_12.addr, align 4, !dbg !348
  %add40 = add i32 %19, 4, !dbg !348
  store i32 %add40, i32* %p_12.addr, align 4, !dbg !348
  br label %for.cond, !dbg !349, !llvm.loop !350

for.end41:                                        ; preds = %for.cond
  %20 = bitcast %struct.S0* %retval to i8*, !dbg !352
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_46 to %struct.S0*), i32 0, i32 0, i32 0), i64 11, i1 false), !dbg !352
  %21 = bitcast { i64, i24 }* %retval.coerce to i8*, !dbg !353
  %22 = bitcast %struct.S0* %retval to i8*, !dbg !353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 1 %22, i64 11, i1 false), !dbg !353
  %23 = load { i64, i24 }, { i64, i24 }* %retval.coerce, align 8, !dbg !353
  ret { i64, i24 } %23, !dbg !353
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !71, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !17, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-11T18:05/1")
!4 = !{}
!5 = !{!6, !9, !11, !13, !15}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !10)
!10 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !12)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !14)
!14 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !{!0, !18, !23, !25, !28, !32, !35, !38, !40, !43, !45, !50, !52, !66}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 18446744072445831485, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "g_29", scope: !2, file: !3, line: 36, type: !20, isLocal: true, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !22)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "g_31", scope: !2, file: !3, line: 37, type: !20, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "g_17", scope: !2, file: !3, line: 33, type: !27, isLocal: true, isDefinition: true)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "g_16", scope: !2, file: !3, line: 34, type: !30, isLocal: true, isDefinition: true)
!30 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "g_30", scope: !2, file: !3, line: 38, type: !34, isLocal: true, isDefinition: true)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "g_50", scope: !2, file: !3, line: 44, type: !37, isLocal: true, isDefinition: true)
!37 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "g_2", scope: !2, file: !3, line: 30, type: !21, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "g_6", scope: !2, file: !3, line: 31, type: !42, isLocal: true, isDefinition: true)
!42 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "g_7", scope: !2, file: !3, line: 32, type: !21, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "g_20", scope: !2, file: !3, line: 35, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 4)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "g_33", scope: !2, file: !3, line: 39, type: !11, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "g_46", scope: !2, file: !3, line: 40, type: !54, isLocal: true, isDefinition: true)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S0", file: !3, line: 19, size: 88, elements: !55)
!55 = !{!56, !57, !59, !60, !62, !64}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !54, file: !3, line: 20, baseType: !22, size: 13, flags: DIFlagBitField, extraData: i64 0)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !54, file: !3, line: 21, baseType: !58, size: 14, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!58 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !54, file: !3, line: 22, baseType: !22, size: 24, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !54, file: !3, line: 23, baseType: !61, size: 8, offset: 56)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "f4", scope: !54, file: !3, line: 24, baseType: !63, size: 3, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "f5", scope: !54, file: !3, line: 25, baseType: !65, size: 14, offset: 67, flags: DIFlagBitField, extraData: i64 64)
!65 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "g_48", scope: !2, file: !3, line: 41, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 6)
!71 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !73)
!73 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !{i32 7, !"Dwarf Version", i32 4}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{i32 1, !"wchar_size", i32 4}
!77 = !{i32 7, !"PIC Level", i32 2}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!81 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 118, type: !82, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!82 = !DISubroutineType(types: !83)
!83 = !{!22}
!84 = !DILocalVariable(name: "i", scope: !81, file: !3, line: 120, type: !22)
!85 = !DILocation(line: 120, column: 9, scope: !81)
!86 = !DILocalVariable(name: "j", scope: !81, file: !3, line: 120, type: !22)
!87 = !DILocation(line: 120, column: 12, scope: !81)
!88 = !DILocalVariable(name: "k", scope: !81, file: !3, line: 120, type: !22)
!89 = !DILocation(line: 120, column: 15, scope: !81)
!90 = !DILocalVariable(name: "print_hash_value", scope: !81, file: !3, line: 121, type: !22)
!91 = !DILocation(line: 121, column: 9, scope: !81)
!92 = !DILocation(line: 123, column: 5, scope: !81)
!93 = !DILocation(line: 124, column: 20, scope: !81)
!94 = !DILocation(line: 124, column: 18, scope: !81)
!95 = !DILocation(line: 125, column: 20, scope: !81)
!96 = !DILocation(line: 125, column: 18, scope: !81)
!97 = !DILocation(line: 126, column: 20, scope: !81)
!98 = !DILocation(line: 126, column: 18, scope: !81)
!99 = !DILocation(line: 127, column: 12, scope: !100)
!100 = distinct !DILexicalBlock(scope: !81, file: !3, line: 127, column: 5)
!101 = !DILocation(line: 127, column: 10, scope: !100)
!102 = !DILocation(line: 127, column: 17, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !3, line: 127, column: 5)
!104 = !DILocation(line: 127, column: 19, scope: !103)
!105 = !DILocation(line: 127, column: 5, scope: !100)
!106 = !DILocation(line: 129, column: 29, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 128, column: 5)
!108 = !DILocation(line: 129, column: 24, scope: !107)
!109 = !DILocation(line: 129, column: 22, scope: !107)
!110 = !DILocation(line: 130, column: 5, scope: !107)
!111 = !DILocation(line: 127, column: 25, scope: !103)
!112 = !DILocation(line: 127, column: 5, scope: !103)
!113 = distinct !{!113, !105, !114, !115}
!114 = !DILocation(line: 130, column: 5, scope: !100)
!115 = !{!"llvm.loop.mustprogress"}
!116 = !DILocation(line: 131, column: 18, scope: !81)
!117 = !DILocation(line: 132, column: 18, scope: !81)
!118 = !DILocation(line: 133, column: 20, scope: !81)
!119 = !DILocation(line: 133, column: 18, scope: !81)
!120 = !DILocation(line: 134, column: 25, scope: !81)
!121 = !DILocation(line: 134, column: 20, scope: !81)
!122 = !DILocation(line: 134, column: 18, scope: !81)
!123 = !DILocation(line: 135, column: 25, scope: !81)
!124 = !DILocation(line: 135, column: 20, scope: !81)
!125 = !DILocation(line: 135, column: 18, scope: !81)
!126 = !DILocation(line: 136, column: 25, scope: !81)
!127 = !DILocation(line: 136, column: 20, scope: !81)
!128 = !DILocation(line: 136, column: 18, scope: !81)
!129 = !DILocation(line: 137, column: 25, scope: !81)
!130 = !DILocation(line: 137, column: 20, scope: !81)
!131 = !DILocation(line: 137, column: 18, scope: !81)
!132 = !DILocation(line: 138, column: 25, scope: !81)
!133 = !DILocation(line: 138, column: 20, scope: !81)
!134 = !DILocation(line: 138, column: 18, scope: !81)
!135 = !DILocation(line: 139, column: 25, scope: !81)
!136 = !DILocation(line: 139, column: 20, scope: !81)
!137 = !DILocation(line: 139, column: 18, scope: !81)
!138 = !DILocation(line: 140, column: 12, scope: !139)
!139 = distinct !DILexicalBlock(scope: !81, file: !3, line: 140, column: 5)
!140 = !DILocation(line: 140, column: 10, scope: !139)
!141 = !DILocation(line: 140, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !3, line: 140, column: 5)
!143 = !DILocation(line: 140, column: 19, scope: !142)
!144 = !DILocation(line: 140, column: 5, scope: !139)
!145 = !DILocation(line: 142, column: 29, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !3, line: 141, column: 5)
!147 = !DILocation(line: 142, column: 24, scope: !146)
!148 = !DILocation(line: 142, column: 22, scope: !146)
!149 = !DILocation(line: 143, column: 5, scope: !146)
!150 = !DILocation(line: 140, column: 25, scope: !142)
!151 = !DILocation(line: 140, column: 5, scope: !142)
!152 = distinct !{!152, !144, !153, !115}
!153 = !DILocation(line: 143, column: 5, scope: !139)
!154 = !DILocation(line: 145, column: 5, scope: !81)
!155 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 58, type: !156, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!156 = !DISubroutineType(types: !157)
!157 = !{!72}
!158 = !DILocalVariable(name: "l_5", scope: !155, file: !3, line: 60, type: !159)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 3840, elements: !160)
!160 = !{!161, !70, !162}
!161 = !DISubrange(count: 5)
!162 = !DISubrange(count: 8)
!163 = !DILocation(line: 60, column: 13, scope: !155)
!164 = !DILocalVariable(name: "l_54", scope: !155, file: !3, line: 61, type: !27)
!165 = !DILocation(line: 61, column: 14, scope: !155)
!166 = !DILocalVariable(name: "l_55", scope: !155, file: !3, line: 62, type: !167)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 4480, elements: !168)
!168 = !{!169, !170, !171}
!169 = !DISubrange(count: 7)
!170 = !DISubrange(count: 1)
!171 = !DISubrange(count: 10)
!172 = !DILocation(line: 62, column: 14, scope: !155)
!173 = !DILocalVariable(name: "l_56", scope: !155, file: !3, line: 63, type: !11)
!174 = !DILocation(line: 63, column: 14, scope: !155)
!175 = !DILocalVariable(name: "i", scope: !155, file: !3, line: 64, type: !22)
!176 = !DILocation(line: 64, column: 9, scope: !155)
!177 = !DILocalVariable(name: "j", scope: !155, file: !3, line: 64, type: !22)
!178 = !DILocation(line: 64, column: 12, scope: !155)
!179 = !DILocalVariable(name: "k", scope: !155, file: !3, line: 64, type: !22)
!180 = !DILocation(line: 64, column: 15, scope: !155)
!181 = !DILocation(line: 65, column: 14, scope: !182)
!182 = distinct !DILexicalBlock(scope: !155, file: !3, line: 65, column: 5)
!183 = !DILocation(line: 65, column: 10, scope: !182)
!184 = !DILocation(line: 65, column: 24, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 65, column: 5)
!186 = !DILocation(line: 65, column: 28, scope: !185)
!187 = !DILocation(line: 65, column: 5, scope: !182)
!188 = !DILocalVariable(name: "l_51", scope: !189, file: !3, line: 67, type: !190)
!189 = distinct !DILexicalBlock(scope: !185, file: !3, line: 66, column: 5)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !48)
!191 = !DILocation(line: 67, column: 18, scope: !189)
!192 = !DILocalVariable(name: "i", scope: !189, file: !3, line: 68, type: !22)
!193 = !DILocation(line: 68, column: 13, scope: !189)
!194 = !DILocation(line: 69, column: 18, scope: !195)
!195 = distinct !DILexicalBlock(scope: !189, file: !3, line: 69, column: 9)
!196 = !DILocation(line: 69, column: 14, scope: !195)
!197 = !DILocation(line: 69, column: 24, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !3, line: 69, column: 9)
!199 = !DILocation(line: 69, column: 28, scope: !198)
!200 = !DILocation(line: 69, column: 9, scope: !195)
!201 = !DILocalVariable(name: "l_14", scope: !202, file: !3, line: 71, type: !9)
!202 = distinct !DILexicalBlock(scope: !198, file: !3, line: 70, column: 9)
!203 = !DILocation(line: 71, column: 22, scope: !202)
!204 = !DILocation(line: 72, column: 24, scope: !202)
!205 = !DILocation(line: 72, column: 39, scope: !202)
!206 = !DILocation(line: 72, column: 44, scope: !202)
!207 = !DILocation(line: 72, column: 49, scope: !202)
!208 = !DILocation(line: 72, column: 55, scope: !202)
!209 = !DILocation(line: 72, column: 60, scope: !202)
!210 = !DILocation(line: 72, column: 32, scope: !202)
!211 = !DILocation(line: 72, column: 76, scope: !202)
!212 = !DILocation(line: 72, column: 28, scope: !202)
!213 = !DILocation(line: 72, column: 15, scope: !202)
!214 = !DILocation(line: 72, column: 21, scope: !202)
!215 = !DILocation(line: 73, column: 9, scope: !202)
!216 = !DILocation(line: 69, column: 39, scope: !198)
!217 = !DILocation(line: 69, column: 9, scope: !198)
!218 = distinct !{!218, !200, !219, !115}
!219 = !DILocation(line: 73, column: 9, scope: !195)
!220 = !DILocation(line: 74, column: 11, scope: !189)
!221 = !DILocation(line: 74, column: 9, scope: !189)
!222 = !DILocation(line: 75, column: 5, scope: !189)
!223 = !DILocation(line: 65, column: 41, scope: !185)
!224 = !DILocation(line: 65, column: 5, scope: !185)
!225 = distinct !{!225, !187, !226, !115}
!226 = !DILocation(line: 75, column: 5, scope: !182)
!227 = !DILocation(line: 76, column: 5, scope: !155)
!228 = !DILocation(line: 77, column: 17, scope: !155)
!229 = !DILocation(line: 77, column: 12, scope: !155)
!230 = !DILocation(line: 77, column: 5, scope: !155)
!231 = distinct !DISubprogram(name: "func_8", scope: !3, file: !3, line: 86, type: !232, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!232 = !DISubroutineType(types: !233)
!233 = !{!54, !6, !11, !11, !11, !11}
!234 = !DILocalVariable(name: "p_9", arg: 1, scope: !231, file: !3, line: 86, type: !6)
!235 = !DILocation(line: 86, column: 34, scope: !231)
!236 = !DILocalVariable(name: "p_10", arg: 2, scope: !231, file: !3, line: 86, type: !11)
!237 = !DILocation(line: 86, column: 49, scope: !231)
!238 = !DILocalVariable(name: "p_11", arg: 3, scope: !231, file: !3, line: 86, type: !11)
!239 = !DILocation(line: 86, column: 65, scope: !231)
!240 = !DILocalVariable(name: "p_12", arg: 4, scope: !231, file: !3, line: 86, type: !11)
!241 = !DILocation(line: 86, column: 81, scope: !231)
!242 = !DILocalVariable(name: "p_13", arg: 5, scope: !231, file: !3, line: 86, type: !11)
!243 = !DILocation(line: 86, column: 97, scope: !231)
!244 = !DILocalVariable(name: "l_15", scope: !231, file: !3, line: 88, type: !245)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 2304, elements: !247)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!247 = !{!49, !248}
!248 = !DISubrange(count: 9)
!249 = !DILocation(line: 88, column: 21, scope: !231)
!250 = !DILocalVariable(name: "l_45", scope: !231, file: !3, line: 89, type: !31)
!251 = !DILocation(line: 89, column: 15, scope: !231)
!252 = !DILocalVariable(name: "i", scope: !231, file: !3, line: 90, type: !22)
!253 = !DILocation(line: 90, column: 9, scope: !231)
!254 = !DILocalVariable(name: "j", scope: !231, file: !3, line: 90, type: !22)
!255 = !DILocation(line: 90, column: 12, scope: !231)
!256 = !DILocation(line: 91, column: 15, scope: !231)
!257 = !DILocation(line: 91, column: 7, scope: !231)
!258 = !DILocation(line: 91, column: 13, scope: !231)
!259 = !DILocation(line: 92, column: 15, scope: !260)
!260 = distinct !DILexicalBlock(scope: !231, file: !3, line: 92, column: 5)
!261 = !DILocation(line: 92, column: 10, scope: !260)
!262 = !DILocation(line: 92, column: 21, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !3, line: 92, column: 5)
!264 = !DILocation(line: 92, column: 26, scope: !263)
!265 = !DILocation(line: 92, column: 5, scope: !260)
!266 = !DILocalVariable(name: "l_34", scope: !267, file: !3, line: 94, type: !11)
!267 = distinct !DILexicalBlock(scope: !263, file: !3, line: 93, column: 5)
!268 = !DILocation(line: 94, column: 18, scope: !267)
!269 = !DILocalVariable(name: "l_37", scope: !267, file: !3, line: 95, type: !27)
!270 = !DILocation(line: 95, column: 18, scope: !267)
!271 = !DILocalVariable(name: "l_39", scope: !267, file: !3, line: 96, type: !27)
!272 = !DILocation(line: 96, column: 18, scope: !267)
!273 = !DILocalVariable(name: "l_40", scope: !267, file: !3, line: 97, type: !21)
!274 = !DILocation(line: 97, column: 17, scope: !267)
!275 = !DILocation(line: 98, column: 19, scope: !276)
!276 = distinct !DILexicalBlock(scope: !267, file: !3, line: 98, column: 9)
!277 = !DILocation(line: 98, column: 14, scope: !276)
!278 = !DILocation(line: 98, column: 25, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !3, line: 98, column: 9)
!280 = !DILocation(line: 98, column: 30, scope: !279)
!281 = !DILocation(line: 98, column: 9, scope: !276)
!282 = !DILocalVariable(name: "l_28", scope: !283, file: !3, line: 100, type: !34)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 99, column: 9)
!284 = !DILocation(line: 100, column: 28, scope: !283)
!285 = !DILocalVariable(name: "l_27", scope: !283, file: !3, line: 101, type: !286)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 64, elements: !288)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!288 = !{!170}
!289 = !DILocation(line: 101, column: 29, scope: !283)
!290 = !DILocalVariable(name: "l_38", scope: !283, file: !3, line: 102, type: !31)
!291 = !DILocation(line: 102, column: 23, scope: !283)
!292 = !DILocalVariable(name: "i", scope: !283, file: !3, line: 103, type: !22)
!293 = !DILocation(line: 103, column: 17, scope: !283)
!294 = !DILocation(line: 104, column: 20, scope: !295)
!295 = distinct !DILexicalBlock(scope: !283, file: !3, line: 104, column: 13)
!296 = !DILocation(line: 104, column: 18, scope: !295)
!297 = !DILocation(line: 104, column: 25, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !3, line: 104, column: 13)
!299 = !DILocation(line: 104, column: 27, scope: !298)
!300 = !DILocation(line: 104, column: 13, scope: !295)
!301 = !DILocation(line: 105, column: 22, scope: !298)
!302 = !DILocation(line: 105, column: 17, scope: !298)
!303 = !DILocation(line: 105, column: 25, scope: !298)
!304 = !DILocation(line: 104, column: 33, scope: !298)
!305 = !DILocation(line: 104, column: 13, scope: !298)
!306 = distinct !{!306, !300, !307, !115}
!307 = !DILocation(line: 105, column: 28, scope: !295)
!308 = !DILocation(line: 106, column: 21, scope: !283)
!309 = !DILocation(line: 106, column: 72, scope: !283)
!310 = !DILocation(line: 106, column: 94, scope: !283)
!311 = !DILocation(line: 106, column: 93, scope: !283)
!312 = !DILocation(line: 106, column: 90, scope: !283)
!313 = !DILocation(line: 106, column: 102, scope: !283)
!314 = !DILocation(line: 106, column: 80, scope: !283)
!315 = !DILocation(line: 106, column: 117, scope: !283)
!316 = !DILocation(line: 106, column: 154, scope: !283)
!317 = !DILocation(line: 106, column: 151, scope: !283)
!318 = !DILocation(line: 106, column: 41, scope: !283)
!319 = !DILocation(line: 106, column: 160, scope: !283)
!320 = !DILocation(line: 106, column: 211, scope: !283)
!321 = !DILocation(line: 106, column: 203, scope: !283)
!322 = !DILocation(line: 106, column: 201, scope: !283)
!323 = !DILocation(line: 106, column: 217, scope: !283)
!324 = !DILocation(line: 106, column: 25, scope: !283)
!325 = !DILocation(line: 106, column: 18, scope: !283)
!326 = !DILocation(line: 107, column: 40, scope: !283)
!327 = !DILocation(line: 107, column: 38, scope: !283)
!328 = !DILocation(line: 107, column: 49, scope: !283)
!329 = !DILocation(line: 107, column: 46, scope: !283)
!330 = !DILocation(line: 107, column: 22, scope: !283)
!331 = !DILocation(line: 107, column: 55, scope: !283)
!332 = !DILocation(line: 107, column: 18, scope: !283)
!333 = !DILocation(line: 108, column: 9, scope: !283)
!334 = !DILocation(line: 98, column: 42, scope: !279)
!335 = !DILocation(line: 98, column: 9, scope: !279)
!336 = distinct !{!336, !281, !337, !115}
!337 = !DILocation(line: 108, column: 9, scope: !276)
!338 = !DILocation(line: 109, column: 36, scope: !267)
!339 = !DILocation(line: 109, column: 26, scope: !267)
!340 = !DILocation(line: 109, column: 68, scope: !267)
!341 = !DILocation(line: 109, column: 59, scope: !267)
!342 = !DILocation(line: 109, column: 42, scope: !267)
!343 = !DILocation(line: 109, column: 40, scope: !267)
!344 = !DILocation(line: 109, column: 16, scope: !267)
!345 = !DILocation(line: 109, column: 79, scope: !267)
!346 = !DILocation(line: 109, column: 13, scope: !267)
!347 = !DILocation(line: 110, column: 5, scope: !267)
!348 = !DILocation(line: 92, column: 39, scope: !263)
!349 = !DILocation(line: 92, column: 5, scope: !263)
!350 = distinct !{!350, !265, !351, !115}
!351 = !DILocation(line: 110, column: 5, scope: !260)
!352 = !DILocation(line: 111, column: 12, scope: !231)
!353 = !DILocation(line: 111, column: 5, scope: !231)
