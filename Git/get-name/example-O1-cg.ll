; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.object_id = type { [32 x i8], i32 }

@.str = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @get_name(i8* %path, %struct.object_id* %oid, i32 %flag, i8* nocapture readnone %cb_data) local_unnamed_addr #0 !dbg !44 {
entry:
  %peeled = alloca %struct.object_id, align 4
  %path_to_match = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %path, metadata !58, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata %struct.object_id* %oid, metadata !59, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32 %flag, metadata !60, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i8* %cb_data, metadata !61, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !74
  %0 = bitcast %struct.object_id* %peeled to i8*, !dbg !75
  call void @llvm.lifetime.start.p0i8(i64 36, i8* nonnull %0) #5, !dbg !75
  call void @llvm.dbg.declare(metadata %struct.object_id* %peeled, metadata !63, metadata !DIExpression()), !dbg !76
  %1 = bitcast i8** %path_to_match to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #5, !dbg !77
  call void @llvm.dbg.value(metadata i8* null, metadata !66, metadata !DIExpression()), !dbg !74
  store i8* null, i8** %path_to_match, align 8, !dbg !78, !tbaa !79
  call void @llvm.dbg.value(metadata i8** %path_to_match, metadata !66, metadata !DIExpression(DW_OP_deref)), !dbg !74
  %call = call i32 @skip_prefix(i8* %path, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** nonnull %path_to_match) #5, !dbg !83
  %tobool.not = icmp eq i32 %call, 0, !dbg !83
  br i1 %tobool.not, label %cleanup66, label %if.end47, !dbg !85

if.end47:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !62, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32 1, metadata !62, metadata !DIExpression()), !dbg !74
  %call48 = call i32 @peel_iterated_oid(%struct.object_id* %oid, %struct.object_id* nonnull %peeled) #5, !dbg !86
  %tobool49.not = icmp eq i32 %call48, 0, !dbg !86
  br i1 %tobool49.not, label %if.then50, label %if.else53, !dbg !88

if.then50:                                        ; preds = %if.end47
  %call51 = call i32 @oideq(%struct.object_id* %oid, %struct.object_id* nonnull %peeled) #5, !dbg !89
  %tobool52.not.not = icmp eq i32 %call51, 0, !dbg !91
  call void @llvm.dbg.value(metadata i1 %tobool52.not.not, metadata !64, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !74
  call void @llvm.dbg.value(metadata i32 undef, metadata !64, metadata !DIExpression()), !dbg !74
  br i1 %tobool52.not.not, label %if.end62, label %if.then59, !dbg !92

if.else53:                                        ; preds = %if.end47
  call void @oidcpy(%struct.object_id* nonnull %peeled, %struct.object_id* %oid) #5, !dbg !93
  call void @llvm.dbg.value(metadata i32 0, metadata !64, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i32 undef, metadata !64, metadata !DIExpression()), !dbg !74
  br label %if.then59, !dbg !92

if.then59:                                        ; preds = %if.then50, %if.else53
  call void @llvm.dbg.value(metadata i32 1, metadata !65, metadata !DIExpression()), !dbg !74
  br label %if.end62, !dbg !95

if.end62:                                         ; preds = %if.then50, %if.then59
  %prio.0 = phi i32 [ 1, %if.then59 ], [ 2, %if.then50 ], !dbg !98
  call void @llvm.dbg.value(metadata i32 %prio.0, metadata !65, metadata !DIExpression()), !dbg !74
  %add.ptr65 = getelementptr inbounds i8, i8* %path, i64 10, !dbg !99
  call void @add_to_known_names(i8* nonnull %add.ptr65, %struct.object_id* nonnull %peeled, i32 %prio.0, %struct.object_id* %oid) #5, !dbg !100
  br label %cleanup66, !dbg !101

cleanup66:                                        ; preds = %entry, %if.end62
  %2 = bitcast i8** %path_to_match to i8*, !dbg !77
  %3 = bitcast %struct.object_id* %peeled to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 36, i8* nonnull %3) #5, !dbg !102
  ret i32 0, !dbg !102
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !103 i32 @skip_prefix(i8*, i8*, i8**) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !107 i32 @peel_iterated_oid(%struct.object_id*, %struct.object_id*) local_unnamed_addr #3

declare !dbg !111 i32 @oideq(%struct.object_id*, %struct.object_id*) local_unnamed_addr #3

declare !dbg !114 void @oidcpy(%struct.object_id*, %struct.object_id*) local_unnamed_addr #3

declare !dbg !117 void @add_to_known_names(i8*, %struct.object_id*, i32, %struct.object_id*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!43}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, globals: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/get-name")
!9 = !{}
!10 = !{!11, !14, !41}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "all", scope: !7, file: !8, line: 63, type: !13, isLocal: true, isDefinition: true)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "exclude_patterns", scope: !7, file: !8, line: 65, type: !16, isLocal: true, isDefinition: true)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list", file: !8, line: 46, size: 320, elements: !17)
!17 = !{!18, !27, !31, !32, !34}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !16, file: !8, line: 47, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list_item", file: !8, line: 31, size: 128, elements: !21)
!21 = !{!22, !25}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !20, file: !8, line: 32, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "util", scope: !20, file: !8, line: 33, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !16, file: !8, line: 48, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "LLVM/llvm/builds/release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stddef.h", directory: "/Users/jryans/Projects")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !16, file: !8, line: 49, baseType: !28, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "strdup_strings", scope: !16, file: !8, line: 50, baseType: !33, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !16, file: !8, line: 51, baseType: !35, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "compare_strings_fn", file: !8, line: 44, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!13, !39, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "patterns", scope: !7, file: !8, line: 64, type: !16, isLocal: true, isDefinition: true)
!43 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!44 = distinct !DISubprogram(name: "get_name", scope: !8, file: !8, line: 72, type: !45, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !57)
!45 = !DISubroutineType(types: !46)
!46 = !{!13, !39, !47, !13, !26}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_id", file: !8, line: 13, size: 288, elements: !50)
!50 = !{!51, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !49, file: !8, line: 14, baseType: !52, size: 256)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !54)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !{!55}
!55 = !DISubrange(count: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !49, file: !8, line: 15, baseType: !13, size: 32, offset: 256)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !70, !73}
!58 = !DILocalVariable(name: "path", arg: 1, scope: !44, file: !8, line: 72, type: !39)
!59 = !DILocalVariable(name: "oid", arg: 2, scope: !44, file: !8, line: 72, type: !47)
!60 = !DILocalVariable(name: "flag", arg: 3, scope: !44, file: !8, line: 73, type: !13)
!61 = !DILocalVariable(name: "cb_data", arg: 4, scope: !44, file: !8, line: 73, type: !26)
!62 = !DILocalVariable(name: "is_tag", scope: !44, file: !8, line: 75, type: !13)
!63 = !DILocalVariable(name: "peeled", scope: !44, file: !8, line: 76, type: !49)
!64 = !DILocalVariable(name: "is_annotated", scope: !44, file: !8, line: 77, type: !13)
!65 = !DILocalVariable(name: "prio", scope: !44, file: !8, line: 77, type: !13)
!66 = !DILocalVariable(name: "path_to_match", scope: !44, file: !8, line: 78, type: !39)
!67 = !DILocalVariable(name: "item", scope: !68, file: !8, line: 99, type: !19)
!68 = distinct !DILexicalBlock(scope: !69, file: !8, line: 98, column: 28)
!69 = distinct !DILexicalBlock(scope: !44, file: !8, line: 98, column: 7)
!70 = !DILocalVariable(name: "found", scope: !71, file: !8, line: 112, type: !13)
!71 = distinct !DILexicalBlock(scope: !72, file: !8, line: 111, column: 20)
!72 = distinct !DILexicalBlock(scope: !44, file: !8, line: 111, column: 7)
!73 = !DILocalVariable(name: "item", scope: !71, file: !8, line: 113, type: !19)
!74 = !DILocation(line: 0, scope: !44)
!75 = !DILocation(line: 76, column: 3, scope: !44)
!76 = !DILocation(line: 76, column: 20, scope: !44)
!77 = !DILocation(line: 78, column: 3, scope: !44)
!78 = !DILocation(line: 78, column: 15, scope: !44)
!79 = !{!80, !80, i64 0}
!80 = !{!"any pointer", !81, i64 0}
!81 = !{!"omnipotent char", !82, i64 0}
!82 = !{!"Simple C/C++ TBAA"}
!83 = !DILocation(line: 80, column: 7, scope: !84)
!84 = distinct !DILexicalBlock(scope: !44, file: !8, line: 80, column: 7)
!85 = !DILocation(line: 80, column: 7, scope: !44)
!86 = !DILocation(line: 127, column: 8, scope: !87)
!87 = distinct !DILexicalBlock(scope: !44, file: !8, line: 127, column: 7)
!88 = !DILocation(line: 127, column: 7, scope: !44)
!89 = !DILocation(line: 128, column: 21, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !8, line: 127, column: 41)
!91 = !DILocation(line: 128, column: 20, scope: !90)
!92 = !DILocation(line: 140, column: 7, scope: !44)
!93 = !DILocation(line: 130, column: 5, scope: !94)
!94 = distinct !DILexicalBlock(scope: !87, file: !8, line: 129, column: 10)
!95 = !DILocation(line: 143, column: 5, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !8, line: 142, column: 12)
!97 = distinct !DILexicalBlock(scope: !44, file: !8, line: 140, column: 7)
!98 = !DILocation(line: 0, scope: !97)
!99 = !DILocation(line: 147, column: 22, scope: !44)
!100 = !DILocation(line: 147, column: 3, scope: !44)
!101 = !DILocation(line: 148, column: 3, scope: !44)
!102 = !DILocation(line: 149, column: 1, scope: !44)
!103 = !DISubprogram(name: "skip_prefix", scope: !8, file: !8, line: 8, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!104 = !DISubroutineType(types: !105)
!105 = !{!13, !39, !39, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!107 = !DISubprogram(name: "peel_iterated_oid", scope: !8, file: !8, line: 42, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!108 = !DISubroutineType(types: !109)
!109 = !{!13, !47, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!111 = !DISubprogram(name: "oideq", scope: !8, file: !8, line: 18, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!112 = !DISubroutineType(types: !113)
!113 = !{!13, !47, !47}
!114 = !DISubprogram(name: "oidcpy", scope: !8, file: !8, line: 19, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !110, !47}
!117 = !DISubprogram(name: "add_to_known_names", scope: !8, file: !8, line: 67, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !9)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !39, !47, !13, !47}
