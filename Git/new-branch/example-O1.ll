; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.mem_pool = type { %struct.mp_block*, i64, i64 }
%struct.mp_block = type { %struct.mp_block*, i8*, i8*, [0 x i64] }
%struct.branch = type { %struct.branch*, %struct.branch*, i8*, %struct.tree_entry, i64, i64, i24, %struct.object_id }
%struct.tree_entry = type { [2 x %struct.tree_entry_ms] }
%struct.tree_entry_ms = type { i16, %struct.object_id }
%struct.object_id = type { [32 x i8], i32 }

@branch_table_sz = external local_unnamed_addr global i64, align 8
@fi_mem_pool = external global %struct.mem_pool, align 8
@branch_table = external local_unnamed_addr global %struct.branch**, align 8
@branch_count = external local_unnamed_addr global i64, align 8

; Function Attrs: noinline noreturn nounwind ssp uwtable
define void @die(i8* nocapture readnone %err, ...) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i8* undef, metadata !18, metadata !DIExpression()), !dbg !19
  call void @exit(i32 1) #6, !dbg !20
  unreachable, !dbg !20
}

; Function Attrs: noreturn
declare void @exit(i32) local_unnamed_addr #1

; Function Attrs: noinline nounwind ssp uwtable
define %struct.branch* @new_branch(i8* %name) local_unnamed_addr #2 !dbg !21 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !64, metadata !DIExpression()), !dbg !67
  %call = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %name), !dbg !68
  %call1 = call i32 @hc_str(i8* %name, i64 %call) #7, !dbg !69
  %0 = load i64, i64* @branch_table_sz, align 8, !dbg !70, !tbaa !71
  call void @llvm.dbg.value(metadata i64 undef, metadata !65, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !67
  %call3 = call %struct.branch* @lookup_branch(i8* %name) #7, !dbg !75
  call void @llvm.dbg.value(metadata %struct.branch* %call3, metadata !66, metadata !DIExpression()), !dbg !67
  %tobool.not = icmp eq %struct.branch* %call3, null, !dbg !76
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !78

if.then:                                          ; preds = %entry
  call void (i8*, ...) @die(i8* undef, i8* %name) #8, !dbg !79
  unreachable, !dbg !79

if.end:                                           ; preds = %entry
  %call4 = call i32 @check_refname_format(i8* %name, i32 1) #7, !dbg !80
  %tobool5.not = icmp eq i32 %call4, 0, !dbg !80
  br i1 %tobool5.not, label %if.end7, label %if.then6, !dbg !82

if.then6:                                         ; preds = %if.end
  call void (i8*, ...) @die(i8* undef, i8* %name) #8, !dbg !83
  unreachable, !dbg !83

if.end7:                                          ; preds = %if.end
  %conv = zext i32 %call1 to i64, !dbg !69
  %rem = urem i64 %conv, %0, !dbg !84
  call void @llvm.dbg.value(metadata i64 %rem, metadata !65, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !67
  call void @llvm.dbg.value(metadata i64 %rem, metadata !65, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !67
  %call8 = call i8* @mem_pool_calloc(%struct.mem_pool* nonnull @fi_mem_pool, i64 1, i64 160) #7, !dbg !85
  %1 = bitcast i8* %call8 to %struct.branch*, !dbg !85
  call void @llvm.dbg.value(metadata %struct.branch* %1, metadata !66, metadata !DIExpression()), !dbg !67
  %call9 = call i8* @mem_pool_strdup(%struct.mem_pool* nonnull @fi_mem_pool, i8* %name) #7, !dbg !86
  %name10 = getelementptr inbounds i8, i8* %call8, i64 16, !dbg !87
  %2 = bitcast i8* %name10 to i8**, !dbg !87
  store i8* %call9, i8** %2, align 8, !dbg !88, !tbaa !89
  %3 = load %struct.branch**, %struct.branch*** @branch_table, align 8, !dbg !95, !tbaa !96
  %arrayidx = getelementptr inbounds %struct.branch*, %struct.branch** %3, i64 %rem, !dbg !95
  %4 = load %struct.branch*, %struct.branch** %arrayidx, align 8, !dbg !95, !tbaa !96
  %table_next_branch = bitcast i8* %call8 to %struct.branch**, !dbg !97
  store %struct.branch* %4, %struct.branch** %table_next_branch, align 8, !dbg !98, !tbaa !99
  %branch_tree = getelementptr inbounds i8, i8* %call8, i64 24, !dbg !100
  %mode = bitcast i8* %branch_tree to i16*, !dbg !101
  store i16 16384, i16* %mode, align 8, !dbg !102, !tbaa !103
  %arrayidx14 = getelementptr inbounds i8, i8* %call8, i64 64, !dbg !106
  %mode15 = bitcast i8* %arrayidx14 to i16*, !dbg !107
  store i16 16384, i16* %mode15, align 8, !dbg !108, !tbaa !103
  %num_notes = getelementptr inbounds i8, i8* %call8, i64 112, !dbg !109
  %5 = bitcast i8* %num_notes to i64*, !dbg !109
  store i64 0, i64* %5, align 8, !dbg !110, !tbaa !111
  %active = getelementptr inbounds i8, i8* %call8, i64 120, !dbg !112
  %6 = bitcast i8* %active to i32*, !dbg !112
  %bf.load = load i32, i32* %6, align 8, !dbg !113
  %bf.clear17 = and i32 %bf.load, -262142, !dbg !114
  %bf.set = or i32 %bf.clear17, 262140, !dbg !114
  store i32 %bf.set, i32* %6, align 8, !dbg !114
  %7 = load %struct.branch**, %struct.branch*** @branch_table, align 8, !dbg !115, !tbaa !96
  %arrayidx19 = getelementptr inbounds %struct.branch*, %struct.branch** %7, i64 %rem, !dbg !115
  %8 = bitcast %struct.branch** %arrayidx19 to i8**, !dbg !116
  store i8* %call8, i8** %8, align 8, !dbg !116, !tbaa !96
  %9 = load i64, i64* @branch_count, align 8, !dbg !117, !tbaa !71
  %inc = add i64 %9, 1, !dbg !117
  store i64 %inc, i64* @branch_count, align 8, !dbg !117, !tbaa !71
  ret %struct.branch* %1, !dbg !118
}

declare !dbg !119 i32 @hc_str(i8*, i64) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

declare !dbg !122 %struct.branch* @lookup_branch(i8*) local_unnamed_addr #3

declare !dbg !123 i32 @check_refname_format(i8*, i32) local_unnamed_addr #3

declare !dbg !126 i8* @mem_pool_calloc(%struct.mem_pool*, i64, i64) local_unnamed_addr #3

declare !dbg !149 i8* @mem_pool_strdup(%struct.mem_pool*, i8*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { noinline noreturn nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/new-branch")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "die", scope: !8, file: !8, line: 9, type: !12, scopeLine: 9, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !17)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, null}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18}
!18 = !DILocalVariable(name: "err", arg: 1, scope: !11, file: !8, line: 9, type: !14)
!19 = !DILocation(line: 0, scope: !11)
!20 = !DILocation(line: 10, column: 3, scope: !11)
!21 = distinct !DISubprogram(name: "new_branch", scope: !8, file: !8, line: 91, type: !22, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !63)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !14}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "branch", file: !8, line: 74, size: 1280, elements: !26)
!26 = !{!27, !28, !29, !30, !53, !57, !58, !60, !61, !62}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "table_next_branch", scope: !25, file: !8, line: 75, baseType: !24, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "active_next_branch", scope: !25, file: !8, line: 76, baseType: !24, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !8, line: 77, baseType: !14, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "branch_tree", scope: !25, file: !8, line: 78, baseType: !31, size: 640, offset: 192)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_entry", file: !8, line: 55, size: 640, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "versions", scope: !31, file: !8, line: 61, baseType: !34, size: 640)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !51)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_entry_ms", file: !8, line: 58, size: 320, elements: !36)
!36 = !{!37, !41}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !35, file: !8, line: 59, baseType: !38, size: 16)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !39, line: 31, baseType: !40)
!39 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h", directory: "")
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "oid", scope: !35, file: !8, line: 60, baseType: !42, size: 288, offset: 32)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_id", file: !8, line: 15, size: 288, elements: !43)
!43 = !{!44, !49}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !42, file: !8, line: 16, baseType: !45, size: 256)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !47)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !{!48}
!48 = !DISubrange(count: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !42, file: !8, line: 17, baseType: !50, size: 32, offset: 256)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !{!52}
!52 = !DISubrange(count: 2)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "last_commit", scope: !25, file: !8, line: 79, baseType: !54, size: 64, offset: 832)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !55, line: 32, baseType: !56)
!55 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "num_notes", scope: !25, file: !8, line: 80, baseType: !54, size: 64, offset: 896)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !25, file: !8, line: 81, baseType: !59, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!59 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "delete", scope: !25, file: !8, line: 82, baseType: !59, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pack_id", scope: !25, file: !8, line: 83, baseType: !59, size: 16, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "oid", scope: !25, file: !8, line: 84, baseType: !42, size: 288, offset: 992)
!63 = !{!64, !65, !66}
!64 = !DILocalVariable(name: "name", arg: 1, scope: !21, file: !8, line: 91, type: !14)
!65 = !DILocalVariable(name: "hc", scope: !21, file: !8, line: 93, type: !59)
!66 = !DILocalVariable(name: "b", scope: !21, file: !8, line: 94, type: !24)
!67 = !DILocation(line: 0, scope: !21)
!68 = !DILocation(line: 93, column: 33, scope: !21)
!69 = !DILocation(line: 93, column: 20, scope: !21)
!70 = !DILocation(line: 93, column: 49, scope: !21)
!71 = !{!72, !72, i64 0}
!72 = !{!"long", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !DILocation(line: 94, column: 21, scope: !21)
!76 = !DILocation(line: 96, column: 6, scope: !77)
!77 = distinct !DILexicalBlock(scope: !21, file: !8, line: 96, column: 6)
!78 = !DILocation(line: 96, column: 6, scope: !21)
!79 = !DILocation(line: 97, column: 3, scope: !77)
!80 = !DILocation(line: 98, column: 6, scope: !81)
!81 = distinct !DILexicalBlock(scope: !21, file: !8, line: 98, column: 6)
!82 = !DILocation(line: 98, column: 6, scope: !21)
!83 = !DILocation(line: 99, column: 3, scope: !81)
!84 = !DILocation(line: 93, column: 47, scope: !21)
!85 = !DILocation(line: 101, column: 6, scope: !21)
!86 = !DILocation(line: 102, column: 12, scope: !21)
!87 = !DILocation(line: 102, column: 5, scope: !21)
!88 = !DILocation(line: 102, column: 10, scope: !21)
!89 = !{!90, !91, i64 16}
!90 = !{!"branch", !91, i64 0, !91, i64 8, !91, i64 16, !92, i64 24, !72, i64 104, !72, i64 112, !93, i64 120, !93, i64 120, !93, i64 120, !94, i64 124}
!91 = !{!"any pointer", !73, i64 0}
!92 = !{!"tree_entry", !73, i64 0}
!93 = !{!"int", !73, i64 0}
!94 = !{!"object_id", !73, i64 0, !93, i64 32}
!95 = !DILocation(line: 103, column: 25, scope: !21)
!96 = !{!91, !91, i64 0}
!97 = !DILocation(line: 103, column: 5, scope: !21)
!98 = !DILocation(line: 103, column: 23, scope: !21)
!99 = !{!90, !91, i64 0}
!100 = !DILocation(line: 104, column: 5, scope: !21)
!101 = !DILocation(line: 104, column: 29, scope: !21)
!102 = !DILocation(line: 104, column: 34, scope: !21)
!103 = !{!104, !105, i64 0}
!104 = !{!"tree_entry_ms", !105, i64 0, !94, i64 4}
!105 = !{!"short", !73, i64 0}
!106 = !DILocation(line: 105, column: 2, scope: !21)
!107 = !DILocation(line: 105, column: 29, scope: !21)
!108 = !DILocation(line: 105, column: 34, scope: !21)
!109 = !DILocation(line: 106, column: 5, scope: !21)
!110 = !DILocation(line: 106, column: 15, scope: !21)
!111 = !{!90, !72, i64 112}
!112 = !DILocation(line: 107, column: 5, scope: !21)
!113 = !DILocation(line: 107, column: 12, scope: !21)
!114 = !DILocation(line: 108, column: 13, scope: !21)
!115 = !DILocation(line: 109, column: 2, scope: !21)
!116 = !DILocation(line: 109, column: 19, scope: !21)
!117 = !DILocation(line: 110, column: 14, scope: !21)
!118 = !DILocation(line: 111, column: 2, scope: !21)
!119 = !DISubprogram(name: "hc_str", scope: !8, file: !8, line: 87, type: !120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!120 = !DISubroutineType(types: !121)
!121 = !{!59, !14, !56}
!122 = !DISubprogram(name: "lookup_branch", scope: !8, file: !8, line: 89, type: !22, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!123 = !DISubprogram(name: "check_refname_format", scope: !8, file: !8, line: 24, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!124 = !DISubroutineType(types: !125)
!125 = !{!50, !14, !50}
!126 = !DISubprogram(name: "mem_pool_calloc", scope: !8, file: !8, line: 41, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!127 = !DISubroutineType(types: !128)
!128 = !{!129, !130, !56, !56}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_pool", file: !8, line: 35, size: 192, elements: !132)
!132 = !{!133, !145, !148}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "mp_block", scope: !131, file: !8, line: 36, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mp_block", file: !8, line: 28, size: 192, elements: !136)
!136 = !{!137, !138, !140, !141}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next_block", scope: !135, file: !8, line: 29, baseType: !134, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !135, file: !8, line: 30, baseType: !139, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !135, file: !8, line: 31, baseType: !139, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "space", scope: !135, file: !8, line: 32, baseType: !142, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: -1)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "block_alloc", scope: !131, file: !8, line: 37, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 46, baseType: !56)
!147 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stddef.h", directory: "/Users/jryans/Projects")
!148 = !DIDerivedType(tag: DW_TAG_member, name: "pool_alloc", scope: !131, file: !8, line: 38, baseType: !146, size: 64, offset: 128)
!149 = !DISubprogram(name: "mem_pool_strdup", scope: !8, file: !8, line: 43, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!150 = !DISubroutineType(types: !151)
!151 = !{!139, !130, !14}
