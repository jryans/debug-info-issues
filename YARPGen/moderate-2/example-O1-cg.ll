; ModuleID = 'func.c'
source_filename = "func.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@var_15 = local_unnamed_addr global i64 -8147471851134533369, align 8, !dbg !0
@arr_5 = local_unnamed_addr global [25 x [10 x i16]] zeroinitializer, align 16, !dbg !14
@arr_6 = local_unnamed_addr global [25 x [10 x i8]] zeroinitializer, align 16, !dbg !20
@arr_7 = local_unnamed_addr global [25 x [10 x i8]] zeroinitializer, align 16, !dbg !23

; Function Attrs: nofree noinline norecurse nosync nounwind ssp uwtable
define void @test(i64 %var_0, i16 signext %var_1, i16 signext %var_8, i1 zeroext %var_9, i64 %var_11, i64 %var_12, i16 signext %var_13, i16* nocapture readonly %arr_0, [10 x i64]* nocapture readonly %arr_4) local_unnamed_addr #0 !dbg !33 {
entry:
  call void @llvm.dbg.value(metadata i64 %var_0, metadata !43, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i16 %var_1, metadata !44, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i16 %var_8, metadata !45, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i1 %var_9, metadata !46, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !67
  call void @llvm.dbg.value(metadata i64 %var_11, metadata !47, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i64 %var_12, metadata !48, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i16 %var_13, metadata !49, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i16* %arr_0, metadata !50, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata [10 x i64]* %arr_4, metadata !51, metadata !DIExpression()), !dbg !67
  %conv = trunc i64 %var_11 to i8, !dbg !68
  %sub = add i8 %conv, 72, !dbg !69
  call void @llvm.dbg.value(metadata i8 %sub, metadata !52, metadata !DIExpression()), !dbg !70
  %conv6 = zext i1 %var_9 to i32
  %0 = and i16 %var_8, 255
  %conv7 = zext i16 %0 to i32
  %cmp = icmp ugt i32 %conv6, %conv7
  %cond = select i1 %cmp, i32 %conv6, i32 %conv7
  %tobool11.not = icmp eq i32 %cond, 0
  %cond16 = select i1 %tobool11.not, i64 %var_12, i64 %var_0
  %conv17 = trunc i64 %cond16 to i32
  %conv18 = and i32 %conv17, 255
  %sub19 = add nsw i32 %conv18, -203
  %add = add i8 %conv, 71
  call void @llvm.dbg.value(metadata i8 %sub, metadata !52, metadata !DIExpression()), !dbg !70
  %conv3115 = zext i8 %sub to i32, !dbg !71
  %cmp20116 = icmp sgt i32 %sub19, %conv3115, !dbg !72
  br i1 %cmp20116, label %for.body.preheader, label %for.cond.cleanup, !dbg !73

for.body.preheader:                               ; preds = %entry
  br label %for.body, !dbg !73

for.cond.cleanup:                                 ; preds = %for.cond.cleanup29, %entry
  %cmp79 = icmp eq i64 %var_0, 0, !dbg !74
  %cond86.v = select i1 %cmp79, i16 %var_1, i16 %var_13, !dbg !75
  %conv87 = sext i16 %cond86.v to i64, !dbg !76
  store i64 %conv87, i64* @var_15, align 8, !dbg !77, !tbaa !78
  ret void, !dbg !82

for.body:                                         ; preds = %for.body.preheader, %for.cond.cleanup29
  %conv3118 = phi i32 [ %conv3, %for.cond.cleanup29 ], [ %conv3115, %for.body.preheader ]
  %1 = icmp slt i8 %add, 10
  %lsr = trunc i32 %conv3118 to i8
  call void @llvm.dbg.value(metadata i8 %lsr, metadata !52, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata i8 %add, metadata !58, metadata !DIExpression()), !dbg !83
  %idxprom = zext i8 %lsr to i64
  %sub36 = add nsw i32 %conv3118, -1
  %idxprom37 = sext i32 %sub36 to i64
  call void @llvm.dbg.value(metadata i8 %add, metadata !58, metadata !DIExpression()), !dbg !83
  br i1 %1, label %for.body30.preheader, label %for.cond.cleanup29, !dbg !84

for.body30.preheader:                             ; preds = %for.body
  br label %for.body30, !dbg !84

for.cond.cleanup29:                               ; preds = %for.body30, %for.body
  %2 = trunc i64 %idxprom to i8
  %add76 = add i8 %2, 4, !dbg !85
  call void @llvm.dbg.value(metadata i8 %add76, metadata !52, metadata !DIExpression()), !dbg !70
  %conv3 = zext i8 %add76 to i32, !dbg !71
  %cmp20 = icmp sgt i32 %sub19, %conv3, !dbg !72
  br i1 %cmp20, label %for.body, label %for.cond.cleanup, !dbg !73, !llvm.loop !86

for.body30:                                       ; preds = %for.body30.preheader, %for.body30
  %i_1.0114 = phi i8 [ %add72, %for.body30 ], [ %add, %for.body30.preheader ]
  call void @llvm.dbg.value(metadata i8 %i_1.0114, metadata !58, metadata !DIExpression()), !dbg !83
  %idxprom32 = sext i8 %i_1.0114 to i64, !dbg !90
  %arrayidx33 = getelementptr inbounds [10 x i64], [10 x i64]* %arr_4, i64 %idxprom, i64 %idxprom32, !dbg !90
  %3 = load i64, i64* %arrayidx33, align 8, !dbg !90, !tbaa !78
  call void @llvm.dbg.value(metadata i64 %3, metadata !61, metadata !DIExpression()), !dbg !91
  %arrayidx40 = getelementptr inbounds [10 x i64], [10 x i64]* %arr_4, i64 %idxprom37, i64 %idxprom32, !dbg !90
  %4 = load i64, i64* %arrayidx40, align 8, !dbg !90, !tbaa !78
  call void @llvm.dbg.value(metadata i64 %4, metadata !66, metadata !DIExpression()), !dbg !91
  %cmp42 = icmp ult i64 %3, %4, !dbg !90
  %cond47 = select i1 %cmp42, i64 %3, i64 %4, !dbg !90
  %5 = trunc i64 %cond47 to i16, !dbg !92
  %conv48 = xor i16 %5, -1, !dbg !92
  %arrayidx52 = getelementptr inbounds [25 x [10 x i16]], [25 x [10 x i16]]* @arr_5, i64 0, i64 %idxprom, i64 %idxprom32, !dbg !93
  store i16 %conv48, i16* %arrayidx52, align 2, !dbg !94, !tbaa !95
  %arrayidx56 = getelementptr inbounds [25 x [10 x i8]], [25 x [10 x i8]]* @arr_6, i64 0, i64 %idxprom, i64 %idxprom32, !dbg !97
  store i8 -1, i8* %arrayidx56, align 1, !dbg !98, !tbaa !99
  %6 = load i64, i64* %arrayidx33, align 8, !dbg !100, !tbaa !78
  %conv61 = trunc i64 %6 to i8, !dbg !101
  %arrayidx65 = getelementptr inbounds [25 x [10 x i8]], [25 x [10 x i8]]* @arr_7, i64 0, i64 %idxprom, i64 %idxprom32, !dbg !102
  store i8 %conv61, i8* %arrayidx65, align 1, !dbg !103, !tbaa !99
  %sunkaddr = mul i64 %idxprom, 2, !dbg !104
  %7 = bitcast i16* %arr_0 to i8*, !dbg !104
  %sunkaddr119 = getelementptr inbounds i8, i8* %7, i64 %sunkaddr, !dbg !104
  %8 = bitcast i8* %sunkaddr119 to i16*, !dbg !104
  %9 = load i16, i16* %8, align 2, !dbg !104, !tbaa !95
  %sext = trunc i16 %9 to i8, !dbg !105
  %sub70 = add i8 %i_1.0114, -1, !dbg !106
  %add72 = add i8 %sub70, %sext, !dbg !107
  call void @llvm.dbg.value(metadata i8 %add72, metadata !58, metadata !DIExpression()), !dbg !83
  %cmp27 = icmp slt i8 %add72, 10, !dbg !108
  br i1 %cmp27, label %for.body30, label %for.cond.cleanup29, !dbg !84, !llvm.loop !109
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nosync nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "var_15", scope: !2, file: !3, line: 6, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!3 = !DIFile(filename: "func.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/YARPGen/moderate-2")
!4 = !{}
!5 = !{!6, !7, !8, !9, !10, !11, !12}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!9 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!13 = !{!0, !14, !20, !23}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "arr_5", scope: !2, file: !3, line: 7, type: !16, isLocal: false, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 4000, elements: !17)
!17 = !{!18, !19}
!18 = !DISubrange(count: 25)
!19 = !DISubrange(count: 10)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "arr_6", scope: !2, file: !3, line: 8, type: !22, isLocal: false, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2000, elements: !17)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "arr_7", scope: !2, file: !3, line: 9, type: !25, isLocal: false, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2000, elements: !17)
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"Homebrew clang version 13.0.0"}
!33 = distinct !DISubprogram(name: "test", scope: !3, file: !3, line: 22, type: !34, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !42)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36, !37, !37, !8, !9, !9, !37, !38, !39}
!36 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!37 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640, elements: !41)
!41 = !{!19}
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !57, !58, !61, !66}
!43 = !DILocalVariable(name: "var_0", arg: 1, scope: !33, file: !3, line: 22, type: !36)
!44 = !DILocalVariable(name: "var_1", arg: 2, scope: !33, file: !3, line: 22, type: !37)
!45 = !DILocalVariable(name: "var_8", arg: 3, scope: !33, file: !3, line: 22, type: !37)
!46 = !DILocalVariable(name: "var_9", arg: 4, scope: !33, file: !3, line: 22, type: !8)
!47 = !DILocalVariable(name: "var_11", arg: 5, scope: !33, file: !3, line: 23, type: !9)
!48 = !DILocalVariable(name: "var_12", arg: 6, scope: !33, file: !3, line: 23, type: !9)
!49 = !DILocalVariable(name: "var_13", arg: 7, scope: !33, file: !3, line: 24, type: !37)
!50 = !DILocalVariable(name: "arr_0", arg: 8, scope: !33, file: !3, line: 24, type: !38)
!51 = !DILocalVariable(name: "arr_4", arg: 9, scope: !33, file: !3, line: 25, type: !39)
!52 = !DILocalVariable(name: "i_0", scope: !53, file: !3, line: 27, type: !7)
!53 = distinct !DILexicalBlock(scope: !33, file: !3, line: 27, column: 3)
!54 = !DILocalVariable(name: "_a", scope: !55, file: !3, line: 32, type: !7)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 32, column: 58)
!56 = distinct !DILexicalBlock(scope: !53, file: !3, line: 27, column: 3)
!57 = !DILocalVariable(name: "_b", scope: !55, file: !3, line: 32, type: !7)
!58 = !DILocalVariable(name: "i_1", scope: !59, file: !3, line: 40, type: !10)
!59 = distinct !DILexicalBlock(scope: !60, file: !3, line: 40, column: 5)
!60 = distinct !DILexicalBlock(scope: !56, file: !3, line: 39, column: 39)
!61 = !DILocalVariable(name: "_a", scope: !62, file: !3, line: 51, type: !9)
!62 = distinct !DILexicalBlock(scope: !63, file: !3, line: 51, column: 13)
!63 = distinct !DILexicalBlock(scope: !64, file: !3, line: 49, column: 7)
!64 = distinct !DILexicalBlock(scope: !65, file: !3, line: 48, column: 23)
!65 = distinct !DILexicalBlock(scope: !59, file: !3, line: 40, column: 5)
!66 = !DILocalVariable(name: "_b", scope: !62, file: !3, line: 51, type: !9)
!67 = !DILocation(line: 0, scope: !33)
!68 = !DILocation(line: 28, column: 36, scope: !53)
!69 = !DILocation(line: 28, column: 76, scope: !53)
!70 = !DILocation(line: 0, scope: !53)
!71 = !DILocation(line: 30, column: 8, scope: !56)
!72 = !DILocation(line: 30, column: 12, scope: !56)
!73 = !DILocation(line: 27, column: 3, scope: !53)
!74 = !DILocation(line: 59, column: 45, scope: !33)
!75 = !DILocation(line: 59, column: 33, scope: !33)
!76 = !DILocation(line: 58, column: 8, scope: !33)
!77 = !DILocation(line: 57, column: 10, scope: !33)
!78 = !{!79, !79, i64 0}
!79 = !{!"long long", !80, i64 0}
!80 = !{!"omnipotent char", !81, i64 0}
!81 = !{!"Simple C/C++ TBAA"}
!82 = !DILocation(line: 64, column: 1, scope: !33)
!83 = !DILocation(line: 0, scope: !59)
!84 = !DILocation(line: 40, column: 5, scope: !59)
!85 = !DILocation(line: 39, column: 12, scope: !56)
!86 = distinct !{!86, !73, !87, !88, !89}
!87 = !DILocation(line: 56, column: 3, scope: !53)
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !DILocation(line: 51, column: 13, scope: !62)
!91 = !DILocation(line: 0, scope: !62)
!92 = !DILocation(line: 50, column: 28, scope: !63)
!93 = !DILocation(line: 50, column: 9, scope: !63)
!94 = !DILocation(line: 50, column: 25, scope: !63)
!95 = !{!96, !96, i64 0}
!96 = !{!"short", !80, i64 0}
!97 = !DILocation(line: 52, column: 9, scope: !63)
!98 = !DILocation(line: 52, column: 25, scope: !63)
!99 = !{!80, !80, i64 0}
!100 = !DILocation(line: 53, column: 56, scope: !63)
!101 = !DILocation(line: 53, column: 28, scope: !63)
!102 = !DILocation(line: 53, column: 9, scope: !63)
!103 = !DILocation(line: 53, column: 25, scope: !63)
!104 = !DILocation(line: 47, column: 62, scope: !65)
!105 = !DILocation(line: 47, column: 13, scope: !65)
!106 = !DILocation(line: 47, column: 76, scope: !65)
!107 = !DILocation(line: 46, column: 14, scope: !65)
!108 = !DILocation(line: 43, column: 14, scope: !65)
!109 = distinct !{!109, !84, !110, !88, !89}
!110 = !DILocation(line: 55, column: 5, scope: !59)
