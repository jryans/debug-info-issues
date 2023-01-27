; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_4 = local_unnamed_addr global [3 x i32] [i32 -1, i32 -1, i32 -1], align 4, !dbg !6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn
define i64 @func_1() local_unnamed_addr #0 !dbg !24 {
entry:
  call void @llvm.dbg.value(metadata i32* null, metadata !28, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1), metadata !30, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* null, metadata !31, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 106391706, metadata !32, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !33, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* null, metadata !34, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !35, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1), metadata !36, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 9, metadata !37, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 1938017351, metadata !38, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !39, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !40, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1), metadata !41, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !42, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 -1, metadata !43, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !44, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !45, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1), metadata !46, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* null, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* null, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 448, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 512, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* null, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 576, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 640, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* null, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 704, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 768, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 832, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 896, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* null, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 960, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 1024, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* null, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 1088, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 1152, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 1216, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 1280, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* null, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 1344, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* undef, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 1408, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32* null, metadata !47, metadata !DIExpression(DW_OP_LLVM_fragment, 1472, 64)), !dbg !59
  call void @llvm.dbg.value(metadata i32 -359608326, metadata !52, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 -1, metadata !53, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* undef, metadata !56, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* undef, metadata !57, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* undef, metadata !58, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 -1, metadata !53, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !59
  %0 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1), align 4, !dbg !63, !tbaa !64
  %conv = sext i32 %0 to i64, !dbg !68
  ret i64 %conv, !dbg !69
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #2 !dbg !70 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !76
  br label %for.body, !dbg !77

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !74, metadata !DIExpression()), !dbg !76
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @g_4, i64 0, i64 %indvars.iv, !dbg !79
  %0 = load i32, i32* %arrayidx, align 4, !dbg !79, !tbaa !64
  %conv = sext i32 %0 to i64, !dbg !79
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !82, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !85
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !74, metadata !DIExpression()), !dbg !76
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !86
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !77, !llvm.loop !87

for.end:                                          ; preds = %for.body
  ret i32 0, !dbg !91
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/3")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "g_4", scope: !2, file: !3, line: 18, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 96, elements: !12)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !10, line: 167, baseType: !11)
!10 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DISubrange(count: 3)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !10, line: 98, baseType: !16)
!16 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!24 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 31, type: !25, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!15}
!27 = !{!28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !52, !53, !56, !57, !58}
!28 = !DILocalVariable(name: "l_2", scope: !24, file: !3, line: 33, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!30 = !DILocalVariable(name: "l_3", scope: !24, file: !3, line: 34, type: !29)
!31 = !DILocalVariable(name: "l_5", scope: !24, file: !3, line: 35, type: !29)
!32 = !DILocalVariable(name: "l_6", scope: !24, file: !3, line: 36, type: !9)
!33 = !DILocalVariable(name: "l_7", scope: !24, file: !3, line: 37, type: !29)
!34 = !DILocalVariable(name: "l_8", scope: !24, file: !3, line: 38, type: !29)
!35 = !DILocalVariable(name: "l_9", scope: !24, file: !3, line: 39, type: !29)
!36 = !DILocalVariable(name: "l_10", scope: !24, file: !3, line: 40, type: !29)
!37 = !DILocalVariable(name: "l_11", scope: !24, file: !3, line: 41, type: !9)
!38 = !DILocalVariable(name: "l_12", scope: !24, file: !3, line: 42, type: !9)
!39 = !DILocalVariable(name: "l_13", scope: !24, file: !3, line: 43, type: !29)
!40 = !DILocalVariable(name: "l_14", scope: !24, file: !3, line: 44, type: !29)
!41 = !DILocalVariable(name: "l_15", scope: !24, file: !3, line: 45, type: !29)
!42 = !DILocalVariable(name: "l_16", scope: !24, file: !3, line: 46, type: !29)
!43 = !DILocalVariable(name: "l_17", scope: !24, file: !3, line: 47, type: !9)
!44 = !DILocalVariable(name: "l_18", scope: !24, file: !3, line: 48, type: !29)
!45 = !DILocalVariable(name: "l_19", scope: !24, file: !3, line: 49, type: !29)
!46 = !DILocalVariable(name: "l_20", scope: !24, file: !3, line: 50, type: !29)
!47 = !DILocalVariable(name: "l_21", scope: !24, file: !3, line: 51, type: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1536, elements: !49)
!49 = !{!50, !51, !13}
!50 = !DISubrange(count: 2)
!51 = !DISubrange(count: 4)
!52 = !DILocalVariable(name: "l_22", scope: !24, file: !3, line: 52, type: !9)
!53 = !DILocalVariable(name: "l_23", scope: !24, file: !3, line: 53, type: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 172, baseType: !55)
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !DILocalVariable(name: "i", scope: !24, file: !3, line: 54, type: !11)
!57 = !DILocalVariable(name: "j", scope: !24, file: !3, line: 54, type: !11)
!58 = !DILocalVariable(name: "k", scope: !24, file: !3, line: 54, type: !11)
!59 = !DILocation(line: 0, scope: !24)
!60 = !DILocation(line: 54, column: 9, scope: !24)
!61 = !DILocation(line: 54, column: 12, scope: !24)
!62 = !DILocation(line: 54, column: 15, scope: !24)
!63 = !DILocation(line: 56, column: 13, scope: !24)
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !DILocation(line: 56, column: 12, scope: !24)
!69 = !DILocation(line: 56, column: 5, scope: !24)
!70 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 63, type: !71, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !73)
!71 = !DISubroutineType(types: !72)
!72 = !{!11}
!73 = !{!74, !75}
!74 = !DILocalVariable(name: "i", scope: !70, file: !3, line: 65, type: !11)
!75 = !DILocalVariable(name: "print_hash_value", scope: !70, file: !3, line: 66, type: !11)
!76 = !DILocation(line: 0, scope: !70)
!77 = !DILocation(line: 69, column: 5, scope: !78)
!78 = distinct !DILexicalBlock(scope: !70, file: !3, line: 69, column: 5)
!79 = !DILocation(line: 71, column: 24, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !3, line: 70, column: 5)
!81 = distinct !DILexicalBlock(scope: !78, file: !3, line: 69, column: 5)
!82 = !DILocation(line: 71, column: 22, scope: !80)
!83 = !{!84, !84, i64 0}
!84 = !{!"long long", !66, i64 0}
!85 = !DILocation(line: 69, column: 25, scope: !81)
!86 = !DILocation(line: 69, column: 19, scope: !81)
!87 = distinct !{!87, !77, !88, !89, !90}
!88 = !DILocation(line: 72, column: 5, scope: !78)
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !DILocation(line: 74, column: 5, scope: !70)
