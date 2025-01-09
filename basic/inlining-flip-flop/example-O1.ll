; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.strbuf = type { i64, i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@strbuf_slopbuf = global [1 x i8] zeroinitializer, align 1, !dbg !0
@__const.main.d = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @strbuf_slopbuf, i32 0, i32 0) }, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bob\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tom\00", align 1

; Function Attrs: mustprogress nounwind ssp uwtable willreturn
define void @strbuf_grow(%struct.strbuf* nocapture %sb, i64 %extra) local_unnamed_addr #0 !dbg !18 {
entry:
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !32, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata i64 %extra, metadata !33, metadata !DIExpression()), !dbg !36
  %alloc = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 0, !dbg !37
  %0 = load i64, i64* %alloc, align 8, !dbg !37, !tbaa !38
  %tobool.not = icmp eq i64 %0, 0, !dbg !44
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !34, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !36
  br i1 %tobool.not, label %if.then, label %do.body, !dbg !45

if.then:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !46
  store i8* null, i8** %buf, align 8, !dbg !48, !tbaa !49
  br label %do.body, !dbg !50

do.body:                                          ; preds = %entry, %if.then
  %len = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 1, !dbg !51
  %1 = load i64, i64* %len, align 8, !dbg !51, !tbaa !54
  %add = add i64 %extra, 1, !dbg !51
  %add2 = add i64 %add, %1, !dbg !51
  %cmp = icmp ugt i64 %add2, %0, !dbg !51
  br i1 %cmp, label %if.then4, label %do.end, !dbg !55

if.then4:                                         ; preds = %do.body
  %2 = mul i64 %0, 3, !dbg !56
  %mul = add i64 %2, 48, !dbg !56
  %div = lshr i64 %mul, 1, !dbg !56
  %cmp10 = icmp ult i64 %div, %add2, !dbg !56
  %add2.div = select i1 %cmp10, i64 %add2, i64 %div
  store i64 %add2.div, i64* %alloc, align 8, !dbg !56, !tbaa !38
  %buf22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !59
  %3 = load i8*, i8** %buf22, align 8, !dbg !59, !tbaa !49
  %call24 = call align 16 i8* @realloc(i8* %3, i64 %add2.div) #9, !dbg !59
  store i8* %call24, i8** %buf22, align 8, !dbg !59, !tbaa !49
  br label %do.end, !dbg !59

do.end:                                           ; preds = %if.then4, %do.body
  br i1 %tobool.not, label %if.then28, label %if.end30, !dbg !60

if.then28:                                        ; preds = %do.end
  %buf29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !61
  %4 = load i8*, i8** %buf29, align 8, !dbg !61, !tbaa !49
  store i8 0, i8* %4, align 1, !dbg !63, !tbaa !64
  br label %if.end30, !dbg !65

if.end30:                                         ; preds = %if.then28, %do.end
  ret void, !dbg !66
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef align 16 i8* @realloc(i8* nocapture, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @strbuf_vaddf(%struct.strbuf* nocapture %sb, i8* %fmt, %struct.__va_list_tag* %ap) local_unnamed_addr #4 !dbg !67 {
entry:
  %cp = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !82, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !83, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %ap, metadata !84, metadata !DIExpression()), !dbg !93
  %0 = bitcast [1 x %struct.__va_list_tag]* %cp to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #10, !dbg !94
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %cp, metadata !86, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !96, metadata !DIExpression()), !dbg !103
  %alloc.i = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 0, !dbg !106
  %1 = load i64, i64* %alloc.i, align 8, !dbg !106, !tbaa !38
  %tobool.not.i = icmp eq i64 %1, 0, !dbg !107
  br i1 %tobool.not.i, label %if.then.i, label %cond.true.i, !dbg !107

cond.true.i:                                      ; preds = %entry
  %len.i = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 1, !dbg !108
  %2 = load i64, i64* %len.i, align 8, !dbg !108, !tbaa !54
  %.neg = add i64 %2, 1, !dbg !109
  %phi.cmp = icmp eq i64 %1, %.neg, !dbg !107
  br i1 %phi.cmp, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %cond.true.i
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !32, metadata !DIExpression()) #10, !dbg !111
  call void @llvm.dbg.value(metadata i64 64, metadata !33, metadata !DIExpression()) #10, !dbg !111
  call void @llvm.dbg.value(metadata i1 %tobool.not.i, metadata !34, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !111
  br i1 %tobool.not.i, label %if.then.i, label %do.body.i, !dbg !113

if.then.i:                                        ; preds = %entry, %if.then
  %buf.i = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !114
  store i8* null, i8** %buf.i, align 8, !dbg !115, !tbaa !49
  br label %do.body.i, !dbg !116

do.body.i:                                        ; preds = %if.then.i, %if.then
  %len.i51 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 1, !dbg !117
  %3 = load i64, i64* %len.i51, align 8, !dbg !117, !tbaa !54
  %add2.i = add i64 %3, 65, !dbg !117
  %cmp.i = icmp ugt i64 %add2.i, %1, !dbg !117
  br i1 %cmp.i, label %if.then4.i, label %do.end.i, !dbg !118

if.then4.i:                                       ; preds = %do.body.i
  %4 = mul i64 %1, 3, !dbg !119
  %mul.i = add i64 %4, 48, !dbg !119
  %div.i = lshr i64 %mul.i, 1, !dbg !119
  %cmp10.i = icmp ult i64 %div.i, %add2.i, !dbg !119
  %add2.div.i = select i1 %cmp10.i, i64 %add2.i, i64 %div.i
  store i64 %add2.div.i, i64* %alloc.i, align 8, !dbg !119, !tbaa !38
  %buf22.i = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !120
  %5 = load i8*, i8** %buf22.i, align 8, !dbg !120, !tbaa !49
  %call24.i = call align 16 i8* @realloc(i8* %5, i64 %add2.div.i) #11, !dbg !120
  store i8* %call24.i, i8** %buf22.i, align 8, !dbg !120, !tbaa !49
  br label %do.end.i, !dbg !120

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  br i1 %tobool.not.i, label %if.then28.i, label %if.end, !dbg !121

if.then28.i:                                      ; preds = %do.end.i
  %buf29.i = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !122
  %6 = load i8*, i8** %buf29.i, align 8, !dbg !122, !tbaa !49
  store i8 0, i8* %6, align 1, !dbg !123, !tbaa !64
  br label %if.end, !dbg !124

if.end:                                           ; preds = %if.then28.i, %do.end.i, %cond.true.i
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %cp, i64 0, i64 0, !dbg !125
  %7 = bitcast %struct.__va_list_tag* %ap to i8*, !dbg !125
  call void @llvm.va_copy(i8* nonnull %0, i8* %7), !dbg !125
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 2, !dbg !126
  %8 = load i8*, i8** %buf, align 8, !dbg !126, !tbaa !49
  %len1 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i64 0, i32 1, !dbg !126
  %9 = load i64, i64* %len1, align 8, !dbg !126, !tbaa !54
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !126
  %10 = load i64, i64* %alloc.i, align 8, !dbg !126, !tbaa !38
  %sub = sub i64 %10, %9, !dbg !126
  %vsnprintf = call i32 @vsnprintf(i8* %add.ptr, i64 %sub, i8* %fmt, %struct.__va_list_tag* nonnull %arraydecay), !dbg !126
  call void @llvm.dbg.value(metadata i32 %vsnprintf, metadata !85, metadata !DIExpression()), !dbg !93
  call void @llvm.va_end(i8* %0), !dbg !127
  %conv = sext i32 %vsnprintf to i64, !dbg !128
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !96, metadata !DIExpression()), !dbg !130
  %11 = load i64, i64* %alloc.i, align 8, !dbg !132, !tbaa !38
  %tobool.not.i53 = icmp eq i64 %11, 0, !dbg !133
  br i1 %tobool.not.i53, label %strbuf_avail.exit58, label %cond.true.i56, !dbg !133

cond.true.i56:                                    ; preds = %if.end
  %12 = load i64, i64* %len1, align 8, !dbg !134, !tbaa !54
  %13 = xor i64 %12, -1, !dbg !135
  %sub2.i55 = add i64 %11, %13, !dbg !135
  br label %strbuf_avail.exit58, !dbg !133

strbuf_avail.exit58:                              ; preds = %if.end, %cond.true.i56
  %cond.i57 = phi i64 [ %sub2.i55, %cond.true.i56 ], [ 0, %if.end ], !dbg !133
  %cmp = icmp ult i64 %cond.i57, %conv, !dbg !136
  br i1 %cmp, label %if.then12, label %if.end24, !dbg !137

if.then12:                                        ; preds = %strbuf_avail.exit58
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !32, metadata !DIExpression()) #10, !dbg !138
  call void @llvm.dbg.value(metadata i64 %conv, metadata !33, metadata !DIExpression()) #10, !dbg !138
  call void @llvm.dbg.value(metadata i1 %tobool.not.i53, metadata !34, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !138
  br i1 %tobool.not.i53, label %if.then.i62, label %do.body.i66, !dbg !141

if.then.i62:                                      ; preds = %if.then12
  store i8* null, i8** %buf, align 8, !dbg !142, !tbaa !49
  br label %do.body.i66, !dbg !143

do.body.i66:                                      ; preds = %if.then.i62, %if.then12
  %14 = load i64, i64* %len1, align 8, !dbg !144, !tbaa !54
  %add.i = add nsw i64 %conv, 1, !dbg !144
  %add2.i64 = add i64 %add.i, %14, !dbg !144
  %cmp.i65 = icmp ugt i64 %add2.i64, %11, !dbg !144
  br i1 %cmp.i65, label %if.then4.i73, label %do.end.i74, !dbg !145

if.then4.i73:                                     ; preds = %do.body.i66
  %15 = mul i64 %11, 3, !dbg !146
  %mul.i67 = add i64 %15, 48, !dbg !146
  %div.i68 = lshr i64 %mul.i67, 1, !dbg !146
  %cmp10.i69 = icmp ult i64 %div.i68, %add2.i64, !dbg !146
  %add2.div.i70 = select i1 %cmp10.i69, i64 %add2.i64, i64 %div.i68
  store i64 %add2.div.i70, i64* %alloc.i, align 8, !dbg !146, !tbaa !38
  %16 = load i8*, i8** %buf, align 8, !dbg !147, !tbaa !49
  %call24.i72 = call align 16 i8* @realloc(i8* %16, i64 %add2.div.i70) #11, !dbg !147
  store i8* %call24.i72, i8** %buf, align 8, !dbg !147, !tbaa !49
  br label %do.end.i74, !dbg !147

do.end.i74:                                       ; preds = %if.then4.i73, %do.body.i66
  br i1 %tobool.not.i53, label %if.then28.i76, label %strbuf_grow.exit77, !dbg !148

if.then28.i76:                                    ; preds = %do.end.i74
  %17 = load i8*, i8** %buf, align 8, !dbg !149, !tbaa !49
  store i8 0, i8* %17, align 1, !dbg !150, !tbaa !64
  br label %strbuf_grow.exit77, !dbg !151

strbuf_grow.exit77:                               ; preds = %do.end.i74, %if.then28.i76
  %18 = load i8*, i8** %buf, align 8, !dbg !152, !tbaa !49
  %19 = load i64, i64* %len1, align 8, !dbg !152, !tbaa !54
  %add.ptr16 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !152
  %20 = load i64, i64* %alloc.i, align 8, !dbg !152, !tbaa !38
  %sub19 = sub i64 %20, %19, !dbg !152
  %vsnprintf80 = call i32 @vsnprintf(i8* %add.ptr16, i64 %sub19, i8* %fmt, %struct.__va_list_tag* %ap), !dbg !152
  call void @llvm.dbg.value(metadata i32 %vsnprintf80, metadata !85, metadata !DIExpression()), !dbg !93
  br label %if.end24, !dbg !153

if.end24:                                         ; preds = %strbuf_grow.exit77, %strbuf_avail.exit58
  %len.0 = phi i32 [ %vsnprintf80, %strbuf_grow.exit77 ], [ %vsnprintf, %strbuf_avail.exit58 ], !dbg !93
  call void @llvm.dbg.value(metadata i32 %len.0, metadata !85, metadata !DIExpression()), !dbg !93
  %21 = load i64, i64* %len1, align 8, !dbg !154, !tbaa !54
  %conv26 = sext i32 %len.0 to i64, !dbg !155
  %add = add i64 %21, %conv26, !dbg !156
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !157, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i64 %add, metadata !160, metadata !DIExpression()), !dbg !161
  store i64 %add, i64* %len1, align 8, !dbg !163, !tbaa !54
  %22 = load i8*, i8** %buf, align 8, !dbg !164, !tbaa !49
  %cmp.not.i = icmp eq i8* %22, getelementptr inbounds ([1 x i8], [1 x i8]* @strbuf_slopbuf, i64 0, i64 0), !dbg !166
  br i1 %cmp.not.i, label %strbuf_setlen.exit, label %if.then.i79, !dbg !167

if.then.i79:                                      ; preds = %if.end24
  %arrayidx.i = getelementptr inbounds i8, i8* %22, i64 %add, !dbg !168
  store i8 0, i8* %arrayidx.i, align 1, !dbg !169, !tbaa !64
  br label %strbuf_setlen.exit, !dbg !168

strbuf_setlen.exit:                               ; preds = %if.end24, %if.then.i79
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #10, !dbg !170
  ret void, !dbg !170
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind ssp uwtable
define void @strbuf_addf(%struct.strbuf* nocapture %sb, i8* %fmt, ...) local_unnamed_addr #4 !dbg !171 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !175, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !176, metadata !DIExpression()), !dbg !178
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !179
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #10, !dbg !179
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !177, metadata !DIExpression()), !dbg !180
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !181
  call void @llvm.va_start(i8* nonnull %0), !dbg !181
  call void @strbuf_vaddf(%struct.strbuf* %sb, i8* %fmt, %struct.__va_list_tag* nonnull %arraydecay), !dbg !182
  call void @llvm.va_end(i8* %0), !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #10, !dbg !184
  ret void, !dbg !184
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #4 !dbg !185 {
entry:
  %d = alloca %struct.strbuf, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !190, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata i8** %argv, metadata !191, metadata !DIExpression()), !dbg !193
  %0 = bitcast %struct.strbuf* %d to i8*, !dbg !194
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #10, !dbg !194
  call void @llvm.dbg.declare(metadata %struct.strbuf* %d, metadata !192, metadata !DIExpression()), !dbg !195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %0, i8* noundef nonnull align 8 dereferenceable(24) bitcast (%struct.strbuf* @__const.main.d to i8*), i64 24, i1 false), !dbg !195
  call void (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* nonnull %d, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !196
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #10, !dbg !197
  ret i32 0, !dbg !197
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(i8* nocapture noundef, i64 noundef, i8* nocapture noundef readonly, %struct.__va_list_tag* noundef) #8

attributes #0 = { mustprogress nounwind ssp uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { allocsize(1) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(1) }

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "strbuf_slopbuf", scope: !2, file: !3, line: 48, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/inlining-flip-flop")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !8)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!9}
!9 = !DISubrange(count: 1)
!10 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 1]}
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!18 = distinct !DISubprogram(name: "strbuf_grow", scope: !3, file: !3, line: 63, type: !19, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !25}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf", file: !3, line: 42, size: 192, elements: !23)
!23 = !{!24, !28, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !22, file: !3, line: 43, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "LLVM/llvm/builds/release-clang-lldb-13.0.0/lib/clang/13.0.0/include/stddef.h", directory: "/Users/jryans/Projects")
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !22, file: !3, line: 44, baseType: !25, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !22, file: !3, line: 45, baseType: !30, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!31 = !{!32, !33, !34}
!32 = !DILocalVariable(name: "sb", arg: 1, scope: !18, file: !3, line: 63, type: !21)
!33 = !DILocalVariable(name: "extra", arg: 2, scope: !18, file: !3, line: 63, type: !25)
!34 = !DILocalVariable(name: "new_buf", scope: !18, file: !3, line: 64, type: !35)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DILocation(line: 0, scope: !18)
!37 = !DILocation(line: 64, column: 22, scope: !18)
!38 = !{!39, !40, i64 0}
!39 = !{!"strbuf", !40, i64 0, !40, i64 8, !43, i64 16}
!40 = !{!"long", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"any pointer", !41, i64 0}
!44 = !DILocation(line: 64, column: 17, scope: !18)
!45 = !DILocation(line: 65, column: 7, scope: !18)
!46 = !DILocation(line: 66, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !18, file: !3, line: 65, column: 7)
!48 = !DILocation(line: 66, column: 13, scope: !47)
!49 = !{!39, !43, i64 16}
!50 = !DILocation(line: 66, column: 5, scope: !47)
!51 = !DILocation(line: 67, column: 3, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !3, line: 67, column: 3)
!53 = distinct !DILexicalBlock(scope: !18, file: !3, line: 67, column: 3)
!54 = !{!39, !40, i64 8}
!55 = !DILocation(line: 67, column: 3, scope: !53)
!56 = !DILocation(line: 67, column: 3, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !3, line: 67, column: 3)
!58 = distinct !DILexicalBlock(scope: !52, file: !3, line: 67, column: 3)
!59 = !DILocation(line: 67, column: 3, scope: !58)
!60 = !DILocation(line: 68, column: 7, scope: !18)
!61 = !DILocation(line: 69, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !18, file: !3, line: 68, column: 7)
!63 = !DILocation(line: 69, column: 16, scope: !62)
!64 = !{!41, !41, i64 0}
!65 = !DILocation(line: 69, column: 5, scope: !62)
!66 = !DILocation(line: 70, column: 1, scope: !18)
!67 = distinct !DISubprogram(name: "strbuf_vaddf", scope: !3, file: !3, line: 72, type: !68, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !81)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !21, !70, !72}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !74)
!74 = !{!75, !77, !78, !80}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !73, file: !3, line: 70, baseType: !76, size: 32)
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !73, file: !3, line: 70, baseType: !76, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !73, file: !3, line: 70, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !73, file: !3, line: 70, baseType: !79, size: 64, offset: 128)
!81 = !{!82, !83, !84, !85, !86}
!82 = !DILocalVariable(name: "sb", arg: 1, scope: !67, file: !3, line: 72, type: !21)
!83 = !DILocalVariable(name: "fmt", arg: 2, scope: !67, file: !3, line: 72, type: !70)
!84 = !DILocalVariable(name: "ap", arg: 3, scope: !67, file: !3, line: 72, type: !72)
!85 = !DILocalVariable(name: "len", scope: !67, file: !3, line: 73, type: !35)
!86 = !DILocalVariable(name: "cp", scope: !67, file: !3, line: 74, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !88, line: 44, baseType: !89)
!88 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_va_list.h", directory: "")
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_va_list", file: !90, line: 119, baseType: !91)
!90 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h", directory: "")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 192, elements: !8)
!93 = !DILocation(line: 0, scope: !67)
!94 = !DILocation(line: 74, column: 3, scope: !67)
!95 = !DILocation(line: 74, column: 11, scope: !67)
!96 = !DILocalVariable(name: "sb", arg: 1, scope: !97, file: !3, line: 51, type: !100)
!97 = distinct !DISubprogram(name: "strbuf_avail", scope: !3, file: !3, line: 51, type: !98, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !102)
!98 = !DISubroutineType(types: !99)
!99 = !{!25, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!102 = !{!96}
!103 = !DILocation(line: 0, scope: !97, inlinedAt: !104)
!104 = distinct !DILocation(line: 76, column: 8, scope: !105)
!105 = distinct !DILexicalBlock(scope: !67, file: !3, line: 76, column: 7)
!106 = !DILocation(line: 52, column: 14, scope: !97, inlinedAt: !104)
!107 = !DILocation(line: 52, column: 10, scope: !97, inlinedAt: !104)
!108 = !DILocation(line: 52, column: 38, scope: !97, inlinedAt: !104)
!109 = !DILocation(line: 52, column: 42, scope: !97, inlinedAt: !104)
!110 = !DILocation(line: 76, column: 7, scope: !67)
!111 = !DILocation(line: 0, scope: !18, inlinedAt: !112)
!112 = distinct !DILocation(line: 77, column: 5, scope: !105)
!113 = !DILocation(line: 65, column: 7, scope: !18, inlinedAt: !112)
!114 = !DILocation(line: 66, column: 9, scope: !47, inlinedAt: !112)
!115 = !DILocation(line: 66, column: 13, scope: !47, inlinedAt: !112)
!116 = !DILocation(line: 66, column: 5, scope: !47, inlinedAt: !112)
!117 = !DILocation(line: 67, column: 3, scope: !52, inlinedAt: !112)
!118 = !DILocation(line: 67, column: 3, scope: !53, inlinedAt: !112)
!119 = !DILocation(line: 67, column: 3, scope: !57, inlinedAt: !112)
!120 = !DILocation(line: 67, column: 3, scope: !58, inlinedAt: !112)
!121 = !DILocation(line: 68, column: 7, scope: !18, inlinedAt: !112)
!122 = !DILocation(line: 69, column: 9, scope: !62, inlinedAt: !112)
!123 = !DILocation(line: 69, column: 16, scope: !62, inlinedAt: !112)
!124 = !DILocation(line: 69, column: 5, scope: !62, inlinedAt: !112)
!125 = !DILocation(line: 78, column: 3, scope: !67)
!126 = !DILocation(line: 79, column: 9, scope: !67)
!127 = !DILocation(line: 80, column: 3, scope: !67)
!128 = !DILocation(line: 81, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !67, file: !3, line: 81, column: 7)
!130 = !DILocation(line: 0, scope: !97, inlinedAt: !131)
!131 = distinct !DILocation(line: 81, column: 13, scope: !129)
!132 = !DILocation(line: 52, column: 14, scope: !97, inlinedAt: !131)
!133 = !DILocation(line: 52, column: 10, scope: !97, inlinedAt: !131)
!134 = !DILocation(line: 52, column: 38, scope: !97, inlinedAt: !131)
!135 = !DILocation(line: 52, column: 42, scope: !97, inlinedAt: !131)
!136 = !DILocation(line: 81, column: 11, scope: !129)
!137 = !DILocation(line: 81, column: 7, scope: !67)
!138 = !DILocation(line: 0, scope: !18, inlinedAt: !139)
!139 = distinct !DILocation(line: 82, column: 5, scope: !140)
!140 = distinct !DILexicalBlock(scope: !129, file: !3, line: 81, column: 31)
!141 = !DILocation(line: 65, column: 7, scope: !18, inlinedAt: !139)
!142 = !DILocation(line: 66, column: 13, scope: !47, inlinedAt: !139)
!143 = !DILocation(line: 66, column: 5, scope: !47, inlinedAt: !139)
!144 = !DILocation(line: 67, column: 3, scope: !52, inlinedAt: !139)
!145 = !DILocation(line: 67, column: 3, scope: !53, inlinedAt: !139)
!146 = !DILocation(line: 67, column: 3, scope: !57, inlinedAt: !139)
!147 = !DILocation(line: 67, column: 3, scope: !58, inlinedAt: !139)
!148 = !DILocation(line: 68, column: 7, scope: !18, inlinedAt: !139)
!149 = !DILocation(line: 69, column: 9, scope: !62, inlinedAt: !139)
!150 = !DILocation(line: 69, column: 16, scope: !62, inlinedAt: !139)
!151 = !DILocation(line: 69, column: 5, scope: !62, inlinedAt: !139)
!152 = !DILocation(line: 83, column: 11, scope: !140)
!153 = !DILocation(line: 84, column: 3, scope: !140)
!154 = !DILocation(line: 85, column: 25, scope: !67)
!155 = !DILocation(line: 85, column: 31, scope: !67)
!156 = !DILocation(line: 85, column: 29, scope: !67)
!157 = !DILocalVariable(name: "sb", arg: 1, scope: !158, file: !3, line: 55, type: !21)
!158 = distinct !DISubprogram(name: "strbuf_setlen", scope: !3, file: !3, line: 55, type: !19, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!159 = !{!157, !160}
!160 = !DILocalVariable(name: "len", arg: 2, scope: !158, file: !3, line: 55, type: !25)
!161 = !DILocation(line: 0, scope: !158, inlinedAt: !162)
!162 = distinct !DILocation(line: 85, column: 3, scope: !67)
!163 = !DILocation(line: 56, column: 11, scope: !158, inlinedAt: !162)
!164 = !DILocation(line: 57, column: 11, scope: !165, inlinedAt: !162)
!165 = distinct !DILexicalBlock(scope: !158, file: !3, line: 57, column: 7)
!166 = !DILocation(line: 57, column: 15, scope: !165, inlinedAt: !162)
!167 = !DILocation(line: 57, column: 7, scope: !158, inlinedAt: !162)
!168 = !DILocation(line: 58, column: 5, scope: !165, inlinedAt: !162)
!169 = !DILocation(line: 58, column: 18, scope: !165, inlinedAt: !162)
!170 = !DILocation(line: 86, column: 1, scope: !67)
!171 = distinct !DISubprogram(name: "strbuf_addf", scope: !3, file: !3, line: 88, type: !172, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !174)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !21, !70, null}
!174 = !{!175, !176, !177}
!175 = !DILocalVariable(name: "sb", arg: 1, scope: !171, file: !3, line: 88, type: !21)
!176 = !DILocalVariable(name: "fmt", arg: 2, scope: !171, file: !3, line: 88, type: !70)
!177 = !DILocalVariable(name: "ap", scope: !171, file: !3, line: 89, type: !87)
!178 = !DILocation(line: 0, scope: !171)
!179 = !DILocation(line: 89, column: 3, scope: !171)
!180 = !DILocation(line: 89, column: 11, scope: !171)
!181 = !DILocation(line: 90, column: 3, scope: !171)
!182 = !DILocation(line: 91, column: 3, scope: !171)
!183 = !DILocation(line: 92, column: 3, scope: !171)
!184 = !DILocation(line: 93, column: 1, scope: !171)
!185 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 95, type: !186, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!186 = !DISubroutineType(types: !187)
!187 = !{!35, !35, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!189 = !{!190, !191, !192}
!190 = !DILocalVariable(name: "argc", arg: 1, scope: !185, file: !3, line: 95, type: !35)
!191 = !DILocalVariable(name: "argv", arg: 2, scope: !185, file: !3, line: 95, type: !188)
!192 = !DILocalVariable(name: "d", scope: !185, file: !3, line: 96, type: !22)
!193 = !DILocation(line: 0, scope: !185)
!194 = !DILocation(line: 96, column: 3, scope: !185)
!195 = !DILocation(line: 96, column: 17, scope: !185)
!196 = !DILocation(line: 97, column: 3, scope: !185)
!197 = !DILocation(line: 98, column: 1, scope: !185)
