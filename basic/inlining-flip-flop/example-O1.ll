; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@strbuf_slopbuf = dso_local global [1 x i8] zeroinitializer, align 1, !dbg !0
@__const.main.d = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @strbuf_slopbuf, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bob\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tom\00", align 1

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @strbuf_grow(%struct.strbuf* nocapture %sb, i64 %extra) local_unnamed_addr #0 !dbg !15 {
entry:
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !29, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata i64 %extra, metadata !30, metadata !DIExpression()), !dbg !33
  %alloc = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 0, !dbg !34
  %0 = load i64, i64* %alloc, align 8, !dbg !34, !tbaa !35
  %tobool.not = icmp eq i64 %0, 0, !dbg !41
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !31, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !33
  br i1 %tobool.not, label %if.then, label %do.body, !dbg !42

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !43
  store i8* null, i8** %buf, align 8, !dbg !45, !tbaa !46
  br label %do.body, !dbg !47

do.body:                                          ; preds = %entry, %if.then
  %len = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 1, !dbg !48
  %1 = load i64, i64* %len, align 8, !dbg !48, !tbaa !51
  %add = add i64 %extra, 1, !dbg !48
  %add2 = add i64 %add, %1, !dbg !48
  %cmp = icmp ugt i64 %add2, %0, !dbg !48
  br i1 %cmp, label %if.then4, label %do.end, !dbg !52

if.then4:                                         ; preds = %do.body
  %2 = mul i64 %0, 3, !dbg !53
  %mul = add i64 %2, 48, !dbg !53
  %div = lshr i64 %mul, 1, !dbg !53
  %cmp10 = icmp ult i64 %div, %add2, !dbg !53
  %add2.div = select i1 %cmp10, i64 %add2, i64 %div
  store i64 %add2.div, i64* %alloc, align 8, !dbg !53, !tbaa !35
  %buf22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !56
  %3 = load i8*, i8** %buf22, align 8, !dbg !56, !tbaa !46
  %call24 = call align 16 i8* @realloc(i8* %3, i64 %add2.div) #9, !dbg !56
  store i8* %call24, i8** %buf22, align 8, !dbg !56, !tbaa !46
  br label %do.end, !dbg !56

do.end:                                           ; preds = %if.then4, %do.body
  br i1 %tobool.not, label %if.then28, label %if.end30, !dbg !57

if.then28:                                        ; preds = %do.end
  %buf29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !58
  %4 = load i8*, i8** %buf29, align 8, !dbg !58, !tbaa !46
  store i8 0, i8* %4, align 1, !dbg !60, !tbaa !61
  br label %if.end30, !dbg !62

if.end30:                                         ; preds = %if.then28, %do.end
  ret void, !dbg !63
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare dso_local noalias noundef align 16 i8* @realloc(i8* nocapture, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_vaddf(%struct.strbuf* nocapture %sb, i8* nocapture readonly %fmt, %struct.__va_list_tag* %ap) local_unnamed_addr #4 !dbg !64 {
entry:
  %cp = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !79, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !80, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %ap, metadata !81, metadata !DIExpression()), !dbg !90
  %0 = bitcast [1 x %struct.__va_list_tag]* %cp to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9, !dbg !91
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %cp, metadata !83, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !93, metadata !DIExpression()), !dbg !100
  %alloc.i = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 0, !dbg !103
  %1 = load i64, i64* %alloc.i, align 8, !dbg !103, !tbaa !35
  %tobool.not.i = icmp eq i64 %1, 0, !dbg !104
  br i1 %tobool.not.i, label %if.then.i, label %cond.true.i, !dbg !104

cond.true.i:                                      ; preds = %entry
  %len.i = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 1, !dbg !105
  %2 = load i64, i64* %len.i, align 8, !dbg !105, !tbaa !51
  %.neg = add i64 %2, 1, !dbg !106
  %phi.cmp = icmp eq i64 %1, %.neg, !dbg !104
  br i1 %phi.cmp, label %if.then, label %if.end, !dbg !107

if.then:                                          ; preds = %cond.true.i
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !29, metadata !DIExpression()) #9, !dbg !108
  call void @llvm.dbg.value(metadata i64 64, metadata !30, metadata !DIExpression()) #9, !dbg !108
  call void @llvm.dbg.value(metadata i1 %tobool.not.i, metadata !31, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !108
  br i1 %tobool.not.i, label %if.then.i, label %do.body.i, !dbg !110

if.then.i:                                        ; preds = %entry, %if.then
  %buf.i = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !111
  store i8* null, i8** %buf.i, align 8, !dbg !112, !tbaa !46
  br label %do.body.i, !dbg !113

do.body.i:                                        ; preds = %if.then.i, %if.then
  %len.i41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 1, !dbg !114
  %3 = load i64, i64* %len.i41, align 8, !dbg !114, !tbaa !51
  %add2.i = add i64 %3, 65, !dbg !114
  %cmp.i = icmp ugt i64 %add2.i, %1, !dbg !114
  br i1 %cmp.i, label %if.then4.i, label %do.end.i, !dbg !115

if.then4.i:                                       ; preds = %do.body.i
  %4 = mul i64 %1, 3, !dbg !116
  %mul.i = add i64 %4, 48, !dbg !116
  %div.i = lshr i64 %mul.i, 1, !dbg !116
  %cmp10.i = icmp ult i64 %div.i, %add2.i, !dbg !116
  %add2.div.i = select i1 %cmp10.i, i64 %add2.i, i64 %div.i
  store i64 %add2.div.i, i64* %alloc.i, align 8, !dbg !116, !tbaa !35
  %buf22.i = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !117
  %5 = load i8*, i8** %buf22.i, align 8, !dbg !117, !tbaa !46
  %call24.i = call align 16 i8* @realloc(i8* %5, i64 %add2.div.i) #9, !dbg !117
  store i8* %call24.i, i8** %buf22.i, align 8, !dbg !117, !tbaa !46
  br label %do.end.i, !dbg !117

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  br i1 %tobool.not.i, label %if.then28.i, label %if.end, !dbg !118

if.then28.i:                                      ; preds = %do.end.i
  %buf29.i = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !119
  %6 = load i8*, i8** %buf29.i, align 8, !dbg !119, !tbaa !46
  store i8 0, i8* %6, align 1, !dbg !120, !tbaa !61
  br label %if.end, !dbg !121

if.end:                                           ; preds = %if.then28.i, %do.end.i, %cond.true.i
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %cp, i64 0, i64 0, !dbg !122
  %7 = bitcast %struct.__va_list_tag* %ap to i8*, !dbg !122
  call void @llvm.va_copy(i8* nonnull %0, i8* %7), !dbg !122
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !123
  %8 = load i8*, i8** %buf, align 8, !dbg !123, !tbaa !46
  %len1 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 1, !dbg !124
  %9 = load i64, i64* %len1, align 8, !dbg !124, !tbaa !51
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !125
  %10 = load i64, i64* %alloc.i, align 8, !dbg !126, !tbaa !35
  %sub = sub i64 %10, %9, !dbg !127
  %call4 = call i32 @vsnprintf(i8* %add.ptr, i64 %sub, i8* %fmt, %struct.__va_list_tag* nonnull %arraydecay) #9, !dbg !128
  call void @llvm.dbg.value(metadata i32 %call4, metadata !82, metadata !DIExpression()), !dbg !90
  call void @llvm.va_end(i8* %0), !dbg !129
  %conv = sext i32 %call4 to i64, !dbg !130
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !93, metadata !DIExpression()), !dbg !132
  %11 = load i64, i64* %alloc.i, align 8, !dbg !134, !tbaa !35
  %tobool.not.i43 = icmp eq i64 %11, 0, !dbg !135
  br i1 %tobool.not.i43, label %strbuf_avail.exit48, label %cond.true.i46, !dbg !135

cond.true.i46:                                    ; preds = %if.end
  %12 = load i64, i64* %len1, align 8, !dbg !136, !tbaa !51
  %13 = xor i64 %12, -1, !dbg !137
  %sub2.i45 = add i64 %11, %13, !dbg !137
  br label %strbuf_avail.exit48, !dbg !135

strbuf_avail.exit48:                              ; preds = %if.end, %cond.true.i46
  %cond.i47 = phi i64 [ %sub2.i45, %cond.true.i46 ], [ 0, %if.end ], !dbg !135
  %cmp = icmp ult i64 %cond.i47, %conv, !dbg !138
  br i1 %cmp, label %if.then9, label %if.end18, !dbg !139

if.then9:                                         ; preds = %strbuf_avail.exit48
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !29, metadata !DIExpression()) #9, !dbg !140
  call void @llvm.dbg.value(metadata i64 %conv, metadata !30, metadata !DIExpression()) #9, !dbg !140
  call void @llvm.dbg.value(metadata i1 %tobool.not.i43, metadata !31, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !140
  br i1 %tobool.not.i43, label %if.then.i52, label %do.body.i56, !dbg !143

if.then.i52:                                      ; preds = %if.then9
  store i8* null, i8** %buf, align 8, !dbg !144, !tbaa !46
  br label %do.body.i56, !dbg !145

do.body.i56:                                      ; preds = %if.then.i52, %if.then9
  %14 = load i64, i64* %len1, align 8, !dbg !146, !tbaa !51
  %add.i = add nsw i64 %conv, 1, !dbg !146
  %add2.i54 = add i64 %add.i, %14, !dbg !146
  %cmp.i55 = icmp ugt i64 %add2.i54, %11, !dbg !146
  br i1 %cmp.i55, label %if.then4.i63, label %do.end.i64, !dbg !147

if.then4.i63:                                     ; preds = %do.body.i56
  %15 = mul i64 %11, 3, !dbg !148
  %mul.i57 = add i64 %15, 48, !dbg !148
  %div.i58 = lshr i64 %mul.i57, 1, !dbg !148
  %cmp10.i59 = icmp ult i64 %div.i58, %add2.i54, !dbg !148
  %add2.div.i60 = select i1 %cmp10.i59, i64 %add2.i54, i64 %div.i58
  store i64 %add2.div.i60, i64* %alloc.i, align 8, !dbg !148, !tbaa !35
  %16 = load i8*, i8** %buf, align 8, !dbg !149, !tbaa !46
  %call24.i62 = call align 16 i8* @realloc(i8* %16, i64 %add2.div.i60) #9, !dbg !149
  store i8* %call24.i62, i8** %buf, align 8, !dbg !149, !tbaa !46
  br label %do.end.i64, !dbg !149

do.end.i64:                                       ; preds = %if.then4.i63, %do.body.i56
  br i1 %tobool.not.i43, label %if.then28.i66, label %strbuf_grow.exit67, !dbg !150

if.then28.i66:                                    ; preds = %do.end.i64
  %17 = load i8*, i8** %buf, align 8, !dbg !151, !tbaa !46
  store i8 0, i8* %17, align 1, !dbg !152, !tbaa !61
  br label %strbuf_grow.exit67, !dbg !153

strbuf_grow.exit67:                               ; preds = %do.end.i64, %if.then28.i66
  %18 = load i8*, i8** %buf, align 8, !dbg !154, !tbaa !46
  %19 = load i64, i64* %len1, align 8, !dbg !155, !tbaa !51
  %add.ptr13 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !156
  %20 = load i64, i64* %alloc.i, align 8, !dbg !157, !tbaa !35
  %sub16 = sub i64 %20, %19, !dbg !158
  %call17 = call i32 @vsnprintf(i8* %add.ptr13, i64 %sub16, i8* %fmt, %struct.__va_list_tag* %ap) #9, !dbg !159
  call void @llvm.dbg.value(metadata i32 %call17, metadata !82, metadata !DIExpression()), !dbg !90
  br label %if.end18, !dbg !160

if.end18:                                         ; preds = %strbuf_grow.exit67, %strbuf_avail.exit48
  %len.0 = phi i32 [ %call17, %strbuf_grow.exit67 ], [ %call4, %strbuf_avail.exit48 ], !dbg !90
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !82, metadata !DIExpression()), !dbg !90
  %21 = load i64, i64* %len1, align 8, !dbg !161, !tbaa !51
  %conv20 = sext i32 %len.0 to i64, !dbg !162
  %add = add i64 %21, %conv20, !dbg !163
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !164, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.value(metadata i64 %add, metadata !167, metadata !DIExpression()), !dbg !168
  store i64 %add, i64* %len1, align 8, !dbg !170, !tbaa !51
  %22 = load i8*, i8** %buf, align 8, !dbg !171, !tbaa !46
  %cmp.not.i = icmp eq i8* %22, getelementptr inbounds ([1 x i8], [1 x i8]* @strbuf_slopbuf, i64 0, i64 0), !dbg !173
  br i1 %cmp.not.i, label %strbuf_setlen.exit, label %if.then.i69, !dbg !174

if.then.i69:                                      ; preds = %if.end18
  %arrayidx.i = getelementptr inbounds i8, i8* %22, i64 %add, !dbg !175
  store i8 0, i8* %arrayidx.i, align 1, !dbg !176, !tbaa !61
  br label %strbuf_setlen.exit, !dbg !175

strbuf_setlen.exit:                               ; preds = %if.end18, %if.then.i69
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9, !dbg !177
  ret void, !dbg !177
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #5

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @vsnprintf(i8* nocapture noundef, i64 noundef, i8* nocapture noundef readonly, %struct.__va_list_tag* noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_addf(%struct.strbuf* nocapture %sb, i8* nocapture readonly %fmt, ...) local_unnamed_addr #4 !dbg !178 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !182, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !183, metadata !DIExpression()), !dbg !185
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !186
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9, !dbg !186
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !184, metadata !DIExpression()), !dbg !187
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !188
  call void @llvm.va_start(i8* nonnull %0), !dbg !188
  call void @strbuf_vaddf(%struct.strbuf* %sb, i8* %fmt, %struct.__va_list_tag* nonnull %arraydecay), !dbg !189
  call void @llvm.va_end(i8* %0), !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9, !dbg !191
  ret void, !dbg !191
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #4 !dbg !192 {
entry:
  %d = alloca %struct.strbuf, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !197, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i8** %argv, metadata !198, metadata !DIExpression()), !dbg !200
  %0 = bitcast %struct.strbuf* %d to i8*, !dbg !201
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #9, !dbg !201
  call void @llvm.dbg.declare(metadata %struct.strbuf* %d, metadata !199, metadata !DIExpression()), !dbg !202
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef nonnull align 8 dereferenceable(24) bitcast (%struct.strbuf* @__const.main.d to i8*), i64 24, i1 false), !dbg !202
  call void (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* nonnull %d, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !203
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #9, !dbg !204
  ret i32 0, !dbg !204
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "strbuf_slopbuf", scope: !2, file: !3, line: 48, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git 8ac458cab1f2d84a892fc9eed882a493995170a3)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "example.c", directory: "/home/jryans/Projects/Debug Info/Issues/basic/inlining-flip-flop")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !8)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!9}
!9 = !DISubrange(count: 1)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git 8ac458cab1f2d84a892fc9eed882a493995170a3)"}
!15 = distinct !DISubprogram(name: "strbuf_grow", scope: !3, file: !3, line: 63, type: !16, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !28)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !22}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf", file: !3, line: 42, size: 192, elements: !20)
!20 = !{!21, !25, !26}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !19, file: !3, line: 43, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 18, baseType: !24)
!23 = !DIFile(filename: "/nix/store/c6mlpw8bb0n9rc38hihmy0zzc1w81ljr-clang-wrapper-18.1.8/resource-root/include/__stddef_size_t.h", directory: "")
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !19, file: !3, line: 44, baseType: !22, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !19, file: !3, line: 45, baseType: !27, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!28 = !{!29, !30, !31}
!29 = !DILocalVariable(name: "sb", arg: 1, scope: !15, file: !3, line: 63, type: !18)
!30 = !DILocalVariable(name: "extra", arg: 2, scope: !15, file: !3, line: 63, type: !22)
!31 = !DILocalVariable(name: "new_buf", scope: !15, file: !3, line: 64, type: !32)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DILocation(line: 0, scope: !15)
!34 = !DILocation(line: 64, column: 22, scope: !15)
!35 = !{!36, !37, i64 0}
!36 = !{!"strbuf", !37, i64 0, !37, i64 8, !40, i64 16}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !DILocation(line: 64, column: 17, scope: !15)
!42 = !DILocation(line: 65, column: 7, scope: !15)
!43 = !DILocation(line: 66, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !15, file: !3, line: 65, column: 7)
!45 = !DILocation(line: 66, column: 13, scope: !44)
!46 = !{!36, !40, i64 16}
!47 = !DILocation(line: 66, column: 5, scope: !44)
!48 = !DILocation(line: 67, column: 3, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 67, column: 3)
!50 = distinct !DILexicalBlock(scope: !15, file: !3, line: 67, column: 3)
!51 = !{!36, !37, i64 8}
!52 = !DILocation(line: 67, column: 3, scope: !50)
!53 = !DILocation(line: 67, column: 3, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 67, column: 3)
!55 = distinct !DILexicalBlock(scope: !49, file: !3, line: 67, column: 3)
!56 = !DILocation(line: 67, column: 3, scope: !55)
!57 = !DILocation(line: 68, column: 7, scope: !15)
!58 = !DILocation(line: 69, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !15, file: !3, line: 68, column: 7)
!60 = !DILocation(line: 69, column: 16, scope: !59)
!61 = !{!38, !38, i64 0}
!62 = !DILocation(line: 69, column: 5, scope: !59)
!63 = !DILocation(line: 70, column: 1, scope: !15)
!64 = distinct !DISubprogram(name: "strbuf_vaddf", scope: !3, file: !3, line: 72, type: !65, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !78)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !18, !67, !69}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !71)
!71 = !{!72, !74, !75, !77}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !70, file: !3, line: 70, baseType: !73, size: 32)
!73 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !70, file: !3, line: 70, baseType: !73, size: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !70, file: !3, line: 70, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !70, file: !3, line: 70, baseType: !76, size: 64, offset: 128)
!78 = !{!79, !80, !81, !82, !83}
!79 = !DILocalVariable(name: "sb", arg: 1, scope: !64, file: !3, line: 72, type: !18)
!80 = !DILocalVariable(name: "fmt", arg: 2, scope: !64, file: !3, line: 72, type: !67)
!81 = !DILocalVariable(name: "ap", arg: 3, scope: !64, file: !3, line: 72, type: !69)
!82 = !DILocalVariable(name: "len", scope: !64, file: !3, line: 73, type: !32)
!83 = !DILocalVariable(name: "cp", scope: !64, file: !3, line: 74, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !85, line: 53, baseType: !86)
!85 = !DIFile(filename: "/nix/store/81awch8mhqanda1vy0c09bflgra4cxh0-glibc-2.40-66-dev/include/stdio.h", directory: "")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !87, line: 12, baseType: !88)
!87 = !DIFile(filename: "/nix/store/c6mlpw8bb0n9rc38hihmy0zzc1w81ljr-clang-wrapper-18.1.8/resource-root/include/__stdarg___gnuc_va_list.h", directory: "")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !89)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 192, elements: !8)
!90 = !DILocation(line: 0, scope: !64)
!91 = !DILocation(line: 74, column: 3, scope: !64)
!92 = !DILocation(line: 74, column: 11, scope: !64)
!93 = !DILocalVariable(name: "sb", arg: 1, scope: !94, file: !3, line: 51, type: !97)
!94 = distinct !DISubprogram(name: "strbuf_avail", scope: !3, file: !3, line: 51, type: !95, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!95 = !DISubroutineType(types: !96)
!96 = !{!22, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!99 = !{!93}
!100 = !DILocation(line: 0, scope: !94, inlinedAt: !101)
!101 = distinct !DILocation(line: 76, column: 8, scope: !102)
!102 = distinct !DILexicalBlock(scope: !64, file: !3, line: 76, column: 7)
!103 = !DILocation(line: 52, column: 14, scope: !94, inlinedAt: !101)
!104 = !DILocation(line: 52, column: 10, scope: !94, inlinedAt: !101)
!105 = !DILocation(line: 52, column: 38, scope: !94, inlinedAt: !101)
!106 = !DILocation(line: 52, column: 42, scope: !94, inlinedAt: !101)
!107 = !DILocation(line: 76, column: 7, scope: !64)
!108 = !DILocation(line: 0, scope: !15, inlinedAt: !109)
!109 = distinct !DILocation(line: 77, column: 5, scope: !102)
!110 = !DILocation(line: 65, column: 7, scope: !15, inlinedAt: !109)
!111 = !DILocation(line: 66, column: 9, scope: !44, inlinedAt: !109)
!112 = !DILocation(line: 66, column: 13, scope: !44, inlinedAt: !109)
!113 = !DILocation(line: 66, column: 5, scope: !44, inlinedAt: !109)
!114 = !DILocation(line: 67, column: 3, scope: !49, inlinedAt: !109)
!115 = !DILocation(line: 67, column: 3, scope: !50, inlinedAt: !109)
!116 = !DILocation(line: 67, column: 3, scope: !54, inlinedAt: !109)
!117 = !DILocation(line: 67, column: 3, scope: !55, inlinedAt: !109)
!118 = !DILocation(line: 68, column: 7, scope: !15, inlinedAt: !109)
!119 = !DILocation(line: 69, column: 9, scope: !59, inlinedAt: !109)
!120 = !DILocation(line: 69, column: 16, scope: !59, inlinedAt: !109)
!121 = !DILocation(line: 69, column: 5, scope: !59, inlinedAt: !109)
!122 = !DILocation(line: 78, column: 3, scope: !64)
!123 = !DILocation(line: 79, column: 23, scope: !64)
!124 = !DILocation(line: 79, column: 33, scope: !64)
!125 = !DILocation(line: 79, column: 27, scope: !64)
!126 = !DILocation(line: 79, column: 42, scope: !64)
!127 = !DILocation(line: 79, column: 48, scope: !64)
!128 = !DILocation(line: 79, column: 9, scope: !64)
!129 = !DILocation(line: 80, column: 3, scope: !64)
!130 = !DILocation(line: 81, column: 7, scope: !131)
!131 = distinct !DILexicalBlock(scope: !64, file: !3, line: 81, column: 7)
!132 = !DILocation(line: 0, scope: !94, inlinedAt: !133)
!133 = distinct !DILocation(line: 81, column: 13, scope: !131)
!134 = !DILocation(line: 52, column: 14, scope: !94, inlinedAt: !133)
!135 = !DILocation(line: 52, column: 10, scope: !94, inlinedAt: !133)
!136 = !DILocation(line: 52, column: 38, scope: !94, inlinedAt: !133)
!137 = !DILocation(line: 52, column: 42, scope: !94, inlinedAt: !133)
!138 = !DILocation(line: 81, column: 11, scope: !131)
!139 = !DILocation(line: 81, column: 7, scope: !64)
!140 = !DILocation(line: 0, scope: !15, inlinedAt: !141)
!141 = distinct !DILocation(line: 82, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !131, file: !3, line: 81, column: 31)
!143 = !DILocation(line: 65, column: 7, scope: !15, inlinedAt: !141)
!144 = !DILocation(line: 66, column: 13, scope: !44, inlinedAt: !141)
!145 = !DILocation(line: 66, column: 5, scope: !44, inlinedAt: !141)
!146 = !DILocation(line: 67, column: 3, scope: !49, inlinedAt: !141)
!147 = !DILocation(line: 67, column: 3, scope: !50, inlinedAt: !141)
!148 = !DILocation(line: 67, column: 3, scope: !54, inlinedAt: !141)
!149 = !DILocation(line: 67, column: 3, scope: !55, inlinedAt: !141)
!150 = !DILocation(line: 68, column: 7, scope: !15, inlinedAt: !141)
!151 = !DILocation(line: 69, column: 9, scope: !59, inlinedAt: !141)
!152 = !DILocation(line: 69, column: 16, scope: !59, inlinedAt: !141)
!153 = !DILocation(line: 69, column: 5, scope: !59, inlinedAt: !141)
!154 = !DILocation(line: 83, column: 25, scope: !142)
!155 = !DILocation(line: 83, column: 35, scope: !142)
!156 = !DILocation(line: 83, column: 29, scope: !142)
!157 = !DILocation(line: 83, column: 44, scope: !142)
!158 = !DILocation(line: 83, column: 50, scope: !142)
!159 = !DILocation(line: 83, column: 11, scope: !142)
!160 = !DILocation(line: 84, column: 3, scope: !142)
!161 = !DILocation(line: 85, column: 25, scope: !64)
!162 = !DILocation(line: 85, column: 31, scope: !64)
!163 = !DILocation(line: 85, column: 29, scope: !64)
!164 = !DILocalVariable(name: "sb", arg: 1, scope: !165, file: !3, line: 55, type: !18)
!165 = distinct !DISubprogram(name: "strbuf_setlen", scope: !3, file: !3, line: 55, type: !16, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !166)
!166 = !{!164, !167}
!167 = !DILocalVariable(name: "len", arg: 2, scope: !165, file: !3, line: 55, type: !22)
!168 = !DILocation(line: 0, scope: !165, inlinedAt: !169)
!169 = distinct !DILocation(line: 85, column: 3, scope: !64)
!170 = !DILocation(line: 56, column: 11, scope: !165, inlinedAt: !169)
!171 = !DILocation(line: 57, column: 11, scope: !172, inlinedAt: !169)
!172 = distinct !DILexicalBlock(scope: !165, file: !3, line: 57, column: 7)
!173 = !DILocation(line: 57, column: 15, scope: !172, inlinedAt: !169)
!174 = !DILocation(line: 57, column: 7, scope: !165, inlinedAt: !169)
!175 = !DILocation(line: 58, column: 5, scope: !172, inlinedAt: !169)
!176 = !DILocation(line: 58, column: 18, scope: !172, inlinedAt: !169)
!177 = !DILocation(line: 86, column: 1, scope: !64)
!178 = distinct !DISubprogram(name: "strbuf_addf", scope: !3, file: !3, line: 88, type: !179, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !18, !67, null}
!181 = !{!182, !183, !184}
!182 = !DILocalVariable(name: "sb", arg: 1, scope: !178, file: !3, line: 88, type: !18)
!183 = !DILocalVariable(name: "fmt", arg: 2, scope: !178, file: !3, line: 88, type: !67)
!184 = !DILocalVariable(name: "ap", scope: !178, file: !3, line: 89, type: !84)
!185 = !DILocation(line: 0, scope: !178)
!186 = !DILocation(line: 89, column: 3, scope: !178)
!187 = !DILocation(line: 89, column: 11, scope: !178)
!188 = !DILocation(line: 90, column: 3, scope: !178)
!189 = !DILocation(line: 91, column: 3, scope: !178)
!190 = !DILocation(line: 92, column: 3, scope: !178)
!191 = !DILocation(line: 93, column: 1, scope: !178)
!192 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 95, type: !193, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !196)
!193 = !DISubroutineType(types: !194)
!194 = !{!32, !32, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!196 = !{!197, !198, !199}
!197 = !DILocalVariable(name: "argc", arg: 1, scope: !192, file: !3, line: 95, type: !32)
!198 = !DILocalVariable(name: "argv", arg: 2, scope: !192, file: !3, line: 95, type: !195)
!199 = !DILocalVariable(name: "d", scope: !192, file: !3, line: 96, type: !19)
!200 = !DILocation(line: 0, scope: !192)
!201 = !DILocation(line: 96, column: 3, scope: !192)
!202 = !DILocation(line: 96, column: 17, scope: !192)
!203 = !DILocation(line: 97, column: 3, scope: !192)
!204 = !DILocation(line: 98, column: 1, scope: !192)
