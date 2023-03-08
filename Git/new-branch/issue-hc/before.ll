define dso_local ptr @new_branch(ptr noundef %name) local_unnamed_addr {
entry:
  call void @llvm.dbg.value(metadata ptr %name, "name", metadata !DIExpression())
  %call = call i64 @strlen(ptr noundef %name)
  %call1 = call i32 @hc_str(ptr noundef %name, i64 noundef %call)
  %conv = zext i32 %call1 to i64
  %0 = load i64, ptr @branch_table_sz, align 8
  %rem = urem i64 %conv, %0
  %conv2 = trunc i64 %rem to i32
  call void @llvm.dbg.value(metadata i32 %conv2, "hc", metadata !DIExpression())
  %call3 = call ptr @lookup_branch(ptr noundef %name)
  call void @llvm.dbg.value(metadata ptr %call3, "b", metadata !DIExpression())
  %tobool = icmp ne ptr %call3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 1)
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @branch_table, align 8
  %idxprom = zext i32 %conv2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  ret ptr null
}
