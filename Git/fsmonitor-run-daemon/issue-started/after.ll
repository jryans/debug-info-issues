define dso_local i32 @d() local_unnamed_addr {
entry:
  call void @llvm.dbg.value(metadata i32 0, "health_started", metadata !DIExpression())
  %call = call i32 @bob()
  %tobool.not.not = icmp eq i32 %call, 0
  br i1 %tobool.not.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, "health_started", metadata !DIExpression())
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.dbg.value(metadata i32 poison, "health_started", metadata !DIExpression())
  call void @llvm.dbg.label(metadata !16)
  br i1 %tobool.not.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %cleanup
  %0 = load i32, ptr @result, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @result, align 4
  br label %cleanup4

if.end3:                                          ; preds = %cleanup
  br label %cleanup4

cleanup4:                                         ; preds = %if.end3, %if.then2
  %retval.0 = phi i32 [ %inc, %if.then2 ], [ 0, %if.end3 ]
  ret i32 %retval.0
}
