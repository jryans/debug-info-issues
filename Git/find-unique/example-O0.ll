; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.string_list_item = type { i8*, i8* }
%struct.menu_stuff = type { i32, i32, i8* }
%struct.menu_item = type { i8, i8*, i32, i32 ()* }
%struct.string_list = type { %struct.string_list_item*, i64, i64, i8 }

@.str = private unnamed_addr constant [41 x i8] c"Bad type of menu_stuff when parse choice\00", align 1
@__const.main.choice = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@__const.main.items = private unnamed_addr constant [2 x %struct.string_list_item] [%struct.string_list_item { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.string_list_item { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* null }], align 16

; Function Attrs: noinline noreturn nounwind ssp uwtable
define void @die(i8* %err, ...) #0 !dbg !48 {
entry:
  %err.addr = alloca i8*, align 8
  store i8* %err, i8** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %err.addr, metadata !52, metadata !DIExpression()), !dbg !53
  call void @exit(i32 1) #7, !dbg !54
  unreachable, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @find_unique(i8* %choice, %struct.menu_stuff* %menu_stuff) #3 !dbg !55 {
entry:
  %choice.addr = alloca i8*, align 8
  %menu_stuff.addr = alloca %struct.menu_stuff*, align 8
  %menu_item = alloca %struct.menu_item*, align 8
  %string_list_item = alloca %struct.string_list_item*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %found = alloca i32, align 4
  store i8* %choice, i8** %choice.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %choice.addr, metadata !64, metadata !DIExpression()), !dbg !65
  store %struct.menu_stuff* %menu_stuff, %struct.menu_stuff** %menu_stuff.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.menu_stuff** %menu_stuff.addr, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata %struct.menu_item** %menu_item, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata %struct.string_list_item** %string_list_item, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %i, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %len, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %found, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 0, i32* %found, align 4, !dbg !77
  %0 = load i8*, i8** %choice.addr, align 8, !dbg !78
  %call = call i64 @strlen(i8* %0), !dbg !79
  %conv = trunc i64 %call to i32, !dbg !79
  store i32 %conv, i32* %len, align 4, !dbg !80
  %1 = load %struct.menu_stuff*, %struct.menu_stuff** %menu_stuff.addr, align 8, !dbg !81
  %type = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %1, i32 0, i32 0, !dbg !82
  %2 = load i32, i32* %type, align 8, !dbg !82
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb21
  ], !dbg !83

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0)) #7, !dbg !84
  unreachable, !dbg !84

sw.bb:                                            ; preds = %entry
  %3 = load %struct.menu_stuff*, %struct.menu_stuff** %menu_stuff.addr, align 8, !dbg !86
  %stuff = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %3, i32 0, i32 2, !dbg !87
  %4 = load i8*, i8** %stuff, align 8, !dbg !87
  %5 = bitcast i8* %4 to %struct.menu_item*, !dbg !88
  store %struct.menu_item* %5, %struct.menu_item** %menu_item, align 8, !dbg !89
  store i32 0, i32* %i, align 4, !dbg !90
  br label %for.cond, !dbg !92

for.cond:                                         ; preds = %for.inc, %sw.bb
  %6 = load i32, i32* %i, align 4, !dbg !93
  %7 = load %struct.menu_stuff*, %struct.menu_stuff** %menu_stuff.addr, align 8, !dbg !95
  %nr = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %7, i32 0, i32 1, !dbg !96
  %8 = load i32, i32* %nr, align 4, !dbg !96
  %cmp = icmp slt i32 %6, %8, !dbg !97
  br i1 %cmp, label %for.body, label %for.end, !dbg !98

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %len, align 4, !dbg !99
  %cmp2 = icmp eq i32 %9, 1, !dbg !102
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !103

land.lhs.true:                                    ; preds = %for.body
  %10 = load i8*, i8** %choice.addr, align 8, !dbg !104
  %11 = load i8, i8* %10, align 1, !dbg !105
  %conv4 = sext i8 %11 to i32, !dbg !105
  %12 = load %struct.menu_item*, %struct.menu_item** %menu_item, align 8, !dbg !106
  %hotkey = getelementptr inbounds %struct.menu_item, %struct.menu_item* %12, i32 0, i32 0, !dbg !107
  %13 = load i8, i8* %hotkey, align 8, !dbg !107
  %conv5 = sext i8 %13 to i32, !dbg !106
  %cmp6 = icmp eq i32 %conv4, %conv5, !dbg !108
  br i1 %cmp6, label %if.then, label %if.end, !dbg !109

if.then:                                          ; preds = %land.lhs.true
  %14 = load i32, i32* %i, align 4, !dbg !110
  %add = add nsw i32 %14, 1, !dbg !112
  store i32 %add, i32* %found, align 4, !dbg !113
  br label %for.end, !dbg !114

if.end:                                           ; preds = %land.lhs.true, %for.body
  %15 = load i8*, i8** %choice.addr, align 8, !dbg !115
  %16 = load %struct.menu_item*, %struct.menu_item** %menu_item, align 8, !dbg !117
  %title = getelementptr inbounds %struct.menu_item, %struct.menu_item* %16, i32 0, i32 1, !dbg !118
  %17 = load i8*, i8** %title, align 8, !dbg !118
  %18 = load i32, i32* %len, align 4, !dbg !119
  %conv8 = sext i32 %18 to i64, !dbg !119
  %call9 = call i32 @strncasecmp(i8* %15, i8* %17, i64 %conv8), !dbg !120
  %tobool = icmp ne i32 %call9, 0, !dbg !120
  br i1 %tobool, label %if.end20, label %if.then10, !dbg !121

if.then10:                                        ; preds = %if.end
  %19 = load i32, i32* %found, align 4, !dbg !122
  %tobool11 = icmp ne i32 %19, 0, !dbg !122
  br i1 %tobool11, label %if.then12, label %if.else17, !dbg !125

if.then12:                                        ; preds = %if.then10
  %20 = load i32, i32* %len, align 4, !dbg !126
  %cmp13 = icmp eq i32 %20, 1, !dbg !129
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !130

if.then15:                                        ; preds = %if.then12
  store i32 -1, i32* %found, align 4, !dbg !131
  br label %if.end16, !dbg !133

if.else:                                          ; preds = %if.then12
  store i32 0, i32* %found, align 4, !dbg !134
  br label %for.end, !dbg !136

if.end16:                                         ; preds = %if.then15
  br label %if.end19, !dbg !137

if.else17:                                        ; preds = %if.then10
  %21 = load i32, i32* %i, align 4, !dbg !138
  %add18 = add nsw i32 %21, 1, !dbg !140
  store i32 %add18, i32* %found, align 4, !dbg !141
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.end16
  br label %if.end20, !dbg !142

if.end20:                                         ; preds = %if.end19, %if.end
  br label %for.inc, !dbg !143

for.inc:                                          ; preds = %if.end20
  %22 = load i32, i32* %i, align 4, !dbg !144
  %inc = add nsw i32 %22, 1, !dbg !144
  store i32 %inc, i32* %i, align 4, !dbg !144
  %23 = load %struct.menu_item*, %struct.menu_item** %menu_item, align 8, !dbg !145
  %incdec.ptr = getelementptr inbounds %struct.menu_item, %struct.menu_item* %23, i32 1, !dbg !145
  store %struct.menu_item* %incdec.ptr, %struct.menu_item** %menu_item, align 8, !dbg !145
  br label %for.cond, !dbg !146, !llvm.loop !147

for.end:                                          ; preds = %if.else, %if.then, %for.cond
  br label %sw.epilog, !dbg !150

sw.bb21:                                          ; preds = %entry
  %24 = load %struct.menu_stuff*, %struct.menu_stuff** %menu_stuff.addr, align 8, !dbg !151
  %stuff22 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %24, i32 0, i32 2, !dbg !152
  %25 = load i8*, i8** %stuff22, align 8, !dbg !152
  %26 = bitcast i8* %25 to %struct.string_list*, !dbg !153
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %26, i32 0, i32 0, !dbg !154
  %27 = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !154
  store %struct.string_list_item* %27, %struct.string_list_item** %string_list_item, align 8, !dbg !155
  store i32 0, i32* %i, align 4, !dbg !156
  br label %for.cond23, !dbg !158

for.cond23:                                       ; preds = %for.inc37, %sw.bb21
  %28 = load i32, i32* %i, align 4, !dbg !159
  %29 = load %struct.menu_stuff*, %struct.menu_stuff** %menu_stuff.addr, align 8, !dbg !161
  %nr24 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %29, i32 0, i32 1, !dbg !162
  %30 = load i32, i32* %nr24, align 4, !dbg !162
  %cmp25 = icmp slt i32 %28, %30, !dbg !163
  br i1 %cmp25, label %for.body27, label %for.end40, !dbg !164

for.body27:                                       ; preds = %for.cond23
  %31 = load i8*, i8** %choice.addr, align 8, !dbg !165
  %32 = load %struct.string_list_item*, %struct.string_list_item** %string_list_item, align 8, !dbg !168
  %string = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %32, i32 0, i32 0, !dbg !169
  %33 = load i8*, i8** %string, align 8, !dbg !169
  %34 = load i32, i32* %len, align 4, !dbg !170
  %conv28 = sext i32 %34 to i64, !dbg !170
  %call29 = call i32 @strncasecmp(i8* %31, i8* %33, i64 %conv28), !dbg !171
  %tobool30 = icmp ne i32 %call29, 0, !dbg !171
  br i1 %tobool30, label %if.end36, label %if.then31, !dbg !172

if.then31:                                        ; preds = %for.body27
  %35 = load i32, i32* %found, align 4, !dbg !173
  %tobool32 = icmp ne i32 %35, 0, !dbg !173
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !176

if.then33:                                        ; preds = %if.then31
  store i32 0, i32* %found, align 4, !dbg !177
  br label %for.end40, !dbg !179

if.end34:                                         ; preds = %if.then31
  %36 = load i32, i32* %i, align 4, !dbg !180
  %add35 = add nsw i32 %36, 1, !dbg !181
  store i32 %add35, i32* %found, align 4, !dbg !182
  br label %if.end36, !dbg !183

if.end36:                                         ; preds = %if.end34, %for.body27
  br label %for.inc37, !dbg !184

for.inc37:                                        ; preds = %if.end36
  %37 = load i32, i32* %i, align 4, !dbg !185
  %inc38 = add nsw i32 %37, 1, !dbg !185
  store i32 %inc38, i32* %i, align 4, !dbg !185
  %38 = load %struct.string_list_item*, %struct.string_list_item** %string_list_item, align 8, !dbg !186
  %incdec.ptr39 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %38, i32 1, !dbg !186
  store %struct.string_list_item* %incdec.ptr39, %struct.string_list_item** %string_list_item, align 8, !dbg !186
  br label %for.cond23, !dbg !187, !llvm.loop !188

for.end40:                                        ; preds = %if.then33, %for.cond23
  br label %sw.epilog, !dbg !190

sw.epilog:                                        ; preds = %for.end40, %for.end
  %39 = load i32, i32* %found, align 4, !dbg !191
  ret i32 %39, !dbg !192
}

declare i64 @strlen(i8*) #4

declare i32 @strncasecmp(i8*, i8*, i64) #4

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() #3 !dbg !193 {
entry:
  %retval = alloca i32, align 4
  %choice = alloca [2 x i8], align 1
  %items = alloca [2 x %struct.string_list_item], align 16
  %list = alloca %struct.string_list, align 8
  %menu = alloca %struct.menu_stuff, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [2 x i8]* %choice, metadata !194, metadata !DIExpression()), !dbg !198
  %0 = bitcast [2 x i8]* %choice to i8*, !dbg !198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.main.choice, i32 0, i32 0), i64 2, i1 false), !dbg !198
  call void @llvm.dbg.declare(metadata [2 x %struct.string_list_item]* %items, metadata !199, metadata !DIExpression()), !dbg !202
  %1 = bitcast [2 x %struct.string_list_item]* %items to i8*, !dbg !202
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([2 x %struct.string_list_item]* @__const.main.items to i8*), i64 32, i1 false), !dbg !202
  call void @llvm.dbg.declare(metadata %struct.string_list* %list, metadata !203, metadata !DIExpression()), !dbg !205
  %2 = bitcast %struct.string_list* %list to i8*, !dbg !205
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 32, i1 false), !dbg !205
  %items1 = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 0, !dbg !206
  %3 = bitcast [2 x %struct.string_list_item]* %items to %struct.string_list_item*, !dbg !207
  store %struct.string_list_item* %3, %struct.string_list_item** %items1, align 8, !dbg !206
  %strdup_strings = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 3, !dbg !206
  call void @llvm.dbg.declare(metadata %struct.menu_stuff* %menu, metadata !208, metadata !DIExpression()), !dbg !210
  %type = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %menu, i32 0, i32 0, !dbg !211
  store i32 1, i32* %type, align 8, !dbg !211
  %nr = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %menu, i32 0, i32 1, !dbg !211
  store i32 2, i32* %nr, align 4, !dbg !211
  %stuff = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %menu, i32 0, i32 2, !dbg !211
  %4 = bitcast %struct.string_list* %list to i8*, !dbg !212
  store i8* %4, i8** %stuff, align 8, !dbg !211
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %choice, i64 0, i64 0, !dbg !213
  %call = call i32 @find_unique(i8* %arraydecay, %struct.menu_stuff* %menu), !dbg !214
  ret i32 %call, !dbg !215
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { noinline noreturn nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!47}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/find-unique")
!9 = !{!10}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "menu_stuff_type", file: !8, line: 33, baseType: !11, size: 32, elements: !12)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "MENU_STUFF_TYPE_STRING_LIST", value: 1)
!14 = !DIEnumerator(name: "MENU_STUFF_TYPE_MENU_ITEM", value: 2)
!15 = !{!16, !30}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "menu_item", file: !8, line: 26, size: 256, elements: !18)
!18 = !{!19, !21, !24, !26}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "hotkey", scope: !17, file: !8, line: 27, baseType: !20, size: 8)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "title", scope: !17, file: !8, line: 28, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "selected", scope: !17, file: !8, line: 29, baseType: !25, size: 32, offset: 128)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !17, file: !8, line: 30, baseType: !27, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!25}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list", file: !8, line: 17, size: 256, elements: !32)
!32 = !{!33, !41, !45, !46}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !31, file: !8, line: 18, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list_item", file: !8, line: 12, size: 128, elements: !36)
!36 = !{!37, !39}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !35, file: !8, line: 13, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "util", scope: !35, file: !8, line: 14, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !31, file: !8, line: 19, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "LLVM/llvm/build-release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stddef.h", directory: "/Users/jryans/Projects")
!44 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !31, file: !8, line: 20, baseType: !42, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "strdup_strings", scope: !31, file: !8, line: 21, baseType: !11, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!47 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!48 = distinct !DISubprogram(name: "die", scope: !8, file: !8, line: 6, type: !49, scopeLine: 6, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !51)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !22, null}
!51 = !{}
!52 = !DILocalVariable(name: "err", arg: 1, scope: !48, file: !8, line: 6, type: !22)
!53 = !DILocation(line: 6, column: 52, scope: !48)
!54 = !DILocation(line: 7, column: 3, scope: !48)
!55 = distinct !DISubprogram(name: "find_unique", scope: !8, file: !8, line: 44, type: !56, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !51)
!56 = !DISubroutineType(types: !57)
!57 = !{!25, !22, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "menu_stuff", file: !8, line: 38, size: 128, elements: !60)
!60 = !{!61, !62, !63}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !8, line: 39, baseType: !10, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !59, file: !8, line: 40, baseType: !25, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "stuff", scope: !59, file: !8, line: 41, baseType: !40, size: 64, offset: 64)
!64 = !DILocalVariable(name: "choice", arg: 1, scope: !55, file: !8, line: 44, type: !22)
!65 = !DILocation(line: 44, column: 29, scope: !55)
!66 = !DILocalVariable(name: "menu_stuff", arg: 2, scope: !55, file: !8, line: 44, type: !58)
!67 = !DILocation(line: 44, column: 56, scope: !55)
!68 = !DILocalVariable(name: "menu_item", scope: !55, file: !8, line: 46, type: !16)
!69 = !DILocation(line: 46, column: 21, scope: !55)
!70 = !DILocalVariable(name: "string_list_item", scope: !55, file: !8, line: 47, type: !34)
!71 = !DILocation(line: 47, column: 28, scope: !55)
!72 = !DILocalVariable(name: "i", scope: !55, file: !8, line: 48, type: !25)
!73 = !DILocation(line: 48, column: 7, scope: !55)
!74 = !DILocalVariable(name: "len", scope: !55, file: !8, line: 48, type: !25)
!75 = !DILocation(line: 48, column: 10, scope: !55)
!76 = !DILocalVariable(name: "found", scope: !55, file: !8, line: 48, type: !25)
!77 = !DILocation(line: 48, column: 15, scope: !55)
!78 = !DILocation(line: 50, column: 16, scope: !55)
!79 = !DILocation(line: 50, column: 9, scope: !55)
!80 = !DILocation(line: 50, column: 7, scope: !55)
!81 = !DILocation(line: 51, column: 11, scope: !55)
!82 = !DILocation(line: 51, column: 23, scope: !55)
!83 = !DILocation(line: 51, column: 3, scope: !55)
!84 = !DILocation(line: 53, column: 5, scope: !85)
!85 = distinct !DILexicalBlock(scope: !55, file: !8, line: 51, column: 29)
!86 = !DILocation(line: 56, column: 37, scope: !85)
!87 = !DILocation(line: 56, column: 49, scope: !85)
!88 = !DILocation(line: 56, column: 17, scope: !85)
!89 = !DILocation(line: 56, column: 15, scope: !85)
!90 = !DILocation(line: 57, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !85, file: !8, line: 57, column: 5)
!92 = !DILocation(line: 57, column: 10, scope: !91)
!93 = !DILocation(line: 57, column: 17, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !8, line: 57, column: 5)
!95 = !DILocation(line: 57, column: 21, scope: !94)
!96 = !DILocation(line: 57, column: 33, scope: !94)
!97 = !DILocation(line: 57, column: 19, scope: !94)
!98 = !DILocation(line: 57, column: 5, scope: !91)
!99 = !DILocation(line: 58, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !8, line: 58, column: 11)
!101 = distinct !DILexicalBlock(scope: !94, file: !8, line: 57, column: 55)
!102 = !DILocation(line: 58, column: 15, scope: !100)
!103 = !DILocation(line: 58, column: 20, scope: !100)
!104 = !DILocation(line: 58, column: 24, scope: !100)
!105 = !DILocation(line: 58, column: 23, scope: !100)
!106 = !DILocation(line: 58, column: 34, scope: !100)
!107 = !DILocation(line: 58, column: 45, scope: !100)
!108 = !DILocation(line: 58, column: 31, scope: !100)
!109 = !DILocation(line: 58, column: 11, scope: !101)
!110 = !DILocation(line: 59, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !100, file: !8, line: 58, column: 53)
!112 = !DILocation(line: 59, column: 19, scope: !111)
!113 = !DILocation(line: 59, column: 15, scope: !111)
!114 = !DILocation(line: 60, column: 9, scope: !111)
!115 = !DILocation(line: 62, column: 24, scope: !116)
!116 = distinct !DILexicalBlock(scope: !101, file: !8, line: 62, column: 11)
!117 = !DILocation(line: 62, column: 32, scope: !116)
!118 = !DILocation(line: 62, column: 43, scope: !116)
!119 = !DILocation(line: 62, column: 50, scope: !116)
!120 = !DILocation(line: 62, column: 12, scope: !116)
!121 = !DILocation(line: 62, column: 11, scope: !101)
!122 = !DILocation(line: 63, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !8, line: 63, column: 13)
!124 = distinct !DILexicalBlock(scope: !116, file: !8, line: 62, column: 56)
!125 = !DILocation(line: 63, column: 13, scope: !124)
!126 = !DILocation(line: 64, column: 15, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !8, line: 64, column: 15)
!128 = distinct !DILexicalBlock(scope: !123, file: !8, line: 63, column: 20)
!129 = !DILocation(line: 64, column: 19, scope: !127)
!130 = !DILocation(line: 64, column: 15, scope: !128)
!131 = !DILocation(line: 66, column: 19, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !8, line: 64, column: 25)
!133 = !DILocation(line: 67, column: 11, scope: !132)
!134 = !DILocation(line: 68, column: 19, scope: !135)
!135 = distinct !DILexicalBlock(scope: !127, file: !8, line: 67, column: 18)
!136 = !DILocation(line: 69, column: 13, scope: !135)
!137 = !DILocation(line: 71, column: 9, scope: !128)
!138 = !DILocation(line: 72, column: 19, scope: !139)
!139 = distinct !DILexicalBlock(scope: !123, file: !8, line: 71, column: 16)
!140 = !DILocation(line: 72, column: 21, scope: !139)
!141 = !DILocation(line: 72, column: 17, scope: !139)
!142 = !DILocation(line: 74, column: 7, scope: !124)
!143 = !DILocation(line: 75, column: 5, scope: !101)
!144 = !DILocation(line: 57, column: 38, scope: !94)
!145 = !DILocation(line: 57, column: 51, scope: !94)
!146 = !DILocation(line: 57, column: 5, scope: !94)
!147 = distinct !{!147, !98, !148, !149}
!148 = !DILocation(line: 75, column: 5, scope: !91)
!149 = !{!"llvm.loop.mustprogress"}
!150 = !DILocation(line: 76, column: 5, scope: !85)
!151 = !DILocation(line: 78, column: 47, scope: !85)
!152 = !DILocation(line: 78, column: 59, scope: !85)
!153 = !DILocation(line: 78, column: 25, scope: !85)
!154 = !DILocation(line: 78, column: 67, scope: !85)
!155 = !DILocation(line: 78, column: 22, scope: !85)
!156 = !DILocation(line: 79, column: 12, scope: !157)
!157 = distinct !DILexicalBlock(scope: !85, file: !8, line: 79, column: 5)
!158 = !DILocation(line: 79, column: 10, scope: !157)
!159 = !DILocation(line: 79, column: 17, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !8, line: 79, column: 5)
!161 = !DILocation(line: 79, column: 21, scope: !160)
!162 = !DILocation(line: 79, column: 33, scope: !160)
!163 = !DILocation(line: 79, column: 19, scope: !160)
!164 = !DILocation(line: 79, column: 5, scope: !157)
!165 = !DILocation(line: 80, column: 24, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !8, line: 80, column: 11)
!167 = distinct !DILexicalBlock(scope: !160, file: !8, line: 79, column: 62)
!168 = !DILocation(line: 80, column: 32, scope: !166)
!169 = !DILocation(line: 80, column: 50, scope: !166)
!170 = !DILocation(line: 80, column: 58, scope: !166)
!171 = !DILocation(line: 80, column: 12, scope: !166)
!172 = !DILocation(line: 80, column: 11, scope: !167)
!173 = !DILocation(line: 81, column: 13, scope: !174)
!174 = distinct !DILexicalBlock(scope: !175, file: !8, line: 81, column: 13)
!175 = distinct !DILexicalBlock(scope: !166, file: !8, line: 80, column: 64)
!176 = !DILocation(line: 81, column: 13, scope: !175)
!177 = !DILocation(line: 82, column: 17, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !8, line: 81, column: 20)
!179 = !DILocation(line: 83, column: 11, scope: !178)
!180 = !DILocation(line: 85, column: 17, scope: !175)
!181 = !DILocation(line: 85, column: 19, scope: !175)
!182 = !DILocation(line: 85, column: 15, scope: !175)
!183 = !DILocation(line: 86, column: 7, scope: !175)
!184 = !DILocation(line: 87, column: 5, scope: !167)
!185 = !DILocation(line: 79, column: 38, scope: !160)
!186 = !DILocation(line: 79, column: 58, scope: !160)
!187 = !DILocation(line: 79, column: 5, scope: !160)
!188 = distinct !{!188, !164, !189, !149}
!189 = !DILocation(line: 87, column: 5, scope: !157)
!190 = !DILocation(line: 88, column: 5, scope: !85)
!191 = !DILocation(line: 90, column: 10, scope: !55)
!192 = !DILocation(line: 90, column: 3, scope: !55)
!193 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 93, type: !28, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !51)
!194 = !DILocalVariable(name: "choice", scope: !193, file: !8, line: 94, type: !195)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 2)
!198 = !DILocation(line: 94, column: 14, scope: !193)
!199 = !DILocalVariable(name: "items", scope: !193, file: !8, line: 95, type: !200)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 256, elements: !196)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!202 = !DILocation(line: 95, column: 33, scope: !193)
!203 = !DILocalVariable(name: "list", scope: !193, file: !8, line: 96, type: !204)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!205 = !DILocation(line: 96, column: 28, scope: !193)
!206 = !DILocation(line: 96, column: 35, scope: !193)
!207 = !DILocation(line: 96, column: 36, scope: !193)
!208 = !DILocalVariable(name: "menu", scope: !193, file: !8, line: 97, type: !209)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!210 = !DILocation(line: 97, column: 27, scope: !193)
!211 = !DILocation(line: 97, column: 34, scope: !193)
!212 = !DILocation(line: 100, column: 7, scope: !193)
!213 = !DILocation(line: 102, column: 22, scope: !193)
!214 = !DILocation(line: 102, column: 10, scope: !193)
!215 = !DILocation(line: 102, column: 3, scope: !193)
