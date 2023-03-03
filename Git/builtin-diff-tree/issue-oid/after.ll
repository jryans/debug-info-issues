if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr undef, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64))
  call void @llvm.dbg.value(metadata ptr poison, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64))
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, "swap", metadata !DIExpression())
  %0 = load ptr, ptr %ent0, align 8
  call void @llvm.dbg.value(metadata ptr %0, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64))
  call void @llvm.dbg.value(metadata ptr poison, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64))
  %oid.sroa.0.0.sroa.speculate.load.if.else = load i32, ptr %0, align 4
  br label %if.end
