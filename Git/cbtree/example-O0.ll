; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.cb_tree = type { %struct.cb_node* }
%struct.cb_node = type { [2 x %struct.cb_node*], i32, i8, [0 x i8] }

@__func__.cb_insert = private unnamed_addr constant [10 x i8] c"cb_insert\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"example.c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"!((uintptr_t)node & 1)\00", align 1

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
  %1 = ptrtoint %struct.cb_node* %0 to i64, !dbg !70
  %and = and i64 %1, 1, !dbg !70
  %tobool = icmp ne i64 %and, 0, !dbg !70
  %lnot = xor i1 %tobool, true, !dbg !70
  %lnot1 = xor i1 %lnot, true, !dbg !70
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !70
  %conv = sext i32 %lnot.ext to i64, !dbg !70
  %tobool2 = icmp ne i64 %conv, 0, !dbg !70
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !70

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cb_insert, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !70
  unreachable, !dbg !70

2:                                                ; No predecessors!
  br label %cond.end, !dbg !70

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !70

cond.end:                                         ; preds = %cond.false, %2
  %3 = load %struct.cb_tree*, %struct.cb_tree** %t.addr, align 8, !dbg !71
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %3, i32 0, i32 0, !dbg !73
  %4 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !73
  %tobool3 = icmp ne %struct.cb_node* %4, null, !dbg !71
  br i1 %tobool3, label %if.end, label %if.then, !dbg !74

if.then:                                          ; preds = %cond.end
  %5 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !75
  %6 = load %struct.cb_tree*, %struct.cb_tree** %t.addr, align 8, !dbg !77
  %root4 = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %6, i32 0, i32 0, !dbg !78
  store %struct.cb_node* %5, %struct.cb_node** %root4, align 8, !dbg !79
  store %struct.cb_node* null, %struct.cb_node** %retval, align 8, !dbg !80
  br label %return, !dbg !80

if.end:                                           ; preds = %cond.end
  %7 = load %struct.cb_tree*, %struct.cb_tree** %t.addr, align 8, !dbg !81
  %root5 = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %7, i32 0, i32 0, !dbg !82
  %8 = load %struct.cb_node*, %struct.cb_node** %root5, align 8, !dbg !82
  %9 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !83
  %k = getelementptr inbounds %struct.cb_node, %struct.cb_node* %9, i32 0, i32 3, !dbg !84
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %k, i64 0, i64 0, !dbg !83
  %10 = load i64, i64* %klen.addr, align 8, !dbg !85
  %call = call %struct.cb_node* @cb_internal_best_match(%struct.cb_node* %8, i8* %arraydecay, i64 %10), !dbg !86
  store %struct.cb_node* %call, %struct.cb_node** %p, align 8, !dbg !87
  store i64 0, i64* %newbyte, align 8, !dbg !88
  br label %for.cond, !dbg !90

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i64, i64* %newbyte, align 8, !dbg !91
  %12 = load i64, i64* %klen.addr, align 8, !dbg !93
  %cmp = icmp ult i64 %11, %12, !dbg !94
  br i1 %cmp, label %for.body, label %for.end, !dbg !95

for.body:                                         ; preds = %for.cond
  %13 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !96
  %k7 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %13, i32 0, i32 3, !dbg !99
  %14 = load i64, i64* %newbyte, align 8, !dbg !100
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* %k7, i64 0, i64 %14, !dbg !96
  %15 = load i8, i8* %arrayidx, align 1, !dbg !96
  %conv8 = zext i8 %15 to i32, !dbg !96
  %16 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !101
  %k9 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %16, i32 0, i32 3, !dbg !102
  %17 = load i64, i64* %newbyte, align 8, !dbg !103
  %arrayidx10 = getelementptr inbounds [0 x i8], [0 x i8]* %k9, i64 0, i64 %17, !dbg !101
  %18 = load i8, i8* %arrayidx10, align 1, !dbg !101
  %conv11 = zext i8 %18 to i32, !dbg !101
  %cmp12 = icmp ne i32 %conv8, %conv11, !dbg !104
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !105

if.then14:                                        ; preds = %for.body
  br label %different_byte_found, !dbg !106

if.end15:                                         ; preds = %for.body
  br label %for.inc, !dbg !107

for.inc:                                          ; preds = %if.end15
  %19 = load i64, i64* %newbyte, align 8, !dbg !108
  %inc = add i64 %19, 1, !dbg !108
  store i64 %inc, i64* %newbyte, align 8, !dbg !108
  br label %for.cond, !dbg !109, !llvm.loop !110

for.end:                                          ; preds = %for.cond
  %20 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !113
  store %struct.cb_node* %20, %struct.cb_node** %retval, align 8, !dbg !114
  br label %return, !dbg !114

different_byte_found:                             ; preds = %if.then14
  call void @llvm.dbg.label(metadata !115), !dbg !116
  %21 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !117
  %k16 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %21, i32 0, i32 3, !dbg !118
  %22 = load i64, i64* %newbyte, align 8, !dbg !119
  %arrayidx17 = getelementptr inbounds [0 x i8], [0 x i8]* %k16, i64 0, i64 %22, !dbg !117
  %23 = load i8, i8* %arrayidx17, align 1, !dbg !117
  %conv18 = zext i8 %23 to i32, !dbg !117
  %24 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !120
  %k19 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %24, i32 0, i32 3, !dbg !121
  %25 = load i64, i64* %newbyte, align 8, !dbg !122
  %arrayidx20 = getelementptr inbounds [0 x i8], [0 x i8]* %k19, i64 0, i64 %25, !dbg !120
  %26 = load i8, i8* %arrayidx20, align 1, !dbg !120
  %conv21 = zext i8 %26 to i32, !dbg !120
  %xor = xor i32 %conv18, %conv21, !dbg !123
  %conv22 = sext i32 %xor to i64, !dbg !117
  store i64 %conv22, i64* %newotherbits, align 8, !dbg !124
  %27 = load i64, i64* %newotherbits, align 8, !dbg !125
  %shr = lshr i64 %27, 1, !dbg !126
  %28 = load i64, i64* %newotherbits, align 8, !dbg !127
  %or = or i64 %28, %shr, !dbg !127
  store i64 %or, i64* %newotherbits, align 8, !dbg !127
  %29 = load i64, i64* %newotherbits, align 8, !dbg !128
  %shr23 = lshr i64 %29, 2, !dbg !129
  %30 = load i64, i64* %newotherbits, align 8, !dbg !130
  %or24 = or i64 %30, %shr23, !dbg !130
  store i64 %or24, i64* %newotherbits, align 8, !dbg !130
  %31 = load i64, i64* %newotherbits, align 8, !dbg !131
  %shr25 = lshr i64 %31, 4, !dbg !132
  %32 = load i64, i64* %newotherbits, align 8, !dbg !133
  %or26 = or i64 %32, %shr25, !dbg !133
  store i64 %or26, i64* %newotherbits, align 8, !dbg !133
  %33 = load i64, i64* %newotherbits, align 8, !dbg !134
  %34 = load i64, i64* %newotherbits, align 8, !dbg !135
  %shr27 = lshr i64 %34, 1, !dbg !136
  %neg = xor i64 %shr27, -1, !dbg !137
  %and28 = and i64 %33, %neg, !dbg !138
  %xor29 = xor i64 %and28, 255, !dbg !139
  store i64 %xor29, i64* %newotherbits, align 8, !dbg !140
  %35 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !141
  %k30 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %35, i32 0, i32 3, !dbg !142
  %36 = load i64, i64* %newbyte, align 8, !dbg !143
  %arrayidx31 = getelementptr inbounds [0 x i8], [0 x i8]* %k30, i64 0, i64 %36, !dbg !141
  %37 = load i8, i8* %arrayidx31, align 1, !dbg !141
  store i8 %37, i8* %c, align 1, !dbg !144
  %38 = load i64, i64* %newotherbits, align 8, !dbg !145
  %39 = load i8, i8* %c, align 1, !dbg !146
  %conv32 = zext i8 %39 to i64, !dbg !146
  %or33 = or i64 %38, %conv32, !dbg !147
  %add = add i64 1, %or33, !dbg !148
  %shr34 = lshr i64 %add, 8, !dbg !149
  %conv35 = trunc i64 %shr34 to i32, !dbg !150
  store i32 %conv35, i32* %newdirection, align 4, !dbg !151
  %40 = load i64, i64* %newbyte, align 8, !dbg !152
  %conv36 = trunc i64 %40 to i32, !dbg !152
  %41 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !153
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %41, i32 0, i32 1, !dbg !154
  store i32 %conv36, i32* %byte, align 8, !dbg !155
  %42 = load i64, i64* %newotherbits, align 8, !dbg !156
  %conv37 = trunc i64 %42 to i8, !dbg !156
  %43 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !157
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %43, i32 0, i32 2, !dbg !158
  store i8 %conv37, i8* %otherbits, align 4, !dbg !159
  %44 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !160
  %45 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !161
  %child = getelementptr inbounds %struct.cb_node, %struct.cb_node* %45, i32 0, i32 0, !dbg !162
  %46 = load i32, i32* %newdirection, align 4, !dbg !163
  %sub = sub nsw i32 1, %46, !dbg !164
  %idxprom = sext i32 %sub to i64, !dbg !161
  %arrayidx38 = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child, i64 0, i64 %idxprom, !dbg !161
  store %struct.cb_node* %44, %struct.cb_node** %arrayidx38, align 8, !dbg !165
  %47 = load %struct.cb_tree*, %struct.cb_tree** %t.addr, align 8, !dbg !166
  %root39 = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %47, i32 0, i32 0, !dbg !167
  store %struct.cb_node** %root39, %struct.cb_node*** %wherep, align 8, !dbg !168
  br label %for.cond40, !dbg !169

for.cond40:                                       ; preds = %cond.end73, %different_byte_found
  call void @llvm.dbg.declare(metadata %struct.cb_node** %q, metadata !170, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i64* %direction, metadata !175, metadata !DIExpression()), !dbg !176
  %48 = load %struct.cb_node**, %struct.cb_node*** %wherep, align 8, !dbg !177
  %49 = load %struct.cb_node*, %struct.cb_node** %48, align 8, !dbg !178
  store %struct.cb_node* %49, %struct.cb_node** %p, align 8, !dbg !179
  %50 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !180
  %51 = ptrtoint %struct.cb_node* %50 to i64, !dbg !182
  %and41 = and i64 1, %51, !dbg !183
  %tobool42 = icmp ne i64 %and41, 0, !dbg !183
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !184

if.then43:                                        ; preds = %for.cond40
  br label %for.end84, !dbg !185

if.end44:                                         ; preds = %for.cond40
  %52 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !186
  %53 = bitcast %struct.cb_node* %52 to i8*, !dbg !186
  %call45 = call %struct.cb_node* @cb_node_of(i8* %53), !dbg !187
  store %struct.cb_node* %call45, %struct.cb_node** %q, align 8, !dbg !188
  %54 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !189
  %byte46 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %54, i32 0, i32 1, !dbg !191
  %55 = load i32, i32* %byte46, align 8, !dbg !191
  %conv47 = zext i32 %55 to i64, !dbg !189
  %56 = load i64, i64* %newbyte, align 8, !dbg !192
  %cmp48 = icmp ugt i64 %conv47, %56, !dbg !193
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !194

if.then50:                                        ; preds = %if.end44
  br label %for.end84, !dbg !195

if.end51:                                         ; preds = %if.end44
  %57 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !196
  %byte52 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %57, i32 0, i32 1, !dbg !198
  %58 = load i32, i32* %byte52, align 8, !dbg !198
  %conv53 = zext i32 %58 to i64, !dbg !196
  %59 = load i64, i64* %newbyte, align 8, !dbg !199
  %cmp54 = icmp eq i64 %conv53, %59, !dbg !200
  br i1 %cmp54, label %land.lhs.true, label %if.end61, !dbg !201

land.lhs.true:                                    ; preds = %if.end51
  %60 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !202
  %otherbits56 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %60, i32 0, i32 2, !dbg !203
  %61 = load i8, i8* %otherbits56, align 4, !dbg !203
  %conv57 = zext i8 %61 to i64, !dbg !202
  %62 = load i64, i64* %newotherbits, align 8, !dbg !204
  %cmp58 = icmp ugt i64 %conv57, %62, !dbg !205
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !206

if.then60:                                        ; preds = %land.lhs.true
  br label %for.end84, !dbg !207

if.end61:                                         ; preds = %land.lhs.true, %if.end51
  %63 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !208
  %byte62 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %63, i32 0, i32 1, !dbg !209
  %64 = load i32, i32* %byte62, align 8, !dbg !209
  %conv63 = zext i32 %64 to i64, !dbg !208
  %65 = load i64, i64* %klen.addr, align 8, !dbg !210
  %cmp64 = icmp ult i64 %conv63, %65, !dbg !211
  br i1 %cmp64, label %cond.true66, label %cond.false72, !dbg !208

cond.true66:                                      ; preds = %if.end61
  %66 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !212
  %k67 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %66, i32 0, i32 3, !dbg !213
  %67 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !214
  %byte68 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %67, i32 0, i32 1, !dbg !215
  %68 = load i32, i32* %byte68, align 8, !dbg !215
  %idxprom69 = zext i32 %68 to i64, !dbg !212
  %arrayidx70 = getelementptr inbounds [0 x i8], [0 x i8]* %k67, i64 0, i64 %idxprom69, !dbg !212
  %69 = load i8, i8* %arrayidx70, align 1, !dbg !212
  %conv71 = zext i8 %69 to i32, !dbg !212
  br label %cond.end73, !dbg !208

cond.false72:                                     ; preds = %if.end61
  br label %cond.end73, !dbg !208

cond.end73:                                       ; preds = %cond.false72, %cond.true66
  %cond = phi i32 [ %conv71, %cond.true66 ], [ 0, %cond.false72 ], !dbg !208
  %conv74 = trunc i32 %cond to i8, !dbg !208
  store i8 %conv74, i8* %c, align 1, !dbg !216
  %70 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !217
  %otherbits75 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %70, i32 0, i32 2, !dbg !218
  %71 = load i8, i8* %otherbits75, align 4, !dbg !218
  %conv76 = zext i8 %71 to i32, !dbg !217
  %72 = load i8, i8* %c, align 1, !dbg !219
  %conv77 = zext i8 %72 to i32, !dbg !219
  %or78 = or i32 %conv76, %conv77, !dbg !220
  %add79 = add nsw i32 1, %or78, !dbg !221
  %shr80 = ashr i32 %add79, 8, !dbg !222
  %conv81 = sext i32 %shr80 to i64, !dbg !223
  store i64 %conv81, i64* %direction, align 8, !dbg !224
  %73 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !225
  %child82 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %73, i32 0, i32 0, !dbg !226
  %arraydecay83 = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child82, i64 0, i64 0, !dbg !225
  %74 = load i64, i64* %direction, align 8, !dbg !227
  %add.ptr = getelementptr inbounds %struct.cb_node*, %struct.cb_node** %arraydecay83, i64 %74, !dbg !228
  store %struct.cb_node** %add.ptr, %struct.cb_node*** %wherep, align 8, !dbg !229
  br label %for.cond40, !dbg !230, !llvm.loop !231

for.end84:                                        ; preds = %if.then60, %if.then50, %if.then43
  %75 = load %struct.cb_node**, %struct.cb_node*** %wherep, align 8, !dbg !234
  %76 = load %struct.cb_node*, %struct.cb_node** %75, align 8, !dbg !235
  %77 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !236
  %child85 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %77, i32 0, i32 0, !dbg !237
  %78 = load i32, i32* %newdirection, align 4, !dbg !238
  %idxprom86 = sext i32 %78 to i64, !dbg !236
  %arrayidx87 = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child85, i64 0, i64 %idxprom86, !dbg !236
  store %struct.cb_node* %76, %struct.cb_node** %arrayidx87, align 8, !dbg !239
  %79 = load %struct.cb_node*, %struct.cb_node** %node.addr, align 8, !dbg !240
  %80 = ptrtoint %struct.cb_node* %79 to i64, !dbg !241
  %add88 = add i64 1, %80, !dbg !242
  %81 = inttoptr i64 %add88 to %struct.cb_node*, !dbg !243
  %82 = load %struct.cb_node**, %struct.cb_node*** %wherep, align 8, !dbg !244
  store %struct.cb_node* %81, %struct.cb_node** %82, align 8, !dbg !245
  store %struct.cb_node* null, %struct.cb_node** %retval, align 8, !dbg !246
  br label %return, !dbg !246

return:                                           ; preds = %for.end84, %for.end, %if.then
  %83 = load %struct.cb_node*, %struct.cb_node** %retval, align 8, !dbg !247
  ret %struct.cb_node* %83, !dbg !247
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal %struct.cb_node* @cb_internal_best_match(%struct.cb_node* %p, i8* %k, i64 %klen) #0 !dbg !248 {
entry:
  %p.addr = alloca %struct.cb_node*, align 8
  %k.addr = alloca i8*, align 8
  %klen.addr = alloca i64, align 8
  %q = alloca %struct.cb_node*, align 8
  %c = alloca i8, align 1
  %direction = alloca i64, align 8
  store %struct.cb_node* %p, %struct.cb_node** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cb_node** %p.addr, metadata !253, metadata !DIExpression()), !dbg !254
  store i8* %k, i8** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %k.addr, metadata !255, metadata !DIExpression()), !dbg !256
  store i64 %klen, i64* %klen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %klen.addr, metadata !257, metadata !DIExpression()), !dbg !258
  br label %while.cond, !dbg !259

while.cond:                                       ; preds = %cond.end, %entry
  %0 = load %struct.cb_node*, %struct.cb_node** %p.addr, align 8, !dbg !260
  %1 = ptrtoint %struct.cb_node* %0 to i64, !dbg !261
  %and = and i64 1, %1, !dbg !262
  %tobool = icmp ne i64 %and, 0, !dbg !259
  br i1 %tobool, label %while.body, label %while.end, !dbg !259

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.cb_node** %q, metadata !263, metadata !DIExpression()), !dbg !265
  %2 = load %struct.cb_node*, %struct.cb_node** %p.addr, align 8, !dbg !266
  %3 = bitcast %struct.cb_node* %2 to i8*, !dbg !266
  %call = call %struct.cb_node* @cb_node_of(i8* %3), !dbg !267
  store %struct.cb_node* %call, %struct.cb_node** %q, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata i8* %c, metadata !268, metadata !DIExpression()), !dbg !269
  %4 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !270
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %4, i32 0, i32 1, !dbg !271
  %5 = load i32, i32* %byte, align 8, !dbg !271
  %conv = zext i32 %5 to i64, !dbg !270
  %6 = load i64, i64* %klen.addr, align 8, !dbg !272
  %cmp = icmp ult i64 %conv, %6, !dbg !273
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !270

cond.true:                                        ; preds = %while.body
  %7 = load i8*, i8** %k.addr, align 8, !dbg !274
  %8 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !275
  %byte2 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %8, i32 0, i32 1, !dbg !276
  %9 = load i32, i32* %byte2, align 8, !dbg !276
  %idxprom = zext i32 %9 to i64, !dbg !274
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom, !dbg !274
  %10 = load i8, i8* %arrayidx, align 1, !dbg !274
  %conv3 = zext i8 %10 to i32, !dbg !274
  br label %cond.end, !dbg !270

cond.false:                                       ; preds = %while.body
  br label %cond.end, !dbg !270

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ 0, %cond.false ], !dbg !270
  %conv4 = trunc i32 %cond to i8, !dbg !270
  store i8 %conv4, i8* %c, align 1, !dbg !269
  call void @llvm.dbg.declare(metadata i64* %direction, metadata !277, metadata !DIExpression()), !dbg !278
  %11 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !279
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %11, i32 0, i32 2, !dbg !280
  %12 = load i8, i8* %otherbits, align 4, !dbg !280
  %conv5 = zext i8 %12 to i32, !dbg !279
  %13 = load i8, i8* %c, align 1, !dbg !281
  %conv6 = zext i8 %13 to i32, !dbg !281
  %or = or i32 %conv5, %conv6, !dbg !282
  %add = add nsw i32 1, %or, !dbg !283
  %shr = ashr i32 %add, 8, !dbg !284
  %conv7 = sext i32 %shr to i64, !dbg !285
  store i64 %conv7, i64* %direction, align 8, !dbg !278
  %14 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !286
  %child = getelementptr inbounds %struct.cb_node, %struct.cb_node* %14, i32 0, i32 0, !dbg !287
  %15 = load i64, i64* %direction, align 8, !dbg !288
  %arrayidx8 = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child, i64 0, i64 %15, !dbg !286
  %16 = load %struct.cb_node*, %struct.cb_node** %arrayidx8, align 8, !dbg !286
  store %struct.cb_node* %16, %struct.cb_node** %p.addr, align 8, !dbg !289
  br label %while.cond, !dbg !259, !llvm.loop !290

while.end:                                        ; preds = %while.cond
  %17 = load %struct.cb_node*, %struct.cb_node** %p.addr, align 8, !dbg !292
  ret %struct.cb_node* %17, !dbg !293
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define internal %struct.cb_node* @cb_node_of(i8* %p) #0 !dbg !294 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = load i8*, i8** %p.addr, align 8, !dbg !301
  %1 = ptrtoint i8* %0 to i64, !dbg !302
  %sub = sub i64 %1, 1, !dbg !303
  %2 = inttoptr i64 %sub to %struct.cb_node*, !dbg !304
  ret %struct.cb_node* %2, !dbg !305
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.cb_node* @cb_lookup(%struct.cb_tree* %t, i8* %k, i64 %klen) #0 !dbg !306 {
entry:
  %t.addr = alloca %struct.cb_tree*, align 8
  %k.addr = alloca i8*, align 8
  %klen.addr = alloca i64, align 8
  %p = alloca %struct.cb_node*, align 8
  store %struct.cb_tree* %t, %struct.cb_tree** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cb_tree** %t.addr, metadata !309, metadata !DIExpression()), !dbg !310
  store i8* %k, i8** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %k.addr, metadata !311, metadata !DIExpression()), !dbg !312
  store i64 %klen, i64* %klen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %klen.addr, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata %struct.cb_node** %p, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = load %struct.cb_tree*, %struct.cb_tree** %t.addr, align 8, !dbg !317
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %0, i32 0, i32 0, !dbg !318
  %1 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !318
  %2 = load i8*, i8** %k.addr, align 8, !dbg !319
  %3 = load i64, i64* %klen.addr, align 8, !dbg !320
  %call = call %struct.cb_node* @cb_internal_best_match(%struct.cb_node* %1, i8* %2, i64 %3), !dbg !321
  store %struct.cb_node* %call, %struct.cb_node** %p, align 8, !dbg !316
  %4 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !322
  %tobool = icmp ne %struct.cb_node* %4, null, !dbg !322
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !323

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !324
  %k1 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %5, i32 0, i32 3, !dbg !325
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %k1, i64 0, i64 0, !dbg !324
  %6 = load i8*, i8** %k.addr, align 8, !dbg !326
  %7 = load i64, i64* %klen.addr, align 8, !dbg !327
  %call2 = call i32 @memcmp(i8* %arraydecay, i8* %6, i64 %7), !dbg !328
  %tobool3 = icmp ne i32 %call2, 0, !dbg !328
  br i1 %tobool3, label %cond.false, label %cond.true, !dbg !322

cond.true:                                        ; preds = %land.lhs.true
  %8 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !329
  br label %cond.end, !dbg !322

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end, !dbg !322

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.cb_node* [ %8, %cond.true ], [ null, %cond.false ], !dbg !322
  ret %struct.cb_node* %cond, !dbg !330
}

declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @cb_each(%struct.cb_tree* %t, i8* %kpfx, i64 %klen, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg) #0 !dbg !331 {
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
  call void @llvm.dbg.declare(metadata %struct.cb_tree** %t.addr, metadata !339, metadata !DIExpression()), !dbg !340
  store i8* %kpfx, i8** %kpfx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %kpfx.addr, metadata !341, metadata !DIExpression()), !dbg !342
  store i64 %klen, i64* %klen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %klen.addr, metadata !343, metadata !DIExpression()), !dbg !344
  store i32 (%struct.cb_node*, i8*)* %fn, i32 (%struct.cb_node*, i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.cb_node*, i8*)** %fn.addr, metadata !345, metadata !DIExpression()), !dbg !346
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata %struct.cb_node** %p, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load %struct.cb_tree*, %struct.cb_tree** %t.addr, align 8, !dbg !351
  %root = getelementptr inbounds %struct.cb_tree, %struct.cb_tree* %0, i32 0, i32 0, !dbg !352
  %1 = load %struct.cb_node*, %struct.cb_node** %root, align 8, !dbg !352
  store %struct.cb_node* %1, %struct.cb_node** %p, align 8, !dbg !350
  call void @llvm.dbg.declare(metadata %struct.cb_node** %top, metadata !353, metadata !DIExpression()), !dbg !354
  %2 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !355
  store %struct.cb_node* %2, %struct.cb_node** %top, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata i64* %i, metadata !356, metadata !DIExpression()), !dbg !357
  store i64 0, i64* %i, align 8, !dbg !357
  %3 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !358
  %tobool = icmp ne %struct.cb_node* %3, null, !dbg !358
  br i1 %tobool, label %if.end, label %if.then, !dbg !360

if.then:                                          ; preds = %entry
  br label %return, !dbg !361

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !362

while.cond:                                       ; preds = %if.end15, %if.end
  %4 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !363
  %5 = ptrtoint %struct.cb_node* %4 to i64, !dbg !364
  %and = and i64 1, %5, !dbg !365
  %tobool1 = icmp ne i64 %and, 0, !dbg !362
  br i1 %tobool1, label %while.body, label %while.end, !dbg !362

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.cb_node** %q, metadata !366, metadata !DIExpression()), !dbg !368
  %6 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !369
  %7 = bitcast %struct.cb_node* %6 to i8*, !dbg !369
  %call = call %struct.cb_node* @cb_node_of(i8* %7), !dbg !370
  store %struct.cb_node* %call, %struct.cb_node** %q, align 8, !dbg !368
  call void @llvm.dbg.declare(metadata i8* %c, metadata !371, metadata !DIExpression()), !dbg !372
  %8 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !373
  %byte = getelementptr inbounds %struct.cb_node, %struct.cb_node* %8, i32 0, i32 1, !dbg !374
  %9 = load i32, i32* %byte, align 8, !dbg !374
  %conv = zext i32 %9 to i64, !dbg !373
  %10 = load i64, i64* %klen.addr, align 8, !dbg !375
  %cmp = icmp ult i64 %conv, %10, !dbg !376
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !373

cond.true:                                        ; preds = %while.body
  %11 = load i8*, i8** %kpfx.addr, align 8, !dbg !377
  %12 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !378
  %byte3 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %12, i32 0, i32 1, !dbg !379
  %13 = load i32, i32* %byte3, align 8, !dbg !379
  %idxprom = zext i32 %13 to i64, !dbg !377
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom, !dbg !377
  %14 = load i8, i8* %arrayidx, align 1, !dbg !377
  %conv4 = zext i8 %14 to i32, !dbg !377
  br label %cond.end, !dbg !373

cond.false:                                       ; preds = %while.body
  br label %cond.end, !dbg !373

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ 0, %cond.false ], !dbg !373
  %conv5 = trunc i32 %cond to i8, !dbg !373
  store i8 %conv5, i8* %c, align 1, !dbg !372
  call void @llvm.dbg.declare(metadata i64* %direction, metadata !380, metadata !DIExpression()), !dbg !381
  %15 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !382
  %otherbits = getelementptr inbounds %struct.cb_node, %struct.cb_node* %15, i32 0, i32 2, !dbg !383
  %16 = load i8, i8* %otherbits, align 4, !dbg !383
  %conv6 = zext i8 %16 to i32, !dbg !382
  %17 = load i8, i8* %c, align 1, !dbg !384
  %conv7 = zext i8 %17 to i32, !dbg !384
  %or = or i32 %conv6, %conv7, !dbg !385
  %add = add nsw i32 1, %or, !dbg !386
  %shr = ashr i32 %add, 8, !dbg !387
  %conv8 = sext i32 %shr to i64, !dbg !388
  store i64 %conv8, i64* %direction, align 8, !dbg !381
  %18 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !389
  %child = getelementptr inbounds %struct.cb_node, %struct.cb_node* %18, i32 0, i32 0, !dbg !390
  %19 = load i64, i64* %direction, align 8, !dbg !391
  %arrayidx9 = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child, i64 0, i64 %19, !dbg !389
  %20 = load %struct.cb_node*, %struct.cb_node** %arrayidx9, align 8, !dbg !389
  store %struct.cb_node* %20, %struct.cb_node** %p, align 8, !dbg !392
  %21 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !393
  %byte10 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %21, i32 0, i32 1, !dbg !395
  %22 = load i32, i32* %byte10, align 8, !dbg !395
  %conv11 = zext i32 %22 to i64, !dbg !393
  %23 = load i64, i64* %klen.addr, align 8, !dbg !396
  %cmp12 = icmp ult i64 %conv11, %23, !dbg !397
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !398

if.then14:                                        ; preds = %cond.end
  %24 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !399
  store %struct.cb_node* %24, %struct.cb_node** %top, align 8, !dbg !400
  br label %if.end15, !dbg !401

if.end15:                                         ; preds = %if.then14, %cond.end
  br label %while.cond, !dbg !362, !llvm.loop !402

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %i, align 8, !dbg !404
  br label %for.cond, !dbg !406

for.cond:                                         ; preds = %for.inc, %while.end
  %25 = load i64, i64* %i, align 8, !dbg !407
  %26 = load i64, i64* %klen.addr, align 8, !dbg !409
  %cmp16 = icmp ult i64 %25, %26, !dbg !410
  br i1 %cmp16, label %for.body, label %for.end, !dbg !411

for.body:                                         ; preds = %for.cond
  %27 = load %struct.cb_node*, %struct.cb_node** %p, align 8, !dbg !412
  %k = getelementptr inbounds %struct.cb_node, %struct.cb_node* %27, i32 0, i32 3, !dbg !415
  %28 = load i64, i64* %i, align 8, !dbg !416
  %arrayidx18 = getelementptr inbounds [0 x i8], [0 x i8]* %k, i64 0, i64 %28, !dbg !412
  %29 = load i8, i8* %arrayidx18, align 1, !dbg !412
  %conv19 = zext i8 %29 to i32, !dbg !412
  %30 = load i8*, i8** %kpfx.addr, align 8, !dbg !417
  %31 = load i64, i64* %i, align 8, !dbg !418
  %arrayidx20 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !417
  %32 = load i8, i8* %arrayidx20, align 1, !dbg !417
  %conv21 = zext i8 %32 to i32, !dbg !417
  %cmp22 = icmp ne i32 %conv19, %conv21, !dbg !419
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !420

if.then24:                                        ; preds = %for.body
  br label %return, !dbg !421

if.end25:                                         ; preds = %for.body
  br label %for.inc, !dbg !422

for.inc:                                          ; preds = %if.end25
  %33 = load i64, i64* %i, align 8, !dbg !423
  %inc = add i64 %33, 1, !dbg !423
  store i64 %inc, i64* %i, align 8, !dbg !423
  br label %for.cond, !dbg !424, !llvm.loop !425

for.end:                                          ; preds = %for.cond
  %34 = load %struct.cb_node*, %struct.cb_node** %top, align 8, !dbg !427
  %35 = load i32 (%struct.cb_node*, i8*)*, i32 (%struct.cb_node*, i8*)** %fn.addr, align 8, !dbg !428
  %36 = load i8*, i8** %arg.addr, align 8, !dbg !429
  %call26 = call i32 @cb_descend(%struct.cb_node* %34, i32 (%struct.cb_node*, i8*)* %35, i8* %36), !dbg !430
  br label %return, !dbg !431

return:                                           ; preds = %for.end, %if.then24, %if.then
  ret void, !dbg !431
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @cb_descend(%struct.cb_node* %p, i32 (%struct.cb_node*, i8*)* %fn, i8* %arg) #0 !dbg !432 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.cb_node*, align 8
  %fn.addr = alloca i32 (%struct.cb_node*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %q = alloca %struct.cb_node*, align 8
  %n = alloca i32, align 4
  store %struct.cb_node* %p, %struct.cb_node** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cb_node** %p.addr, metadata !435, metadata !DIExpression()), !dbg !436
  store i32 (%struct.cb_node*, i8*)* %fn, i32 (%struct.cb_node*, i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.cb_node*, i8*)** %fn.addr, metadata !437, metadata !DIExpression()), !dbg !438
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !439, metadata !DIExpression()), !dbg !440
  %0 = load %struct.cb_node*, %struct.cb_node** %p.addr, align 8, !dbg !441
  %1 = ptrtoint %struct.cb_node* %0 to i64, !dbg !443
  %and = and i64 1, %1, !dbg !444
  %tobool = icmp ne i64 %and, 0, !dbg !444
  br i1 %tobool, label %if.then, label %if.else, !dbg !445

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.cb_node** %q, metadata !446, metadata !DIExpression()), !dbg !448
  %2 = load %struct.cb_node*, %struct.cb_node** %p.addr, align 8, !dbg !449
  %3 = bitcast %struct.cb_node* %2 to i8*, !dbg !449
  %call = call %struct.cb_node* @cb_node_of(i8* %3), !dbg !450
  store %struct.cb_node* %call, %struct.cb_node** %q, align 8, !dbg !448
  call void @llvm.dbg.declare(metadata i32* %n, metadata !451, metadata !DIExpression()), !dbg !452
  %4 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !453
  %child = getelementptr inbounds %struct.cb_node, %struct.cb_node* %4, i32 0, i32 0, !dbg !454
  %arrayidx = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child, i64 0, i64 0, !dbg !453
  %5 = load %struct.cb_node*, %struct.cb_node** %arrayidx, align 8, !dbg !453
  %6 = load i32 (%struct.cb_node*, i8*)*, i32 (%struct.cb_node*, i8*)** %fn.addr, align 8, !dbg !455
  %7 = load i8*, i8** %arg.addr, align 8, !dbg !456
  %call1 = call i32 @cb_descend(%struct.cb_node* %5, i32 (%struct.cb_node*, i8*)* %6, i8* %7), !dbg !457
  store i32 %call1, i32* %n, align 4, !dbg !452
  %8 = load i32, i32* %n, align 4, !dbg !458
  %cmp = icmp eq i32 %8, 1, !dbg !459
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !458

cond.true:                                        ; preds = %if.then
  %9 = load i32, i32* %n, align 4, !dbg !460
  br label %cond.end, !dbg !458

cond.false:                                       ; preds = %if.then
  %10 = load %struct.cb_node*, %struct.cb_node** %q, align 8, !dbg !461
  %child2 = getelementptr inbounds %struct.cb_node, %struct.cb_node* %10, i32 0, i32 0, !dbg !462
  %arrayidx3 = getelementptr inbounds [2 x %struct.cb_node*], [2 x %struct.cb_node*]* %child2, i64 0, i64 1, !dbg !461
  %11 = load %struct.cb_node*, %struct.cb_node** %arrayidx3, align 8, !dbg !461
  %12 = load i32 (%struct.cb_node*, i8*)*, i32 (%struct.cb_node*, i8*)** %fn.addr, align 8, !dbg !463
  %13 = load i8*, i8** %arg.addr, align 8, !dbg !464
  %call4 = call i32 @cb_descend(%struct.cb_node* %11, i32 (%struct.cb_node*, i8*)* %12, i8* %13), !dbg !465
  br label %cond.end, !dbg !458

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %call4, %cond.false ], !dbg !458
  store i32 %cond, i32* %retval, align 4, !dbg !466
  br label %return, !dbg !466

if.else:                                          ; preds = %entry
  %14 = load i32 (%struct.cb_node*, i8*)*, i32 (%struct.cb_node*, i8*)** %fn.addr, align 8, !dbg !467
  %15 = load %struct.cb_node*, %struct.cb_node** %p.addr, align 8, !dbg !469
  %16 = load i8*, i8** %arg.addr, align 8, !dbg !470
  %call5 = call i32 %14(%struct.cb_node* %15, i8* %16), !dbg !467
  store i32 %call5, i32* %retval, align 4, !dbg !471
  br label %return, !dbg !471

return:                                           ; preds = %if.else, %cond.end
  %17 = load i32, i32* %retval, align 4, !dbg !472
  ret i32 %17, !dbg !472
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }

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
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cb_next", file: !8, line: 21, baseType: !11, size: 32, elements: !12)
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "CB_CONTINUE", value: 0)
!14 = !DIEnumerator(name: "CB_BREAK", value: 1)
!15 = !{!16, !19}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !17, line: 34, baseType: !18)
!17 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h", directory: "")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cb_node", file: !8, line: 6, size: 192, elements: !21)
!21 = !{!22, !26, !29, !33}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !20, file: !8, line: 7, baseType: !23, size: 128)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 2)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !20, file: !8, line: 12, baseType: !27, size: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !28, line: 31, baseType: !11)
!28 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h", directory: "")
!29 = !DIDerivedType(tag: DW_TAG_member, name: "otherbits", scope: !20, file: !8, line: 13, baseType: !30, size: 8, offset: 160)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !31, line: 31, baseType: !32)
!31 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h", directory: "")
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !20, file: !8, line: 14, baseType: !34, offset: 168)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: -1)
!37 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!38 = distinct !DISubprogram(name: "cb_insert", scope: !8, file: !8, line: 62, type: !39, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !49)
!39 = !DISubroutineType(types: !40)
!40 = !{!19, !41, !19, !45}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cb_tree", file: !8, line: 17, size: 64, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !42, file: !8, line: 18, baseType: !19, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 31, baseType: !47)
!46 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !48, line: 94, baseType: !18)
!48 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h", directory: "")
!49 = !{}
!50 = !DILocalVariable(name: "t", arg: 1, scope: !38, file: !8, line: 62, type: !41)
!51 = !DILocation(line: 62, column: 43, scope: !38)
!52 = !DILocalVariable(name: "node", arg: 2, scope: !38, file: !8, line: 62, type: !19)
!53 = !DILocation(line: 62, column: 62, scope: !38)
!54 = !DILocalVariable(name: "klen", arg: 3, scope: !38, file: !8, line: 62, type: !45)
!55 = !DILocation(line: 62, column: 75, scope: !38)
!56 = !DILocalVariable(name: "newbyte", scope: !38, file: !8, line: 64, type: !45)
!57 = !DILocation(line: 64, column: 10, scope: !38)
!58 = !DILocalVariable(name: "newotherbits", scope: !38, file: !8, line: 64, type: !45)
!59 = !DILocation(line: 64, column: 19, scope: !38)
!60 = !DILocalVariable(name: "c", scope: !38, file: !8, line: 65, type: !30)
!61 = !DILocation(line: 65, column: 11, scope: !38)
!62 = !DILocalVariable(name: "newdirection", scope: !38, file: !8, line: 66, type: !63)
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DILocation(line: 66, column: 7, scope: !38)
!65 = !DILocalVariable(name: "wherep", scope: !38, file: !8, line: 67, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!67 = !DILocation(line: 67, column: 20, scope: !38)
!68 = !DILocalVariable(name: "p", scope: !38, file: !8, line: 67, type: !19)
!69 = !DILocation(line: 67, column: 29, scope: !38)
!70 = !DILocation(line: 69, column: 3, scope: !38)
!71 = !DILocation(line: 71, column: 8, scope: !72)
!72 = distinct !DILexicalBlock(scope: !38, file: !8, line: 71, column: 7)
!73 = !DILocation(line: 71, column: 11, scope: !72)
!74 = !DILocation(line: 71, column: 7, scope: !38)
!75 = !DILocation(line: 72, column: 15, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !8, line: 71, column: 17)
!77 = !DILocation(line: 72, column: 5, scope: !76)
!78 = !DILocation(line: 72, column: 8, scope: !76)
!79 = !DILocation(line: 72, column: 13, scope: !76)
!80 = !DILocation(line: 73, column: 5, scope: !76)
!81 = !DILocation(line: 77, column: 30, scope: !38)
!82 = !DILocation(line: 77, column: 33, scope: !38)
!83 = !DILocation(line: 77, column: 39, scope: !38)
!84 = !DILocation(line: 77, column: 45, scope: !38)
!85 = !DILocation(line: 77, column: 48, scope: !38)
!86 = !DILocation(line: 77, column: 7, scope: !38)
!87 = !DILocation(line: 77, column: 5, scope: !38)
!88 = !DILocation(line: 80, column: 16, scope: !89)
!89 = distinct !DILexicalBlock(scope: !38, file: !8, line: 80, column: 3)
!90 = !DILocation(line: 80, column: 8, scope: !89)
!91 = !DILocation(line: 80, column: 21, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !8, line: 80, column: 3)
!93 = !DILocation(line: 80, column: 31, scope: !92)
!94 = !DILocation(line: 80, column: 29, scope: !92)
!95 = !DILocation(line: 80, column: 3, scope: !89)
!96 = !DILocation(line: 81, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !8, line: 81, column: 9)
!98 = distinct !DILexicalBlock(scope: !92, file: !8, line: 80, column: 48)
!99 = !DILocation(line: 81, column: 12, scope: !97)
!100 = !DILocation(line: 81, column: 14, scope: !97)
!101 = !DILocation(line: 81, column: 26, scope: !97)
!102 = !DILocation(line: 81, column: 32, scope: !97)
!103 = !DILocation(line: 81, column: 34, scope: !97)
!104 = !DILocation(line: 81, column: 23, scope: !97)
!105 = !DILocation(line: 81, column: 9, scope: !98)
!106 = !DILocation(line: 82, column: 7, scope: !97)
!107 = !DILocation(line: 83, column: 3, scope: !98)
!108 = !DILocation(line: 80, column: 44, scope: !92)
!109 = !DILocation(line: 80, column: 3, scope: !92)
!110 = distinct !{!110, !95, !111, !112}
!111 = !DILocation(line: 83, column: 3, scope: !89)
!112 = !{!"llvm.loop.mustprogress"}
!113 = !DILocation(line: 84, column: 10, scope: !38)
!114 = !DILocation(line: 84, column: 3, scope: !38)
!115 = !DILabel(scope: !38, name: "different_byte_found", file: !8, line: 86)
!116 = !DILocation(line: 86, column: 1, scope: !38)
!117 = !DILocation(line: 87, column: 18, scope: !38)
!118 = !DILocation(line: 87, column: 21, scope: !38)
!119 = !DILocation(line: 87, column: 23, scope: !38)
!120 = !DILocation(line: 87, column: 34, scope: !38)
!121 = !DILocation(line: 87, column: 40, scope: !38)
!122 = !DILocation(line: 87, column: 42, scope: !38)
!123 = !DILocation(line: 87, column: 32, scope: !38)
!124 = !DILocation(line: 87, column: 16, scope: !38)
!125 = !DILocation(line: 88, column: 19, scope: !38)
!126 = !DILocation(line: 88, column: 32, scope: !38)
!127 = !DILocation(line: 88, column: 16, scope: !38)
!128 = !DILocation(line: 89, column: 19, scope: !38)
!129 = !DILocation(line: 89, column: 32, scope: !38)
!130 = !DILocation(line: 89, column: 16, scope: !38)
!131 = !DILocation(line: 90, column: 19, scope: !38)
!132 = !DILocation(line: 90, column: 32, scope: !38)
!133 = !DILocation(line: 90, column: 16, scope: !38)
!134 = !DILocation(line: 91, column: 19, scope: !38)
!135 = !DILocation(line: 91, column: 36, scope: !38)
!136 = !DILocation(line: 91, column: 49, scope: !38)
!137 = !DILocation(line: 91, column: 34, scope: !38)
!138 = !DILocation(line: 91, column: 32, scope: !38)
!139 = !DILocation(line: 91, column: 56, scope: !38)
!140 = !DILocation(line: 91, column: 16, scope: !38)
!141 = !DILocation(line: 92, column: 7, scope: !38)
!142 = !DILocation(line: 92, column: 10, scope: !38)
!143 = !DILocation(line: 92, column: 12, scope: !38)
!144 = !DILocation(line: 92, column: 5, scope: !38)
!145 = !DILocation(line: 93, column: 24, scope: !38)
!146 = !DILocation(line: 93, column: 39, scope: !38)
!147 = !DILocation(line: 93, column: 37, scope: !38)
!148 = !DILocation(line: 93, column: 21, scope: !38)
!149 = !DILocation(line: 93, column: 43, scope: !38)
!150 = !DILocation(line: 93, column: 18, scope: !38)
!151 = !DILocation(line: 93, column: 16, scope: !38)
!152 = !DILocation(line: 95, column: 16, scope: !38)
!153 = !DILocation(line: 95, column: 3, scope: !38)
!154 = !DILocation(line: 95, column: 9, scope: !38)
!155 = !DILocation(line: 95, column: 14, scope: !38)
!156 = !DILocation(line: 96, column: 21, scope: !38)
!157 = !DILocation(line: 96, column: 3, scope: !38)
!158 = !DILocation(line: 96, column: 9, scope: !38)
!159 = !DILocation(line: 96, column: 19, scope: !38)
!160 = !DILocation(line: 97, column: 35, scope: !38)
!161 = !DILocation(line: 97, column: 3, scope: !38)
!162 = !DILocation(line: 97, column: 9, scope: !38)
!163 = !DILocation(line: 97, column: 19, scope: !38)
!164 = !DILocation(line: 97, column: 17, scope: !38)
!165 = !DILocation(line: 97, column: 33, scope: !38)
!166 = !DILocation(line: 100, column: 13, scope: !38)
!167 = !DILocation(line: 100, column: 16, scope: !38)
!168 = !DILocation(line: 100, column: 10, scope: !38)
!169 = !DILocation(line: 101, column: 3, scope: !38)
!170 = !DILocalVariable(name: "q", scope: !171, file: !8, line: 102, type: !19)
!171 = distinct !DILexicalBlock(scope: !172, file: !8, line: 101, column: 12)
!172 = distinct !DILexicalBlock(scope: !173, file: !8, line: 101, column: 3)
!173 = distinct !DILexicalBlock(scope: !38, file: !8, line: 101, column: 3)
!174 = !DILocation(line: 102, column: 21, scope: !171)
!175 = !DILocalVariable(name: "direction", scope: !171, file: !8, line: 103, type: !45)
!176 = !DILocation(line: 103, column: 12, scope: !171)
!177 = !DILocation(line: 105, column: 10, scope: !171)
!178 = !DILocation(line: 105, column: 9, scope: !171)
!179 = !DILocation(line: 105, column: 7, scope: !171)
!180 = !DILocation(line: 106, column: 26, scope: !181)
!181 = distinct !DILexicalBlock(scope: !171, file: !8, line: 106, column: 9)
!182 = !DILocation(line: 106, column: 15, scope: !181)
!183 = !DILocation(line: 106, column: 13, scope: !181)
!184 = !DILocation(line: 106, column: 9, scope: !171)
!185 = !DILocation(line: 107, column: 7, scope: !181)
!186 = !DILocation(line: 108, column: 20, scope: !171)
!187 = !DILocation(line: 108, column: 9, scope: !171)
!188 = !DILocation(line: 108, column: 7, scope: !171)
!189 = !DILocation(line: 109, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !171, file: !8, line: 109, column: 9)
!191 = !DILocation(line: 109, column: 12, scope: !190)
!192 = !DILocation(line: 109, column: 19, scope: !190)
!193 = !DILocation(line: 109, column: 17, scope: !190)
!194 = !DILocation(line: 109, column: 9, scope: !171)
!195 = !DILocation(line: 110, column: 7, scope: !190)
!196 = !DILocation(line: 111, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !171, file: !8, line: 111, column: 9)
!198 = !DILocation(line: 111, column: 12, scope: !197)
!199 = !DILocation(line: 111, column: 20, scope: !197)
!200 = !DILocation(line: 111, column: 17, scope: !197)
!201 = !DILocation(line: 111, column: 28, scope: !197)
!202 = !DILocation(line: 111, column: 31, scope: !197)
!203 = !DILocation(line: 111, column: 34, scope: !197)
!204 = !DILocation(line: 111, column: 46, scope: !197)
!205 = !DILocation(line: 111, column: 44, scope: !197)
!206 = !DILocation(line: 111, column: 9, scope: !171)
!207 = !DILocation(line: 112, column: 7, scope: !197)
!208 = !DILocation(line: 113, column: 9, scope: !171)
!209 = !DILocation(line: 113, column: 12, scope: !171)
!210 = !DILocation(line: 113, column: 19, scope: !171)
!211 = !DILocation(line: 113, column: 17, scope: !171)
!212 = !DILocation(line: 113, column: 26, scope: !171)
!213 = !DILocation(line: 113, column: 32, scope: !171)
!214 = !DILocation(line: 113, column: 34, scope: !171)
!215 = !DILocation(line: 113, column: 37, scope: !171)
!216 = !DILocation(line: 113, column: 7, scope: !171)
!217 = !DILocation(line: 114, column: 23, scope: !171)
!218 = !DILocation(line: 114, column: 26, scope: !171)
!219 = !DILocation(line: 114, column: 38, scope: !171)
!220 = !DILocation(line: 114, column: 36, scope: !171)
!221 = !DILocation(line: 114, column: 20, scope: !171)
!222 = !DILocation(line: 114, column: 42, scope: !171)
!223 = !DILocation(line: 114, column: 17, scope: !171)
!224 = !DILocation(line: 114, column: 15, scope: !171)
!225 = !DILocation(line: 115, column: 14, scope: !171)
!226 = !DILocation(line: 115, column: 17, scope: !171)
!227 = !DILocation(line: 115, column: 25, scope: !171)
!228 = !DILocation(line: 115, column: 23, scope: !171)
!229 = !DILocation(line: 115, column: 12, scope: !171)
!230 = !DILocation(line: 101, column: 3, scope: !172)
!231 = distinct !{!231, !232, !233}
!232 = !DILocation(line: 101, column: 3, scope: !173)
!233 = !DILocation(line: 116, column: 3, scope: !173)
!234 = !DILocation(line: 118, column: 32, scope: !38)
!235 = !DILocation(line: 118, column: 31, scope: !38)
!236 = !DILocation(line: 118, column: 3, scope: !38)
!237 = !DILocation(line: 118, column: 9, scope: !38)
!238 = !DILocation(line: 118, column: 15, scope: !38)
!239 = !DILocation(line: 118, column: 29, scope: !38)
!240 = !DILocation(line: 119, column: 47, scope: !38)
!241 = !DILocation(line: 119, column: 36, scope: !38)
!242 = !DILocation(line: 119, column: 34, scope: !38)
!243 = !DILocation(line: 119, column: 13, scope: !38)
!244 = !DILocation(line: 119, column: 4, scope: !38)
!245 = !DILocation(line: 119, column: 11, scope: !38)
!246 = !DILocation(line: 121, column: 3, scope: !38)
!247 = !DILocation(line: 122, column: 1, scope: !38)
!248 = distinct !DISubprogram(name: "cb_internal_best_match", scope: !8, file: !8, line: 48, type: !249, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !49)
!249 = !DISubroutineType(types: !250)
!250 = !{!19, !19, !251, !45}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!253 = !DILocalVariable(name: "p", arg: 1, scope: !248, file: !8, line: 48, type: !19)
!254 = !DILocation(line: 48, column: 63, scope: !248)
!255 = !DILocalVariable(name: "k", arg: 2, scope: !248, file: !8, line: 49, type: !251)
!256 = !DILocation(line: 49, column: 26, scope: !248)
!257 = !DILocalVariable(name: "klen", arg: 3, scope: !248, file: !8, line: 49, type: !45)
!258 = !DILocation(line: 49, column: 36, scope: !248)
!259 = !DILocation(line: 51, column: 3, scope: !248)
!260 = !DILocation(line: 51, column: 25, scope: !248)
!261 = !DILocation(line: 51, column: 14, scope: !248)
!262 = !DILocation(line: 51, column: 12, scope: !248)
!263 = !DILocalVariable(name: "q", scope: !264, file: !8, line: 52, type: !19)
!264 = distinct !DILexicalBlock(scope: !248, file: !8, line: 51, column: 28)
!265 = !DILocation(line: 52, column: 21, scope: !264)
!266 = !DILocation(line: 52, column: 36, scope: !264)
!267 = !DILocation(line: 52, column: 25, scope: !264)
!268 = !DILocalVariable(name: "c", scope: !264, file: !8, line: 53, type: !30)
!269 = !DILocation(line: 53, column: 13, scope: !264)
!270 = !DILocation(line: 53, column: 17, scope: !264)
!271 = !DILocation(line: 53, column: 20, scope: !264)
!272 = !DILocation(line: 53, column: 27, scope: !264)
!273 = !DILocation(line: 53, column: 25, scope: !264)
!274 = !DILocation(line: 53, column: 34, scope: !264)
!275 = !DILocation(line: 53, column: 36, scope: !264)
!276 = !DILocation(line: 53, column: 39, scope: !264)
!277 = !DILocalVariable(name: "direction", scope: !264, file: !8, line: 54, type: !45)
!278 = !DILocation(line: 54, column: 12, scope: !264)
!279 = !DILocation(line: 54, column: 30, scope: !264)
!280 = !DILocation(line: 54, column: 33, scope: !264)
!281 = !DILocation(line: 54, column: 45, scope: !264)
!282 = !DILocation(line: 54, column: 43, scope: !264)
!283 = !DILocation(line: 54, column: 27, scope: !264)
!284 = !DILocation(line: 54, column: 49, scope: !264)
!285 = !DILocation(line: 54, column: 24, scope: !264)
!286 = !DILocation(line: 56, column: 9, scope: !264)
!287 = !DILocation(line: 56, column: 12, scope: !264)
!288 = !DILocation(line: 56, column: 18, scope: !264)
!289 = !DILocation(line: 56, column: 7, scope: !264)
!290 = distinct !{!290, !259, !291, !112}
!291 = !DILocation(line: 57, column: 3, scope: !248)
!292 = !DILocation(line: 58, column: 10, scope: !248)
!293 = !DILocation(line: 58, column: 3, scope: !248)
!294 = distinct !DISubprogram(name: "cb_node_of", scope: !8, file: !8, line: 42, type: !295, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !49)
!295 = !DISubroutineType(types: !296)
!296 = !{!19, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!299 = !DILocalVariable(name: "p", arg: 1, scope: !294, file: !8, line: 42, type: !297)
!300 = !DILocation(line: 42, column: 47, scope: !294)
!301 = !DILocation(line: 44, column: 40, scope: !294)
!302 = !DILocation(line: 44, column: 29, scope: !294)
!303 = !DILocation(line: 44, column: 42, scope: !294)
!304 = !DILocation(line: 44, column: 10, scope: !294)
!305 = !DILocation(line: 44, column: 3, scope: !294)
!306 = distinct !DISubprogram(name: "cb_lookup", scope: !8, file: !8, line: 124, type: !307, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !49)
!307 = !DISubroutineType(types: !308)
!308 = !{!19, !41, !251, !45}
!309 = !DILocalVariable(name: "t", arg: 1, scope: !306, file: !8, line: 124, type: !41)
!310 = !DILocation(line: 124, column: 43, scope: !306)
!311 = !DILocalVariable(name: "k", arg: 2, scope: !306, file: !8, line: 124, type: !251)
!312 = !DILocation(line: 124, column: 61, scope: !306)
!313 = !DILocalVariable(name: "klen", arg: 3, scope: !306, file: !8, line: 124, type: !45)
!314 = !DILocation(line: 124, column: 71, scope: !306)
!315 = !DILocalVariable(name: "p", scope: !306, file: !8, line: 126, type: !19)
!316 = !DILocation(line: 126, column: 19, scope: !306)
!317 = !DILocation(line: 126, column: 46, scope: !306)
!318 = !DILocation(line: 126, column: 49, scope: !306)
!319 = !DILocation(line: 126, column: 55, scope: !306)
!320 = !DILocation(line: 126, column: 58, scope: !306)
!321 = !DILocation(line: 126, column: 23, scope: !306)
!322 = !DILocation(line: 128, column: 10, scope: !306)
!323 = !DILocation(line: 128, column: 12, scope: !306)
!324 = !DILocation(line: 128, column: 23, scope: !306)
!325 = !DILocation(line: 128, column: 26, scope: !306)
!326 = !DILocation(line: 128, column: 29, scope: !306)
!327 = !DILocation(line: 128, column: 32, scope: !306)
!328 = !DILocation(line: 128, column: 16, scope: !306)
!329 = !DILocation(line: 128, column: 40, scope: !306)
!330 = !DILocation(line: 128, column: 3, scope: !306)
!331 = distinct !DISubprogram(name: "cb_each", scope: !8, file: !8, line: 143, type: !332, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !49)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !41, !251, !45, !334, !338}
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "cb_iter", file: !8, line: 37, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!10, !19, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!339 = !DILocalVariable(name: "t", arg: 1, scope: !331, file: !8, line: 143, type: !41)
!340 = !DILocation(line: 143, column: 30, scope: !331)
!341 = !DILocalVariable(name: "kpfx", arg: 2, scope: !331, file: !8, line: 143, type: !251)
!342 = !DILocation(line: 143, column: 48, scope: !331)
!343 = !DILocalVariable(name: "klen", arg: 3, scope: !331, file: !8, line: 143, type: !45)
!344 = !DILocation(line: 143, column: 61, scope: !331)
!345 = !DILocalVariable(name: "fn", arg: 4, scope: !331, file: !8, line: 144, type: !334)
!346 = !DILocation(line: 144, column: 15, scope: !331)
!347 = !DILocalVariable(name: "arg", arg: 5, scope: !331, file: !8, line: 144, type: !338)
!348 = !DILocation(line: 144, column: 25, scope: !331)
!349 = !DILocalVariable(name: "p", scope: !331, file: !8, line: 146, type: !19)
!350 = !DILocation(line: 146, column: 19, scope: !331)
!351 = !DILocation(line: 146, column: 23, scope: !331)
!352 = !DILocation(line: 146, column: 26, scope: !331)
!353 = !DILocalVariable(name: "top", scope: !331, file: !8, line: 147, type: !19)
!354 = !DILocation(line: 147, column: 19, scope: !331)
!355 = !DILocation(line: 147, column: 25, scope: !331)
!356 = !DILocalVariable(name: "i", scope: !331, file: !8, line: 148, type: !45)
!357 = !DILocation(line: 148, column: 10, scope: !331)
!358 = !DILocation(line: 150, column: 8, scope: !359)
!359 = distinct !DILexicalBlock(scope: !331, file: !8, line: 150, column: 7)
!360 = !DILocation(line: 150, column: 7, scope: !331)
!361 = !DILocation(line: 150, column: 11, scope: !359)
!362 = !DILocation(line: 153, column: 3, scope: !331)
!363 = !DILocation(line: 153, column: 25, scope: !331)
!364 = !DILocation(line: 153, column: 14, scope: !331)
!365 = !DILocation(line: 153, column: 12, scope: !331)
!366 = !DILocalVariable(name: "q", scope: !367, file: !8, line: 154, type: !19)
!367 = distinct !DILexicalBlock(scope: !331, file: !8, line: 153, column: 28)
!368 = !DILocation(line: 154, column: 21, scope: !367)
!369 = !DILocation(line: 154, column: 36, scope: !367)
!370 = !DILocation(line: 154, column: 25, scope: !367)
!371 = !DILocalVariable(name: "c", scope: !367, file: !8, line: 155, type: !30)
!372 = !DILocation(line: 155, column: 13, scope: !367)
!373 = !DILocation(line: 155, column: 17, scope: !367)
!374 = !DILocation(line: 155, column: 20, scope: !367)
!375 = !DILocation(line: 155, column: 27, scope: !367)
!376 = !DILocation(line: 155, column: 25, scope: !367)
!377 = !DILocation(line: 155, column: 34, scope: !367)
!378 = !DILocation(line: 155, column: 39, scope: !367)
!379 = !DILocation(line: 155, column: 42, scope: !367)
!380 = !DILocalVariable(name: "direction", scope: !367, file: !8, line: 156, type: !45)
!381 = !DILocation(line: 156, column: 12, scope: !367)
!382 = !DILocation(line: 156, column: 30, scope: !367)
!383 = !DILocation(line: 156, column: 33, scope: !367)
!384 = !DILocation(line: 156, column: 45, scope: !367)
!385 = !DILocation(line: 156, column: 43, scope: !367)
!386 = !DILocation(line: 156, column: 27, scope: !367)
!387 = !DILocation(line: 156, column: 49, scope: !367)
!388 = !DILocation(line: 156, column: 24, scope: !367)
!389 = !DILocation(line: 158, column: 9, scope: !367)
!390 = !DILocation(line: 158, column: 12, scope: !367)
!391 = !DILocation(line: 158, column: 18, scope: !367)
!392 = !DILocation(line: 158, column: 7, scope: !367)
!393 = !DILocation(line: 159, column: 9, scope: !394)
!394 = distinct !DILexicalBlock(scope: !367, file: !8, line: 159, column: 9)
!395 = !DILocation(line: 159, column: 12, scope: !394)
!396 = !DILocation(line: 159, column: 19, scope: !394)
!397 = !DILocation(line: 159, column: 17, scope: !394)
!398 = !DILocation(line: 159, column: 9, scope: !367)
!399 = !DILocation(line: 160, column: 13, scope: !394)
!400 = !DILocation(line: 160, column: 11, scope: !394)
!401 = !DILocation(line: 160, column: 7, scope: !394)
!402 = distinct !{!402, !362, !403, !112}
!403 = !DILocation(line: 161, column: 3, scope: !331)
!404 = !DILocation(line: 163, column: 10, scope: !405)
!405 = distinct !DILexicalBlock(scope: !331, file: !8, line: 163, column: 3)
!406 = !DILocation(line: 163, column: 8, scope: !405)
!407 = !DILocation(line: 163, column: 15, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !8, line: 163, column: 3)
!409 = !DILocation(line: 163, column: 19, scope: !408)
!410 = !DILocation(line: 163, column: 17, scope: !408)
!411 = !DILocation(line: 163, column: 3, scope: !405)
!412 = !DILocation(line: 164, column: 9, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !8, line: 164, column: 9)
!414 = distinct !DILexicalBlock(scope: !408, file: !8, line: 163, column: 30)
!415 = !DILocation(line: 164, column: 12, scope: !413)
!416 = !DILocation(line: 164, column: 14, scope: !413)
!417 = !DILocation(line: 164, column: 20, scope: !413)
!418 = !DILocation(line: 164, column: 25, scope: !413)
!419 = !DILocation(line: 164, column: 17, scope: !413)
!420 = !DILocation(line: 164, column: 9, scope: !414)
!421 = !DILocation(line: 165, column: 7, scope: !413)
!422 = !DILocation(line: 166, column: 3, scope: !414)
!423 = !DILocation(line: 163, column: 26, scope: !408)
!424 = !DILocation(line: 163, column: 3, scope: !408)
!425 = distinct !{!425, !411, !426, !112}
!426 = !DILocation(line: 166, column: 3, scope: !405)
!427 = !DILocation(line: 167, column: 14, scope: !331)
!428 = !DILocation(line: 167, column: 19, scope: !331)
!429 = !DILocation(line: 167, column: 23, scope: !331)
!430 = !DILocation(line: 167, column: 3, scope: !331)
!431 = !DILocation(line: 168, column: 1, scope: !331)
!432 = distinct !DISubprogram(name: "cb_descend", scope: !8, file: !8, line: 131, type: !433, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !49)
!433 = !DISubroutineType(types: !434)
!434 = !{!10, !19, !334, !338}
!435 = !DILocalVariable(name: "p", arg: 1, scope: !432, file: !8, line: 131, type: !19)
!436 = !DILocation(line: 131, column: 48, scope: !432)
!437 = !DILocalVariable(name: "fn", arg: 2, scope: !432, file: !8, line: 131, type: !334)
!438 = !DILocation(line: 131, column: 59, scope: !432)
!439 = !DILocalVariable(name: "arg", arg: 3, scope: !432, file: !8, line: 131, type: !338)
!440 = !DILocation(line: 131, column: 69, scope: !432)
!441 = !DILocation(line: 133, column: 22, scope: !442)
!442 = distinct !DILexicalBlock(scope: !432, file: !8, line: 133, column: 7)
!443 = !DILocation(line: 133, column: 11, scope: !442)
!444 = !DILocation(line: 133, column: 9, scope: !442)
!445 = !DILocation(line: 133, column: 7, scope: !432)
!446 = !DILocalVariable(name: "q", scope: !447, file: !8, line: 134, type: !19)
!447 = distinct !DILexicalBlock(scope: !442, file: !8, line: 133, column: 25)
!448 = !DILocation(line: 134, column: 21, scope: !447)
!449 = !DILocation(line: 134, column: 36, scope: !447)
!450 = !DILocation(line: 134, column: 25, scope: !447)
!451 = !DILocalVariable(name: "n", scope: !447, file: !8, line: 135, type: !10)
!452 = !DILocation(line: 135, column: 18, scope: !447)
!453 = !DILocation(line: 135, column: 33, scope: !447)
!454 = !DILocation(line: 135, column: 36, scope: !447)
!455 = !DILocation(line: 135, column: 46, scope: !447)
!456 = !DILocation(line: 135, column: 50, scope: !447)
!457 = !DILocation(line: 135, column: 22, scope: !447)
!458 = !DILocation(line: 137, column: 12, scope: !447)
!459 = !DILocation(line: 137, column: 14, scope: !447)
!460 = !DILocation(line: 137, column: 28, scope: !447)
!461 = !DILocation(line: 137, column: 43, scope: !447)
!462 = !DILocation(line: 137, column: 46, scope: !447)
!463 = !DILocation(line: 137, column: 56, scope: !447)
!464 = !DILocation(line: 137, column: 60, scope: !447)
!465 = !DILocation(line: 137, column: 32, scope: !447)
!466 = !DILocation(line: 137, column: 5, scope: !447)
!467 = !DILocation(line: 139, column: 12, scope: !468)
!468 = distinct !DILexicalBlock(scope: !442, file: !8, line: 138, column: 10)
!469 = !DILocation(line: 139, column: 15, scope: !468)
!470 = !DILocation(line: 139, column: 18, scope: !468)
!471 = !DILocation(line: 139, column: 5, scope: !468)
!472 = !DILocation(line: 141, column: 1, scope: !432)
