; ModuleID = 'func.c'
source_filename = "func.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@var_15 = local_unnamed_addr global i8 -17, align 1, !dbg !0
@var_16 = local_unnamed_addr global i64 -1884285130649526590, align 8, !dbg !13
@var_17 = local_unnamed_addr global i8 49, align 1, !dbg !15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable willreturn writeonly
define void @test(i8 signext %var_0, i8 signext %var_4, i1 zeroext %var_8, i8 zeroext %var_9, i16 zeroext %var_10, i16 zeroext %var_11, i8 signext %var_12, i8 signext %var_14) local_unnamed_addr #0 !dbg !24 {
entry:
  call void @llvm.dbg.value(metadata i8 %var_0, metadata !28, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i8 %var_4, metadata !29, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i1 %var_8, metadata !30, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !53
  call void @llvm.dbg.value(metadata i8 %var_9, metadata !31, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i16 %var_10, metadata !32, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i16 %var_11, metadata !33, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i8 %var_12, metadata !34, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.value(metadata i8 %var_14, metadata !35, metadata !DIExpression()), !dbg !53
  %conv = sext i8 %var_14 to i32, !dbg !54
  call void @llvm.dbg.value(metadata i16 %var_11, metadata !38, metadata !DIExpression()), !dbg !55
  %conv1 = and i32 %conv, 65535, !dbg !54
  call void @llvm.dbg.value(metadata i32 %conv, metadata !36, metadata !DIExpression()), !dbg !55
  %conv2 = zext i16 %var_11 to i32, !dbg !54
  %cmp = icmp ugt i32 %conv1, %conv2, !dbg !54
  %cond = select i1 %cmp, i32 %conv1, i32 %conv2, !dbg !54
  %tobool.not = icmp eq i32 %cond, 0, !dbg !56
  br i1 %tobool.not, label %cond.false10, label %cond.true7, !dbg !57

cond.true7:                                       ; preds = %entry
  %conv8 = sext i8 %var_12 to i32, !dbg !58
  %and = and i32 %conv8, 96, !dbg !59
  %sub = add nsw i32 %conv8, -83, !dbg !60
  %shl = shl i32 %and, %sub, !dbg !61
  br label %cond.end29, !dbg !57

cond.false10:                                     ; preds = %entry
  %tobool12 = icmp ne i8 %var_9, 0, !dbg !62
  %tobool14 = icmp ne i8 %var_4, 0, !dbg !62
  %0 = select i1 %tobool12, i1 true, i1 %tobool14, !dbg !62
  call void @llvm.dbg.value(metadata i8 43, metadata !41, metadata !DIExpression()), !dbg !63
  %conv19 = zext i1 %0 to i32, !dbg !62
  call void @llvm.dbg.value(metadata i32 %conv19, metadata !39, metadata !DIExpression()), !dbg !63
  br label %cond.end29, !dbg !57

cond.end29:                                       ; preds = %cond.false10, %cond.true7
  %cond30 = phi i32 [ %shl, %cond.true7 ], [ %conv19, %cond.false10 ], !dbg !57
  %conv31 = trunc i32 %cond30 to i8, !dbg !64
  store i8 %conv31, i8* @var_15, align 1, !dbg !65, !tbaa !66
  %tobool32.not = icmp eq i8 %var_0, 0, !dbg !69
  br i1 %tobool32.not, label %if.end, label %if.then, !dbg !70

if.then:                                          ; preds = %cond.end29
  call void @llvm.dbg.value(metadata i16 %var_11, metadata !42, metadata !DIExpression()), !dbg !71
  %conv39 = zext i1 %var_8 to i32, !dbg !72
  call void @llvm.dbg.value(metadata i32 %conv39, metadata !46, metadata !DIExpression()), !dbg !71
  %cmp40 = icmp ult i32 %conv2, %conv39, !dbg !72
  %cond47 = select i1 %cmp40, i32 %conv2, i32 %conv39, !dbg !72
  %div = sdiv i32 %cond47, %conv, !dbg !73
  %tobool61.not = icmp eq i32 %div, 0, !dbg !74
  br i1 %tobool61.not, label %cond.false83, label %cond.true63, !dbg !75

cond.true63:                                      ; preds = %if.then
  %tobool64.not = icmp eq i8 %var_14, 0, !dbg !76
  br i1 %tobool64.not, label %cond.false67, label %cond.end86, !dbg !77

cond.false67:                                     ; preds = %cond.true63
  call void @llvm.dbg.value(metadata i16 -2412, metadata !50, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i16 %var_10, metadata !52, metadata !DIExpression()), !dbg !78
  %conv72 = zext i16 %var_10 to i32, !dbg !79
  %1 = icmp ult i32 %conv72, 63124, !dbg !79
  %cond80 = select i1 %1, i32 %conv72, i32 63124, !dbg !79
  br label %cond.end86, !dbg !77

cond.false83:                                     ; preds = %if.then
  %conv84 = sext i8 %var_0 to i32, !dbg !80
  %sub85 = add nsw i32 %conv84, -24576, !dbg !81
  br label %cond.end86, !dbg !75

cond.end86:                                       ; preds = %cond.false67, %cond.true63, %cond.false83
  %cond87 = phi i32 [ %sub85, %cond.false83 ], [ %cond80, %cond.false67 ], [ 1, %cond.true63 ], !dbg !75
  %conv88 = sext i32 %cond87 to i64, !dbg !82
  store i64 %conv88, i64* @var_16, align 8, !dbg !83, !tbaa !84
  store i8 0, i8* @var_17, align 1, !dbg !86, !tbaa !66
  br label %if.end, !dbg !87

if.end:                                           ; preds = %cond.end86, %cond.end29
  ret void, !dbg !88
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind ssp uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "var_15", scope: !2, file: !3, line: 6, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !12, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!3 = !DIFile(filename: "func.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/YARPGen/moderate-1")
!4 = !{}
!5 = !{!6, !7, !8, !9, !10, !11}
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!10 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !{!0, !13, !15}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "var_16", scope: !2, file: !3, line: 7, type: !11, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "var_17", scope: !2, file: !3, line: 8, type: !6, isLocal: false, isDefinition: true)
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Homebrew clang version 13.0.0"}
!24 = distinct !DISubprogram(name: "test", scope: !3, file: !3, line: 21, type: !25, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !10, !10, !7, !6, !9, !9, !10, !10}
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !41, !42, !46, !47, !49, !50, !52}
!28 = !DILocalVariable(name: "var_0", arg: 1, scope: !24, file: !3, line: 21, type: !10)
!29 = !DILocalVariable(name: "var_4", arg: 2, scope: !24, file: !3, line: 21, type: !10)
!30 = !DILocalVariable(name: "var_8", arg: 3, scope: !24, file: !3, line: 21, type: !7)
!31 = !DILocalVariable(name: "var_9", arg: 4, scope: !24, file: !3, line: 22, type: !6)
!32 = !DILocalVariable(name: "var_10", arg: 5, scope: !24, file: !3, line: 22, type: !9)
!33 = !DILocalVariable(name: "var_11", arg: 6, scope: !24, file: !3, line: 22, type: !9)
!34 = !DILocalVariable(name: "var_12", arg: 7, scope: !24, file: !3, line: 23, type: !10)
!35 = !DILocalVariable(name: "var_14", arg: 8, scope: !24, file: !3, line: 23, type: !10)
!36 = !DILocalVariable(name: "_a", scope: !37, file: !3, line: 26, type: !9)
!37 = distinct !DILexicalBlock(scope: !24, file: !3, line: 26, column: 72)
!38 = !DILocalVariable(name: "_b", scope: !37, file: !3, line: 26, type: !9)
!39 = !DILocalVariable(name: "_a", scope: !40, file: !3, line: 32, type: !6)
!40 = distinct !DILexicalBlock(scope: !24, file: !3, line: 32, column: 52)
!41 = !DILocalVariable(name: "_b", scope: !40, file: !3, line: 32, type: !6)
!42 = !DILocalVariable(name: "_a", scope: !43, file: !3, line: 43, type: !9)
!43 = distinct !DILexicalBlock(scope: !44, file: !3, line: 43, column: 61)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 39, column: 38)
!45 = distinct !DILexicalBlock(scope: !24, file: !3, line: 39, column: 7)
!46 = !DILocalVariable(name: "_b", scope: !43, file: !3, line: 43, type: !9)
!47 = !DILocalVariable(name: "_a", scope: !48, file: !3, line: 47, type: !10)
!48 = distinct !DILexicalBlock(scope: !44, file: !3, line: 47, column: 61)
!49 = !DILocalVariable(name: "_b", scope: !48, file: !3, line: 47, type: !10)
!50 = !DILocalVariable(name: "_a", scope: !51, file: !3, line: 51, type: !9)
!51 = distinct !DILexicalBlock(scope: !44, file: !3, line: 51, column: 71)
!52 = !DILocalVariable(name: "_b", scope: !51, file: !3, line: 51, type: !9)
!53 = !DILocation(line: 0, scope: !24)
!54 = !DILocation(line: 26, column: 72, scope: !37)
!55 = !DILocation(line: 0, scope: !37)
!56 = !DILocation(line: 26, column: 26, scope: !24)
!57 = !DILocation(line: 26, column: 24, scope: !24)
!58 = !DILocation(line: 29, column: 36, scope: !24)
!59 = !DILocation(line: 29, column: 65, scope: !24)
!60 = !DILocation(line: 31, column: 68, scope: !24)
!61 = !DILocation(line: 31, column: 32, scope: !24)
!62 = !DILocation(line: 32, column: 52, scope: !40)
!63 = !DILocation(line: 0, scope: !40)
!64 = !DILocation(line: 25, column: 8, scope: !24)
!65 = !DILocation(line: 24, column: 10, scope: !24)
!66 = !{!67, !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 39, column: 8, scope: !45)
!70 = !DILocation(line: 39, column: 7, scope: !24)
!71 = !DILocation(line: 0, scope: !43)
!72 = !DILocation(line: 43, column: 61, scope: !43)
!73 = !DILocation(line: 46, column: 60, scope: !44)
!74 = !DILocation(line: 42, column: 37, scope: !44)
!75 = !DILocation(line: 42, column: 35, scope: !44)
!76 = !DILocation(line: 49, column: 45, scope: !44)
!77 = !DILocation(line: 49, column: 43, scope: !44)
!78 = !DILocation(line: 0, scope: !51)
!79 = !DILocation(line: 51, column: 71, scope: !51)
!80 = !DILocation(line: 54, column: 45, scope: !44)
!81 = !DILocation(line: 54, column: 73, scope: !44)
!82 = !DILocation(line: 41, column: 10, scope: !44)
!83 = !DILocation(line: 40, column: 12, scope: !44)
!84 = !{!85, !85, i64 0}
!85 = !{!"long long", !67, i64 0}
!86 = !DILocation(line: 57, column: 12, scope: !44)
!87 = !DILocation(line: 60, column: 3, scope: !44)
!88 = !DILocation(line: 61, column: 1, scope: !24)
