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

@branch_table_sz = external global i64, align 8
@.str = private unnamed_addr constant [47 x i8] c"Invalid attempt to create duplicate branch: %s\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Branch name doesn't conform to GIT standards: %s\00", align 1
@fi_mem_pool = external global %struct.mem_pool, align 8
@branch_table = external global %struct.branch**, align 8
@branch_count = external global i64, align 8

; Function Attrs: noinline noreturn nounwind ssp uwtable
define void @die(i8* %err, ...) #0 !dbg !11 {
entry:
  %err.addr = alloca i8*, align 8
  store i8* %err, i8** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %err.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @exit(i32 1) #5, !dbg !19
  unreachable, !dbg !19
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define %struct.branch* @new_branch(i8* %name) #3 !dbg !20 {
entry:
  %name.addr = alloca i8*, align 8
  %hc = alloca i32, align 4
  %b = alloca %struct.branch*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %hc, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load i8*, i8** %name.addr, align 8, !dbg !66
  %1 = load i8*, i8** %name.addr, align 8, !dbg !67
  %call = call i64 @strlen(i8* %1), !dbg !68
  %call1 = call i32 @hc_str(i8* %0, i64 %call), !dbg !69
  %conv = zext i32 %call1 to i64, !dbg !69
  %2 = load i64, i64* @branch_table_sz, align 8, !dbg !70
  %rem = urem i64 %conv, %2, !dbg !71
  %conv2 = trunc i64 %rem to i32, !dbg !69
  store i32 %conv2, i32* %hc, align 4, !dbg !65
  call void @llvm.dbg.declare(metadata %struct.branch** %b, metadata !72, metadata !DIExpression()), !dbg !73
  %3 = load i8*, i8** %name.addr, align 8, !dbg !74
  %call3 = call %struct.branch* @lookup_branch(i8* %3), !dbg !75
  store %struct.branch* %call3, %struct.branch** %b, align 8, !dbg !73
  %4 = load %struct.branch*, %struct.branch** %b, align 8, !dbg !76
  %tobool = icmp ne %struct.branch* %4, null, !dbg !76
  br i1 %tobool, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %name.addr, align 8, !dbg !79
  call void (i8*, ...) @die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %5) #5, !dbg !80
  unreachable, !dbg !80

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %name.addr, align 8, !dbg !81
  %call4 = call i32 @check_refname_format(i8* %6, i32 1), !dbg !83
  %tobool5 = icmp ne i32 %call4, 0, !dbg !83
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !84

if.then6:                                         ; preds = %if.end
  %7 = load i8*, i8** %name.addr, align 8, !dbg !85
  call void (i8*, ...) @die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %7) #5, !dbg !86
  unreachable, !dbg !86

if.end7:                                          ; preds = %if.end
  %call8 = call i8* @mem_pool_calloc(%struct.mem_pool* @fi_mem_pool, i64 1, i64 160), !dbg !87
  %8 = bitcast i8* %call8 to %struct.branch*, !dbg !87
  store %struct.branch* %8, %struct.branch** %b, align 8, !dbg !88
  %9 = load i8*, i8** %name.addr, align 8, !dbg !89
  %call9 = call i8* @mem_pool_strdup(%struct.mem_pool* @fi_mem_pool, i8* %9), !dbg !90
  %10 = load %struct.branch*, %struct.branch** %b, align 8, !dbg !91
  %name10 = getelementptr inbounds %struct.branch, %struct.branch* %10, i32 0, i32 2, !dbg !92
  store i8* %call9, i8** %name10, align 8, !dbg !93
  %11 = load %struct.branch**, %struct.branch*** @branch_table, align 8, !dbg !94
  %12 = load i32, i32* %hc, align 4, !dbg !95
  %idxprom = zext i32 %12 to i64, !dbg !94
  %arrayidx = getelementptr inbounds %struct.branch*, %struct.branch** %11, i64 %idxprom, !dbg !94
  %13 = load %struct.branch*, %struct.branch** %arrayidx, align 8, !dbg !94
  %14 = load %struct.branch*, %struct.branch** %b, align 8, !dbg !96
  %table_next_branch = getelementptr inbounds %struct.branch, %struct.branch* %14, i32 0, i32 0, !dbg !97
  store %struct.branch* %13, %struct.branch** %table_next_branch, align 8, !dbg !98
  %15 = load %struct.branch*, %struct.branch** %b, align 8, !dbg !99
  %branch_tree = getelementptr inbounds %struct.branch, %struct.branch* %15, i32 0, i32 3, !dbg !100
  %versions = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %branch_tree, i32 0, i32 0, !dbg !101
  %arrayidx11 = getelementptr inbounds [2 x %struct.tree_entry_ms], [2 x %struct.tree_entry_ms]* %versions, i64 0, i64 0, !dbg !99
  %mode = getelementptr inbounds %struct.tree_entry_ms, %struct.tree_entry_ms* %arrayidx11, i32 0, i32 0, !dbg !102
  store i16 16384, i16* %mode, align 8, !dbg !103
  %16 = load %struct.branch*, %struct.branch** %b, align 8, !dbg !104
  %branch_tree12 = getelementptr inbounds %struct.branch, %struct.branch* %16, i32 0, i32 3, !dbg !105
  %versions13 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %branch_tree12, i32 0, i32 0, !dbg !106
  %arrayidx14 = getelementptr inbounds [2 x %struct.tree_entry_ms], [2 x %struct.tree_entry_ms]* %versions13, i64 0, i64 1, !dbg !104
  %mode15 = getelementptr inbounds %struct.tree_entry_ms, %struct.tree_entry_ms* %arrayidx14, i32 0, i32 0, !dbg !107
  store i16 16384, i16* %mode15, align 8, !dbg !108
  %17 = load %struct.branch*, %struct.branch** %b, align 8, !dbg !109
  %num_notes = getelementptr inbounds %struct.branch, %struct.branch* %17, i32 0, i32 5, !dbg !110
  store i64 0, i64* %num_notes, align 8, !dbg !111
  %18 = load %struct.branch*, %struct.branch** %b, align 8, !dbg !112
  %active = getelementptr inbounds %struct.branch, %struct.branch* %18, i32 0, i32 6, !dbg !113
  %19 = bitcast i24* %active to i32*, !dbg !113
  %bf.load = load i32, i32* %19, align 8, !dbg !114
  %bf.clear = and i32 %bf.load, -2, !dbg !114
  store i32 %bf.clear, i32* %19, align 8, !dbg !114
  %20 = load %struct.branch*, %struct.branch** %b, align 8, !dbg !115
  %pack_id = getelementptr inbounds %struct.branch, %struct.branch* %20, i32 0, i32 6, !dbg !116
  %21 = bitcast i24* %pack_id to i32*, !dbg !116
  %bf.load16 = load i32, i32* %21, align 8, !dbg !117
  %bf.clear17 = and i32 %bf.load16, -262141, !dbg !117
  %bf.set = or i32 %bf.clear17, 262140, !dbg !117
  store i32 %bf.set, i32* %21, align 8, !dbg !117
  %22 = load %struct.branch*, %struct.branch** %b, align 8, !dbg !118
  %23 = load %struct.branch**, %struct.branch*** @branch_table, align 8, !dbg !119
  %24 = load i32, i32* %hc, align 4, !dbg !120
  %idxprom18 = zext i32 %24 to i64, !dbg !119
  %arrayidx19 = getelementptr inbounds %struct.branch*, %struct.branch** %23, i64 %idxprom18, !dbg !119
  store %struct.branch* %22, %struct.branch** %arrayidx19, align 8, !dbg !121
  %25 = load i64, i64* @branch_count, align 8, !dbg !122
  %inc = add i64 %25, 1, !dbg !122
  store i64 %inc, i64* @branch_count, align 8, !dbg !122
  %26 = load %struct.branch*, %struct.branch** %b, align 8, !dbg !123
  ret %struct.branch* %26, !dbg !124
}

declare i32 @hc_str(i8*, i64) #4

declare i64 @strlen(i8*) #4

declare %struct.branch* @lookup_branch(i8*) #4

declare i32 @check_refname_format(i8*, i32) #4

declare i8* @mem_pool_calloc(%struct.mem_pool*, i64, i64) #4

declare i8* @mem_pool_strdup(%struct.mem_pool*, i8*) #4

attributes #0 = { noinline noreturn nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }

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
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/new-branch")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "die", scope: !8, file: !8, line: 9, type: !12, scopeLine: 9, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, null}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DILocalVariable(name: "err", arg: 1, scope: !11, file: !8, line: 9, type: !14)
!18 = !DILocation(line: 9, column: 52, scope: !11)
!19 = !DILocation(line: 10, column: 3, scope: !11)
!20 = distinct !DISubprogram(name: "new_branch", scope: !8, file: !8, line: 91, type: !21, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !14}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "branch", file: !8, line: 74, size: 1280, elements: !25)
!25 = !{!26, !27, !28, !29, !52, !56, !57, !59, !60, !61}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "table_next_branch", scope: !24, file: !8, line: 75, baseType: !23, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "active_next_branch", scope: !24, file: !8, line: 76, baseType: !23, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !24, file: !8, line: 77, baseType: !14, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "branch_tree", scope: !24, file: !8, line: 78, baseType: !30, size: 640, offset: 192)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_entry", file: !8, line: 55, size: 640, elements: !31)
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "versions", scope: !30, file: !8, line: 61, baseType: !33, size: 640)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 640, elements: !50)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_entry_ms", file: !8, line: 58, size: 320, elements: !35)
!35 = !{!36, !40}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !34, file: !8, line: 59, baseType: !37, size: 16)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !38, line: 31, baseType: !39)
!38 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h", directory: "")
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "oid", scope: !34, file: !8, line: 60, baseType: !41, size: 288, offset: 32)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_id", file: !8, line: 15, size: 288, elements: !42)
!42 = !{!43, !48}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !41, file: !8, line: 16, baseType: !44, size: 256)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !46)
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !{!47}
!47 = !DISubrange(count: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !41, file: !8, line: 17, baseType: !49, size: 32, offset: 256)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !{!51}
!51 = !DISubrange(count: 2)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "last_commit", scope: !24, file: !8, line: 79, baseType: !53, size: 64, offset: 832)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !54, line: 32, baseType: !55)
!54 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!55 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "num_notes", scope: !24, file: !8, line: 80, baseType: !53, size: 64, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !24, file: !8, line: 81, baseType: !58, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "delete", scope: !24, file: !8, line: 82, baseType: !58, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pack_id", scope: !24, file: !8, line: 83, baseType: !58, size: 16, offset: 962, flags: DIFlagBitField, extraData: i64 960)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "oid", scope: !24, file: !8, line: 84, baseType: !41, size: 288, offset: 992)
!62 = !DILocalVariable(name: "name", arg: 1, scope: !20, file: !8, line: 91, type: !14)
!63 = !DILocation(line: 91, column: 39, scope: !20)
!64 = !DILocalVariable(name: "hc", scope: !20, file: !8, line: 93, type: !58)
!65 = !DILocation(line: 93, column: 15, scope: !20)
!66 = !DILocation(line: 93, column: 27, scope: !20)
!67 = !DILocation(line: 93, column: 40, scope: !20)
!68 = !DILocation(line: 93, column: 33, scope: !20)
!69 = !DILocation(line: 93, column: 20, scope: !20)
!70 = !DILocation(line: 93, column: 49, scope: !20)
!71 = !DILocation(line: 93, column: 47, scope: !20)
!72 = !DILocalVariable(name: "b", scope: !20, file: !8, line: 94, type: !23)
!73 = !DILocation(line: 94, column: 17, scope: !20)
!74 = !DILocation(line: 94, column: 35, scope: !20)
!75 = !DILocation(line: 94, column: 21, scope: !20)
!76 = !DILocation(line: 96, column: 6, scope: !77)
!77 = distinct !DILexicalBlock(scope: !20, file: !8, line: 96, column: 6)
!78 = !DILocation(line: 96, column: 6, scope: !20)
!79 = !DILocation(line: 97, column: 57, scope: !77)
!80 = !DILocation(line: 97, column: 3, scope: !77)
!81 = !DILocation(line: 98, column: 27, scope: !82)
!82 = distinct !DILexicalBlock(scope: !20, file: !8, line: 98, column: 6)
!83 = !DILocation(line: 98, column: 6, scope: !82)
!84 = !DILocation(line: 98, column: 6, scope: !20)
!85 = !DILocation(line: 99, column: 59, scope: !82)
!86 = !DILocation(line: 99, column: 3, scope: !82)
!87 = !DILocation(line: 101, column: 6, scope: !20)
!88 = !DILocation(line: 101, column: 4, scope: !20)
!89 = !DILocation(line: 102, column: 42, scope: !20)
!90 = !DILocation(line: 102, column: 12, scope: !20)
!91 = !DILocation(line: 102, column: 2, scope: !20)
!92 = !DILocation(line: 102, column: 5, scope: !20)
!93 = !DILocation(line: 102, column: 10, scope: !20)
!94 = !DILocation(line: 103, column: 25, scope: !20)
!95 = !DILocation(line: 103, column: 38, scope: !20)
!96 = !DILocation(line: 103, column: 2, scope: !20)
!97 = !DILocation(line: 103, column: 5, scope: !20)
!98 = !DILocation(line: 103, column: 23, scope: !20)
!99 = !DILocation(line: 104, column: 2, scope: !20)
!100 = !DILocation(line: 104, column: 5, scope: !20)
!101 = !DILocation(line: 104, column: 17, scope: !20)
!102 = !DILocation(line: 104, column: 29, scope: !20)
!103 = !DILocation(line: 104, column: 34, scope: !20)
!104 = !DILocation(line: 105, column: 2, scope: !20)
!105 = !DILocation(line: 105, column: 5, scope: !20)
!106 = !DILocation(line: 105, column: 17, scope: !20)
!107 = !DILocation(line: 105, column: 29, scope: !20)
!108 = !DILocation(line: 105, column: 34, scope: !20)
!109 = !DILocation(line: 106, column: 2, scope: !20)
!110 = !DILocation(line: 106, column: 5, scope: !20)
!111 = !DILocation(line: 106, column: 15, scope: !20)
!112 = !DILocation(line: 107, column: 2, scope: !20)
!113 = !DILocation(line: 107, column: 5, scope: !20)
!114 = !DILocation(line: 107, column: 12, scope: !20)
!115 = !DILocation(line: 108, column: 2, scope: !20)
!116 = !DILocation(line: 108, column: 5, scope: !20)
!117 = !DILocation(line: 108, column: 13, scope: !20)
!118 = !DILocation(line: 109, column: 21, scope: !20)
!119 = !DILocation(line: 109, column: 2, scope: !20)
!120 = !DILocation(line: 109, column: 15, scope: !20)
!121 = !DILocation(line: 109, column: 19, scope: !20)
!122 = !DILocation(line: 110, column: 14, scope: !20)
!123 = !DILocation(line: 111, column: 9, scope: !20)
!124 = !DILocation(line: 111, column: 2, scope: !20)
