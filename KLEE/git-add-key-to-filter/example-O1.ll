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

; Function Attrs: nofree noinline norecurse nosync nounwind ssp uwtable
define void @add_key_to_filter(%struct.bloom_key* nocapture readonly %key, %struct.bloom_filter* nocapture readonly %filter, %struct.bloom_filter_settings* nocapture readonly %settings) local_unnamed_addr #0 !dbg !12 {
entry:
  call void @llvm.dbg.value(metadata %struct.bloom_key* %key, metadata !42, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata %struct.bloom_filter* %filter, metadata !43, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata %struct.bloom_filter_settings* %settings, metadata !44, metadata !DIExpression()), !dbg !55
  %len = getelementptr inbounds %struct.bloom_filter, %struct.bloom_filter* %filter, i64 0, i32 1, !dbg !56
  %0 = load i64, i64* %len, align 8, !dbg !56, !tbaa !57
  %mul = shl i64 %0, 3, !dbg !63
  call void @llvm.dbg.value(metadata i64 %mul, metadata !47, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !55
  %num_hashes = getelementptr inbounds %struct.bloom_filter_settings, %struct.bloom_filter_settings* %settings, i64 0, i32 1
  %hashes = getelementptr inbounds %struct.bloom_key, %struct.bloom_key* %key, i64 0, i32 0
  %data = getelementptr inbounds %struct.bloom_filter, %struct.bloom_filter* %filter, i64 0, i32 0
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !55
  %1 = load i32, i32* %num_hashes, align 4, !dbg !64, !tbaa !65
  %cmp15.not = icmp eq i32 %1, 0, !dbg !68
  br i1 %cmp15.not, label %for.end, label %for.body, !dbg !69

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !45, metadata !DIExpression()), !dbg !55
  %2 = load i32*, i32** %hashes, align 8, !dbg !70, !tbaa !71
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %indvars.iv, !dbg !73
  %3 = load i32, i32* %arrayidx, align 4, !dbg !73, !tbaa !74
  %conv = zext i32 %3 to i64, !dbg !73
  %rem = urem i64 %conv, %mul, !dbg !75
  call void @llvm.dbg.value(metadata i64 %rem, metadata !50, metadata !DIExpression()), !dbg !76
  %div = lshr i64 %rem, 3, !dbg !77
  call void @llvm.dbg.value(metadata i64 %div, metadata !54, metadata !DIExpression()), !dbg !76
  %conv1 = trunc i64 %rem to i32, !dbg !78
  %call = call fastcc zeroext i8 @get_bitmask(i32 %conv1), !dbg !79
  %4 = load i8*, i8** %data, align 8, !dbg !80, !tbaa !81
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %div, !dbg !82
  %5 = load i8, i8* %arrayidx3, align 1, !dbg !83, !tbaa !84
  %or14 = or i8 %5, %call, !dbg !83
  store i8 %or14, i8* %arrayidx3, align 1, !dbg !83, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !85
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !45, metadata !DIExpression()), !dbg !55
  %6 = load i32, i32* %num_hashes, align 4, !dbg !64, !tbaa !65
  %7 = zext i32 %6 to i64, !dbg !68
  %cmp = icmp ult i64 %indvars.iv.next, %7, !dbg !68
  br i1 %cmp, label %for.body, label %for.end, !dbg !69, !llvm.loop !86

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !90
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define internal fastcc zeroext i8 @get_bitmask(i32 %pos) unnamed_addr #3 !dbg !91 {
entry:
  call void @llvm.dbg.value(metadata i32 %pos, metadata !95, metadata !DIExpression()), !dbg !96
  %and = and i32 %pos, 7, !dbg !97
  %shl = shl i32 1, %and, !dbg !98
  %conv = trunc i32 %shl to i8, !dbg !99
  ret i8 %conv, !dbg !100
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 !dbg !101 {
entry:
  %key = alloca %struct.bloom_key, align 8
  %filter = alloca %struct.bloom_filter, align 8
  %settings = alloca %struct.bloom_filter_settings, align 4
  %0 = bitcast %struct.bloom_key* %key to i8*, !dbg !108
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !108
  call void @llvm.dbg.declare(metadata %struct.bloom_key* %key, metadata !105, metadata !DIExpression()), !dbg !109
  %1 = bitcast %struct.bloom_filter* %filter to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !110
  call void @llvm.dbg.declare(metadata %struct.bloom_filter* %filter, metadata !106, metadata !DIExpression()), !dbg !111
  %2 = bitcast %struct.bloom_filter_settings* %settings to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !112
  call void @llvm.dbg.declare(metadata %struct.bloom_filter_settings* %settings, metadata !107, metadata !DIExpression()), !dbg !113
  call void @klee_make_symbolic(i8* nonnull %0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !114
  call void @klee_make_symbolic(i8* nonnull %1, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !115
  call void @klee_make_symbolic(i8* nonnull %2, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !116
  call void @add_key_to_filter(%struct.bloom_key* nonnull %key, %struct.bloom_filter* nonnull %filter, %struct.bloom_filter_settings* nonnull %settings), !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !118
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !118
  ret i32 0, !dbg !118
}

declare !dbg !119 void @klee_make_symbolic(i8*, i64, i8*) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nofree noinline norecurse nosync nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
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
!12 = distinct !DISubprogram(name: "add_key_to_filter", scope: !1, file: !1, line: 54, type: !13, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !41)
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
!41 = !{!42, !43, !44, !45, !47, !50, !54}
!42 = !DILocalVariable(name: "key", arg: 1, scope: !12, file: !1, line: 54, type: !15)
!43 = !DILocalVariable(name: "filter", arg: 2, scope: !12, file: !1, line: 55, type: !24)
!44 = !DILocalVariable(name: "settings", arg: 3, scope: !12, file: !1, line: 56, type: !33)
!45 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 58, type: !46)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DILocalVariable(name: "mod", scope: !12, file: !1, line: 59, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 98, baseType: !49)
!49 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = !DILocalVariable(name: "hash_mod", scope: !51, file: !1, line: 62, type: !48)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 61, column: 45)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 61, column: 2)
!53 = distinct !DILexicalBlock(scope: !12, file: !1, line: 61, column: 2)
!54 = !DILocalVariable(name: "block_pos", scope: !51, file: !1, line: 63, type: !48)
!55 = !DILocation(line: 0, scope: !12)
!56 = !DILocation(line: 59, column: 25, scope: !12)
!57 = !{!58, !62, i64 8}
!58 = !{!"bloom_filter", !59, i64 0, !62, i64 8}
!59 = !{!"any pointer", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !{!"long", !60, i64 0}
!63 = !DILocation(line: 59, column: 29, scope: !12)
!64 = !DILocation(line: 61, column: 28, scope: !52)
!65 = !{!66, !67, i64 4}
!66 = !{!"bloom_filter_settings", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12}
!67 = !{!"int", !60, i64 0}
!68 = !DILocation(line: 61, column: 16, scope: !52)
!69 = !DILocation(line: 61, column: 2, scope: !53)
!70 = !DILocation(line: 62, column: 28, scope: !51)
!71 = !{!72, !59, i64 0}
!72 = !{!"bloom_key", !59, i64 0}
!73 = !DILocation(line: 62, column: 23, scope: !51)
!74 = !{!67, !67, i64 0}
!75 = !DILocation(line: 62, column: 38, scope: !51)
!76 = !DILocation(line: 0, scope: !51)
!77 = !DILocation(line: 63, column: 33, scope: !51)
!78 = !DILocation(line: 65, column: 42, scope: !51)
!79 = !DILocation(line: 65, column: 30, scope: !51)
!80 = !DILocation(line: 65, column: 11, scope: !51)
!81 = !{!58, !59, i64 0}
!82 = !DILocation(line: 65, column: 3, scope: !51)
!83 = !DILocation(line: 65, column: 27, scope: !51)
!84 = !{!60, !60, i64 0}
!85 = !DILocation(line: 61, column: 41, scope: !52)
!86 = distinct !{!86, !69, !87, !88, !89}
!87 = !DILocation(line: 66, column: 2, scope: !53)
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !DILocation(line: 67, column: 1, scope: !12)
!91 = distinct !DISubprogram(name: "get_bitmask", scope: !1, file: !1, line: 49, type: !92, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{!4, !21}
!94 = !{!95}
!95 = !DILocalVariable(name: "pos", arg: 1, scope: !91, file: !1, line: 49, type: !21)
!96 = !DILocation(line: 0, scope: !91)
!97 = !DILocation(line: 51, column: 36, scope: !91)
!98 = !DILocation(line: 51, column: 28, scope: !91)
!99 = !DILocation(line: 51, column: 9, scope: !91)
!100 = !DILocation(line: 51, column: 2, scope: !91)
!101 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !102, scopeLine: 71, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{!46}
!104 = !{!105, !106, !107}
!105 = !DILocalVariable(name: "key", scope: !101, file: !1, line: 72, type: !17)
!106 = !DILocalVariable(name: "filter", scope: !101, file: !1, line: 73, type: !25)
!107 = !DILocalVariable(name: "settings", scope: !101, file: !1, line: 74, type: !35)
!108 = !DILocation(line: 72, column: 3, scope: !101)
!109 = !DILocation(line: 72, column: 20, scope: !101)
!110 = !DILocation(line: 73, column: 3, scope: !101)
!111 = !DILocation(line: 73, column: 23, scope: !101)
!112 = !DILocation(line: 74, column: 3, scope: !101)
!113 = !DILocation(line: 74, column: 32, scope: !101)
!114 = !DILocation(line: 75, column: 3, scope: !101)
!115 = !DILocation(line: 76, column: 3, scope: !101)
!116 = !DILocation(line: 77, column: 3, scope: !101)
!117 = !DILocation(line: 78, column: 3, scope: !101)
!118 = !DILocation(line: 79, column: 1, scope: !101)
!119 = !DISubprogram(name: "klee_make_symbolic", scope: !120, file: !120, line: 37, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!120 = !DIFile(filename: "klee/include/klee/klee.h", directory: "/Users/jryans/Projects")
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123, !32, !124}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
