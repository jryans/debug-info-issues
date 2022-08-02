# Description

SROA pass seems unable to work out `dbg.value`s for the variables holding
pointers to nested struct fields. Needs more investigation...

# IR after `SROA`

```llvm
define dso_local i32** @func_15(i32* %p_16, i32 %p_17, i32** %p_18) #0 !dbg !27 {
entry:
  %l_28 = alloca [4 x [8 x [6 x i32*]]], align 16
  call void @llvm.dbg.value(metadata i32* %p_16, metadata !31, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i32 %p_17, metadata !32, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i32** %p_18, metadata !33, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i8 7, metadata !34, metadata !DIExpression()), !dbg !47
  %l_28.0.sroa_cast = bitcast [4 x [8 x [6 x i32*]]]* %l_28 to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 1536, i8* %l_28.0.sroa_cast), !dbg !48
  call void @llvm.dbg.declare(metadata [4 x [8 x [6 x i32*]]]* %l_28, metadata !38, metadata !DIExpression()), !dbg !49
  %0 = bitcast [4 x [8 x [6 x i32*]]]* %l_28 to i8*, !dbg !49
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x [8 x [6 x i32*]]]* @__const.func_15.l_28 to i8*), i64 1536, i1 false), !dbg !49
  call void @llvm.dbg.value(metadata i32** undef, metadata !43, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* undef, metadata !44, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32* undef, metadata !45, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* undef, metadata !46, metadata !DIExpression()), !dbg !52
  store i32* null, i32** %p_18, align 8, !dbg !53, !tbaa !54
  %conv = sext i8 7 to i32, !dbg !58
  %1 = load i32, i32* %p_16, align 4, !dbg !59, !tbaa !60
  %or = or i32 %1, %conv, !dbg !59
  store i32 %or, i32* %p_16, align 4, !dbg !59, !tbaa !60
  call void @llvm.dbg.value(metadata i32 0, metadata !32, metadata !DIExpression()), !dbg !47
  %cmp = icmp ne i32 0, -1, !dbg !62
  br i1 %cmp, label %for.body, label %for.end, !dbg !65

for.body:                                         ; preds = %entry
  %2 = load i32**, i32*** @g_29, align 8, !dbg !66, !tbaa !54
  br label %cleanup, !dbg !68

for.end:                                          ; preds = %entry
  br label %cleanup, !dbg !69

cleanup:                                          ; preds = %for.end, %for.body
  %retval.0 = phi i32** [ %2, %for.body ], [ @g_30, %for.end ], !dbg !47
  %l_28.0.sroa_cast13 = bitcast [4 x [8 x [6 x i32*]]]* %l_28 to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 1536, i8* %l_28.0.sroa_cast13), !dbg !70
  ret i32** %retval.0, !dbg !70
}
```
