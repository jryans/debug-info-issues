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

; Function Attrs: noinline nounwind ssp uwtable
define void @strbuf_grow(%struct.strbuf* %sb, i64 %extra) #0 !dbg !18 {
entry:
  %sb.addr = alloca %struct.strbuf*, align 8
  %extra.addr = alloca i64, align 8
  %new_buf = alloca i32, align 4
  store %struct.strbuf* %sb, %struct.strbuf** %sb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.strbuf** %sb.addr, metadata !31, metadata !DIExpression()), !dbg !32
  store i64 %extra, i64* %extra.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %extra.addr, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %new_buf, metadata !35, metadata !DIExpression()), !dbg !37
  %0 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !38
  %alloc = getelementptr inbounds %struct.strbuf, %struct.strbuf* %0, i32 0, i32 0, !dbg !39
  %1 = load i64, i64* %alloc, align 8, !dbg !39
  %tobool = icmp ne i64 %1, 0, !dbg !40
  %lnot = xor i1 %tobool, true, !dbg !40
  %lnot.ext = zext i1 %lnot to i32, !dbg !40
  store i32 %lnot.ext, i32* %new_buf, align 4, !dbg !37
  %2 = load i32, i32* %new_buf, align 4, !dbg !41
  %tobool1 = icmp ne i32 %2, 0, !dbg !41
  br i1 %tobool1, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %3 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !44
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 2, !dbg !45
  store i8* null, i8** %buf, align 8, !dbg !46
  br label %if.end, !dbg !44

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !47

do.body:                                          ; preds = %if.end
  %4 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !48
  %len = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1, !dbg !48
  %5 = load i64, i64* %len, align 8, !dbg !48
  %6 = load i64, i64* %extra.addr, align 8, !dbg !48
  %add = add i64 %5, %6, !dbg !48
  %add2 = add i64 %add, 1, !dbg !48
  %7 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !48
  %alloc3 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0, !dbg !48
  %8 = load i64, i64* %alloc3, align 8, !dbg !48
  %cmp = icmp ugt i64 %add2, %8, !dbg !48
  br i1 %cmp, label %if.then4, label %if.end26, !dbg !51

if.then4:                                         ; preds = %do.body
  %9 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !52
  %alloc5 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0, !dbg !52
  %10 = load i64, i64* %alloc5, align 8, !dbg !52
  %add6 = add i64 %10, 16, !dbg !52
  %mul = mul i64 %add6, 3, !dbg !52
  %div = udiv i64 %mul, 2, !dbg !52
  %11 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !52
  %len7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1, !dbg !52
  %12 = load i64, i64* %len7, align 8, !dbg !52
  %13 = load i64, i64* %extra.addr, align 8, !dbg !52
  %add8 = add i64 %12, %13, !dbg !52
  %add9 = add i64 %add8, 1, !dbg !52
  %cmp10 = icmp ult i64 %div, %add9, !dbg !52
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !55

if.then11:                                        ; preds = %if.then4
  %14 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !52
  %len12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1, !dbg !52
  %15 = load i64, i64* %len12, align 8, !dbg !52
  %16 = load i64, i64* %extra.addr, align 8, !dbg !52
  %add13 = add i64 %15, %16, !dbg !52
  %add14 = add i64 %add13, 1, !dbg !52
  %17 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !52
  %alloc15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0, !dbg !52
  store i64 %add14, i64* %alloc15, align 8, !dbg !52
  br label %if.end21, !dbg !52

if.else:                                          ; preds = %if.then4
  %18 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !52
  %alloc16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0, !dbg !52
  %19 = load i64, i64* %alloc16, align 8, !dbg !52
  %add17 = add i64 %19, 16, !dbg !52
  %mul18 = mul i64 %add17, 3, !dbg !52
  %div19 = udiv i64 %mul18, 2, !dbg !52
  %20 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !52
  %alloc20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0, !dbg !52
  store i64 %div19, i64* %alloc20, align 8, !dbg !52
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then11
  %21 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !55
  %buf22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 2, !dbg !55
  %22 = load i8*, i8** %buf22, align 8, !dbg !55
  %23 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !55
  %alloc23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0, !dbg !55
  %24 = load i64, i64* %alloc23, align 8, !dbg !55
  %call = call i64 @st_mult(i64 1, i64 %24), !dbg !55
  %call24 = call align 16 i8* @realloc(i8* %22, i64 %call) #6, !dbg !55
  %25 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !55
  %buf25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 2, !dbg !55
  store i8* %call24, i8** %buf25, align 8, !dbg !55
  br label %if.end26, !dbg !55

if.end26:                                         ; preds = %if.end21, %do.body
  br label %do.end, !dbg !51

do.end:                                           ; preds = %if.end26
  %26 = load i32, i32* %new_buf, align 4, !dbg !56
  %tobool27 = icmp ne i32 %26, 0, !dbg !56
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !58

if.then28:                                        ; preds = %do.end
  %27 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !59
  %buf29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 2, !dbg !60
  %28 = load i8*, i8** %buf29, align 8, !dbg !60
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0, !dbg !59
  store i8 0, i8* %arrayidx, align 1, !dbg !61
  br label %if.end30, !dbg !59

if.end30:                                         ; preds = %if.then28, %do.end
  ret void, !dbg !62
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: allocsize(1)
declare align 16 i8* @realloc(i8*, i64) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @st_mult(i64 %a, i64 %b) #0 !dbg !63 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !66, metadata !DIExpression()), !dbg !67
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !68, metadata !DIExpression()), !dbg !69
  %0 = load i64, i64* %a.addr, align 8, !dbg !70
  %1 = load i64, i64* %b.addr, align 8, !dbg !71
  %mul = mul i64 %0, %1, !dbg !72
  ret i64 %mul, !dbg !73
}

; Function Attrs: noinline nounwind ssp uwtable
define void @strbuf_vaddf(%struct.strbuf* %sb, i8* %fmt, %struct.__va_list_tag* %ap) #0 !dbg !74 {
entry:
  %sb.addr = alloca %struct.strbuf*, align 8
  %fmt.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %len = alloca i32, align 4
  %cp = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.strbuf* %sb, %struct.strbuf** %sb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.strbuf** %sb.addr, metadata !88, metadata !DIExpression()), !dbg !89
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !90, metadata !DIExpression()), !dbg !91
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %ap.addr, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %len, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %cp, metadata !96, metadata !DIExpression()), !dbg !103
  %0 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !104
  %call = call i64 @strbuf_avail(%struct.strbuf* %0), !dbg !106
  %tobool = icmp ne i64 %call, 0, !dbg !106
  br i1 %tobool, label %if.end, label %if.then, !dbg !107

if.then:                                          ; preds = %entry
  %1 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !108
  call void @strbuf_grow(%struct.strbuf* %1, i64 64), !dbg !109
  br label %if.end, !dbg !109

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %cp, i64 0, i64 0, !dbg !110
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8, !dbg !110
  %3 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !110
  %4 = bitcast %struct.__va_list_tag* %2 to i8*, !dbg !110
  call void @llvm.va_copy(i8* %3, i8* %4), !dbg !110
  %5 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !111
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 2, !dbg !111
  %6 = load i8*, i8** %buf, align 8, !dbg !111
  %7 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !111
  %len1 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1, !dbg !111
  %8 = load i64, i64* %len1, align 8, !dbg !111
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %8, !dbg !111
  %9 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !111
  %alloc = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0, !dbg !111
  %10 = load i64, i64* %alloc, align 8, !dbg !111
  %11 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !111
  %len2 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1, !dbg !111
  %12 = load i64, i64* %len2, align 8, !dbg !111
  %sub = sub i64 %10, %12, !dbg !111
  %13 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !111
  %buf3 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 2, !dbg !111
  %14 = load i8*, i8** %buf3, align 8, !dbg !111
  %15 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !111
  %len4 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1, !dbg !111
  %16 = load i64, i64* %len4, align 8, !dbg !111
  %add.ptr5 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !111
  %17 = call i64 @llvm.objectsize.i64.p0i8(i8* %add.ptr5, i1 false, i1 true, i1 false), !dbg !111
  %18 = load i8*, i8** %fmt.addr, align 8, !dbg !111
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %cp, i64 0, i64 0, !dbg !111
  %call7 = call i32 @__vsnprintf_chk(i8* %add.ptr, i64 %sub, i32 0, i64 %17, i8* %18, %struct.__va_list_tag* %arraydecay6), !dbg !111
  store i32 %call7, i32* %len, align 4, !dbg !112
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %cp, i64 0, i64 0, !dbg !113
  %arraydecay89 = bitcast %struct.__va_list_tag* %arraydecay8 to i8*, !dbg !113
  call void @llvm.va_end(i8* %arraydecay89), !dbg !113
  %19 = load i32, i32* %len, align 4, !dbg !114
  %conv = sext i32 %19 to i64, !dbg !114
  %20 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !116
  %call10 = call i64 @strbuf_avail(%struct.strbuf* %20), !dbg !117
  %cmp = icmp ugt i64 %conv, %call10, !dbg !118
  br i1 %cmp, label %if.then12, label %if.end24, !dbg !119

if.then12:                                        ; preds = %if.end
  %21 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !120
  %22 = load i32, i32* %len, align 4, !dbg !122
  %conv13 = sext i32 %22 to i64, !dbg !122
  call void @strbuf_grow(%struct.strbuf* %21, i64 %conv13), !dbg !123
  %23 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !124
  %buf14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 2, !dbg !124
  %24 = load i8*, i8** %buf14, align 8, !dbg !124
  %25 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !124
  %len15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 1, !dbg !124
  %26 = load i64, i64* %len15, align 8, !dbg !124
  %add.ptr16 = getelementptr inbounds i8, i8* %24, i64 %26, !dbg !124
  %27 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !124
  %alloc17 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 0, !dbg !124
  %28 = load i64, i64* %alloc17, align 8, !dbg !124
  %29 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !124
  %len18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 1, !dbg !124
  %30 = load i64, i64* %len18, align 8, !dbg !124
  %sub19 = sub i64 %28, %30, !dbg !124
  %31 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !124
  %buf20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %31, i32 0, i32 2, !dbg !124
  %32 = load i8*, i8** %buf20, align 8, !dbg !124
  %33 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !124
  %len21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 1, !dbg !124
  %34 = load i64, i64* %len21, align 8, !dbg !124
  %add.ptr22 = getelementptr inbounds i8, i8* %32, i64 %34, !dbg !124
  %35 = call i64 @llvm.objectsize.i64.p0i8(i8* %add.ptr22, i1 false, i1 true, i1 false), !dbg !124
  %36 = load i8*, i8** %fmt.addr, align 8, !dbg !124
  %37 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8, !dbg !124
  %call23 = call i32 @__vsnprintf_chk(i8* %add.ptr16, i64 %sub19, i32 0, i64 %35, i8* %36, %struct.__va_list_tag* %37), !dbg !124
  store i32 %call23, i32* %len, align 4, !dbg !125
  br label %if.end24, !dbg !126

if.end24:                                         ; preds = %if.then12, %if.end
  %38 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !127
  %39 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !128
  %len25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %39, i32 0, i32 1, !dbg !129
  %40 = load i64, i64* %len25, align 8, !dbg !129
  %41 = load i32, i32* %len, align 4, !dbg !130
  %conv26 = sext i32 %41 to i64, !dbg !130
  %add = add i64 %40, %conv26, !dbg !131
  call void @strbuf_setlen(%struct.strbuf* %38, i64 %add), !dbg !132
  ret void, !dbg !133
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @strbuf_avail(%struct.strbuf* %sb) #0 !dbg !134 {
entry:
  %sb.addr = alloca %struct.strbuf*, align 8
  store %struct.strbuf* %sb, %struct.strbuf** %sb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.strbuf** %sb.addr, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !141
  %alloc = getelementptr inbounds %struct.strbuf, %struct.strbuf* %0, i32 0, i32 0, !dbg !142
  %1 = load i64, i64* %alloc, align 8, !dbg !142
  %tobool = icmp ne i64 %1, 0, !dbg !141
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !141

cond.true:                                        ; preds = %entry
  %2 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !143
  %alloc1 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %2, i32 0, i32 0, !dbg !144
  %3 = load i64, i64* %alloc1, align 8, !dbg !144
  %4 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !145
  %len = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1, !dbg !146
  %5 = load i64, i64* %len, align 8, !dbg !146
  %sub = sub i64 %3, %5, !dbg !147
  %sub2 = sub i64 %sub, 1, !dbg !148
  br label %cond.end, !dbg !141

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !141

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub2, %cond.true ], [ 0, %cond.false ], !dbg !141
  ret i64 %cond, !dbg !149
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #3

declare i32 @__vsnprintf_chk(i8*, i64, i32, i64, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal void @strbuf_setlen(%struct.strbuf* %sb, i64 %len) #0 !dbg !150 {
entry:
  %sb.addr = alloca %struct.strbuf*, align 8
  %len.addr = alloca i64, align 8
  store %struct.strbuf* %sb, %struct.strbuf** %sb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.strbuf** %sb.addr, metadata !151, metadata !DIExpression()), !dbg !152
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load i64, i64* %len.addr, align 8, !dbg !155
  %1 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !156
  %len1 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 1, !dbg !157
  store i64 %0, i64* %len1, align 8, !dbg !158
  %2 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !159
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %2, i32 0, i32 2, !dbg !161
  %3 = load i8*, i8** %buf, align 8, !dbg !161
  %cmp = icmp ne i8* %3, getelementptr inbounds ([1 x i8], [1 x i8]* @strbuf_slopbuf, i64 0, i64 0), !dbg !162
  br i1 %cmp, label %if.then, label %if.end, !dbg !163

if.then:                                          ; preds = %entry
  %4 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !164
  %buf2 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 2, !dbg !165
  %5 = load i8*, i8** %buf2, align 8, !dbg !165
  %6 = load i64, i64* %len.addr, align 8, !dbg !166
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !164
  store i8 0, i8* %arrayidx, align 1, !dbg !167
  br label %if.end, !dbg !164

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !168
}

; Function Attrs: noinline nounwind ssp uwtable
define void @strbuf_addf(%struct.strbuf* %sb, i8* %fmt, ...) #0 !dbg !169 {
entry:
  %sb.addr = alloca %struct.strbuf*, align 8
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.strbuf* %sb, %struct.strbuf** %sb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.strbuf** %sb.addr, metadata !172, metadata !DIExpression()), !dbg !173
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !176, metadata !DIExpression()), !dbg !177
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !178
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !178
  call void @llvm.va_start(i8* %arraydecay1), !dbg !178
  %0 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !179
  %1 = load i8*, i8** %fmt.addr, align 8, !dbg !180
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !181
  call void @strbuf_vaddf(%struct.strbuf* %0, i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !182
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !183
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !183
  call void @llvm.va_end(i8* %arraydecay34), !dbg !183
  ret void, !dbg !184
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !185 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %d = alloca %struct.strbuf, align 8
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !189, metadata !DIExpression()), !dbg !190
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata %struct.strbuf* %d, metadata !193, metadata !DIExpression()), !dbg !194
  %0 = bitcast %struct.strbuf* %d to i8*, !dbg !194
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.strbuf* @__const.main.d to i8*), i64 24, i1 false), !dbg !194
  call void (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %d, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !195
  ret i32 0, !dbg !196
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { allocsize(1) }

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "strbuf_slopbuf", scope: !2, file: !3, line: 48, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
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
!18 = distinct !DISubprogram(name: "strbuf_grow", scope: !3, file: !3, line: 63, type: !19, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
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
!31 = !DILocalVariable(name: "sb", arg: 1, scope: !18, file: !3, line: 63, type: !21)
!32 = !DILocation(line: 63, column: 33, scope: !18)
!33 = !DILocalVariable(name: "extra", arg: 2, scope: !18, file: !3, line: 63, type: !25)
!34 = !DILocation(line: 63, column: 44, scope: !18)
!35 = !DILocalVariable(name: "new_buf", scope: !18, file: !3, line: 64, type: !36)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DILocation(line: 64, column: 7, scope: !18)
!38 = !DILocation(line: 64, column: 18, scope: !18)
!39 = !DILocation(line: 64, column: 22, scope: !18)
!40 = !DILocation(line: 64, column: 17, scope: !18)
!41 = !DILocation(line: 65, column: 7, scope: !42)
!42 = distinct !DILexicalBlock(scope: !18, file: !3, line: 65, column: 7)
!43 = !DILocation(line: 65, column: 7, scope: !18)
!44 = !DILocation(line: 66, column: 5, scope: !42)
!45 = !DILocation(line: 66, column: 9, scope: !42)
!46 = !DILocation(line: 66, column: 13, scope: !42)
!47 = !DILocation(line: 67, column: 3, scope: !18)
!48 = !DILocation(line: 67, column: 3, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 67, column: 3)
!50 = distinct !DILexicalBlock(scope: !18, file: !3, line: 67, column: 3)
!51 = !DILocation(line: 67, column: 3, scope: !50)
!52 = !DILocation(line: 67, column: 3, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !3, line: 67, column: 3)
!54 = distinct !DILexicalBlock(scope: !49, file: !3, line: 67, column: 3)
!55 = !DILocation(line: 67, column: 3, scope: !54)
!56 = !DILocation(line: 68, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !18, file: !3, line: 68, column: 7)
!58 = !DILocation(line: 68, column: 7, scope: !18)
!59 = !DILocation(line: 69, column: 5, scope: !57)
!60 = !DILocation(line: 69, column: 9, scope: !57)
!61 = !DILocation(line: 69, column: 16, scope: !57)
!62 = !DILocation(line: 70, column: 1, scope: !18)
!63 = distinct !DISubprogram(name: "st_mult", scope: !3, file: !3, line: 20, type: !64, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!64 = !DISubroutineType(types: !65)
!65 = !{!25, !25, !25}
!66 = !DILocalVariable(name: "a", arg: 1, scope: !63, file: !3, line: 20, type: !25)
!67 = !DILocation(line: 20, column: 37, scope: !63)
!68 = !DILocalVariable(name: "b", arg: 2, scope: !63, file: !3, line: 20, type: !25)
!69 = !DILocation(line: 20, column: 47, scope: !63)
!70 = !DILocation(line: 20, column: 59, scope: !63)
!71 = !DILocation(line: 20, column: 63, scope: !63)
!72 = !DILocation(line: 20, column: 61, scope: !63)
!73 = !DILocation(line: 20, column: 52, scope: !63)
!74 = distinct !DISubprogram(name: "strbuf_vaddf", scope: !3, file: !3, line: 72, type: !75, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !21, !77, !79}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !81)
!81 = !{!82, !84, !85, !87}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !80, file: !3, line: 70, baseType: !83, size: 32)
!83 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !80, file: !3, line: 70, baseType: !83, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !80, file: !3, line: 70, baseType: !86, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !80, file: !3, line: 70, baseType: !86, size: 64, offset: 128)
!88 = !DILocalVariable(name: "sb", arg: 1, scope: !74, file: !3, line: 72, type: !21)
!89 = !DILocation(line: 72, column: 34, scope: !74)
!90 = !DILocalVariable(name: "fmt", arg: 2, scope: !74, file: !3, line: 72, type: !77)
!91 = !DILocation(line: 72, column: 50, scope: !74)
!92 = !DILocalVariable(name: "ap", arg: 3, scope: !74, file: !3, line: 72, type: !79)
!93 = !DILocation(line: 72, column: 63, scope: !74)
!94 = !DILocalVariable(name: "len", scope: !74, file: !3, line: 73, type: !36)
!95 = !DILocation(line: 73, column: 7, scope: !74)
!96 = !DILocalVariable(name: "cp", scope: !74, file: !3, line: 74, type: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !98, line: 44, baseType: !99)
!98 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_va_list.h", directory: "")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_va_list", file: !100, line: 119, baseType: !101)
!100 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h", directory: "")
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 192, elements: !8)
!103 = !DILocation(line: 74, column: 11, scope: !74)
!104 = !DILocation(line: 76, column: 21, scope: !105)
!105 = distinct !DILexicalBlock(scope: !74, file: !3, line: 76, column: 7)
!106 = !DILocation(line: 76, column: 8, scope: !105)
!107 = !DILocation(line: 76, column: 7, scope: !74)
!108 = !DILocation(line: 77, column: 17, scope: !105)
!109 = !DILocation(line: 77, column: 5, scope: !105)
!110 = !DILocation(line: 78, column: 3, scope: !74)
!111 = !DILocation(line: 79, column: 9, scope: !74)
!112 = !DILocation(line: 79, column: 7, scope: !74)
!113 = !DILocation(line: 80, column: 3, scope: !74)
!114 = !DILocation(line: 81, column: 7, scope: !115)
!115 = distinct !DILexicalBlock(scope: !74, file: !3, line: 81, column: 7)
!116 = !DILocation(line: 81, column: 26, scope: !115)
!117 = !DILocation(line: 81, column: 13, scope: !115)
!118 = !DILocation(line: 81, column: 11, scope: !115)
!119 = !DILocation(line: 81, column: 7, scope: !74)
!120 = !DILocation(line: 82, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !115, file: !3, line: 81, column: 31)
!122 = !DILocation(line: 82, column: 21, scope: !121)
!123 = !DILocation(line: 82, column: 5, scope: !121)
!124 = !DILocation(line: 83, column: 11, scope: !121)
!125 = !DILocation(line: 83, column: 9, scope: !121)
!126 = !DILocation(line: 84, column: 3, scope: !121)
!127 = !DILocation(line: 85, column: 17, scope: !74)
!128 = !DILocation(line: 85, column: 21, scope: !74)
!129 = !DILocation(line: 85, column: 25, scope: !74)
!130 = !DILocation(line: 85, column: 31, scope: !74)
!131 = !DILocation(line: 85, column: 29, scope: !74)
!132 = !DILocation(line: 85, column: 3, scope: !74)
!133 = !DILocation(line: 86, column: 1, scope: !74)
!134 = distinct !DISubprogram(name: "strbuf_avail", scope: !3, file: !3, line: 51, type: !135, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!135 = !DISubroutineType(types: !136)
!136 = !{!25, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!139 = !DILocalVariable(name: "sb", arg: 1, scope: !134, file: !3, line: 51, type: !137)
!140 = !DILocation(line: 51, column: 56, scope: !134)
!141 = !DILocation(line: 52, column: 10, scope: !134)
!142 = !DILocation(line: 52, column: 14, scope: !134)
!143 = !DILocation(line: 52, column: 22, scope: !134)
!144 = !DILocation(line: 52, column: 26, scope: !134)
!145 = !DILocation(line: 52, column: 34, scope: !134)
!146 = !DILocation(line: 52, column: 38, scope: !134)
!147 = !DILocation(line: 52, column: 32, scope: !134)
!148 = !DILocation(line: 52, column: 42, scope: !134)
!149 = !DILocation(line: 52, column: 3, scope: !134)
!150 = distinct !DISubprogram(name: "strbuf_setlen", scope: !3, file: !3, line: 55, type: !19, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!151 = !DILocalVariable(name: "sb", arg: 1, scope: !150, file: !3, line: 55, type: !21)
!152 = !DILocation(line: 55, column: 49, scope: !150)
!153 = !DILocalVariable(name: "len", arg: 2, scope: !150, file: !3, line: 55, type: !25)
!154 = !DILocation(line: 55, column: 60, scope: !150)
!155 = !DILocation(line: 56, column: 13, scope: !150)
!156 = !DILocation(line: 56, column: 3, scope: !150)
!157 = !DILocation(line: 56, column: 7, scope: !150)
!158 = !DILocation(line: 56, column: 11, scope: !150)
!159 = !DILocation(line: 57, column: 7, scope: !160)
!160 = distinct !DILexicalBlock(scope: !150, file: !3, line: 57, column: 7)
!161 = !DILocation(line: 57, column: 11, scope: !160)
!162 = !DILocation(line: 57, column: 15, scope: !160)
!163 = !DILocation(line: 57, column: 7, scope: !150)
!164 = !DILocation(line: 58, column: 5, scope: !160)
!165 = !DILocation(line: 58, column: 9, scope: !160)
!166 = !DILocation(line: 58, column: 13, scope: !160)
!167 = !DILocation(line: 58, column: 18, scope: !160)
!168 = !DILocation(line: 59, column: 1, scope: !150)
!169 = distinct !DISubprogram(name: "strbuf_addf", scope: !3, file: !3, line: 88, type: !170, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !21, !77, null}
!172 = !DILocalVariable(name: "sb", arg: 1, scope: !169, file: !3, line: 88, type: !21)
!173 = !DILocation(line: 88, column: 33, scope: !169)
!174 = !DILocalVariable(name: "fmt", arg: 2, scope: !169, file: !3, line: 88, type: !77)
!175 = !DILocation(line: 88, column: 49, scope: !169)
!176 = !DILocalVariable(name: "ap", scope: !169, file: !3, line: 89, type: !97)
!177 = !DILocation(line: 89, column: 11, scope: !169)
!178 = !DILocation(line: 90, column: 3, scope: !169)
!179 = !DILocation(line: 91, column: 16, scope: !169)
!180 = !DILocation(line: 91, column: 20, scope: !169)
!181 = !DILocation(line: 91, column: 25, scope: !169)
!182 = !DILocation(line: 91, column: 3, scope: !169)
!183 = !DILocation(line: 92, column: 3, scope: !169)
!184 = !DILocation(line: 93, column: 1, scope: !169)
!185 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 95, type: !186, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!186 = !DISubroutineType(types: !187)
!187 = !{!36, !36, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!189 = !DILocalVariable(name: "argc", arg: 1, scope: !185, file: !3, line: 95, type: !36)
!190 = !DILocation(line: 95, column: 14, scope: !185)
!191 = !DILocalVariable(name: "argv", arg: 2, scope: !185, file: !3, line: 95, type: !188)
!192 = !DILocation(line: 95, column: 33, scope: !185)
!193 = !DILocalVariable(name: "d", scope: !185, file: !3, line: 96, type: !22)
!194 = !DILocation(line: 96, column: 17, scope: !185)
!195 = !DILocation(line: 97, column: 3, scope: !185)
!196 = !DILocation(line: 98, column: 1, scope: !185)
