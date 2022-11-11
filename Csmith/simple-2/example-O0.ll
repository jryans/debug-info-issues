; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

%union.U0 = type { i32 }

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_4 = internal global i32 464214324, align 4, !dbg !6
@g_5 = internal global %union.U0 { i32 -1410797040 }, align 4, !dbg !11

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !34 {
entry:
  %retval = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  %coerce = alloca %union.U0, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %print_hash_value, align 4, !dbg !38
  %call = call i32 @func_1(), !dbg !39
  %coerce.dive = getelementptr inbounds %union.U0, %union.U0* %coerce, i32 0, i32 0, !dbg !39
  store i32 %call, i32* %coerce.dive, align 4, !dbg !39
  %0 = load i32, i32* @g_4, align 4, !dbg !40
  %conv = sext i32 %0 to i64, !dbg !40
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !41
  %1 = load volatile i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_5, i32 0, i32 0), align 4, !dbg !42
  %conv1 = zext i32 %1 to i64, !dbg !43
  store volatile i64 %conv1, i64* @csmith_sink_, align 8, !dbg !44
  %2 = load i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_5, i32 0, i32 0), align 4, !dbg !45
  %conv2 = sext i32 %2 to i64, !dbg !46
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !47
  %3 = load volatile i32, i32* getelementptr inbounds (%union.U0, %union.U0* @g_5, i32 0, i32 0), align 4, !dbg !48
  %conv3 = sext i32 %3 to i64, !dbg !49
  store volatile i64 %conv3, i64* @csmith_sink_, align 8, !dbg !50
  ret i32 0, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @func_1() #0 !dbg !52 {
entry:
  %retval = alloca %union.U0, align 4
  %l_2 = alloca i16, align 2
  %l_3 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i16* %l_2, metadata !55, metadata !DIExpression()), !dbg !58
  store i16 -1, i16* %l_2, align 2, !dbg !58
  call void @llvm.dbg.declare(metadata i32** %l_3, metadata !59, metadata !DIExpression()), !dbg !61
  store i32* @g_4, i32** %l_3, align 8, !dbg !61
  %0 = load i16, i16* %l_2, align 2, !dbg !62
  %1 = load i32*, i32** %l_3, align 8, !dbg !63
  %2 = load i32, i32* %1, align 4, !dbg !64
  %conv = sext i32 %2 to i64, !dbg !64
  %and = and i64 %conv, 1, !dbg !64
  %conv1 = trunc i64 %and to i32, !dbg !64
  store i32 %conv1, i32* %1, align 4, !dbg !64
  %3 = bitcast %union.U0* %retval to i8*, !dbg !65
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%union.U0* @g_5 to i8*), i64 4, i1 false), !dbg !65
  %coerce.dive = getelementptr inbounds %union.U0, %union.U0* %retval, i32 0, i32 0, !dbg !66
  %4 = load i32, i32* %coerce.dive, align 4, !dbg !66
  ret i32 %4, !dbg !66
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !24, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Homebrew clang version 13.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
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
!34 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 50, type: !35, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!35 = !DISubroutineType(types: !36)
!36 = !{!10}
!37 = !DILocalVariable(name: "print_hash_value", scope: !34, file: !3, line: 52, type: !10)
!38 = !DILocation(line: 52, column: 9, scope: !34)
!39 = !DILocation(line: 54, column: 5, scope: !34)
!40 = !DILocation(line: 55, column: 20, scope: !34)
!41 = !DILocation(line: 55, column: 18, scope: !34)
!42 = !DILocation(line: 56, column: 24, scope: !34)
!43 = !DILocation(line: 56, column: 20, scope: !34)
!44 = !DILocation(line: 56, column: 18, scope: !34)
!45 = !DILocation(line: 57, column: 24, scope: !34)
!46 = !DILocation(line: 57, column: 20, scope: !34)
!47 = !DILocation(line: 57, column: 18, scope: !34)
!48 = !DILocation(line: 58, column: 24, scope: !34)
!49 = !DILocation(line: 58, column: 20, scope: !34)
!50 = !DILocation(line: 58, column: 18, scope: !34)
!51 = !DILocation(line: 60, column: 5, scope: !34)
!52 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 38, type: !53, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!53 = !DISubroutineType(types: !54)
!54 = !{!13}
!55 = !DILocalVariable(name: "l_2", scope: !52, file: !3, line: 40, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 207, baseType: !57)
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !DILocation(line: 40, column: 14, scope: !52)
!59 = !DILocalVariable(name: "l_3", scope: !52, file: !3, line: 41, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!61 = !DILocation(line: 41, column: 14, scope: !52)
!62 = !DILocation(line: 42, column: 16, scope: !52)
!63 = !DILocation(line: 42, column: 7, scope: !52)
!64 = !DILocation(line: 42, column: 12, scope: !52)
!65 = !DILocation(line: 43, column: 12, scope: !52)
!66 = !DILocation(line: 43, column: 5, scope: !52)
