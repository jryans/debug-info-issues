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

; Function Attrs: nofree noinline norecurse nosync nounwind ssp uwtable
define void @add_key_to_filter(%struct.bloom_key* nocapture readonly %key, %struct.bloom_filter* nocapture readonly %filter, %struct.bloom_filter_settings* nocapture readonly %settings) local_unnamed_addr #0 !dbg !13 {
entry:
  call void @llvm.dbg.value(metadata %struct.bloom_key* %key, metadata !43, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata %struct.bloom_filter* %filter, metadata !44, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata %struct.bloom_filter_settings* %settings, metadata !45, metadata !DIExpression()), !dbg !57
  %len = getelementptr inbounds %struct.bloom_filter, %struct.bloom_filter* %filter, i64 0, i32 1, !dbg !58
  %0 = load i64, i64* %len, align 8, !dbg !58, !tbaa !59
  %mul = shl i64 %0, 3, !dbg !65
  call void @llvm.dbg.value(metadata i64 %mul, metadata !48, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32 0, metadata !46, metadata !DIExpression()), !dbg !57
  %num_hashes = getelementptr inbounds %struct.bloom_filter_settings, %struct.bloom_filter_settings* %settings, i64 0, i32 1
  %hashes = getelementptr inbounds %struct.bloom_key, %struct.bloom_key* %key, i64 0, i32 0
  %data = getelementptr inbounds %struct.bloom_filter, %struct.bloom_filter* %filter, i64 0, i32 0
  call void @llvm.dbg.value(metadata i32 0, metadata !46, metadata !DIExpression()), !dbg !57
  %1 = load i32, i32* %num_hashes, align 4, !dbg !66, !tbaa !67
  %cmp15.not = icmp eq i32 %1, 0, !dbg !70
  br i1 %cmp15.not, label %for.end, label %for.body, !dbg !71

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !46, metadata !DIExpression()), !dbg !57
  %2 = load i32*, i32** %hashes, align 8, !dbg !72, !tbaa !73
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %indvars.iv, !dbg !75
  %3 = load i32, i32* %arrayidx, align 4, !dbg !75, !tbaa !76
  %conv = zext i32 %3 to i64, !dbg !75
  %rem = urem i64 %conv, %mul, !dbg !77
  call void @llvm.dbg.value(metadata i64 %rem, metadata !52, metadata !DIExpression()), !dbg !78
  %div = lshr i64 %rem, 3, !dbg !79
  call void @llvm.dbg.value(metadata i64 %div, metadata !56, metadata !DIExpression()), !dbg !78
  %conv1 = trunc i64 %rem to i32, !dbg !80
  %call = call fastcc zeroext i8 @get_bitmask(i32 %conv1), !dbg !81
  %4 = load i8*, i8** %data, align 8, !dbg !82, !tbaa !83
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %div, !dbg !84
  %5 = load i8, i8* %arrayidx3, align 1, !dbg !85, !tbaa !86
  %or14 = or i8 %5, %call, !dbg !85
  store i8 %or14, i8* %arrayidx3, align 1, !dbg !85, !tbaa !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !87
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !46, metadata !DIExpression()), !dbg !57
  %6 = load i32, i32* %num_hashes, align 4, !dbg !66, !tbaa !67
  %7 = zext i32 %6 to i64, !dbg !70
  %cmp = icmp ult i64 %indvars.iv.next, %7, !dbg !70
  br i1 %cmp, label %for.body, label %for.end, !dbg !71, !llvm.loop !88

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !92
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone ssp uwtable willreturn
define internal fastcc zeroext i8 @get_bitmask(i32 %pos) unnamed_addr #3 !dbg !93 {
entry:
  call void @llvm.dbg.value(metadata i32 %pos, metadata !97, metadata !DIExpression()), !dbg !98
  %and = and i32 %pos, 7, !dbg !99
  %shl = shl i32 1, %and, !dbg !100
  %conv = trunc i32 %shl to i8, !dbg !101
  ret i8 %conv, !dbg !102
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #4 !dbg !103 {
entry:
  %key = alloca %struct.bloom_key, align 8
  %filter = alloca %struct.bloom_filter, align 8
  %settings = alloca %struct.bloom_filter_settings, align 4
  %0 = bitcast %struct.bloom_key* %key to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !110
  call void @llvm.dbg.declare(metadata %struct.bloom_key* %key, metadata !107, metadata !DIExpression()), !dbg !111
  %1 = bitcast %struct.bloom_filter* %filter to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !112
  call void @llvm.dbg.declare(metadata %struct.bloom_filter* %filter, metadata !108, metadata !DIExpression()), !dbg !113
  %2 = bitcast %struct.bloom_filter_settings* %settings to i8*, !dbg !114
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !114
  call void @llvm.dbg.declare(metadata %struct.bloom_filter_settings* %settings, metadata !109, metadata !DIExpression()), !dbg !115
  call void @klee_make_symbolic(i8* nonnull %0, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !116
  call void @klee_make_symbolic(i8* nonnull %1, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !117
  call void @klee_make_symbolic(i8* nonnull %2, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !118
  call void @add_key_to_filter(%struct.bloom_key* nonnull %key, %struct.bloom_filter* nonnull %filter, %struct.bloom_filter_settings* nonnull %settings), !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !120
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !120
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !120
  ret i32 0, !dbg !120
}

declare !dbg !121 void @klee_make_symbolic(i8*, i64, i8*) local_unnamed_addr #5

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
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/add-key-to-filter")
!9 = !{}
!10 = !{!11}
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!13 = distinct !DISubprogram(name: "add_key_to_filter", scope: !8, file: !8, line: 53, type: !14, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !42)
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
!42 = !{!43, !44, !45, !46, !48, !52, !56}
!43 = !DILocalVariable(name: "key", arg: 1, scope: !13, file: !8, line: 53, type: !16)
!44 = !DILocalVariable(name: "filter", arg: 2, scope: !13, file: !8, line: 53, type: !25)
!45 = !DILocalVariable(name: "settings", arg: 3, scope: !13, file: !8, line: 54, type: !34)
!46 = !DILocalVariable(name: "i", scope: !13, file: !8, line: 55, type: !47)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !DILocalVariable(name: "mod", scope: !13, file: !8, line: 56, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 31, baseType: !51)
!50 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!51 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!52 = !DILocalVariable(name: "hash_mod", scope: !53, file: !8, line: 59, type: !49)
!53 = distinct !DILexicalBlock(scope: !54, file: !8, line: 58, column: 46)
!54 = distinct !DILexicalBlock(scope: !55, file: !8, line: 58, column: 3)
!55 = distinct !DILexicalBlock(scope: !13, file: !8, line: 58, column: 3)
!56 = !DILocalVariable(name: "block_pos", scope: !53, file: !8, line: 60, type: !49)
!57 = !DILocation(line: 0, scope: !13)
!58 = !DILocation(line: 56, column: 26, scope: !13)
!59 = !{!60, !64, i64 8}
!60 = !{!"bloom_filter", !61, i64 0, !64, i64 8}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!"long", !62, i64 0}
!65 = !DILocation(line: 56, column: 30, scope: !13)
!66 = !DILocation(line: 58, column: 29, scope: !54)
!67 = !{!68, !69, i64 4}
!68 = !{!"bloom_filter_settings", !69, i64 0, !69, i64 4, !69, i64 8, !69, i64 12}
!69 = !{!"int", !62, i64 0}
!70 = !DILocation(line: 58, column: 17, scope: !54)
!71 = !DILocation(line: 58, column: 3, scope: !55)
!72 = !DILocation(line: 59, column: 30, scope: !53)
!73 = !{!74, !61, i64 0}
!74 = !{!"bloom_key", !61, i64 0}
!75 = !DILocation(line: 59, column: 25, scope: !53)
!76 = !{!69, !69, i64 0}
!77 = !DILocation(line: 59, column: 40, scope: !53)
!78 = !DILocation(line: 0, scope: !53)
!79 = !DILocation(line: 60, column: 35, scope: !53)
!80 = !DILocation(line: 62, column: 44, scope: !53)
!81 = !DILocation(line: 62, column: 32, scope: !53)
!82 = !DILocation(line: 62, column: 13, scope: !53)
!83 = !{!60, !61, i64 0}
!84 = !DILocation(line: 62, column: 5, scope: !53)
!85 = !DILocation(line: 62, column: 29, scope: !53)
!86 = !{!62, !62, i64 0}
!87 = !DILocation(line: 58, column: 42, scope: !54)
!88 = distinct !{!88, !71, !89, !90, !91}
!89 = !DILocation(line: 63, column: 3, scope: !55)
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !DILocation(line: 64, column: 1, scope: !13)
!93 = distinct !DISubprogram(name: "get_bitmask", scope: !8, file: !8, line: 49, type: !94, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{!11, !22}
!96 = !{!97}
!97 = !DILocalVariable(name: "pos", arg: 1, scope: !93, file: !8, line: 49, type: !22)
!98 = !DILocation(line: 0, scope: !93)
!99 = !DILocation(line: 50, column: 37, scope: !93)
!100 = !DILocation(line: 50, column: 29, scope: !93)
!101 = !DILocation(line: 50, column: 10, scope: !93)
!102 = !DILocation(line: 50, column: 3, scope: !93)
!103 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 70, type: !104, scopeLine: 70, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!47}
!106 = !{!107, !108, !109}
!107 = !DILocalVariable(name: "key", scope: !103, file: !8, line: 78, type: !18)
!108 = !DILocalVariable(name: "filter", scope: !103, file: !8, line: 79, type: !26)
!109 = !DILocalVariable(name: "settings", scope: !103, file: !8, line: 80, type: !36)
!110 = !DILocation(line: 78, column: 3, scope: !103)
!111 = !DILocation(line: 78, column: 20, scope: !103)
!112 = !DILocation(line: 79, column: 3, scope: !103)
!113 = !DILocation(line: 79, column: 23, scope: !103)
!114 = !DILocation(line: 80, column: 3, scope: !103)
!115 = !DILocation(line: 80, column: 32, scope: !103)
!116 = !DILocation(line: 81, column: 3, scope: !103)
!117 = !DILocation(line: 82, column: 3, scope: !103)
!118 = !DILocation(line: 83, column: 3, scope: !103)
!119 = !DILocation(line: 86, column: 3, scope: !103)
!120 = !DILocation(line: 87, column: 1, scope: !103)
!121 = !DISubprogram(name: "klee_make_symbolic", scope: !122, file: !122, line: 37, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!122 = !DIFile(filename: "klee/include/klee/klee.h", directory: "/Users/jryans/Projects")
!123 = !DISubroutineType(types: !124)
!124 = !{null, !125, !33, !126}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
