define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = call i32 @b()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, "is_annotated", metadata !DIExpression())
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 4, "is_annotated", metadata !DIExpression())
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %is_annotated.0 = phi i32 [ 0, %if.then ], [ 4, %if.else ]
  call void @llvm.dbg.value(metadata i32 %is_annotated.0, "is_annotated", metadata !DIExpression())
  %tobool1 = icmp ne i32 %is_annotated.0, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 2, ptr @get_name_prio, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret i32 0
}
