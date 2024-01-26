; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.bloom_key = type { i32* }
%struct.bloom_filter = type { i8*, i64 }
%struct.bloom_filter_settings = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"settings\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @add_key_to_filter(%struct.bloom_key* %key, %struct.bloom_filter* %filter, %struct.bloom_filter_settings* %settings) #0 !dbg !13 {
entry:
  %key.addr = alloca %struct.bloom_key*, align 8
  %filter.addr = alloca %struct.bloom_filter*, align 8
  %settings.addr = alloca %struct.bloom_filter_settings*, align 8
  %i = alloca i32, align 4
  %mod = alloca i64, align 8
  %hash_mod = alloca i64, align 8
  %block_pos = alloca i64, align 8
  store %struct.bloom_key* %key, %struct.bloom_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bloom_key** %key.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store %struct.bloom_filter* %filter, %struct.bloom_filter** %filter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bloom_filter** %filter.addr, metadata !44, metadata !DIExpression()), !dbg !45
  store %struct.bloom_filter_settings* %settings, %struct.bloom_filter_settings** %settings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bloom_filter_settings** %settings.addr, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %i, metadata !48, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i64* %mod, metadata !51, metadata !DIExpression()), !dbg !55
  %0 = load %struct.bloom_filter*, %struct.bloom_filter** %filter.addr, align 8, !dbg !56
  %len = getelementptr inbounds %struct.bloom_filter, %struct.bloom_filter* %0, i32 0, i32 1, !dbg !57
  %1 = load i64, i64* %len, align 8, !dbg !57
  %mul = mul i64 %1, 8, !dbg !58
  store i64 %mul, i64* %mod, align 8, !dbg !55
  store i32 0, i32* %i, align 4, !dbg !59
  br label %for.cond, !dbg !61

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !62
  %3 = load %struct.bloom_filter_settings*, %struct.bloom_filter_settings** %settings.addr, align 8, !dbg !64
  %num_hashes = getelementptr inbounds %struct.bloom_filter_settings, %struct.bloom_filter_settings* %3, i32 0, i32 1, !dbg !65
  %4 = load i32, i32* %num_hashes, align 4, !dbg !65
  %cmp = icmp ult i32 %2, %4, !dbg !66
  br i1 %cmp, label %for.body, label %for.end, !dbg !67

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %hash_mod, metadata !68, metadata !DIExpression()), !dbg !70
  %5 = load %struct.bloom_key*, %struct.bloom_key** %key.addr, align 8, !dbg !71
  %hashes = getelementptr inbounds %struct.bloom_key, %struct.bloom_key* %5, i32 0, i32 0, !dbg !72
  %6 = load i32*, i32** %hashes, align 8, !dbg !72
  %7 = load i32, i32* %i, align 4, !dbg !73
  %idxprom = sext i32 %7 to i64, !dbg !71
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom, !dbg !71
  %8 = load i32, i32* %arrayidx, align 4, !dbg !71
  %conv = zext i32 %8 to i64, !dbg !71
  %9 = load i64, i64* %mod, align 8, !dbg !74
  %rem = urem i64 %conv, %9, !dbg !75
  store i64 %rem, i64* %hash_mod, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i64* %block_pos, metadata !76, metadata !DIExpression()), !dbg !77
  %10 = load i64, i64* %hash_mod, align 8, !dbg !78
  %div = udiv i64 %10, 8, !dbg !79
  store i64 %div, i64* %block_pos, align 8, !dbg !77
  %11 = load i64, i64* %hash_mod, align 8, !dbg !80
  %conv1 = trunc i64 %11 to i32, !dbg !80
  %call = call zeroext i8 @get_bitmask(i32 %conv1), !dbg !81
  %conv2 = zext i8 %call to i32, !dbg !81
  %12 = load %struct.bloom_filter*, %struct.bloom_filter** %filter.addr, align 8, !dbg !82
  %data = getelementptr inbounds %struct.bloom_filter, %struct.bloom_filter* %12, i32 0, i32 0, !dbg !83
  %13 = load i8*, i8** %data, align 8, !dbg !83
  %14 = load i64, i64* %block_pos, align 8, !dbg !84
  %arrayidx3 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !82
  %15 = load i8, i8* %arrayidx3, align 1, !dbg !85
  %conv4 = zext i8 %15 to i32, !dbg !85
  %or = or i32 %conv4, %conv2, !dbg !85
  %conv5 = trunc i32 %or to i8, !dbg !85
  store i8 %conv5, i8* %arrayidx3, align 1, !dbg !85
  br label %for.inc, !dbg !86

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !87
  %inc = add nsw i32 %16, 1, !dbg !87
  store i32 %inc, i32* %i, align 4, !dbg !87
  br label %for.cond, !dbg !88, !llvm.loop !89

for.end:                                          ; preds = %for.cond
  ret void, !dbg !92
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal zeroext i8 @get_bitmask(i32 %pos) #0 !dbg !93 {
entry:
  %pos.addr = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !96, metadata !DIExpression()), !dbg !97
  %0 = load i32, i32* %pos.addr, align 4, !dbg !98
  %and = and i32 %0, 7, !dbg !99
  %shl = shl i32 1, %and, !dbg !100
  %conv = trunc i32 %shl to i8, !dbg !101
  ret i8 %conv, !dbg !102
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #0 !dbg !103 {
entry:
  %key = alloca %struct.bloom_key, align 8
  %filter = alloca %struct.bloom_filter, align 8
  %settings = alloca %struct.bloom_filter_settings, align 4
  call void @llvm.dbg.declare(metadata %struct.bloom_key* %key, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata %struct.bloom_filter* %filter, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata %struct.bloom_filter_settings* %settings, metadata !110, metadata !DIExpression()), !dbg !111
  %0 = bitcast %struct.bloom_key* %key to i8*, !dbg !112
  call void @klee_make_symbolic(i8* %0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !113
  %1 = bitcast %struct.bloom_filter* %filter to i8*, !dbg !114
  call void @klee_make_symbolic(i8* %1, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !115
  %2 = bitcast %struct.bloom_filter_settings* %settings to i8*, !dbg !116
  call void @klee_make_symbolic(i8* %2, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !117
  call void @add_key_to_filter(%struct.bloom_key* %key, %struct.bloom_filter* %filter, %struct.bloom_filter_settings* %settings), !dbg !118
  ret i32 0, !dbg !119
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!12}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/add-key-to-filter")
!9 = !{}
!10 = !{!11}
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!13 = distinct !DISubprogram(name: "add_key_to_filter", scope: !8, file: !8, line: 53, type: !14, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !25, !34}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bloom_key", file: !8, line: 6, size: 64, elements: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "hashes", scope: !18, file: !8, line: 7, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 31, baseType: !24)
!23 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bloom_filter", file: !8, line: 10, size: 128, elements: !27)
!27 = !{!28, !30}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !26, file: !8, line: 11, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !26, file: !8, line: 12, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "LLVM/llvm/builds/release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stddef.h", directory: "/Users/jryans/Projects")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bloom_filter_settings", file: !8, line: 15, size: 128, elements: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "hash_version", scope: !36, file: !8, line: 22, baseType: !22, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "num_hashes", scope: !36, file: !8, line: 30, baseType: !22, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_entry", scope: !36, file: !8, line: 38, baseType: !22, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "max_changed_paths", scope: !36, file: !8, line: 46, baseType: !22, size: 32, offset: 96)
!42 = !DILocalVariable(name: "key", arg: 1, scope: !13, file: !8, line: 53, type: !16)
!43 = !DILocation(line: 53, column: 48, scope: !13)
!44 = !DILocalVariable(name: "filter", arg: 2, scope: !13, file: !8, line: 53, type: !25)
!45 = !DILocation(line: 53, column: 74, scope: !13)
!46 = !DILocalVariable(name: "settings", arg: 3, scope: !13, file: !8, line: 54, type: !34)
!47 = !DILocation(line: 54, column: 60, scope: !13)
!48 = !DILocalVariable(name: "i", scope: !13, file: !8, line: 55, type: !49)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DILocation(line: 55, column: 7, scope: !13)
!51 = !DILocalVariable(name: "mod", scope: !13, file: !8, line: 56, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !53, line: 31, baseType: !54)
!53 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!54 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!55 = !DILocation(line: 56, column: 12, scope: !13)
!56 = !DILocation(line: 56, column: 18, scope: !13)
!57 = !DILocation(line: 56, column: 26, scope: !13)
!58 = !DILocation(line: 56, column: 30, scope: !13)
!59 = !DILocation(line: 58, column: 10, scope: !60)
!60 = distinct !DILexicalBlock(scope: !13, file: !8, line: 58, column: 3)
!61 = !DILocation(line: 58, column: 8, scope: !60)
!62 = !DILocation(line: 58, column: 15, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !8, line: 58, column: 3)
!64 = !DILocation(line: 58, column: 19, scope: !63)
!65 = !DILocation(line: 58, column: 29, scope: !63)
!66 = !DILocation(line: 58, column: 17, scope: !63)
!67 = !DILocation(line: 58, column: 3, scope: !60)
!68 = !DILocalVariable(name: "hash_mod", scope: !69, file: !8, line: 59, type: !52)
!69 = distinct !DILexicalBlock(scope: !63, file: !8, line: 58, column: 46)
!70 = !DILocation(line: 59, column: 14, scope: !69)
!71 = !DILocation(line: 59, column: 25, scope: !69)
!72 = !DILocation(line: 59, column: 30, scope: !69)
!73 = !DILocation(line: 59, column: 37, scope: !69)
!74 = !DILocation(line: 59, column: 42, scope: !69)
!75 = !DILocation(line: 59, column: 40, scope: !69)
!76 = !DILocalVariable(name: "block_pos", scope: !69, file: !8, line: 60, type: !52)
!77 = !DILocation(line: 60, column: 14, scope: !69)
!78 = !DILocation(line: 60, column: 26, scope: !69)
!79 = !DILocation(line: 60, column: 35, scope: !69)
!80 = !DILocation(line: 62, column: 44, scope: !69)
!81 = !DILocation(line: 62, column: 32, scope: !69)
!82 = !DILocation(line: 62, column: 5, scope: !69)
!83 = !DILocation(line: 62, column: 13, scope: !69)
!84 = !DILocation(line: 62, column: 18, scope: !69)
!85 = !DILocation(line: 62, column: 29, scope: !69)
!86 = !DILocation(line: 63, column: 3, scope: !69)
!87 = !DILocation(line: 58, column: 42, scope: !63)
!88 = !DILocation(line: 58, column: 3, scope: !63)
!89 = distinct !{!89, !67, !90, !91}
!90 = !DILocation(line: 63, column: 3, scope: !60)
!91 = !{!"llvm.loop.mustprogress"}
!92 = !DILocation(line: 64, column: 1, scope: !13)
!93 = distinct !DISubprogram(name: "get_bitmask", scope: !8, file: !8, line: 49, type: !94, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !9)
!94 = !DISubroutineType(types: !95)
!95 = !{!11, !22}
!96 = !DILocalVariable(name: "pos", arg: 1, scope: !93, file: !8, line: 49, type: !22)
!97 = !DILocation(line: 49, column: 50, scope: !93)
!98 = !DILocation(line: 50, column: 33, scope: !93)
!99 = !DILocation(line: 50, column: 37, scope: !93)
!100 = !DILocation(line: 50, column: 29, scope: !93)
!101 = !DILocation(line: 50, column: 10, scope: !93)
!102 = !DILocation(line: 50, column: 3, scope: !93)
!103 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 70, type: !104, scopeLine: 70, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!104 = !DISubroutineType(types: !105)
!105 = !{!49}
!106 = !DILocalVariable(name: "key", scope: !103, file: !8, line: 78, type: !18)
!107 = !DILocation(line: 78, column: 20, scope: !103)
!108 = !DILocalVariable(name: "filter", scope: !103, file: !8, line: 79, type: !26)
!109 = !DILocation(line: 79, column: 23, scope: !103)
!110 = !DILocalVariable(name: "settings", scope: !103, file: !8, line: 80, type: !36)
!111 = !DILocation(line: 80, column: 32, scope: !103)
!112 = !DILocation(line: 81, column: 22, scope: !103)
!113 = !DILocation(line: 81, column: 3, scope: !103)
!114 = !DILocation(line: 82, column: 22, scope: !103)
!115 = !DILocation(line: 82, column: 3, scope: !103)
!116 = !DILocation(line: 83, column: 22, scope: !103)
!117 = !DILocation(line: 83, column: 3, scope: !103)
!118 = !DILocation(line: 86, column: 3, scope: !103)
!119 = !DILocation(line: 87, column: 1, scope: !103)
