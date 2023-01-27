; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_2 = global i32 -1901294829, align 4, !dbg !17
@g_3 = global i32 -1, align 4, !dbg !22
@g_4 = global i32 1, align 4, !dbg !24
@g_5 = global i32 -1087046240, align 4, !dbg !26
@g_8 = global i32 0, align 4, !dbg !28
@g_24 = global i16 -2591, align 2, !dbg !30
@g_26 = global i64 1, align 8, !dbg !32
@g_29 = global [9 x i32*] [i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_2, i32* @g_2], align 16, !dbg !34
@g_34 = global i32* @g_8, align 8, !dbg !41
@g_33 = global i32** @g_34, align 8, !dbg !44
@g_41 = global i32 -366872074, align 4, !dbg !48
@__const.func_1.l_22 = private unnamed_addr constant [8 x [4 x [8 x i32]]] [[4 x [8 x i32]] [[8 x i32] [i32 -2084472257, i32 -293105514, i32 546982029, i32 -1013146220, i32 -524142718, i32 -1406017220, i32 2028829755, i32 121457734], [8 x i32] [i32 -1, i32 -2000333294, i32 485507415, i32 1846827508, i32 1301959909, i32 -1, i32 -323812689, i32 -1], [8 x i32] [i32 919650590, i32 -1406017220, i32 1, i32 -2084472257, i32 -2000333294, i32 121457734, i32 1, i32 521010116], [8 x i32] [i32 -293105514, i32 0, i32 6, i32 -6, i32 587945663, i32 -6, i32 6, i32 0]], [4 x [8 x i32]] [[8 x i32] [i32 -1364413739, i32 0, i32 -9, i32 -1, i32 1, i32 -9, i32 1290938910, i32 -2000333294], [8 x i32] [i32 -2084472257, i32 1, i32 -9, i32 1961361457, i32 -6, i32 -323812689, i32 1290938910, i32 -2], [8 x i32] [i32 -1364413739, i32 1961361457, i32 -2, i32 -9, i32 -1761800223, i32 0, i32 -5, i32 0], [8 x i32] [i32 -1761800223, i32 0, i32 -5, i32 0, i32 -6, i32 521010116, i32 1, i32 -6]], [4 x [8 x i32]] [[8 x i32] [i32 -1, i32 -241768760, i32 -1761800223, i32 -1, i32 -7, i32 -1, i32 -2000333294, i32 -1579321037], [8 x i32] [i32 -1406017220, i32 -323812689, i32 1, i32 -524142718, i32 7, i32 121457734, i32 825415299, i32 825415299], [8 x i32] [i32 1290938910, i32 -1, i32 -1, i32 -1, i32 -1, i32 1290938910, i32 121457734, i32 -1], [8 x i32] [i32 -6, i32 -2084472257, i32 587945663, i32 -1, i32 -1406017220, i32 -1579321037, i32 -1, i32 -7]], [4 x [8 x i32]] [[8 x i32] [i32 -1, i32 121457734, i32 -4, i32 -1, i32 1, i32 -2, i32 1243715849, i32 -1], [8 x i32] [i32 -323812689, i32 1, i32 -1, i32 -1, i32 -4, i32 207861890, i32 2028829755, i32 825415299], [8 x i32] [i32 6, i32 0, i32 0, i32 -524142718, i32 -1, i32 1, i32 -6, i32 -1579321037], [8 x i32] [i32 -1013146220, i32 1, i32 1301959909, i32 -1, i32 -1364413739, i32 -6, i32 -2084472257, i32 -6]], [4 x [8 x i32]] [[8 x i32] [i32 919650590, i32 4, i32 485507415, i32 0, i32 0, i32 -1, i32 0, i32 0], [8 x i32] [i32 0, i32 -1364413739, i32 0, i32 -9, i32 -1, i32 1, i32 7, i32 -2], [8 x i32] [i32 587945663, i32 -7, i32 -293105514, i32 1961361457, i32 546982029, i32 -241768760, i32 -1, i32 -2000333294], [8 x i32] [i32 587945663, i32 1243715849, i32 0, i32 1846827508, i32 -1, i32 -6, i32 -9, i32 -524142718]], [4 x [8 x i32]] [[8 x i32] [i32 0, i32 1301959909, i32 -323812689, i32 919650590, i32 0, i32 546982029, i32 207861890, i32 -241768760], [8 x i32] [i32 919650590, i32 0, i32 -1, i32 1, i32 -1364413739, i32 1, i32 -1761800223, i32 1961361457], [8 x i32] [i32 -1013146220, i32 -8, i32 546982029, i32 -1579321037, i32 -1, i32 -293105514, i32 0, i32 -1364413739], [8 x i32] [i32 6, i32 1846827508, i32 -2084472257, i32 -4, i32 -4, i32 -2084472257, i32 1846827508, i32 6]], [4 x [8 x i32]] [[8 x i32] [i32 -323812689, i32 -1, i32 0, i32 -1406017220, i32 1, i32 -5, i32 -1, i32 0], [8 x i32] [i32 -1, i32 825415299, i32 -524142718, i32 -241768760, i32 -1406017220, i32 -5, i32 1, i32 1290938910], [8 x i32] [i32 -6, i32 -1, i32 -765033391, i32 2028829755, i32 -1, i32 -2084472257, i32 -1, i32 -8], [8 x i32] [i32 1290938910, i32 1846827508, i32 1, i32 1, i32 7, i32 -293105514, i32 -8, i32 -1761800223]], [4 x [8 x i32]] [[8 x i32] [i32 -1406017220, i32 -8, i32 7, i32 207861890, i32 -1, i32 -765033391, i32 -1, i32 0], [8 x i32] [i32 -6, i32 -6, i32 1301959909, i32 1961361457, i32 -1, i32 -1, i32 -1406017220, i32 -1], [8 x i32] [i32 -293105514, i32 -1013146220, i32 0, i32 -1013146220, i32 -293105514, i32 -1, i32 -765033391, i32 -1761800223], [8 x i32] [i32 -6, i32 -2084472257, i32 -6, i32 -1364413739, i32 -1, i32 1301959909, i32 1, i32 -1013146220]]], align 16
@__const.func_1.l_23 = private unnamed_addr constant [10 x [8 x [3 x i16*]]] [[8 x [3 x i16*]] [[3 x i16*] [i16* null, i16* @g_24, i16* null], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* null, i16* null], [3 x i16*] [i16* @g_24, i16* null, i16* @g_24], [3 x i16*] [i16* @g_24, i16* null, i16* @g_24], [3 x i16*] [i16* @g_24, i16* null, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24]], [8 x [3 x i16*]] [[3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* null, i16* @g_24, i16* null], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* null, i16* @g_24], [3 x i16*] [i16* null, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* null, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* null]], [8 x [3 x i16*]] [[3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* null, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* null], [3 x i16*] [i16* @g_24, i16* @g_24, i16* null], [3 x i16*] zeroinitializer, [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* null, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24]], [8 x [3 x i16*]] [[3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* null, i16* null, i16* @g_24], [3 x i16*] [i16* @g_24, i16* null, i16* @g_24], [3 x i16*] [i16* null, i16* null, i16* @g_24], [3 x i16*] [i16* @g_24, i16* null, i16* @g_24]], [8 x [3 x i16*]] [[3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* null, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* null, i16* @g_24], [3 x i16*] zeroinitializer, [3 x i16*] [i16* @g_24, i16* @g_24, i16* null]], [8 x [3 x i16*]] [[3 x i16*] [i16* null, i16* @g_24, i16* null], [3 x i16*] [i16* null, i16* @g_24, i16* @g_24], [3 x i16*] [i16* null, i16* null, i16* @g_24], [3 x i16*] [i16* null, i16* @g_24, i16* null], [3 x i16*] [i16* null, i16* null, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* null, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24]], [8 x [3 x i16*]] [[3 x i16*] [i16* null, i16* @g_24, i16* null], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* null, i16* @g_24, i16* null], [3 x i16*] [i16* @g_24, i16* null, i16* @g_24]], [8 x [3 x i16*]] [[3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* null, i16* @g_24], [3 x i16*] [i16* null, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* null, i16* @g_24, i16* null], [3 x i16*] [i16* null, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* null], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24]], [8 x [3 x i16*]] [[3 x i16*] [i16* @g_24, i16* @g_24, i16* null], [3 x i16*] [i16* @g_24, i16* @g_24, i16* null], [3 x i16*] [i16* @g_24, i16* @g_24, i16* null], [3 x i16*] [i16* @g_24, i16* @g_24, i16* null], [3 x i16*] [i16* @g_24, i16* @g_24, i16* null], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* null, i16* null], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24]], [8 x [3 x i16*]] [[3 x i16*] [i16* null, i16* @g_24, i16* null], [3 x i16*] [i16* null, i16* @g_24, i16* @g_24], [3 x i16*] [i16* null, i16* null, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* null, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24], [3 x i16*] [i16* @g_24, i16* @g_24, i16* null], [3 x i16*] [i16* @g_24, i16* @g_24, i16* @g_24]]], align 16

; Function Attrs: noinline nounwind ssp uwtable
define signext i8 @func_1() #0 !dbg !60 {
entry:
  %l_39 = alloca i64, align 8
  %l_40 = alloca i32*, align 8
  %l_15 = alloca i32*, align 8
  %l_22 = alloca [8 x [4 x [8 x i32]]], align 16
  %l_23 = alloca [10 x [8 x [3 x i16*]]], align 16
  %l_25 = alloca i64*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i64* %l_39, metadata !64, metadata !DIExpression()), !dbg !66
  store i64 4854783486782308943, i64* %l_39, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i32** %l_40, metadata !67, metadata !DIExpression()), !dbg !69
  store i32* @g_41, i32** %l_40, align 8, !dbg !69
  store i32 28, i32* @g_5, align 4, !dbg !70
  br label %for.cond, !dbg !72

for.cond:                                         ; preds = %for.inc31, %entry
  %0 = load i32, i32* @g_5, align 4, !dbg !73
  %cmp = icmp sge i32 %0, -26, !dbg !75
  br i1 %cmp, label %for.body, label %for.end33, !dbg !76

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32** %l_15, metadata !77, metadata !DIExpression()), !dbg !79
  store i32* @g_8, i32** %l_15, align 8, !dbg !79
  store i32 14, i32* @g_8, align 4, !dbg !80
  br label %for.cond1, !dbg !82

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* @g_8, align 4, !dbg !83
  %cmp2 = icmp sge i32 %1, 14, !dbg !85
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !86

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata [8 x [4 x [8 x i32]]]* %l_22, metadata !87, metadata !DIExpression()), !dbg !93
  %2 = bitcast [8 x [4 x [8 x i32]]]* %l_22 to i8*, !dbg !93
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([8 x [4 x [8 x i32]]]* @__const.func_1.l_22 to i8*), i64 1024, i1 false), !dbg !93
  call void @llvm.dbg.declare(metadata [10 x [8 x [3 x i16*]]]* %l_23, metadata !94, metadata !DIExpression()), !dbg !100
  %3 = bitcast [10 x [8 x [3 x i16*]]]* %l_23 to i8*, !dbg !100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([10 x [8 x [3 x i16*]]]* @__const.func_1.l_23 to i8*), i64 1920, i1 false), !dbg !100
  call void @llvm.dbg.declare(metadata i64** %l_25, metadata !101, metadata !DIExpression()), !dbg !103
  store i64* @g_26, i64** %l_25, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %j, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %k, metadata !108, metadata !DIExpression()), !dbg !109
  %4 = load volatile i32, i32* @g_2, align 4, !dbg !110
  %tobool = icmp ne i32 %4, 0, !dbg !110
  br i1 %tobool, label %if.then, label %if.end, !dbg !112

if.then:                                          ; preds = %for.body3
  br label %for.end, !dbg !113

if.end:                                           ; preds = %for.body3
  %5 = load i32*, i32** %l_15, align 8, !dbg !114
  %cmp4 = icmp ne i32* %5, null, !dbg !115
  br i1 %cmp4, label %land.rhs, label %land.end28, !dbg !116

land.rhs:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds [8 x [4 x [8 x i32]]], [8 x [4 x [8 x i32]]]* %l_22, i64 0, i64 3, !dbg !117
  %arrayidx5 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* %arrayidx, i64 0, i64 1, !dbg !117
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx5, i64 0, i64 6, !dbg !117
  %6 = load i32, i32* %arrayidx6, align 8, !dbg !117
  %conv = sext i32 %6 to i64, !dbg !117
  %and = and i64 8567448820319352117, %conv, !dbg !118
  %tobool7 = icmp ne i64 %and, 0, !dbg !118
  br i1 %tobool7, label %land.rhs8, label %land.end, !dbg !119

land.rhs8:                                        ; preds = %land.rhs
  %7 = load volatile i32, i32* @g_2, align 4, !dbg !120
  %tobool9 = icmp ne i32 %7, 0, !dbg !119
  br label %land.end

land.end:                                         ; preds = %land.rhs8, %land.rhs
  %8 = phi i1 [ false, %land.rhs ], [ %tobool9, %land.rhs8 ], !dbg !121
  %land.ext = zext i1 %8 to i32, !dbg !119
  %conv10 = sext i32 %land.ext to i64, !dbg !122
  %cmp11 = icmp ugt i64 %conv10, -2197205645735507642, !dbg !123
  %conv12 = zext i1 %cmp11 to i32, !dbg !123
  %conv13 = trunc i32 %conv12 to i16, !dbg !124
  store i16 %conv13, i16* @g_24, align 2, !dbg !125
  %conv14 = zext i16 %conv13 to i32, !dbg !126
  %arrayidx15 = getelementptr inbounds [8 x [4 x [8 x i32]]], [8 x [4 x [8 x i32]]]* %l_22, i64 0, i64 3, !dbg !127
  %arrayidx16 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* %arrayidx15, i64 0, i64 1, !dbg !127
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx16, i64 0, i64 5, !dbg !127
  %9 = load i32, i32* %arrayidx17, align 4, !dbg !127
  %conv18 = trunc i32 %9 to i16, !dbg !128
  %conv19 = zext i16 %conv18 to i32, !dbg !128
  %mul = mul nsw i32 %conv14, %conv19, !dbg !129
  %conv20 = sext i32 %mul to i64, !dbg !130
  %arrayidx21 = getelementptr inbounds [8 x [4 x [8 x i32]]], [8 x [4 x [8 x i32]]]* %l_22, i64 0, i64 4, !dbg !131
  %arrayidx22 = getelementptr inbounds [4 x [8 x i32]], [4 x [8 x i32]]* %arrayidx21, i64 0, i64 1, !dbg !131
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx22, i64 0, i64 2, !dbg !131
  %10 = load i32, i32* %arrayidx23, align 8, !dbg !131
  %conv24 = sext i32 %10 to i64, !dbg !132
  %rem = srem i64 %conv20, %conv24, !dbg !133
  %conv25 = trunc i64 %rem to i8, !dbg !134
  %conv26 = sext i8 %conv25 to i32, !dbg !134
  %shr = ashr i32 %conv26, 7, !dbg !135
  %tobool27 = icmp ne i32 %shr, 0, !dbg !116
  br label %land.end28

land.end28:                                       ; preds = %land.end, %if.end
  %11 = phi i1 [ false, %if.end ], [ %tobool27, %land.end ], !dbg !121
  %land.ext29 = zext i1 %11 to i32, !dbg !116
  %conv30 = sext i32 %land.ext29 to i64, !dbg !136
  %12 = load i64*, i64** %l_25, align 8, !dbg !137
  store i64 %conv30, i64* %12, align 8, !dbg !138
  %sub = sub nsw i64 %conv30, 6655137997100125931, !dbg !139
  %call = call i32* @func_11(i64 %sub), !dbg !140
  %13 = load volatile i32**, i32*** @g_33, align 8, !dbg !141
  store i32* %call, i32** %13, align 8, !dbg !142
  br label %for.inc, !dbg !143

for.inc:                                          ; preds = %land.end28
  %14 = load i32, i32* @g_8, align 4, !dbg !144
  %add = add nsw i32 %14, 4, !dbg !144
  store i32 %add, i32* @g_8, align 4, !dbg !144
  br label %for.cond1, !dbg !145, !llvm.loop !146

for.end:                                          ; preds = %if.then, %for.cond1
  br label %for.inc31, !dbg !149

for.inc31:                                        ; preds = %for.end
  %15 = load i32, i32* @g_5, align 4, !dbg !150
  %sub32 = sub nsw i32 %15, 1, !dbg !150
  store i32 %sub32, i32* @g_5, align 4, !dbg !150
  br label %for.cond, !dbg !151, !llvm.loop !152

for.end33:                                        ; preds = %for.cond
  %16 = load volatile i32, i32* @g_4, align 4, !dbg !154
  %tobool34 = icmp ne i32 %16, 0, !dbg !154
  br i1 %tobool34, label %lor.end, label %lor.rhs, !dbg !155

lor.rhs:                                          ; preds = %for.end33
  %17 = load i32*, i32** %l_40, align 8, !dbg !156
  store i32 0, i32* %17, align 4, !dbg !157
  br label %lor.end, !dbg !155

lor.end:                                          ; preds = %lor.rhs, %for.end33
  %18 = phi i1 [ true, %for.end33 ], [ false, %lor.rhs ]
  %lor.ext = zext i1 %18 to i32, !dbg !155
  %19 = load i32*, i32** @g_34, align 8, !dbg !158
  store i32 %lor.ext, i32* %19, align 4, !dbg !159
  ret i8 79, !dbg !160
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32* @func_11(i64 %p_12) #0 !dbg !161 {
entry:
  %p_12.addr = alloca i64, align 8
  %l_30 = alloca i32*, align 8
  %l_32 = alloca i32*, align 8
  store i64 %p_12, i64* %p_12.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %p_12.addr, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i32** %l_30, metadata !166, metadata !DIExpression()), !dbg !167
  store volatile i32* @g_3, i32** %l_30, align 8, !dbg !167
  call void @llvm.dbg.declare(metadata i32** %l_32, metadata !168, metadata !DIExpression()), !dbg !169
  store i32* @g_5, i32** %l_32, align 8, !dbg !169
  br label %lbl_31, !dbg !170

lbl_31:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.label(metadata !171), !dbg !172
  store i64 -30, i64* @g_26, align 8, !dbg !173
  br label %for.cond, !dbg !175

for.cond:                                         ; preds = %for.inc, %lbl_31
  %0 = load i64, i64* @g_26, align 8, !dbg !176
  %cmp = icmp eq i64 %0, -28, !dbg !178
  br i1 %cmp, label %for.body, label %for.end, !dbg !179

for.body:                                         ; preds = %for.cond
  %1 = load volatile i32*, i32** getelementptr inbounds ([9 x i32*], [9 x i32*]* @g_29, i64 0, i64 3), align 8, !dbg !180
  store volatile i32* %1, i32** %l_30, align 8, !dbg !182
  %2 = load i64, i64* @g_26, align 8, !dbg !183
  %tobool = icmp ne i64 %2, 0, !dbg !183
  br i1 %tobool, label %if.then, label %if.end, !dbg !185

if.then:                                          ; preds = %for.body
  br label %lbl_31, !dbg !186

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %if.end
  %3 = load i64, i64* @g_26, align 8, !dbg !188
  %add = add nsw i64 %3, 5, !dbg !188
  store i64 %add, i64* @g_26, align 8, !dbg !188
  br label %for.cond, !dbg !189, !llvm.loop !190

for.end:                                          ; preds = %for.cond
  %4 = load i32*, i32** %l_32, align 8, !dbg !192
  ret i32* %4, !dbg !193
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !194 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !199, metadata !DIExpression()), !dbg !200
  store i32 0, i32* %print_hash_value, align 4, !dbg !200
  %call = call signext i8 @func_1(), !dbg !201
  %0 = load volatile i32, i32* @g_2, align 4, !dbg !202
  %conv = sext i32 %0 to i64, !dbg !202
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !203
  %1 = load volatile i32, i32* @g_3, align 4, !dbg !204
  %conv1 = sext i32 %1 to i64, !dbg !204
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !205
  %2 = load volatile i32, i32* @g_4, align 4, !dbg !206
  %conv2 = sext i32 %2 to i64, !dbg !206
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !207
  %3 = load i32, i32* @g_5, align 4, !dbg !208
  %conv3 = sext i32 %3 to i64, !dbg !208
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !209
  %4 = load i32, i32* @g_8, align 4, !dbg !210
  %conv4 = sext i32 %4 to i64, !dbg !210
  store volatile i64 %conv4, i64* @csmith_sink_, align 8, !dbg !211
  %5 = load i16, i16* @g_24, align 2, !dbg !212
  %conv5 = zext i16 %5 to i64, !dbg !212
  store volatile i64 %conv5, i64* @csmith_sink_, align 8, !dbg !213
  %6 = load i64, i64* @g_26, align 8, !dbg !214
  store volatile i64 %6, i64* @csmith_sink_, align 8, !dbg !215
  %7 = load i32, i32* @g_41, align 4, !dbg !216
  %conv6 = zext i32 %7 to i64, !dbg !216
  store volatile i64 %conv6, i64* @csmith_sink_, align 8, !dbg !217
  ret i32 0, !dbg !218
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !50, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !16, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/5")
!4 = !{}
!5 = !{!6, !9, !10, !12, !14}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !11)
!11 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !13)
!13 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !15)
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!0, !17, !22, !24, !26, !28, !30, !32, !34, !41, !44, !48}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "g_2", scope: !2, file: !3, line: 18, type: !19, isLocal: false, isDefinition: true)
!19 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !21)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "g_3", scope: !2, file: !3, line: 19, type: !19, isLocal: false, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "g_4", scope: !2, file: !3, line: 20, type: !19, isLocal: false, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "g_5", scope: !2, file: !3, line: 21, type: !20, isLocal: false, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "g_8", scope: !2, file: !3, line: 22, type: !20, isLocal: false, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "g_24", scope: !2, file: !3, line: 23, type: !12, isLocal: false, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "g_26", scope: !2, file: !3, line: 24, type: !6, isLocal: false, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "g_29", scope: !2, file: !3, line: 25, type: !36, isLocal: false, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 576, elements: !39)
!37 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!39 = !{!40}
!40 = !DISubrange(count: 9)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "g_34", scope: !2, file: !3, line: 26, type: !43, isLocal: false, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "g_33", scope: !2, file: !3, line: 27, type: !46, isLocal: false, isDefinition: true)
!46 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "g_41", scope: !2, file: !3, line: 28, type: !14, isLocal: false, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !52)
!52 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !{i32 7, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = !{i32 7, !"PIC Level", i32 2}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!60 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 42, type: !61, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!61 = !DISubroutineType(types: !62)
!62 = !{!63}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!64 = !DILocalVariable(name: "l_39", scope: !60, file: !3, line: 44, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!66 = !DILocation(line: 44, column: 20, scope: !60)
!67 = !DILocalVariable(name: "l_40", scope: !60, file: !3, line: 45, type: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!69 = !DILocation(line: 45, column: 15, scope: !60)
!70 = !DILocation(line: 46, column: 14, scope: !71)
!71 = distinct !DILexicalBlock(scope: !60, file: !3, line: 46, column: 5)
!72 = !DILocation(line: 46, column: 10, scope: !71)
!73 = !DILocation(line: 46, column: 21, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !3, line: 46, column: 5)
!75 = !DILocation(line: 46, column: 25, scope: !74)
!76 = !DILocation(line: 46, column: 5, scope: !71)
!77 = !DILocalVariable(name: "l_15", scope: !78, file: !3, line: 48, type: !43)
!78 = distinct !DILexicalBlock(scope: !74, file: !3, line: 47, column: 5)
!79 = !DILocation(line: 48, column: 18, scope: !78)
!80 = !DILocation(line: 49, column: 18, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !3, line: 49, column: 9)
!82 = !DILocation(line: 49, column: 14, scope: !81)
!83 = !DILocation(line: 49, column: 25, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !3, line: 49, column: 9)
!85 = !DILocation(line: 49, column: 29, scope: !84)
!86 = !DILocation(line: 49, column: 9, scope: !81)
!87 = !DILocalVariable(name: "l_22", scope: !88, file: !3, line: 51, type: !89)
!88 = distinct !DILexicalBlock(scope: !84, file: !3, line: 50, column: 9)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8192, elements: !90)
!90 = !{!91, !92, !91}
!91 = !DISubrange(count: 8)
!92 = !DISubrange(count: 4)
!93 = !DILocation(line: 51, column: 21, scope: !88)
!94 = !DILocalVariable(name: "l_23", scope: !88, file: !3, line: 52, type: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 15360, elements: !97)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!97 = !{!98, !91, !99}
!98 = !DISubrange(count: 10)
!99 = !DISubrange(count: 3)
!100 = !DILocation(line: 52, column: 23, scope: !88)
!101 = !DILocalVariable(name: "l_25", scope: !88, file: !3, line: 53, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!103 = !DILocation(line: 53, column: 22, scope: !88)
!104 = !DILocalVariable(name: "i", scope: !88, file: !3, line: 54, type: !21)
!105 = !DILocation(line: 54, column: 17, scope: !88)
!106 = !DILocalVariable(name: "j", scope: !88, file: !3, line: 54, type: !21)
!107 = !DILocation(line: 54, column: 20, scope: !88)
!108 = !DILocalVariable(name: "k", scope: !88, file: !3, line: 54, type: !21)
!109 = !DILocation(line: 54, column: 23, scope: !88)
!110 = !DILocation(line: 55, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !88, file: !3, line: 55, column: 17)
!112 = !DILocation(line: 55, column: 17, scope: !88)
!113 = !DILocation(line: 56, column: 17, scope: !111)
!114 = !DILocation(line: 57, column: 54, scope: !88)
!115 = !DILocation(line: 57, column: 59, scope: !88)
!116 = !DILocation(line: 57, column: 72, scope: !88)
!117 = !DILocation(line: 57, column: 139, scope: !88)
!118 = !DILocation(line: 57, column: 137, scope: !88)
!119 = !DILocation(line: 57, column: 154, scope: !88)
!120 = !DILocation(line: 57, column: 157, scope: !88)
!121 = !DILocation(line: 0, scope: !88)
!122 = !DILocation(line: 57, column: 114, scope: !88)
!123 = !DILocation(line: 57, column: 162, scope: !88)
!124 = !DILocation(line: 57, column: 113, scope: !88)
!125 = !DILocation(line: 57, column: 111, scope: !88)
!126 = !DILocation(line: 57, column: 95, scope: !88)
!127 = !DILocation(line: 57, column: 199, scope: !88)
!128 = !DILocation(line: 57, column: 189, scope: !88)
!129 = !DILocation(line: 57, column: 187, scope: !88)
!130 = !DILocation(line: 57, column: 85, scope: !88)
!131 = !DILocation(line: 57, column: 225, scope: !88)
!132 = !DILocation(line: 57, column: 216, scope: !88)
!133 = !DILocation(line: 57, column: 214, scope: !88)
!134 = !DILocation(line: 57, column: 76, scope: !88)
!135 = !DILocation(line: 57, column: 240, scope: !88)
!136 = !DILocation(line: 57, column: 52, scope: !88)
!137 = !DILocation(line: 57, column: 44, scope: !88)
!138 = !DILocation(line: 57, column: 50, scope: !88)
!139 = !DILocation(line: 57, column: 256, scope: !88)
!140 = !DILocation(line: 57, column: 23, scope: !88)
!141 = !DILocation(line: 57, column: 15, scope: !88)
!142 = !DILocation(line: 57, column: 21, scope: !88)
!143 = !DILocation(line: 58, column: 9, scope: !88)
!144 = !DILocation(line: 49, column: 41, scope: !84)
!145 = !DILocation(line: 49, column: 9, scope: !84)
!146 = distinct !{!146, !86, !147, !148}
!147 = !DILocation(line: 58, column: 9, scope: !81)
!148 = !{!"llvm.loop.mustprogress"}
!149 = !DILocation(line: 59, column: 5, scope: !78)
!150 = !DILocation(line: 46, column: 40, scope: !74)
!151 = !DILocation(line: 46, column: 5, scope: !74)
!152 = distinct !{!152, !76, !153, !148}
!153 = !DILocation(line: 59, column: 5, scope: !71)
!154 = !DILocation(line: 60, column: 16, scope: !60)
!155 = !DILocation(line: 60, column: 20, scope: !60)
!156 = !DILocation(line: 60, column: 37, scope: !60)
!157 = !DILocation(line: 60, column: 43, scope: !60)
!158 = !DILocation(line: 60, column: 7, scope: !60)
!159 = !DILocation(line: 60, column: 13, scope: !60)
!160 = !DILocation(line: 61, column: 5, scope: !60)
!161 = distinct !DISubprogram(name: "func_11", scope: !3, file: !3, line: 70, type: !162, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!162 = !DISubroutineType(types: !163)
!163 = !{!43, !6}
!164 = !DILocalVariable(name: "p_12", arg: 1, scope: !161, file: !3, line: 70, type: !6)
!165 = !DILocation(line: 70, column: 28, scope: !161)
!166 = !DILocalVariable(name: "l_30", scope: !161, file: !3, line: 72, type: !37)
!167 = !DILocation(line: 72, column: 33, scope: !161)
!168 = !DILocalVariable(name: "l_32", scope: !161, file: !3, line: 73, type: !43)
!169 = !DILocation(line: 73, column: 14, scope: !161)
!170 = !DILocation(line: 73, column: 5, scope: !161)
!171 = !DILabel(scope: !161, name: "lbl_31", file: !3, line: 74)
!172 = !DILocation(line: 74, column: 1, scope: !161)
!173 = !DILocation(line: 75, column: 15, scope: !174)
!174 = distinct !DILexicalBlock(scope: !161, file: !3, line: 75, column: 5)
!175 = !DILocation(line: 75, column: 10, scope: !174)
!176 = !DILocation(line: 75, column: 25, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !3, line: 75, column: 5)
!178 = !DILocation(line: 75, column: 30, scope: !177)
!179 = !DILocation(line: 75, column: 5, scope: !174)
!180 = !DILocation(line: 77, column: 16, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !3, line: 76, column: 5)
!182 = !DILocation(line: 77, column: 14, scope: !181)
!183 = !DILocation(line: 78, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !3, line: 78, column: 13)
!185 = !DILocation(line: 78, column: 13, scope: !181)
!186 = !DILocation(line: 79, column: 13, scope: !184)
!187 = !DILocation(line: 80, column: 5, scope: !181)
!188 = !DILocation(line: 75, column: 46, scope: !177)
!189 = !DILocation(line: 75, column: 5, scope: !177)
!190 = distinct !{!190, !179, !191, !148}
!191 = !DILocation(line: 80, column: 5, scope: !174)
!192 = !DILocation(line: 81, column: 12, scope: !161)
!193 = !DILocation(line: 81, column: 5, scope: !161)
!194 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 88, type: !195, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!195 = !DISubroutineType(types: !196)
!196 = !{!21}
!197 = !DILocalVariable(name: "i", scope: !194, file: !3, line: 90, type: !21)
!198 = !DILocation(line: 90, column: 9, scope: !194)
!199 = !DILocalVariable(name: "print_hash_value", scope: !194, file: !3, line: 91, type: !21)
!200 = !DILocation(line: 91, column: 9, scope: !194)
!201 = !DILocation(line: 93, column: 5, scope: !194)
!202 = !DILocation(line: 94, column: 20, scope: !194)
!203 = !DILocation(line: 94, column: 18, scope: !194)
!204 = !DILocation(line: 95, column: 20, scope: !194)
!205 = !DILocation(line: 95, column: 18, scope: !194)
!206 = !DILocation(line: 96, column: 20, scope: !194)
!207 = !DILocation(line: 96, column: 18, scope: !194)
!208 = !DILocation(line: 97, column: 20, scope: !194)
!209 = !DILocation(line: 97, column: 18, scope: !194)
!210 = !DILocation(line: 98, column: 20, scope: !194)
!211 = !DILocation(line: 98, column: 18, scope: !194)
!212 = !DILocation(line: 99, column: 20, scope: !194)
!213 = !DILocation(line: 99, column: 18, scope: !194)
!214 = !DILocation(line: 100, column: 20, scope: !194)
!215 = !DILocation(line: 100, column: 18, scope: !194)
!216 = !DILocation(line: 101, column: 20, scope: !194)
!217 = !DILocation(line: 101, column: 18, scope: !194)
!218 = !DILocation(line: 103, column: 5, scope: !194)
