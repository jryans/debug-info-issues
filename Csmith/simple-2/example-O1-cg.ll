; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

%union.U0 = type { i32 }

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_4 = internal unnamed_addr global i32 464214324, align 4, !dbg !6
@g_5 = internal global %union.U0 { i32 -1410797040 }, align 4, !dbg !11

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define i32 @main() local_unnamed_addr #0 !dbg !34 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !38, metadata !DIExpression()), !dbg !39
  call fastcc void @func_1(), !dbg !40
  %0 = load i32, i32* @g_4, align 4, !dbg !41, !tbaa !42
  %1 = zext i32 %0 to i64
  store volatile i64 %1, i64* @csmith_sink_, align 8, !dbg !46, !tbaa !47
  %2 = load volatile i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_5, i64 0, i32 0), align 4, !dbg !49, !tbaa !50
  %conv1 = zext i32 %2 to i64, !dbg !51
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !52, !tbaa !47
  %conv2 = sext i32 %2 to i64, !dbg !53
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !54, !tbaa !47
  %3 = load volatile i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_5, i64 0, i32 0), align 4, !dbg !55, !tbaa !50
  %conv3 = sext i32 %3 to i64, !dbg !56
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !57, !tbaa !47
  ret i32 0, !dbg !58
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind ssp uwtable willreturn
define internal fastcc void @func_1() unnamed_addr #1 !dbg !59 {
entry:
  call void @llvm.dbg.value(metadata i16 -1, metadata !63, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32* @g_4, metadata !66, metadata !DIExpression()), !dbg !68
  %0 = load i32, i32* @g_4, align 4, !dbg !69, !tbaa !42
  %1 = and i32 %0, 1, !dbg !69
  store i32 %1, i32* @g_4, align 4, !dbg !69, !tbaa !42
  ret void, !dbg !70
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline norecurse nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !24, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/simple-2")
!4 = !{}
!5 = !{!0, !6, !11}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "g_4", scope: !2, file: !3, line: 24, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !9, line: 167, baseType: !10)
!9 = !DIFile(filename: "/usr/local/Cellar/llvm/13.0.0_1/lib/clang/13.0.0/include/stdint.h", directory: "")
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "g_5", scope: !2, file: !3, line: 25, type: !13, isLocal: true, isDefinition: true)
!13 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "U0", file: !3, line: 17, size: 32, elements: !14)
!14 = !{!15, !20, !21}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "f0", scope: !13, file: !3, line: 18, baseType: !16, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 172, baseType: !19)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !13, file: !3, line: 19, baseType: !8, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !13, file: !3, line: 20, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !8)
!24 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 98, baseType: !26)
!26 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !{i32 7, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"Homebrew clang version 13.0.0"}
!34 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 50, type: !35, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!10}
!37 = !{!38}
!38 = !DILocalVariable(name: "print_hash_value", scope: !34, file: !3, line: 52, type: !10)
!39 = !DILocation(line: 0, scope: !34)
!40 = !DILocation(line: 54, column: 5, scope: !34)
!41 = !DILocation(line: 55, column: 20, scope: !34)
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 55, column: 18, scope: !34)
!47 = !{!48, !48, i64 0}
!48 = !{!"long long", !44, i64 0}
!49 = !DILocation(line: 56, column: 24, scope: !34)
!50 = !{!44, !44, i64 0}
!51 = !DILocation(line: 56, column: 20, scope: !34)
!52 = !DILocation(line: 56, column: 18, scope: !34)
!53 = !DILocation(line: 57, column: 20, scope: !34)
!54 = !DILocation(line: 57, column: 18, scope: !34)
!55 = !DILocation(line: 58, column: 24, scope: !34)
!56 = !DILocation(line: 58, column: 20, scope: !34)
!57 = !DILocation(line: 58, column: 18, scope: !34)
!58 = !DILocation(line: 60, column: 5, scope: !34)
!59 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 38, type: !60, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{!13}
!62 = !{!63, !66}
!63 = !DILocalVariable(name: "l_2", scope: !59, file: !3, line: 40, type: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 207, baseType: !65)
!65 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!66 = !DILocalVariable(name: "l_3", scope: !59, file: !3, line: 41, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!68 = !DILocation(line: 0, scope: !59)
!69 = !DILocation(line: 42, column: 12, scope: !59)
!70 = !DILocation(line: 44, column: 1, scope: !59)
