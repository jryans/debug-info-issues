; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%union.U2 = type { i32 }

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_6 = global i8 -3, align 1, !dbg !12
@g_15 = global i64 1, align 8, !dbg !16
@g_17 = global i32 1678277265, align 4, !dbg !18
@g_22 = global i16 7, align 2, !dbg !22
@g_25 = global %union.U2 { i32 1101372476 }, align 4, !dbg !26

; Function Attrs: noinline nounwind ssp uwtable
define signext i16 @func_1() #0 !dbg !50 {
entry:
  %l_14 = alloca [1 x [4 x i64*]], align 16
  %l_26 = alloca [1 x i32], align 4
  %l_27 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %coerce = alloca %union.U2, align 4
  call void @llvm.dbg.declare(metadata [1 x [4 x i64*]]* %l_14, metadata !55, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [1 x i32]* %l_26, metadata !62, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32** %l_27, metadata !66, metadata !DIExpression()), !dbg !68
  store i32* @g_17, i32** %l_27, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %i, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %j, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %i, align 4, !dbg !73
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %i, align 4, !dbg !76
  %cmp = icmp slt i32 %0, 1, !dbg !78
  br i1 %cmp, label %for.body, label %for.end8, !dbg !79

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !80
  br label %for.cond1, !dbg !83

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4, !dbg !84
  %cmp2 = icmp slt i32 %1, 4, !dbg !86
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !87

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4, !dbg !88
  %idxprom = sext i32 %2 to i64, !dbg !89
  %arrayidx = getelementptr inbounds [1 x [4 x i64*]], [1 x [4 x i64*]]* %l_14, i64 0, i64 %idxprom, !dbg !89
  %3 = load i32, i32* %j, align 4, !dbg !90
  %idxprom4 = sext i32 %3 to i64, !dbg !89
  %arrayidx5 = getelementptr inbounds [4 x i64*], [4 x i64*]* %arrayidx, i64 0, i64 %idxprom4, !dbg !89
  store i64* @g_15, i64** %arrayidx5, align 8, !dbg !91
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %for.body3
  %4 = load i32, i32* %j, align 4, !dbg !92
  %inc = add nsw i32 %4, 1, !dbg !92
  store i32 %inc, i32* %j, align 4, !dbg !92
  br label %for.cond1, !dbg !93, !llvm.loop !94

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !97

for.inc6:                                         ; preds = %for.end
  %5 = load i32, i32* %i, align 4, !dbg !98
  %inc7 = add nsw i32 %5, 1, !dbg !98
  store i32 %inc7, i32* %i, align 4, !dbg !98
  br label %for.cond, !dbg !99, !llvm.loop !100

for.end8:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !102
  br label %for.cond9, !dbg !104

for.cond9:                                        ; preds = %for.inc14, %for.end8
  %6 = load i32, i32* %i, align 4, !dbg !105
  %cmp10 = icmp slt i32 %6, 1, !dbg !107
  br i1 %cmp10, label %for.body11, label %for.end16, !dbg !108

for.body11:                                       ; preds = %for.cond9
  %7 = load i32, i32* %i, align 4, !dbg !109
  %idxprom12 = sext i32 %7 to i64, !dbg !110
  %arrayidx13 = getelementptr inbounds [1 x i32], [1 x i32]* %l_26, i64 0, i64 %idxprom12, !dbg !110
  store i32 -880701764, i32* %arrayidx13, align 4, !dbg !111
  br label %for.inc14, !dbg !110

for.inc14:                                        ; preds = %for.body11
  %8 = load i32, i32* %i, align 4, !dbg !112
  %inc15 = add nsw i32 %8, 1, !dbg !112
  store i32 %inc15, i32* %i, align 4, !dbg !112
  br label %for.cond9, !dbg !113, !llvm.loop !114

for.end16:                                        ; preds = %for.cond9
  %9 = load i8, i8* @g_6, align 1, !dbg !116
  %conv = sext i8 %9 to i64, !dbg !116
  store i64 1, i64* @g_15, align 8, !dbg !117
  %10 = load i8, i8* @g_6, align 1, !dbg !118
  %conv17 = sext i8 %10 to i32, !dbg !118
  %tobool = icmp ne i32 %conv17, 0, !dbg !118
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !119

lor.rhs:                                          ; preds = %for.end16
  br label %lor.end, !dbg !119

lor.end:                                          ; preds = %lor.rhs, %for.end16
  %11 = phi i1 [ true, %for.end16 ], [ true, %lor.rhs ]
  %lor.ext = zext i1 %11 to i32, !dbg !119
  %conv18 = sext i32 %lor.ext to i64, !dbg !120
  %call = call i32 @func_11(i64 1, i64 %conv18), !dbg !121
  %coerce.dive = getelementptr inbounds %union.U2, %union.U2* %coerce, i32 0, i32 0, !dbg !121
  store i32 %call, i32* %coerce.dive, align 4, !dbg !121
  %arrayidx19 = getelementptr inbounds [1 x i32], [1 x i32]* %l_26, i64 0, i64 0, !dbg !122
  %12 = load i32, i32* %arrayidx19, align 4, !dbg !122
  %13 = load i32, i32* @g_17, align 4, !dbg !123
  %cmp20 = icmp eq i32 %12, %13, !dbg !124
  %conv21 = zext i1 %cmp20 to i32, !dbg !124
  %arrayidx22 = getelementptr inbounds [1 x i32], [1 x i32]* %l_26, i64 0, i64 0, !dbg !125
  %14 = load i32, i32* %arrayidx22, align 4, !dbg !125
  %cmp23 = icmp sge i32 %conv21, %14, !dbg !126
  %conv24 = zext i1 %cmp23 to i32, !dbg !126
  %conv25 = sext i32 %conv24 to i64, !dbg !127
  %arrayidx26 = getelementptr inbounds [1 x i32], [1 x i32]* %l_26, i64 0, i64 0, !dbg !128
  %15 = load i32, i32* %arrayidx26, align 4, !dbg !128
  %conv27 = sext i32 %15 to i64, !dbg !129
  %rem = srem i64 %conv25, %conv27, !dbg !130
  %rem28 = urem i64 %rem, 1, !dbg !131
  %cmp29 = icmp ne i64 %conv, %rem28, !dbg !132
  %conv30 = zext i1 %cmp29 to i32, !dbg !132
  %conv31 = sext i32 %conv30 to i64, !dbg !133
  %and = and i64 %conv31, -5, !dbg !134
  %arrayidx32 = getelementptr inbounds [1 x i32], [1 x i32]* %l_26, i64 0, i64 0, !dbg !135
  %16 = load i32, i32* %arrayidx32, align 4, !dbg !135
  %conv33 = sext i32 %16 to i64, !dbg !136
  %div = udiv i64 %conv33, 1, !dbg !137
  %conv34 = trunc i64 %div to i32, !dbg !138
  %17 = load i32*, i32** %l_27, align 8, !dbg !139
  store i32 %conv34, i32* %17, align 4, !dbg !140
  %18 = load i8, i8* @g_6, align 1, !dbg !141
  %conv35 = sext i8 %18 to i16, !dbg !141
  ret i16 %conv35, !dbg !142
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @func_11(i64 %p_12, i64 %p_13) #0 !dbg !143 {
entry:
  %retval = alloca %union.U2, align 4
  %p_12.addr = alloca i64, align 8
  %p_13.addr = alloca i64, align 8
  %l_16 = alloca i32*, align 8
  %l_18 = alloca i32*, align 8
  %l_19 = alloca i32*, align 8
  %l_20 = alloca i32, align 4
  %l_21 = alloca [1 x [5 x [7 x i32*]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i64 %p_12, i64* %p_12.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %p_12.addr, metadata !146, metadata !DIExpression()), !dbg !147
  store i64 %p_13, i64* %p_13.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %p_13.addr, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i32** %l_16, metadata !150, metadata !DIExpression()), !dbg !151
  store i32* @g_17, i32** %l_16, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata i32** %l_18, metadata !152, metadata !DIExpression()), !dbg !153
  store i32* @g_17, i32** %l_18, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata i32** %l_19, metadata !154, metadata !DIExpression()), !dbg !155
  store i32* null, i32** %l_19, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata i32* %l_20, metadata !156, metadata !DIExpression()), !dbg !157
  store i32 -242292642, i32* %l_20, align 4, !dbg !157
  call void @llvm.dbg.declare(metadata [1 x [5 x [7 x i32*]]]* %l_21, metadata !158, metadata !DIExpression()), !dbg !163
  %arrayinit.begin = getelementptr inbounds [1 x [5 x [7 x i32*]]], [1 x [5 x [7 x i32*]]]* %l_21, i64 0, i64 0, !dbg !164
  %arrayinit.begin1 = getelementptr inbounds [5 x [7 x i32*]], [5 x [7 x i32*]]* %arrayinit.begin, i64 0, i64 0, !dbg !165
  %arrayinit.begin2 = getelementptr inbounds [7 x i32*], [7 x i32*]* %arrayinit.begin1, i64 0, i64 0, !dbg !166
  store i32* %l_20, i32** %arrayinit.begin2, align 8, !dbg !166
  %arrayinit.element = getelementptr inbounds i32*, i32** %arrayinit.begin2, i64 1, !dbg !166
  store i32* %l_20, i32** %arrayinit.element, align 8, !dbg !166
  %arrayinit.element3 = getelementptr inbounds i32*, i32** %arrayinit.element, i64 1, !dbg !166
  store i32* %l_20, i32** %arrayinit.element3, align 8, !dbg !166
  %arrayinit.element4 = getelementptr inbounds i32*, i32** %arrayinit.element3, i64 1, !dbg !166
  store i32* %l_20, i32** %arrayinit.element4, align 8, !dbg !166
  %arrayinit.element5 = getelementptr inbounds i32*, i32** %arrayinit.element4, i64 1, !dbg !166
  store i32* %l_20, i32** %arrayinit.element5, align 8, !dbg !166
  %arrayinit.element6 = getelementptr inbounds i32*, i32** %arrayinit.element5, i64 1, !dbg !166
  store i32* %l_20, i32** %arrayinit.element6, align 8, !dbg !166
  %arrayinit.element7 = getelementptr inbounds i32*, i32** %arrayinit.element6, i64 1, !dbg !166
  store i32* %l_20, i32** %arrayinit.element7, align 8, !dbg !166
  %arrayinit.element8 = getelementptr inbounds [7 x i32*], [7 x i32*]* %arrayinit.begin1, i64 1, !dbg !165
  %arrayinit.begin9 = getelementptr inbounds [7 x i32*], [7 x i32*]* %arrayinit.element8, i64 0, i64 0, !dbg !167
  store i32* null, i32** %arrayinit.begin9, align 8, !dbg !167
  %arrayinit.element10 = getelementptr inbounds i32*, i32** %arrayinit.begin9, i64 1, !dbg !167
  store i32* %l_20, i32** %arrayinit.element10, align 8, !dbg !167
  %arrayinit.element11 = getelementptr inbounds i32*, i32** %arrayinit.element10, i64 1, !dbg !167
  store i32* null, i32** %arrayinit.element11, align 8, !dbg !167
  %arrayinit.element12 = getelementptr inbounds i32*, i32** %arrayinit.element11, i64 1, !dbg !167
  store i32* %l_20, i32** %arrayinit.element12, align 8, !dbg !167
  %arrayinit.element13 = getelementptr inbounds i32*, i32** %arrayinit.element12, i64 1, !dbg !167
  store i32* null, i32** %arrayinit.element13, align 8, !dbg !167
  %arrayinit.element14 = getelementptr inbounds i32*, i32** %arrayinit.element13, i64 1, !dbg !167
  store i32* %l_20, i32** %arrayinit.element14, align 8, !dbg !167
  %arrayinit.element15 = getelementptr inbounds i32*, i32** %arrayinit.element14, i64 1, !dbg !167
  store i32* null, i32** %arrayinit.element15, align 8, !dbg !167
  %arrayinit.element16 = getelementptr inbounds [7 x i32*], [7 x i32*]* %arrayinit.element8, i64 1, !dbg !165
  %arrayinit.begin17 = getelementptr inbounds [7 x i32*], [7 x i32*]* %arrayinit.element16, i64 0, i64 0, !dbg !168
  store i32* %l_20, i32** %arrayinit.begin17, align 8, !dbg !168
  %arrayinit.element18 = getelementptr inbounds i32*, i32** %arrayinit.begin17, i64 1, !dbg !168
  store i32* %l_20, i32** %arrayinit.element18, align 8, !dbg !168
  %arrayinit.element19 = getelementptr inbounds i32*, i32** %arrayinit.element18, i64 1, !dbg !168
  store i32* %l_20, i32** %arrayinit.element19, align 8, !dbg !168
  %arrayinit.element20 = getelementptr inbounds i32*, i32** %arrayinit.element19, i64 1, !dbg !168
  store i32* %l_20, i32** %arrayinit.element20, align 8, !dbg !168
  %arrayinit.element21 = getelementptr inbounds i32*, i32** %arrayinit.element20, i64 1, !dbg !168
  store i32* %l_20, i32** %arrayinit.element21, align 8, !dbg !168
  %arrayinit.element22 = getelementptr inbounds i32*, i32** %arrayinit.element21, i64 1, !dbg !168
  store i32* %l_20, i32** %arrayinit.element22, align 8, !dbg !168
  %arrayinit.element23 = getelementptr inbounds i32*, i32** %arrayinit.element22, i64 1, !dbg !168
  store i32* %l_20, i32** %arrayinit.element23, align 8, !dbg !168
  %arrayinit.element24 = getelementptr inbounds [7 x i32*], [7 x i32*]* %arrayinit.element16, i64 1, !dbg !165
  %arrayinit.begin25 = getelementptr inbounds [7 x i32*], [7 x i32*]* %arrayinit.element24, i64 0, i64 0, !dbg !169
  store i32* null, i32** %arrayinit.begin25, align 8, !dbg !169
  %arrayinit.element26 = getelementptr inbounds i32*, i32** %arrayinit.begin25, i64 1, !dbg !169
  store i32* %l_20, i32** %arrayinit.element26, align 8, !dbg !169
  %arrayinit.element27 = getelementptr inbounds i32*, i32** %arrayinit.element26, i64 1, !dbg !169
  store i32* null, i32** %arrayinit.element27, align 8, !dbg !169
  %arrayinit.element28 = getelementptr inbounds i32*, i32** %arrayinit.element27, i64 1, !dbg !169
  store i32* %l_20, i32** %arrayinit.element28, align 8, !dbg !169
  %arrayinit.element29 = getelementptr inbounds i32*, i32** %arrayinit.element28, i64 1, !dbg !169
  store i32* null, i32** %arrayinit.element29, align 8, !dbg !169
  %arrayinit.element30 = getelementptr inbounds i32*, i32** %arrayinit.element29, i64 1, !dbg !169
  store i32* %l_20, i32** %arrayinit.element30, align 8, !dbg !169
  %arrayinit.element31 = getelementptr inbounds i32*, i32** %arrayinit.element30, i64 1, !dbg !169
  store i32* null, i32** %arrayinit.element31, align 8, !dbg !169
  %arrayinit.element32 = getelementptr inbounds [7 x i32*], [7 x i32*]* %arrayinit.element24, i64 1, !dbg !165
  %arrayinit.begin33 = getelementptr inbounds [7 x i32*], [7 x i32*]* %arrayinit.element32, i64 0, i64 0, !dbg !170
  store i32* %l_20, i32** %arrayinit.begin33, align 8, !dbg !170
  %arrayinit.element34 = getelementptr inbounds i32*, i32** %arrayinit.begin33, i64 1, !dbg !170
  store i32* %l_20, i32** %arrayinit.element34, align 8, !dbg !170
  %arrayinit.element35 = getelementptr inbounds i32*, i32** %arrayinit.element34, i64 1, !dbg !170
  store i32* %l_20, i32** %arrayinit.element35, align 8, !dbg !170
  %arrayinit.element36 = getelementptr inbounds i32*, i32** %arrayinit.element35, i64 1, !dbg !170
  store i32* %l_20, i32** %arrayinit.element36, align 8, !dbg !170
  %arrayinit.element37 = getelementptr inbounds i32*, i32** %arrayinit.element36, i64 1, !dbg !170
  store i32* %l_20, i32** %arrayinit.element37, align 8, !dbg !170
  %arrayinit.element38 = getelementptr inbounds i32*, i32** %arrayinit.element37, i64 1, !dbg !170
  store i32* %l_20, i32** %arrayinit.element38, align 8, !dbg !170
  %arrayinit.element39 = getelementptr inbounds i32*, i32** %arrayinit.element38, i64 1, !dbg !170
  store i32* %l_20, i32** %arrayinit.element39, align 8, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %i, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %j, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %k, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load i16, i16* @g_22, align 2, !dbg !177
  %inc = add i16 %0, 1, !dbg !177
  store i16 %inc, i16* @g_22, align 2, !dbg !177
  %1 = bitcast %union.U2* %retval to i8*, !dbg !178
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast (%union.U2* @g_25 to i8*), i64 4, i1 false), !dbg !178
  %coerce.dive = getelementptr inbounds %union.U2, %union.U2* %retval, i32 0, i32 0, !dbg !179
  %2 = load i32, i32* %coerce.dive, align 4, !dbg !179
  ret i32 %2, !dbg !179
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !180 {
entry:
  %retval = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !183, metadata !DIExpression()), !dbg !184
  store i32 0, i32* %print_hash_value, align 4, !dbg !184
  %call = call signext i16 @func_1(), !dbg !185
  %0 = load i8, i8* @g_6, align 1, !dbg !186
  %conv = sext i8 %0 to i64, !dbg !186
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !187
  %1 = load i64, i64* @g_15, align 8, !dbg !188
  store volatile i64 %1, i64* @csmith_sink_, align 8, !dbg !189
  %2 = load i32, i32* @g_17, align 4, !dbg !190
  %conv1 = sext i32 %2 to i64, !dbg !190
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !191
  %3 = load i16, i16* @g_22, align 2, !dbg !192
  %conv2 = zext i16 %3 to i64, !dbg !192
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !193
  %4 = load i32, i32* getelementptr inbounds (%union.U2, %union.U2* @g_25, i32 0, i32 0), align 4, !dbg !194
  %conv3 = sext i32 %4 to i64, !dbg !195
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !196
  ret i32 0, !dbg !197
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !42, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-16T16:55/1")
!4 = !{}
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !10)
!10 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!11 = !{!0, !12, !16, !18, !22, !26}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "g_6", scope: !2, file: !3, line: 26, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !15)
!15 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "g_15", scope: !2, file: !3, line: 27, type: !9, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "g_17", scope: !2, file: !3, line: 28, type: !20, isLocal: false, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !21)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "g_22", scope: !2, file: !3, line: 29, type: !24, isLocal: false, isDefinition: true)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !25)
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "g_25", scope: !2, file: !3, line: 30, type: !28, isLocal: false, isDefinition: true)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "U2", file: !3, line: 17, size: 32, elements: !29)
!29 = !{!30, !31, !35, !37, !40}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !28, file: !3, line: 18, baseType: !20, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !28, file: !3, line: 19, baseType: !32, size: 8)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !28, file: !3, line: 20, baseType: !36, size: 8)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !28, file: !3, line: 21, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !39)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "f4", scope: !28, file: !3, line: 22, baseType: !41, size: 8)
!41 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!42 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{i32 7, !"PIC Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!50 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 44, type: !51, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!51 = !DISubroutineType(types: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !54)
!54 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!55 = !DILocalVariable(name: "l_14", scope: !50, file: !3, line: 46, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 256, elements: !58)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!58 = !{!59, !60}
!59 = !DISubrange(count: 1)
!60 = !DISubrange(count: 4)
!61 = !DILocation(line: 46, column: 14, scope: !50)
!62 = !DILocalVariable(name: "l_26", scope: !50, file: !3, line: 47, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32, elements: !64)
!64 = !{!59}
!65 = !DILocation(line: 47, column: 13, scope: !50)
!66 = !DILocalVariable(name: "l_27", scope: !50, file: !3, line: 48, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!68 = !DILocation(line: 48, column: 14, scope: !50)
!69 = !DILocalVariable(name: "i", scope: !50, file: !3, line: 49, type: !21)
!70 = !DILocation(line: 49, column: 9, scope: !50)
!71 = !DILocalVariable(name: "j", scope: !50, file: !3, line: 49, type: !21)
!72 = !DILocation(line: 49, column: 12, scope: !50)
!73 = !DILocation(line: 50, column: 12, scope: !74)
!74 = distinct !DILexicalBlock(scope: !50, file: !3, line: 50, column: 5)
!75 = !DILocation(line: 50, column: 10, scope: !74)
!76 = !DILocation(line: 50, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !3, line: 50, column: 5)
!78 = !DILocation(line: 50, column: 19, scope: !77)
!79 = !DILocation(line: 50, column: 5, scope: !74)
!80 = !DILocation(line: 52, column: 16, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !3, line: 52, column: 9)
!82 = distinct !DILexicalBlock(scope: !77, file: !3, line: 51, column: 5)
!83 = !DILocation(line: 52, column: 14, scope: !81)
!84 = !DILocation(line: 52, column: 21, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !3, line: 52, column: 9)
!86 = !DILocation(line: 52, column: 23, scope: !85)
!87 = !DILocation(line: 52, column: 9, scope: !81)
!88 = !DILocation(line: 53, column: 18, scope: !85)
!89 = !DILocation(line: 53, column: 13, scope: !85)
!90 = !DILocation(line: 53, column: 21, scope: !85)
!91 = !DILocation(line: 53, column: 24, scope: !85)
!92 = !DILocation(line: 52, column: 29, scope: !85)
!93 = !DILocation(line: 52, column: 9, scope: !85)
!94 = distinct !{!94, !87, !95, !96}
!95 = !DILocation(line: 53, column: 27, scope: !81)
!96 = !{!"llvm.loop.mustprogress"}
!97 = !DILocation(line: 54, column: 5, scope: !82)
!98 = !DILocation(line: 50, column: 25, scope: !77)
!99 = !DILocation(line: 50, column: 5, scope: !77)
!100 = distinct !{!100, !79, !101, !96}
!101 = !DILocation(line: 54, column: 5, scope: !74)
!102 = !DILocation(line: 55, column: 12, scope: !103)
!103 = distinct !DILexicalBlock(scope: !50, file: !3, line: 55, column: 5)
!104 = !DILocation(line: 55, column: 10, scope: !103)
!105 = !DILocation(line: 55, column: 17, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !3, line: 55, column: 5)
!107 = !DILocation(line: 55, column: 19, scope: !106)
!108 = !DILocation(line: 55, column: 5, scope: !103)
!109 = !DILocation(line: 56, column: 14, scope: !106)
!110 = !DILocation(line: 56, column: 9, scope: !106)
!111 = !DILocation(line: 56, column: 17, scope: !106)
!112 = !DILocation(line: 55, column: 25, scope: !106)
!113 = !DILocation(line: 55, column: 5, scope: !106)
!114 = distinct !{!114, !108, !115, !96}
!115 = !DILocation(line: 56, column: 19, scope: !103)
!116 = !DILocation(line: 57, column: 29, scope: !50)
!117 = !DILocation(line: 57, column: 74, scope: !50)
!118 = !DILocation(line: 57, column: 82, scope: !50)
!119 = !DILocation(line: 57, column: 86, scope: !50)
!120 = !DILocation(line: 57, column: 81, scope: !50)
!121 = !DILocation(line: 57, column: 60, scope: !50)
!122 = !DILocation(line: 57, column: 99, scope: !50)
!123 = !DILocation(line: 57, column: 111, scope: !50)
!124 = !DILocation(line: 57, column: 108, scope: !50)
!125 = !DILocation(line: 57, column: 120, scope: !50)
!126 = !DILocation(line: 57, column: 117, scope: !50)
!127 = !DILocation(line: 57, column: 48, scope: !50)
!128 = !DILocation(line: 57, column: 140, scope: !50)
!129 = !DILocation(line: 57, column: 131, scope: !50)
!130 = !DILocation(line: 57, column: 129, scope: !50)
!131 = !DILocation(line: 57, column: 149, scope: !50)
!132 = !DILocation(line: 57, column: 33, scope: !50)
!133 = !DILocation(line: 57, column: 28, scope: !50)
!134 = !DILocation(line: 57, column: 166, scope: !50)
!135 = !DILocation(line: 57, column: 177, scope: !50)
!136 = !DILocation(line: 57, column: 16, scope: !50)
!137 = !DILocation(line: 57, column: 186, scope: !50)
!138 = !DILocation(line: 57, column: 15, scope: !50)
!139 = !DILocation(line: 57, column: 7, scope: !50)
!140 = !DILocation(line: 57, column: 13, scope: !50)
!141 = !DILocation(line: 58, column: 12, scope: !50)
!142 = !DILocation(line: 58, column: 5, scope: !50)
!143 = distinct !DISubprogram(name: "func_11", scope: !3, file: !3, line: 67, type: !144, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!144 = !DISubroutineType(types: !145)
!145 = !{!28, !9, !9}
!146 = !DILocalVariable(name: "p_12", arg: 1, scope: !143, file: !3, line: 67, type: !9)
!147 = !DILocation(line: 67, column: 28, scope: !143)
!148 = !DILocalVariable(name: "p_13", arg: 2, scope: !143, file: !3, line: 67, type: !9)
!149 = !DILocation(line: 67, column: 43, scope: !143)
!150 = !DILocalVariable(name: "l_16", scope: !143, file: !3, line: 69, type: !67)
!151 = !DILocation(line: 69, column: 14, scope: !143)
!152 = !DILocalVariable(name: "l_18", scope: !143, file: !3, line: 70, type: !67)
!153 = !DILocation(line: 70, column: 14, scope: !143)
!154 = !DILocalVariable(name: "l_19", scope: !143, file: !3, line: 71, type: !67)
!155 = !DILocation(line: 71, column: 14, scope: !143)
!156 = !DILocalVariable(name: "l_20", scope: !143, file: !3, line: 72, type: !20)
!157 = !DILocation(line: 72, column: 13, scope: !143)
!158 = !DILocalVariable(name: "l_21", scope: !143, file: !3, line: 73, type: !159)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 2240, elements: !160)
!160 = !{!59, !161, !162}
!161 = !DISubrange(count: 5)
!162 = !DISubrange(count: 7)
!163 = !DILocation(line: 73, column: 14, scope: !143)
!164 = !DILocation(line: 73, column: 30, scope: !143)
!165 = !DILocation(line: 73, column: 31, scope: !143)
!166 = !DILocation(line: 73, column: 32, scope: !143)
!167 = !DILocation(line: 73, column: 76, scope: !143)
!168 = !DILocation(line: 73, column: 132, scope: !143)
!169 = !DILocation(line: 73, column: 176, scope: !143)
!170 = !DILocation(line: 73, column: 232, scope: !143)
!171 = !DILocalVariable(name: "i", scope: !143, file: !3, line: 74, type: !21)
!172 = !DILocation(line: 74, column: 9, scope: !143)
!173 = !DILocalVariable(name: "j", scope: !143, file: !3, line: 74, type: !21)
!174 = !DILocation(line: 74, column: 12, scope: !143)
!175 = !DILocalVariable(name: "k", scope: !143, file: !3, line: 74, type: !21)
!176 = !DILocation(line: 74, column: 15, scope: !143)
!177 = !DILocation(line: 75, column: 9, scope: !143)
!178 = !DILocation(line: 76, column: 12, scope: !143)
!179 = !DILocation(line: 76, column: 5, scope: !143)
!180 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 83, type: !181, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!181 = !DISubroutineType(types: !182)
!182 = !{!21}
!183 = !DILocalVariable(name: "print_hash_value", scope: !180, file: !3, line: 85, type: !21)
!184 = !DILocation(line: 85, column: 9, scope: !180)
!185 = !DILocation(line: 87, column: 5, scope: !180)
!186 = !DILocation(line: 88, column: 20, scope: !180)
!187 = !DILocation(line: 88, column: 18, scope: !180)
!188 = !DILocation(line: 89, column: 20, scope: !180)
!189 = !DILocation(line: 89, column: 18, scope: !180)
!190 = !DILocation(line: 90, column: 20, scope: !180)
!191 = !DILocation(line: 90, column: 18, scope: !180)
!192 = !DILocation(line: 91, column: 20, scope: !180)
!193 = !DILocation(line: 91, column: 18, scope: !180)
!194 = !DILocation(line: 92, column: 25, scope: !180)
!195 = !DILocation(line: 92, column: 20, scope: !180)
!196 = !DILocation(line: 92, column: 18, scope: !180)
!197 = !DILocation(line: 94, column: 5, scope: !180)
