; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%union.U1 = type { i32 }

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_8 = constant i64 3, align 8, !dbg !12
@g_16 = constant i32 -3, align 4, !dbg !18
@g_20 = global [8 x [9 x [3 x i32]]] [[9 x [3 x i32]] [[3 x i32] [i32 1448305821, i32 -321122529, i32 -1], [3 x i32] [i32 -1498233621, i32 1, i32 -3], [3 x i32] [i32 6, i32 -549850171, i32 -1675538666], [3 x i32] [i32 -848582438, i32 -1, i32 -1498233621], [3 x i32] [i32 -1, i32 1, i32 1332499763], [3 x i32] [i32 0, i32 0, i32 -1498233621], [3 x i32] [i32 962913420, i32 -1675538666, i32 -1675538666], [3 x i32] [i32 -2, i32 -5, i32 -3], [3 x i32] [i32 3, i32 0, i32 -1]], [9 x [3 x i32]] [[3 x i32] [i32 315921281, i32 1601834364, i32 -3], [3 x i32] [i32 -1, i32 -1, i32 1], [3 x i32] [i32 -1689585731, i32 1601834364, i32 8], [3 x i32] zeroinitializer, [3 x i32] [i32 -1, i32 -5, i32 -848582438], [3 x i32] [i32 -549850171, i32 -1675538666, i32 1448305821], [3 x i32] [i32 8, i32 6, i32 -1], [3 x i32] [i32 962913420, i32 -1, i32 6], [3 x i32] [i32 -848582438, i32 1, i32 -1484949508]], [9 x [3 x i32]] [[3 x i32] [i32 -1, i32 -1, i32 1], [3 x i32] [i32 -719159245, i32 -1, i32 -7], [3 x i32] [i32 -1, i32 -549850171, i32 -1], [3 x i32] [i32 -1, i32 1, i32 8], [3 x i32] [i32 -1638790083, i32 -1, i32 -1], [3 x i32] [i32 -2, i32 1495382610, i32 -7], [3 x i32] [i32 1, i32 962913420, i32 1], [3 x i32] [i32 -3, i32 -7, i32 -1484949508], [3 x i32] [i32 3, i32 -1675538666, i32 6]], [9 x [3 x i32]] [[3 x i32] [i32 -1484949508, i32 -1, i32 -1], [3 x i32] [i32 -321122529, i32 -1675538666, i32 0], [3 x i32] [i32 -263907321, i32 -7, i32 -263907321], [3 x i32] [i32 -1675538666, i32 962913420, i32 -1], [3 x i32] [i32 0, i32 1495382610, i32 -848582438], [3 x i32] [i32 0, i32 -1, i32 1332499763], [3 x i32] [i32 315921281, i32 1, i32 -1], [3 x i32] [i32 0, i32 -549850171, i32 -1638790083], [3 x i32] [i32 0, i32 -1, i32 2142308601]], [9 x [3 x i32]] [[3 x i32] [i32 -1675538666, i32 -1, i32 1], [3 x i32] [i32 -263907321, i32 1, i32 0], [3 x i32] [i32 -321122529, i32 -1, i32 1448305821], [3 x i32] [i32 -1484949508, i32 6, i32 0], [3 x i32] [i32 3, i32 1, i32 1], [3 x i32] [i32 -3, i32 2, i32 2142308601], [3 x i32] [i32 1, i32 1, i32 -1638790083], [3 x i32] [i32 -2, i32 711646515, i32 -1], [3 x i32] [i32 -1638790083, i32 -321122529, i32 1332499763]], [9 x [3 x i32]] [[3 x i32] [i32 -1, i32 711646515, i32 -848582438], [3 x i32] [i32 -1, i32 1, i32 -1], [3 x i32] [i32 -719159245, i32 2, i32 -263907321], [3 x i32] [i32 -1, i32 1, i32 0], [3 x i32] [i32 -848582438, i32 6, i32 -1], [3 x i32] [i32 962913420, i32 -1, i32 6], [3 x i32] [i32 -848582438, i32 1, i32 -1484949508], [3 x i32] [i32 -1, i32 -1, i32 1], [3 x i32] [i32 -719159245, i32 -1, i32 -7]], [9 x [3 x i32]] [[3 x i32] [i32 -1, i32 -549850171, i32 -1], [3 x i32] [i32 -1, i32 1, i32 8], [3 x i32] [i32 -1638790083, i32 -1, i32 -1], [3 x i32] [i32 -2, i32 1495382610, i32 -7], [3 x i32] [i32 1, i32 962913420, i32 1], [3 x i32] [i32 -3, i32 -7, i32 -1484949508], [3 x i32] [i32 3, i32 -1675538666, i32 6], [3 x i32] [i32 -1484949508, i32 -1, i32 -1], [3 x i32] [i32 -321122529, i32 -1675538666, i32 0]], [9 x [3 x i32]] [[3 x i32] [i32 -263907321, i32 -7, i32 -263907321], [3 x i32] [i32 -1675538666, i32 962913420, i32 -1], [3 x i32] [i32 0, i32 1495382610, i32 -848582438], [3 x i32] [i32 0, i32 -1, i32 1332499763], [3 x i32] [i32 315921281, i32 1, i32 -1], [3 x i32] [i32 0, i32 -549850171, i32 -1638790083], [3 x i32] [i32 0, i32 -1, i32 2142308601], [3 x i32] [i32 -1675538666, i32 -1, i32 1], [3 x i32] [i32 -263907321, i32 1, i32 0]]], align 16, !dbg !23
@g_22 = global { i8, [3 x i8] } { i8 -34, [3 x i8] undef }, align 4, !dbg !32

; Function Attrs: noinline nounwind ssp uwtable
define i32 @func_1() #0 !dbg !49 {
entry:
  %retval = alloca %union.U1, align 4
  %l_2 = alloca i16, align 2
  %l_21 = alloca i32, align 4
  %l_15 = alloca [3 x i32], align 4
  %l_17 = alloca i32, align 4
  %l_18 = alloca i32, align 4
  %l_19 = alloca i32*, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i16* %l_2, metadata !52, metadata !DIExpression()), !dbg !55
  store i16 20134, i16* %l_2, align 2, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %l_21, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 3, i32* %l_21, align 4, !dbg !57
  %0 = load i16, i16* %l_2, align 2, !dbg !58
  %tobool = icmp ne i16 %0, 0, !dbg !58
  br i1 %tobool, label %if.then, label %if.else, !dbg !60

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [3 x i32]* %l_15, metadata !61, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %l_17, metadata !66, metadata !DIExpression()), !dbg !67
  store i32 1, i32* %l_17, align 4, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %l_18, metadata !68, metadata !DIExpression()), !dbg !69
  store i32 906880372, i32* %l_18, align 4, !dbg !69
  call void @llvm.dbg.declare(metadata i32** %l_19, metadata !70, metadata !DIExpression()), !dbg !72
  store i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 7, i64 6, i64 1), i32** %l_19, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %i, metadata !73, metadata !DIExpression()), !dbg !74
  store i32 0, i32* %i, align 4, !dbg !75
  br label %for.cond, !dbg !77

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !78
  %cmp = icmp slt i32 %1, 3, !dbg !80
  br i1 %cmp, label %for.body, label %for.end, !dbg !81

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !82
  %idxprom = sext i32 %2 to i64, !dbg !83
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %l_15, i64 0, i64 %idxprom, !dbg !83
  store i32 1247146108, i32* %arrayidx, align 4, !dbg !84
  br label %for.inc, !dbg !83

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !dbg !85
  %inc = add nsw i32 %3, 1, !dbg !85
  store i32 %inc, i32* %i, align 4, !dbg !85
  br label %for.cond, !dbg !86, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  %4 = load volatile i64, i64* @g_8, align 8, !dbg !90
  %conv = trunc i64 %4 to i8, !dbg !91
  %conv1 = zext i8 %conv to i32, !dbg !91
  %shr = ashr i32 %conv1, 2, !dbg !92
  %conv2 = sext i32 %shr to i64, !dbg !93
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %l_15, i64 0, i64 1, !dbg !94
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !94
  %conv4 = trunc i32 %5 to i8, !dbg !95
  %conv5 = zext i8 %conv4 to i32, !dbg !95
  %shr6 = ashr i32 %conv5, 2, !dbg !96
  %conv7 = trunc i32 %shr6 to i8, !dbg !97
  %conv8 = zext i8 %conv7 to i32, !dbg !97
  %add = add nsw i32 %conv8, 253, !dbg !98
  %conv9 = sext i32 %add to i64, !dbg !99
  %xor = xor i64 %conv9, 46401, !dbg !100
  %6 = load i32, i32* %l_17, align 4, !dbg !101
  %conv10 = sext i32 %6 to i64, !dbg !101
  %and = and i64 %conv10, %xor, !dbg !101
  %conv11 = trunc i64 %and to i32, !dbg !101
  store i32 %conv11, i32* %l_17, align 4, !dbg !101
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %l_15, i64 0, i64 2, !dbg !102
  %7 = load i32, i32* %arrayidx12, align 4, !dbg !102
  %cmp13 = icmp ne i32 %conv11, %7, !dbg !103
  %conv14 = zext i1 %cmp13 to i32, !dbg !103
  %8 = load i32, i32* %l_18, align 4, !dbg !104
  %or = or i32 %conv14, %8, !dbg !105
  %tobool15 = icmp ne i32 %or, 0, !dbg !106
  %lnot = xor i1 %tobool15, true, !dbg !106
  %lnot.ext = zext i1 %lnot to i32, !dbg !106
  %conv16 = sext i32 %lnot.ext to i64, !dbg !107
  %cmp17 = icmp ne i64 %conv16, -5183999599610898381, !dbg !108
  %lnot19 = xor i1 %cmp17, true, !dbg !109
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !109
  %9 = load i32, i32* %l_18, align 4, !dbg !110
  %or21 = or i32 %lnot.ext20, %9, !dbg !111
  %conv22 = sext i32 %or21 to i64, !dbg !112
  %mul = mul i64 %conv2, %conv22, !dbg !113
  %10 = load i32*, i32** %l_19, align 8, !dbg !114
  %11 = load i32, i32* %10, align 4, !dbg !115
  %conv23 = sext i32 %11 to i64, !dbg !115
  %or24 = or i64 %conv23, %mul, !dbg !115
  %conv25 = trunc i64 %or24 to i32, !dbg !115
  store i32 %conv25, i32* %10, align 4, !dbg !115
  br label %if.end, !dbg !116

if.else:                                          ; preds = %entry
  store i32 1204834713, i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 0, i64 8, i64 2), align 8, !dbg !117
  store i32 0, i32* %l_21, align 4, !dbg !119
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %12 = bitcast %union.U1* %retval to i8*, !dbg !120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_22, i32 0, i32 0), i64 4, i1 false), !dbg !120
  %coerce.dive = getelementptr inbounds %union.U1, %union.U1* %retval, i32 0, i32 0, !dbg !121
  %13 = load i32, i32* %coerce.dive, align 4, !dbg !121
  ret i32 %13, !dbg !121
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !122 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %coerce = alloca %union.U1, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %j, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %k, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !131, metadata !DIExpression()), !dbg !132
  store i32 0, i32* %print_hash_value, align 4, !dbg !132
  %call = call i32 @func_1(), !dbg !133
  %coerce.dive = getelementptr inbounds %union.U1, %union.U1* %coerce, i32 0, i32 0, !dbg !133
  store i32 %call, i32* %coerce.dive, align 4, !dbg !133
  %0 = load volatile i64, i64* @g_8, align 8, !dbg !134
  store volatile i64 %0, i64* @csmith_sink_, align 8, !dbg !135
  store volatile i64 4294967293, i64* @csmith_sink_, align 8, !dbg !136
  store i32 0, i32* %i, align 4, !dbg !137
  br label %for.cond, !dbg !139

for.cond:                                         ; preds = %for.inc14, %entry
  %1 = load i32, i32* %i, align 4, !dbg !140
  %cmp = icmp slt i32 %1, 8, !dbg !142
  br i1 %cmp, label %for.body, label %for.end16, !dbg !143

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !144
  br label %for.cond1, !dbg !147

for.cond1:                                        ; preds = %for.inc11, %for.body
  %2 = load i32, i32* %j, align 4, !dbg !148
  %cmp2 = icmp slt i32 %2, 9, !dbg !150
  br i1 %cmp2, label %for.body3, label %for.end13, !dbg !151

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4, !dbg !152
  br label %for.cond4, !dbg !155

for.cond4:                                        ; preds = %for.inc, %for.body3
  %3 = load i32, i32* %k, align 4, !dbg !156
  %cmp5 = icmp slt i32 %3, 3, !dbg !158
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !159

for.body6:                                        ; preds = %for.cond4
  %4 = load i32, i32* %i, align 4, !dbg !160
  %idxprom = sext i32 %4 to i64, !dbg !162
  %arrayidx = getelementptr inbounds [8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 %idxprom, !dbg !162
  %5 = load i32, i32* %j, align 4, !dbg !163
  %idxprom7 = sext i32 %5 to i64, !dbg !162
  %arrayidx8 = getelementptr inbounds [9 x [3 x i32]], [9 x [3 x i32]]* %arrayidx, i64 0, i64 %idxprom7, !dbg !162
  %6 = load i32, i32* %k, align 4, !dbg !164
  %idxprom9 = sext i32 %6 to i64, !dbg !162
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !162
  %7 = load i32, i32* %arrayidx10, align 4, !dbg !162
  %conv = sext i32 %7 to i64, !dbg !162
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !165
  br label %for.inc, !dbg !166

for.inc:                                          ; preds = %for.body6
  %8 = load i32, i32* %k, align 4, !dbg !167
  %inc = add nsw i32 %8, 1, !dbg !167
  store i32 %inc, i32* %k, align 4, !dbg !167
  br label %for.cond4, !dbg !168, !llvm.loop !169

for.end:                                          ; preds = %for.cond4
  br label %for.inc11, !dbg !171

for.inc11:                                        ; preds = %for.end
  %9 = load i32, i32* %j, align 4, !dbg !172
  %inc12 = add nsw i32 %9, 1, !dbg !172
  store i32 %inc12, i32* %j, align 4, !dbg !172
  br label %for.cond1, !dbg !173, !llvm.loop !174

for.end13:                                        ; preds = %for.cond1
  br label %for.inc14, !dbg !176

for.inc14:                                        ; preds = %for.end13
  %10 = load i32, i32* %i, align 4, !dbg !177
  %inc15 = add nsw i32 %10, 1, !dbg !177
  store i32 %inc15, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !178, !llvm.loop !179

for.end16:                                        ; preds = %for.cond
  %11 = load i8, i8* getelementptr inbounds ({ i8, [3 x i8] }, { i8, [3 x i8] }* @g_22, i32 0, i32 0), align 4, !dbg !181
  %conv17 = zext i8 %11 to i64, !dbg !182
  store volatile i64 %conv17, i64* @csmith_sink_, align 8, !dbg !183
  ret i32 0, !dbg !184
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !41, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/2")
!4 = !{}
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 226, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!0, !12, !18, !23, !32}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "g_8", scope: !2, file: !3, line: 24, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !17)
!17 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "g_16", scope: !2, file: !3, line: 25, type: !20, isLocal: false, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !22)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "g_20", scope: !2, file: !3, line: 26, type: !25, isLocal: false, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 6912, elements: !28)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !{!29, !30, !31}
!29 = !DISubrange(count: 8)
!30 = !DISubrange(count: 9)
!31 = !DISubrange(count: 3)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "g_22", scope: !2, file: !3, line: 27, type: !34, isLocal: false, isDefinition: true)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "U1", file: !3, line: 17, size: 32, elements: !35)
!35 = !{!36, !37, !40}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !34, file: !3, line: 18, baseType: !9, size: 8)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !34, file: !3, line: 19, baseType: !38, size: 8)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !7, line: 224, baseType: !39)
!39 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !34, file: !3, line: 20, baseType: !21, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!42 = !{i32 7, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"PIC Level", i32 2}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!49 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 40, type: !50, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!50 = !DISubroutineType(types: !51)
!51 = !{!34}
!52 = !DILocalVariable(name: "l_2", scope: !49, file: !3, line: 42, type: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 207, baseType: !54)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DILocation(line: 42, column: 14, scope: !49)
!56 = !DILocalVariable(name: "l_21", scope: !49, file: !3, line: 43, type: !26)
!57 = !DILocation(line: 43, column: 13, scope: !49)
!58 = !DILocation(line: 44, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !49, file: !3, line: 44, column: 9)
!60 = !DILocation(line: 44, column: 9, scope: !49)
!61 = !DILocalVariable(name: "l_15", scope: !62, file: !3, line: 46, type: !63)
!62 = distinct !DILexicalBlock(scope: !59, file: !3, line: 45, column: 5)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 96, elements: !64)
!64 = !{!31}
!65 = !DILocation(line: 46, column: 17, scope: !62)
!66 = !DILocalVariable(name: "l_17", scope: !62, file: !3, line: 47, type: !26)
!67 = !DILocation(line: 47, column: 17, scope: !62)
!68 = !DILocalVariable(name: "l_18", scope: !62, file: !3, line: 48, type: !26)
!69 = !DILocation(line: 48, column: 17, scope: !62)
!70 = !DILocalVariable(name: "l_19", scope: !62, file: !3, line: 49, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!72 = !DILocation(line: 49, column: 18, scope: !62)
!73 = !DILocalVariable(name: "i", scope: !62, file: !3, line: 50, type: !27)
!74 = !DILocation(line: 50, column: 13, scope: !62)
!75 = !DILocation(line: 51, column: 16, scope: !76)
!76 = distinct !DILexicalBlock(scope: !62, file: !3, line: 51, column: 9)
!77 = !DILocation(line: 51, column: 14, scope: !76)
!78 = !DILocation(line: 51, column: 21, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !3, line: 51, column: 9)
!80 = !DILocation(line: 51, column: 23, scope: !79)
!81 = !DILocation(line: 51, column: 9, scope: !76)
!82 = !DILocation(line: 52, column: 18, scope: !79)
!83 = !DILocation(line: 52, column: 13, scope: !79)
!84 = !DILocation(line: 52, column: 21, scope: !79)
!85 = !DILocation(line: 51, column: 29, scope: !79)
!86 = !DILocation(line: 51, column: 9, scope: !79)
!87 = distinct !{!87, !81, !88, !89}
!88 = !DILocation(line: 52, column: 23, scope: !76)
!89 = !{!"llvm.loop.mustprogress"}
!90 = !DILocation(line: 53, column: 53, scope: !62)
!91 = !DILocation(line: 53, column: 44, scope: !62)
!92 = !DILocation(line: 53, column: 57, scope: !62)
!93 = !DILocation(line: 53, column: 21, scope: !62)
!94 = !DILocation(line: 53, column: 123, scope: !62)
!95 = !DILocation(line: 53, column: 114, scope: !62)
!96 = !DILocation(line: 53, column: 131, scope: !62)
!97 = !DILocation(line: 53, column: 104, scope: !62)
!98 = !DILocation(line: 53, column: 146, scope: !62)
!99 = !DILocation(line: 53, column: 103, scope: !62)
!100 = !DILocation(line: 53, column: 163, scope: !62)
!101 = !DILocation(line: 53, column: 99, scope: !62)
!102 = !DILocation(line: 53, column: 178, scope: !62)
!103 = !DILocation(line: 53, column: 175, scope: !62)
!104 = !DILocation(line: 53, column: 189, scope: !62)
!105 = !DILocation(line: 53, column: 187, scope: !62)
!106 = !DILocation(line: 53, column: 90, scope: !62)
!107 = !DILocation(line: 53, column: 89, scope: !62)
!108 = !DILocation(line: 53, column: 196, scope: !62)
!109 = !DILocation(line: 53, column: 87, scope: !62)
!110 = !DILocation(line: 53, column: 224, scope: !62)
!111 = !DILocation(line: 53, column: 222, scope: !62)
!112 = !DILocation(line: 53, column: 75, scope: !62)
!113 = !DILocation(line: 53, column: 73, scope: !62)
!114 = !DILocation(line: 53, column: 11, scope: !62)
!115 = !DILocation(line: 53, column: 17, scope: !62)
!116 = !DILocation(line: 54, column: 5, scope: !62)
!117 = !DILocation(line: 57, column: 23, scope: !118)
!118 = distinct !DILexicalBlock(scope: !59, file: !3, line: 56, column: 5)
!119 = !DILocation(line: 58, column: 14, scope: !118)
!120 = !DILocation(line: 60, column: 12, scope: !49)
!121 = !DILocation(line: 60, column: 5, scope: !49)
!122 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 67, type: !123, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!123 = !DISubroutineType(types: !124)
!124 = !{!27}
!125 = !DILocalVariable(name: "i", scope: !122, file: !3, line: 69, type: !27)
!126 = !DILocation(line: 69, column: 9, scope: !122)
!127 = !DILocalVariable(name: "j", scope: !122, file: !3, line: 69, type: !27)
!128 = !DILocation(line: 69, column: 12, scope: !122)
!129 = !DILocalVariable(name: "k", scope: !122, file: !3, line: 69, type: !27)
!130 = !DILocation(line: 69, column: 15, scope: !122)
!131 = !DILocalVariable(name: "print_hash_value", scope: !122, file: !3, line: 70, type: !27)
!132 = !DILocation(line: 70, column: 9, scope: !122)
!133 = !DILocation(line: 72, column: 5, scope: !122)
!134 = !DILocation(line: 73, column: 20, scope: !122)
!135 = !DILocation(line: 73, column: 18, scope: !122)
!136 = !DILocation(line: 74, column: 18, scope: !122)
!137 = !DILocation(line: 75, column: 12, scope: !138)
!138 = distinct !DILexicalBlock(scope: !122, file: !3, line: 75, column: 5)
!139 = !DILocation(line: 75, column: 10, scope: !138)
!140 = !DILocation(line: 75, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !3, line: 75, column: 5)
!142 = !DILocation(line: 75, column: 19, scope: !141)
!143 = !DILocation(line: 75, column: 5, scope: !138)
!144 = !DILocation(line: 77, column: 16, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !3, line: 77, column: 9)
!146 = distinct !DILexicalBlock(scope: !141, file: !3, line: 76, column: 5)
!147 = !DILocation(line: 77, column: 14, scope: !145)
!148 = !DILocation(line: 77, column: 21, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !3, line: 77, column: 9)
!150 = !DILocation(line: 77, column: 23, scope: !149)
!151 = !DILocation(line: 77, column: 9, scope: !145)
!152 = !DILocation(line: 79, column: 20, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 79, column: 13)
!154 = distinct !DILexicalBlock(scope: !149, file: !3, line: 78, column: 9)
!155 = !DILocation(line: 79, column: 18, scope: !153)
!156 = !DILocation(line: 79, column: 25, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !3, line: 79, column: 13)
!158 = !DILocation(line: 79, column: 27, scope: !157)
!159 = !DILocation(line: 79, column: 13, scope: !153)
!160 = !DILocation(line: 81, column: 37, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !3, line: 80, column: 13)
!162 = !DILocation(line: 81, column: 32, scope: !161)
!163 = !DILocation(line: 81, column: 40, scope: !161)
!164 = !DILocation(line: 81, column: 43, scope: !161)
!165 = !DILocation(line: 81, column: 30, scope: !161)
!166 = !DILocation(line: 82, column: 13, scope: !161)
!167 = !DILocation(line: 79, column: 33, scope: !157)
!168 = !DILocation(line: 79, column: 13, scope: !157)
!169 = distinct !{!169, !159, !170, !89}
!170 = !DILocation(line: 82, column: 13, scope: !153)
!171 = !DILocation(line: 83, column: 9, scope: !154)
!172 = !DILocation(line: 77, column: 29, scope: !149)
!173 = !DILocation(line: 77, column: 9, scope: !149)
!174 = distinct !{!174, !151, !175, !89}
!175 = !DILocation(line: 83, column: 9, scope: !145)
!176 = !DILocation(line: 84, column: 5, scope: !146)
!177 = !DILocation(line: 75, column: 25, scope: !141)
!178 = !DILocation(line: 75, column: 5, scope: !141)
!179 = distinct !{!179, !143, !180, !89}
!180 = !DILocation(line: 84, column: 5, scope: !138)
!181 = !DILocation(line: 85, column: 25, scope: !122)
!182 = !DILocation(line: 85, column: 20, scope: !122)
!183 = !DILocation(line: 85, column: 18, scope: !122)
!184 = !DILocation(line: 87, column: 5, scope: !122)
