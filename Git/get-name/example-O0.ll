; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.string_list = type { %struct.string_list_item*, i64, i64, i8, i32 (i8*, i8*)* }
%struct.string_list_item = type { i8*, i8* }
%struct.object_id = type { [32 x i8], i32 }

@.str = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@all = internal global i32 0, align 4, !dbg !0
@exclude_patterns = internal global %struct.string_list zeroinitializer, align 8, !dbg !6
@patterns = internal global %struct.string_list zeroinitializer, align 8, !dbg !34
@.str.1 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"refs/remotes/\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @get_name(i8* %path, %struct.object_id* %oid, i32 %flag, i8* %cb_data) #0 !dbg !44 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %oid.addr = alloca %struct.object_id*, align 8
  %flag.addr = alloca i32, align 4
  %cb_data.addr = alloca i8*, align 8
  %is_tag = alloca i32, align 4
  %peeled = alloca %struct.object_id, align 4
  %is_annotated = alloca i32, align 4
  %prio = alloca i32, align 4
  %path_to_match = alloca i8*, align 8
  %item = alloca %struct.string_list_item*, align 8
  %found = alloca i32, align 4
  %item24 = alloca %struct.string_list_item*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !57, metadata !DIExpression()), !dbg !58
  store %struct.object_id* %oid, %struct.object_id** %oid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.object_id** %oid.addr, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !61, metadata !DIExpression()), !dbg !62
  store i8* %cb_data, i8** %cb_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cb_data.addr, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %is_tag, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %is_tag, align 4, !dbg !66
  call void @llvm.dbg.declare(metadata %struct.object_id* %peeled, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %is_annotated, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %prio, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i8** %path_to_match, metadata !73, metadata !DIExpression()), !dbg !74
  store i8* null, i8** %path_to_match, align 8, !dbg !74
  %0 = load i8*, i8** %path.addr, align 8, !dbg !75
  %call = call i32 @skip_prefix(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %path_to_match), !dbg !77
  %tobool = icmp ne i32 %call, 0, !dbg !77
  br i1 %tobool, label %if.then, label %if.else, !dbg !78

if.then:                                          ; preds = %entry
  store i32 1, i32* %is_tag, align 4, !dbg !79
  br label %if.end13, !dbg !81

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @all, align 4, !dbg !82
  %tobool1 = icmp ne i32 %1, 0, !dbg !82
  br i1 %tobool1, label %if.then2, label %if.else11, !dbg !84

if.then2:                                         ; preds = %if.else
  %2 = load i64, i64* getelementptr inbounds (%struct.string_list, %struct.string_list* @exclude_patterns, i32 0, i32 1), align 8, !dbg !85
  %tobool3 = icmp ne i64 %2, 0, !dbg !88
  br i1 %tobool3, label %land.lhs.true, label %lor.lhs.false, !dbg !89

lor.lhs.false:                                    ; preds = %if.then2
  %3 = load i64, i64* getelementptr inbounds (%struct.string_list, %struct.string_list* @patterns, i32 0, i32 1), align 8, !dbg !90
  %tobool4 = icmp ne i64 %3, 0, !dbg !91
  br i1 %tobool4, label %land.lhs.true, label %if.end, !dbg !92

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then2
  %4 = load i8*, i8** %path.addr, align 8, !dbg !93
  %call5 = call i32 @skip_prefix(i8* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %path_to_match), !dbg !94
  %tobool6 = icmp ne i32 %call5, 0, !dbg !94
  br i1 %tobool6, label %if.end, label %land.lhs.true7, !dbg !95

land.lhs.true7:                                   ; preds = %land.lhs.true
  %5 = load i8*, i8** %path.addr, align 8, !dbg !96
  %call8 = call i32 @skip_prefix(i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %path_to_match), !dbg !97
  %tobool9 = icmp ne i32 %call8, 0, !dbg !97
  br i1 %tobool9, label %if.end, label %if.then10, !dbg !98

if.then10:                                        ; preds = %land.lhs.true7
  store i32 0, i32* %retval, align 4, !dbg !99
  br label %return, !dbg !99

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true, %lor.lhs.false
  br label %if.end12, !dbg !101

if.else11:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !102
  br label %return, !dbg !102

if.end12:                                         ; preds = %if.end
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  %6 = load i64, i64* getelementptr inbounds (%struct.string_list, %struct.string_list* @exclude_patterns, i32 0, i32 1), align 8, !dbg !104
  %tobool14 = icmp ne i64 %6, 0, !dbg !106
  br i1 %tobool14, label %if.then15, label %if.end21, !dbg !107

if.then15:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata %struct.string_list_item** %item, metadata !108, metadata !DIExpression()), !dbg !110
  %7 = load %struct.string_list_item*, %struct.string_list_item** getelementptr inbounds (%struct.string_list, %struct.string_list* @exclude_patterns, i32 0, i32 0), align 8, !dbg !111
  store %struct.string_list_item* %7, %struct.string_list_item** %item, align 8, !dbg !111
  br label %for.cond, !dbg !111

for.cond:                                         ; preds = %for.inc, %if.then15
  %8 = load %struct.string_list_item*, %struct.string_list_item** %item, align 8, !dbg !113
  %tobool16 = icmp ne %struct.string_list_item* %8, null, !dbg !113
  br i1 %tobool16, label %land.rhs, label %land.end, !dbg !113

land.rhs:                                         ; preds = %for.cond
  %9 = load %struct.string_list_item*, %struct.string_list_item** %item, align 8, !dbg !113
  %10 = load %struct.string_list_item*, %struct.string_list_item** getelementptr inbounds (%struct.string_list, %struct.string_list* @exclude_patterns, i32 0, i32 0), align 8, !dbg !113
  %11 = load i64, i64* getelementptr inbounds (%struct.string_list, %struct.string_list* @exclude_patterns, i32 0, i32 1), align 8, !dbg !113
  %add.ptr = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %10, i64 %11, !dbg !113
  %cmp = icmp ult %struct.string_list_item* %9, %add.ptr, !dbg !113
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !115
  br i1 %12, label %for.body, label %for.end, !dbg !111

for.body:                                         ; preds = %land.end
  %13 = load %struct.string_list_item*, %struct.string_list_item** %item, align 8, !dbg !116
  %string = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %13, i32 0, i32 0, !dbg !119
  %14 = load i8*, i8** %string, align 8, !dbg !119
  %15 = load i8*, i8** %path_to_match, align 8, !dbg !120
  %call17 = call i32 @wildmatch(i8* %14, i8* %15, i32 0), !dbg !121
  %tobool18 = icmp ne i32 %call17, 0, !dbg !121
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !122

if.then19:                                        ; preds = %for.body
  store i32 0, i32* %retval, align 4, !dbg !123
  br label %return, !dbg !123

if.end20:                                         ; preds = %for.body
  br label %for.inc, !dbg !124

for.inc:                                          ; preds = %if.end20
  %16 = load %struct.string_list_item*, %struct.string_list_item** %item, align 8, !dbg !113
  %incdec.ptr = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %16, i32 1, !dbg !113
  store %struct.string_list_item* %incdec.ptr, %struct.string_list_item** %item, align 8, !dbg !113
  br label %for.cond, !dbg !113, !llvm.loop !125

for.end:                                          ; preds = %land.end
  br label %if.end21, !dbg !128

if.end21:                                         ; preds = %for.end, %if.end13
  %17 = load i64, i64* getelementptr inbounds (%struct.string_list, %struct.string_list* @patterns, i32 0, i32 1), align 8, !dbg !129
  %tobool22 = icmp ne i64 %17, 0, !dbg !131
  br i1 %tobool22, label %if.then23, label %if.end43, !dbg !132

if.then23:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %found, metadata !133, metadata !DIExpression()), !dbg !135
  store i32 0, i32* %found, align 4, !dbg !135
  call void @llvm.dbg.declare(metadata %struct.string_list_item** %item24, metadata !136, metadata !DIExpression()), !dbg !137
  %18 = load %struct.string_list_item*, %struct.string_list_item** getelementptr inbounds (%struct.string_list, %struct.string_list* @patterns, i32 0, i32 0), align 8, !dbg !138
  store %struct.string_list_item* %18, %struct.string_list_item** %item24, align 8, !dbg !138
  br label %for.cond25, !dbg !138

for.cond25:                                       ; preds = %for.inc37, %if.then23
  %19 = load %struct.string_list_item*, %struct.string_list_item** %item24, align 8, !dbg !140
  %tobool26 = icmp ne %struct.string_list_item* %19, null, !dbg !140
  br i1 %tobool26, label %land.rhs27, label %land.end30, !dbg !140

land.rhs27:                                       ; preds = %for.cond25
  %20 = load %struct.string_list_item*, %struct.string_list_item** %item24, align 8, !dbg !140
  %21 = load %struct.string_list_item*, %struct.string_list_item** getelementptr inbounds (%struct.string_list, %struct.string_list* @patterns, i32 0, i32 0), align 8, !dbg !140
  %22 = load i64, i64* getelementptr inbounds (%struct.string_list, %struct.string_list* @patterns, i32 0, i32 1), align 8, !dbg !140
  %add.ptr28 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %21, i64 %22, !dbg !140
  %cmp29 = icmp ult %struct.string_list_item* %20, %add.ptr28, !dbg !140
  br label %land.end30

land.end30:                                       ; preds = %land.rhs27, %for.cond25
  %23 = phi i1 [ false, %for.cond25 ], [ %cmp29, %land.rhs27 ], !dbg !142
  br i1 %23, label %for.body31, label %for.end39, !dbg !138

for.body31:                                       ; preds = %land.end30
  %24 = load %struct.string_list_item*, %struct.string_list_item** %item24, align 8, !dbg !143
  %string32 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %24, i32 0, i32 0, !dbg !146
  %25 = load i8*, i8** %string32, align 8, !dbg !146
  %26 = load i8*, i8** %path_to_match, align 8, !dbg !147
  %call33 = call i32 @wildmatch(i8* %25, i8* %26, i32 0), !dbg !148
  %tobool34 = icmp ne i32 %call33, 0, !dbg !148
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !149

if.then35:                                        ; preds = %for.body31
  store i32 1, i32* %found, align 4, !dbg !150
  br label %for.end39, !dbg !152

if.end36:                                         ; preds = %for.body31
  br label %for.inc37, !dbg !153

for.inc37:                                        ; preds = %if.end36
  %27 = load %struct.string_list_item*, %struct.string_list_item** %item24, align 8, !dbg !140
  %incdec.ptr38 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %27, i32 1, !dbg !140
  store %struct.string_list_item* %incdec.ptr38, %struct.string_list_item** %item24, align 8, !dbg !140
  br label %for.cond25, !dbg !140, !llvm.loop !154

for.end39:                                        ; preds = %if.then35, %land.end30
  %28 = load i32, i32* %found, align 4, !dbg !156
  %tobool40 = icmp ne i32 %28, 0, !dbg !156
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !158

if.then41:                                        ; preds = %for.end39
  store i32 0, i32* %retval, align 4, !dbg !159
  br label %return, !dbg !159

if.end42:                                         ; preds = %for.end39
  br label %if.end43, !dbg !160

if.end43:                                         ; preds = %if.end42, %if.end21
  %29 = load %struct.object_id*, %struct.object_id** %oid.addr, align 8, !dbg !161
  %call44 = call i32 @peel_iterated_oid(%struct.object_id* %29, %struct.object_id* %peeled), !dbg !163
  %tobool45 = icmp ne i32 %call44, 0, !dbg !163
  br i1 %tobool45, label %if.else49, label %if.then46, !dbg !164

if.then46:                                        ; preds = %if.end43
  %30 = load %struct.object_id*, %struct.object_id** %oid.addr, align 8, !dbg !165
  %call47 = call i32 @oideq(%struct.object_id* %30, %struct.object_id* %peeled), !dbg !167
  %tobool48 = icmp ne i32 %call47, 0, !dbg !168
  %lnot = xor i1 %tobool48, true, !dbg !168
  %lnot.ext = zext i1 %lnot to i32, !dbg !168
  store i32 %lnot.ext, i32* %is_annotated, align 4, !dbg !169
  br label %if.end50, !dbg !170

if.else49:                                        ; preds = %if.end43
  %31 = load %struct.object_id*, %struct.object_id** %oid.addr, align 8, !dbg !171
  call void @oidcpy(%struct.object_id* %peeled, %struct.object_id* %31), !dbg !173
  store i32 0, i32* %is_annotated, align 4, !dbg !174
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then46
  %32 = load i32, i32* %is_annotated, align 4, !dbg !175
  %tobool51 = icmp ne i32 %32, 0, !dbg !175
  br i1 %tobool51, label %if.then52, label %if.else53, !dbg !177

if.then52:                                        ; preds = %if.end50
  store i32 2, i32* %prio, align 4, !dbg !178
  br label %if.end58, !dbg !179

if.else53:                                        ; preds = %if.end50
  %33 = load i32, i32* %is_tag, align 4, !dbg !180
  %tobool54 = icmp ne i32 %33, 0, !dbg !180
  br i1 %tobool54, label %if.then55, label %if.else56, !dbg !182

if.then55:                                        ; preds = %if.else53
  store i32 1, i32* %prio, align 4, !dbg !183
  br label %if.end57, !dbg !184

if.else56:                                        ; preds = %if.else53
  store i32 0, i32* %prio, align 4, !dbg !185
  br label %if.end57

if.end57:                                         ; preds = %if.else56, %if.then55
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then52
  %34 = load i32, i32* @all, align 4, !dbg !186
  %tobool59 = icmp ne i32 %34, 0, !dbg !186
  br i1 %tobool59, label %cond.true, label %cond.false, !dbg !186

cond.true:                                        ; preds = %if.end58
  %35 = load i8*, i8** %path.addr, align 8, !dbg !187
  %add.ptr60 = getelementptr inbounds i8, i8* %35, i64 5, !dbg !188
  br label %cond.end, !dbg !186

cond.false:                                       ; preds = %if.end58
  %36 = load i8*, i8** %path.addr, align 8, !dbg !189
  %add.ptr61 = getelementptr inbounds i8, i8* %36, i64 10, !dbg !190
  br label %cond.end, !dbg !186

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr60, %cond.true ], [ %add.ptr61, %cond.false ], !dbg !186
  %37 = load i32, i32* %prio, align 4, !dbg !191
  %38 = load %struct.object_id*, %struct.object_id** %oid.addr, align 8, !dbg !192
  call void @add_to_known_names(i8* %cond, %struct.object_id* %peeled, i32 %37, %struct.object_id* %38), !dbg !193
  store i32 0, i32* %retval, align 4, !dbg !194
  br label %return, !dbg !194

return:                                           ; preds = %cond.end, %if.then41, %if.then19, %if.else11, %if.then10
  %39 = load i32, i32* %retval, align 4, !dbg !195
  ret i32 %39, !dbg !195
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @skip_prefix(i8*, i8*, i8**) #2

declare i32 @wildmatch(i8*, i8*, i32) #2

declare i32 @peel_iterated_oid(%struct.object_id*, %struct.object_id*) #2

declare i32 @oideq(%struct.object_id*, %struct.object_id*) #2

declare void @oidcpy(%struct.object_id*, %struct.object_id*) #2

declare void @add_to_known_names(i8*, %struct.object_id*, i32, %struct.object_id*) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "all", scope: !2, file: !3, line: 63, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/get-name")
!4 = !{}
!5 = !{!0, !6, !34}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "exclude_patterns", scope: !2, file: !3, line: 65, type: !8, isLocal: true, isDefinition: true)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list", file: !3, line: 46, size: 320, elements: !9)
!9 = !{!10, !19, !23, !24, !26}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !8, file: !3, line: 47, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list_item", file: !3, line: 31, size: 128, elements: !13)
!13 = !{!14, !17}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !12, file: !3, line: 32, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "util", scope: !12, file: !3, line: 33, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !8, file: !3, line: 48, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 46, baseType: !22)
!21 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stddef.h", directory: "/Users/jryans/Projects")
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !8, file: !3, line: 49, baseType: !20, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "strdup_strings", scope: !8, file: !3, line: 50, baseType: !25, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !8, file: !3, line: 51, baseType: !27, size: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "compare_strings_fn", file: !3, line: 44, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !32, !32}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "patterns", scope: !2, file: !3, line: 64, type: !8, isLocal: true, isDefinition: true)
!36 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!37 = !{i32 7, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 7, !"PIC Level", i32 2}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!44 = distinct !DISubprogram(name: "get_name", scope: !3, file: !3, line: 72, type: !45, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!45 = !DISubroutineType(types: !46)
!46 = !{!31, !32, !47, !31, !18}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_id", file: !3, line: 13, size: 288, elements: !50)
!50 = !{!51, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !49, file: !3, line: 14, baseType: !52, size: 256)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !54)
!53 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !{!55}
!55 = !DISubrange(count: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !49, file: !3, line: 15, baseType: !31, size: 32, offset: 256)
!57 = !DILocalVariable(name: "path", arg: 1, scope: !44, file: !3, line: 72, type: !32)
!58 = !DILocation(line: 72, column: 26, scope: !44)
!59 = !DILocalVariable(name: "oid", arg: 2, scope: !44, file: !3, line: 72, type: !47)
!60 = !DILocation(line: 72, column: 56, scope: !44)
!61 = !DILocalVariable(name: "flag", arg: 3, scope: !44, file: !3, line: 73, type: !31)
!62 = !DILocation(line: 73, column: 11, scope: !44)
!63 = !DILocalVariable(name: "cb_data", arg: 4, scope: !44, file: !3, line: 73, type: !18)
!64 = !DILocation(line: 73, column: 30, scope: !44)
!65 = !DILocalVariable(name: "is_tag", scope: !44, file: !3, line: 75, type: !31)
!66 = !DILocation(line: 75, column: 6, scope: !44)
!67 = !DILocalVariable(name: "peeled", scope: !44, file: !3, line: 76, type: !49)
!68 = !DILocation(line: 76, column: 19, scope: !44)
!69 = !DILocalVariable(name: "is_annotated", scope: !44, file: !3, line: 77, type: !31)
!70 = !DILocation(line: 77, column: 6, scope: !44)
!71 = !DILocalVariable(name: "prio", scope: !44, file: !3, line: 77, type: !31)
!72 = !DILocation(line: 77, column: 20, scope: !44)
!73 = !DILocalVariable(name: "path_to_match", scope: !44, file: !3, line: 78, type: !32)
!74 = !DILocation(line: 78, column: 14, scope: !44)
!75 = !DILocation(line: 80, column: 18, scope: !76)
!76 = distinct !DILexicalBlock(scope: !44, file: !3, line: 80, column: 6)
!77 = !DILocation(line: 80, column: 6, scope: !76)
!78 = !DILocation(line: 80, column: 6, scope: !44)
!79 = !DILocation(line: 81, column: 10, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !3, line: 80, column: 55)
!81 = !DILocation(line: 82, column: 2, scope: !80)
!82 = !DILocation(line: 82, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !76, file: !3, line: 82, column: 13)
!84 = !DILocation(line: 82, column: 13, scope: !76)
!85 = !DILocation(line: 83, column: 25, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 83, column: 7)
!87 = distinct !DILexicalBlock(scope: !83, file: !3, line: 82, column: 18)
!88 = !DILocation(line: 83, column: 8, scope: !86)
!89 = !DILocation(line: 83, column: 28, scope: !86)
!90 = !DILocation(line: 83, column: 40, scope: !86)
!91 = !DILocation(line: 83, column: 31, scope: !86)
!92 = !DILocation(line: 83, column: 44, scope: !86)
!93 = !DILocation(line: 84, column: 20, scope: !86)
!94 = !DILocation(line: 84, column: 8, scope: !86)
!95 = !DILocation(line: 84, column: 57, scope: !86)
!96 = !DILocation(line: 85, column: 20, scope: !86)
!97 = !DILocation(line: 85, column: 8, scope: !86)
!98 = !DILocation(line: 83, column: 7, scope: !87)
!99 = !DILocation(line: 87, column: 4, scope: !100)
!100 = distinct !DILexicalBlock(scope: !86, file: !3, line: 85, column: 60)
!101 = !DILocation(line: 89, column: 2, scope: !87)
!102 = !DILocation(line: 91, column: 3, scope: !103)
!103 = distinct !DILexicalBlock(scope: !83, file: !3, line: 89, column: 9)
!104 = !DILocation(line: 98, column: 23, scope: !105)
!105 = distinct !DILexicalBlock(scope: !44, file: !3, line: 98, column: 6)
!106 = !DILocation(line: 98, column: 6, scope: !105)
!107 = !DILocation(line: 98, column: 6, scope: !44)
!108 = !DILocalVariable(name: "item", scope: !109, file: !3, line: 99, type: !11)
!109 = distinct !DILexicalBlock(scope: !105, file: !3, line: 98, column: 27)
!110 = !DILocation(line: 99, column: 28, scope: !109)
!111 = !DILocation(line: 101, column: 3, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !3, line: 101, column: 3)
!113 = !DILocation(line: 101, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !112, file: !3, line: 101, column: 3)
!115 = !DILocation(line: 0, scope: !114)
!116 = !DILocation(line: 102, column: 19, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 102, column: 8)
!118 = distinct !DILexicalBlock(scope: !114, file: !3, line: 101, column: 54)
!119 = !DILocation(line: 102, column: 25, scope: !117)
!120 = !DILocation(line: 102, column: 33, scope: !117)
!121 = !DILocation(line: 102, column: 9, scope: !117)
!122 = !DILocation(line: 102, column: 8, scope: !118)
!123 = !DILocation(line: 103, column: 5, scope: !117)
!124 = !DILocation(line: 104, column: 3, scope: !118)
!125 = distinct !{!125, !111, !126, !127}
!126 = !DILocation(line: 104, column: 3, scope: !112)
!127 = !{!"llvm.loop.mustprogress"}
!128 = !DILocation(line: 105, column: 2, scope: !109)
!129 = !DILocation(line: 111, column: 15, scope: !130)
!130 = distinct !DILexicalBlock(scope: !44, file: !3, line: 111, column: 6)
!131 = !DILocation(line: 111, column: 6, scope: !130)
!132 = !DILocation(line: 111, column: 6, scope: !44)
!133 = !DILocalVariable(name: "found", scope: !134, file: !3, line: 112, type: !31)
!134 = distinct !DILexicalBlock(scope: !130, file: !3, line: 111, column: 19)
!135 = !DILocation(line: 112, column: 7, scope: !134)
!136 = !DILocalVariable(name: "item", scope: !134, file: !3, line: 113, type: !11)
!137 = !DILocation(line: 113, column: 28, scope: !134)
!138 = !DILocation(line: 115, column: 3, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !3, line: 115, column: 3)
!140 = !DILocation(line: 115, column: 3, scope: !141)
!141 = distinct !DILexicalBlock(scope: !139, file: !3, line: 115, column: 3)
!142 = !DILocation(line: 0, scope: !141)
!143 = !DILocation(line: 116, column: 19, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 116, column: 8)
!145 = distinct !DILexicalBlock(scope: !141, file: !3, line: 115, column: 46)
!146 = !DILocation(line: 116, column: 25, scope: !144)
!147 = !DILocation(line: 116, column: 33, scope: !144)
!148 = !DILocation(line: 116, column: 9, scope: !144)
!149 = !DILocation(line: 116, column: 8, scope: !145)
!150 = !DILocation(line: 117, column: 11, scope: !151)
!151 = distinct !DILexicalBlock(scope: !144, file: !3, line: 116, column: 52)
!152 = !DILocation(line: 118, column: 5, scope: !151)
!153 = !DILocation(line: 120, column: 3, scope: !145)
!154 = distinct !{!154, !138, !155, !127}
!155 = !DILocation(line: 120, column: 3, scope: !139)
!156 = !DILocation(line: 122, column: 8, scope: !157)
!157 = distinct !DILexicalBlock(scope: !134, file: !3, line: 122, column: 7)
!158 = !DILocation(line: 122, column: 7, scope: !134)
!159 = !DILocation(line: 123, column: 4, scope: !157)
!160 = !DILocation(line: 124, column: 2, scope: !134)
!161 = !DILocation(line: 127, column: 25, scope: !162)
!162 = distinct !DILexicalBlock(scope: !44, file: !3, line: 127, column: 6)
!163 = !DILocation(line: 127, column: 7, scope: !162)
!164 = !DILocation(line: 127, column: 6, scope: !44)
!165 = !DILocation(line: 128, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 127, column: 40)
!167 = !DILocation(line: 128, column: 19, scope: !166)
!168 = !DILocation(line: 128, column: 18, scope: !166)
!169 = !DILocation(line: 128, column: 16, scope: !166)
!170 = !DILocation(line: 129, column: 2, scope: !166)
!171 = !DILocation(line: 130, column: 19, scope: !172)
!172 = distinct !DILexicalBlock(scope: !162, file: !3, line: 129, column: 9)
!173 = !DILocation(line: 130, column: 3, scope: !172)
!174 = !DILocation(line: 131, column: 16, scope: !172)
!175 = !DILocation(line: 140, column: 6, scope: !176)
!176 = distinct !DILexicalBlock(scope: !44, file: !3, line: 140, column: 6)
!177 = !DILocation(line: 140, column: 6, scope: !44)
!178 = !DILocation(line: 141, column: 8, scope: !176)
!179 = !DILocation(line: 141, column: 3, scope: !176)
!180 = !DILocation(line: 142, column: 11, scope: !181)
!181 = distinct !DILexicalBlock(scope: !176, file: !3, line: 142, column: 11)
!182 = !DILocation(line: 142, column: 11, scope: !176)
!183 = !DILocation(line: 143, column: 8, scope: !181)
!184 = !DILocation(line: 143, column: 3, scope: !181)
!185 = !DILocation(line: 145, column: 8, scope: !181)
!186 = !DILocation(line: 147, column: 21, scope: !44)
!187 = !DILocation(line: 147, column: 27, scope: !44)
!188 = !DILocation(line: 147, column: 32, scope: !44)
!189 = !DILocation(line: 147, column: 38, scope: !44)
!190 = !DILocation(line: 147, column: 43, scope: !44)
!191 = !DILocation(line: 147, column: 58, scope: !44)
!192 = !DILocation(line: 147, column: 64, scope: !44)
!193 = !DILocation(line: 147, column: 2, scope: !44)
!194 = !DILocation(line: 148, column: 2, scope: !44)
!195 = !DILocation(line: 149, column: 1, scope: !44)
