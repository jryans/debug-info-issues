; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@csmith_sink_ = global i64 0, align 8, !dbg !0
@g_2 = internal global i32 -1, align 4, !dbg !13
@g_7 = internal global i32 9, align 4, !dbg !15
@g_6 = internal global i32* @g_7, align 8, !dbg !6

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !27 {
entry:
  %retval = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %print_hash_value, metadata !30, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %print_hash_value, align 4, !dbg !31
  %call = call i32 (...) @platform_main_begin(), !dbg !32
  %call1 = call zeroext i8 @func_1(), !dbg !33
  %0 = load i32, i32* @g_2, align 4, !dbg !34
  %conv = sext i32 %0 to i64, !dbg !34
  store volatile i64 %conv, i64* @csmith_sink_, align 8, !dbg !35
  %1 = load i32, i32* @g_7, align 4, !dbg !36
  %conv2 = sext i32 %1 to i64, !dbg !36
  store volatile i64 %conv2, i64* @csmith_sink_, align 8, !dbg !37
  %call3 = call i32 (i32, i32, ...) bitcast (i32 (...)* @platform_main_end to i32 (i32, i32, ...)*)(i32 0, i32 0), !dbg !38
  ret i32 0, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @platform_main_begin(...) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal zeroext i8 @func_1() #0 !dbg !40 {
entry:
  %l_5 = alloca i16, align 2
  store i32 -9, i32* @g_2, align 4, !dbg !45
  br label %for.cond, !dbg !47

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @g_2, align 4, !dbg !48
  %cmp = icmp sge i32 %0, 18, !dbg !50
  br i1 %cmp, label %for.body, label %for.end, !dbg !51

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i16* %l_5, metadata !52, metadata !DIExpression()), !dbg !57
  store i16 0, i16* %l_5, align 2, !dbg !57
  %1 = load volatile i32*, i32** @g_6, align 8, !dbg !58
  %2 = load i32, i32* %1, align 4, !dbg !59
  %and = and i32 %2, 0, !dbg !59
  store i32 %and, i32* %1, align 4, !dbg !59
  br label %for.inc, !dbg !60

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* @g_2, align 4, !dbg !61
  %inc = add nsw i32 %3, 1, !dbg !61
  store i32 %inc, i32* @g_2, align 4, !dbg !61
  br label %for.cond, !dbg !62, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* @g_2, align 4, !dbg !66
  %conv = trunc i32 %4 to i8, !dbg !66
  ret i8 %conv, !dbg !67
}

declare i32 @platform_main_end(...) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csmith_sink_", scope: !2, file: !3, line: 12, type: !17, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Homebrew clang version 13.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
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
!20 = !{i32 7, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Homebrew clang version 13.0.0"}
!27 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 47, type: !28, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{!12}
!30 = !DILocalVariable(name: "print_hash_value", scope: !27, file: !3, line: 49, type: !12)
!31 = !DILocation(line: 49, column: 9, scope: !27)
!32 = !DILocation(line: 50, column: 5, scope: !27)
!33 = !DILocation(line: 51, column: 5, scope: !27)
!34 = !DILocation(line: 52, column: 20, scope: !27)
!35 = !DILocation(line: 52, column: 18, scope: !27)
!36 = !DILocation(line: 53, column: 20, scope: !27)
!37 = !DILocation(line: 53, column: 18, scope: !27)
!38 = !DILocation(line: 54, column: 5, scope: !27)
!39 = !DILocation(line: 55, column: 5, scope: !27)
!40 = distinct !DISubprogram(name: "func_1", scope: !3, file: !3, line: 33, type: !41, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!41 = !DISubroutineType(types: !42)
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !11, line: 226, baseType: !44)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DILocation(line: 35, column: 14, scope: !46)
!46 = distinct !DILexicalBlock(scope: !40, file: !3, line: 35, column: 5)
!47 = !DILocation(line: 35, column: 10, scope: !46)
!48 = !DILocation(line: 35, column: 23, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !3, line: 35, column: 5)
!50 = !DILocation(line: 35, column: 27, scope: !49)
!51 = !DILocation(line: 35, column: 5, scope: !46)
!52 = !DILocalVariable(name: "l_5", scope: !53, file: !3, line: 37, type: !54)
!53 = distinct !DILexicalBlock(scope: !49, file: !3, line: 36, column: 5)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !11, line: 205, baseType: !56)
!56 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!57 = !DILocation(line: 37, column: 23, scope: !53)
!58 = !DILocation(line: 38, column: 11, scope: !53)
!59 = !DILocation(line: 38, column: 16, scope: !53)
!60 = !DILocation(line: 39, column: 5, scope: !53)
!61 = !DILocation(line: 35, column: 35, scope: !49)
!62 = !DILocation(line: 35, column: 5, scope: !49)
!63 = distinct !{!63, !51, !64, !65}
!64 = !DILocation(line: 39, column: 5, scope: !46)
!65 = !{!"llvm.loop.mustprogress"}
!66 = !DILocation(line: 40, column: 12, scope: !40)
!67 = !DILocation(line: 40, column: 5, scope: !40)
