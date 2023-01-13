; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.S0 = type { i32, i32, i32, i32 }

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_3 = internal global i32 -311950268, align 4, !dbg !12
@g_5 = internal global i32 0, align 4, !dbg !14
@g_6 = internal global i8 63, align 1, !dbg !16
@g_29 = internal global i32 1, align 4, !dbg !33
@g_37 = internal global [3 x [3 x i32]] [[3 x i32] [i32 1080075191, i32 1080075191, i32 1080075191], [3 x i32] [i32 1, i32 1281321802, i32 1], [3 x i32] [i32 1080075191, i32 1080075191, i32 1080075191]], align 16, !dbg !35
@g_39 = internal global i8 -1, align 1, !dbg !41
@g_44 = internal global i64 0, align 8, !dbg !44
@g_56 = internal global [3 x i64] [i64 1669822552828607370, i64 1669822552828607370, i64 1669822552828607370], align 16, !dbg !48
@g_58 = internal global i16 1, align 2, !dbg !52
@g_67 = internal global i32 4, align 4, !dbg !56
@g_85 = internal global i64 0, align 8, !dbg !59
@g_86 = internal global i32 -2040841045, align 4, !dbg !63
@__const.func_1.l_4 = private unnamed_addr constant [5 x [4 x i32*]] [[4 x i32*] [i32* @g_3, i32* @g_3, i32* null, i32* null], [4 x i32*] [i32* @g_3, i32* @g_3, i32* null, i32* null], [4 x i32*] [i32* @g_3, i32* @g_3, i32* null, i32* null], [4 x i32*] [i32* @g_3, i32* @g_3, i32* null, i32* null], [4 x i32*] [i32* @g_3, i32* @g_3, i32* null, i32* null]], align 16
@g_21 = internal global { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i32 -1007481967, i8 -43, i8 3, i8 0, i8 0, i8 124, i8 1, i8 0, i8 0, i8 33, i8 -6, i8 -1, i8 3 }, align 4, !dbg !20

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !73 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %coerce = alloca %struct.S0, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %j, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %k, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %print_hash_value, align 4, !dbg !83
  %call = call { i64, i64 } @func_1(), !dbg !84
  %0 = bitcast %struct.S0* %coerce to { i64, i64 }*, !dbg !84
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0, !dbg !84
  %2 = extractvalue { i64, i64 } %call, 0, !dbg !84
  store i64 %2, i64* %1, align 4, !dbg !84
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1, !dbg !84
  %4 = extractvalue { i64, i64 } %call, 1, !dbg !84
  store i64 %4, i64* %3, align 4, !dbg !84
  %5 = load i32, i32* @g_3, align 4, !dbg !85
  %conv = sext i32 %5 to i64, !dbg !85
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !86
  %6 = load i32, i32* @g_5, align 4, !dbg !87
  %conv1 = sext i32 %6 to i64, !dbg !87
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !88
  %7 = load i8, i8* @g_6, align 1, !dbg !89
  %conv2 = zext i8 %7 to i64, !dbg !89
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !90
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21 to %struct.S0*), i32 0, i32 0), align 4, !dbg !91
  %conv3 = sext i32 %8 to i64, !dbg !92
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !93
  %bf.load = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21 to %struct.S0*), i32 0, i32 1), align 4, !dbg !94
  %bf.clear = and i32 %bf.load, 134217727, !dbg !94
  %conv4 = zext i32 %bf.clear to i64, !dbg !95
  store volatile i64 %conv4, i64* @csmith_sink_, align 8, !dbg !96
  %bf.load5 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21 to %struct.S0*), i32 0, i32 1), align 4, !dbg !97
  %bf.shl = shl i32 %bf.load5, 2, !dbg !97
  %bf.ashr = ashr i32 %bf.shl, 29, !dbg !97
  %conv6 = sext i32 %bf.ashr to i64, !dbg !98
  store volatile i64 %conv6, i64* @csmith_sink_, align 8, !dbg !99
  %bf.load7 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21 to %struct.S0*), i32 0, i32 2), align 4, !dbg !100
  %bf.shl8 = shl i32 %bf.load7, 7, !dbg !100
  %bf.ashr9 = ashr i32 %bf.shl8, 7, !dbg !100
  %conv10 = sext i32 %bf.ashr9 to i64, !dbg !101
  store volatile i64 %conv10, i64* @csmith_sink_, align 8, !dbg !102
  %bf.load11 = load volatile i32, i32* getelementptr inbounds (%struct.S0, %struct.S0* bitcast ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21 to %struct.S0*), i32 0, i32 3), align 4, !dbg !103
  %bf.shl12 = shl i32 %bf.load11, 6, !dbg !103
  %bf.ashr13 = ashr i32 %bf.shl12, 6, !dbg !103
  %conv14 = sext i32 %bf.ashr13 to i64, !dbg !104
  store volatile i64 %conv14, i64* @csmith_sink_, align 8, !dbg !105
  %9 = load i32, i32* @g_29, align 4, !dbg !106
  %conv15 = sext i32 %9 to i64, !dbg !106
  store volatile i64 %conv15, i64* @csmith_sink_, align 8, !dbg !107
  store i32 0, i32* %i, align 4, !dbg !108
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc24, %entry
  %10 = load i32, i32* %i, align 4, !dbg !111
  %cmp = icmp slt i32 %10, 3, !dbg !113
  br i1 %cmp, label %for.body, label %for.end26, !dbg !114

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !115
  br label %for.cond17, !dbg !118

for.cond17:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4, !dbg !119
  %cmp18 = icmp slt i32 %11, 3, !dbg !121
  br i1 %cmp18, label %for.body20, label %for.end, !dbg !122

for.body20:                                       ; preds = %for.cond17
  %12 = load i32, i32* %i, align 4, !dbg !123
  %idxprom = sext i32 %12 to i64, !dbg !125
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @g_37, i64 0, i64 %idxprom, !dbg !125
  %13 = load i32, i32* %j, align 4, !dbg !126
  %idxprom21 = sext i32 %13 to i64, !dbg !125
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i64 0, i64 %idxprom21, !dbg !125
  %14 = load volatile i32, i32* %arrayidx22, align 4, !dbg !125
  %conv23 = sext i32 %14 to i64, !dbg !125
  store volatile i64 %conv23, i64* @csmith_sink_, align 8, !dbg !127
  br label %for.inc, !dbg !128

for.inc:                                          ; preds = %for.body20
  %15 = load i32, i32* %j, align 4, !dbg !129
  %inc = add nsw i32 %15, 1, !dbg !129
  store i32 %inc, i32* %j, align 4, !dbg !129
  br label %for.cond17, !dbg !130, !llvm.loop !131

for.end:                                          ; preds = %for.cond17
  br label %for.inc24, !dbg !134

for.inc24:                                        ; preds = %for.end
  %16 = load i32, i32* %i, align 4, !dbg !135
  %inc25 = add nsw i32 %16, 1, !dbg !135
  store i32 %inc25, i32* %i, align 4, !dbg !135
  br label %for.cond, !dbg !136, !llvm.loop !137

for.end26:                                        ; preds = %for.cond
  %17 = load volatile i8, i8* @g_39, align 1, !dbg !139
  %conv27 = zext i8 %17 to i64, !dbg !139
  store volatile i64 %conv27, i64* @csmith_sink_, align 8, !dbg !140
  %18 = load i64, i64* @g_44, align 8, !dbg !141
  store volatile i64 %18, i64* @csmith_sink_, align 8, !dbg !142
  store i32 0, i32* %i, align 4, !dbg !143
  br label %for.cond28, !dbg !145

for.cond28:                                       ; preds = %for.inc34, %for.end26
  %19 = load i32, i32* %i, align 4, !dbg !146
  %cmp29 = icmp slt i32 %19, 3, !dbg !148
  br i1 %cmp29, label %for.body31, label %for.end36, !dbg !149

for.body31:                                       ; preds = %for.cond28
  %20 = load i32, i32* %i, align 4, !dbg !150
  %idxprom32 = sext i32 %20 to i64, !dbg !152
  %arrayidx33 = getelementptr inbounds [3 x i64], [3 x i64]* @g_56, i64 0, i64 %idxprom32, !dbg !152
  %21 = load i64, i64* %arrayidx33, align 8, !dbg !152
  store volatile i64 %21, i64* @csmith_sink_, align 8, !dbg !153
  br label %for.inc34, !dbg !154

for.inc34:                                        ; preds = %for.body31
  %22 = load i32, i32* %i, align 4, !dbg !155
  %inc35 = add nsw i32 %22, 1, !dbg !155
  store i32 %inc35, i32* %i, align 4, !dbg !155
  br label %for.cond28, !dbg !156, !llvm.loop !157

for.end36:                                        ; preds = %for.cond28
  %23 = load i16, i16* @g_58, align 2, !dbg !159
  %conv37 = sext i16 %23 to i64, !dbg !159
  store volatile i64 %conv37, i64* @csmith_sink_, align 8, !dbg !160
  %24 = load i32, i32* @g_67, align 4, !dbg !161
  %conv38 = zext i32 %24 to i64, !dbg !161
  store volatile i64 %conv38, i64* @csmith_sink_, align 8, !dbg !162
  %25 = load i64, i64* @g_85, align 8, !dbg !163
  store volatile i64 %25, i64* @csmith_sink_, align 8, !dbg !164
  %26 = load i32, i32* @g_86, align 4, !dbg !165
  %conv39 = zext i32 %26 to i64, !dbg !165
  store volatile i64 %conv39, i64* @csmith_sink_, align 8, !dbg !166
  store i32 0, i32* %i, align 4, !dbg !167
  br label %for.cond40, !dbg !169

for.cond40:                                       ; preds = %for.inc58, %for.end36
  %27 = load i32, i32* %i, align 4, !dbg !170
  %cmp41 = icmp slt i32 %27, 4, !dbg !172
  br i1 %cmp41, label %for.body43, label %for.end60, !dbg !173

for.body43:                                       ; preds = %for.cond40
  store i32 0, i32* %j, align 4, !dbg !174
  br label %for.cond44, !dbg !177

for.cond44:                                       ; preds = %for.inc55, %for.body43
  %28 = load i32, i32* %j, align 4, !dbg !178
  %cmp45 = icmp slt i32 %28, 10, !dbg !180
  br i1 %cmp45, label %for.body47, label %for.end57, !dbg !181

for.body47:                                       ; preds = %for.cond44
  store i32 0, i32* %k, align 4, !dbg !182
  br label %for.cond48, !dbg !185

for.cond48:                                       ; preds = %for.inc52, %for.body47
  %29 = load i32, i32* %k, align 4, !dbg !186
  %cmp49 = icmp slt i32 %29, 6, !dbg !188
  br i1 %cmp49, label %for.body51, label %for.end54, !dbg !189

for.body51:                                       ; preds = %for.cond48
  br label %for.inc52, !dbg !190

for.inc52:                                        ; preds = %for.body51
  %30 = load i32, i32* %k, align 4, !dbg !192
  %inc53 = add nsw i32 %30, 1, !dbg !192
  store i32 %inc53, i32* %k, align 4, !dbg !192
  br label %for.cond48, !dbg !193, !llvm.loop !194

for.end54:                                        ; preds = %for.cond48
  br label %for.inc55, !dbg !196

for.inc55:                                        ; preds = %for.end54
  %31 = load i32, i32* %j, align 4, !dbg !197
  %inc56 = add nsw i32 %31, 1, !dbg !197
  store i32 %inc56, i32* %j, align 4, !dbg !197
  br label %for.cond44, !dbg !198, !llvm.loop !199

for.end57:                                        ; preds = %for.cond44
  br label %for.inc58, !dbg !201

for.inc58:                                        ; preds = %for.end57
  %32 = load i32, i32* %i, align 4, !dbg !202
  %inc59 = add nsw i32 %32, 1, !dbg !202
  store i32 %inc59, i32* %i, align 4, !dbg !202
  br label %for.cond40, !dbg !203, !llvm.loop !204

for.end60:                                        ; preds = %for.cond40
  store volatile i64 -1410534586, i64* @csmith_sink_, align 8, !dbg !206
  ret i32 0, !dbg !207
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal { i64, i64 } @func_1() #0 !dbg !208 {
entry:
  %retval = alloca %struct.S0, align 4
  %l_2 = alloca i32*, align 8
  %l_4 = alloca [5 x [4 x i32*]], align 16
  %l_22 = alloca i32*, align 8
  %l_23 = alloca i32**, align 8
  %l_84 = alloca i64*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32** %l_2, metadata !211, metadata !DIExpression()), !dbg !213
  store i32* @g_3, i32** %l_2, align 8, !dbg !213
  call void @llvm.dbg.declare(metadata [5 x [4 x i32*]]* %l_4, metadata !214, metadata !DIExpression()), !dbg !219
  %0 = bitcast [5 x [4 x i32*]]* %l_4 to i8*, !dbg !219
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x [4 x i32*]]* @__const.func_1.l_4 to i8*), i64 160, i1 false), !dbg !219
  call void @llvm.dbg.declare(metadata i32** %l_22, metadata !220, metadata !DIExpression()), !dbg !221
  store i32* @g_3, i32** %l_22, align 8, !dbg !221
  call void @llvm.dbg.declare(metadata i32*** %l_23, metadata !222, metadata !DIExpression()), !dbg !224
  %arrayidx = getelementptr inbounds [5 x [4 x i32*]], [5 x [4 x i32*]]* %l_4, i64 0, i64 0, !dbg !225
  %arrayidx1 = getelementptr inbounds [4 x i32*], [4 x i32*]* %arrayidx, i64 0, i64 1, !dbg !225
  store i32** %arrayidx1, i32*** %l_23, align 8, !dbg !224
  call void @llvm.dbg.declare(metadata i64** %l_84, metadata !226, metadata !DIExpression()), !dbg !228
  store i64* @g_85, i64** %l_84, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata i32* %i, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata i32* %j, metadata !231, metadata !DIExpression()), !dbg !232
  %1 = load i8, i8* @g_6, align 1, !dbg !233
  %inc = add i8 %1, 1, !dbg !233
  store i8 %inc, i8* @g_6, align 1, !dbg !233
  %2 = bitcast %struct.S0* %retval to i8*, !dbg !234
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast ({ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @g_21 to i8*), i64 16, i1 true), !dbg !234
  %3 = bitcast %struct.S0* %retval to { i64, i64 }*, !dbg !235
  %4 = load { i64, i64 }, { i64, i64 }* %3, align 4, !dbg !235
  ret { i64, i64 } %4, !dbg !235
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !65, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Homebrew clang version 13.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-11T18:05/4")
!4 = !{}
!5 = !{!0, !6, !12, !14, !16, !20, !33, !35, !41, !44, !48, !52, !56, !59, !63}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 18446744072299017030, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "g_105", scope: !2, file: !3, line: 42, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !10, line: 167, baseType: !11)
!10 = !DIFile(filename: "/usr/local/Cellar/llvm/13.0.0_1/lib/clang/13.0.0/include/stdint.h", directory: "")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "g_3", scope: !2, file: !3, line: 26, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "g_5", scope: !2, file: !3, line: 27, type: !9, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "g_6", scope: !2, file: !3, line: 28, type: !18, isLocal: true, isDefinition: true)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !10, line: 226, baseType: !19)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "g_21", scope: !2, file: !3, line: 29, type: !22, isLocal: true, isDefinition: true)
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S0", file: !3, line: 17, size: 128, elements: !24)
!24 = !{!25, !26, !28, !31, !32}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !23, file: !3, line: 18, baseType: !9, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !23, file: !3, line: 19, baseType: !27, size: 27, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !23, file: !3, line: 20, baseType: !29, size: 3, offset: 59, flags: DIFlagBitField, extraData: i64 32)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "f3", scope: !23, file: !3, line: 21, baseType: !11, size: 25, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "f4", scope: !23, file: !3, line: 22, baseType: !11, size: 26, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "g_29", scope: !2, file: !3, line: 30, type: !9, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "g_37", scope: !2, file: !3, line: 32, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 288, elements: !39)
!38 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !9)
!39 = !{!40, !40}
!40 = !DISubrange(count: 3)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "g_39", scope: !2, file: !3, line: 33, type: !43, isLocal: true, isDefinition: true)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "g_44", scope: !2, file: !3, line: 34, type: !46, isLocal: true, isDefinition: true)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !10, line: 96, baseType: !47)
!47 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "g_56", scope: !2, file: !3, line: 35, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 192, elements: !51)
!51 = !{!40}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "g_58", scope: !2, file: !3, line: 36, type: !54, isLocal: true, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !10, line: 205, baseType: !55)
!55 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "g_67", scope: !2, file: !3, line: 37, type: !58, isLocal: true, isDefinition: true)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 172, baseType: !27)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "g_85", scope: !2, file: !3, line: 39, type: !61, isLocal: true, isDefinition: true)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !10, line: 98, baseType: !62)
!62 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "g_86", scope: !2, file: !3, line: 40, type: !58, isLocal: true, isDefinition: true)
!65 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!66 = !{i32 7, !"Dwarf Version", i32 4}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 7, !"PIC Level", i32 2}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"Homebrew clang version 13.0.0"}
!73 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 162, type: !74, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!74 = !DISubroutineType(types: !75)
!75 = !{!11}
!76 = !DILocalVariable(name: "i", scope: !73, file: !3, line: 164, type: !11)
!77 = !DILocation(line: 164, column: 9, scope: !73)
!78 = !DILocalVariable(name: "j", scope: !73, file: !3, line: 164, type: !11)
!79 = !DILocation(line: 164, column: 12, scope: !73)
!80 = !DILocalVariable(name: "k", scope: !73, file: !3, line: 164, type: !11)
!81 = !DILocation(line: 164, column: 15, scope: !73)
!82 = !DILocalVariable(name: "print_hash_value", scope: !73, file: !3, line: 165, type: !11)
!83 = !DILocation(line: 165, column: 9, scope: !73)
!84 = !DILocation(line: 167, column: 5, scope: !73)
!85 = !DILocation(line: 168, column: 20, scope: !73)
!86 = !DILocation(line: 168, column: 18, scope: !73)
!87 = !DILocation(line: 169, column: 20, scope: !73)
!88 = !DILocation(line: 169, column: 18, scope: !73)
!89 = !DILocation(line: 170, column: 20, scope: !73)
!90 = !DILocation(line: 170, column: 18, scope: !73)
!91 = !DILocation(line: 171, column: 25, scope: !73)
!92 = !DILocation(line: 171, column: 20, scope: !73)
!93 = !DILocation(line: 171, column: 18, scope: !73)
!94 = !DILocation(line: 172, column: 25, scope: !73)
!95 = !DILocation(line: 172, column: 20, scope: !73)
!96 = !DILocation(line: 172, column: 18, scope: !73)
!97 = !DILocation(line: 173, column: 25, scope: !73)
!98 = !DILocation(line: 173, column: 20, scope: !73)
!99 = !DILocation(line: 173, column: 18, scope: !73)
!100 = !DILocation(line: 174, column: 25, scope: !73)
!101 = !DILocation(line: 174, column: 20, scope: !73)
!102 = !DILocation(line: 174, column: 18, scope: !73)
!103 = !DILocation(line: 175, column: 25, scope: !73)
!104 = !DILocation(line: 175, column: 20, scope: !73)
!105 = !DILocation(line: 175, column: 18, scope: !73)
!106 = !DILocation(line: 176, column: 20, scope: !73)
!107 = !DILocation(line: 176, column: 18, scope: !73)
!108 = !DILocation(line: 177, column: 12, scope: !109)
!109 = distinct !DILexicalBlock(scope: !73, file: !3, line: 177, column: 5)
!110 = !DILocation(line: 177, column: 10, scope: !109)
!111 = !DILocation(line: 177, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !3, line: 177, column: 5)
!113 = !DILocation(line: 177, column: 19, scope: !112)
!114 = !DILocation(line: 177, column: 5, scope: !109)
!115 = !DILocation(line: 179, column: 16, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 179, column: 9)
!117 = distinct !DILexicalBlock(scope: !112, file: !3, line: 178, column: 5)
!118 = !DILocation(line: 179, column: 14, scope: !116)
!119 = !DILocation(line: 179, column: 21, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !3, line: 179, column: 9)
!121 = !DILocation(line: 179, column: 23, scope: !120)
!122 = !DILocation(line: 179, column: 9, scope: !116)
!123 = !DILocation(line: 181, column: 33, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 180, column: 9)
!125 = !DILocation(line: 181, column: 28, scope: !124)
!126 = !DILocation(line: 181, column: 36, scope: !124)
!127 = !DILocation(line: 181, column: 26, scope: !124)
!128 = !DILocation(line: 182, column: 9, scope: !124)
!129 = !DILocation(line: 179, column: 29, scope: !120)
!130 = !DILocation(line: 179, column: 9, scope: !120)
!131 = distinct !{!131, !122, !132, !133}
!132 = !DILocation(line: 182, column: 9, scope: !116)
!133 = !{!"llvm.loop.mustprogress"}
!134 = !DILocation(line: 183, column: 5, scope: !117)
!135 = !DILocation(line: 177, column: 25, scope: !112)
!136 = !DILocation(line: 177, column: 5, scope: !112)
!137 = distinct !{!137, !114, !138, !133}
!138 = !DILocation(line: 183, column: 5, scope: !109)
!139 = !DILocation(line: 184, column: 20, scope: !73)
!140 = !DILocation(line: 184, column: 18, scope: !73)
!141 = !DILocation(line: 185, column: 20, scope: !73)
!142 = !DILocation(line: 185, column: 18, scope: !73)
!143 = !DILocation(line: 186, column: 12, scope: !144)
!144 = distinct !DILexicalBlock(scope: !73, file: !3, line: 186, column: 5)
!145 = !DILocation(line: 186, column: 10, scope: !144)
!146 = !DILocation(line: 186, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !3, line: 186, column: 5)
!148 = !DILocation(line: 186, column: 19, scope: !147)
!149 = !DILocation(line: 186, column: 5, scope: !144)
!150 = !DILocation(line: 188, column: 29, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !3, line: 187, column: 5)
!152 = !DILocation(line: 188, column: 24, scope: !151)
!153 = !DILocation(line: 188, column: 22, scope: !151)
!154 = !DILocation(line: 189, column: 5, scope: !151)
!155 = !DILocation(line: 186, column: 25, scope: !147)
!156 = !DILocation(line: 186, column: 5, scope: !147)
!157 = distinct !{!157, !149, !158, !133}
!158 = !DILocation(line: 189, column: 5, scope: !144)
!159 = !DILocation(line: 190, column: 20, scope: !73)
!160 = !DILocation(line: 190, column: 18, scope: !73)
!161 = !DILocation(line: 191, column: 20, scope: !73)
!162 = !DILocation(line: 191, column: 18, scope: !73)
!163 = !DILocation(line: 192, column: 20, scope: !73)
!164 = !DILocation(line: 192, column: 18, scope: !73)
!165 = !DILocation(line: 193, column: 20, scope: !73)
!166 = !DILocation(line: 193, column: 18, scope: !73)
!167 = !DILocation(line: 194, column: 12, scope: !168)
!168 = distinct !DILexicalBlock(scope: !73, file: !3, line: 194, column: 5)
!169 = !DILocation(line: 194, column: 10, scope: !168)
!170 = !DILocation(line: 194, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !3, line: 194, column: 5)
!172 = !DILocation(line: 194, column: 19, scope: !171)
!173 = !DILocation(line: 194, column: 5, scope: !168)
!174 = !DILocation(line: 196, column: 16, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !3, line: 196, column: 9)
!176 = distinct !DILexicalBlock(scope: !171, file: !3, line: 195, column: 5)
!177 = !DILocation(line: 196, column: 14, scope: !175)
!178 = !DILocation(line: 196, column: 21, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !3, line: 196, column: 9)
!180 = !DILocation(line: 196, column: 23, scope: !179)
!181 = !DILocation(line: 196, column: 9, scope: !175)
!182 = !DILocation(line: 198, column: 20, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 198, column: 13)
!184 = distinct !DILexicalBlock(scope: !179, file: !3, line: 197, column: 9)
!185 = !DILocation(line: 198, column: 18, scope: !183)
!186 = !DILocation(line: 198, column: 25, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !3, line: 198, column: 13)
!188 = !DILocation(line: 198, column: 27, scope: !187)
!189 = !DILocation(line: 198, column: 13, scope: !183)
!190 = !DILocation(line: 201, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !3, line: 199, column: 13)
!192 = !DILocation(line: 198, column: 33, scope: !187)
!193 = !DILocation(line: 198, column: 13, scope: !187)
!194 = distinct !{!194, !189, !195, !133}
!195 = !DILocation(line: 201, column: 13, scope: !183)
!196 = !DILocation(line: 202, column: 9, scope: !184)
!197 = !DILocation(line: 196, column: 30, scope: !179)
!198 = !DILocation(line: 196, column: 9, scope: !179)
!199 = distinct !{!199, !181, !200, !133}
!200 = !DILocation(line: 202, column: 9, scope: !175)
!201 = !DILocation(line: 203, column: 5, scope: !176)
!202 = !DILocation(line: 194, column: 25, scope: !171)
!203 = !DILocation(line: 194, column: 5, scope: !171)
!204 = distinct !{!204, !173, !205, !133}
!205 = !DILocation(line: 203, column: 5, scope: !168)
!206 = !DILocation(line: 204, column: 18, scope: !73)
!207 = !DILocation(line: 206, column: 5, scope: !73)
!208 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 57, type: !209, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!209 = !DISubroutineType(types: !210)
!210 = !{!23}
!211 = !DILocalVariable(name: "l_2", scope: !208, file: !3, line: 59, type: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!213 = !DILocation(line: 59, column: 14, scope: !208)
!214 = !DILocalVariable(name: "l_4", scope: !208, file: !3, line: 60, type: !215)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 1280, elements: !216)
!216 = !{!217, !218}
!217 = !DISubrange(count: 5)
!218 = !DISubrange(count: 4)
!219 = !DILocation(line: 60, column: 14, scope: !208)
!220 = !DILocalVariable(name: "l_22", scope: !208, file: !3, line: 61, type: !212)
!221 = !DILocation(line: 61, column: 14, scope: !208)
!222 = !DILocalVariable(name: "l_23", scope: !208, file: !3, line: 62, type: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!224 = !DILocation(line: 62, column: 15, scope: !208)
!225 = !DILocation(line: 62, column: 23, scope: !208)
!226 = !DILocalVariable(name: "l_84", scope: !208, file: !3, line: 63, type: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!228 = !DILocation(line: 63, column: 15, scope: !208)
!229 = !DILocalVariable(name: "i", scope: !208, file: !3, line: 64, type: !11)
!230 = !DILocation(line: 64, column: 9, scope: !208)
!231 = !DILocalVariable(name: "j", scope: !208, file: !3, line: 64, type: !11)
!232 = !DILocation(line: 64, column: 12, scope: !208)
!233 = !DILocation(line: 65, column: 8, scope: !208)
!234 = !DILocation(line: 66, column: 12, scope: !208)
!235 = !DILocation(line: 66, column: 5, scope: !208)
