; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.string_list_item = type { i8*, i8* }
%struct.menu_stuff = type { i32, i32, i8* }
%struct.menu_item = type { i8, i8*, i32, i32 ()* }
%struct.string_list = type { %struct.string_list_item*, i64, i64, i8 }

@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@__const.main.items = private unnamed_addr constant [2 x %struct.string_list_item] [%struct.string_list_item { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* null }, %struct.string_list_item { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* null }], align 16

; Function Attrs: noinline noreturn nounwind ssp uwtable
define void @die(i8* nocapture readnone %err, ...) local_unnamed_addr #0 !dbg !48 {
entry:
  call void @llvm.dbg.value(metadata i8* undef, metadata !52, metadata !DIExpression()), !dbg !53
  call void @exit(i32 1) #10, !dbg !54
  unreachable, !dbg !54
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @exit(i32) local_unnamed_addr #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @find_unique(i8* nocapture readonly %choice, %struct.menu_stuff* nocapture readonly %menu_stuff) local_unnamed_addr #3 !dbg !55 {
entry:
  call void @llvm.dbg.value(metadata i8* %choice, metadata !65, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata %struct.menu_stuff* %menu_stuff, metadata !66, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !72
  %call = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %choice), !dbg !73
  call void @llvm.dbg.value(metadata i64 %call, metadata !70, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !72
  %type = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %menu_stuff, i64 0, i32 0, !dbg !74
  %0 = load i32, i32* %type, align 8, !dbg !74, !tbaa !75
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb21
  ], !dbg !81

sw.default:                                       ; preds = %entry
  call void (i8*, ...) @die(i8* undef) #11, !dbg !82
  unreachable, !dbg !82

sw.bb:                                            ; preds = %entry
  %conv = trunc i64 %call to i32, !dbg !73
  call void @llvm.dbg.value(metadata i32 %conv, metadata !70, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata %struct.menu_item* undef, metadata !67, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !72
  %nr = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %menu_stuff, i64 0, i32 1
  %1 = load i32, i32* %nr, align 4, !tbaa !84
  %cmp2 = icmp eq i32 %conv, 1
  %sext67 = shl i64 %call, 32
  %conv8 = ashr exact i64 %sext67, 32
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata %struct.menu_item* undef, metadata !67, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !72
  %cmp76 = icmp sgt i32 %1, 0, !dbg !85
  br i1 %cmp76, label %for.body.preheader, label %sw.epilog, !dbg !88

for.body.preheader:                               ; preds = %sw.bb
  %stuff = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %menu_stuff, i64 0, i32 2, !dbg !89
  %2 = bitcast i8** %stuff to %struct.menu_item**, !dbg !89
  %3 = load %struct.menu_item*, %struct.menu_item** %2, align 8, !dbg !89, !tbaa !90
  call void @llvm.dbg.value(metadata %struct.menu_item* %3, metadata !67, metadata !DIExpression()), !dbg !72
  br label %for.body, !dbg !88

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %found.080 = phi i32 [ %found.1, %for.inc ], [ 0, %for.body.preheader ]
  %menu_item.079 = phi %struct.menu_item* [ %incdec.ptr, %for.inc ], [ %3, %for.body.preheader ]
  %i.077 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i32 %found.080, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata %struct.menu_item* %menu_item.079, metadata !67, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 %i.077, metadata !69, metadata !DIExpression()), !dbg !72
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !91

land.lhs.true:                                    ; preds = %for.body
  %4 = load i8, i8* %choice, align 1, !dbg !94, !tbaa !95
  %hotkey = getelementptr inbounds %struct.menu_item, %struct.menu_item* %menu_item.079, i64 0, i32 0, !dbg !96
  %5 = load i8, i8* %hotkey, align 8, !dbg !96, !tbaa !97
  %cmp6 = icmp eq i8 %4, %5, !dbg !99
  br i1 %cmp6, label %if.then, label %if.end, !dbg !100

if.then:                                          ; preds = %land.lhs.true
  %add = add nuw nsw i32 %i.077, 1, !dbg !101
  call void @llvm.dbg.value(metadata i32 %add, metadata !71, metadata !DIExpression()), !dbg !72
  br label %sw.epilog, !dbg !103

if.end:                                           ; preds = %land.lhs.true, %for.body
  %title = getelementptr inbounds %struct.menu_item, %struct.menu_item* %menu_item.079, i64 0, i32 1, !dbg !104
  %6 = load i8*, i8** %title, align 8, !dbg !104, !tbaa !106
  %call9 = call i32 @strncasecmp(i8* %choice, i8* %6, i64 %conv8), !dbg !107
  %tobool.not = icmp eq i32 %call9, 0, !dbg !107
  br i1 %tobool.not, label %if.then10, label %for.inc, !dbg !108

if.then10:                                        ; preds = %if.end
  %tobool11.not = icmp eq i32 %found.080, 0, !dbg !109
  br i1 %tobool11.not, label %if.else17, label %if.then12, !dbg !112

if.then12:                                        ; preds = %if.then10
  br i1 %cmp2, label %for.inc, label %sw.epilog, !dbg !113

if.else17:                                        ; preds = %if.then10
  %add18 = add nuw nsw i32 %i.077, 1, !dbg !115
  call void @llvm.dbg.value(metadata i32 %add18, metadata !71, metadata !DIExpression()), !dbg !72
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.end, %if.else17
  %found.1 = phi i32 [ %found.080, %if.end ], [ %add18, %if.else17 ], [ -1, %if.then12 ], !dbg !72
  call void @llvm.dbg.value(metadata i32 %found.1, metadata !71, metadata !DIExpression()), !dbg !72
  %inc = add nuw nsw i32 %i.077, 1, !dbg !117
  call void @llvm.dbg.value(metadata i32 %inc, metadata !69, metadata !DIExpression()), !dbg !72
  %incdec.ptr = getelementptr inbounds %struct.menu_item, %struct.menu_item* %menu_item.079, i64 1, !dbg !118
  call void @llvm.dbg.value(metadata %struct.menu_item* %incdec.ptr, metadata !67, metadata !DIExpression()), !dbg !72
  %exitcond86.not = icmp eq i32 %inc, %1, !dbg !85
  br i1 %exitcond86.not, label %sw.epilog, label %for.body, !dbg !88, !llvm.loop !119

sw.bb21:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.string_list_item* undef, metadata !68, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !72
  %nr24 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %menu_stuff, i64 0, i32 1
  %7 = load i32, i32* %nr24, align 4, !tbaa !84
  %sext = shl i64 %call, 32
  %conv28 = ashr exact i64 %sext, 32
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata %struct.string_list_item* undef, metadata !68, metadata !DIExpression()), !dbg !72
  %cmp2571 = icmp sgt i32 %7, 0, !dbg !123
  br i1 %cmp2571, label %for.body27.preheader, label %sw.epilog, !dbg !126

for.body27.preheader:                             ; preds = %sw.bb21
  %stuff22 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %menu_stuff, i64 0, i32 2, !dbg !127
  %8 = bitcast i8** %stuff22 to %struct.string_list**, !dbg !127
  %9 = load %struct.string_list*, %struct.string_list** %8, align 8, !dbg !127, !tbaa !90
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i64 0, i32 0, !dbg !128
  %10 = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !128, !tbaa !129
  call void @llvm.dbg.value(metadata %struct.string_list_item* %10, metadata !68, metadata !DIExpression()), !dbg !72
  br label %for.body27, !dbg !126

for.body27:                                       ; preds = %for.body27.preheader, %for.inc37
  %found.274 = phi i32 [ %found.3, %for.inc37 ], [ 0, %for.body27.preheader ]
  %i.173 = phi i32 [ %inc38, %for.inc37 ], [ 0, %for.body27.preheader ]
  %string_list_item.072 = phi %struct.string_list_item* [ %incdec.ptr39, %for.inc37 ], [ %10, %for.body27.preheader ]
  call void @llvm.dbg.value(metadata i32 %found.274, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 %i.173, metadata !69, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata %struct.string_list_item* %string_list_item.072, metadata !68, metadata !DIExpression()), !dbg !72
  %string = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %string_list_item.072, i64 0, i32 0, !dbg !132
  %11 = load i8*, i8** %string, align 8, !dbg !132, !tbaa !135
  %call29 = call i32 @strncasecmp(i8* %choice, i8* %11, i64 %conv28), !dbg !137
  %tobool30.not = icmp eq i32 %call29, 0, !dbg !137
  br i1 %tobool30.not, label %if.then31, label %for.inc37, !dbg !138

if.then31:                                        ; preds = %for.body27
  %tobool32.not = icmp eq i32 %found.274, 0, !dbg !139
  br i1 %tobool32.not, label %if.end34, label %sw.epilog, !dbg !142

if.end34:                                         ; preds = %if.then31
  %add35 = add nuw nsw i32 %i.173, 1, !dbg !143
  call void @llvm.dbg.value(metadata i32 %add35, metadata !71, metadata !DIExpression()), !dbg !72
  br label %for.inc37, !dbg !144

for.inc37:                                        ; preds = %for.body27, %if.end34
  %found.3 = phi i32 [ %found.274, %for.body27 ], [ %add35, %if.end34 ], !dbg !72
  call void @llvm.dbg.value(metadata i32 %found.3, metadata !71, metadata !DIExpression()), !dbg !72
  %inc38 = add nuw nsw i32 %i.173, 1, !dbg !145
  call void @llvm.dbg.value(metadata i32 %inc38, metadata !69, metadata !DIExpression()), !dbg !72
  %incdec.ptr39 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %string_list_item.072, i64 1, !dbg !146
  call void @llvm.dbg.value(metadata %struct.string_list_item* %incdec.ptr39, metadata !68, metadata !DIExpression()), !dbg !72
  %exitcond.not = icmp eq i32 %inc38, %7, !dbg !123
  br i1 %exitcond.not, label %sw.epilog, label %for.body27, !dbg !126, !llvm.loop !147

sw.epilog:                                        ; preds = %for.inc37, %if.then31, %for.inc, %if.then12, %sw.bb21, %sw.bb, %if.then
  %found.4 = phi i32 [ %add, %if.then ], [ 0, %sw.bb ], [ 0, %sw.bb21 ], [ 0, %if.then12 ], [ %found.1, %for.inc ], [ 0, %if.then31 ], [ %found.3, %for.inc37 ], !dbg !72
  call void @llvm.dbg.value(metadata i32 %found.4, metadata !71, metadata !DIExpression()), !dbg !72
  ret i32 %found.4, !dbg !149
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strncasecmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main() local_unnamed_addr #3 !dbg !150 {
entry:
  %choice = alloca i16, align 2
  %items = alloca [2 x %struct.string_list_item], align 16
  %list = alloca %struct.string_list, align 8
  %menu = alloca %struct.menu_stuff, align 8
  %0 = bitcast i16* %choice to i8*, !dbg !163
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %0) #12, !dbg !163
  call void @llvm.dbg.value(metadata i16 97, metadata !152, metadata !DIExpression()), !dbg !164
  store i16 97, i16* %choice, align 2, !dbg !165
  %1 = bitcast [2 x %struct.string_list_item]* %items to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #12, !dbg !166
  call void @llvm.dbg.declare(metadata [2 x %struct.string_list_item]* %items, metadata !156, metadata !DIExpression()), !dbg !167
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %1, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([2 x %struct.string_list_item]* @__const.main.items to i8*), i64 32, i1 false), !dbg !167
  %2 = bitcast %struct.string_list* %list to i8*, !dbg !168
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #12, !dbg !168
  call void @llvm.dbg.declare(metadata %struct.string_list* %list, metadata !159, metadata !DIExpression()), !dbg !169
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !dbg !169
  %items1 = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i64 0, i32 0, !dbg !170
  %3 = getelementptr inbounds [2 x %struct.string_list_item], [2 x %struct.string_list_item]* %items, i64 0, i64 0, !dbg !171
  store %struct.string_list_item* %3, %struct.string_list_item** %items1, align 8, !dbg !170, !tbaa !129
  %4 = bitcast %struct.menu_stuff* %menu to i8*, !dbg !172
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #12, !dbg !172
  call void @llvm.dbg.declare(metadata %struct.menu_stuff* %menu, metadata !161, metadata !DIExpression()), !dbg !173
  %type = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %menu, i64 0, i32 0, !dbg !174
  store i32 1, i32* %type, align 8, !dbg !174, !tbaa !75
  %nr = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %menu, i64 0, i32 1, !dbg !174
  store i32 2, i32* %nr, align 4, !dbg !174, !tbaa !84
  %stuff = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %menu, i64 0, i32 2, !dbg !174
  %5 = bitcast i8** %stuff to %struct.string_list**, !dbg !174
  store %struct.string_list* %list, %struct.string_list** %5, align 8, !dbg !174, !tbaa !90
  call void @llvm.dbg.value(metadata i16* %choice, metadata !152, metadata !DIExpression(DW_OP_deref)), !dbg !164
  %call = call i32 @find_unique(i8* nonnull %0, %struct.menu_stuff* nonnull %menu), !dbg !175
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #12, !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #12, !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #12, !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %0) #12, !dbg !176
  ret i32 %call, !dbg !177
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

attributes #0 = { noinline noreturn nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind }

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
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
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
!48 = distinct !DISubprogram(name: "die", scope: !8, file: !8, line: 6, type: !49, scopeLine: 6, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !51)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !22, null}
!51 = !{!52}
!52 = !DILocalVariable(name: "err", arg: 1, scope: !48, file: !8, line: 6, type: !22)
!53 = !DILocation(line: 0, scope: !48)
!54 = !DILocation(line: 7, column: 3, scope: !48)
!55 = distinct !DISubprogram(name: "find_unique", scope: !8, file: !8, line: 44, type: !56, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !64)
!56 = !DISubroutineType(types: !57)
!57 = !{!25, !22, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "menu_stuff", file: !8, line: 38, size: 128, elements: !60)
!60 = !{!61, !62, !63}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !8, line: 39, baseType: !10, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !59, file: !8, line: 40, baseType: !25, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "stuff", scope: !59, file: !8, line: 41, baseType: !40, size: 64, offset: 64)
!64 = !{!65, !66, !67, !68, !69, !70, !71}
!65 = !DILocalVariable(name: "choice", arg: 1, scope: !55, file: !8, line: 44, type: !22)
!66 = !DILocalVariable(name: "menu_stuff", arg: 2, scope: !55, file: !8, line: 44, type: !58)
!67 = !DILocalVariable(name: "menu_item", scope: !55, file: !8, line: 46, type: !16)
!68 = !DILocalVariable(name: "string_list_item", scope: !55, file: !8, line: 47, type: !34)
!69 = !DILocalVariable(name: "i", scope: !55, file: !8, line: 48, type: !25)
!70 = !DILocalVariable(name: "len", scope: !55, file: !8, line: 48, type: !25)
!71 = !DILocalVariable(name: "found", scope: !55, file: !8, line: 48, type: !25)
!72 = !DILocation(line: 0, scope: !55)
!73 = !DILocation(line: 50, column: 9, scope: !55)
!74 = !DILocation(line: 51, column: 23, scope: !55)
!75 = !{!76, !77, i64 0}
!76 = !{!"menu_stuff", !77, i64 0, !79, i64 4, !80, i64 8}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !{!"int", !77, i64 0}
!80 = !{!"any pointer", !77, i64 0}
!81 = !DILocation(line: 51, column: 3, scope: !55)
!82 = !DILocation(line: 53, column: 5, scope: !83)
!83 = distinct !DILexicalBlock(scope: !55, file: !8, line: 51, column: 29)
!84 = !{!76, !79, i64 4}
!85 = !DILocation(line: 57, column: 19, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !8, line: 57, column: 5)
!87 = distinct !DILexicalBlock(scope: !83, file: !8, line: 57, column: 5)
!88 = !DILocation(line: 57, column: 5, scope: !87)
!89 = !DILocation(line: 56, column: 49, scope: !83)
!90 = !{!76, !80, i64 8}
!91 = !DILocation(line: 58, column: 20, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !8, line: 58, column: 11)
!93 = distinct !DILexicalBlock(scope: !86, file: !8, line: 57, column: 55)
!94 = !DILocation(line: 58, column: 23, scope: !92)
!95 = !{!77, !77, i64 0}
!96 = !DILocation(line: 58, column: 45, scope: !92)
!97 = !{!98, !77, i64 0}
!98 = !{!"menu_item", !77, i64 0, !80, i64 8, !79, i64 16, !80, i64 24}
!99 = !DILocation(line: 58, column: 31, scope: !92)
!100 = !DILocation(line: 58, column: 11, scope: !93)
!101 = !DILocation(line: 59, column: 19, scope: !102)
!102 = distinct !DILexicalBlock(scope: !92, file: !8, line: 58, column: 53)
!103 = !DILocation(line: 60, column: 9, scope: !102)
!104 = !DILocation(line: 62, column: 43, scope: !105)
!105 = distinct !DILexicalBlock(scope: !93, file: !8, line: 62, column: 11)
!106 = !{!98, !80, i64 8}
!107 = !DILocation(line: 62, column: 12, scope: !105)
!108 = !DILocation(line: 62, column: 11, scope: !93)
!109 = !DILocation(line: 63, column: 13, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !8, line: 63, column: 13)
!111 = distinct !DILexicalBlock(scope: !105, file: !8, line: 62, column: 56)
!112 = !DILocation(line: 63, column: 13, scope: !111)
!113 = !DILocation(line: 64, column: 15, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !8, line: 63, column: 20)
!115 = !DILocation(line: 72, column: 21, scope: !116)
!116 = distinct !DILexicalBlock(scope: !110, file: !8, line: 71, column: 16)
!117 = !DILocation(line: 57, column: 38, scope: !86)
!118 = !DILocation(line: 57, column: 51, scope: !86)
!119 = distinct !{!119, !88, !120, !121, !122}
!120 = !DILocation(line: 75, column: 5, scope: !87)
!121 = !{!"llvm.loop.mustprogress"}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = !DILocation(line: 79, column: 19, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !8, line: 79, column: 5)
!125 = distinct !DILexicalBlock(scope: !83, file: !8, line: 79, column: 5)
!126 = !DILocation(line: 79, column: 5, scope: !125)
!127 = !DILocation(line: 78, column: 59, scope: !83)
!128 = !DILocation(line: 78, column: 67, scope: !83)
!129 = !{!130, !80, i64 0}
!130 = !{!"string_list", !80, i64 0, !131, i64 8, !131, i64 16, !79, i64 24}
!131 = !{!"long", !77, i64 0}
!132 = !DILocation(line: 80, column: 50, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !8, line: 80, column: 11)
!134 = distinct !DILexicalBlock(scope: !124, file: !8, line: 79, column: 62)
!135 = !{!136, !80, i64 0}
!136 = !{!"string_list_item", !80, i64 0, !80, i64 8}
!137 = !DILocation(line: 80, column: 12, scope: !133)
!138 = !DILocation(line: 80, column: 11, scope: !134)
!139 = !DILocation(line: 81, column: 13, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !8, line: 81, column: 13)
!141 = distinct !DILexicalBlock(scope: !133, file: !8, line: 80, column: 64)
!142 = !DILocation(line: 81, column: 13, scope: !141)
!143 = !DILocation(line: 85, column: 19, scope: !141)
!144 = !DILocation(line: 86, column: 7, scope: !141)
!145 = !DILocation(line: 79, column: 38, scope: !124)
!146 = !DILocation(line: 79, column: 58, scope: !124)
!147 = distinct !{!147, !126, !148, !121, !122}
!148 = !DILocation(line: 87, column: 5, scope: !125)
!149 = !DILocation(line: 90, column: 3, scope: !55)
!150 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 93, type: !28, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !151)
!151 = !{!152, !156, !159, !161}
!152 = !DILocalVariable(name: "choice", scope: !150, file: !8, line: 94, type: !153)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 2)
!156 = !DILocalVariable(name: "items", scope: !150, file: !8, line: 95, type: !157)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 256, elements: !154)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!159 = !DILocalVariable(name: "list", scope: !150, file: !8, line: 96, type: !160)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!161 = !DILocalVariable(name: "menu", scope: !150, file: !8, line: 97, type: !162)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!163 = !DILocation(line: 94, column: 3, scope: !150)
!164 = !DILocation(line: 0, scope: !150)
!165 = !DILocation(line: 94, column: 14, scope: !150)
!166 = !DILocation(line: 95, column: 3, scope: !150)
!167 = !DILocation(line: 95, column: 33, scope: !150)
!168 = !DILocation(line: 96, column: 3, scope: !150)
!169 = !DILocation(line: 96, column: 28, scope: !150)
!170 = !DILocation(line: 96, column: 35, scope: !150)
!171 = !DILocation(line: 96, column: 36, scope: !150)
!172 = !DILocation(line: 97, column: 3, scope: !150)
!173 = !DILocation(line: 97, column: 27, scope: !150)
!174 = !DILocation(line: 97, column: 34, scope: !150)
!175 = !DILocation(line: 102, column: 10, scope: !150)
!176 = !DILocation(line: 103, column: 1, scope: !150)
!177 = !DILocation(line: 102, column: 3, scope: !150)
