if.end:                                           ; preds = %entry
  %0 = load i32, ptr %pack, align 8
  %conv = zext i32 %0 to i64
  %index_size = getelementptr inbounds %struct.packed, ptr %pack, i64 0, i32 1
  %1 = load i64, ptr %index_size, align 8
  %add = add i64 %1, %conv
  call void @llvm.dbg.value(metadata i64 %add, "os_cache", metadata !DIExpression())
  %mul = shl i64 %call, 2
  call void @llvm.dbg.value(metadata i64 %mul, "heap", metadata !DIExpression())
  %div12 = and i64 %mul, 9223372036854775804
  %add3 = add i64 %mul, %div12
  call void @llvm.dbg.value(metadata i64 %add3, "heap", metadata !DIExpression())
  %add4 = add i64 %add, %add3
  br label %cleanup
