; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.string_list_item = type { i8*, i8* }
%struct.timeval = type { i64, i32 }
%struct.string_list = type { %struct.string_list_item*, i64, i64, i8, i32 (i8*, i8*)* }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"/home\00", align 1
@gettext_done = local_unnamed_addr global i8 0, align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"bob\00", align 1
@__const.main.item = private unnamed_addr constant %struct.string_list_item { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null }, align 8

; Function Attrs: nofree noinline nounwind ssp uwtable
define i64 @gettimeofday_nanos() local_unnamed_addr #0 !dbg !20 {
entry:
  %tv = alloca %struct.timeval, align 8
  %0 = bitcast %struct.timeval* %tv to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11, !dbg !37
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !24, metadata !DIExpression()), !dbg !38
  %call = call i32 @gettimeofday(%struct.timeval* nonnull %tv, i8* null), !dbg !39
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0, !dbg !40
  %1 = load i64, i64* %tv_sec, align 8, !dbg !40, !tbaa !41
  %mul = mul i64 %1, 1000000000, !dbg !47
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1, !dbg !48
  %2 = load i32, i32* %tv_usec, align 8, !dbg !48, !tbaa !49
  %mul1 = mul nsw i32 %2, 1000, !dbg !50
  %conv = sext i32 %mul1 to i64, !dbg !51
  %add = add i64 %mul, %conv, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11, !dbg !53
  ret i64 %add, !dbg !54
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare !dbg !55 noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: noinline nounwind ssp uwtable
define %struct.string_list_item* @unsorted_string_list_lookup(%struct.string_list* nocapture readonly %list, i8* %string) local_unnamed_addr #4 !dbg !60 {
entry:
  call void @llvm.dbg.value(metadata %struct.string_list* %list, metadata !89, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i8* %string, metadata !90, metadata !DIExpression()), !dbg !93
  %cmp1 = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i64 0, i32 4, !dbg !94
  %0 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp1, align 8, !dbg !94, !tbaa !95
  %tobool.not = icmp eq i32 (i8*, i8*)* %0, null, !dbg !98
  %spec.select = select i1 %tobool.not, i32 (i8*, i8*)* @strcmp, i32 (i8*, i8*)* %0, !dbg !98
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %spec.select, metadata !92, metadata !DIExpression()), !dbg !93
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i64 0, i32 0, !dbg !99
  %1 = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !99, !tbaa !101
  call void @llvm.dbg.value(metadata %struct.string_list_item* %1, metadata !91, metadata !DIExpression()), !dbg !93
  %nr = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i64 0, i32 1
  call void @llvm.dbg.value(metadata %struct.string_list_item* %1, metadata !91, metadata !DIExpression()), !dbg !93
  %tobool3.not19 = icmp eq %struct.string_list_item* %1, null, !dbg !102
  br i1 %tobool3.not19, label %cleanup, label %land.rhs.preheader, !dbg !102

land.rhs.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.string_list_item* %1, metadata !91, metadata !DIExpression()), !dbg !93
  %2 = load i64, i64* %nr, align 8, !dbg !102, !tbaa !104
  %cmp524 = icmp sgt i64 %2, 0, !dbg !102
  br i1 %cmp524, label %for.body, label %cleanup, !dbg !99

for.body:                                         ; preds = %land.rhs.preheader, %for.inc.land.rhs_crit_edge
  %item.02025 = phi %struct.string_list_item* [ %incdec.ptr, %for.inc.land.rhs_crit_edge ], [ %1, %land.rhs.preheader ]
  call void @llvm.dbg.value(metadata %struct.string_list_item* %item.02025, metadata !91, metadata !DIExpression()), !dbg !93
  %string6 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %item.02025, i64 0, i32 0, !dbg !105
  %3 = load i8*, i8** %string6, align 8, !dbg !105, !tbaa !108
  %call = tail call i32 %spec.select(i8* %string, i8* %3) #11, !dbg !110
  %tobool7.not = icmp eq i32 %call, 0, !dbg !110
  br i1 %tobool7.not, label %cleanup, label %for.inc.land.rhs_crit_edge, !dbg !111

for.inc.land.rhs_crit_edge:                       ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.string_list_item* %item.02025, metadata !91, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !93
  %incdec.ptr = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %item.02025, i64 1, !dbg !102
  call void @llvm.dbg.value(metadata %struct.string_list_item* %incdec.ptr, metadata !91, metadata !DIExpression()), !dbg !93
  %.pre = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !102, !tbaa !101
  %4 = load i64, i64* %nr, align 8, !dbg !102, !tbaa !104
  %add.ptr = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %.pre, i64 %4, !dbg !102
  %cmp5 = icmp ult %struct.string_list_item* %incdec.ptr, %add.ptr, !dbg !102
  br i1 %cmp5, label %for.body, label %cleanup, !dbg !99

cleanup:                                          ; preds = %for.inc.land.rhs_crit_edge, %for.body, %land.rhs.preheader, %entry
  %retval.0 = phi %struct.string_list_item* [ null, %entry ], [ null, %land.rhs.preheader ], [ %item.02025, %for.body ], [ null, %for.inc.land.rhs_crit_edge ], !dbg !93
  ret %struct.string_list_item* %retval.0, !dbg !112
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: noinline nounwind ssp uwtable
define i32 @is_directory(i8* %path) local_unnamed_addr #4 !dbg !113 {
entry:
  %st = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %path, metadata !117, metadata !DIExpression()), !dbg !178
  %0 = bitcast %struct.stat* %st to i8*, !dbg !179
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #11, !dbg !179
  call void @llvm.dbg.declare(metadata %struct.stat* %st, metadata !118, metadata !DIExpression()), !dbg !180
  %call = call i32 @"\01_stat$INODE64"(i8* %path, %struct.stat* nonnull %st) #11, !dbg !181
  %tobool.not = icmp eq i32 %call, 0, !dbg !181
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 1, !dbg !182
  %1 = load i16, i16* %st_mode, align 4, !dbg !182
  %2 = and i16 %1, -4096, !dbg !182
  %cmp = icmp eq i16 %2, 16384, !dbg !182
  %3 = select i1 %tobool.not, i1 %cmp, i1 false, !dbg !182
  %land.ext = zext i1 %3 to i32, !dbg !182
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #11, !dbg !183
  ret i32 %land.ext, !dbg !184
}

declare !dbg !185 i32 @"\01_stat$INODE64"(i8*, %struct.stat*) local_unnamed_addr #6

; Function Attrs: noinline nounwind ssp uwtable
define void @git_setup_gettext() local_unnamed_addr #4 !dbg !189 {
entry:
  %call = tail call align 16 dereferenceable_or_null(6) i8* @malloc(i64 6) #12, !dbg !194
  call void @llvm.dbg.value(metadata i8* %call, metadata !193, metadata !DIExpression()), !dbg !195
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(6) %call, i8* noundef nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 6, i1 false), !dbg !196
  %call2 = tail call i32 @is_directory(i8* %call), !dbg !197
  %tobool.not = icmp eq i32 %call2, 0, !dbg !197
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !199

if.end:                                           ; preds = %entry
  store i8 1, i8* @gettext_done, align 1, !dbg !200, !tbaa !201
  br label %cleanup, !dbg !203

cleanup:                                          ; preds = %entry, %if.end
  tail call void @free(i8* nonnull %call), !dbg !195
  ret void, !dbg !203
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef align 16 i8* @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #4 !dbg !204 {
entry:
  %item = alloca %struct.string_list_item, align 8
  %list = alloca %struct.string_list, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !209, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i8** %argv, metadata !210, metadata !DIExpression()), !dbg !213
  %call = tail call i64 @gettimeofday_nanos(), !dbg !214
  %0 = bitcast %struct.string_list_item* %item to i8*, !dbg !215
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #11, !dbg !215
  call void @llvm.dbg.declare(metadata %struct.string_list_item* %item, metadata !211, metadata !DIExpression()), !dbg !216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.string_list_item* @__const.main.item to i8*), i64 16, i1 false), !dbg !216
  %1 = bitcast %struct.string_list* %list to i8*, !dbg !217
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #11, !dbg !217
  call void @llvm.dbg.declare(metadata %struct.string_list* %list, metadata !212, metadata !DIExpression()), !dbg !218
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i64 0, i32 0, !dbg !219
  store %struct.string_list_item* %item, %struct.string_list_item** %items, align 8, !dbg !219, !tbaa !101
  %nr = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i64 0, i32 1, !dbg !219
  %2 = bitcast i64* %nr to <2 x i64>*, !dbg !219
  store <2 x i64> <i64 1, i64 0>, <2 x i64>* %2, align 8, !dbg !219, !tbaa !220
  %strdup_strings = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i64 0, i32 3, !dbg !219
  store i8 0, i8* %strdup_strings, align 8, !dbg !219
  %cmp = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i64 0, i32 4, !dbg !219
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %cmp, align 8, !dbg !219, !tbaa !95
  %call1 = call %struct.string_list_item* @unsorted_string_list_lookup(%struct.string_list* nonnull %list, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !221
  call void @git_setup_gettext(), !dbg !222
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #11, !dbg !223
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #11, !dbg !223
  ret i32 0, !dbg !223
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #10

attributes #0 = { nofree noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { allocsize(0) }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gettext_done", scope: !2, file: !3, line: 59, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/external-library")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !8, line: 31, baseType: !9)
!8 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!9 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !{!0}
!11 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!12 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 0]}
!13 = !{i32 7, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!20 = distinct !DISubprogram(name: "gettimeofday_nanos", scope: !3, file: !3, line: 12, type: !21, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{!7}
!23 = !{!24}
!24 = !DILocalVariable(name: "tv", scope: !20, file: !3, line: 13, type: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !26, line: 34, size: 128, elements: !27)
!26 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h", directory: "")
!27 = !{!28, !32}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !25, file: !26, line: 36, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !30, line: 143, baseType: !31)
!30 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h", directory: "")
!31 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !25, file: !26, line: 37, baseType: !33, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_suseconds_t", file: !34, line: 86, baseType: !35)
!34 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h", directory: "")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !30, line: 59, baseType: !36)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DILocation(line: 13, column: 3, scope: !20)
!38 = !DILocation(line: 13, column: 18, scope: !20)
!39 = !DILocation(line: 14, column: 3, scope: !20)
!40 = !DILocation(line: 15, column: 23, scope: !20)
!41 = !{!42, !43, i64 0}
!42 = !{!"timeval", !43, i64 0, !46, i64 8}
!43 = !{!"long", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!"int", !44, i64 0}
!47 = !DILocation(line: 15, column: 30, scope: !20)
!48 = !DILocation(line: 15, column: 48, scope: !20)
!49 = !{!42, !46, i64 8}
!50 = !DILocation(line: 15, column: 56, scope: !20)
!51 = !DILocation(line: 15, column: 45, scope: !20)
!52 = !DILocation(line: 15, column: 43, scope: !20)
!53 = !DILocation(line: 16, column: 1, scope: !20)
!54 = !DILocation(line: 15, column: 3, scope: !20)
!55 = !DISubprogram(name: "gettimeofday", scope: !56, file: !56, line: 198, type: !57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!56 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/time.h", directory: "")
!57 = !DISubroutineType(types: !58)
!58 = !{!36, !59, !6}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!60 = distinct !DISubprogram(name: "unsorted_string_list_lookup", scope: !3, file: !3, line: 39, type: !61, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !70, !86}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list_item", file: !3, line: 21, size: 128, elements: !65)
!65 = !{!66, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !64, file: !3, line: 22, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "util", scope: !64, file: !3, line: 23, baseType: !6, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list", file: !3, line: 28, size: 320, elements: !72)
!72 = !{!73, !74, !78, !79, !81}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !71, file: !3, line: 29, baseType: !63, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !71, file: !3, line: 30, baseType: !75, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "LLVM/llvm/builds/release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stddef.h", directory: "/Users/jryans/Projects")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !71, file: !3, line: 31, baseType: !75, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "strdup_strings", scope: !71, file: !3, line: 32, baseType: !80, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!80 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !71, file: !3, line: 33, baseType: !82, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "compare_strings_fn", file: !3, line: 26, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!36, !86, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!88 = !{!89, !90, !91, !92}
!89 = !DILocalVariable(name: "list", arg: 1, scope: !60, file: !3, line: 39, type: !70)
!90 = !DILocalVariable(name: "string", arg: 2, scope: !60, file: !3, line: 40, type: !86)
!91 = !DILocalVariable(name: "item", scope: !60, file: !3, line: 41, type: !63)
!92 = !DILocalVariable(name: "cmp", scope: !60, file: !3, line: 42, type: !82)
!93 = !DILocation(line: 0, scope: !60)
!94 = !DILocation(line: 42, column: 34, scope: !60)
!95 = !{!96, !97, i64 32}
!96 = !{!"string_list", !97, i64 0, !43, i64 8, !43, i64 16, !46, i64 24, !97, i64 32}
!97 = !{!"any pointer", !44, i64 0}
!98 = !DILocation(line: 42, column: 28, scope: !60)
!99 = !DILocation(line: 44, column: 3, scope: !100)
!100 = distinct !DILexicalBlock(scope: !60, file: !3, line: 44, column: 3)
!101 = !{!96, !97, i64 0}
!102 = !DILocation(line: 44, column: 3, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !3, line: 44, column: 3)
!104 = !{!96, !43, i64 8}
!105 = !DILocation(line: 45, column: 28, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !3, line: 45, column: 9)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 44, column: 41)
!108 = !{!109, !97, i64 0}
!109 = !{!"string_list_item", !97, i64 0, !97, i64 8}
!110 = !DILocation(line: 45, column: 10, scope: !106)
!111 = !DILocation(line: 45, column: 9, scope: !107)
!112 = !DILocation(line: 49, column: 1, scope: !60)
!113 = distinct !DISubprogram(name: "is_directory", scope: !3, file: !3, line: 54, type: !114, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{!36, !86}
!116 = !{!117, !118}
!117 = !DILocalVariable(name: "path", arg: 1, scope: !113, file: !3, line: 54, type: !86)
!118 = !DILocalVariable(name: "st", scope: !113, file: !3, line: 55, type: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !120, line: 182, size: 1152, elements: !121)
!120 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/stat.h", directory: "")
!121 = !{!122, !126, !132, !135, !138, !143, !147, !148, !154, !155, !156, !157, !163, !167, !171, !172, !173, !174}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !119, file: !120, line: 182, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !124, line: 31, baseType: !125)
!124 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !34, line: 69, baseType: !35)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !119, file: !120, line: 182, baseType: !127, size: 16, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !128, line: 31, baseType: !129)
!128 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !34, line: 82, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !30, line: 58, baseType: !131)
!131 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !119, file: !120, line: 182, baseType: !133, size: 16, offset: 48)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !134, line: 31, baseType: !130)
!134 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !119, file: !120, line: 182, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !34, line: 74, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !30, line: 62, baseType: !9)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !119, file: !120, line: 182, baseType: !139, size: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !140, line: 31, baseType: !141)
!140 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !34, line: 87, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !30, line: 60, baseType: !80)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !119, file: !120, line: 182, baseType: !144, size: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !145, line: 31, baseType: !146)
!145 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !34, line: 72, baseType: !142)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !119, file: !120, line: 182, baseType: !123, size: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !119, file: !120, line: 182, baseType: !149, size: 128, offset: 256)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !150, line: 33, size: 128, elements: !151)
!150 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !149, file: !150, line: 35, baseType: !29, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !149, file: !150, line: 36, baseType: !31, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !119, file: !120, line: 182, baseType: !149, size: 128, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !119, file: !120, line: 182, baseType: !149, size: 128, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !119, file: !120, line: 182, baseType: !149, size: 128, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !119, file: !120, line: 182, baseType: !158, size: 64, offset: 768)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !159, line: 31, baseType: !160)
!159 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !34, line: 83, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !30, line: 61, baseType: !162)
!162 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !119, file: !120, line: 182, baseType: !164, size: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !165, line: 31, baseType: !166)
!165 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !34, line: 67, baseType: !161)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !119, file: !120, line: 182, baseType: !168, size: 32, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !169, line: 31, baseType: !170)
!169 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !34, line: 68, baseType: !35)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !119, file: !120, line: 182, baseType: !142, size: 32, offset: 928)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !119, file: !120, line: 182, baseType: !142, size: 32, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !119, file: !120, line: 182, baseType: !35, size: 32, offset: 992)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !119, file: !120, line: 182, baseType: !175, size: 128, offset: 1024)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 2)
!178 = !DILocation(line: 0, scope: !113)
!179 = !DILocation(line: 55, column: 3, scope: !113)
!180 = !DILocation(line: 55, column: 15, scope: !113)
!181 = !DILocation(line: 56, column: 12, scope: !113)
!182 = !DILocation(line: 56, column: 28, scope: !113)
!183 = !DILocation(line: 57, column: 1, scope: !113)
!184 = !DILocation(line: 56, column: 3, scope: !113)
!185 = !DISubprogram(name: "stat", linkageName: "\01_stat$INODE64", scope: !120, file: !120, line: 387, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!186 = !DISubroutineType(types: !187)
!187 = !{!36, !86, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!189 = distinct !DISubprogram(name: "git_setup_gettext", scope: !3, file: !3, line: 61, type: !190, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{null}
!192 = !{!193}
!193 = !DILocalVariable(name: "dir", scope: !189, file: !3, line: 62, type: !67)
!194 = !DILocation(line: 62, column: 15, scope: !189)
!195 = !DILocation(line: 0, scope: !189)
!196 = !DILocation(line: 63, column: 3, scope: !189)
!197 = !DILocation(line: 65, column: 8, scope: !198)
!198 = distinct !DILexicalBlock(scope: !189, file: !3, line: 65, column: 7)
!199 = !DILocation(line: 65, column: 7, scope: !189)
!200 = !DILocation(line: 70, column: 15, scope: !189)
!201 = !{!202, !202, i64 0}
!202 = !{!"_Bool", !44, i64 0}
!203 = !DILocation(line: 72, column: 1, scope: !189)
!204 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !205, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !208)
!205 = !DISubroutineType(types: !206)
!206 = !{!36, !36, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!208 = !{!209, !210, !211, !212}
!209 = !DILocalVariable(name: "argc", arg: 1, scope: !204, file: !3, line: 76, type: !36)
!210 = !DILocalVariable(name: "argv", arg: 2, scope: !204, file: !3, line: 76, type: !207)
!211 = !DILocalVariable(name: "item", scope: !204, file: !3, line: 79, type: !64)
!212 = !DILocalVariable(name: "list", scope: !204, file: !3, line: 80, type: !71)
!213 = !DILocation(line: 0, scope: !204)
!214 = !DILocation(line: 77, column: 3, scope: !204)
!215 = !DILocation(line: 79, column: 3, scope: !204)
!216 = !DILocation(line: 79, column: 27, scope: !204)
!217 = !DILocation(line: 80, column: 3, scope: !204)
!218 = !DILocation(line: 80, column: 22, scope: !204)
!219 = !DILocation(line: 80, column: 29, scope: !204)
!220 = !{!43, !43, i64 0}
!221 = !DILocation(line: 81, column: 3, scope: !204)
!222 = !DILocation(line: 83, column: 3, scope: !204)
!223 = !DILocation(line: 84, column: 1, scope: !204)
