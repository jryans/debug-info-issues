; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

%struct.bloom_key = type { i32* }
%struct.bloom_filter = type { i8*, i64 }
%struct.bloom_filter_settings = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"settings\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @add_key_to_filter(%struct.bloom_key* %key, %struct.bloom_filter* %filter, %struct.bloom_filter_settings* %settings) #0 !dbg !12 {
entry:
  %key.addr = alloca %struct.bloom_key*, align 8
  %filter.addr = alloca %struct.bloom_filter*, align 8
  %settings.addr = alloca %struct.bloom_filter_settings*, align 8
  %i = alloca i32, align 4
  %mod = alloca i64, align 8
  %hash_mod = alloca i64, align 8
  %block_pos = alloca i64, align 8
  store %struct.bloom_key* %key, %struct.bloom_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bloom_key** %key.addr, metadata !41, metadata !DIExpression()), !dbg !42
  store %struct.bloom_filter* %filter, %struct.bloom_filter** %filter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bloom_filter** %filter.addr, metadata !43, metadata !DIExpression()), !dbg !44
  store %struct.bloom_filter_settings* %settings, %struct.bloom_filter_settings** %settings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bloom_filter_settings** %settings.addr, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %i, metadata !47, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i64* %mod, metadata !50, metadata !DIExpression()), !dbg !53
  %0 = load %struct.bloom_filter*, %struct.bloom_filter** %filter.addr, align 8, !dbg !54
  %len = getelementptr inbounds %struct.bloom_filter, %struct.bloom_filter* %0, i32 0, i32 1, !dbg !55
  %1 = load i64, i64* %len, align 8, !dbg !55
  %mul = mul i64 %1, 8, !dbg !56
  store i64 %mul, i64* %mod, align 8, !dbg !53
  store i32 0, i32* %i, align 4, !dbg !57
  br label %for.cond, !dbg !59

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !60
  %3 = load %struct.bloom_filter_settings*, %struct.bloom_filter_settings** %settings.addr, align 8, !dbg !62
  %num_hashes = getelementptr inbounds %struct.bloom_filter_settings, %struct.bloom_filter_settings* %3, i32 0, i32 1, !dbg !63
  %4 = load i32, i32* %num_hashes, align 4, !dbg !63
  %cmp = icmp ult i32 %2, %4, !dbg !64
  br i1 %cmp, label %for.body, label %for.end, !dbg !65

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %hash_mod, metadata !66, metadata !DIExpression()), !dbg !68
  %5 = load %struct.bloom_key*, %struct.bloom_key** %key.addr, align 8, !dbg !69
  %hashes = getelementptr inbounds %struct.bloom_key, %struct.bloom_key* %5, i32 0, i32 0, !dbg !70
  %6 = load i32*, i32** %hashes, align 8, !dbg !70
  %7 = load i32, i32* %i, align 4, !dbg !71
  %idxprom = sext i32 %7 to i64, !dbg !69
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom, !dbg !69
  %8 = load i32, i32* %arrayidx, align 4, !dbg !69
  %conv = zext i32 %8 to i64, !dbg !69
  %9 = load i64, i64* %mod, align 8, !dbg !72
  %rem = urem i64 %conv, %9, !dbg !73
  store i64 %rem, i64* %hash_mod, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i64* %block_pos, metadata !74, metadata !DIExpression()), !dbg !75
  %10 = load i64, i64* %hash_mod, align 8, !dbg !76
  %div = udiv i64 %10, 8, !dbg !77
  store i64 %div, i64* %block_pos, align 8, !dbg !75
  %11 = load i64, i64* %hash_mod, align 8, !dbg !78
  %conv1 = trunc i64 %11 to i32, !dbg !78
  %call = call zeroext i8 @get_bitmask(i32 %conv1), !dbg !79
  %conv2 = zext i8 %call to i32, !dbg !79
  %12 = load %struct.bloom_filter*, %struct.bloom_filter** %filter.addr, align 8, !dbg !80
  %data = getelementptr inbounds %struct.bloom_filter, %struct.bloom_filter* %12, i32 0, i32 0, !dbg !81
  %13 = load i8*, i8** %data, align 8, !dbg !81
  %14 = load i64, i64* %block_pos, align 8, !dbg !82
  %arrayidx3 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !80
  %15 = load i8, i8* %arrayidx3, align 1, !dbg !83
  %conv4 = zext i8 %15 to i32, !dbg !83
  %or = or i32 %conv4, %conv2, !dbg !83
  %conv5 = trunc i32 %or to i8, !dbg !83
  store i8 %conv5, i8* %arrayidx3, align 1, !dbg !83
  br label %for.inc, !dbg !84

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !85
  %inc = add nsw i32 %16, 1, !dbg !85
  store i32 %inc, i32* %i, align 4, !dbg !85
  br label %for.cond, !dbg !86, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  ret void, !dbg !90
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal zeroext i8 @get_bitmask(i32 %pos) #0 !dbg !91 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !94, metadata !DIExpression()), !dbg !95
  %0 = load i32, i32* %pos.addr, align 4, !dbg !96
  %and = and i32 %0, 7, !dbg !97
  %shl = shl i32 1, %and, !dbg !98
  %conv = trunc i32 %shl to i8, !dbg !99
  ret i8 %conv, !dbg !100
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !101 {
entry:
  %key = alloca %struct.bloom_key, align 8
  %filter = alloca %struct.bloom_filter, align 8
  %settings = alloca %struct.bloom_filter_settings, align 4
  call void @llvm.dbg.declare(metadata %struct.bloom_key* %key, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata %struct.bloom_filter* %filter, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata %struct.bloom_filter_settings* %settings, metadata !108, metadata !DIExpression()), !dbg !109
  %0 = bitcast %struct.bloom_key* %key to i8*, !dbg !110
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !111
  %1 = bitcast %struct.bloom_filter* %filter to i8*, !dbg !112
  call void @klee_make_symbolic(i8* %1, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !113
  %2 = bitcast %struct.bloom_filter_settings* %settings to i8*, !dbg !114
  call void @klee_make_symbolic(i8* %2, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !115
  call void @add_key_to_filter(%struct.bloom_key* %key, %struct.bloom_filter* %filter, %struct.bloom_filter_settings* %settings), !dbg !116
  ret i32 0, !dbg !117
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 13.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/KLEE/git-add-key-to-filter")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Homebrew clang version 13.0.0"}
!12 = distinct !DISubprogram(name: "add_key_to_filter", scope: !1, file: !1, line: 53, type: !13, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !24, !33}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bloom_key", file: !1, line: 6, size: 64, elements: !18)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "hashes", scope: !17, file: !1, line: 7, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 172, baseType: !23)
!22 = !DIFile(filename: "/usr/local/Cellar/llvm/13.0.0_1/lib/clang/13.0.0/include/stdint.h", directory: "")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bloom_filter", file: !1, line: 10, size: 128, elements: !26)
!26 = !{!27, !29}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !1, line: 11, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !25, file: !1, line: 12, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "/usr/local/Cellar/llvm/13.0.0_1/lib/clang/13.0.0/include/stddef.h", directory: "")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bloom_filter_settings", file: !1, line: 15, size: 128, elements: !36)
!36 = !{!37, !38, !39, !40}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "hash_version", scope: !35, file: !1, line: 22, baseType: !21, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "num_hashes", scope: !35, file: !1, line: 30, baseType: !21, size: 32, offset: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_entry", scope: !35, file: !1, line: 38, baseType: !21, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "max_changed_paths", scope: !35, file: !1, line: 46, baseType: !21, size: 32, offset: 96)
!41 = !DILocalVariable(name: "key", arg: 1, scope: !12, file: !1, line: 53, type: !15)
!42 = !DILocation(line: 53, column: 48, scope: !12)
!43 = !DILocalVariable(name: "filter", arg: 2, scope: !12, file: !1, line: 53, type: !24)
!44 = !DILocation(line: 53, column: 74, scope: !12)
!45 = !DILocalVariable(name: "settings", arg: 3, scope: !12, file: !1, line: 54, type: !33)
!46 = !DILocation(line: 54, column: 60, scope: !12)
!47 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 55, type: !48)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DILocation(line: 55, column: 7, scope: !12)
!50 = !DILocalVariable(name: "mod", scope: !12, file: !1, line: 56, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 98, baseType: !52)
!52 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!53 = !DILocation(line: 56, column: 12, scope: !12)
!54 = !DILocation(line: 56, column: 18, scope: !12)
!55 = !DILocation(line: 56, column: 26, scope: !12)
!56 = !DILocation(line: 56, column: 30, scope: !12)
!57 = !DILocation(line: 58, column: 10, scope: !58)
!58 = distinct !DILexicalBlock(scope: !12, file: !1, line: 58, column: 3)
!59 = !DILocation(line: 58, column: 8, scope: !58)
!60 = !DILocation(line: 58, column: 15, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 58, column: 3)
!62 = !DILocation(line: 58, column: 19, scope: !61)
!63 = !DILocation(line: 58, column: 29, scope: !61)
!64 = !DILocation(line: 58, column: 17, scope: !61)
!65 = !DILocation(line: 58, column: 3, scope: !58)
!66 = !DILocalVariable(name: "hash_mod", scope: !67, file: !1, line: 59, type: !51)
!67 = distinct !DILexicalBlock(scope: !61, file: !1, line: 58, column: 46)
!68 = !DILocation(line: 59, column: 14, scope: !67)
!69 = !DILocation(line: 59, column: 25, scope: !67)
!70 = !DILocation(line: 59, column: 30, scope: !67)
!71 = !DILocation(line: 59, column: 37, scope: !67)
!72 = !DILocation(line: 59, column: 42, scope: !67)
!73 = !DILocation(line: 59, column: 40, scope: !67)
!74 = !DILocalVariable(name: "block_pos", scope: !67, file: !1, line: 60, type: !51)
!75 = !DILocation(line: 60, column: 14, scope: !67)
!76 = !DILocation(line: 60, column: 26, scope: !67)
!77 = !DILocation(line: 60, column: 35, scope: !67)
!78 = !DILocation(line: 62, column: 44, scope: !67)
!79 = !DILocation(line: 62, column: 32, scope: !67)
!80 = !DILocation(line: 62, column: 5, scope: !67)
!81 = !DILocation(line: 62, column: 13, scope: !67)
!82 = !DILocation(line: 62, column: 18, scope: !67)
!83 = !DILocation(line: 62, column: 29, scope: !67)
!84 = !DILocation(line: 63, column: 3, scope: !67)
!85 = !DILocation(line: 58, column: 42, scope: !61)
!86 = !DILocation(line: 58, column: 3, scope: !61)
!87 = distinct !{!87, !65, !88, !89}
!88 = !DILocation(line: 63, column: 3, scope: !58)
!89 = !{!"llvm.loop.mustprogress"}
!90 = !DILocation(line: 64, column: 1, scope: !12)
!91 = distinct !DISubprogram(name: "get_bitmask", scope: !1, file: !1, line: 49, type: !92, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!92 = !DISubroutineType(types: !93)
!93 = !{!4, !21}
!94 = !DILocalVariable(name: "pos", arg: 1, scope: !91, file: !1, line: 49, type: !21)
!95 = !DILocation(line: 49, column: 50, scope: !91)
!96 = !DILocation(line: 50, column: 33, scope: !91)
!97 = !DILocation(line: 50, column: 37, scope: !91)
!98 = !DILocation(line: 50, column: 29, scope: !91)
!99 = !DILocation(line: 50, column: 10, scope: !91)
!100 = !DILocation(line: 50, column: 3, scope: !91)
!101 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 70, type: !102, scopeLine: 70, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!102 = !DISubroutineType(types: !103)
!103 = !{!48}
!104 = !DILocalVariable(name: "key", scope: !101, file: !1, line: 78, type: !17)
!105 = !DILocation(line: 78, column: 20, scope: !101)
!106 = !DILocalVariable(name: "filter", scope: !101, file: !1, line: 79, type: !25)
!107 = !DILocation(line: 79, column: 23, scope: !101)
!108 = !DILocalVariable(name: "settings", scope: !101, file: !1, line: 80, type: !35)
!109 = !DILocation(line: 80, column: 32, scope: !101)
!110 = !DILocation(line: 81, column: 22, scope: !101)
!111 = !DILocation(line: 81, column: 3, scope: !101)
!112 = !DILocation(line: 82, column: 22, scope: !101)
!113 = !DILocation(line: 82, column: 3, scope: !101)
!114 = !DILocation(line: 83, column: 22, scope: !101)
!115 = !DILocation(line: 83, column: 3, scope: !101)
!116 = !DILocation(line: 86, column: 3, scope: !101)
!117 = !DILocation(line: 87, column: 1, scope: !101)
