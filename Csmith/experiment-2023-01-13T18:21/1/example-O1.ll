; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_3 = global i32 1617815315, align 4, !dbg !11
@g_4 = global [1 x i32] [i32 1052313040], align 4, !dbg !16
@g_5 = local_unnamed_addr global i32 286734507, align 4, !dbg !21

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @func_1() local_unnamed_addr #0 !dbg !33 {
entry:
  call void @llvm.dbg.value(metadata i32 9, metadata !45, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* undef, metadata !46, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i32 undef, metadata !45, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32 undef, metadata !45, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_xor, DW_OP_stack_value)), !dbg !66
  store i32 9, i32* @g_5, align 4, !dbg !68, !tbaa !69
  call void @llvm.dbg.value(metadata i32 9, metadata !45, metadata !DIExpression()), !dbg !66
  ret i32 9, !dbg !73
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !74 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !79, metadata !DIExpression()), !dbg !80
  %call = call i32 @func_1(), !dbg !81
  %0 = load volatile i32, i32* @g_3, align 4, !dbg !82, !tbaa !69
  %conv = sext i32 %0 to i64, !dbg !82
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !83, !tbaa !84
  call void @llvm.dbg.value(metadata i32 0, metadata !78, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i32 undef, metadata !78, metadata !DIExpression()), !dbg !80
  %1 = load volatile i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_4, i64 0, i64 0), align 4, !dbg !86, !tbaa !69
  %conv2 = sext i32 %1 to i64, !dbg !86
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !90, !tbaa !84
  call void @llvm.dbg.value(metadata i32 1, metadata !78, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i32 undef, metadata !78, metadata !DIExpression()), !dbg !80
  %2 = load i32, i32* @g_5, align 4, !dbg !91, !tbaa !69
  %conv3 = sext i32 %2 to i64, !dbg !91
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !92, !tbaa !84
  ret i32 0, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-13T18:21/1")
!4 = !{}
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !7, line: 96, baseType: !8)
!7 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stdint.h", directory: "/Users/jryans/Projects")
!8 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !{!0, !11, !16, !21}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "g_3", scope: !2, file: !3, line: 18, type: !13, isLocal: false, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !7, line: 167, baseType: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "g_4", scope: !2, file: !3, line: 19, type: !18, isLocal: false, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 1)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "g_5", scope: !2, file: !3, line: 20, type: !14, isLocal: false, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 98, baseType: !25)
!25 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!33 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 33, type: !34, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !38)
!34 = !DISubroutineType(types: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 172, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !{!39, !45, !46, !47, !56, !57, !58, !59, !63, !65}
!39 = !DILocalVariable(name: "l_2", scope: !33, file: !3, line: 35, type: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 144, elements: !43)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !7, line: 205, baseType: !42)
!42 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!43 = !{!44}
!44 = !DISubrange(count: 9)
!45 = !DILocalVariable(name: "l_7", scope: !33, file: !3, line: 36, type: !14)
!46 = !DILocalVariable(name: "i", scope: !33, file: !3, line: 37, type: !15)
!47 = !DILocalVariable(name: "l_6", scope: !48, file: !3, line: 40, type: !51)
!48 = distinct !DILexicalBlock(scope: !49, file: !3, line: 39, column: 5)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 38, column: 5)
!50 = distinct !DILexicalBlock(scope: !33, file: !3, line: 38, column: 5)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, elements: !53)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!53 = !{!54, !55, !55}
!54 = !DISubrange(count: 2)
!55 = !DISubrange(count: 4)
!56 = !DILocalVariable(name: "i", scope: !48, file: !3, line: 41, type: !15)
!57 = !DILocalVariable(name: "j", scope: !48, file: !3, line: 41, type: !15)
!58 = !DILocalVariable(name: "k", scope: !48, file: !3, line: 41, type: !15)
!59 = !DILocalVariable(name: "l_13", scope: !60, file: !3, line: 46, type: !36)
!60 = distinct !DILexicalBlock(scope: !61, file: !3, line: 45, column: 5)
!61 = distinct !DILexicalBlock(scope: !62, file: !3, line: 44, column: 5)
!62 = distinct !DILexicalBlock(scope: !33, file: !3, line: 44, column: 5)
!63 = !DILocalVariable(name: "l_14", scope: !60, file: !3, line: 47, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 576, elements: !43)
!65 = !DILocalVariable(name: "i", scope: !60, file: !3, line: 48, type: !15)
!66 = !DILocation(line: 0, scope: !33)
!67 = !DILocation(line: 37, column: 9, scope: !33)
!68 = !DILocation(line: 0, scope: !50)
!69 = !{!70, !70, i64 0}
!70 = !{!"int", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !DILocation(line: 54, column: 5, scope: !33)
!74 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 61, type: !75, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!75 = !DISubroutineType(types: !76)
!76 = !{!15}
!77 = !{!78, !79}
!78 = !DILocalVariable(name: "i", scope: !74, file: !3, line: 63, type: !15)
!79 = !DILocalVariable(name: "print_hash_value", scope: !74, file: !3, line: 64, type: !15)
!80 = !DILocation(line: 0, scope: !74)
!81 = !DILocation(line: 66, column: 5, scope: !74)
!82 = !DILocation(line: 67, column: 20, scope: !74)
!83 = !DILocation(line: 67, column: 18, scope: !74)
!84 = !{!85, !85, i64 0}
!85 = !{!"long long", !71, i64 0}
!86 = !DILocation(line: 70, column: 24, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 69, column: 5)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 68, column: 5)
!89 = distinct !DILexicalBlock(scope: !74, file: !3, line: 68, column: 5)
!90 = !DILocation(line: 70, column: 22, scope: !87)
!91 = !DILocation(line: 72, column: 20, scope: !74)
!92 = !DILocation(line: 72, column: 18, scope: !74)
!93 = !DILocation(line: 74, column: 5, scope: !74)
