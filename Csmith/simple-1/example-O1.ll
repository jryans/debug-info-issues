; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_2 = internal unnamed_addr global i1 false, align 4, !dbg !20

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !28 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !32, metadata !DIExpression()), !dbg !33
  %call = call i32 (...) @platform_main_begin() #4, !dbg !34
  call fastcc void @func_1(), !dbg !35
  %.b = load i1, i1* @g_2, align 4, !dbg !36
  %conv = select i1 %.b, i64 -9, i64 -1, !dbg !36
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !37, !tbaa !38
  store volatile i64 9, i64* @csmith_sink_, align 8, !dbg !42, !tbaa !38
  %call3 = call i32 (i32, i32, ...) bitcast (i32 (...)* @platform_main_end to i32 (i32, i32, ...)*)(i32 0, i32 0) #4, !dbg !43
  ret i32 0, !dbg !44
}

declare !dbg !45 i32 @platform_main_begin(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable willreturn writeonly
define internal fastcc void @func_1() unnamed_addr #2 !dbg !48 {
entry:
  store i1 true, i1* @g_2, align 4, !dbg !61
  ret void, !dbg !62
}

declare i32 @platform_main_end(...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind ssp uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !17, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/simple-1")
!4 = !{}
!5 = !{!0, !6, !13, !15}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "g_6", scope: !2, file: !3, line: 20, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !11, line: 167, baseType: !12)
!11 = !DIFile(filename: "/usr/local/Cellar/llvm/13.0.0_1/lib/clang/13.0.0/include/stdint.h", directory: "")
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "g_2", scope: !2, file: !3, line: 18, type: !10, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "g_7", scope: !2, file: !3, line: 19, type: !10, isLocal: true, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !11, line: 98, baseType: !19)
!19 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551608, DW_OP_mul, DW_OP_constu, 4294967295, DW_OP_plus, DW_OP_stack_value))
!21 = !{i32 7, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Homebrew clang version 13.0.0"}
!28 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 47, type: !29, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!12}
!31 = !{!32}
!32 = !DILocalVariable(name: "print_hash_value", scope: !28, file: !3, line: 49, type: !12)
!33 = !DILocation(line: 0, scope: !28)
!34 = !DILocation(line: 50, column: 5, scope: !28)
!35 = !DILocation(line: 51, column: 5, scope: !28)
!36 = !DILocation(line: 52, column: 20, scope: !28)
!37 = !DILocation(line: 52, column: 18, scope: !28)
!38 = !{!39, !39, i64 0}
!39 = !{!"long long", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 53, column: 18, scope: !28)
!43 = !DILocation(line: 54, column: 5, scope: !28)
!44 = !DILocation(line: 55, column: 5, scope: !28)
!45 = !DISubprogram(name: "platform_main_begin", scope: !3, file: !3, line: 50, type: !46, flags: DIFlagArtificial, spFlags: DISPFlagOptimized, retainedNodes: !4)
!46 = !DISubroutineType(types: !47)
!47 = !{!12, null}
!48 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 33, type: !49, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !53)
!49 = !DISubroutineType(types: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !11, line: 226, baseType: !52)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !{!54}
!54 = !DILocalVariable(name: "l_5", scope: !55, file: !3, line: 37, type: !58)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 36, column: 5)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 35, column: 5)
!57 = distinct !DILexicalBlock(scope: !48, file: !3, line: 35, column: 5)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !11, line: 205, baseType: !60)
!60 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!61 = !DILocation(line: 35, column: 14, scope: !57)
!62 = !DILocation(line: 40, column: 5, scope: !48)
