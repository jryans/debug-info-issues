# Description

* Version
  * First tested 13.0.0
  * Confirmed on main as well
* Flags: `-fno-discard-value-names -fno-inline -g -O1`

IPSCCP (Interprocedural Sparse Conditional Constant Propagation) works out that
the loop body in `func_1` is unused and drops it, which also drops associated
debug info.

## IR before `IPSCCP`

```llvm
define internal zeroext i8 @func_1() {
entry:
  store i32 -9, ptr @g_2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr @g_2, align 4
  %cmp = icmp sge i32 %0, 18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i16 0, metadata !56, metadata !DIExpression())
  %1 = load volatile ptr, ptr @g_6, align 8
  %2 = load i32, ptr %1, align 4
  store i32 0, ptr %1, align 4
  %3 = load i32, ptr @g_2, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @g_2, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %conv = trunc i32 %0 to i8
  ret i8 %conv
}
```

## IR after `IPSCCP`

```llvm
define internal zeroext i8 @func_1() {
entry:
  store i32 -9, ptr @g_2, align 4
  br label %for.cond

for.cond:                                         ; preds = %entry
  %0 = load i32, ptr @g_2, align 4
  br label %for.end

for.end:                                          ; preds = %for.cond
  %conv = trunc i32 %0 to i8
  ret i8 %conv
}
```

# Issue

* Not filed yet
* No existing issues found
* Upstream likely disinterested, dead code removed correctly
