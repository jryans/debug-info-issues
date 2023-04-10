define dso_local i32 @c() local_unnamed_addr #0 !dbg !19 {
entry:
  %call = call i32 (...) @a() #4, !dbg !25
  call void @llvm.dbg.value(metadata i32 %call, metadata !24, metadata !DIExpression()), !dbg !26
  %call1 = call i32 (...) @a() #4, !dbg !27
  call void @llvm.dbg.value(metadata i32 poison, metadata !24, metadata !DIExpression()), !dbg !26
  %strcmpload = load i8, ptr @b, align 1, !dbg !29
  %tobool3.not = icmp eq i8 %strcmpload, 0, !dbg !29
  br i1 %tobool3.not, label %if.end6, label %if.then4, !dbg !31

if.then4:                                         ; preds = %entry
  %call5 = call i32 (...) @a() #4, !dbg !32
  br label %if.end6, !dbg !32

if.end6:                                          ; preds = %if.then4, %entry
  %tobool.not = icmp eq i32 %call1, 0, !dbg !27
  %spec.select = select i1 %tobool.not, i32 %call, i32 1, !dbg !33
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !24, metadata !DIExpression()), !dbg !26
  ret i32 %spec.select, !dbg !34
}
