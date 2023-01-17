; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_3 = global i16 7157, align 2, !dbg !10
@g_6 = global i8 2, align 1, !dbg !14
@g_10 = global i32 -6, align 4, !dbg !18
@g_9 = global i32* @g_10, align 8, !dbg !22
@g_14 = global [6 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] c"\08\01\01\08\01", [5 x i8] c"\00\00\F6\00\00", [5 x i8] c"\01\08\01\01\08", [5 x i8] zeroinitializer, [5 x i8] c"\08\08\07\08\08"], align 16, !dbg !26

; Function Attrs: noinline nounwind ssp uwtable
define i32 @func_1() #0 !dbg !42 {
entry:
  %l_2 = alloca i16*, align 8
  %l_4 = alloca i32, align 4
  %l_5 = alloca i8*, align 8
  %l_11 = alloca i32*, align 8
  %l_12 = alloca i32*, align 8
  %l_13 = alloca [1 x [10 x [6 x i32*]]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i16** %l_2, metadata !46, metadata !DIExpression()), !dbg !48
  store i16* @g_3, i16** %l_2, align 8, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %l_4, metadata !49, metadata !DIExpression()), !dbg !50
  store i32 1597437661, i32* %l_4, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i8** %l_5, metadata !51, metadata !DIExpression()), !dbg !53
  store i8* @g_6, i8** %l_5, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata i32** %l_11, metadata !54, metadata !DIExpression()), !dbg !55
  store i32* %l_4, i32** %l_11, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i32** %l_12, metadata !56, metadata !DIExpression()), !dbg !57
  store i32* @g_10, i32** %l_12, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata [1 x [10 x [6 x i32*]]]* %l_13, metadata !58, metadata !DIExpression()), !dbg !63
  %arrayinit.begin = getelementptr inbounds [1 x [10 x [6 x i32*]]], [1 x [10 x [6 x i32*]]]* %l_13, i64 0, i64 0, !dbg !64
  %arrayinit.begin1 = getelementptr inbounds [10 x [6 x i32*]], [10 x [6 x i32*]]* %arrayinit.begin, i64 0, i64 0, !dbg !65
  %arrayinit.begin2 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.begin1, i64 0, i64 0, !dbg !66
  store i32* @g_10, i32** %arrayinit.begin2, align 8, !dbg !66
  %arrayinit.element = getelementptr inbounds i32*, i32** %arrayinit.begin2, i64 1, !dbg !66
  store i32* @g_10, i32** %arrayinit.element, align 8, !dbg !66
  %arrayinit.element3 = getelementptr inbounds i32*, i32** %arrayinit.element, i64 1, !dbg !66
  store i32* %l_4, i32** %arrayinit.element3, align 8, !dbg !66
  %arrayinit.element4 = getelementptr inbounds i32*, i32** %arrayinit.element3, i64 1, !dbg !66
  store i32* @g_10, i32** %arrayinit.element4, align 8, !dbg !66
  %arrayinit.element5 = getelementptr inbounds i32*, i32** %arrayinit.element4, i64 1, !dbg !66
  store i32* %l_4, i32** %arrayinit.element5, align 8, !dbg !66
  %arrayinit.element6 = getelementptr inbounds i32*, i32** %arrayinit.element5, i64 1, !dbg !66
  store i32* @g_10, i32** %arrayinit.element6, align 8, !dbg !66
  %arrayinit.element7 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.begin1, i64 1, !dbg !65
  %arrayinit.begin8 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element7, i64 0, i64 0, !dbg !67
  store i32* @g_10, i32** %arrayinit.begin8, align 8, !dbg !67
  %arrayinit.element9 = getelementptr inbounds i32*, i32** %arrayinit.begin8, i64 1, !dbg !67
  store i32* @g_10, i32** %arrayinit.element9, align 8, !dbg !67
  %arrayinit.element10 = getelementptr inbounds i32*, i32** %arrayinit.element9, i64 1, !dbg !67
  store i32* @g_10, i32** %arrayinit.element10, align 8, !dbg !67
  %arrayinit.element11 = getelementptr inbounds i32*, i32** %arrayinit.element10, i64 1, !dbg !67
  store i32* @g_10, i32** %arrayinit.element11, align 8, !dbg !67
  %arrayinit.element12 = getelementptr inbounds i32*, i32** %arrayinit.element11, i64 1, !dbg !67
  store i32* %l_4, i32** %arrayinit.element12, align 8, !dbg !67
  %arrayinit.element13 = getelementptr inbounds i32*, i32** %arrayinit.element12, i64 1, !dbg !67
  store i32* %l_4, i32** %arrayinit.element13, align 8, !dbg !67
  %arrayinit.element14 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element7, i64 1, !dbg !65
  %arrayinit.begin15 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element14, i64 0, i64 0, !dbg !68
  store i32* @g_10, i32** %arrayinit.begin15, align 8, !dbg !68
  %arrayinit.element16 = getelementptr inbounds i32*, i32** %arrayinit.begin15, i64 1, !dbg !68
  store i32* @g_10, i32** %arrayinit.element16, align 8, !dbg !68
  %arrayinit.element17 = getelementptr inbounds i32*, i32** %arrayinit.element16, i64 1, !dbg !68
  store i32* @g_10, i32** %arrayinit.element17, align 8, !dbg !68
  %arrayinit.element18 = getelementptr inbounds i32*, i32** %arrayinit.element17, i64 1, !dbg !68
  store i32* @g_10, i32** %arrayinit.element18, align 8, !dbg !68
  %arrayinit.element19 = getelementptr inbounds i32*, i32** %arrayinit.element18, i64 1, !dbg !68
  store i32* %l_4, i32** %arrayinit.element19, align 8, !dbg !68
  %arrayinit.element20 = getelementptr inbounds i32*, i32** %arrayinit.element19, i64 1, !dbg !68
  store i32* @g_10, i32** %arrayinit.element20, align 8, !dbg !68
  %arrayinit.element21 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element14, i64 1, !dbg !65
  %arrayinit.begin22 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element21, i64 0, i64 0, !dbg !69
  store i32* @g_10, i32** %arrayinit.begin22, align 8, !dbg !69
  %arrayinit.element23 = getelementptr inbounds i32*, i32** %arrayinit.begin22, i64 1, !dbg !69
  store i32* @g_10, i32** %arrayinit.element23, align 8, !dbg !69
  %arrayinit.element24 = getelementptr inbounds i32*, i32** %arrayinit.element23, i64 1, !dbg !69
  store i32* @g_10, i32** %arrayinit.element24, align 8, !dbg !69
  %arrayinit.element25 = getelementptr inbounds i32*, i32** %arrayinit.element24, i64 1, !dbg !69
  store i32* @g_10, i32** %arrayinit.element25, align 8, !dbg !69
  %arrayinit.element26 = getelementptr inbounds i32*, i32** %arrayinit.element25, i64 1, !dbg !69
  store i32* @g_10, i32** %arrayinit.element26, align 8, !dbg !69
  %arrayinit.element27 = getelementptr inbounds i32*, i32** %arrayinit.element26, i64 1, !dbg !69
  store i32* %l_4, i32** %arrayinit.element27, align 8, !dbg !69
  %arrayinit.element28 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element21, i64 1, !dbg !65
  %arrayinit.begin29 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element28, i64 0, i64 0, !dbg !70
  store i32* @g_10, i32** %arrayinit.begin29, align 8, !dbg !70
  %arrayinit.element30 = getelementptr inbounds i32*, i32** %arrayinit.begin29, i64 1, !dbg !70
  store i32* @g_10, i32** %arrayinit.element30, align 8, !dbg !70
  %arrayinit.element31 = getelementptr inbounds i32*, i32** %arrayinit.element30, i64 1, !dbg !70
  store i32* %l_4, i32** %arrayinit.element31, align 8, !dbg !70
  %arrayinit.element32 = getelementptr inbounds i32*, i32** %arrayinit.element31, i64 1, !dbg !70
  store i32* %l_4, i32** %arrayinit.element32, align 8, !dbg !70
  %arrayinit.element33 = getelementptr inbounds i32*, i32** %arrayinit.element32, i64 1, !dbg !70
  store i32* @g_10, i32** %arrayinit.element33, align 8, !dbg !70
  %arrayinit.element34 = getelementptr inbounds i32*, i32** %arrayinit.element33, i64 1, !dbg !70
  store i32* @g_10, i32** %arrayinit.element34, align 8, !dbg !70
  %arrayinit.element35 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element28, i64 1, !dbg !65
  %arrayinit.begin36 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element35, i64 0, i64 0, !dbg !71
  store i32* @g_10, i32** %arrayinit.begin36, align 8, !dbg !71
  %arrayinit.element37 = getelementptr inbounds i32*, i32** %arrayinit.begin36, i64 1, !dbg !71
  store i32* @g_10, i32** %arrayinit.element37, align 8, !dbg !71
  %arrayinit.element38 = getelementptr inbounds i32*, i32** %arrayinit.element37, i64 1, !dbg !71
  store i32* %l_4, i32** %arrayinit.element38, align 8, !dbg !71
  %arrayinit.element39 = getelementptr inbounds i32*, i32** %arrayinit.element38, i64 1, !dbg !71
  store i32* @g_10, i32** %arrayinit.element39, align 8, !dbg !71
  %arrayinit.element40 = getelementptr inbounds i32*, i32** %arrayinit.element39, i64 1, !dbg !71
  store i32* %l_4, i32** %arrayinit.element40, align 8, !dbg !71
  %arrayinit.element41 = getelementptr inbounds i32*, i32** %arrayinit.element40, i64 1, !dbg !71
  store i32* @g_10, i32** %arrayinit.element41, align 8, !dbg !71
  %arrayinit.element42 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element35, i64 1, !dbg !65
  %arrayinit.begin43 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element42, i64 0, i64 0, !dbg !72
  store i32* %l_4, i32** %arrayinit.begin43, align 8, !dbg !72
  %arrayinit.element44 = getelementptr inbounds i32*, i32** %arrayinit.begin43, i64 1, !dbg !72
  store i32* @g_10, i32** %arrayinit.element44, align 8, !dbg !72
  %arrayinit.element45 = getelementptr inbounds i32*, i32** %arrayinit.element44, i64 1, !dbg !72
  store i32* %l_4, i32** %arrayinit.element45, align 8, !dbg !72
  %arrayinit.element46 = getelementptr inbounds i32*, i32** %arrayinit.element45, i64 1, !dbg !72
  store i32* @g_10, i32** %arrayinit.element46, align 8, !dbg !72
  %arrayinit.element47 = getelementptr inbounds i32*, i32** %arrayinit.element46, i64 1, !dbg !72
  store i32* @g_10, i32** %arrayinit.element47, align 8, !dbg !72
  %arrayinit.element48 = getelementptr inbounds i32*, i32** %arrayinit.element47, i64 1, !dbg !72
  store i32* %l_4, i32** %arrayinit.element48, align 8, !dbg !72
  %arrayinit.element49 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element42, i64 1, !dbg !65
  %arrayinit.begin50 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element49, i64 0, i64 0, !dbg !73
  store i32* %l_4, i32** %arrayinit.begin50, align 8, !dbg !73
  %arrayinit.element51 = getelementptr inbounds i32*, i32** %arrayinit.begin50, i64 1, !dbg !73
  store i32* %l_4, i32** %arrayinit.element51, align 8, !dbg !73
  %arrayinit.element52 = getelementptr inbounds i32*, i32** %arrayinit.element51, i64 1, !dbg !73
  store i32* @g_10, i32** %arrayinit.element52, align 8, !dbg !73
  %arrayinit.element53 = getelementptr inbounds i32*, i32** %arrayinit.element52, i64 1, !dbg !73
  store i32* @g_10, i32** %arrayinit.element53, align 8, !dbg !73
  %arrayinit.element54 = getelementptr inbounds i32*, i32** %arrayinit.element53, i64 1, !dbg !73
  store i32* @g_10, i32** %arrayinit.element54, align 8, !dbg !73
  %arrayinit.element55 = getelementptr inbounds i32*, i32** %arrayinit.element54, i64 1, !dbg !73
  store i32* @g_10, i32** %arrayinit.element55, align 8, !dbg !73
  %arrayinit.element56 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element49, i64 1, !dbg !65
  %arrayinit.begin57 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element56, i64 0, i64 0, !dbg !74
  store i32* @g_10, i32** %arrayinit.begin57, align 8, !dbg !74
  %arrayinit.element58 = getelementptr inbounds i32*, i32** %arrayinit.begin57, i64 1, !dbg !74
  store i32* %l_4, i32** %arrayinit.element58, align 8, !dbg !74
  %arrayinit.element59 = getelementptr inbounds i32*, i32** %arrayinit.element58, i64 1, !dbg !74
  store i32* @g_10, i32** %arrayinit.element59, align 8, !dbg !74
  %arrayinit.element60 = getelementptr inbounds i32*, i32** %arrayinit.element59, i64 1, !dbg !74
  store i32* %l_4, i32** %arrayinit.element60, align 8, !dbg !74
  %arrayinit.element61 = getelementptr inbounds i32*, i32** %arrayinit.element60, i64 1, !dbg !74
  store i32* @g_10, i32** %arrayinit.element61, align 8, !dbg !74
  %arrayinit.element62 = getelementptr inbounds i32*, i32** %arrayinit.element61, i64 1, !dbg !74
  store i32* @g_10, i32** %arrayinit.element62, align 8, !dbg !74
  %arrayinit.element63 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element56, i64 1, !dbg !65
  %arrayinit.begin64 = getelementptr inbounds [6 x i32*], [6 x i32*]* %arrayinit.element63, i64 0, i64 0, !dbg !75
  store i32* @g_10, i32** %arrayinit.begin64, align 8, !dbg !75
  %arrayinit.element65 = getelementptr inbounds i32*, i32** %arrayinit.begin64, i64 1, !dbg !75
  store i32* @g_10, i32** %arrayinit.element65, align 8, !dbg !75
  %arrayinit.element66 = getelementptr inbounds i32*, i32** %arrayinit.element65, i64 1, !dbg !75
  store i32* @g_10, i32** %arrayinit.element66, align 8, !dbg !75
  %arrayinit.element67 = getelementptr inbounds i32*, i32** %arrayinit.element66, i64 1, !dbg !75
  store i32* @g_10, i32** %arrayinit.element67, align 8, !dbg !75
  %arrayinit.element68 = getelementptr inbounds i32*, i32** %arrayinit.element67, i64 1, !dbg !75
  store i32* %l_4, i32** %arrayinit.element68, align 8, !dbg !75
  %arrayinit.element69 = getelementptr inbounds i32*, i32** %arrayinit.element68, i64 1, !dbg !75
  store i32* @g_10, i32** %arrayinit.element69, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata i32* %i, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %j, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %k, metadata !80, metadata !DIExpression()), !dbg !81
  %0 = load i16*, i16** %l_2, align 8, !dbg !82
  %1 = load i16, i16* %0, align 2, !dbg !83
  %conv = zext i16 %1 to i64, !dbg !83
  %and = and i64 %conv, 41352, !dbg !83
  %conv70 = trunc i64 %and to i16, !dbg !83
  store i16 %conv70, i16* %0, align 2, !dbg !83
  %conv71 = zext i16 %conv70 to i32, !dbg !84
  %2 = load i32, i32* %l_4, align 4, !dbg !85
  %conv72 = trunc i32 %2 to i8, !dbg !85
  %3 = load i8*, i8** %l_5, align 8, !dbg !86
  store i8 %conv72, i8* %3, align 1, !dbg !87
  %conv73 = zext i8 %conv72 to i32, !dbg !88
  %cmp = icmp sle i32 %conv73, -10240, !dbg !89
  %conv74 = zext i1 %cmp to i32, !dbg !89
  %cmp75 = icmp eq i32 %conv71, %conv74, !dbg !90
  %conv76 = zext i1 %cmp75 to i32, !dbg !90
  %4 = load volatile i32*, i32** @g_9, align 8, !dbg !91
  store i32 %conv76, i32* %4, align 4, !dbg !92
  %5 = load i8, i8* getelementptr inbounds ([6 x [5 x i8]], [6 x [5 x i8]]* @g_14, i64 0, i64 3, i64 4), align 1, !dbg !93
  %inc = add i8 %5, 1, !dbg !93
  store i8 %inc, i8* getelementptr inbounds ([6 x [5 x i8]], [6 x [5 x i8]]* @g_14, i64 0, i64 3, i64 4), align 1, !dbg !93
  %6 = load volatile i32*, i32** @g_9, align 8, !dbg !94
  %7 = load i32, i32* %6, align 4, !dbg !95
  ret i32 %7, !dbg !96
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !97 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %j, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !104, metadata !DIExpression()), !dbg !105
  store i32 0, i32* %print_hash_value, align 4, !dbg !105
  %call = call i32 @func_1(), !dbg !106
  %0 = load i16, i16* @g_3, align 2, !dbg !107
  %conv = zext i16 %0 to i64, !dbg !107
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !108
  %1 = load i8, i8* @g_6, align 1, !dbg !109
  %conv1 = zext i8 %1 to i64, !dbg !109
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !110
  %2 = load i32, i32* @g_10, align 4, !dbg !111
  %conv2 = sext i32 %2 to i64, !dbg !111
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !112
  store i32 0, i32* %i, align 4, !dbg !113
  br label %for.cond, !dbg !115

for.cond:                                         ; preds = %for.inc11, %entry
  %3 = load i32, i32* %i, align 4, !dbg !116
  %cmp = icmp slt i32 %3, 6, !dbg !118
  br i1 %cmp, label %for.body, label %for.end13, !dbg !119

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !120
  br label %for.cond4, !dbg !123

for.cond4:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !dbg !124
  %cmp5 = icmp slt i32 %4, 5, !dbg !126
  br i1 %cmp5, label %for.body7, label %for.end, !dbg !127

for.body7:                                        ; preds = %for.cond4
  %5 = load i32, i32* %i, align 4, !dbg !128
  %idxprom = sext i32 %5 to i64, !dbg !130
  %arrayidx = getelementptr inbounds [6 x [5 x i8]], [6 x [5 x i8]]* @g_14, i64 0, i64 %idxprom, !dbg !130
  %6 = load i32, i32* %j, align 4, !dbg !131
  %idxprom8 = sext i32 %6 to i64, !dbg !130
  %arrayidx9 = getelementptr inbounds [5 x i8], [5 x i8]* %arrayidx, i64 0, i64 %idxprom8, !dbg !130
  %7 = load i8, i8* %arrayidx9, align 1, !dbg !130
  %conv10 = zext i8 %7 to i64, !dbg !130
  store volatile i64 %conv10, i64* @csmith_sink_, align 8, !dbg !132
  br label %for.inc, !dbg !133

for.inc:                                          ; preds = %for.body7
  %8 = load i32, i32* %j, align 4, !dbg !134
  %inc = add nsw i32 %8, 1, !dbg !134
  store i32 %inc, i32* %j, align 4, !dbg !134
  br label %for.cond4, !dbg !135, !llvm.loop !136

for.end:                                          ; preds = %for.cond4
  br label %for.inc11, !dbg !139

for.inc11:                                        ; preds = %for.end
  %9 = load i32, i32* %i, align 4, !dbg !140
  %inc12 = add nsw i32 %9, 1, !dbg !140
  store i32 %inc12, i32* %i, align 4, !dbg !140
  br label %for.cond, !dbg !141, !llvm.loop !142

for.end13:                                        ; preds = %for.cond
  ret i32 0, !dbg !144
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !32, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-16T16:55/3")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!9 = !{!0, !10, !14, !18, !22, !26}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "g_3", scope: !2, file: !3, line: 18, type: !12, isLocal: false, isDefinition: true)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !13)
!13 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "g_6", scope: !2, file: !3, line: 19, type: !16, isLocal: false, isDefinition: true)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !17)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "g_10", scope: !2, file: !3, line: 20, type: !20, isLocal: false, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !21)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "g_9", scope: !2, file: !3, line: 21, type: !24, isLocal: false, isDefinition: true)
!24 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "g_14", scope: !2, file: !3, line: 22, type: !28, isLocal: false, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 240, elements: !29)
!29 = !{!30, !31}
!30 = !DISubrange(count: 6)
!31 = !DISubrange(count: 5)
!32 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !34)
!34 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !{i32 7, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{i32 7, !"PIC Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!42 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 35, type: !43, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!43 = !DISubroutineType(types: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!46 = !DILocalVariable(name: "l_2", scope: !42, file: !3, line: 37, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!48 = !DILocation(line: 37, column: 15, scope: !42)
!49 = !DILocalVariable(name: "l_4", scope: !42, file: !3, line: 38, type: !20)
!50 = !DILocation(line: 38, column: 13, scope: !42)
!51 = !DILocalVariable(name: "l_5", scope: !42, file: !3, line: 39, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!53 = !DILocation(line: 39, column: 14, scope: !42)
!54 = !DILocalVariable(name: "l_11", scope: !42, file: !3, line: 40, type: !25)
!55 = !DILocation(line: 40, column: 14, scope: !42)
!56 = !DILocalVariable(name: "l_12", scope: !42, file: !3, line: 41, type: !25)
!57 = !DILocation(line: 41, column: 14, scope: !42)
!58 = !DILocalVariable(name: "l_13", scope: !42, file: !3, line: 42, type: !59)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 3840, elements: !60)
!60 = !{!61, !62, !30}
!61 = !DISubrange(count: 1)
!62 = !DISubrange(count: 10)
!63 = !DILocation(line: 42, column: 14, scope: !42)
!64 = !DILocation(line: 42, column: 31, scope: !42)
!65 = !DILocation(line: 42, column: 32, scope: !42)
!66 = !DILocation(line: 42, column: 33, scope: !42)
!67 = !DILocation(line: 42, column: 69, scope: !42)
!68 = !DILocation(line: 42, column: 105, scope: !42)
!69 = !DILocation(line: 42, column: 142, scope: !42)
!70 = !DILocation(line: 42, column: 179, scope: !42)
!71 = !DILocation(line: 42, column: 215, scope: !42)
!72 = !DILocation(line: 42, column: 251, scope: !42)
!73 = !DILocation(line: 42, column: 286, scope: !42)
!74 = !DILocation(line: 42, column: 322, scope: !42)
!75 = !DILocation(line: 42, column: 358, scope: !42)
!76 = !DILocalVariable(name: "i", scope: !42, file: !3, line: 43, type: !21)
!77 = !DILocation(line: 43, column: 9, scope: !42)
!78 = !DILocalVariable(name: "j", scope: !42, file: !3, line: 43, type: !21)
!79 = !DILocation(line: 43, column: 12, scope: !42)
!80 = !DILocalVariable(name: "k", scope: !42, file: !3, line: 43, type: !21)
!81 = !DILocation(line: 43, column: 15, scope: !42)
!82 = !DILocation(line: 44, column: 18, scope: !42)
!83 = !DILocation(line: 44, column: 23, scope: !42)
!84 = !DILocation(line: 44, column: 15, scope: !42)
!85 = !DILocation(line: 44, column: 49, scope: !42)
!86 = !DILocation(line: 44, column: 42, scope: !42)
!87 = !DILocation(line: 44, column: 47, scope: !42)
!88 = !DILocation(line: 44, column: 39, scope: !42)
!89 = !DILocation(line: 44, column: 54, scope: !42)
!90 = !DILocation(line: 44, column: 35, scope: !42)
!91 = !DILocation(line: 44, column: 7, scope: !42)
!92 = !DILocation(line: 44, column: 12, scope: !42)
!93 = !DILocation(line: 45, column: 15, scope: !42)
!94 = !DILocation(line: 46, column: 14, scope: !42)
!95 = !DILocation(line: 46, column: 13, scope: !42)
!96 = !DILocation(line: 46, column: 5, scope: !42)
!97 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 53, type: !98, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!98 = !DISubroutineType(types: !99)
!99 = !{!21}
!100 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 55, type: !21)
!101 = !DILocation(line: 55, column: 9, scope: !97)
!102 = !DILocalVariable(name: "j", scope: !97, file: !3, line: 55, type: !21)
!103 = !DILocation(line: 55, column: 12, scope: !97)
!104 = !DILocalVariable(name: "print_hash_value", scope: !97, file: !3, line: 56, type: !21)
!105 = !DILocation(line: 56, column: 9, scope: !97)
!106 = !DILocation(line: 58, column: 5, scope: !97)
!107 = !DILocation(line: 59, column: 20, scope: !97)
!108 = !DILocation(line: 59, column: 18, scope: !97)
!109 = !DILocation(line: 60, column: 20, scope: !97)
!110 = !DILocation(line: 60, column: 18, scope: !97)
!111 = !DILocation(line: 61, column: 20, scope: !97)
!112 = !DILocation(line: 61, column: 18, scope: !97)
!113 = !DILocation(line: 62, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !97, file: !3, line: 62, column: 5)
!115 = !DILocation(line: 62, column: 10, scope: !114)
!116 = !DILocation(line: 62, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !3, line: 62, column: 5)
!118 = !DILocation(line: 62, column: 19, scope: !117)
!119 = !DILocation(line: 62, column: 5, scope: !114)
!120 = !DILocation(line: 64, column: 16, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 64, column: 9)
!122 = distinct !DILexicalBlock(scope: !117, file: !3, line: 63, column: 5)
!123 = !DILocation(line: 64, column: 14, scope: !121)
!124 = !DILocation(line: 64, column: 21, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !3, line: 64, column: 9)
!126 = !DILocation(line: 64, column: 23, scope: !125)
!127 = !DILocation(line: 64, column: 9, scope: !121)
!128 = !DILocation(line: 66, column: 33, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !3, line: 65, column: 9)
!130 = !DILocation(line: 66, column: 28, scope: !129)
!131 = !DILocation(line: 66, column: 36, scope: !129)
!132 = !DILocation(line: 66, column: 26, scope: !129)
!133 = !DILocation(line: 67, column: 9, scope: !129)
!134 = !DILocation(line: 64, column: 29, scope: !125)
!135 = !DILocation(line: 64, column: 9, scope: !125)
!136 = distinct !{!136, !127, !137, !138}
!137 = !DILocation(line: 67, column: 9, scope: !121)
!138 = !{!"llvm.loop.mustprogress"}
!139 = !DILocation(line: 68, column: 5, scope: !122)
!140 = !DILocation(line: 62, column: 25, scope: !117)
!141 = !DILocation(line: 62, column: 5, scope: !117)
!142 = distinct !{!142, !119, !143, !138}
!143 = !DILocation(line: 68, column: 5, scope: !114)
!144 = !DILocation(line: 70, column: 5, scope: !97)
