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

; Function Attrs: noinline nounwind uwtable
define dso_local void @strbuf_grow(%struct.strbuf* %sb, i64 %extra) #0 !dbg !16 {
entry:
  %sb.addr = alloca %struct.strbuf*, align 8
  %extra.addr = alloca i64, align 8
  %new_buf = alloca i32, align 4
  store %struct.strbuf* %sb, %struct.strbuf** %sb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.strbuf** %sb.addr, metadata !29, metadata !DIExpression()), !dbg !30
  store i64 %extra, i64* %extra.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %extra.addr, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %new_buf, metadata !33, metadata !DIExpression()), !dbg !35
  %0 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !36
  %alloc = getelementptr inbounds %struct.strbuf, %struct.strbuf* %0, i32 0, i32 0, !dbg !37
  %1 = load i64, i64* %alloc, align 8, !dbg !37
  %tobool = icmp ne i64 %1, 0, !dbg !38
  %lnot = xor i1 %tobool, true, !dbg !38
  %lnot.ext = zext i1 %lnot to i32, !dbg !38
  store i32 %lnot.ext, i32* %new_buf, align 4, !dbg !35
  %2 = load i32, i32* %new_buf, align 4, !dbg !39
  %tobool1 = icmp ne i32 %2, 0, !dbg !39
  br i1 %tobool1, label %if.then, label %if.end, !dbg !41

if.then:                                          ; preds = %entry
  %3 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !42
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 2, !dbg !43
  store i8* null, i8** %buf, align 8, !dbg !44
  br label %if.end, !dbg !42

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !45

do.body:                                          ; preds = %if.end
  %4 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !46
  %len = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1, !dbg !46
  %5 = load i64, i64* %len, align 8, !dbg !46
  %6 = load i64, i64* %extra.addr, align 8, !dbg !46
  %add = add i64 %5, %6, !dbg !46
  %add2 = add i64 %add, 1, !dbg !46
  %7 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !46
  %alloc3 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0, !dbg !46
  %8 = load i64, i64* %alloc3, align 8, !dbg !46
  %cmp = icmp ugt i64 %add2, %8, !dbg !46
  br i1 %cmp, label %if.then4, label %if.end26, !dbg !49

if.then4:                                         ; preds = %do.body
  %9 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !50
  %alloc5 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0, !dbg !50
  %10 = load i64, i64* %alloc5, align 8, !dbg !50
  %add6 = add i64 %10, 16, !dbg !50
  %mul = mul i64 %add6, 3, !dbg !50
  %div = udiv i64 %mul, 2, !dbg !50
  %11 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !50
  %len7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1, !dbg !50
  %12 = load i64, i64* %len7, align 8, !dbg !50
  %13 = load i64, i64* %extra.addr, align 8, !dbg !50
  %add8 = add i64 %12, %13, !dbg !50
  %add9 = add i64 %add8, 1, !dbg !50
  %cmp10 = icmp ult i64 %div, %add9, !dbg !50
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !53

if.then11:                                        ; preds = %if.then4
  %14 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !50
  %len12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1, !dbg !50
  %15 = load i64, i64* %len12, align 8, !dbg !50
  %16 = load i64, i64* %extra.addr, align 8, !dbg !50
  %add13 = add i64 %15, %16, !dbg !50
  %add14 = add i64 %add13, 1, !dbg !50
  %17 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !50
  %alloc15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 0, !dbg !50
  store i64 %add14, i64* %alloc15, align 8, !dbg !50
  br label %if.end21, !dbg !50

if.else:                                          ; preds = %if.then4
  %18 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !50
  %alloc16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0, !dbg !50
  %19 = load i64, i64* %alloc16, align 8, !dbg !50
  %add17 = add i64 %19, 16, !dbg !50
  %mul18 = mul i64 %add17, 3, !dbg !50
  %div19 = udiv i64 %mul18, 2, !dbg !50
  %20 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !50
  %alloc20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0, !dbg !50
  store i64 %div19, i64* %alloc20, align 8, !dbg !50
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then11
  %21 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !53
  %buf22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 2, !dbg !53
  %22 = load i8*, i8** %buf22, align 8, !dbg !53
  %23 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !53
  %alloc23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0, !dbg !53
  %24 = load i64, i64* %alloc23, align 8, !dbg !53
  %call = call i64 @st_mult(i64 1, i64 %24), !dbg !53
  %call24 = call align 16 i8* @realloc(i8* %22, i64 %call) #5, !dbg !53
  %25 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !53
  %buf25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 2, !dbg !53
  store i8* %call24, i8** %buf25, align 8, !dbg !53
  br label %if.end26, !dbg !53

if.end26:                                         ; preds = %if.end21, %do.body
  br label %do.end, !dbg !49

do.end:                                           ; preds = %if.end26
  %26 = load i32, i32* %new_buf, align 4, !dbg !54
  %tobool27 = icmp ne i32 %26, 0, !dbg !54
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !56

if.then28:                                        ; preds = %do.end
  %27 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !57
  %buf29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %27, i32 0, i32 2, !dbg !58
  %28 = load i8*, i8** %buf29, align 8, !dbg !58
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0, !dbg !57
  store i8 0, i8* %arrayidx, align 1, !dbg !59
  br label %if.end30, !dbg !57

if.end30:                                         ; preds = %if.then28, %do.end
  ret void, !dbg !60
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @st_mult(i64 %a, i64 %b) #0 !dbg !61 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !64, metadata !DIExpression()), !dbg !65
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = load i64, i64* %a.addr, align 8, !dbg !68
  %1 = load i64, i64* %b.addr, align 8, !dbg !69
  %mul = mul i64 %0, %1, !dbg !70
  ret i64 %mul, !dbg !71
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @strbuf_vaddf(%struct.strbuf* %sb, i8* %fmt, %struct.__va_list_tag* %ap) #0 !dbg !72 {
entry:
  %sb.addr = alloca %struct.strbuf*, align 8
  %fmt.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %len = alloca i32, align 4
  %cp = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.strbuf* %sb, %struct.strbuf** %sb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.strbuf** %sb.addr, metadata !86, metadata !DIExpression()), !dbg !87
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !88, metadata !DIExpression()), !dbg !89
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %ap.addr, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %len, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %cp, metadata !94, metadata !DIExpression()), !dbg !101
  %0 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !102
  %call = call i64 @strbuf_avail(%struct.strbuf* %0), !dbg !104
  %tobool = icmp ne i64 %call, 0, !dbg !104
  br i1 %tobool, label %if.end, label %if.then, !dbg !105

if.then:                                          ; preds = %entry
  %1 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !106
  call void @strbuf_grow(%struct.strbuf* %1, i64 64), !dbg !107
  br label %if.end, !dbg !107

if.end:                                           ; preds = %if.then, %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %cp, i64 0, i64 0, !dbg !108
  %2 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8, !dbg !108
  %3 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !108
  %4 = bitcast %struct.__va_list_tag* %2 to i8*, !dbg !108
  call void @llvm.va_copy(i8* %3, i8* %4), !dbg !108
  %5 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !109
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 2, !dbg !110
  %6 = load i8*, i8** %buf, align 8, !dbg !110
  %7 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !111
  %len1 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1, !dbg !112
  %8 = load i64, i64* %len1, align 8, !dbg !112
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %8, !dbg !113
  %9 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !114
  %alloc = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0, !dbg !115
  %10 = load i64, i64* %alloc, align 8, !dbg !115
  %11 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !116
  %len2 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1, !dbg !117
  %12 = load i64, i64* %len2, align 8, !dbg !117
  %sub = sub i64 %10, %12, !dbg !118
  %13 = load i8*, i8** %fmt.addr, align 8, !dbg !119
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %cp, i64 0, i64 0, !dbg !120
  %call4 = call i32 @vsnprintf(i8* %add.ptr, i64 %sub, i8* %13, %struct.__va_list_tag* %arraydecay3) #5, !dbg !121
  store i32 %call4, i32* %len, align 4, !dbg !122
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %cp, i64 0, i64 0, !dbg !123
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*, !dbg !123
  call void @llvm.va_end(i8* %arraydecay56), !dbg !123
  %14 = load i32, i32* %len, align 4, !dbg !124
  %conv = sext i32 %14 to i64, !dbg !124
  %15 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !126
  %call7 = call i64 @strbuf_avail(%struct.strbuf* %15), !dbg !127
  %cmp = icmp ugt i64 %conv, %call7, !dbg !128
  br i1 %cmp, label %if.then9, label %if.end18, !dbg !129

if.then9:                                         ; preds = %if.end
  %16 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !130
  %17 = load i32, i32* %len, align 4, !dbg !132
  %conv10 = sext i32 %17 to i64, !dbg !132
  call void @strbuf_grow(%struct.strbuf* %16, i64 %conv10), !dbg !133
  %18 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !134
  %buf11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 2, !dbg !135
  %19 = load i8*, i8** %buf11, align 8, !dbg !135
  %20 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !136
  %len12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 1, !dbg !137
  %21 = load i64, i64* %len12, align 8, !dbg !137
  %add.ptr13 = getelementptr inbounds i8, i8* %19, i64 %21, !dbg !138
  %22 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !139
  %alloc14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 0, !dbg !140
  %23 = load i64, i64* %alloc14, align 8, !dbg !140
  %24 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !141
  %len15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 1, !dbg !142
  %25 = load i64, i64* %len15, align 8, !dbg !142
  %sub16 = sub i64 %23, %25, !dbg !143
  %26 = load i8*, i8** %fmt.addr, align 8, !dbg !144
  %27 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8, !dbg !145
  %call17 = call i32 @vsnprintf(i8* %add.ptr13, i64 %sub16, i8* %26, %struct.__va_list_tag* %27) #5, !dbg !146
  store i32 %call17, i32* %len, align 4, !dbg !147
  br label %if.end18, !dbg !148

if.end18:                                         ; preds = %if.then9, %if.end
  %28 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !149
  %29 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !150
  %len19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 1, !dbg !151
  %30 = load i64, i64* %len19, align 8, !dbg !151
  %31 = load i32, i32* %len, align 4, !dbg !152
  %conv20 = sext i32 %31 to i64, !dbg !152
  %add = add i64 %30, %conv20, !dbg !153
  call void @strbuf_setlen(%struct.strbuf* %28, i64 %add), !dbg !154
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @strbuf_avail(%struct.strbuf* %sb) #0 !dbg !156 {
entry:
  %sb.addr = alloca %struct.strbuf*, align 8
  store %struct.strbuf* %sb, %struct.strbuf** %sb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.strbuf** %sb.addr, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !163
  %alloc = getelementptr inbounds %struct.strbuf, %struct.strbuf* %0, i32 0, i32 0, !dbg !164
  %1 = load i64, i64* %alloc, align 8, !dbg !164
  %tobool = icmp ne i64 %1, 0, !dbg !163
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !163

cond.true:                                        ; preds = %entry
  %2 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !165
  %alloc1 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %2, i32 0, i32 0, !dbg !166
  %3 = load i64, i64* %alloc1, align 8, !dbg !166
  %4 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !167
  %len = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1, !dbg !168
  %5 = load i64, i64* %len, align 8, !dbg !168
  %sub = sub i64 %3, %5, !dbg !169
  %sub2 = sub i64 %sub, 1, !dbg !170
  br label %cond.end, !dbg !163

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !163

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub2, %cond.true ], [ 0, %cond.false ], !dbg !163
  ret i64 %cond, !dbg !171
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @strbuf_setlen(%struct.strbuf* %sb, i64 %len) #0 !dbg !172 {
entry:
  %sb.addr = alloca %struct.strbuf*, align 8
  %len.addr = alloca i64, align 8
  store %struct.strbuf* %sb, %struct.strbuf** %sb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.strbuf** %sb.addr, metadata !173, metadata !DIExpression()), !dbg !174
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load i64, i64* %len.addr, align 8, !dbg !177
  %1 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !178
  %len1 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 1, !dbg !179
  store i64 %0, i64* %len1, align 8, !dbg !180
  %2 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !181
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %2, i32 0, i32 2, !dbg !183
  %3 = load i8*, i8** %buf, align 8, !dbg !183
  %cmp = icmp ne i8* %3, getelementptr inbounds ([1 x i8], [1 x i8]* @strbuf_slopbuf, i64 0, i64 0), !dbg !184
  br i1 %cmp, label %if.then, label %if.end, !dbg !185

if.then:                                          ; preds = %entry
  %4 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !186
  %buf2 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 2, !dbg !187
  %5 = load i8*, i8** %buf2, align 8, !dbg !187
  %6 = load i64, i64* %len.addr, align 8, !dbg !188
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !186
  store i8 0, i8* %arrayidx, align 1, !dbg !189
  br label %if.end, !dbg !186

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !190
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @strbuf_addf(%struct.strbuf* %sb, i8* %fmt, ...) #0 !dbg !191 {
entry:
  %sb.addr = alloca %struct.strbuf*, align 8
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.strbuf* %sb, %struct.strbuf** %sb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.strbuf** %sb.addr, metadata !194, metadata !DIExpression()), !dbg !195
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !198, metadata !DIExpression()), !dbg !199
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !200
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !200
  call void @llvm.va_start(i8* %arraydecay1), !dbg !200
  %0 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !201
  %1 = load i8*, i8** %fmt.addr, align 8, !dbg !202
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !203
  call void @strbuf_vaddf(%struct.strbuf* %0, i8* %1, %struct.__va_list_tag* %arraydecay2), !dbg !204
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !205
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !205
  call void @llvm.va_end(i8* %arraydecay34), !dbg !205
  ret void, !dbg !206
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !207 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %d = alloca %struct.strbuf, align 8
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !211, metadata !DIExpression()), !dbg !212
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata %struct.strbuf* %d, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = bitcast %struct.strbuf* %d to i8*, !dbg !216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.strbuf* @__const.main.d to i8*), i64 24, i1 false), !dbg !216
  call void (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %d, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !217
  ret i32 0, !dbg !218
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "strbuf_slopbuf", scope: !2, file: !3, line: 48, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git 8ac458cab1f2d84a892fc9eed882a493995170a3)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
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
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git 8ac458cab1f2d84a892fc9eed882a493995170a3)"}
!16 = distinct !DISubprogram(name: "strbuf_grow", scope: !3, file: !3, line: 63, type: !17, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !23}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf", file: !3, line: 42, size: 192, elements: !21)
!21 = !{!22, !26, !27}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !20, file: !3, line: 43, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 18, baseType: !25)
!24 = !DIFile(filename: "/nix/store/c6mlpw8bb0n9rc38hihmy0zzc1w81ljr-clang-wrapper-18.1.8/resource-root/include/__stddef_size_t.h", directory: "")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !20, file: !3, line: 44, baseType: !23, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !20, file: !3, line: 45, baseType: !28, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!29 = !DILocalVariable(name: "sb", arg: 1, scope: !16, file: !3, line: 63, type: !19)
!30 = !DILocation(line: 63, column: 33, scope: !16)
!31 = !DILocalVariable(name: "extra", arg: 2, scope: !16, file: !3, line: 63, type: !23)
!32 = !DILocation(line: 63, column: 44, scope: !16)
!33 = !DILocalVariable(name: "new_buf", scope: !16, file: !3, line: 64, type: !34)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DILocation(line: 64, column: 7, scope: !16)
!36 = !DILocation(line: 64, column: 18, scope: !16)
!37 = !DILocation(line: 64, column: 22, scope: !16)
!38 = !DILocation(line: 64, column: 17, scope: !16)
!39 = !DILocation(line: 65, column: 7, scope: !40)
!40 = distinct !DILexicalBlock(scope: !16, file: !3, line: 65, column: 7)
!41 = !DILocation(line: 65, column: 7, scope: !16)
!42 = !DILocation(line: 66, column: 5, scope: !40)
!43 = !DILocation(line: 66, column: 9, scope: !40)
!44 = !DILocation(line: 66, column: 13, scope: !40)
!45 = !DILocation(line: 67, column: 3, scope: !16)
!46 = !DILocation(line: 67, column: 3, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !3, line: 67, column: 3)
!48 = distinct !DILexicalBlock(scope: !16, file: !3, line: 67, column: 3)
!49 = !DILocation(line: 67, column: 3, scope: !48)
!50 = !DILocation(line: 67, column: 3, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !3, line: 67, column: 3)
!52 = distinct !DILexicalBlock(scope: !47, file: !3, line: 67, column: 3)
!53 = !DILocation(line: 67, column: 3, scope: !52)
!54 = !DILocation(line: 68, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !16, file: !3, line: 68, column: 7)
!56 = !DILocation(line: 68, column: 7, scope: !16)
!57 = !DILocation(line: 69, column: 5, scope: !55)
!58 = !DILocation(line: 69, column: 9, scope: !55)
!59 = !DILocation(line: 69, column: 16, scope: !55)
!60 = !DILocation(line: 70, column: 1, scope: !16)
!61 = distinct !DISubprogram(name: "st_mult", scope: !3, file: !3, line: 20, type: !62, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{!23, !23, !23}
!64 = !DILocalVariable(name: "a", arg: 1, scope: !61, file: !3, line: 20, type: !23)
!65 = !DILocation(line: 20, column: 37, scope: !61)
!66 = !DILocalVariable(name: "b", arg: 2, scope: !61, file: !3, line: 20, type: !23)
!67 = !DILocation(line: 20, column: 47, scope: !61)
!68 = !DILocation(line: 20, column: 59, scope: !61)
!69 = !DILocation(line: 20, column: 63, scope: !61)
!70 = !DILocation(line: 20, column: 61, scope: !61)
!71 = !DILocation(line: 20, column: 52, scope: !61)
!72 = distinct !DISubprogram(name: "strbuf_vaddf", scope: !3, file: !3, line: 72, type: !73, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !19, !75, !77}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !79)
!79 = !{!80, !82, !83, !85}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !78, file: !3, line: 70, baseType: !81, size: 32)
!81 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !78, file: !3, line: 70, baseType: !81, size: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !78, file: !3, line: 70, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !78, file: !3, line: 70, baseType: !84, size: 64, offset: 128)
!86 = !DILocalVariable(name: "sb", arg: 1, scope: !72, file: !3, line: 72, type: !19)
!87 = !DILocation(line: 72, column: 34, scope: !72)
!88 = !DILocalVariable(name: "fmt", arg: 2, scope: !72, file: !3, line: 72, type: !75)
!89 = !DILocation(line: 72, column: 50, scope: !72)
!90 = !DILocalVariable(name: "ap", arg: 3, scope: !72, file: !3, line: 72, type: !77)
!91 = !DILocation(line: 72, column: 63, scope: !72)
!92 = !DILocalVariable(name: "len", scope: !72, file: !3, line: 73, type: !34)
!93 = !DILocation(line: 73, column: 7, scope: !72)
!94 = !DILocalVariable(name: "cp", scope: !72, file: !3, line: 74, type: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !96, line: 53, baseType: !97)
!96 = !DIFile(filename: "/nix/store/81awch8mhqanda1vy0c09bflgra4cxh0-glibc-2.40-66-dev/include/stdio.h", directory: "")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !98, line: 12, baseType: !99)
!98 = !DIFile(filename: "/nix/store/c6mlpw8bb0n9rc38hihmy0zzc1w81ljr-clang-wrapper-18.1.8/resource-root/include/__stdarg___gnuc_va_list.h", directory: "")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !100)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 192, elements: !8)
!101 = !DILocation(line: 74, column: 11, scope: !72)
!102 = !DILocation(line: 76, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !72, file: !3, line: 76, column: 7)
!104 = !DILocation(line: 76, column: 8, scope: !103)
!105 = !DILocation(line: 76, column: 7, scope: !72)
!106 = !DILocation(line: 77, column: 17, scope: !103)
!107 = !DILocation(line: 77, column: 5, scope: !103)
!108 = !DILocation(line: 78, column: 3, scope: !72)
!109 = !DILocation(line: 79, column: 19, scope: !72)
!110 = !DILocation(line: 79, column: 23, scope: !72)
!111 = !DILocation(line: 79, column: 29, scope: !72)
!112 = !DILocation(line: 79, column: 33, scope: !72)
!113 = !DILocation(line: 79, column: 27, scope: !72)
!114 = !DILocation(line: 79, column: 38, scope: !72)
!115 = !DILocation(line: 79, column: 42, scope: !72)
!116 = !DILocation(line: 79, column: 50, scope: !72)
!117 = !DILocation(line: 79, column: 54, scope: !72)
!118 = !DILocation(line: 79, column: 48, scope: !72)
!119 = !DILocation(line: 79, column: 59, scope: !72)
!120 = !DILocation(line: 79, column: 64, scope: !72)
!121 = !DILocation(line: 79, column: 9, scope: !72)
!122 = !DILocation(line: 79, column: 7, scope: !72)
!123 = !DILocation(line: 80, column: 3, scope: !72)
!124 = !DILocation(line: 81, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !72, file: !3, line: 81, column: 7)
!126 = !DILocation(line: 81, column: 26, scope: !125)
!127 = !DILocation(line: 81, column: 13, scope: !125)
!128 = !DILocation(line: 81, column: 11, scope: !125)
!129 = !DILocation(line: 81, column: 7, scope: !72)
!130 = !DILocation(line: 82, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !125, file: !3, line: 81, column: 31)
!132 = !DILocation(line: 82, column: 21, scope: !131)
!133 = !DILocation(line: 82, column: 5, scope: !131)
!134 = !DILocation(line: 83, column: 21, scope: !131)
!135 = !DILocation(line: 83, column: 25, scope: !131)
!136 = !DILocation(line: 83, column: 31, scope: !131)
!137 = !DILocation(line: 83, column: 35, scope: !131)
!138 = !DILocation(line: 83, column: 29, scope: !131)
!139 = !DILocation(line: 83, column: 40, scope: !131)
!140 = !DILocation(line: 83, column: 44, scope: !131)
!141 = !DILocation(line: 83, column: 52, scope: !131)
!142 = !DILocation(line: 83, column: 56, scope: !131)
!143 = !DILocation(line: 83, column: 50, scope: !131)
!144 = !DILocation(line: 83, column: 61, scope: !131)
!145 = !DILocation(line: 83, column: 66, scope: !131)
!146 = !DILocation(line: 83, column: 11, scope: !131)
!147 = !DILocation(line: 83, column: 9, scope: !131)
!148 = !DILocation(line: 84, column: 3, scope: !131)
!149 = !DILocation(line: 85, column: 17, scope: !72)
!150 = !DILocation(line: 85, column: 21, scope: !72)
!151 = !DILocation(line: 85, column: 25, scope: !72)
!152 = !DILocation(line: 85, column: 31, scope: !72)
!153 = !DILocation(line: 85, column: 29, scope: !72)
!154 = !DILocation(line: 85, column: 3, scope: !72)
!155 = !DILocation(line: 86, column: 1, scope: !72)
!156 = distinct !DISubprogram(name: "strbuf_avail", scope: !3, file: !3, line: 51, type: !157, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!157 = !DISubroutineType(types: !158)
!158 = !{!23, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!161 = !DILocalVariable(name: "sb", arg: 1, scope: !156, file: !3, line: 51, type: !159)
!162 = !DILocation(line: 51, column: 56, scope: !156)
!163 = !DILocation(line: 52, column: 10, scope: !156)
!164 = !DILocation(line: 52, column: 14, scope: !156)
!165 = !DILocation(line: 52, column: 22, scope: !156)
!166 = !DILocation(line: 52, column: 26, scope: !156)
!167 = !DILocation(line: 52, column: 34, scope: !156)
!168 = !DILocation(line: 52, column: 38, scope: !156)
!169 = !DILocation(line: 52, column: 32, scope: !156)
!170 = !DILocation(line: 52, column: 42, scope: !156)
!171 = !DILocation(line: 52, column: 3, scope: !156)
!172 = distinct !DISubprogram(name: "strbuf_setlen", scope: !3, file: !3, line: 55, type: !17, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!173 = !DILocalVariable(name: "sb", arg: 1, scope: !172, file: !3, line: 55, type: !19)
!174 = !DILocation(line: 55, column: 49, scope: !172)
!175 = !DILocalVariable(name: "len", arg: 2, scope: !172, file: !3, line: 55, type: !23)
!176 = !DILocation(line: 55, column: 60, scope: !172)
!177 = !DILocation(line: 56, column: 13, scope: !172)
!178 = !DILocation(line: 56, column: 3, scope: !172)
!179 = !DILocation(line: 56, column: 7, scope: !172)
!180 = !DILocation(line: 56, column: 11, scope: !172)
!181 = !DILocation(line: 57, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !172, file: !3, line: 57, column: 7)
!183 = !DILocation(line: 57, column: 11, scope: !182)
!184 = !DILocation(line: 57, column: 15, scope: !182)
!185 = !DILocation(line: 57, column: 7, scope: !172)
!186 = !DILocation(line: 58, column: 5, scope: !182)
!187 = !DILocation(line: 58, column: 9, scope: !182)
!188 = !DILocation(line: 58, column: 13, scope: !182)
!189 = !DILocation(line: 58, column: 18, scope: !182)
!190 = !DILocation(line: 59, column: 1, scope: !172)
!191 = distinct !DISubprogram(name: "strbuf_addf", scope: !3, file: !3, line: 88, type: !192, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !19, !75, null}
!194 = !DILocalVariable(name: "sb", arg: 1, scope: !191, file: !3, line: 88, type: !19)
!195 = !DILocation(line: 88, column: 33, scope: !191)
!196 = !DILocalVariable(name: "fmt", arg: 2, scope: !191, file: !3, line: 88, type: !75)
!197 = !DILocation(line: 88, column: 49, scope: !191)
!198 = !DILocalVariable(name: "ap", scope: !191, file: !3, line: 89, type: !95)
!199 = !DILocation(line: 89, column: 11, scope: !191)
!200 = !DILocation(line: 90, column: 3, scope: !191)
!201 = !DILocation(line: 91, column: 16, scope: !191)
!202 = !DILocation(line: 91, column: 20, scope: !191)
!203 = !DILocation(line: 91, column: 25, scope: !191)
!204 = !DILocation(line: 91, column: 3, scope: !191)
!205 = !DILocation(line: 92, column: 3, scope: !191)
!206 = !DILocation(line: 93, column: 1, scope: !191)
!207 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 95, type: !208, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!208 = !DISubroutineType(types: !209)
!209 = !{!34, !34, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!211 = !DILocalVariable(name: "argc", arg: 1, scope: !207, file: !3, line: 95, type: !34)
!212 = !DILocation(line: 95, column: 14, scope: !207)
!213 = !DILocalVariable(name: "argv", arg: 2, scope: !207, file: !3, line: 95, type: !210)
!214 = !DILocation(line: 95, column: 33, scope: !207)
!215 = !DILocalVariable(name: "d", scope: !207, file: !3, line: 96, type: !20)
!216 = !DILocation(line: 96, column: 17, scope: !207)
!217 = !DILocation(line: 97, column: 3, scope: !207)
!218 = !DILocation(line: 98, column: 1, scope: !207)
