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
@gettext_done = global i8 0, align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"bob\00", align 1
@__const.main.item = private unnamed_addr constant %struct.string_list_item { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null }, align 8

; Function Attrs: noinline nounwind ssp uwtable
define i64 @gettimeofday_nanos() #0 !dbg !20 {
entry:
  %tv = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !23, metadata !DIExpression()), !dbg !36
  %call = call i32 @gettimeofday(%struct.timeval* %tv, i8* null), !dbg !37
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0, !dbg !38
  %0 = load i64, i64* %tv_sec, align 8, !dbg !38
  %mul = mul i64 %0, 1000000000, !dbg !39
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1, !dbg !40
  %1 = load i32, i32* %tv_usec, align 8, !dbg !40
  %mul1 = mul nsw i32 %1, 1000, !dbg !41
  %conv = sext i32 %mul1 to i64, !dbg !42
  %add = add i64 %mul, %conv, !dbg !43
  ret i64 %add, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @gettimeofday(%struct.timeval*, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define %struct.string_list_item* @unsorted_string_list_lookup(%struct.string_list* %list, i8* %string) #0 !dbg !45 {
entry:
  %retval = alloca %struct.string_list_item*, align 8
  %list.addr = alloca %struct.string_list*, align 8
  %string.addr = alloca i8*, align 8
  %item = alloca %struct.string_list_item*, align 8
  %cmp = alloca i32 (i8*, i8*)*, align 8
  store %struct.string_list* %list, %struct.string_list** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.string_list** %list.addr, metadata !73, metadata !DIExpression()), !dbg !74
  store i8* %string, i8** %string.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %string.addr, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata %struct.string_list_item** %item, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %cmp, metadata !79, metadata !DIExpression()), !dbg !80
  %0 = load %struct.string_list*, %struct.string_list** %list.addr, align 8, !dbg !81
  %cmp1 = getelementptr inbounds %struct.string_list, %struct.string_list* %0, i32 0, i32 4, !dbg !82
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp1, align 8, !dbg !82
  %tobool = icmp ne i32 (i8*, i8*)* %1, null, !dbg !81
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !81

cond.true:                                        ; preds = %entry
  %2 = load %struct.string_list*, %struct.string_list** %list.addr, align 8, !dbg !83
  %cmp2 = getelementptr inbounds %struct.string_list, %struct.string_list* %2, i32 0, i32 4, !dbg !84
  %3 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp2, align 8, !dbg !84
  br label %cond.end, !dbg !81

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !81

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 (i8*, i8*)* [ %3, %cond.true ], [ @strcmp, %cond.false ], !dbg !81
  store i32 (i8*, i8*)* %cond, i32 (i8*, i8*)** %cmp, align 8, !dbg !80
  %4 = load %struct.string_list*, %struct.string_list** %list.addr, align 8, !dbg !85
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %4, i32 0, i32 0, !dbg !85
  %5 = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !85
  store %struct.string_list_item* %5, %struct.string_list_item** %item, align 8, !dbg !85
  br label %for.cond, !dbg !85

for.cond:                                         ; preds = %for.inc, %cond.end
  %6 = load %struct.string_list_item*, %struct.string_list_item** %item, align 8, !dbg !87
  %tobool3 = icmp ne %struct.string_list_item* %6, null, !dbg !87
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !87

land.rhs:                                         ; preds = %for.cond
  %7 = load %struct.string_list_item*, %struct.string_list_item** %item, align 8, !dbg !87
  %8 = load %struct.string_list*, %struct.string_list** %list.addr, align 8, !dbg !87
  %items4 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0, !dbg !87
  %9 = load %struct.string_list_item*, %struct.string_list_item** %items4, align 8, !dbg !87
  %10 = load %struct.string_list*, %struct.string_list** %list.addr, align 8, !dbg !87
  %nr = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 1, !dbg !87
  %11 = load i64, i64* %nr, align 8, !dbg !87
  %add.ptr = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %9, i64 %11, !dbg !87
  %cmp5 = icmp ult %struct.string_list_item* %7, %add.ptr, !dbg !87
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ], !dbg !89
  br i1 %12, label %for.body, label %for.end, !dbg !85

for.body:                                         ; preds = %land.end
  %13 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp, align 8, !dbg !90
  %14 = load i8*, i8** %string.addr, align 8, !dbg !93
  %15 = load %struct.string_list_item*, %struct.string_list_item** %item, align 8, !dbg !94
  %string6 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %15, i32 0, i32 0, !dbg !95
  %16 = load i8*, i8** %string6, align 8, !dbg !95
  %call = call i32 %13(i8* %14, i8* %16), !dbg !90
  %tobool7 = icmp ne i32 %call, 0, !dbg !90
  br i1 %tobool7, label %if.end, label %if.then, !dbg !96

if.then:                                          ; preds = %for.body
  %17 = load %struct.string_list_item*, %struct.string_list_item** %item, align 8, !dbg !97
  store %struct.string_list_item* %17, %struct.string_list_item** %retval, align 8, !dbg !98
  br label %return, !dbg !98

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !99

for.inc:                                          ; preds = %if.end
  %18 = load %struct.string_list_item*, %struct.string_list_item** %item, align 8, !dbg !87
  %incdec.ptr = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %18, i32 1, !dbg !87
  store %struct.string_list_item* %incdec.ptr, %struct.string_list_item** %item, align 8, !dbg !87
  br label %for.cond, !dbg !87, !llvm.loop !100

for.end:                                          ; preds = %land.end
  store %struct.string_list_item* null, %struct.string_list_item** %retval, align 8, !dbg !103
  br label %return, !dbg !103

return:                                           ; preds = %for.end, %if.then
  %19 = load %struct.string_list_item*, %struct.string_list_item** %retval, align 8, !dbg !104
  ret %struct.string_list_item* %19, !dbg !104
}

declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @is_directory(i8* %path) #0 !dbg !105 {
entry:
  %path.addr = alloca i8*, align 8
  %st = alloca %struct.stat, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata %struct.stat* %st, metadata !110, metadata !DIExpression()), !dbg !170
  %0 = load i8*, i8** %path.addr, align 8, !dbg !171
  %call = call i32 @"\01_stat$INODE64"(i8* %0, %struct.stat* %st), !dbg !172
  %tobool = icmp ne i32 %call, 0, !dbg !172
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !173

land.rhs:                                         ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1, !dbg !174
  %1 = load i16, i16* %st_mode, align 4, !dbg !174
  %conv = zext i16 %1 to i32, !dbg !174
  %and = and i32 %conv, 61440, !dbg !174
  %cmp = icmp eq i32 %and, 16384, !dbg !174
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !175
  %land.ext = zext i1 %2 to i32, !dbg !173
  ret i32 %land.ext, !dbg !176
}

declare i32 @"\01_stat$INODE64"(i8*, %struct.stat*) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @git_setup_gettext() #0 !dbg !177 {
entry:
  %dir = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %dir, metadata !180, metadata !DIExpression()), !dbg !181
  %call = call align 16 i8* @malloc(i64 6) #6, !dbg !182
  store i8* %call, i8** %dir, align 8, !dbg !181
  %0 = load i8*, i8** %dir, align 8, !dbg !183
  %1 = load i8*, i8** %dir, align 8, !dbg !183
  %2 = call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false, i1 true, i1 false), !dbg !183
  %call1 = call i8* @__strcpy_chk(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %2) #7, !dbg !183
  %3 = load i8*, i8** %dir, align 8, !dbg !184
  %call2 = call i32 @is_directory(i8* %3), !dbg !186
  %tobool = icmp ne i32 %call2, 0, !dbg !186
  br i1 %tobool, label %if.end, label %if.then, !dbg !187

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %dir, align 8, !dbg !188
  call void @free(i8* %4), !dbg !190
  br label %return, !dbg !191

if.end:                                           ; preds = %entry
  store i8 1, i8* @gettext_done, align 1, !dbg !192
  %5 = load i8*, i8** %dir, align 8, !dbg !193
  call void @free(i8* %5), !dbg !194
  br label %return, !dbg !195

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !195
}

; Function Attrs: allocsize(0)
declare align 16 i8* @malloc(i64) #3

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #1

declare void @free(i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !196 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %item = alloca %struct.string_list_item, align 8
  %list = alloca %struct.string_list, align 8
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !200, metadata !DIExpression()), !dbg !201
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !202, metadata !DIExpression()), !dbg !203
  %call = call i64 @gettimeofday_nanos(), !dbg !204
  call void @llvm.dbg.declare(metadata %struct.string_list_item* %item, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = bitcast %struct.string_list_item* %item to i8*, !dbg !206
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.string_list_item* @__const.main.item to i8*), i64 16, i1 false), !dbg !206
  call void @llvm.dbg.declare(metadata %struct.string_list* %list, metadata !207, metadata !DIExpression()), !dbg !208
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 0, !dbg !209
  store %struct.string_list_item* %item, %struct.string_list_item** %items, align 8, !dbg !209
  %nr = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 1, !dbg !209
  store i64 1, i64* %nr, align 8, !dbg !209
  %alloc = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 2, !dbg !209
  store i64 0, i64* %alloc, align 8, !dbg !209
  %strdup_strings = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 3, !dbg !209
  %bf.load = load i8, i8* %strdup_strings, align 8, !dbg !209
  %bf.clear = and i8 %bf.load, -2, !dbg !209
  store i8 %bf.clear, i8* %strdup_strings, align 8, !dbg !209
  %cmp = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 4, !dbg !209
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %cmp, align 8, !dbg !209
  %call1 = call %struct.string_list_item* @unsorted_string_list_lookup(%struct.string_list* %list, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !210
  call void @git_setup_gettext(), !dbg !211
  ret i32 0, !dbg !212
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gettext_done", scope: !2, file: !3, line: 59, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
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
!20 = distinct !DISubprogram(name: "gettimeofday_nanos", scope: !3, file: !3, line: 12, type: !21, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!21 = !DISubroutineType(types: !22)
!22 = !{!7}
!23 = !DILocalVariable(name: "tv", scope: !20, file: !3, line: 13, type: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !25, line: 34, size: 128, elements: !26)
!25 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h", directory: "")
!26 = !{!27, !31}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !24, file: !25, line: 36, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !29, line: 143, baseType: !30)
!29 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h", directory: "")
!30 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !24, file: !25, line: 37, baseType: !32, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_suseconds_t", file: !33, line: 86, baseType: !34)
!33 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h", directory: "")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !29, line: 59, baseType: !35)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DILocation(line: 13, column: 18, scope: !20)
!37 = !DILocation(line: 14, column: 3, scope: !20)
!38 = !DILocation(line: 15, column: 23, scope: !20)
!39 = !DILocation(line: 15, column: 30, scope: !20)
!40 = !DILocation(line: 15, column: 48, scope: !20)
!41 = !DILocation(line: 15, column: 56, scope: !20)
!42 = !DILocation(line: 15, column: 45, scope: !20)
!43 = !DILocation(line: 15, column: 43, scope: !20)
!44 = !DILocation(line: 15, column: 3, scope: !20)
!45 = distinct !DISubprogram(name: "unsorted_string_list_lookup", scope: !3, file: !3, line: 39, type: !46, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !55, !71}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list_item", file: !3, line: 21, size: 128, elements: !50)
!50 = !{!51, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !49, file: !3, line: 22, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "util", scope: !49, file: !3, line: 23, baseType: !6, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list", file: !3, line: 28, size: 320, elements: !57)
!57 = !{!58, !59, !63, !64, !66}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !56, file: !3, line: 29, baseType: !48, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !56, file: !3, line: 30, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "LLVM/llvm/builds/release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stddef.h", directory: "/Users/jryans/Projects")
!62 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !56, file: !3, line: 31, baseType: !60, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "strdup_strings", scope: !56, file: !3, line: 32, baseType: !65, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !56, file: !3, line: 33, baseType: !67, size: 64, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "compare_strings_fn", file: !3, line: 26, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!35, !71, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!73 = !DILocalVariable(name: "list", arg: 1, scope: !45, file: !3, line: 39, type: !55)
!74 = !DILocation(line: 39, column: 74, scope: !45)
!75 = !DILocalVariable(name: "string", arg: 2, scope: !45, file: !3, line: 40, type: !71)
!76 = !DILocation(line: 40, column: 66, scope: !45)
!77 = !DILocalVariable(name: "item", scope: !45, file: !3, line: 41, type: !48)
!78 = !DILocation(line: 41, column: 28, scope: !45)
!79 = !DILocalVariable(name: "cmp", scope: !45, file: !3, line: 42, type: !67)
!80 = !DILocation(line: 42, column: 22, scope: !45)
!81 = !DILocation(line: 42, column: 28, scope: !45)
!82 = !DILocation(line: 42, column: 34, scope: !45)
!83 = !DILocation(line: 42, column: 40, scope: !45)
!84 = !DILocation(line: 42, column: 46, scope: !45)
!85 = !DILocation(line: 44, column: 3, scope: !86)
!86 = distinct !DILexicalBlock(scope: !45, file: !3, line: 44, column: 3)
!87 = !DILocation(line: 44, column: 3, scope: !88)
!88 = distinct !DILexicalBlock(scope: !86, file: !3, line: 44, column: 3)
!89 = !DILocation(line: 0, scope: !88)
!90 = !DILocation(line: 45, column: 10, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 45, column: 9)
!92 = distinct !DILexicalBlock(scope: !88, file: !3, line: 44, column: 41)
!93 = !DILocation(line: 45, column: 14, scope: !91)
!94 = !DILocation(line: 45, column: 22, scope: !91)
!95 = !DILocation(line: 45, column: 28, scope: !91)
!96 = !DILocation(line: 45, column: 9, scope: !92)
!97 = !DILocation(line: 46, column: 14, scope: !91)
!98 = !DILocation(line: 46, column: 7, scope: !91)
!99 = !DILocation(line: 47, column: 3, scope: !92)
!100 = distinct !{!100, !85, !101, !102}
!101 = !DILocation(line: 47, column: 3, scope: !86)
!102 = !{!"llvm.loop.mustprogress"}
!103 = !DILocation(line: 48, column: 3, scope: !45)
!104 = !DILocation(line: 49, column: 1, scope: !45)
!105 = distinct !DISubprogram(name: "is_directory", scope: !3, file: !3, line: 54, type: !106, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!106 = !DISubroutineType(types: !107)
!107 = !{!35, !71}
!108 = !DILocalVariable(name: "path", arg: 1, scope: !105, file: !3, line: 54, type: !71)
!109 = !DILocation(line: 54, column: 30, scope: !105)
!110 = !DILocalVariable(name: "st", scope: !105, file: !3, line: 55, type: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !112, line: 182, size: 1152, elements: !113)
!112 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/stat.h", directory: "")
!113 = !{!114, !118, !124, !127, !130, !135, !139, !140, !146, !147, !148, !149, !155, !159, !163, !164, !165, !166}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !111, file: !112, line: 182, baseType: !115, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !116, line: 31, baseType: !117)
!116 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !33, line: 69, baseType: !34)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !111, file: !112, line: 182, baseType: !119, size: 16, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !120, line: 31, baseType: !121)
!120 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !33, line: 82, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !29, line: 58, baseType: !123)
!123 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !111, file: !112, line: 182, baseType: !125, size: 16, offset: 48)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !126, line: 31, baseType: !122)
!126 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!127 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !111, file: !112, line: 182, baseType: !128, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !33, line: 74, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !29, line: 62, baseType: !9)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !111, file: !112, line: 182, baseType: !131, size: 32, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !132, line: 31, baseType: !133)
!132 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !33, line: 87, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 60, baseType: !65)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !111, file: !112, line: 182, baseType: !136, size: 32, offset: 160)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !137, line: 31, baseType: !138)
!137 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !33, line: 72, baseType: !134)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !111, file: !112, line: 182, baseType: !115, size: 32, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !111, file: !112, line: 182, baseType: !141, size: 128, offset: 256)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !142, line: 33, size: 128, elements: !143)
!142 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !141, file: !142, line: 35, baseType: !28, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !141, file: !142, line: 36, baseType: !30, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !111, file: !112, line: 182, baseType: !141, size: 128, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !111, file: !112, line: 182, baseType: !141, size: 128, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !111, file: !112, line: 182, baseType: !141, size: 128, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !111, file: !112, line: 182, baseType: !150, size: 64, offset: 768)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !151, line: 31, baseType: !152)
!151 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !33, line: 83, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !29, line: 61, baseType: !154)
!154 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !111, file: !112, line: 182, baseType: !156, size: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !157, line: 31, baseType: !158)
!157 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !33, line: 67, baseType: !153)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !111, file: !112, line: 182, baseType: !160, size: 32, offset: 896)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !161, line: 31, baseType: !162)
!161 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !33, line: 68, baseType: !34)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !111, file: !112, line: 182, baseType: !134, size: 32, offset: 928)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !111, file: !112, line: 182, baseType: !134, size: 32, offset: 960)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !111, file: !112, line: 182, baseType: !34, size: 32, offset: 992)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !111, file: !112, line: 182, baseType: !167, size: 128, offset: 1024)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 128, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 2)
!170 = !DILocation(line: 55, column: 15, scope: !105)
!171 = !DILocation(line: 56, column: 17, scope: !105)
!172 = !DILocation(line: 56, column: 12, scope: !105)
!173 = !DILocation(line: 56, column: 28, scope: !105)
!174 = !DILocation(line: 56, column: 31, scope: !105)
!175 = !DILocation(line: 0, scope: !105)
!176 = !DILocation(line: 56, column: 3, scope: !105)
!177 = distinct !DISubprogram(name: "git_setup_gettext", scope: !3, file: !3, line: 61, type: !178, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!178 = !DISubroutineType(types: !179)
!179 = !{null}
!180 = !DILocalVariable(name: "dir", scope: !177, file: !3, line: 62, type: !52)
!181 = !DILocation(line: 62, column: 9, scope: !177)
!182 = !DILocation(line: 62, column: 15, scope: !177)
!183 = !DILocation(line: 63, column: 3, scope: !177)
!184 = !DILocation(line: 65, column: 21, scope: !185)
!185 = distinct !DILexicalBlock(scope: !177, file: !3, line: 65, column: 7)
!186 = !DILocation(line: 65, column: 8, scope: !185)
!187 = !DILocation(line: 65, column: 7, scope: !177)
!188 = !DILocation(line: 66, column: 10, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !3, line: 65, column: 27)
!190 = !DILocation(line: 66, column: 5, scope: !189)
!191 = !DILocation(line: 67, column: 5, scope: !189)
!192 = !DILocation(line: 70, column: 15, scope: !177)
!193 = !DILocation(line: 71, column: 8, scope: !177)
!194 = !DILocation(line: 71, column: 3, scope: !177)
!195 = !DILocation(line: 72, column: 1, scope: !177)
!196 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !197, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!197 = !DISubroutineType(types: !198)
!198 = !{!35, !35, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!200 = !DILocalVariable(name: "argc", arg: 1, scope: !196, file: !3, line: 76, type: !35)
!201 = !DILocation(line: 76, column: 14, scope: !196)
!202 = !DILocalVariable(name: "argv", arg: 2, scope: !196, file: !3, line: 76, type: !199)
!203 = !DILocation(line: 76, column: 33, scope: !196)
!204 = !DILocation(line: 77, column: 3, scope: !196)
!205 = !DILocalVariable(name: "item", scope: !196, file: !3, line: 79, type: !49)
!206 = !DILocation(line: 79, column: 27, scope: !196)
!207 = !DILocalVariable(name: "list", scope: !196, file: !3, line: 80, type: !56)
!208 = !DILocation(line: 80, column: 22, scope: !196)
!209 = !DILocation(line: 80, column: 29, scope: !196)
!210 = !DILocation(line: 81, column: 3, scope: !196)
!211 = !DILocation(line: 83, column: 3, scope: !196)
!212 = !DILocation(line: 84, column: 1, scope: !196)
