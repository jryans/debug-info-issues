; ModuleID = '/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023613-70730-os0cv8.i1wh/example.ll'
source_filename = "/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023613-70730-zq61cy.18ivh/example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.git_hash_algo = type { i8*, i32, i64, i64, i64, %struct.object_id*, %struct.object_id*, %struct.object_id* }
%struct.object_id = type { [32 x i8], i32 }
%struct.hashfile = type { i32, i32, i32, %struct.progress*, i8*, i32, i32, i64, i8*, i8* }
%struct.progress = type opaque
%struct.write_commit_graph_context = type { %struct.repository*, %struct.object_directory*, i8*, %struct.packed_commit_list, i32, i32, i64, %struct.progress*, i32, i64, i8*, i32, i32, i8**, i8**, i8**, i32, %struct.commit_graph*, i8, %struct.topo_level_slab*, %struct.commit_graph_opts*, i64, %struct.bloom_filter_settings*, i32, i32, i32, i32 }
%struct.repository = type opaque
%struct.object_directory = type opaque
%struct.packed_commit_list = type { %struct.commit**, i64, i64 }
%struct.commit = type { %struct.object, i64, %struct.commit_list*, %struct.tree*, i32 }
%struct.object = type { i32, %struct.object_id }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.tree = type opaque
%struct.commit_graph = type opaque
%struct.topo_level_slab = type { i32, i32, i32, i32** }
%struct.commit_graph_opts = type opaque
%struct.bloom_filter_settings = type opaque

@.str = private unnamed_addr constant [26 x i8] c"unable to parse commit %s\00", align 1
@hash_algos = external constant [3 x %struct.git_hash_algo], align 16
@.str.1 = private unnamed_addr constant [32 x i8] c"missing parent %s for commit %s\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @write_graph_chunk_data(%struct.hashfile* noundef %f, i8* noundef %data) #0 !dbg !13 {
entry:
  %packedDate = alloca [2 x i32], align 4
  %pos = alloca i32, align 4
  %pos75 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.hashfile* %f, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i8* %data, metadata !47, metadata !DIExpression()), !dbg !46
  %0 = bitcast i8* %data to %struct.write_commit_graph_context*, !dbg !48
  call void @llvm.dbg.value(metadata %struct.write_commit_graph_context* %0, metadata !49, metadata !DIExpression()), !dbg !46
  %commits = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 3, !dbg !149
  %list1 = getelementptr inbounds %struct.packed_commit_list, %struct.packed_commit_list* %commits, i32 0, i32 0, !dbg !150
  %1 = load %struct.commit**, %struct.commit*** %list1, align 8, !dbg !150
  call void @llvm.dbg.value(metadata %struct.commit** %1, metadata !151, metadata !DIExpression()), !dbg !46
  %commits2 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 3, !dbg !152
  %list3 = getelementptr inbounds %struct.packed_commit_list, %struct.packed_commit_list* %commits2, i32 0, i32 0, !dbg !153
  %2 = load %struct.commit**, %struct.commit*** %list3, align 8, !dbg !153
  %commits4 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 3, !dbg !154
  %nr = getelementptr inbounds %struct.packed_commit_list, %struct.packed_commit_list* %commits4, i32 0, i32 1, !dbg !155
  %3 = load i64, i64* %nr, align 8, !dbg !155
  %add.ptr = getelementptr inbounds %struct.commit*, %struct.commit** %2, i64 %3, !dbg !156
  call void @llvm.dbg.value(metadata %struct.commit** %add.ptr, metadata !157, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 0, metadata !158, metadata !DIExpression()), !dbg !46
  br label %while.cond, !dbg !159

while.cond:                                       ; preds = %cond.end167, %entry
  %list.0 = phi %struct.commit** [ %1, %entry ], [ %incdec.ptr, %cond.end167 ], !dbg !46
  %num_extra_edges.0 = phi i32 [ 0, %entry ], [ %num_extra_edges.2, %cond.end167 ], !dbg !46
  call void @llvm.dbg.value(metadata i32 %num_extra_edges.0, metadata !158, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata %struct.commit** %list.0, metadata !151, metadata !DIExpression()), !dbg !46
  %cmp = icmp ult %struct.commit** %list.0, %add.ptr, !dbg !160
  br i1 %cmp, label %while.body, label %while.end, !dbg !159

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata [2 x i32]* %packedDate, metadata !161, metadata !DIExpression()), !dbg !166
  %progress = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 7, !dbg !167
  %4 = load %struct.progress*, %struct.progress** %progress, align 8, !dbg !167
  %progress_cnt = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 9, !dbg !168
  %5 = load i64, i64* %progress_cnt, align 8, !dbg !169
  %inc = add i64 %5, 1, !dbg !169
  store i64 %inc, i64* %progress_cnt, align 8, !dbg !169
  %call = call i32 (%struct.progress*, i64, ...) bitcast (i32 (...)* @display_progress to i32 (%struct.progress*, i64, ...)*)(%struct.progress* noundef %4, i64 noundef %inc), !dbg !170
  %r = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 0, !dbg !171
  %6 = load %struct.repository*, %struct.repository** %r, align 8, !dbg !171
  %7 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !173
  %call5 = call i32 (%struct.repository*, %struct.commit*, ...) bitcast (i32 (...)* @repo_parse_commit_no_graph to i32 (%struct.repository*, %struct.commit*, ...)*)(%struct.repository* noundef %6, %struct.commit* noundef %7), !dbg !174
  %tobool = icmp ne i32 %call5, 0, !dbg !174
  br i1 %tobool, label %if.then, label %if.end, !dbg !175

if.then:                                          ; preds = %while.body
  %call6 = call i32 (i8*, ...) bitcast (i32 (...)* @_ to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)), !dbg !176
  %8 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !177
  %object = getelementptr inbounds %struct.commit, %struct.commit* %8, i32 0, i32 0, !dbg !178
  %oid = getelementptr inbounds %struct.object, %struct.object* %object, i32 0, i32 1, !dbg !179
  %call7 = call i32 (%struct.object_id*, ...) bitcast (i32 (...)* @oid_to_hex to i32 (%struct.object_id*, ...)*)(%struct.object_id* noundef %oid), !dbg !180
  %call8 = call i32 (i32, i32, ...) bitcast (i32 (...)* @die to i32 (i32, i32, ...)*)(i32 noundef %call6, i32 noundef %call7), !dbg !181
  br label %if.end, !dbg !181

if.end:                                           ; preds = %if.then, %while.body
  %9 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !182
  %call9 = call i32 (%struct.commit*, ...) bitcast (i32 (...)* @get_commit_tree_oid to i32 (%struct.commit*, ...)*)(%struct.commit* noundef %9), !dbg !183
  %conv = sext i32 %call9 to i64, !dbg !183
  %10 = inttoptr i64 %conv to %struct.object_id*, !dbg !183
  call void @llvm.dbg.value(metadata %struct.object_id* %10, metadata !184, metadata !DIExpression()), !dbg !186
  %hash = getelementptr inbounds %struct.object_id, %struct.object_id* %10, i32 0, i32 0, !dbg !187
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %hash, i64 0, i64 0, !dbg !188
  %11 = load i64, i64* getelementptr inbounds ([3 x %struct.git_hash_algo], [3 x %struct.git_hash_algo]* @hash_algos, i64 0, i64 0, i32 2), align 16, !dbg !189
  %call10 = call i32 (%struct.hashfile*, i8*, i64, ...) bitcast (i32 (...)* @hashwrite to i32 (%struct.hashfile*, i8*, i64, ...)*)(%struct.hashfile* noundef %f, i8* noundef %arraydecay, i64 noundef %11), !dbg !190
  %12 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !191
  %parents = getelementptr inbounds %struct.commit, %struct.commit* %12, i32 0, i32 2, !dbg !192
  %13 = load %struct.commit_list*, %struct.commit_list** %parents, align 8, !dbg !192
  call void @llvm.dbg.value(metadata %struct.commit_list* %13, metadata !193, metadata !DIExpression()), !dbg !186
  %tobool11 = icmp ne %struct.commit_list* %13, null, !dbg !194
  br i1 %tobool11, label %if.else, label %if.then12, !dbg !196

if.then12:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1879048192, metadata !197, metadata !DIExpression()), !dbg !186
  br label %if.end46, !dbg !198

if.else:                                          ; preds = %if.end
  %item = getelementptr inbounds %struct.commit_list, %struct.commit_list* %13, i32 0, i32 0, !dbg !199
  %14 = load %struct.commit*, %struct.commit** %item, align 8, !dbg !199
  %object13 = getelementptr inbounds %struct.commit, %struct.commit* %14, i32 0, i32 0, !dbg !201
  %oid14 = getelementptr inbounds %struct.object, %struct.object* %object13, i32 0, i32 1, !dbg !202
  %commits15 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 3, !dbg !203
  %list16 = getelementptr inbounds %struct.packed_commit_list, %struct.packed_commit_list* %commits15, i32 0, i32 0, !dbg !204
  %15 = load %struct.commit**, %struct.commit*** %list16, align 8, !dbg !204
  %commits17 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 3, !dbg !205
  %nr18 = getelementptr inbounds %struct.packed_commit_list, %struct.packed_commit_list* %commits17, i32 0, i32 1, !dbg !206
  %16 = load i64, i64* %nr18, align 8, !dbg !206
  %call19 = call i32 (%struct.object_id*, %struct.commit**, i64, %struct.object_id* (i64, i8*)*, ...) bitcast (i32 (...)* @oid_pos to i32 (%struct.object_id*, %struct.commit**, i64, %struct.object_id* (i64, i8*)*, ...)*)(%struct.object_id* noundef %oid14, %struct.commit** noundef %15, i64 noundef %16, %struct.object_id* (i64, i8*)* noundef @commit_to_oid), !dbg !207
  call void @llvm.dbg.value(metadata i32 %call19, metadata !197, metadata !DIExpression()), !dbg !186
  %cmp20 = icmp sge i32 %call19, 0, !dbg !208
  br i1 %cmp20, label %if.then22, label %if.else23, !dbg !210

if.then22:                                        ; preds = %if.else
  %new_num_commits_in_base = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 16, !dbg !211
  %17 = load i32, i32* %new_num_commits_in_base, align 8, !dbg !211
  %add = add i32 %call19, %17, !dbg !212
  call void @llvm.dbg.value(metadata i32 %add, metadata !197, metadata !DIExpression()), !dbg !186
  br label %if.end33, !dbg !213

if.else23:                                        ; preds = %if.else
  %new_base_graph = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 17, !dbg !214
  %18 = load %struct.commit_graph*, %struct.commit_graph** %new_base_graph, align 8, !dbg !214
  %tobool24 = icmp ne %struct.commit_graph* %18, null, !dbg !216
  br i1 %tobool24, label %if.then25, label %if.end32, !dbg !217

if.then25:                                        ; preds = %if.else23
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !218, metadata !DIExpression()), !dbg !220
  %item26 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %13, i32 0, i32 0, !dbg !221
  %19 = load %struct.commit*, %struct.commit** %item26, align 8, !dbg !221
  %new_base_graph27 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 17, !dbg !223
  %20 = load %struct.commit_graph*, %struct.commit_graph** %new_base_graph27, align 8, !dbg !223
  %call28 = call i32 (%struct.commit*, %struct.commit_graph*, i32*, ...) bitcast (i32 (...)* @find_commit_pos_in_graph to i32 (%struct.commit*, %struct.commit_graph*, i32*, ...)*)(%struct.commit* noundef %19, %struct.commit_graph* noundef %20, i32* noundef %pos), !dbg !224
  %tobool29 = icmp ne i32 %call28, 0, !dbg !224
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !225

if.then30:                                        ; preds = %if.then25
  %21 = load i32, i32* %pos, align 4, !dbg !226
  call void @llvm.dbg.value(metadata i32 %21, metadata !197, metadata !DIExpression()), !dbg !186
  br label %if.end31, !dbg !227

if.end31:                                         ; preds = %if.then30, %if.then25
  %edge_value.0 = phi i32 [ %21, %if.then30 ], [ %call19, %if.then25 ], !dbg !228
  call void @llvm.dbg.value(metadata i32 %edge_value.0, metadata !197, metadata !DIExpression()), !dbg !186
  br label %if.end32, !dbg !229

if.end32:                                         ; preds = %if.end31, %if.else23
  %edge_value.1 = phi i32 [ %edge_value.0, %if.end31 ], [ %call19, %if.else23 ], !dbg !228
  call void @llvm.dbg.value(metadata i32 %edge_value.1, metadata !197, metadata !DIExpression()), !dbg !186
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then22
  %edge_value.2 = phi i32 [ %add, %if.then22 ], [ %edge_value.1, %if.end32 ], !dbg !230
  call void @llvm.dbg.value(metadata i32 %edge_value.2, metadata !197, metadata !DIExpression()), !dbg !186
  %cmp34 = icmp slt i32 %edge_value.2, 0, !dbg !231
  br i1 %cmp34, label %if.then36, label %if.end45, !dbg !233

if.then36:                                        ; preds = %if.end33
  %item37 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %13, i32 0, i32 0, !dbg !234
  %22 = load %struct.commit*, %struct.commit** %item37, align 8, !dbg !234
  %object38 = getelementptr inbounds %struct.commit, %struct.commit* %22, i32 0, i32 0, !dbg !235
  %oid39 = getelementptr inbounds %struct.object, %struct.object* %object38, i32 0, i32 1, !dbg !236
  %call40 = call i32 (%struct.object_id*, ...) bitcast (i32 (...)* @oid_to_hex to i32 (%struct.object_id*, ...)*)(%struct.object_id* noundef %oid39), !dbg !237
  %23 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !238
  %object41 = getelementptr inbounds %struct.commit, %struct.commit* %23, i32 0, i32 0, !dbg !239
  %oid42 = getelementptr inbounds %struct.object, %struct.object* %object41, i32 0, i32 1, !dbg !240
  %call43 = call i32 (%struct.object_id*, ...) bitcast (i32 (...)* @oid_to_hex to i32 (%struct.object_id*, ...)*)(%struct.object_id* noundef %oid42), !dbg !241
  %call44 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @BUG to i32 (i8*, i32, i32, ...)*)(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 noundef %call40, i32 noundef %call43), !dbg !242
  br label %if.end45, !dbg !242

if.end45:                                         ; preds = %if.then36, %if.end33
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then12
  %edge_value.3 = phi i32 [ %edge_value.2, %if.end45 ], [ 1879048192, %if.then12 ], !dbg !243
  call void @llvm.dbg.value(metadata i32 %edge_value.3, metadata !197, metadata !DIExpression()), !dbg !186
  %call47 = call i32 (%struct.hashfile*, i32, ...) bitcast (i32 (...)* @hashwrite_be32 to i32 (%struct.hashfile*, i32, ...)*)(%struct.hashfile* noundef %f, i32 noundef %edge_value.3), !dbg !244
  %tobool48 = icmp ne %struct.commit_list* %13, null, !dbg !245
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !247

if.then49:                                        ; preds = %if.end46
  %next = getelementptr inbounds %struct.commit_list, %struct.commit_list* %13, i32 0, i32 1, !dbg !248
  %24 = load %struct.commit_list*, %struct.commit_list** %next, align 8, !dbg !248
  call void @llvm.dbg.value(metadata %struct.commit_list* %24, metadata !193, metadata !DIExpression()), !dbg !186
  br label %if.end50, !dbg !249

if.end50:                                         ; preds = %if.then49, %if.end46
  %parent.0 = phi %struct.commit_list* [ %24, %if.then49 ], [ %13, %if.end46 ], !dbg !186
  call void @llvm.dbg.value(metadata %struct.commit_list* %parent.0, metadata !193, metadata !DIExpression()), !dbg !186
  %tobool51 = icmp ne %struct.commit_list* %parent.0, null, !dbg !250
  br i1 %tobool51, label %if.else53, label %if.then52, !dbg !252

if.then52:                                        ; preds = %if.end50
  call void @llvm.dbg.value(metadata i32 1879048192, metadata !197, metadata !DIExpression()), !dbg !186
  br label %if.end97, !dbg !253

if.else53:                                        ; preds = %if.end50
  %next54 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %parent.0, i32 0, i32 1, !dbg !254
  %25 = load %struct.commit_list*, %struct.commit_list** %next54, align 8, !dbg !254
  %tobool55 = icmp ne %struct.commit_list* %25, null, !dbg !256
  br i1 %tobool55, label %if.then56, label %if.else57, !dbg !257

if.then56:                                        ; preds = %if.else53
  %or = or i32 -2147483648, %num_extra_edges.0, !dbg !258
  call void @llvm.dbg.value(metadata i32 %or, metadata !197, metadata !DIExpression()), !dbg !186
  br label %if.end96, !dbg !259

if.else57:                                        ; preds = %if.else53
  %item58 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %parent.0, i32 0, i32 0, !dbg !260
  %26 = load %struct.commit*, %struct.commit** %item58, align 8, !dbg !260
  %object59 = getelementptr inbounds %struct.commit, %struct.commit* %26, i32 0, i32 0, !dbg !262
  %oid60 = getelementptr inbounds %struct.object, %struct.object* %object59, i32 0, i32 1, !dbg !263
  %commits61 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 3, !dbg !264
  %list62 = getelementptr inbounds %struct.packed_commit_list, %struct.packed_commit_list* %commits61, i32 0, i32 0, !dbg !265
  %27 = load %struct.commit**, %struct.commit*** %list62, align 8, !dbg !265
  %commits63 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 3, !dbg !266
  %nr64 = getelementptr inbounds %struct.packed_commit_list, %struct.packed_commit_list* %commits63, i32 0, i32 1, !dbg !267
  %28 = load i64, i64* %nr64, align 8, !dbg !267
  %call65 = call i32 (%struct.object_id*, %struct.commit**, i64, %struct.object_id* (i64, i8*)*, ...) bitcast (i32 (...)* @oid_pos to i32 (%struct.object_id*, %struct.commit**, i64, %struct.object_id* (i64, i8*)*, ...)*)(%struct.object_id* noundef %oid60, %struct.commit** noundef %27, i64 noundef %28, %struct.object_id* (i64, i8*)* noundef @commit_to_oid), !dbg !268
  call void @llvm.dbg.value(metadata i32 %call65, metadata !197, metadata !DIExpression()), !dbg !186
  %cmp66 = icmp sge i32 %call65, 0, !dbg !269
  br i1 %cmp66, label %if.then68, label %if.else71, !dbg !271

if.then68:                                        ; preds = %if.else57
  %new_num_commits_in_base69 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 16, !dbg !272
  %29 = load i32, i32* %new_num_commits_in_base69, align 8, !dbg !272
  %add70 = add i32 %call65, %29, !dbg !273
  call void @llvm.dbg.value(metadata i32 %add70, metadata !197, metadata !DIExpression()), !dbg !186
  br label %if.end83, !dbg !274

if.else71:                                        ; preds = %if.else57
  %new_base_graph72 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 17, !dbg !275
  %30 = load %struct.commit_graph*, %struct.commit_graph** %new_base_graph72, align 8, !dbg !275
  %tobool73 = icmp ne %struct.commit_graph* %30, null, !dbg !277
  br i1 %tobool73, label %if.then74, label %if.end82, !dbg !278

if.then74:                                        ; preds = %if.else71
  call void @llvm.dbg.declare(metadata i32* %pos75, metadata !279, metadata !DIExpression()), !dbg !281
  %item76 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %parent.0, i32 0, i32 0, !dbg !282
  %31 = load %struct.commit*, %struct.commit** %item76, align 8, !dbg !282
  %new_base_graph77 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 17, !dbg !284
  %32 = load %struct.commit_graph*, %struct.commit_graph** %new_base_graph77, align 8, !dbg !284
  %call78 = call i32 (%struct.commit*, %struct.commit_graph*, i32*, ...) bitcast (i32 (...)* @find_commit_pos_in_graph to i32 (%struct.commit*, %struct.commit_graph*, i32*, ...)*)(%struct.commit* noundef %31, %struct.commit_graph* noundef %32, i32* noundef %pos75), !dbg !285
  %tobool79 = icmp ne i32 %call78, 0, !dbg !285
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !286

if.then80:                                        ; preds = %if.then74
  %33 = load i32, i32* %pos75, align 4, !dbg !287
  call void @llvm.dbg.value(metadata i32 %33, metadata !197, metadata !DIExpression()), !dbg !186
  br label %if.end81, !dbg !288

if.end81:                                         ; preds = %if.then80, %if.then74
  %edge_value.4 = phi i32 [ %33, %if.then80 ], [ %call65, %if.then74 ], !dbg !289
  call void @llvm.dbg.value(metadata i32 %edge_value.4, metadata !197, metadata !DIExpression()), !dbg !186
  br label %if.end82, !dbg !290

if.end82:                                         ; preds = %if.end81, %if.else71
  %edge_value.5 = phi i32 [ %edge_value.4, %if.end81 ], [ %call65, %if.else71 ], !dbg !289
  call void @llvm.dbg.value(metadata i32 %edge_value.5, metadata !197, metadata !DIExpression()), !dbg !186
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then68
  %edge_value.6 = phi i32 [ %add70, %if.then68 ], [ %edge_value.5, %if.end82 ], !dbg !291
  call void @llvm.dbg.value(metadata i32 %edge_value.6, metadata !197, metadata !DIExpression()), !dbg !186
  %cmp84 = icmp slt i32 %edge_value.6, 0, !dbg !292
  br i1 %cmp84, label %if.then86, label %if.end95, !dbg !294

if.then86:                                        ; preds = %if.end83
  %item87 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %parent.0, i32 0, i32 0, !dbg !295
  %34 = load %struct.commit*, %struct.commit** %item87, align 8, !dbg !295
  %object88 = getelementptr inbounds %struct.commit, %struct.commit* %34, i32 0, i32 0, !dbg !296
  %oid89 = getelementptr inbounds %struct.object, %struct.object* %object88, i32 0, i32 1, !dbg !297
  %call90 = call i32 (%struct.object_id*, ...) bitcast (i32 (...)* @oid_to_hex to i32 (%struct.object_id*, ...)*)(%struct.object_id* noundef %oid89), !dbg !298
  %35 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !299
  %object91 = getelementptr inbounds %struct.commit, %struct.commit* %35, i32 0, i32 0, !dbg !300
  %oid92 = getelementptr inbounds %struct.object, %struct.object* %object91, i32 0, i32 1, !dbg !301
  %call93 = call i32 (%struct.object_id*, ...) bitcast (i32 (...)* @oid_to_hex to i32 (%struct.object_id*, ...)*)(%struct.object_id* noundef %oid92), !dbg !302
  %call94 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @BUG to i32 (i8*, i32, i32, ...)*)(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 noundef %call90, i32 noundef %call93), !dbg !303
  br label %if.end95, !dbg !303

if.end95:                                         ; preds = %if.then86, %if.end83
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then56
  %edge_value.7 = phi i32 [ %or, %if.then56 ], [ %edge_value.6, %if.end95 ], !dbg !304
  call void @llvm.dbg.value(metadata i32 %edge_value.7, metadata !197, metadata !DIExpression()), !dbg !186
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then52
  %edge_value.8 = phi i32 [ %edge_value.7, %if.end96 ], [ 1879048192, %if.then52 ], !dbg !305
  call void @llvm.dbg.value(metadata i32 %edge_value.8, metadata !197, metadata !DIExpression()), !dbg !186
  %call98 = call i32 (%struct.hashfile*, i32, ...) bitcast (i32 (...)* @hashwrite_be32 to i32 (%struct.hashfile*, i32, ...)*)(%struct.hashfile* noundef %f, i32 noundef %edge_value.8), !dbg !306
  %and = and i32 %edge_value.8, -2147483648, !dbg !307
  %tobool99 = icmp ne i32 %and, 0, !dbg !307
  br i1 %tobool99, label %if.then100, label %if.end104, !dbg !309

if.then100:                                       ; preds = %if.end97
  br label %do.body, !dbg !310

do.body:                                          ; preds = %do.cond, %if.then100
  %num_extra_edges.1 = phi i32 [ %num_extra_edges.0, %if.then100 ], [ %inc101, %do.cond ], !dbg !46
  %parent.1 = phi %struct.commit_list* [ %parent.0, %if.then100 ], [ %36, %do.cond ], !dbg !186
  call void @llvm.dbg.value(metadata %struct.commit_list* %parent.1, metadata !193, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %num_extra_edges.1, metadata !158, metadata !DIExpression()), !dbg !46
  %inc101 = add i32 %num_extra_edges.1, 1, !dbg !312
  call void @llvm.dbg.value(metadata i32 %inc101, metadata !158, metadata !DIExpression()), !dbg !46
  %next102 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %parent.1, i32 0, i32 1, !dbg !314
  %36 = load %struct.commit_list*, %struct.commit_list** %next102, align 8, !dbg !314
  call void @llvm.dbg.value(metadata %struct.commit_list* %36, metadata !193, metadata !DIExpression()), !dbg !186
  br label %do.cond, !dbg !315

do.cond:                                          ; preds = %do.body
  %tobool103 = icmp ne %struct.commit_list* %36, null, !dbg !315
  br i1 %tobool103, label %do.body, label %do.end, !dbg !315, !llvm.loop !316

do.end:                                           ; preds = %do.cond
  br label %if.end104, !dbg !319

if.end104:                                        ; preds = %do.end, %if.end97
  %num_extra_edges.2 = phi i32 [ %inc101, %do.end ], [ %num_extra_edges.0, %if.end97 ], !dbg !46
  call void @llvm.dbg.value(metadata i32 %num_extra_edges.2, metadata !158, metadata !DIExpression()), !dbg !46
  %37 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !320
  %date = getelementptr inbounds %struct.commit, %struct.commit* %37, i32 0, i32 1, !dbg !320
  %38 = load i64, i64* %date, align 8, !dbg !320
  %shr = lshr i64 %38, 32, !dbg !320
  %and105 = and i64 %shr, 3, !dbg !320
  %39 = call i1 @llvm.is.constant.i64(i64 %and105), !dbg !320
  br i1 %39, label %cond.true, label %cond.false, !dbg !320

cond.true:                                        ; preds = %if.end104
  %40 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !320
  %date106 = getelementptr inbounds %struct.commit, %struct.commit* %40, i32 0, i32 1, !dbg !320
  %41 = load i64, i64* %date106, align 8, !dbg !320
  %shr107 = lshr i64 %41, 32, !dbg !320
  %and108 = and i64 %shr107, 3, !dbg !320
  %conv109 = trunc i64 %and108 to i32, !dbg !320
  %and110 = and i32 %conv109, -16777216, !dbg !320
  %shr111 = lshr i32 %and110, 24, !dbg !320
  %42 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !320
  %date112 = getelementptr inbounds %struct.commit, %struct.commit* %42, i32 0, i32 1, !dbg !320
  %43 = load i64, i64* %date112, align 8, !dbg !320
  %shr113 = lshr i64 %43, 32, !dbg !320
  %and114 = and i64 %shr113, 3, !dbg !320
  %conv115 = trunc i64 %and114 to i32, !dbg !320
  %and116 = and i32 %conv115, 16711680, !dbg !320
  %shr117 = lshr i32 %and116, 8, !dbg !320
  %or118 = or i32 %shr111, %shr117, !dbg !320
  %44 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !320
  %date119 = getelementptr inbounds %struct.commit, %struct.commit* %44, i32 0, i32 1, !dbg !320
  %45 = load i64, i64* %date119, align 8, !dbg !320
  %shr120 = lshr i64 %45, 32, !dbg !320
  %and121 = and i64 %shr120, 3, !dbg !320
  %conv122 = trunc i64 %and121 to i32, !dbg !320
  %and123 = and i32 %conv122, 65280, !dbg !320
  %shl = shl i32 %and123, 8, !dbg !320
  %or124 = or i32 %or118, %shl, !dbg !320
  %46 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !320
  %date125 = getelementptr inbounds %struct.commit, %struct.commit* %46, i32 0, i32 1, !dbg !320
  %47 = load i64, i64* %date125, align 8, !dbg !320
  %shr126 = lshr i64 %47, 32, !dbg !320
  %and127 = and i64 %shr126, 3, !dbg !320
  %conv128 = trunc i64 %and127 to i32, !dbg !320
  %and129 = and i32 %conv128, 255, !dbg !320
  %shl130 = shl i32 %and129, 24, !dbg !320
  %or131 = or i32 %or124, %shl130, !dbg !320
  br label %cond.end, !dbg !320

cond.false:                                       ; preds = %if.end104
  %48 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !320
  %date132 = getelementptr inbounds %struct.commit, %struct.commit* %48, i32 0, i32 1, !dbg !320
  %49 = load i64, i64* %date132, align 8, !dbg !320
  %shr133 = lshr i64 %49, 32, !dbg !320
  %and134 = and i64 %shr133, 3, !dbg !320
  %conv135 = trunc i64 %and134 to i32, !dbg !320
  %call136 = call i32 @_OSSwapInt32(i32 noundef %conv135), !dbg !320
  br label %cond.end, !dbg !320

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or131, %cond.true ], [ %call136, %cond.false ], !dbg !320
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %packedDate, i64 0, i64 0, !dbg !322
  store i32 %cond, i32* %arrayidx, align 4, !dbg !323
  %topo_levels = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %0, i32 0, i32 19, !dbg !324
  %50 = load %struct.topo_level_slab*, %struct.topo_level_slab** %topo_levels, align 8, !dbg !324
  %51 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !324
  %call137 = call i32* @topo_level_slab_at(%struct.topo_level_slab* noundef %50, %struct.commit* noundef %51), !dbg !324
  %52 = load i32, i32* %call137, align 4, !dbg !324
  %shl138 = shl i32 %52, 2, !dbg !324
  %call139 = call i32 @_OSSwapInt32(i32 noundef %shl138), !dbg !324
  %arrayidx140 = getelementptr inbounds [2 x i32], [2 x i32]* %packedDate, i64 0, i64 0, !dbg !325
  %53 = load i32, i32* %arrayidx140, align 4, !dbg !326
  %or141 = or i32 %53, %call139, !dbg !326
  store i32 %or141, i32* %arrayidx140, align 4, !dbg !326
  %54 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !327
  %date142 = getelementptr inbounds %struct.commit, %struct.commit* %54, i32 0, i32 1, !dbg !327
  %55 = load i64, i64* %date142, align 8, !dbg !327
  %56 = call i1 @llvm.is.constant.i64(i64 %55), !dbg !327
  br i1 %56, label %cond.true143, label %cond.false163, !dbg !327

cond.true143:                                     ; preds = %cond.end
  %57 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !327
  %date144 = getelementptr inbounds %struct.commit, %struct.commit* %57, i32 0, i32 1, !dbg !327
  %58 = load i64, i64* %date144, align 8, !dbg !327
  %conv145 = trunc i64 %58 to i32, !dbg !327
  %and146 = and i32 %conv145, -16777216, !dbg !327
  %shr147 = lshr i32 %and146, 24, !dbg !327
  %59 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !327
  %date148 = getelementptr inbounds %struct.commit, %struct.commit* %59, i32 0, i32 1, !dbg !327
  %60 = load i64, i64* %date148, align 8, !dbg !327
  %conv149 = trunc i64 %60 to i32, !dbg !327
  %and150 = and i32 %conv149, 16711680, !dbg !327
  %shr151 = lshr i32 %and150, 8, !dbg !327
  %or152 = or i32 %shr147, %shr151, !dbg !327
  %61 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !327
  %date153 = getelementptr inbounds %struct.commit, %struct.commit* %61, i32 0, i32 1, !dbg !327
  %62 = load i64, i64* %date153, align 8, !dbg !327
  %conv154 = trunc i64 %62 to i32, !dbg !327
  %and155 = and i32 %conv154, 65280, !dbg !327
  %shl156 = shl i32 %and155, 8, !dbg !327
  %or157 = or i32 %or152, %shl156, !dbg !327
  %63 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !327
  %date158 = getelementptr inbounds %struct.commit, %struct.commit* %63, i32 0, i32 1, !dbg !327
  %64 = load i64, i64* %date158, align 8, !dbg !327
  %conv159 = trunc i64 %64 to i32, !dbg !327
  %and160 = and i32 %conv159, 255, !dbg !327
  %shl161 = shl i32 %and160, 24, !dbg !327
  %or162 = or i32 %or157, %shl161, !dbg !327
  br label %cond.end167, !dbg !327

cond.false163:                                    ; preds = %cond.end
  %65 = load %struct.commit*, %struct.commit** %list.0, align 8, !dbg !327
  %date164 = getelementptr inbounds %struct.commit, %struct.commit* %65, i32 0, i32 1, !dbg !327
  %66 = load i64, i64* %date164, align 8, !dbg !327
  %conv165 = trunc i64 %66 to i32, !dbg !327
  %call166 = call i32 @_OSSwapInt32(i32 noundef %conv165), !dbg !327
  br label %cond.end167, !dbg !327

cond.end167:                                      ; preds = %cond.false163, %cond.true143
  %cond168 = phi i32 [ %or162, %cond.true143 ], [ %call166, %cond.false163 ], !dbg !327
  %arrayidx169 = getelementptr inbounds [2 x i32], [2 x i32]* %packedDate, i64 0, i64 1, !dbg !328
  store i32 %cond168, i32* %arrayidx169, align 4, !dbg !329
  %arraydecay170 = getelementptr inbounds [2 x i32], [2 x i32]* %packedDate, i64 0, i64 0, !dbg !330
  %call171 = call i32 (%struct.hashfile*, i32*, i32, ...) bitcast (i32 (...)* @hashwrite to i32 (%struct.hashfile*, i32*, i32, ...)*)(%struct.hashfile* noundef %f, i32* noundef %arraydecay170, i32 noundef 8), !dbg !331
  %incdec.ptr = getelementptr inbounds %struct.commit*, %struct.commit** %list.0, i32 1, !dbg !332
  call void @llvm.dbg.value(metadata %struct.commit** %incdec.ptr, metadata !151, metadata !DIExpression()), !dbg !46
  br label %while.cond, !dbg !159, !llvm.loop !333

while.end:                                        ; preds = %while.cond
  ret i32 0, !dbg !335
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @display_progress(...) #2

declare i32 @repo_parse_commit_no_graph(...) #2

declare i32 @die(...) #2

declare i32 @_(...) #2

declare i32 @oid_to_hex(...) #2

declare i32 @get_commit_tree_oid(...) #2

declare i32 @hashwrite(...) #2

declare i32 @oid_pos(...) #2

declare %struct.object_id* @commit_to_oid(i64 noundef, i8* noundef) #2

declare i32 @find_commit_pos_in_graph(...) #2

declare i32 @BUG(...) #2

declare i32 @hashwrite_be32(...) #2

; Function Attrs: convergent nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @_OSSwapInt32(i32 noundef %_data) #0 !dbg !336 {
entry:
  call void @llvm.dbg.value(metadata i32 %_data, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = call i32 @llvm.bswap.i32(i32 %_data), !dbg !342
  ret i32 %0, !dbg !343
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32* @topo_level_slab_at(%struct.topo_level_slab* noundef %s, %struct.commit* noundef %c) #0 !dbg !344 {
entry:
  call void @llvm.dbg.value(metadata %struct.topo_level_slab* %s, metadata !349, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.value(metadata %struct.commit* %c, metadata !351, metadata !DIExpression()), !dbg !350
  %call = call i32* @topo_level_slab_at_peek(%struct.topo_level_slab* noundef %s, %struct.commit* noundef %c, i32 noundef 1), !dbg !352
  ret i32* %call, !dbg !352
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal i32* @topo_level_slab_at_peek(%struct.topo_level_slab* noundef %s, %struct.commit* noundef %c, i32 noundef %add_if_missing) #0 !dbg !353 {
entry:
  call void @llvm.dbg.value(metadata %struct.topo_level_slab* %s, metadata !356, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata %struct.commit* %c, metadata !358, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i32 %add_if_missing, metadata !359, metadata !DIExpression()), !dbg !357
  %index = getelementptr inbounds %struct.commit, %struct.commit* %c, i32 0, i32 4, !dbg !360
  %0 = load i32, i32* %index, align 8, !dbg !360
  %slab_size = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 0, !dbg !360
  %1 = load i32, i32* %slab_size, align 8, !dbg !360
  %div = udiv i32 %0, %1, !dbg !360
  call void @llvm.dbg.value(metadata i32 %div, metadata !361, metadata !DIExpression()), !dbg !357
  %index1 = getelementptr inbounds %struct.commit, %struct.commit* %c, i32 0, i32 4, !dbg !360
  %2 = load i32, i32* %index1, align 8, !dbg !360
  %slab_size2 = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 0, !dbg !360
  %3 = load i32, i32* %slab_size2, align 8, !dbg !360
  %rem = urem i32 %2, %3, !dbg !360
  call void @llvm.dbg.value(metadata i32 %rem, metadata !362, metadata !DIExpression()), !dbg !357
  %slab_count = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 2, !dbg !363
  %4 = load i32, i32* %slab_count, align 8, !dbg !363
  %cmp = icmp ule i32 %4, %div, !dbg !363
  br i1 %cmp, label %if.then, label %if.end12, !dbg !360

if.then:                                          ; preds = %entry
  %tobool = icmp ne i32 %add_if_missing, 0, !dbg !365
  br i1 %tobool, label %if.end, label %if.then3, !dbg !368

if.then3:                                         ; preds = %if.then
  br label %return, !dbg !365

if.end:                                           ; preds = %if.then
  %slab = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 3, !dbg !368
  %5 = load i32**, i32*** %slab, align 8, !dbg !368
  %6 = bitcast i32** %5 to i8*, !dbg !368
  %add = add i32 %div, 1, !dbg !368
  %conv = zext i32 %add to i64, !dbg !368
  %call = call i64 @st_mult(i64 noundef 8, i64 noundef %conv), !dbg !368
  %call4 = call i8* @realloc(i8* noundef %6, i64 noundef %call) #6, !dbg !368
  %7 = bitcast i8* %call4 to i32**, !dbg !368
  %slab5 = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 3, !dbg !368
  store i32** %7, i32*** %slab5, align 8, !dbg !368
  %slab_count6 = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 2, !dbg !369
  %8 = load i32, i32* %slab_count6, align 8, !dbg !369
  call void @llvm.dbg.value(metadata i32 %8, metadata !371, metadata !DIExpression()), !dbg !372
  br label %for.cond, !dbg !369

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ %8, %if.end ], [ %inc, %for.inc ], !dbg !373
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !371, metadata !DIExpression()), !dbg !372
  %cmp7 = icmp ule i32 %i.0, %div, !dbg !374
  br i1 %cmp7, label %for.body, label %for.end, !dbg !369

for.body:                                         ; preds = %for.cond
  %slab9 = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 3, !dbg !374
  %9 = load i32**, i32*** %slab9, align 8, !dbg !374
  %idxprom = zext i32 %i.0 to i64, !dbg !374
  %arrayidx = getelementptr inbounds i32*, i32** %9, i64 %idxprom, !dbg !374
  store i32* null, i32** %arrayidx, align 8, !dbg !374
  br label %for.inc, !dbg !374

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.0, 1, !dbg !374
  call void @llvm.dbg.value(metadata i32 %inc, metadata !371, metadata !DIExpression()), !dbg !372
  br label %for.cond, !dbg !374, !llvm.loop !376

for.end:                                          ; preds = %for.cond
  %add10 = add i32 %div, 1, !dbg !368
  %slab_count11 = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 2, !dbg !368
  store i32 %add10, i32* %slab_count11, align 8, !dbg !368
  br label %if.end12, !dbg !368

if.end12:                                         ; preds = %for.end, %entry
  %slab13 = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 3, !dbg !377
  %10 = load i32**, i32*** %slab13, align 8, !dbg !377
  %idxprom14 = zext i32 %div to i64, !dbg !377
  %arrayidx15 = getelementptr inbounds i32*, i32** %10, i64 %idxprom14, !dbg !377
  %11 = load i32*, i32** %arrayidx15, align 8, !dbg !377
  %tobool16 = icmp ne i32* %11, null, !dbg !377
  br i1 %tobool16, label %if.end28, label %if.then17, !dbg !360

if.then17:                                        ; preds = %if.end12
  %tobool18 = icmp ne i32 %add_if_missing, 0, !dbg !379
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !382

if.then19:                                        ; preds = %if.then17
  br label %return, !dbg !379

if.end20:                                         ; preds = %if.then17
  %slab_size21 = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 0, !dbg !382
  %12 = load i32, i32* %slab_size21, align 8, !dbg !382
  %conv22 = zext i32 %12 to i64, !dbg !382
  %stride = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 1, !dbg !382
  %13 = load i32, i32* %stride, align 4, !dbg !382
  %conv23 = zext i32 %13 to i64, !dbg !382
  %mul = mul i64 4, %conv23, !dbg !382
  %call24 = call i8* @calloc(i64 noundef %conv22, i64 noundef %mul) #7, !dbg !382
  %14 = bitcast i8* %call24 to i32*, !dbg !382
  %slab25 = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 3, !dbg !382
  %15 = load i32**, i32*** %slab25, align 8, !dbg !382
  %idxprom26 = zext i32 %div to i64, !dbg !382
  %arrayidx27 = getelementptr inbounds i32*, i32** %15, i64 %idxprom26, !dbg !382
  store i32* %14, i32** %arrayidx27, align 8, !dbg !382
  br label %if.end28, !dbg !382

if.end28:                                         ; preds = %if.end20, %if.end12
  %slab29 = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 3, !dbg !360
  %16 = load i32**, i32*** %slab29, align 8, !dbg !360
  %idxprom30 = zext i32 %div to i64, !dbg !360
  %arrayidx31 = getelementptr inbounds i32*, i32** %16, i64 %idxprom30, !dbg !360
  %17 = load i32*, i32** %arrayidx31, align 8, !dbg !360
  %stride32 = getelementptr inbounds %struct.topo_level_slab, %struct.topo_level_slab* %s, i32 0, i32 1, !dbg !360
  %18 = load i32, i32* %stride32, align 4, !dbg !360
  %mul33 = mul i32 %rem, %18, !dbg !360
  %idxprom34 = zext i32 %mul33 to i64, !dbg !360
  %arrayidx35 = getelementptr inbounds i32, i32* %17, i64 %idxprom34, !dbg !360
  br label %return, !dbg !360

return:                                           ; preds = %if.end28, %if.then19, %if.then3
  %retval.0 = phi i32* [ %arrayidx35, %if.end28 ], [ null, %if.then19 ], [ null, %if.then3 ], !dbg !357
  ret i32* %retval.0, !dbg !360
}

; Function Attrs: allocsize(1)
declare i8* @realloc(i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @st_mult(i64 noundef %a, i64 noundef %b) #0 !dbg !383 {
entry:
  call void @llvm.dbg.value(metadata i64 %a, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64 %b, metadata !388, metadata !DIExpression()), !dbg !387
  %mul = mul i64 %a, %b, !dbg !389
  ret i64 %mul, !dbg !390
}

; Function Attrs: allocsize(0,1)
declare i8* @calloc(i64 noundef, i64 noundef) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { convergent nofree nosync nounwind readnone willreturn }
attributes #4 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(1) }
attributes #7 = { allocsize(0,1) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (git@github.com:llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!1 = !DIFile(filename: "/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023613-70730-zq61cy.18ivh/example.c", directory: "/private/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023613-70730-zq61cy.18ivh")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !4, line: 47, baseType: !5)
!4 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h", directory: "")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 14.0.0 (git@github.com:llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!13 = distinct !DISubprogram(name: "write_graph_chunk_data", scope: !14, file: !14, line: 293, type: !15, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!14 = !DIFile(filename: "/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023613-70730-zq61cy.18ivh/example.c", directory: "")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !43}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashfile", file: !14, line: 24, size: 512, elements: !20)
!20 = !{!21, !22, !23, !24, !27, !31, !32, !35, !39, !42}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !19, file: !14, line: 25, baseType: !17, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "check_fd", scope: !19, file: !14, line: 26, baseType: !17, size: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !19, file: !14, line: 27, baseType: !5, size: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !19, file: !14, line: 30, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "progress", file: !14, line: 30, flags: DIFlagFwdDecl)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !19, file: !14, line: 31, baseType: !28, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "do_crc", scope: !19, file: !14, line: 32, baseType: !17, size: 32, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !19, file: !14, line: 33, baseType: !33, size: 32, offset: 288)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 31, baseType: !5)
!34 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!35 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_len", scope: !19, file: !14, line: 34, baseType: !36, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-14.0.0/lib/clang/14.0.0/include/stddef.h", directory: "")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !19, file: !14, line: 35, baseType: !40, size: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "check_buffer", scope: !19, file: !14, line: 36, baseType: !40, size: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !{}
!45 = !DILocalVariable(name: "f", arg: 1, scope: !13, file: !14, line: 293, type: !18)
!46 = !DILocation(line: 0, scope: !13)
!47 = !DILocalVariable(name: "data", arg: 2, scope: !13, file: !14, line: 294, type: !43)
!48 = !DILocation(line: 296, column: 43, scope: !13)
!49 = !DILocalVariable(name: "ctx", scope: !13, file: !14, line: 296, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "write_commit_graph_context", file: !14, line: 250, size: 1600, elements: !52)
!52 = !{!53, !56, !59, !61, !99, !100, !101, !102, !103, !104, !108, !109, !110, !111, !113, !114, !115, !116, !119, !120, !121, !122, !123, !124, !125, !126, !136, !140, !141, !145, !146, !147, !148}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !51, file: !14, line: 251, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "repository", file: !14, line: 251, flags: DIFlagFwdDecl)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "odb", scope: !51, file: !14, line: 252, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "object_directory", file: !14, line: 252, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "graph_name", scope: !51, file: !14, line: 253, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "commits", scope: !51, file: !14, line: 255, baseType: !62, size: 192, offset: 192)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "packed_commit_list", file: !14, line: 244, size: 192, elements: !63)
!63 = !{!64, !97, !98}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !62, file: !14, line: 245, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "commit", file: !14, line: 118, size: 576, elements: !68)
!68 = !{!69, !83, !87, !93, !96}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !67, file: !14, line: 119, baseType: !70, size: 320)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !14, line: 104, size: 320, elements: !71)
!71 = !{!72, !73, !74, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "parsed", scope: !70, file: !14, line: 105, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !14, line: 106, baseType: !5, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !14, line: 107, baseType: !5, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "oid", scope: !70, file: !14, line: 108, baseType: !76, size: 288, offset: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_id", file: !14, line: 50, size: 288, elements: !77)
!77 = !{!78, !82}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !76, file: !14, line: 51, baseType: !79, size: 256)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !76, file: !14, line: 52, baseType: !17, size: 32, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !67, file: !14, line: 120, baseType: !84, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "timestamp_t", file: !14, line: 7, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !86, line: 32, baseType: !38)
!86 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!87 = !DIDerivedType(tag: DW_TAG_member, name: "parents", scope: !67, file: !14, line: 121, baseType: !88, size: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "commit_list", file: !14, line: 113, size: 128, elements: !90)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !89, file: !14, line: 114, baseType: !66, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !14, line: 115, baseType: !88, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_tree", scope: !67, file: !14, line: 122, baseType: !94, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "tree", file: !14, line: 122, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !67, file: !14, line: 123, baseType: !5, size: 32, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !62, file: !14, line: 246, baseType: !36, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !62, file: !14, line: 247, baseType: !36, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "num_extra_edges", scope: !51, file: !14, line: 256, baseType: !17, size: 32, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "num_generation_data_overflows", scope: !51, file: !14, line: 257, baseType: !17, size: 32, offset: 416)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "approx_nr_objects", scope: !51, file: !14, line: 258, baseType: !38, size: 64, offset: 448)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !51, file: !14, line: 259, baseType: !25, size: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "progress_done", scope: !51, file: !14, line: 260, baseType: !17, size: 32, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "progress_cnt", scope: !51, file: !14, line: 261, baseType: !105, size: 64, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !106, line: 31, baseType: !107)
!106 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!107 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "base_graph_name", scope: !51, file: !14, line: 263, baseType: !60, size: 64, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "num_commit_graphs_before", scope: !51, file: !14, line: 264, baseType: !17, size: 32, offset: 768)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "num_commit_graphs_after", scope: !51, file: !14, line: 265, baseType: !17, size: 32, offset: 800)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "commit_graph_filenames_before", scope: !51, file: !14, line: 266, baseType: !112, size: 64, offset: 832)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "commit_graph_filenames_after", scope: !51, file: !14, line: 267, baseType: !112, size: 64, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "commit_graph_hash_after", scope: !51, file: !14, line: 268, baseType: !112, size: 64, offset: 960)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "new_num_commits_in_base", scope: !51, file: !14, line: 269, baseType: !33, size: 32, offset: 1024)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "new_base_graph", scope: !51, file: !14, line: 270, baseType: !117, size: 64, offset: 1088)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "commit_graph", file: !14, line: 270, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "append", scope: !51, file: !14, line: 272, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "report_progress", scope: !51, file: !14, line: 273, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !51, file: !14, line: 274, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "changed_paths", scope: !51, file: !14, line: 275, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "order_by_pack", scope: !51, file: !14, line: 276, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "write_generation_data", scope: !51, file: !14, line: 277, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "trust_generation_numbers", scope: !51, file: !14, line: 278, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "topo_levels", scope: !51, file: !14, line: 280, baseType: !127, size: 64, offset: 1216)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "topo_level_slab", file: !14, line: 242, size: 192, elements: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "slab_size", scope: !128, file: !14, line: 242, baseType: !5, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !128, file: !14, line: 242, baseType: !5, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "slab_count", scope: !128, file: !14, line: 242, baseType: !5, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !128, file: !14, line: 242, baseType: !134, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !51, file: !14, line: 281, baseType: !137, size: 64, offset: 1280)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DICompositeType(tag: DW_TAG_structure_type, name: "commit_graph_opts", file: !14, line: 281, flags: DIFlagFwdDecl)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "total_bloom_filter_data_size", scope: !51, file: !14, line: 282, baseType: !36, size: 64, offset: 1344)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "bloom_settings", scope: !51, file: !14, line: 283, baseType: !142, size: 64, offset: 1408)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "bloom_filter_settings", file: !14, line: 283, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "count_bloom_filter_computed", scope: !51, file: !14, line: 285, baseType: !17, size: 32, offset: 1472)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "count_bloom_filter_not_computed", scope: !51, file: !14, line: 286, baseType: !17, size: 32, offset: 1504)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "count_bloom_filter_trunc_empty", scope: !51, file: !14, line: 287, baseType: !17, size: 32, offset: 1536)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "count_bloom_filter_trunc_large", scope: !51, file: !14, line: 288, baseType: !17, size: 32, offset: 1568)
!149 = !DILocation(line: 297, column: 30, scope: !13)
!150 = !DILocation(line: 297, column: 38, scope: !13)
!151 = !DILocalVariable(name: "list", scope: !13, file: !14, line: 297, type: !65)
!152 = !DILocation(line: 298, column: 30, scope: !13)
!153 = !DILocation(line: 298, column: 38, scope: !13)
!154 = !DILocation(line: 298, column: 50, scope: !13)
!155 = !DILocation(line: 298, column: 58, scope: !13)
!156 = !DILocation(line: 298, column: 43, scope: !13)
!157 = !DILocalVariable(name: "last", scope: !13, file: !14, line: 298, type: !65)
!158 = !DILocalVariable(name: "num_extra_edges", scope: !13, file: !14, line: 299, type: !33)
!159 = !DILocation(line: 301, column: 2, scope: !13)
!160 = !DILocation(line: 301, column: 14, scope: !13)
!161 = !DILocalVariable(name: "packedDate", scope: !162, file: !14, line: 305, type: !163)
!162 = distinct !DILexicalBlock(scope: !13, file: !14, line: 301, column: 22)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 2)
!166 = !DILocation(line: 305, column: 12, scope: !162)
!167 = !DILocation(line: 306, column: 25, scope: !162)
!168 = !DILocation(line: 306, column: 42, scope: !162)
!169 = !DILocation(line: 306, column: 35, scope: !162)
!170 = !DILocation(line: 306, column: 3, scope: !162)
!171 = !DILocation(line: 308, column: 39, scope: !172)
!172 = distinct !DILexicalBlock(scope: !162, file: !14, line: 308, column: 7)
!173 = !DILocation(line: 308, column: 42, scope: !172)
!174 = !DILocation(line: 308, column: 7, scope: !172)
!175 = !DILocation(line: 308, column: 7, scope: !162)
!176 = !DILocation(line: 309, column: 8, scope: !172)
!177 = !DILocation(line: 310, column: 18, scope: !172)
!178 = !DILocation(line: 310, column: 26, scope: !172)
!179 = !DILocation(line: 310, column: 33, scope: !172)
!180 = !DILocation(line: 310, column: 5, scope: !172)
!181 = !DILocation(line: 309, column: 4, scope: !172)
!182 = !DILocation(line: 311, column: 30, scope: !162)
!183 = !DILocation(line: 311, column: 10, scope: !162)
!184 = !DILocalVariable(name: "tree", scope: !162, file: !14, line: 303, type: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!186 = !DILocation(line: 0, scope: !162)
!187 = !DILocation(line: 312, column: 22, scope: !162)
!188 = !DILocation(line: 312, column: 16, scope: !162)
!189 = !DILocation(line: 312, column: 43, scope: !162)
!190 = !DILocation(line: 312, column: 3, scope: !162)
!191 = !DILocation(line: 314, column: 13, scope: !162)
!192 = !DILocation(line: 314, column: 21, scope: !162)
!193 = !DILocalVariable(name: "parent", scope: !162, file: !14, line: 302, type: !88)
!194 = !DILocation(line: 316, column: 8, scope: !195)
!195 = distinct !DILexicalBlock(scope: !162, file: !14, line: 316, column: 7)
!196 = !DILocation(line: 316, column: 7, scope: !162)
!197 = !DILocalVariable(name: "edge_value", scope: !162, file: !14, line: 304, type: !17)
!198 = !DILocation(line: 317, column: 4, scope: !195)
!199 = !DILocation(line: 319, column: 34, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !14, line: 318, column: 8)
!201 = !DILocation(line: 319, column: 40, scope: !200)
!202 = !DILocation(line: 319, column: 47, scope: !200)
!203 = !DILocation(line: 320, column: 16, scope: !200)
!204 = !DILocation(line: 320, column: 24, scope: !200)
!205 = !DILocation(line: 321, column: 16, scope: !200)
!206 = !DILocation(line: 321, column: 24, scope: !200)
!207 = !DILocation(line: 319, column: 17, scope: !200)
!208 = !DILocation(line: 324, column: 19, scope: !209)
!209 = distinct !DILexicalBlock(scope: !200, file: !14, line: 324, column: 8)
!210 = !DILocation(line: 324, column: 8, scope: !200)
!211 = !DILocation(line: 325, column: 24, scope: !209)
!212 = !DILocation(line: 325, column: 16, scope: !209)
!213 = !DILocation(line: 325, column: 5, scope: !209)
!214 = !DILocation(line: 326, column: 18, scope: !215)
!215 = distinct !DILexicalBlock(scope: !209, file: !14, line: 326, column: 13)
!216 = !DILocation(line: 326, column: 13, scope: !215)
!217 = !DILocation(line: 326, column: 13, scope: !209)
!218 = !DILocalVariable(name: "pos", scope: !219, file: !14, line: 327, type: !33)
!219 = distinct !DILexicalBlock(scope: !215, file: !14, line: 326, column: 34)
!220 = !DILocation(line: 327, column: 14, scope: !219)
!221 = !DILocation(line: 328, column: 42, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !14, line: 328, column: 9)
!223 = !DILocation(line: 329, column: 18, scope: !222)
!224 = !DILocation(line: 328, column: 9, scope: !222)
!225 = !DILocation(line: 328, column: 9, scope: !219)
!226 = !DILocation(line: 331, column: 19, scope: !222)
!227 = !DILocation(line: 331, column: 6, scope: !222)
!228 = !DILocation(line: 0, scope: !200)
!229 = !DILocation(line: 332, column: 4, scope: !219)
!230 = !DILocation(line: 0, scope: !209)
!231 = !DILocation(line: 334, column: 19, scope: !232)
!232 = distinct !DILexicalBlock(scope: !200, file: !14, line: 334, column: 8)
!233 = !DILocation(line: 334, column: 8, scope: !200)
!234 = !DILocation(line: 336, column: 29, scope: !232)
!235 = !DILocation(line: 336, column: 35, scope: !232)
!236 = !DILocation(line: 336, column: 42, scope: !232)
!237 = !DILocation(line: 336, column: 9, scope: !232)
!238 = !DILocation(line: 337, column: 22, scope: !232)
!239 = !DILocation(line: 337, column: 30, scope: !232)
!240 = !DILocation(line: 337, column: 37, scope: !232)
!241 = !DILocation(line: 337, column: 9, scope: !232)
!242 = !DILocation(line: 335, column: 5, scope: !232)
!243 = !DILocation(line: 0, scope: !195)
!244 = !DILocation(line: 340, column: 3, scope: !162)
!245 = !DILocation(line: 342, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !162, file: !14, line: 342, column: 7)
!247 = !DILocation(line: 342, column: 7, scope: !162)
!248 = !DILocation(line: 343, column: 21, scope: !246)
!249 = !DILocation(line: 343, column: 4, scope: !246)
!250 = !DILocation(line: 345, column: 8, scope: !251)
!251 = distinct !DILexicalBlock(scope: !162, file: !14, line: 345, column: 7)
!252 = !DILocation(line: 345, column: 7, scope: !162)
!253 = !DILocation(line: 346, column: 4, scope: !251)
!254 = !DILocation(line: 347, column: 20, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !14, line: 347, column: 12)
!256 = !DILocation(line: 347, column: 12, scope: !255)
!257 = !DILocation(line: 347, column: 12, scope: !251)
!258 = !DILocation(line: 348, column: 42, scope: !255)
!259 = !DILocation(line: 348, column: 4, scope: !255)
!260 = !DILocation(line: 350, column: 34, scope: !261)
!261 = distinct !DILexicalBlock(scope: !255, file: !14, line: 349, column: 8)
!262 = !DILocation(line: 350, column: 40, scope: !261)
!263 = !DILocation(line: 350, column: 47, scope: !261)
!264 = !DILocation(line: 351, column: 16, scope: !261)
!265 = !DILocation(line: 351, column: 24, scope: !261)
!266 = !DILocation(line: 352, column: 16, scope: !261)
!267 = !DILocation(line: 352, column: 24, scope: !261)
!268 = !DILocation(line: 350, column: 17, scope: !261)
!269 = !DILocation(line: 355, column: 19, scope: !270)
!270 = distinct !DILexicalBlock(scope: !261, file: !14, line: 355, column: 8)
!271 = !DILocation(line: 355, column: 8, scope: !261)
!272 = !DILocation(line: 356, column: 24, scope: !270)
!273 = !DILocation(line: 356, column: 16, scope: !270)
!274 = !DILocation(line: 356, column: 5, scope: !270)
!275 = !DILocation(line: 357, column: 18, scope: !276)
!276 = distinct !DILexicalBlock(scope: !270, file: !14, line: 357, column: 13)
!277 = !DILocation(line: 357, column: 13, scope: !276)
!278 = !DILocation(line: 357, column: 13, scope: !270)
!279 = !DILocalVariable(name: "pos", scope: !280, file: !14, line: 358, type: !33)
!280 = distinct !DILexicalBlock(scope: !276, file: !14, line: 357, column: 34)
!281 = !DILocation(line: 358, column: 14, scope: !280)
!282 = !DILocation(line: 359, column: 42, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !14, line: 359, column: 9)
!284 = !DILocation(line: 360, column: 18, scope: !283)
!285 = !DILocation(line: 359, column: 9, scope: !283)
!286 = !DILocation(line: 359, column: 9, scope: !280)
!287 = !DILocation(line: 362, column: 19, scope: !283)
!288 = !DILocation(line: 362, column: 6, scope: !283)
!289 = !DILocation(line: 0, scope: !261)
!290 = !DILocation(line: 363, column: 4, scope: !280)
!291 = !DILocation(line: 0, scope: !270)
!292 = !DILocation(line: 365, column: 19, scope: !293)
!293 = distinct !DILexicalBlock(scope: !261, file: !14, line: 365, column: 8)
!294 = !DILocation(line: 365, column: 8, scope: !261)
!295 = !DILocation(line: 367, column: 29, scope: !293)
!296 = !DILocation(line: 367, column: 35, scope: !293)
!297 = !DILocation(line: 367, column: 42, scope: !293)
!298 = !DILocation(line: 367, column: 9, scope: !293)
!299 = !DILocation(line: 368, column: 22, scope: !293)
!300 = !DILocation(line: 368, column: 30, scope: !293)
!301 = !DILocation(line: 368, column: 37, scope: !293)
!302 = !DILocation(line: 368, column: 9, scope: !293)
!303 = !DILocation(line: 366, column: 5, scope: !293)
!304 = !DILocation(line: 0, scope: !255)
!305 = !DILocation(line: 0, scope: !251)
!306 = !DILocation(line: 371, column: 3, scope: !162)
!307 = !DILocation(line: 373, column: 18, scope: !308)
!308 = distinct !DILexicalBlock(scope: !162, file: !14, line: 373, column: 7)
!309 = !DILocation(line: 373, column: 7, scope: !162)
!310 = !DILocation(line: 374, column: 4, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !14, line: 373, column: 46)
!312 = !DILocation(line: 375, column: 20, scope: !313)
!313 = distinct !DILexicalBlock(scope: !311, file: !14, line: 374, column: 7)
!314 = !DILocation(line: 376, column: 22, scope: !313)
!315 = !DILocation(line: 377, column: 4, scope: !313)
!316 = distinct !{!316, !310, !317, !318}
!317 = !DILocation(line: 377, column: 19, scope: !311)
!318 = !{!"llvm.loop.mustprogress"}
!319 = !DILocation(line: 378, column: 3, scope: !311)
!320 = !DILocation(line: 381, column: 20, scope: !321)
!321 = distinct !DILexicalBlock(scope: !162, file: !14, line: 380, column: 7)
!322 = !DILocation(line: 381, column: 4, scope: !321)
!323 = !DILocation(line: 381, column: 18, scope: !321)
!324 = !DILocation(line: 385, column: 20, scope: !162)
!325 = !DILocation(line: 385, column: 3, scope: !162)
!326 = !DILocation(line: 385, column: 17, scope: !162)
!327 = !DILocation(line: 387, column: 19, scope: !162)
!328 = !DILocation(line: 387, column: 3, scope: !162)
!329 = !DILocation(line: 387, column: 17, scope: !162)
!330 = !DILocation(line: 388, column: 16, scope: !162)
!331 = !DILocation(line: 388, column: 3, scope: !162)
!332 = !DILocation(line: 390, column: 7, scope: !162)
!333 = distinct !{!333, !159, !334, !318}
!334 = !DILocation(line: 391, column: 2, scope: !13)
!335 = !DILocation(line: 393, column: 2, scope: !13)
!336 = distinct !DISubprogram(name: "_OSSwapInt32", scope: !337, file: !337, line: 55, type: !338, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!337 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h", directory: "")
!338 = !DISubroutineType(types: !339)
!339 = !{!3, !3}
!340 = !DILocalVariable(name: "_data", arg: 1, scope: !336, file: !337, line: 56, type: !3)
!341 = !DILocation(line: 0, scope: !336)
!342 = !DILocation(line: 60, column: 9, scope: !336)
!343 = !DILocation(line: 60, column: 2, scope: !336)
!344 = distinct !DISubprogram(name: "topo_level_slab_at", scope: !14, file: !14, line: 242, type: !345, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!345 = !DISubroutineType(types: !346)
!346 = !{!135, !127, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!349 = !DILocalVariable(name: "s", arg: 1, scope: !344, file: !14, line: 242, type: !127)
!350 = !DILocation(line: 0, scope: !344)
!351 = !DILocalVariable(name: "c", arg: 2, scope: !344, file: !14, line: 242, type: !347)
!352 = !DILocation(line: 242, column: 1, scope: !344)
!353 = distinct !DISubprogram(name: "topo_level_slab_at_peek", scope: !14, file: !14, line: 242, type: !354, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!354 = !DISubroutineType(types: !355)
!355 = !{!135, !127, !347, !17}
!356 = !DILocalVariable(name: "s", arg: 1, scope: !353, file: !14, line: 242, type: !127)
!357 = !DILocation(line: 0, scope: !353)
!358 = !DILocalVariable(name: "c", arg: 2, scope: !353, file: !14, line: 242, type: !347)
!359 = !DILocalVariable(name: "add_if_missing", arg: 3, scope: !353, file: !14, line: 242, type: !17)
!360 = !DILocation(line: 242, column: 1, scope: !353)
!361 = !DILocalVariable(name: "nth_slab", scope: !353, file: !14, line: 242, type: !5)
!362 = !DILocalVariable(name: "nth_slot", scope: !353, file: !14, line: 242, type: !5)
!363 = !DILocation(line: 242, column: 1, scope: !364)
!364 = distinct !DILexicalBlock(scope: !353, file: !14, line: 242, column: 1)
!365 = !DILocation(line: 242, column: 1, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !14, line: 242, column: 1)
!367 = distinct !DILexicalBlock(scope: !364, file: !14, line: 242, column: 1)
!368 = !DILocation(line: 242, column: 1, scope: !367)
!369 = !DILocation(line: 242, column: 1, scope: !370)
!370 = distinct !DILexicalBlock(scope: !367, file: !14, line: 242, column: 1)
!371 = !DILocalVariable(name: "i", scope: !367, file: !14, line: 242, type: !5)
!372 = !DILocation(line: 0, scope: !367)
!373 = !DILocation(line: 0, scope: !370)
!374 = !DILocation(line: 242, column: 1, scope: !375)
!375 = distinct !DILexicalBlock(scope: !370, file: !14, line: 242, column: 1)
!376 = distinct !{!376, !369, !369, !318}
!377 = !DILocation(line: 242, column: 1, scope: !378)
!378 = distinct !DILexicalBlock(scope: !353, file: !14, line: 242, column: 1)
!379 = !DILocation(line: 242, column: 1, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !14, line: 242, column: 1)
!381 = distinct !DILexicalBlock(scope: !378, file: !14, line: 242, column: 1)
!382 = !DILocation(line: 242, column: 1, scope: !381)
!383 = distinct !DISubprogram(name: "st_mult", scope: !14, file: !14, line: 13, type: !384, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!384 = !DISubroutineType(types: !385)
!385 = !{!36, !36, !36}
!386 = !DILocalVariable(name: "a", arg: 1, scope: !383, file: !14, line: 13, type: !36)
!387 = !DILocation(line: 0, scope: !383)
!388 = !DILocalVariable(name: "b", arg: 2, scope: !383, file: !14, line: 13, type: !36)
!389 = !DILocation(line: 15, column: 11, scope: !383)
!390 = !DILocation(line: 15, column: 2, scope: !383)
