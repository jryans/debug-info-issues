define dso_local ptr @new_branch(ptr noundef %name) local_unnamed_addr {
entry:
  call void @llvm.dbg.value(metadata ptr %name, "name", metadata !DIExpression())
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name)
  %call1 = call i32 @hc_str(ptr noundef %name, i64 noundef %call)
  %0 = load i64, ptr @branch_table_sz, align 8
  call void @llvm.dbg.value(metadata i64 poison, "hc", metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value))
  %call3 = call ptr @lookup_branch(ptr noundef %name)
  call void @llvm.dbg.value(metadata ptr %call3, "b", metadata !DIExpression())
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 1)
  unreachable

if.end:                                           ; preds = %entry
  %conv = zext i32 %call1 to i64
  %rem = urem i64 %conv, %0
  call void @llvm.dbg.value(metadata i64 %rem, "hc", metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value))
  call void @llvm.dbg.value(metadata i64 %rem, "hc", metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value))
  %1 = load ptr, ptr @branch_table, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %rem
  store ptr null, ptr %arrayidx, align 8
  ret ptr null
}
