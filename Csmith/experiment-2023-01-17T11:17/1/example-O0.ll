; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.S1 = type <{ i64, i64, i8 }>
%struct.S0 = type { [11 x i8] }

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_8 = global %struct.S1 <{ i64 -9, i64 2671518918454829511, i8 -10 }>, align 1, !dbg !6
@g_14 = global i32 1047933281, align 4, !dbg !23
@g_13 = global i32* @g_14, align 8, !dbg !28
@g_16 = global i32 -563732548, align 4, !dbg !31
@g_17 = global i64 7225670638682668906, align 8, !dbg !33
@g_18 = global i8 7, align 1, !dbg !35
@g_20 = global i32 1817629194, align 4, !dbg !37
@g_22 = global [4 x i32] [i32 -4, i32 -4, i32 -4, i32 -4], align 16, !dbg !39
@g_21 = global i32* bitcast (i8* getelementptr (i8, i8* bitcast ([4 x i32]* @g_22 to i8*), i64 8) to i32*), align 8, !dbg !44
@g_23 = global i32** @g_21, align 8, !dbg !47
@g_24 = global [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 39, i8 0, i8 0, i8 -99, i8 -3, i8 -1, i8 -17, i8 -17, i8 -5, i8 127 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 39, i8 0, i8 0, i8 -99, i8 -3, i8 -1, i8 -17, i8 -17, i8 -5, i8 127 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 39, i8 0, i8 0, i8 -99, i8 -3, i8 -1, i8 -17, i8 -17, i8 -5, i8 127 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 39, i8 0, i8 0, i8 -99, i8 -3, i8 -1, i8 -17, i8 -17, i8 -5, i8 127 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 35, i8 39, i8 0, i8 0, i8 -99, i8 -3, i8 -1, i8 -17, i8 -17, i8 -5, i8 127 }], align 16, !dbg !51
@g_25 = global %struct.S0* bitcast (i8* getelementptr (i8, i8* getelementptr inbounds ([5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]* @g_24, i32 0, i32 0, i32 0), i64 22) to %struct.S0*), align 8, !dbg !64
@__const.func_1.l_15 = private unnamed_addr constant [10 x [3 x [7 x i32*]]] [[3 x [7 x i32*]] [[7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* null, i32* @g_16, i32* @g_16, i32* @g_16, i32* null, i32* null, i32* @g_16], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* null, i32* null, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* null, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* null], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* null, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* null, i32* @g_16, i32* @g_16, i32* null, i32* @g_16, i32* null], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* null, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* null]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* null, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* null, i32* @g_16, i32* @g_16, i32* null, i32* @g_16, i32* null]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16]], [3 x [7 x i32*]] [[7 x i32*] [i32* @g_16, i32* null, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* null], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16], [7 x i32*] [i32* @g_16, i32* @g_16, i32* @g_16, i32* @g_16, i32* null, i32* @g_16, i32* @g_16]]], align 16

; Function Attrs: noinline nounwind ssp uwtable
define i32 @func_1() #0 !dbg !75 {
entry:
  %l_10 = alloca i32*, align 8
  %l_11 = alloca i32**, align 8
  %l_12 = alloca i32**, align 8
  %l_15 = alloca [10 x [3 x [7 x i32*]]], align 16
  %l_19 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %l_10, metadata !78, metadata !DIExpression()), !dbg !79
  store i32* null, i32** %l_10, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata i32*** %l_11, metadata !80, metadata !DIExpression()), !dbg !81
  store i32** null, i32*** %l_11, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i32*** %l_12, metadata !82, metadata !DIExpression()), !dbg !83
  store i32** %l_10, i32*** %l_12, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata [10 x [3 x [7 x i32*]]]* %l_15, metadata !84, metadata !DIExpression()), !dbg !90
  %0 = bitcast [10 x [3 x [7 x i32*]]]* %l_15 to i8*, !dbg !90
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x [3 x [7 x i32*]]]* @__const.func_1.l_15 to i8*), i64 1680, i1 false), !dbg !90
  call void @llvm.dbg.declare(metadata i32** %l_19, metadata !91, metadata !DIExpression()), !dbg !92
  store i32* @g_20, i32** %l_19, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %i, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %j, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %k, metadata !97, metadata !DIExpression()), !dbg !98
  %1 = load i32*, i32** %l_10, align 8, !dbg !99
  %2 = load i32**, i32*** %l_12, align 8, !dbg !100
  store i32* %1, i32** %2, align 8, !dbg !101
  %3 = load i32*, i32** @g_13, align 8, !dbg !102
  %cmp = icmp ne i32* %1, %3, !dbg !103
  %conv = zext i1 %cmp to i32, !dbg !103
  %4 = load i32, i32* @g_16, align 4, !dbg !104
  %xor = xor i32 %4, %conv, !dbg !104
  store i32 %xor, i32* @g_16, align 4, !dbg !104
  %conv1 = sext i32 %xor to i64, !dbg !105
  store i64 %conv1, i64* @g_17, align 8, !dbg !106
  %5 = load i8, i8* @g_18, align 1, !dbg !107
  %conv2 = sext i8 %5 to i64, !dbg !107
  %or = or i64 %conv1, %conv2, !dbg !108
  %conv3 = trunc i64 %or to i32, !dbg !109
  %6 = load i32*, i32** %l_19, align 8, !dbg !110
  store i32 %conv3, i32* %6, align 4, !dbg !111
  %7 = load i8, i8* @g_18, align 1, !dbg !112
  %conv4 = sext i8 %7 to i32, !dbg !112
  %8 = load i32*, i32** @g_21, align 8, !dbg !113
  %call = call i32* @func_2(i32 %conv3, i32 %conv4, i32* %8, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_22, i64 0, i64 1), i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_22, i64 0, i64 2)), !dbg !114
  %9 = load volatile i32**, i32*** @g_23, align 8, !dbg !115
  store i32* %call, i32** %9, align 8, !dbg !116
  %10 = load volatile %struct.S0*, %struct.S0** @g_25, align 8, !dbg !117
  %11 = bitcast %struct.S0* %10 to i8*, !dbg !118
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 2 getelementptr inbounds ([5 x %struct.S0], [5 x %struct.S0]* bitcast ([5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]* @g_24 to [5 x %struct.S0]*), i64 0, i64 2, i32 0, i32 0), i64 11, i1 true), !dbg !118
  %bf.load = load volatile i88, i88* bitcast (%struct.S0* getelementptr inbounds ([5 x %struct.S0], [5 x %struct.S0]* bitcast ([5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]* @g_24 to [5 x %struct.S0]*), i64 0, i64 2) to i88*), align 2, !dbg !119
  %bf.shl = shl i88 %bf.load, 21, !dbg !119
  %bf.ashr = ashr i88 %bf.shl, 80, !dbg !119
  %bf.cast = trunc i88 %bf.ashr to i32, !dbg !119
  ret i32 %bf.cast, !dbg !120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32* @func_2(i32 %p_3, i32 %p_4, i32* %p_5, i32* %p_6, i32* %p_7) #0 !dbg !121 {
entry:
  %p_3.addr = alloca i32, align 4
  %p_4.addr = alloca i32, align 4
  %p_5.addr = alloca i32*, align 8
  %p_6.addr = alloca i32*, align 8
  %p_7.addr = alloca i32*, align 8
  store i32 %p_3, i32* %p_3.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p_3.addr, metadata !125, metadata !DIExpression()), !dbg !126
  store i32 %p_4, i32* %p_4.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p_4.addr, metadata !127, metadata !DIExpression()), !dbg !128
  store i32* %p_5, i32** %p_5.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p_5.addr, metadata !129, metadata !DIExpression()), !dbg !130
  store i32* %p_6, i32** %p_6.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p_6.addr, metadata !131, metadata !DIExpression()), !dbg !132
  store i32* %p_7, i32** %p_7.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %p_7.addr, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load i32*, i32** @g_21, align 8, !dbg !135
  %1 = load i32, i32* %0, align 4, !dbg !136
  %2 = load i32*, i32** @g_13, align 8, !dbg !137
  store volatile i32 %1, i32* %2, align 4, !dbg !138
  ret i32* getelementptr inbounds ([4 x i32], [4 x i32]* @g_22, i64 0, i64 2), !dbg !139
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !140 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !145, metadata !DIExpression()), !dbg !146
  store i32 0, i32* %print_hash_value, align 4, !dbg !146
  %call = call i32 @func_1(), !dbg !147
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.S1, %struct.S1* @g_8, i32 0, i32 0), align 1, !dbg !148
  store volatile i64 %0, i64* @csmith_sink_, align 8, !dbg !149
  %1 = load volatile i64, i64* getelementptr inbounds (%struct.S1, %struct.S1* @g_8, i32 0, i32 1), align 1, !dbg !150
  store volatile i64 %1, i64* @csmith_sink_, align 8, !dbg !151
  %2 = load volatile i8, i8* getelementptr inbounds (%struct.S1, %struct.S1* @g_8, i32 0, i32 2), align 1, !dbg !152
  %conv = sext i8 %2 to i64, !dbg !153
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !154
  %3 = load volatile i32, i32* @g_14, align 4, !dbg !155
  %conv1 = sext i32 %3 to i64, !dbg !155
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !156
  %4 = load i32, i32* @g_16, align 4, !dbg !157
  %conv2 = sext i32 %4 to i64, !dbg !157
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !158
  %5 = load i64, i64* @g_17, align 8, !dbg !159
  store volatile i64 %5, i64* @csmith_sink_, align 8, !dbg !160
  %6 = load i8, i8* @g_18, align 1, !dbg !161
  %conv3 = sext i8 %6 to i64, !dbg !161
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !162
  %7 = load i32, i32* @g_20, align 4, !dbg !163
  %conv4 = sext i32 %7 to i64, !dbg !163
  store volatile i64 %conv4, i64* @csmith_sink_, align 8, !dbg !164
  store i32 0, i32* %i, align 4, !dbg !165
  br label %for.cond, !dbg !167

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !168
  %cmp = icmp slt i32 %8, 4, !dbg !170
  br i1 %cmp, label %for.body, label %for.end, !dbg !171

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !172
  %idxprom = sext i32 %9 to i64, !dbg !174
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @g_22, i64 0, i64 %idxprom, !dbg !174
  %10 = load i32, i32* %arrayidx, align 4, !dbg !174
  %conv6 = sext i32 %10 to i64, !dbg !174
  store volatile i64 %conv6, i64* @csmith_sink_, align 8, !dbg !175
  br label %for.inc, !dbg !176

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !177
  %inc = add nsw i32 %11, 1, !dbg !177
  store i32 %inc, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !178, !llvm.loop !179

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !182
  br label %for.cond7, !dbg !184

for.cond7:                                        ; preds = %for.inc11, %for.end
  %12 = load i32, i32* %i, align 4, !dbg !185
  %cmp8 = icmp slt i32 %12, 5, !dbg !187
  br i1 %cmp8, label %for.body10, label %for.end13, !dbg !188

for.body10:                                       ; preds = %for.cond7
  br label %for.inc11, !dbg !189

for.inc11:                                        ; preds = %for.body10
  %13 = load i32, i32* %i, align 4, !dbg !191
  %inc12 = add nsw i32 %13, 1, !dbg !191
  store i32 %inc12, i32* %i, align 4, !dbg !191
  br label %for.cond7, !dbg !192, !llvm.loop !193

for.end13:                                        ; preds = %for.cond7
  ret i32 0, !dbg !195
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/1")
!4 = !{}
!5 = !{!0, !6, !23, !28, !31, !33, !35, !37, !39, !44, !47, !51, !64}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "g_8", scope: !2, file: !3, line: 37, type: !8, isLocal: false, isDefinition: true)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S1", file: !3, line: 29, size: 136, elements: !9)
!9 = !{!10, !15, !19}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !8, file: !3, line: 30, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !13, line: 98, baseType: !14)
!13 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!14 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !8, file: !3, line: 31, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !13, line: 96, baseType: !18)
!18 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !8, file: !3, line: 32, baseType: !20, size: 8, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !13, line: 224, baseType: !22)
!22 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "g_14", scope: !2, file: !3, line: 38, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !13, line: 167, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "g_13", scope: !2, file: !3, line: 39, type: !30, isLocal: false, isDefinition: true)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "g_16", scope: !2, file: !3, line: 40, type: !26, isLocal: false, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "g_17", scope: !2, file: !3, line: 41, type: !12, isLocal: false, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "g_18", scope: !2, file: !3, line: 42, type: !21, isLocal: false, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "g_20", scope: !2, file: !3, line: 43, type: !26, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "g_22", scope: !2, file: !3, line: 44, type: !41, isLocal: false, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 4)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "g_21", scope: !2, file: !3, line: 45, type: !46, isLocal: false, isDefinition: true)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "g_23", scope: !2, file: !3, line: 46, type: !49, isLocal: false, isDefinition: true)
!49 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "g_24", scope: !2, file: !3, line: 47, type: !53, isLocal: false, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 440, elements: !62)
!54 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S0", file: !3, line: 19, size: 88, elements: !56)
!56 = !{!57, !58, !60, !61}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !55, file: !3, line: 20, baseType: !27, size: 29, flags: DIFlagBitField, extraData: i64 0)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !55, file: !3, line: 21, baseType: !59, size: 30, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!59 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !55, file: !3, line: 22, baseType: !27, size: 8, offset: 59, flags: DIFlagBitField, extraData: i64 0)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !55, file: !3, line: 23, baseType: !59, size: 20, offset: 67, flags: DIFlagBitField, extraData: i64 0)
!62 = !{!63}
!63 = !DISubrange(count: 5)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "g_25", scope: !2, file: !3, line: 48, type: !66, isLocal: false, isDefinition: true)
!66 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!68 = !{i32 7, !"Dwarf Version", i32 4}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 7, !"PIC Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!75 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 62, type: !76, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!76 = !DISubroutineType(types: !77)
!77 = !{!26}
!78 = !DILocalVariable(name: "l_10", scope: !75, file: !3, line: 64, type: !46)
!79 = !DILocation(line: 64, column: 14, scope: !75)
!80 = !DILocalVariable(name: "l_11", scope: !75, file: !3, line: 65, type: !50)
!81 = !DILocation(line: 65, column: 15, scope: !75)
!82 = !DILocalVariable(name: "l_12", scope: !75, file: !3, line: 66, type: !50)
!83 = !DILocation(line: 66, column: 15, scope: !75)
!84 = !DILocalVariable(name: "l_15", scope: !75, file: !3, line: 67, type: !85)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 13440, elements: !86)
!86 = !{!87, !88, !89}
!87 = !DISubrange(count: 10)
!88 = !DISubrange(count: 3)
!89 = !DISubrange(count: 7)
!90 = !DILocation(line: 67, column: 14, scope: !75)
!91 = !DILocalVariable(name: "l_19", scope: !75, file: !3, line: 68, type: !46)
!92 = !DILocation(line: 68, column: 14, scope: !75)
!93 = !DILocalVariable(name: "i", scope: !75, file: !3, line: 69, type: !27)
!94 = !DILocation(line: 69, column: 9, scope: !75)
!95 = !DILocalVariable(name: "j", scope: !75, file: !3, line: 69, type: !27)
!96 = !DILocation(line: 69, column: 12, scope: !75)
!97 = !DILocalVariable(name: "k", scope: !75, file: !3, line: 69, type: !27)
!98 = !DILocation(line: 69, column: 15, scope: !75)
!99 = !DILocation(line: 70, column: 72, scope: !75)
!100 = !DILocation(line: 70, column: 64, scope: !75)
!101 = !DILocation(line: 70, column: 70, scope: !75)
!102 = !DILocation(line: 70, column: 81, scope: !75)
!103 = !DILocation(line: 70, column: 78, scope: !75)
!104 = !DILocation(line: 70, column: 55, scope: !75)
!105 = !DILocation(line: 70, column: 49, scope: !75)
!106 = !DILocation(line: 70, column: 47, scope: !75)
!107 = !DILocation(line: 70, column: 93, scope: !75)
!108 = !DILocation(line: 70, column: 91, scope: !75)
!109 = !DILocation(line: 70, column: 33, scope: !75)
!110 = !DILocation(line: 70, column: 25, scope: !75)
!111 = !DILocation(line: 70, column: 31, scope: !75)
!112 = !DILocation(line: 70, column: 101, scope: !75)
!113 = !DILocation(line: 70, column: 107, scope: !75)
!114 = !DILocation(line: 70, column: 15, scope: !75)
!115 = !DILocation(line: 70, column: 7, scope: !75)
!116 = !DILocation(line: 70, column: 13, scope: !75)
!117 = !DILocation(line: 71, column: 7, scope: !75)
!118 = !DILocation(line: 71, column: 15, scope: !75)
!119 = !DILocation(line: 72, column: 20, scope: !75)
!120 = !DILocation(line: 72, column: 5, scope: !75)
!121 = distinct !DISubprogram(name: "func_2", scope: !3, file: !3, line: 81, type: !122, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !26, !26, !46, !46, !46}
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!125 = !DILocalVariable(name: "p_3", arg: 1, scope: !121, file: !3, line: 81, type: !26)
!126 = !DILocation(line: 81, column: 34, scope: !121)
!127 = !DILocalVariable(name: "p_4", arg: 2, scope: !121, file: !3, line: 81, type: !26)
!128 = !DILocation(line: 81, column: 48, scope: !121)
!129 = !DILocalVariable(name: "p_5", arg: 3, scope: !121, file: !3, line: 81, type: !46)
!130 = !DILocation(line: 81, column: 63, scope: !121)
!131 = !DILocalVariable(name: "p_6", arg: 4, scope: !121, file: !3, line: 81, type: !46)
!132 = !DILocation(line: 81, column: 78, scope: !121)
!133 = !DILocalVariable(name: "p_7", arg: 5, scope: !121, file: !3, line: 81, type: !46)
!134 = !DILocation(line: 81, column: 93, scope: !121)
!135 = !DILocation(line: 83, column: 17, scope: !121)
!136 = !DILocation(line: 83, column: 16, scope: !121)
!137 = !DILocation(line: 83, column: 7, scope: !121)
!138 = !DILocation(line: 83, column: 13, scope: !121)
!139 = !DILocation(line: 84, column: 5, scope: !121)
!140 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 91, type: !141, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!141 = !DISubroutineType(types: !142)
!142 = !{!27}
!143 = !DILocalVariable(name: "i", scope: !140, file: !3, line: 93, type: !27)
!144 = !DILocation(line: 93, column: 9, scope: !140)
!145 = !DILocalVariable(name: "print_hash_value", scope: !140, file: !3, line: 94, type: !27)
!146 = !DILocation(line: 94, column: 9, scope: !140)
!147 = !DILocation(line: 96, column: 5, scope: !140)
!148 = !DILocation(line: 97, column: 24, scope: !140)
!149 = !DILocation(line: 97, column: 18, scope: !140)
!150 = !DILocation(line: 98, column: 24, scope: !140)
!151 = !DILocation(line: 98, column: 18, scope: !140)
!152 = !DILocation(line: 99, column: 24, scope: !140)
!153 = !DILocation(line: 99, column: 20, scope: !140)
!154 = !DILocation(line: 99, column: 18, scope: !140)
!155 = !DILocation(line: 100, column: 20, scope: !140)
!156 = !DILocation(line: 100, column: 18, scope: !140)
!157 = !DILocation(line: 101, column: 20, scope: !140)
!158 = !DILocation(line: 101, column: 18, scope: !140)
!159 = !DILocation(line: 102, column: 20, scope: !140)
!160 = !DILocation(line: 102, column: 18, scope: !140)
!161 = !DILocation(line: 103, column: 20, scope: !140)
!162 = !DILocation(line: 103, column: 18, scope: !140)
!163 = !DILocation(line: 104, column: 20, scope: !140)
!164 = !DILocation(line: 104, column: 18, scope: !140)
!165 = !DILocation(line: 105, column: 12, scope: !166)
!166 = distinct !DILexicalBlock(scope: !140, file: !3, line: 105, column: 5)
!167 = !DILocation(line: 105, column: 10, scope: !166)
!168 = !DILocation(line: 105, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !3, line: 105, column: 5)
!170 = !DILocation(line: 105, column: 19, scope: !169)
!171 = !DILocation(line: 105, column: 5, scope: !166)
!172 = !DILocation(line: 107, column: 29, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !3, line: 106, column: 5)
!174 = !DILocation(line: 107, column: 24, scope: !173)
!175 = !DILocation(line: 107, column: 22, scope: !173)
!176 = !DILocation(line: 108, column: 5, scope: !173)
!177 = !DILocation(line: 105, column: 25, scope: !169)
!178 = !DILocation(line: 105, column: 5, scope: !169)
!179 = distinct !{!179, !171, !180, !181}
!180 = !DILocation(line: 108, column: 5, scope: !166)
!181 = !{!"llvm.loop.mustprogress"}
!182 = !DILocation(line: 109, column: 12, scope: !183)
!183 = distinct !DILexicalBlock(scope: !140, file: !3, line: 109, column: 5)
!184 = !DILocation(line: 109, column: 10, scope: !183)
!185 = !DILocation(line: 109, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !3, line: 109, column: 5)
!187 = !DILocation(line: 109, column: 19, scope: !186)
!188 = !DILocation(line: 109, column: 5, scope: !183)
!189 = !DILocation(line: 112, column: 5, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !3, line: 110, column: 5)
!191 = !DILocation(line: 109, column: 25, scope: !186)
!192 = !DILocation(line: 109, column: 5, scope: !186)
!193 = distinct !{!193, !188, !194, !181}
!194 = !DILocation(line: 112, column: 5, scope: !183)
!195 = !DILocation(line: 114, column: 5, scope: !140)
