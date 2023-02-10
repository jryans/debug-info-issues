; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.cb_tree = type { %struct.cb_node* }
%struct.cb_node = type { [2 x %struct.cb_node*], i32, i8, [0 x i8] }

; Function Attrs: noinline nounwind ssp uwtable
define %struct.cb_node* @cb_insert(%struct.cb_tree* %t, %struct.cb_node* %node, i64 %klen) #0 !dbg !38 {
entry:
  %retval = alloca %struct.cb_node*, align 8
  %t.addr = alloca %struct.cb_tree*, align 8
  %node.addr = alloca %struct.cb_node*, align 8
  %klen.addr = alloca i64, align 8
  %newbyte = alloca i64, align 8
  %newotherbits = alloca i64, align 8
  %c = alloca i8, align 1
  %newdirection = alloca i32, align 4
  %wherep = alloca %struct.cb_node**, align 8
  %p = alloca %struct.cb_node*, align 8
  %q = alloca %struct.cb_node*, align 8
  %direction = alloca i64, align 8
  store %struct.cb_tree* %t, %struct.cb_tree** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cb_tree** %t.addr, metadata !50, metadata !DIExpression()), !dbg !51
  store %struct.cb_node* %node, %struct.cb_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cb_node** %node.addr, metadata !52, metadata !DIExpression()), !dbg !53
  store i64 %klen, i64* %klen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %klen.addr, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i64* %newbyte, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i64* %newotherbits, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i8* %c, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %newdirection, metadata !62, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata %struct.cb_node*** %wherep, metadata !65, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata %struct.cb_node** %p, metadata !68, metadata !DIExpression()), !dbg !69
  %0 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !70
  %1 = ptrtoint %struct.cb_node* %0 to i64, !dbg !71
  %and = and i64 %1, 1, !dbg !72
  %tobool = icmp ne i64 %and, 0, !dbg !73
  %lnot = xor i1 %tobool, true, !dbg !73
  %lnot.ext = zext i1 %lnot to i32, !dbg !73
  %call = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 %lnot.ext), !dbg !74
  %2 = load %struct.cb_tree*, %struct.cb_tree** %t.addr, align 8, !dbg !75
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %2, i32 0, i32 0, !dbg !77
  %3 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !77
  %tobool1 = icmp ne %struct.cb_node* %3, null, !dbg !75
  br i1 %tobool1, label %if.end, label %if.then, !dbg !78

if.then:                                          ; preds = %entry
  %4 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !79
  %5 = load %struct.cb_tree*, %struct.cb_tree** %t.addr, align 8, !dbg !81
  %root2 = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %5, i32 0, i32 0, !dbg !82
  store %struct.cb_node* %4, %struct.cb_node** %root2, align 8, !dbg !83
  store %struct.cb_node* null, %struct.cb_node** %retval, align 8, !dbg !84
  br label %return, !dbg !84

if.end:                                           ; preds = %entry
  %6 = load %struct.cb_tree*, %struct.cb_tree** %t.addr, align 8, !dbg !85
  %root3 = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %6, i32 0, i32 0, !dbg !86
  %7 = load %struct.cb_node*, %struct.cb_node** %root3, align 8, !dbg !86
  %8 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !87
  %k = getelementptr inbounds %struct.cb_node, %struct.cb_node* %8, i32 0, i32 3, !dbg !88
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %k, i64 0, i64 0, !dbg !87
  %9 = load i64, i64* %klen.addr, align 8, !dbg !89
  %call4 = call %struct.cb_node* @cb_internal_best_match(%struct.cb_node* %7, i8* %arraydecay, i64 %9), !dbg !90
  store %struct.cb_node* %call4, %struct.cb_node** %p, align 8, !dbg !91
  store i64 0, i64* %newbyte, align 8, !dbg !92
  br label %for.cond, !dbg !94

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i64, i64* %newbyte, align 8, !dbg !95
  %11 = load i64, i64* %klen.addr, align 8, !dbg !97
  %cmp = icmp ult i64 %10, %11, !dbg !98
  br i1 %cmp, label %for.body, label %for.end, !dbg !99

for.body:                                         ; preds = %for.cond
  %12 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !100
  %k5 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %12, i32 0, i32 3, !dbg !103
  %13 = load i64, i64* %newbyte, align 8, !dbg !104
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* %k5, i64 0, i64 %13, !dbg !100
  %14 = load i8, i8* %arrayidx, align 1, !dbg !100
  %conv = zext i8 %14 to i32, !dbg !100
  %15 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !105
  %k6 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %15, i32 0, i32 3, !dbg !106
  %16 = load i64, i64* %newbyte, align 8, !dbg !107
  %arrayidx7 = getelementptr inbounds [0 x i8], [0 x i8]* %k6, i64 0, i64 %16, !dbg !105
  %17 = load i8, i8* %arrayidx7, align 1, !dbg !105
  %conv8 = zext i8 %17 to i32, !dbg !105
  %cmp9 = icmp ne i32 %conv, %conv8, !dbg !108
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !109

if.then11:                                        ; preds = %for.body
  br label %different_byte_found, !dbg !110

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !111

for.inc:                                          ; preds = %if.end12
  %18 = load i64, i64* %newbyte, align 8, !dbg !112
  %inc = add i64 %18, 1, !dbg !112
  store i64 %inc, i64* %newbyte, align 8, !dbg !112
  br label %for.cond, !dbg !113, !llvm.loop !114

for.end:                                          ; preds = %for.cond
  %19 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !117
  store %struct.cb_node* %19, %struct.cb_node** %retval, align 8, !dbg !118
  br label %return, !dbg !118

different_byte_found:                             ; preds = %if.then11
  call void @llvm.dbg.label(metadata !119), !dbg !120
  %20 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !121
  %k13 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %20, i32 0, i32 3, !dbg !122
  %21 = load i64, i64* %newbyte, align 8, !dbg !123
  %arrayidx14 = getelementptr inbounds [0 x i8], [0 x i8]* %k13, i64 0, i64 %21, !dbg !121
  %22 = load i8, i8* %arrayidx14, align 1, !dbg !121
  %conv15 = zext i8 %22 to i32, !dbg !121
  %23 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !124
  %k16 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %23, i32 0, i32 3, !dbg !125
  %24 = load i64, i64* %newbyte, align 8, !dbg !126
  %arrayidx17 = getelementptr inbounds [0 x i8], [0 x i8]* %k16, i64 0, i64 %24, !dbg !124
  %25 = load i8, i8* %arrayidx17, align 1, !dbg !124
  %conv18 = zext i8 %25 to i32, !dbg !124
  %xor = xor i32 %conv15, %conv18, !dbg !127
  %conv19 = sext i32 %xor to i64, !dbg !121
  store i64 %conv19, i64* %newotherbits, align 8, !dbg !128
  %26 = load i64, i64* %newotherbits, align 8, !dbg !129
  %shr = lshr i64 %26, 1, !dbg !130
  %27 = load i64, i64* %newotherbits, align 8, !dbg !131
  %or = or i64 %27, %shr, !dbg !131
  store i64 %or, i64* %newotherbits, align 8, !dbg !131
  %28 = load i64, i64* %newotherbits, align 8, !dbg !132
  %shr20 = lshr i64 %28, 2, !dbg !133
  %29 = load i64, i64* %newotherbits, align 8, !dbg !134
  %or21 = or i64 %29, %shr20, !dbg !134
  store i64 %or21, i64* %newotherbits, align 8, !dbg !134
  %30 = load i64, i64* %newotherbits, align 8, !dbg !135
  %shr22 = lshr i64 %30, 4, !dbg !136
  %31 = load i64, i64* %newotherbits, align 8, !dbg !137
  %or23 = or i64 %31, %shr22, !dbg !137
  store i64 %or23, i64* %newotherbits, align 8, !dbg !137
  %32 = load i64, i64* %newotherbits, align 8, !dbg !138
  %33 = load i64, i64* %newotherbits, align 8, !dbg !139
  %shr24 = lshr i64 %33, 1, !dbg !140
  %neg = xor i64 %shr24, -1, !dbg !141
  %and25 = and i64 %32, %neg, !dbg !142
  %xor26 = xor i64 %and25, 255, !dbg !143
  store i64 %xor26, i64* %newotherbits, align 8, !dbg !144
  %34 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !145
  %k27 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %34, i32 0, i32 3, !dbg !146
  %35 = load i64, i64* %newbyte, align 8, !dbg !147
  %arrayidx28 = getelementptr inbounds [0 x i8], [0 x i8]* %k27, i64 0, i64 %35, !dbg !145
  %36 = load i8, i8* %arrayidx28, align 1, !dbg !145
  store i8 %36, i8* %c, align 1, !dbg !148
  %37 = load i64, i64* %newotherbits, align 8, !dbg !149
  %38 = load i8, i8* %c, align 1, !dbg !150
  %conv29 = zext i8 %38 to i64, !dbg !150
  %or30 = or i64 %37, %conv29, !dbg !151
  %add = add i64 1, %or30, !dbg !152
  %shr31 = lshr i64 %add, 8, !dbg !153
  %conv32 = trunc i64 %shr31 to i32, !dbg !154
  store i32 %conv32, i32* %newdirection, align 4, !dbg !155
  %39 = load i64, i64* %newbyte, align 8, !dbg !156
  %conv33 = trunc i64 %39 to i32, !dbg !156
  %40 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !157
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %40, i32 0, i32 1, !dbg !158
  store i32 %conv33, i32* %byte, align 8, !dbg !159
  %41 = load i64, i64* %newotherbits, align 8, !dbg !160
  %conv34 = trunc i64 %41 to i8, !dbg !160
  %42 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !161
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %42, i32 0, i32 2, !dbg !162
  store i8 %conv34, i8* %otherbits, align 4, !dbg !163
  %43 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !164
  %44 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !165
  %child = getelementptr inbounds %struct.cb_node, %struct.cb_node* %44, i32 0, i32 0, !dbg !166
  %45 = load i32, i32* %newdirection, align 4, !dbg !167
  %sub = sub nsw i32 1, %45, !dbg !168
  %idxprom = sext i32 %sub to i64, !dbg !165
  %arrayidx35 = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child, i64 0, i64 %idxprom, !dbg !165
  store %struct.cb_node* %43, %struct.cb_node** %arrayidx35, align 8, !dbg !169
  %46 = load %struct.cb_tree*, %struct.cb_tree** %t.addr, align 8, !dbg !170
  %root36 = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %46, i32 0, i32 0, !dbg !171
  store %struct.cb_node** %root36, %struct.cb_node*** %wherep, align 8, !dbg !172
  br label %for.cond37, !dbg !173

for.cond37:                                       ; preds = %cond.end, %different_byte_found
  call void @llvm.dbg.declare(metadata %struct.cb_node** %q, metadata !174, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i64* %direction, metadata !179, metadata !DIExpression()), !dbg !180
  %47 = load %struct.cb_node**, %struct.cb_node*** %wherep, align 8, !dbg !181
  %48 = load %struct.cb_node*, %struct.cb_node** %47, align 8, !dbg !182
  store %struct.cb_node* %48, %struct.cb_node** %p, align 8, !dbg !183
  %49 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !184
  %50 = ptrtoint %struct.cb_node* %49 to i64, !dbg !186
  %and38 = and i64 1, %50, !dbg !187
  %tobool39 = icmp ne i64 %and38, 0, !dbg !187
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !188

if.then40:                                        ; preds = %for.cond37
  br label %for.end78, !dbg !189

if.end41:                                         ; preds = %for.cond37
  %51 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !190
  %52 = bitcast %struct.cb_node* %51 to i8*, !dbg !190
  %call42 = call %struct.cb_node* @cb_node_of(i8* %52), !dbg !191
  store %struct.cb_node* %call42, %struct.cb_node** %q, align 8, !dbg !192
  %53 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !193
  %byte43 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %53, i32 0, i32 1, !dbg !195
  %54 = load i32, i32* %byte43, align 8, !dbg !195
  %conv44 = zext i32 %54 to i64, !dbg !193
  %55 = load i64, i64* %newbyte, align 8, !dbg !196
  %cmp45 = icmp ugt i64 %conv44, %55, !dbg !197
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !198

if.then47:                                        ; preds = %if.end41
  br label %for.end78, !dbg !199

if.end48:                                         ; preds = %if.end41
  %56 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !200
  %byte49 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %56, i32 0, i32 1, !dbg !202
  %57 = load i32, i32* %byte49, align 8, !dbg !202
  %conv50 = zext i32 %57 to i64, !dbg !200
  %58 = load i64, i64* %newbyte, align 8, !dbg !203
  %cmp51 = icmp eq i64 %conv50, %58, !dbg !204
  br i1 %cmp51, label %land.lhs.true, label %if.end58, !dbg !205

land.lhs.true:                                    ; preds = %if.end48
  %59 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !206
  %otherbits53 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %59, i32 0, i32 2, !dbg !207
  %60 = load i8, i8* %otherbits53, align 4, !dbg !207
  %conv54 = zext i8 %60 to i64, !dbg !206
  %61 = load i64, i64* %newotherbits, align 8, !dbg !208
  %cmp55 = icmp ugt i64 %conv54, %61, !dbg !209
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !210

if.then57:                                        ; preds = %land.lhs.true
  br label %for.end78, !dbg !211

if.end58:                                         ; preds = %land.lhs.true, %if.end48
  %62 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !212
  %byte59 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %62, i32 0, i32 1, !dbg !213
  %63 = load i32, i32* %byte59, align 8, !dbg !213
  %conv60 = zext i32 %63 to i64, !dbg !212
  %64 = load i64, i64* %klen.addr, align 8, !dbg !214
  %cmp61 = icmp ult i64 %conv60, %64, !dbg !215
  br i1 %cmp61, label %cond.true, label %cond.false, !dbg !212

cond.true:                                        ; preds = %if.end58
  %65 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !216
  %k63 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %65, i32 0, i32 3, !dbg !217
  %66 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !218
  %byte64 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %66, i32 0, i32 1, !dbg !219
  %67 = load i32, i32* %byte64, align 8, !dbg !219
  %idxprom65 = zext i32 %67 to i64, !dbg !216
  %arrayidx66 = getelementptr inbounds [0 x i8], [0 x i8]* %k63, i64 0, i64 %idxprom65, !dbg !216
  %68 = load i8, i8* %arrayidx66, align 1, !dbg !216
  %conv67 = zext i8 %68 to i32, !dbg !216
  br label %cond.end, !dbg !212

cond.false:                                       ; preds = %if.end58
  br label %cond.end, !dbg !212

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv67, %cond.true ], [ 0, %cond.false ], !dbg !212
  %conv68 = trunc i32 %cond to i8, !dbg !212
  store i8 %conv68, i8* %c, align 1, !dbg !220
  %69 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !221
  %otherbits69 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %69, i32 0, i32 2, !dbg !222
  %70 = load i8, i8* %otherbits69, align 4, !dbg !222
  %conv70 = zext i8 %70 to i32, !dbg !221
  %71 = load i8, i8* %c, align 1, !dbg !223
  %conv71 = zext i8 %71 to i32, !dbg !223
  %or72 = or i32 %conv70, %conv71, !dbg !224
  %add73 = add nsw i32 1, %or72, !dbg !225
  %shr74 = ashr i32 %add73, 8, !dbg !226
  %conv75 = sext i32 %shr74 to i64, !dbg !227
  store i64 %conv75, i64* %direction, align 8, !dbg !228
  %72 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !229
  %child76 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %72, i32 0, i32 0, !dbg !230
  %arraydecay77 = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child76, i64 0, i64 0, !dbg !229
  %73 = load i64, i64* %direction, align 8, !dbg !231
  %add.ptr = getelementptr inbounds %struct.cb_node*, %struct.cb_node** %arraydecay77, i64 %73, !dbg !232
  store %struct.cb_node** %add.ptr, %struct.cb_node*** %wherep, align 8, !dbg !233
  br label %for.cond37, !dbg !234, !llvm.loop !235

for.end78:                                        ; preds = %if.then57, %if.then47, %if.then40
  %74 = load %struct.cb_node**, %struct.cb_node*** %wherep, align 8, !dbg !238
  %75 = load %struct.cb_node*, %struct.cb_node** %74, align 8, !dbg !239
  %76 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !240
  %child79 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %76, i32 0, i32 0, !dbg !241
  %77 = load i32, i32* %newdirection, align 4, !dbg !242
  %idxprom80 = sext i32 %77 to i64, !dbg !240
  %arrayidx81 = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child79, i64 0, i64 %idxprom80, !dbg !240
  store %struct.cb_node* %75, %struct.cb_node** %arrayidx81, align 8, !dbg !243
  %78 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !244
  %79 = ptrtoint %struct.cb_node* %78 to i64, !dbg !245
  %add82 = add i64 1, %79, !dbg !246
  %80 = inttoptr i64 %add82 to %struct.cb_node*, !dbg !247
  %81 = load %struct.cb_node**, %struct.cb_node*** %wherep, align 8, !dbg !248
  store %struct.cb_node* %80, %struct.cb_node** %81, align 8, !dbg !249
  store %struct.cb_node* null, %struct.cb_node** %retval, align 8, !dbg !250
  br label %return, !dbg !250

return:                                           ; preds = %for.end78, %for.end, %if.then
  %82 = load %struct.cb_node*, %struct.cb_node** %retval, align 8, !dbg !251
  ret %struct.cb_node* %82, !dbg !251
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @assert(...) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal %struct.cb_node* @cb_internal_best_match(%struct.cb_node* %p, i8* %k, i64 %klen) #0 !dbg !252 {
entry:
  %p.addr = alloca %struct.cb_node*, align 8
  %k.addr = alloca i8*, align 8
  %klen.addr = alloca i64, align 8
  %q = alloca %struct.cb_node*, align 8
  %c = alloca i8, align 1
  %direction = alloca i64, align 8
  store %struct.cb_node* %p, %struct.cb_node** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cb_node** %p.addr, metadata !257, metadata !DIExpression()), !dbg !258
  store i8* %k, i8** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %k.addr, metadata !259, metadata !DIExpression()), !dbg !260
  store i64 %klen, i64* %klen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %klen.addr, metadata !261, metadata !DIExpression()), !dbg !262
  br label %while.cond, !dbg !263

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load %struct.cb_node*, %struct.cb_node** %p.addr, align 8, !dbg !264
  %1 = ptrtoint %struct.cb_node* %0 to i64, !dbg !265
  %and = and i64 1, %1, !dbg !266
  %tobool = icmp ne i64 %and, 0, !dbg !263
  br i1 %tobool, label %while.body, label %while.end, !dbg !263

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.cb_node** %q, metadata !267, metadata !DIExpression()), !dbg !269
  %2 = load %struct.cb_node*, %struct.cb_node** %p.addr, align 8, !dbg !270
  %3 = bitcast %struct.cb_node* %2 to i8*, !dbg !270
  %call = call %struct.cb_node* @cb_node_of(i8* %3), !dbg !271
  store %struct.cb_node* %call, %struct.cb_node** %q, align 8, !dbg !269
  call void @llvm.dbg.declare(metadata i8* %c, metadata !272, metadata !DIExpression()), !dbg !273
  %4 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !274
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %4, i32 0, i32 1, !dbg !275
  %5 = load i32, i32* %byte, align 8, !dbg !275
  %conv = zext i32 %5 to i64, !dbg !274
  %6 = load i64, i64* %klen.addr, align 8, !dbg !276
  %cmp = icmp ult i64 %conv, %6, !dbg !277
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !274

cond.true:                                        ; preds = %while.body
  %7 = load i8*, i8** %k.addr, align 8, !dbg !278
  %8 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !279
  %byte2 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %8, i32 0, i32 1, !dbg !280
  %9 = load i32, i32* %byte2, align 8, !dbg !280
  %idxprom = zext i32 %9 to i64, !dbg !278
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom, !dbg !278
  %10 = load i8, i8* %arrayidx, align 1, !dbg !278
  %conv3 = zext i8 %10 to i32, !dbg !278
  br label %cond.end, !dbg !274

cond.false:                                       ; preds = %while.body
  br label %cond.end, !dbg !274

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ 0, %cond.false ], !dbg !274
  %conv4 = trunc i32 %cond to i8, !dbg !274
  store i8 %conv4, i8* %c, align 1, !dbg !273
  call void @llvm.dbg.declare(metadata i64* %direction, metadata !281, metadata !DIExpression()), !dbg !282
  %11 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !283
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %11, i32 0, i32 2, !dbg !284
  %12 = load i8, i8* %otherbits, align 4, !dbg !284
  %conv5 = zext i8 %12 to i32, !dbg !283
  %13 = load i8, i8* %c, align 1, !dbg !285
  %conv6 = zext i8 %13 to i32, !dbg !285
  %or = or i32 %conv5, %conv6, !dbg !286
  %add = add nsw i32 1, %or, !dbg !287
  %shr = ashr i32 %add, 8, !dbg !288
  %conv7 = sext i32 %shr to i64, !dbg !289
  store i64 %conv7, i64* %direction, align 8, !dbg !282
  %14 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !290
  %child = getelementptr inbounds %struct.cb_node, %struct.cb_node* %14, i32 0, i32 0, !dbg !291
  %15 = load i64, i64* %direction, align 8, !dbg !292
  %arrayidx8 = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child, i64 0, i64 %15, !dbg !290
  %16 = load %struct.cb_node*, %struct.cb_node** %arrayidx8, align 8, !dbg !290
  store %struct.cb_node* %16, %struct.cb_node** %p.addr, align 8, !dbg !293
  br label %while.cond, !dbg !263, !llvm.loop !294

while.end:                                        ; preds = %while.cond
  %17 = load %struct.cb_node*, %struct.cb_node** %p.addr, align 8, !dbg !296
  ret %struct.cb_node* %17, !dbg !297
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal %struct.cb_node* @cb_node_of(i8* %p) #0 !dbg !298 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load i8*, i8** %p.addr, align 8, !dbg !305
  %1 = ptrtoint i8* %0 to i64, !dbg !306
  %sub = sub i64 %1, 1, !dbg !307
  %2 = inttoptr i64 %sub to %struct.cb_node*, !dbg !308
  ret %struct.cb_node* %2, !dbg !309
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.cb_node* @cb_lookup(%struct.cb_tree* %t, i8* %k, i64 %klen) #0 !dbg !310 {
entry:
  %t.addr = alloca %struct.cb_tree*, align 8
  %k.addr = alloca i8*, align 8
  %klen.addr = alloca i64, align 8
  %p = alloca %struct.cb_node*, align 8
  store %struct.cb_tree* %t, %struct.cb_tree** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cb_tree** %t.addr, metadata !313, metadata !DIExpression()), !dbg !314
  store i8* %k, i8** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %k.addr, metadata !315, metadata !DIExpression()), !dbg !316
  store i64 %klen, i64* %klen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %klen.addr, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata %struct.cb_node** %p, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load %struct.cb_tree*, %struct.cb_tree** %t.addr, align 8, !dbg !321
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %0, i32 0, i32 0, !dbg !322
  %1 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !322
  %2 = load i8*, i8** %k.addr, align 8, !dbg !323
  %3 = load i64, i64* %klen.addr, align 8, !dbg !324
  %call = call %struct.cb_node* @cb_internal_best_match(%struct.cb_node* %1, i8* %2, i64 %3), !dbg !325
  store %struct.cb_node* %call, %struct.cb_node** %p, align 8, !dbg !320
  %4 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !326
  %tobool = icmp ne %struct.cb_node* %4, null, !dbg !326
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !327

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !328
  %k1 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %5, i32 0, i32 3, !dbg !329
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %k1, i64 0, i64 0, !dbg !328
  %6 = load i8*, i8** %k.addr, align 8, !dbg !330
  %7 = load i64, i64* %klen.addr, align 8, !dbg !331
  %call2 = call i32 @memcmp(i8* %arraydecay, i8* %6, i64 %7), !dbg !332
  %tobool3 = icmp ne i32 %call2, 0, !dbg !332
  br i1 %tobool3, label %cond.false, label %cond.true, !dbg !326

cond.true:                                        ; preds = %land.lhs.true
  %8 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !333
  br label %cond.end, !dbg !326

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end, !dbg !326

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.cb_node* [ %8, %cond.true ], [ null, %cond.false ], !dbg !326
  ret %struct.cb_node* %cond, !dbg !334
}

declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @cb_each(%struct.cb_tree* %t, i8* %kpfx, i64 %klen, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg) #0 !dbg !335 {
entry:
  %t.addr = alloca %struct.cb_tree*, align 8
  %kpfx.addr = alloca i8*, align 8
  %klen.addr = alloca i64, align 8
  %fn.addr = alloca i32 (%struct.cb_node*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %p = alloca %struct.cb_node*, align 8
  %top = alloca %struct.cb_node*, align 8
  %i = alloca i64, align 8
  %q = alloca %struct.cb_node*, align 8
  %c = alloca i8, align 1
  %direction = alloca i64, align 8
  store %struct.cb_tree* %t, %struct.cb_tree** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cb_tree** %t.addr, metadata !343, metadata !DIExpression()), !dbg !344
  store i8* %kpfx, i8** %kpfx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %kpfx.addr, metadata !345, metadata !DIExpression()), !dbg !346
  store i64 %klen, i64* %klen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %klen.addr, metadata !347, metadata !DIExpression()), !dbg !348
  store i32 (%struct.cb_node*, i8*)* %fn, i32 (%struct.cb_node*, i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.cb_node*, i8*)** %fn.addr, metadata !349, metadata !DIExpression()), !dbg !350
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata %struct.cb_node** %p, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load %struct.cb_tree*, %struct.cb_tree** %t.addr, align 8, !dbg !355
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %0, i32 0, i32 0, !dbg !356
  %1 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !356
  store %struct.cb_node* %1, %struct.cb_node** %p, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata %struct.cb_node** %top, metadata !357, metadata !DIExpression()), !dbg !358
  %2 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !359
  store %struct.cb_node* %2, %struct.cb_node** %top, align 8, !dbg !358
  call void @llvm.dbg.declare(metadata i64* %i, metadata !360, metadata !DIExpression()), !dbg !361
  store i64 0, i64* %i, align 8, !dbg !361
  %3 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !362
  %tobool = icmp ne %struct.cb_node* %3, null, !dbg !362
  br i1 %tobool, label %if.end, label %if.then, !dbg !364

if.then:                                          ; preds = %entry
  br label %return, !dbg !365

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !366

while.cond:                                       ; preds = %if.end15, %if.end
  %4 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !367
  %5 = ptrtoint %struct.cb_node* %4 to i64, !dbg !368
  %and = and i64 1, %5, !dbg !369
  %tobool1 = icmp ne i64 %and, 0, !dbg !366
  br i1 %tobool1, label %while.body, label %while.end, !dbg !366

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.cb_node** %q, metadata !370, metadata !DIExpression()), !dbg !372
  %6 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !373
  %7 = bitcast %struct.cb_node* %6 to i8*, !dbg !373
  %call = call %struct.cb_node* @cb_node_of(i8* %7), !dbg !374
  store %struct.cb_node* %call, %struct.cb_node** %q, align 8, !dbg !372
  call void @llvm.dbg.declare(metadata i8* %c, metadata !375, metadata !DIExpression()), !dbg !376
  %8 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !377
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %8, i32 0, i32 1, !dbg !378
  %9 = load i32, i32* %byte, align 8, !dbg !378
  %conv = zext i32 %9 to i64, !dbg !377
  %10 = load i64, i64* %klen.addr, align 8, !dbg !379
  %cmp = icmp ult i64 %conv, %10, !dbg !380
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !377

cond.true:                                        ; preds = %while.body
  %11 = load i8*, i8** %kpfx.addr, align 8, !dbg !381
  %12 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !382
  %byte3 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %12, i32 0, i32 1, !dbg !383
  %13 = load i32, i32* %byte3, align 8, !dbg !383
  %idxprom = zext i32 %13 to i64, !dbg !381
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom, !dbg !381
  %14 = load i8, i8* %arrayidx, align 1, !dbg !381
  %conv4 = zext i8 %14 to i32, !dbg !381
  br label %cond.end, !dbg !377

cond.false:                                       ; preds = %while.body
  br label %cond.end, !dbg !377

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ 0, %cond.false ], !dbg !377
  %conv5 = trunc i32 %cond to i8, !dbg !377
  store i8 %conv5, i8* %c, align 1, !dbg !376
  call void @llvm.dbg.declare(metadata i64* %direction, metadata !384, metadata !DIExpression()), !dbg !385
  %15 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !386
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %15, i32 0, i32 2, !dbg !387
  %16 = load i8, i8* %otherbits, align 4, !dbg !387
  %conv6 = zext i8 %16 to i32, !dbg !386
  %17 = load i8, i8* %c, align 1, !dbg !388
  %conv7 = zext i8 %17 to i32, !dbg !388
  %or = or i32 %conv6, %conv7, !dbg !389
  %add = add nsw i32 1, %or, !dbg !390
  %shr = ashr i32 %add, 8, !dbg !391
  %conv8 = sext i32 %shr to i64, !dbg !392
  store i64 %conv8, i64* %direction, align 8, !dbg !385
  %18 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !393
  %child = getelementptr inbounds %struct.cb_node, %struct.cb_node* %18, i32 0, i32 0, !dbg !394
  %19 = load i64, i64* %direction, align 8, !dbg !395
  %arrayidx9 = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child, i64 0, i64 %19, !dbg !393
  %20 = load %struct.cb_node*, %struct.cb_node** %arrayidx9, align 8, !dbg !393
  store %struct.cb_node* %20, %struct.cb_node** %p, align 8, !dbg !396
  %21 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !397
  %byte10 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %21, i32 0, i32 1, !dbg !399
  %22 = load i32, i32* %byte10, align 8, !dbg !399
  %conv11 = zext i32 %22 to i64, !dbg !397
  %23 = load i64, i64* %klen.addr, align 8, !dbg !400
  %cmp12 = icmp ult i64 %conv11, %23, !dbg !401
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !402

if.then14:                                        ; preds = %cond.end
  %24 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !403
  store %struct.cb_node* %24, %struct.cb_node** %top, align 8, !dbg !404
  br label %if.end15, !dbg !405

if.end15:                                         ; preds = %if.then14, %cond.end
  br label %while.cond, !dbg !366, !llvm.loop !406

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %i, align 8, !dbg !408
  br label %for.cond, !dbg !410

for.cond:                                         ; preds = %for.inc, %while.end
  %25 = load i64, i64* %i, align 8, !dbg !411
  %26 = load i64, i64* %klen.addr, align 8, !dbg !413
  %cmp16 = icmp ult i64 %25, %26, !dbg !414
  br i1 %cmp16, label %for.body, label %for.end, !dbg !415

for.body:                                         ; preds = %for.cond
  %27 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !416
  %k = getelementptr inbounds %struct.cb_node, %struct.cb_node* %27, i32 0, i32 3, !dbg !419
  %28 = load i64, i64* %i, align 8, !dbg !420
  %arrayidx18 = getelementptr inbounds [0 x i8], [0 x i8]* %k, i64 0, i64 %28, !dbg !416
  %29 = load i8, i8* %arrayidx18, align 1, !dbg !416
  %conv19 = zext i8 %29 to i32, !dbg !416
  %30 = load i8*, i8** %kpfx.addr, align 8, !dbg !421
  %31 = load i64, i64* %i, align 8, !dbg !422
  %arrayidx20 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !421
  %32 = load i8, i8* %arrayidx20, align 1, !dbg !421
  %conv21 = zext i8 %32 to i32, !dbg !421
  %cmp22 = icmp ne i32 %conv19, %conv21, !dbg !423
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !424

if.then24:                                        ; preds = %for.body
  br label %return, !dbg !425

if.end25:                                         ; preds = %for.body
  br label %for.inc, !dbg !426

for.inc:                                          ; preds = %if.end25
  %33 = load i64, i64* %i, align 8, !dbg !427
  %inc = add i64 %33, 1, !dbg !427
  store i64 %inc, i64* %i, align 8, !dbg !427
  br label %for.cond, !dbg !428, !llvm.loop !429

for.end:                                          ; preds = %for.cond
  %34 = load %struct.cb_node*, %struct.cb_node** %top, align 8, !dbg !431
  %35 = load i32 (%struct.cb_node*, i8*)*, i32 (%struct.cb_node*, i8*)** %fn.addr, align 8, !dbg !432
  %36 = load i8*, i8** %arg.addr, align 8, !dbg !433
  %call26 = call i32 @cb_descend(%struct.cb_node* %34, i32 (%struct.cb_node*, i8*)* %35, i8* %36), !dbg !434
  br label %return, !dbg !435

return:                                           ; preds = %for.end, %if.then24, %if.then
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @cb_descend(%struct.cb_node* %p, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg) #0 !dbg !436 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.cb_node*, align 8
  %fn.addr = alloca i32 (%struct.cb_node*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %q = alloca %struct.cb_node*, align 8
  %n = alloca i32, align 4
  store %struct.cb_node* %p, %struct.cb_node** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cb_node** %p.addr, metadata !439, metadata !DIExpression()), !dbg !440
  store i32 (%struct.cb_node*, i8*)* %fn, i32 (%struct.cb_node*, i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.cb_node*, i8*)** %fn.addr, metadata !441, metadata !DIExpression()), !dbg !442
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load %struct.cb_node*, %struct.cb_node** %p.addr, align 8, !dbg !445
  %1 = ptrtoint %struct.cb_node* %0 to i64, !dbg !447
  %and = and i64 1, %1, !dbg !448
  %tobool = icmp ne i64 %and, 0, !dbg !448
  br i1 %tobool, label %if.then, label %if.else, !dbg !449

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.cb_node** %q, metadata !450, metadata !DIExpression()), !dbg !452
  %2 = load %struct.cb_node*, %struct.cb_node** %p.addr, align 8, !dbg !453
  %3 = bitcast %struct.cb_node* %2 to i8*, !dbg !453
  %call = call %struct.cb_node* @cb_node_of(i8* %3), !dbg !454
  store %struct.cb_node* %call, %struct.cb_node** %q, align 8, !dbg !452
  call void @llvm.dbg.declare(metadata i32* %n, metadata !455, metadata !DIExpression()), !dbg !456
  %4 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !457
  %child = getelementptr inbounds %struct.cb_node, %struct.cb_node* %4, i32 0, i32 0, !dbg !458
  %arrayidx = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child, i64 0, i64 0, !dbg !457
  %5 = load %struct.cb_node*, %struct.cb_node** %arrayidx, align 8, !dbg !457
  %6 = load i32 (%struct.cb_node*, i8*)*, i32 (%struct.cb_node*, i8*)** %fn.addr, align 8, !dbg !459
  %7 = load i8*, i8** %arg.addr, align 8, !dbg !460
  %call1 = call i32 @cb_descend(%struct.cb_node* %5, i32 (%struct.cb_node*, i8*)* %6, i8* %7), !dbg !461
  store i32 %call1, i32* %n, align 4, !dbg !456
  %8 = load i32, i32* %n, align 4, !dbg !462
  %cmp = icmp eq i32 %8, 1, !dbg !463
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !462

cond.true:                                        ; preds = %if.then
  %9 = load i32, i32* %n, align 4, !dbg !464
  br label %cond.end, !dbg !462

cond.false:                                       ; preds = %if.then
  %10 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !465
  %child2 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %10, i32 0, i32 0, !dbg !466
  %arrayidx3 = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child2, i64 0, i64 1, !dbg !465
  %11 = load %struct.cb_node*, %struct.cb_node** %arrayidx3, align 8, !dbg !465
  %12 = load i32 (%struct.cb_node*, i8*)*, i32 (%struct.cb_node*, i8*)** %fn.addr, align 8, !dbg !467
  %13 = load i8*, i8** %arg.addr, align 8, !dbg !468
  %call4 = call i32 @cb_descend(%struct.cb_node* %11, i32 (%struct.cb_node*, i8*)* %12, i8* %13), !dbg !469
  br label %cond.end, !dbg !462

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %call4, %cond.false ], !dbg !462
  store i32 %cond, i32* %retval, align 4, !dbg !470
  br label %return, !dbg !470

if.else:                                          ; preds = %entry
  %14 = load i32 (%struct.cb_node*, i8*)*, i32 (%struct.cb_node*, i8*)** %fn.addr, align 8, !dbg !471
  %15 = load %struct.cb_node*, %struct.cb_node** %p.addr, align 8, !dbg !473
  %16 = load i8*, i8** %arg.addr, align 8, !dbg !474
  %call5 = call i32 %14(%struct.cb_node* %15, i8* %16), !dbg !471
  store i32 %call5, i32* %retval, align 4, !dbg !475
  br label %return, !dbg !475

return:                                           ; preds = %if.else, %cond.end
  %17 = load i32, i32* %retval, align 4, !dbg !476
  ret i32 %17, !dbg !476
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!37}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/cbtree")
!9 = !{!10}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cb_next", file: !8, line: 20, baseType: !11, size: 32, elements: !12)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "CB_CONTINUE", value: 0)
!14 = !DIEnumerator(name: "CB_BREAK", value: 1)
!15 = !{!16, !19}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !17, line: 34, baseType: !18)
!17 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h", directory: "")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cb_node", file: !8, line: 5, size: 192, elements: !21)
!21 = !{!22, !26, !29, !33}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !20, file: !8, line: 6, baseType: !23, size: 128)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 2)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !20, file: !8, line: 11, baseType: !27, size: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 31, baseType: !11)
!28 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!29 = !DIDerivedType(tag: DW_TAG_member, name: "otherbits", scope: !20, file: !8, line: 12, baseType: !30, size: 8, offset: 160)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !31, line: 31, baseType: !32)
!31 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h", directory: "")
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !20, file: !8, line: 13, baseType: !34, offset: 168)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: -1)
!37 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!38 = distinct !DISubprogram(name: "cb_insert", scope: !8, file: !8, line: 61, type: !39, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !49)
!39 = !DISubroutineType(types: !40)
!40 = !{!19, !41, !19, !45}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cb_tree", file: !8, line: 16, size: 64, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !42, file: !8, line: 17, baseType: !19, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 31, baseType: !47)
!46 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !48, line: 94, baseType: !18)
!48 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h", directory: "")
!49 = !{}
!50 = !DILocalVariable(name: "t", arg: 1, scope: !38, file: !8, line: 61, type: !41)
!51 = !DILocation(line: 61, column: 43, scope: !38)
!52 = !DILocalVariable(name: "node", arg: 2, scope: !38, file: !8, line: 61, type: !19)
!53 = !DILocation(line: 61, column: 62, scope: !38)
!54 = !DILocalVariable(name: "klen", arg: 3, scope: !38, file: !8, line: 61, type: !45)
!55 = !DILocation(line: 61, column: 75, scope: !38)
!56 = !DILocalVariable(name: "newbyte", scope: !38, file: !8, line: 63, type: !45)
!57 = !DILocation(line: 63, column: 9, scope: !38)
!58 = !DILocalVariable(name: "newotherbits", scope: !38, file: !8, line: 63, type: !45)
!59 = !DILocation(line: 63, column: 18, scope: !38)
!60 = !DILocalVariable(name: "c", scope: !38, file: !8, line: 64, type: !30)
!61 = !DILocation(line: 64, column: 10, scope: !38)
!62 = !DILocalVariable(name: "newdirection", scope: !38, file: !8, line: 65, type: !63)
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DILocation(line: 65, column: 6, scope: !38)
!65 = !DILocalVariable(name: "wherep", scope: !38, file: !8, line: 66, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!67 = !DILocation(line: 66, column: 19, scope: !38)
!68 = !DILocalVariable(name: "p", scope: !38, file: !8, line: 66, type: !19)
!69 = !DILocation(line: 66, column: 28, scope: !38)
!70 = !DILocation(line: 68, column: 22, scope: !38)
!71 = !DILocation(line: 68, column: 11, scope: !38)
!72 = !DILocation(line: 68, column: 27, scope: !38)
!73 = !DILocation(line: 68, column: 9, scope: !38)
!74 = !DILocation(line: 68, column: 2, scope: !38)
!75 = !DILocation(line: 70, column: 7, scope: !76)
!76 = distinct !DILexicalBlock(scope: !38, file: !8, line: 70, column: 6)
!77 = !DILocation(line: 70, column: 10, scope: !76)
!78 = !DILocation(line: 70, column: 6, scope: !38)
!79 = !DILocation(line: 71, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !8, line: 70, column: 16)
!81 = !DILocation(line: 71, column: 3, scope: !80)
!82 = !DILocation(line: 71, column: 6, scope: !80)
!83 = !DILocation(line: 71, column: 11, scope: !80)
!84 = !DILocation(line: 72, column: 3, scope: !80)
!85 = !DILocation(line: 76, column: 29, scope: !38)
!86 = !DILocation(line: 76, column: 32, scope: !38)
!87 = !DILocation(line: 76, column: 38, scope: !38)
!88 = !DILocation(line: 76, column: 44, scope: !38)
!89 = !DILocation(line: 76, column: 47, scope: !38)
!90 = !DILocation(line: 76, column: 6, scope: !38)
!91 = !DILocation(line: 76, column: 4, scope: !38)
!92 = !DILocation(line: 79, column: 15, scope: !93)
!93 = distinct !DILexicalBlock(scope: !38, file: !8, line: 79, column: 2)
!94 = !DILocation(line: 79, column: 7, scope: !93)
!95 = !DILocation(line: 79, column: 20, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !8, line: 79, column: 2)
!97 = !DILocation(line: 79, column: 30, scope: !96)
!98 = !DILocation(line: 79, column: 28, scope: !96)
!99 = !DILocation(line: 79, column: 2, scope: !93)
!100 = !DILocation(line: 80, column: 7, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !8, line: 80, column: 7)
!102 = distinct !DILexicalBlock(scope: !96, file: !8, line: 79, column: 47)
!103 = !DILocation(line: 80, column: 10, scope: !101)
!104 = !DILocation(line: 80, column: 12, scope: !101)
!105 = !DILocation(line: 80, column: 24, scope: !101)
!106 = !DILocation(line: 80, column: 30, scope: !101)
!107 = !DILocation(line: 80, column: 32, scope: !101)
!108 = !DILocation(line: 80, column: 21, scope: !101)
!109 = !DILocation(line: 80, column: 7, scope: !102)
!110 = !DILocation(line: 81, column: 4, scope: !101)
!111 = !DILocation(line: 82, column: 2, scope: !102)
!112 = !DILocation(line: 79, column: 43, scope: !96)
!113 = !DILocation(line: 79, column: 2, scope: !96)
!114 = distinct !{!114, !99, !115, !116}
!115 = !DILocation(line: 82, column: 2, scope: !93)
!116 = !{!"llvm.loop.mustprogress"}
!117 = !DILocation(line: 83, column: 9, scope: !38)
!118 = !DILocation(line: 83, column: 2, scope: !38)
!119 = !DILabel(scope: !38, name: "different_byte_found", file: !8, line: 85)
!120 = !DILocation(line: 85, column: 1, scope: !38)
!121 = !DILocation(line: 86, column: 17, scope: !38)
!122 = !DILocation(line: 86, column: 20, scope: !38)
!123 = !DILocation(line: 86, column: 22, scope: !38)
!124 = !DILocation(line: 86, column: 33, scope: !38)
!125 = !DILocation(line: 86, column: 39, scope: !38)
!126 = !DILocation(line: 86, column: 41, scope: !38)
!127 = !DILocation(line: 86, column: 31, scope: !38)
!128 = !DILocation(line: 86, column: 15, scope: !38)
!129 = !DILocation(line: 87, column: 18, scope: !38)
!130 = !DILocation(line: 87, column: 31, scope: !38)
!131 = !DILocation(line: 87, column: 15, scope: !38)
!132 = !DILocation(line: 88, column: 18, scope: !38)
!133 = !DILocation(line: 88, column: 31, scope: !38)
!134 = !DILocation(line: 88, column: 15, scope: !38)
!135 = !DILocation(line: 89, column: 18, scope: !38)
!136 = !DILocation(line: 89, column: 31, scope: !38)
!137 = !DILocation(line: 89, column: 15, scope: !38)
!138 = !DILocation(line: 90, column: 18, scope: !38)
!139 = !DILocation(line: 90, column: 35, scope: !38)
!140 = !DILocation(line: 90, column: 48, scope: !38)
!141 = !DILocation(line: 90, column: 33, scope: !38)
!142 = !DILocation(line: 90, column: 31, scope: !38)
!143 = !DILocation(line: 90, column: 55, scope: !38)
!144 = !DILocation(line: 90, column: 15, scope: !38)
!145 = !DILocation(line: 91, column: 6, scope: !38)
!146 = !DILocation(line: 91, column: 9, scope: !38)
!147 = !DILocation(line: 91, column: 11, scope: !38)
!148 = !DILocation(line: 91, column: 4, scope: !38)
!149 = !DILocation(line: 92, column: 23, scope: !38)
!150 = !DILocation(line: 92, column: 38, scope: !38)
!151 = !DILocation(line: 92, column: 36, scope: !38)
!152 = !DILocation(line: 92, column: 20, scope: !38)
!153 = !DILocation(line: 92, column: 42, scope: !38)
!154 = !DILocation(line: 92, column: 17, scope: !38)
!155 = !DILocation(line: 92, column: 15, scope: !38)
!156 = !DILocation(line: 94, column: 15, scope: !38)
!157 = !DILocation(line: 94, column: 2, scope: !38)
!158 = !DILocation(line: 94, column: 8, scope: !38)
!159 = !DILocation(line: 94, column: 13, scope: !38)
!160 = !DILocation(line: 95, column: 20, scope: !38)
!161 = !DILocation(line: 95, column: 2, scope: !38)
!162 = !DILocation(line: 95, column: 8, scope: !38)
!163 = !DILocation(line: 95, column: 18, scope: !38)
!164 = !DILocation(line: 96, column: 34, scope: !38)
!165 = !DILocation(line: 96, column: 2, scope: !38)
!166 = !DILocation(line: 96, column: 8, scope: !38)
!167 = !DILocation(line: 96, column: 18, scope: !38)
!168 = !DILocation(line: 96, column: 16, scope: !38)
!169 = !DILocation(line: 96, column: 32, scope: !38)
!170 = !DILocation(line: 99, column: 12, scope: !38)
!171 = !DILocation(line: 99, column: 15, scope: !38)
!172 = !DILocation(line: 99, column: 9, scope: !38)
!173 = !DILocation(line: 100, column: 2, scope: !38)
!174 = !DILocalVariable(name: "q", scope: !175, file: !8, line: 101, type: !19)
!175 = distinct !DILexicalBlock(scope: !176, file: !8, line: 100, column: 11)
!176 = distinct !DILexicalBlock(scope: !177, file: !8, line: 100, column: 2)
!177 = distinct !DILexicalBlock(scope: !38, file: !8, line: 100, column: 2)
!178 = !DILocation(line: 101, column: 19, scope: !175)
!179 = !DILocalVariable(name: "direction", scope: !175, file: !8, line: 102, type: !45)
!180 = !DILocation(line: 102, column: 10, scope: !175)
!181 = !DILocation(line: 104, column: 8, scope: !175)
!182 = !DILocation(line: 104, column: 7, scope: !175)
!183 = !DILocation(line: 104, column: 5, scope: !175)
!184 = !DILocation(line: 105, column: 24, scope: !185)
!185 = distinct !DILexicalBlock(scope: !175, file: !8, line: 105, column: 7)
!186 = !DILocation(line: 105, column: 13, scope: !185)
!187 = !DILocation(line: 105, column: 11, scope: !185)
!188 = !DILocation(line: 105, column: 7, scope: !175)
!189 = !DILocation(line: 106, column: 4, scope: !185)
!190 = !DILocation(line: 107, column: 18, scope: !175)
!191 = !DILocation(line: 107, column: 7, scope: !175)
!192 = !DILocation(line: 107, column: 5, scope: !175)
!193 = !DILocation(line: 108, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !175, file: !8, line: 108, column: 7)
!195 = !DILocation(line: 108, column: 10, scope: !194)
!196 = !DILocation(line: 108, column: 17, scope: !194)
!197 = !DILocation(line: 108, column: 15, scope: !194)
!198 = !DILocation(line: 108, column: 7, scope: !175)
!199 = !DILocation(line: 109, column: 4, scope: !194)
!200 = !DILocation(line: 110, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !175, file: !8, line: 110, column: 7)
!202 = !DILocation(line: 110, column: 10, scope: !201)
!203 = !DILocation(line: 110, column: 18, scope: !201)
!204 = !DILocation(line: 110, column: 15, scope: !201)
!205 = !DILocation(line: 110, column: 26, scope: !201)
!206 = !DILocation(line: 110, column: 29, scope: !201)
!207 = !DILocation(line: 110, column: 32, scope: !201)
!208 = !DILocation(line: 110, column: 44, scope: !201)
!209 = !DILocation(line: 110, column: 42, scope: !201)
!210 = !DILocation(line: 110, column: 7, scope: !175)
!211 = !DILocation(line: 111, column: 4, scope: !201)
!212 = !DILocation(line: 112, column: 7, scope: !175)
!213 = !DILocation(line: 112, column: 10, scope: !175)
!214 = !DILocation(line: 112, column: 17, scope: !175)
!215 = !DILocation(line: 112, column: 15, scope: !175)
!216 = !DILocation(line: 112, column: 24, scope: !175)
!217 = !DILocation(line: 112, column: 30, scope: !175)
!218 = !DILocation(line: 112, column: 32, scope: !175)
!219 = !DILocation(line: 112, column: 35, scope: !175)
!220 = !DILocation(line: 112, column: 5, scope: !175)
!221 = !DILocation(line: 113, column: 21, scope: !175)
!222 = !DILocation(line: 113, column: 24, scope: !175)
!223 = !DILocation(line: 113, column: 36, scope: !175)
!224 = !DILocation(line: 113, column: 34, scope: !175)
!225 = !DILocation(line: 113, column: 18, scope: !175)
!226 = !DILocation(line: 113, column: 40, scope: !175)
!227 = !DILocation(line: 113, column: 15, scope: !175)
!228 = !DILocation(line: 113, column: 13, scope: !175)
!229 = !DILocation(line: 114, column: 12, scope: !175)
!230 = !DILocation(line: 114, column: 15, scope: !175)
!231 = !DILocation(line: 114, column: 23, scope: !175)
!232 = !DILocation(line: 114, column: 21, scope: !175)
!233 = !DILocation(line: 114, column: 10, scope: !175)
!234 = !DILocation(line: 100, column: 2, scope: !176)
!235 = distinct !{!235, !236, !237}
!236 = !DILocation(line: 100, column: 2, scope: !177)
!237 = !DILocation(line: 115, column: 2, scope: !177)
!238 = !DILocation(line: 117, column: 31, scope: !38)
!239 = !DILocation(line: 117, column: 30, scope: !38)
!240 = !DILocation(line: 117, column: 2, scope: !38)
!241 = !DILocation(line: 117, column: 8, scope: !38)
!242 = !DILocation(line: 117, column: 14, scope: !38)
!243 = !DILocation(line: 117, column: 28, scope: !38)
!244 = !DILocation(line: 118, column: 46, scope: !38)
!245 = !DILocation(line: 118, column: 35, scope: !38)
!246 = !DILocation(line: 118, column: 33, scope: !38)
!247 = !DILocation(line: 118, column: 12, scope: !38)
!248 = !DILocation(line: 118, column: 3, scope: !38)
!249 = !DILocation(line: 118, column: 10, scope: !38)
!250 = !DILocation(line: 120, column: 2, scope: !38)
!251 = !DILocation(line: 121, column: 1, scope: !38)
!252 = distinct !DISubprogram(name: "cb_internal_best_match", scope: !8, file: !8, line: 47, type: !253, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !49)
!253 = !DISubroutineType(types: !254)
!254 = !{!19, !19, !255, !45}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!257 = !DILocalVariable(name: "p", arg: 1, scope: !252, file: !8, line: 47, type: !19)
!258 = !DILocation(line: 47, column: 63, scope: !252)
!259 = !DILocalVariable(name: "k", arg: 2, scope: !252, file: !8, line: 48, type: !255)
!260 = !DILocation(line: 48, column: 21, scope: !252)
!261 = !DILocalVariable(name: "klen", arg: 3, scope: !252, file: !8, line: 48, type: !45)
!262 = !DILocation(line: 48, column: 31, scope: !252)
!263 = !DILocation(line: 50, column: 2, scope: !252)
!264 = !DILocation(line: 50, column: 24, scope: !252)
!265 = !DILocation(line: 50, column: 13, scope: !252)
!266 = !DILocation(line: 50, column: 11, scope: !252)
!267 = !DILocalVariable(name: "q", scope: !268, file: !8, line: 51, type: !19)
!268 = distinct !DILexicalBlock(scope: !252, file: !8, line: 50, column: 27)
!269 = !DILocation(line: 51, column: 19, scope: !268)
!270 = !DILocation(line: 51, column: 34, scope: !268)
!271 = !DILocation(line: 51, column: 23, scope: !268)
!272 = !DILocalVariable(name: "c", scope: !268, file: !8, line: 52, type: !30)
!273 = !DILocation(line: 52, column: 11, scope: !268)
!274 = !DILocation(line: 52, column: 15, scope: !268)
!275 = !DILocation(line: 52, column: 18, scope: !268)
!276 = !DILocation(line: 52, column: 25, scope: !268)
!277 = !DILocation(line: 52, column: 23, scope: !268)
!278 = !DILocation(line: 52, column: 32, scope: !268)
!279 = !DILocation(line: 52, column: 34, scope: !268)
!280 = !DILocation(line: 52, column: 37, scope: !268)
!281 = !DILocalVariable(name: "direction", scope: !268, file: !8, line: 53, type: !45)
!282 = !DILocation(line: 53, column: 10, scope: !268)
!283 = !DILocation(line: 53, column: 28, scope: !268)
!284 = !DILocation(line: 53, column: 31, scope: !268)
!285 = !DILocation(line: 53, column: 43, scope: !268)
!286 = !DILocation(line: 53, column: 41, scope: !268)
!287 = !DILocation(line: 53, column: 25, scope: !268)
!288 = !DILocation(line: 53, column: 47, scope: !268)
!289 = !DILocation(line: 53, column: 22, scope: !268)
!290 = !DILocation(line: 55, column: 7, scope: !268)
!291 = !DILocation(line: 55, column: 10, scope: !268)
!292 = !DILocation(line: 55, column: 16, scope: !268)
!293 = !DILocation(line: 55, column: 5, scope: !268)
!294 = distinct !{!294, !263, !295, !116}
!295 = !DILocation(line: 56, column: 2, scope: !252)
!296 = !DILocation(line: 57, column: 9, scope: !252)
!297 = !DILocation(line: 57, column: 2, scope: !252)
!298 = distinct !DISubprogram(name: "cb_node_of", scope: !8, file: !8, line: 41, type: !299, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !49)
!299 = !DISubroutineType(types: !300)
!300 = !{!19, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!303 = !DILocalVariable(name: "p", arg: 1, scope: !298, file: !8, line: 41, type: !301)
!304 = !DILocation(line: 41, column: 47, scope: !298)
!305 = !DILocation(line: 43, column: 39, scope: !298)
!306 = !DILocation(line: 43, column: 28, scope: !298)
!307 = !DILocation(line: 43, column: 41, scope: !298)
!308 = !DILocation(line: 43, column: 9, scope: !298)
!309 = !DILocation(line: 43, column: 2, scope: !298)
!310 = distinct !DISubprogram(name: "cb_lookup", scope: !8, file: !8, line: 123, type: !311, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !49)
!311 = !DISubroutineType(types: !312)
!312 = !{!19, !41, !255, !45}
!313 = !DILocalVariable(name: "t", arg: 1, scope: !310, file: !8, line: 123, type: !41)
!314 = !DILocation(line: 123, column: 43, scope: !310)
!315 = !DILocalVariable(name: "k", arg: 2, scope: !310, file: !8, line: 123, type: !255)
!316 = !DILocation(line: 123, column: 61, scope: !310)
!317 = !DILocalVariable(name: "klen", arg: 3, scope: !310, file: !8, line: 123, type: !45)
!318 = !DILocation(line: 123, column: 71, scope: !310)
!319 = !DILocalVariable(name: "p", scope: !310, file: !8, line: 125, type: !19)
!320 = !DILocation(line: 125, column: 18, scope: !310)
!321 = !DILocation(line: 125, column: 45, scope: !310)
!322 = !DILocation(line: 125, column: 48, scope: !310)
!323 = !DILocation(line: 125, column: 54, scope: !310)
!324 = !DILocation(line: 125, column: 57, scope: !310)
!325 = !DILocation(line: 125, column: 22, scope: !310)
!326 = !DILocation(line: 127, column: 9, scope: !310)
!327 = !DILocation(line: 127, column: 11, scope: !310)
!328 = !DILocation(line: 127, column: 22, scope: !310)
!329 = !DILocation(line: 127, column: 25, scope: !310)
!330 = !DILocation(line: 127, column: 28, scope: !310)
!331 = !DILocation(line: 127, column: 31, scope: !310)
!332 = !DILocation(line: 127, column: 15, scope: !310)
!333 = !DILocation(line: 127, column: 39, scope: !310)
!334 = !DILocation(line: 127, column: 2, scope: !310)
!335 = distinct !DISubprogram(name: "cb_each", scope: !8, file: !8, line: 142, type: !336, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !49)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !41, !255, !45, !338, !342}
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "cb_iter", file: !8, line: 36, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!10, !19, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!343 = !DILocalVariable(name: "t", arg: 1, scope: !335, file: !8, line: 142, type: !41)
!344 = !DILocation(line: 142, column: 30, scope: !335)
!345 = !DILocalVariable(name: "kpfx", arg: 2, scope: !335, file: !8, line: 142, type: !255)
!346 = !DILocation(line: 142, column: 48, scope: !335)
!347 = !DILocalVariable(name: "klen", arg: 3, scope: !335, file: !8, line: 142, type: !45)
!348 = !DILocation(line: 142, column: 61, scope: !335)
!349 = !DILocalVariable(name: "fn", arg: 4, scope: !335, file: !8, line: 143, type: !338)
!350 = !DILocation(line: 143, column: 12, scope: !335)
!351 = !DILocalVariable(name: "arg", arg: 5, scope: !335, file: !8, line: 143, type: !342)
!352 = !DILocation(line: 143, column: 22, scope: !335)
!353 = !DILocalVariable(name: "p", scope: !335, file: !8, line: 145, type: !19)
!354 = !DILocation(line: 145, column: 18, scope: !335)
!355 = !DILocation(line: 145, column: 22, scope: !335)
!356 = !DILocation(line: 145, column: 25, scope: !335)
!357 = !DILocalVariable(name: "top", scope: !335, file: !8, line: 146, type: !19)
!358 = !DILocation(line: 146, column: 18, scope: !335)
!359 = !DILocation(line: 146, column: 24, scope: !335)
!360 = !DILocalVariable(name: "i", scope: !335, file: !8, line: 147, type: !45)
!361 = !DILocation(line: 147, column: 9, scope: !335)
!362 = !DILocation(line: 149, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !335, file: !8, line: 149, column: 6)
!364 = !DILocation(line: 149, column: 6, scope: !335)
!365 = !DILocation(line: 149, column: 10, scope: !363)
!366 = !DILocation(line: 152, column: 2, scope: !335)
!367 = !DILocation(line: 152, column: 24, scope: !335)
!368 = !DILocation(line: 152, column: 13, scope: !335)
!369 = !DILocation(line: 152, column: 11, scope: !335)
!370 = !DILocalVariable(name: "q", scope: !371, file: !8, line: 153, type: !19)
!371 = distinct !DILexicalBlock(scope: !335, file: !8, line: 152, column: 27)
!372 = !DILocation(line: 153, column: 19, scope: !371)
!373 = !DILocation(line: 153, column: 34, scope: !371)
!374 = !DILocation(line: 153, column: 23, scope: !371)
!375 = !DILocalVariable(name: "c", scope: !371, file: !8, line: 154, type: !30)
!376 = !DILocation(line: 154, column: 11, scope: !371)
!377 = !DILocation(line: 154, column: 15, scope: !371)
!378 = !DILocation(line: 154, column: 18, scope: !371)
!379 = !DILocation(line: 154, column: 25, scope: !371)
!380 = !DILocation(line: 154, column: 23, scope: !371)
!381 = !DILocation(line: 154, column: 32, scope: !371)
!382 = !DILocation(line: 154, column: 37, scope: !371)
!383 = !DILocation(line: 154, column: 40, scope: !371)
!384 = !DILocalVariable(name: "direction", scope: !371, file: !8, line: 155, type: !45)
!385 = !DILocation(line: 155, column: 10, scope: !371)
!386 = !DILocation(line: 155, column: 28, scope: !371)
!387 = !DILocation(line: 155, column: 31, scope: !371)
!388 = !DILocation(line: 155, column: 43, scope: !371)
!389 = !DILocation(line: 155, column: 41, scope: !371)
!390 = !DILocation(line: 155, column: 25, scope: !371)
!391 = !DILocation(line: 155, column: 47, scope: !371)
!392 = !DILocation(line: 155, column: 22, scope: !371)
!393 = !DILocation(line: 157, column: 7, scope: !371)
!394 = !DILocation(line: 157, column: 10, scope: !371)
!395 = !DILocation(line: 157, column: 16, scope: !371)
!396 = !DILocation(line: 157, column: 5, scope: !371)
!397 = !DILocation(line: 158, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !371, file: !8, line: 158, column: 7)
!399 = !DILocation(line: 158, column: 10, scope: !398)
!400 = !DILocation(line: 158, column: 17, scope: !398)
!401 = !DILocation(line: 158, column: 15, scope: !398)
!402 = !DILocation(line: 158, column: 7, scope: !371)
!403 = !DILocation(line: 159, column: 10, scope: !398)
!404 = !DILocation(line: 159, column: 8, scope: !398)
!405 = !DILocation(line: 159, column: 4, scope: !398)
!406 = distinct !{!406, !366, !407, !116}
!407 = !DILocation(line: 160, column: 2, scope: !335)
!408 = !DILocation(line: 162, column: 9, scope: !409)
!409 = distinct !DILexicalBlock(scope: !335, file: !8, line: 162, column: 2)
!410 = !DILocation(line: 162, column: 7, scope: !409)
!411 = !DILocation(line: 162, column: 14, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !8, line: 162, column: 2)
!413 = !DILocation(line: 162, column: 18, scope: !412)
!414 = !DILocation(line: 162, column: 16, scope: !412)
!415 = !DILocation(line: 162, column: 2, scope: !409)
!416 = !DILocation(line: 163, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !8, line: 163, column: 7)
!418 = distinct !DILexicalBlock(scope: !412, file: !8, line: 162, column: 29)
!419 = !DILocation(line: 163, column: 10, scope: !417)
!420 = !DILocation(line: 163, column: 12, scope: !417)
!421 = !DILocation(line: 163, column: 18, scope: !417)
!422 = !DILocation(line: 163, column: 23, scope: !417)
!423 = !DILocation(line: 163, column: 15, scope: !417)
!424 = !DILocation(line: 163, column: 7, scope: !418)
!425 = !DILocation(line: 164, column: 4, scope: !417)
!426 = !DILocation(line: 165, column: 2, scope: !418)
!427 = !DILocation(line: 162, column: 25, scope: !412)
!428 = !DILocation(line: 162, column: 2, scope: !412)
!429 = distinct !{!429, !415, !430, !116}
!430 = !DILocation(line: 165, column: 2, scope: !409)
!431 = !DILocation(line: 166, column: 13, scope: !335)
!432 = !DILocation(line: 166, column: 18, scope: !335)
!433 = !DILocation(line: 166, column: 22, scope: !335)
!434 = !DILocation(line: 166, column: 2, scope: !335)
!435 = !DILocation(line: 167, column: 1, scope: !335)
!436 = distinct !DISubprogram(name: "cb_descend", scope: !8, file: !8, line: 130, type: !437, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !49)
!437 = !DISubroutineType(types: !438)
!438 = !{!10, !19, !338, !342}
!439 = !DILocalVariable(name: "p", arg: 1, scope: !436, file: !8, line: 130, type: !19)
!440 = !DILocation(line: 130, column: 48, scope: !436)
!441 = !DILocalVariable(name: "fn", arg: 2, scope: !436, file: !8, line: 130, type: !338)
!442 = !DILocation(line: 130, column: 59, scope: !436)
!443 = !DILocalVariable(name: "arg", arg: 3, scope: !436, file: !8, line: 130, type: !342)
!444 = !DILocation(line: 130, column: 69, scope: !436)
!445 = !DILocation(line: 132, column: 21, scope: !446)
!446 = distinct !DILexicalBlock(scope: !436, file: !8, line: 132, column: 6)
!447 = !DILocation(line: 132, column: 10, scope: !446)
!448 = !DILocation(line: 132, column: 8, scope: !446)
!449 = !DILocation(line: 132, column: 6, scope: !436)
!450 = !DILocalVariable(name: "q", scope: !451, file: !8, line: 133, type: !19)
!451 = distinct !DILexicalBlock(scope: !446, file: !8, line: 132, column: 24)
!452 = !DILocation(line: 133, column: 19, scope: !451)
!453 = !DILocation(line: 133, column: 34, scope: !451)
!454 = !DILocation(line: 133, column: 23, scope: !451)
!455 = !DILocalVariable(name: "n", scope: !451, file: !8, line: 134, type: !10)
!456 = !DILocation(line: 134, column: 16, scope: !451)
!457 = !DILocation(line: 134, column: 31, scope: !451)
!458 = !DILocation(line: 134, column: 34, scope: !451)
!459 = !DILocation(line: 134, column: 44, scope: !451)
!460 = !DILocation(line: 134, column: 48, scope: !451)
!461 = !DILocation(line: 134, column: 20, scope: !451)
!462 = !DILocation(line: 136, column: 10, scope: !451)
!463 = !DILocation(line: 136, column: 12, scope: !451)
!464 = !DILocation(line: 136, column: 26, scope: !451)
!465 = !DILocation(line: 136, column: 41, scope: !451)
!466 = !DILocation(line: 136, column: 44, scope: !451)
!467 = !DILocation(line: 136, column: 54, scope: !451)
!468 = !DILocation(line: 136, column: 58, scope: !451)
!469 = !DILocation(line: 136, column: 30, scope: !451)
!470 = !DILocation(line: 136, column: 3, scope: !451)
!471 = !DILocation(line: 138, column: 10, scope: !472)
!472 = distinct !DILexicalBlock(scope: !446, file: !8, line: 137, column: 9)
!473 = !DILocation(line: 138, column: 13, scope: !472)
!474 = !DILocation(line: 138, column: 16, scope: !472)
!475 = !DILocation(line: 138, column: 3, scope: !472)
!476 = !DILocation(line: 140, column: 1, scope: !436)
