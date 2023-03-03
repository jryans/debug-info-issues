define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = call i32 @b() #3
  %tobool.not.not = icmp eq i32 %call, 0
  br i1 %tobool.not.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, "is_annotated", metadata !DIExpression())
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 4, "is_annotated", metadata !DIExpression())
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.value(metadata i32 poison, "is_annotated", metadata !DIExpression())
  br i1 %tobool.not.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 2, ptr @get_name_prio, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret i32 0
}
