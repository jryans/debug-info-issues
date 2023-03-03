if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr undef, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64))
  %0 = load ptr, ptr %ent0, align 8
  call void @llvm.dbg.value(metadata ptr %0, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64))
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, "swap", metadata !DIExpression())
  %1 = load ptr, ptr %ent0, align 8
  call void @llvm.dbg.value(metadata ptr %1, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64))
  %2 = load ptr, ptr %ent1, align 8
  call void @llvm.dbg.value(metadata ptr %2, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64))
  %oid.sroa.0.0.sroa.speculate.load.if.else = load i32, ptr %1, align 4
  br label %if.end
