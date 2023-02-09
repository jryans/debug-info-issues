# Description

* Version
  * First tested 13.0.0
  * Occurs on main as well (91a6df3068fc45872e4db43141b0a439b2cf122d)
* Flags: `-fno-discard-value-names -fno-inline -g -O1`

`IndVarSimplify` seems to lose track of value of `y` (the main value being
assigned in the loop body).

## Versions

* Clang: version 17.0.0 (https://github.com/llvm/llvm-project.git 91a6df3068fc45872e4db43141b0a439b2cf122d)
* LLDB: version 17.0.0git (git@github.com:llvm/llvm-project.git revision 55e2cd16095d64e9afca6e109e40ed95d735dc7f)

## Program source

```c
int example(int n) {
  int a = 2;
  int y = 0;
  for (int i = 0; i < n; i++)
    y += a + n;
  return y;
}

int main() {
  int n = 10;
  return example(n);
}
```

## Debug session

```
$ clang example.c -g -fno-inline -fno-discard-value-names -O1 -o example-O1
$ lldb -- example-O1
(lldb) target create "example-O1"
(lldb) b 6
Breakpoint 1: where = example-O1`example + 23 at example.c:6:3, address = 0x0000000100003f97
(lldb) r
Process 43210 launched
Process 43210 stopped
* thread #1, queue = 'com.apple.main-thread', stop reason = breakpoint 1.1
    frame #0: 0x000000010c7edf97 example-O1`example(n=10) at example.c:6:3 [opt]
   3      int y = 0;
   4      for (int i = 0; i < n; i++)
   5        y += a + n;
-> 6      return y;
   7    }
   8
   9    int main() {
Target 0: (example-O1) stopped.
warning: example-O1 was compiled with optimization - stepping may behave oddly; variables may not be available.
(lldb) p y
error: Couldn't materialize: couldn't get the value of variable y: variable not available
error: errored out in DoExecute, couldn't PrepareToExecuteJITExpression
```

## IR before `IndVarSimplify`

```llvm
define dso_local i32 @example(i32 noundef %n) local_unnamed_addr {
entry:
  call void @llvm.dbg.value(metadata i32 %n, "n", metadata !DIExpression())
  call void @llvm.dbg.value(metadata i32 2, "a", metadata !DIExpression())
  call void @llvm.dbg.value(metadata i32 0, "y", metadata !DIExpression())
  call void @llvm.dbg.value(metadata i32 0, "i", metadata !DIExpression())
  %cmp5 = icmp sgt i32 %n, 0
  br i1 %cmp5, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %add = add nsw i32 %n, 2
  br label %for.body

for.cond.cleanup.loopexit:                        ; preds = %for.body
  %add1.lcssa = phi i32 [ %add1, %for.body ]
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  %y.0.lcssa = phi i32 [ 0, %entry ], [ %add1.lcssa, %for.cond.cleanup.loopexit ]
  ret i32 %y.0.lcssa

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %y.06 = phi i32 [ 0, %for.body.lr.ph ], [ %add1, %for.body ]
  call void @llvm.dbg.value(metadata i32 %i.07, "i", metadata !DIExpression())
  call void @llvm.dbg.value(metadata i32 %y.06, "y", metadata !DIExpression())
  %add1 = add nsw i32 %add, %y.06
  call void @llvm.dbg.value(metadata i32 %add1, "y", metadata !DIExpression())
  %inc = add nuw nsw i32 %i.07, 1
  call void @llvm.dbg.value(metadata i32 %inc, "i", metadata !DIExpression())
  %cmp = icmp slt i32 %inc, %n
  br i1 %cmp, label %for.body, label %for.cond.cleanup.loopexit
}
```

## IR after `IndVarSimplify`

```llvm
define dso_local i32 @example(i32 noundef %n) local_unnamed_addr {
entry:
  call void @llvm.dbg.value(metadata i32 %n, "n", metadata !DIExpression())
  call void @llvm.dbg.value(metadata i32 2, "a", metadata !DIExpression())
  call void @llvm.dbg.value(metadata i32 0, "y", metadata !DIExpression())
  call void @llvm.dbg.value(metadata i32 0, "i", metadata !DIExpression())
  %cmp5 = icmp sgt i32 %n, 0
  br i1 %cmp5, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %add = add i32 %n, 2
  %0 = add i32 %n, -1
  %1 = mul i32 %0, %add
  %2 = add i32 %n, %1
  br label %for.body

for.cond.cleanup.loopexit:                        ; preds = %for.body
  %3 = add i32 %2, 2
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  %y.0.lcssa = phi i32 [ 0, %entry ], [ %3, %for.cond.cleanup.loopexit ]
  ret i32 %y.0.lcssa

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  call void @llvm.dbg.value(metadata i32 poison, "i", metadata !DIExpression())
  call void @llvm.dbg.value(metadata i32 poison, "y", metadata !DIExpression())
  call void @llvm.dbg.value(metadata !DIArgList(i32 %add, i32 poison), "y", metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value))
  call void @llvm.dbg.value(metadata i32 poison, "i", metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value))
  br i1 false, label %for.body, label %for.cond.cleanup.loopexit
}
```

## IR diff before and after `IndVarSimplify`

```diff
@@ -8,26 +8,24 @@
   br i1 %cmp5, label %for.body.lr.ph, label %for.cond.cleanup

 for.body.lr.ph:                                   ; preds = %entry
-  %add = add nsw i32 %n, 2
+  %add = add i32 %n, 2
+  %0 = add i32 %n, -1
+  %1 = mul i32 %0, %add
+  %2 = add i32 %n, %1
   br label %for.body

 for.cond.cleanup.loopexit:                        ; preds = %for.body
-  %add1.lcssa = phi i32 [ %add1, %for.body ]
+  %3 = add i32 %2, 2
   br label %for.cond.cleanup

 for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
-  %y.0.lcssa = phi i32 [ 0, %entry ], [ %add1.lcssa, %for.cond.cleanup.loopexit ]
+  %y.0.lcssa = phi i32 [ 0, %entry ], [ %3, %for.cond.cleanup.loopexit ]
   ret i32 %y.0.lcssa

 for.body:                                         ; preds = %for.body.lr.ph, %for.body
-  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
-  %y.06 = phi i32 [ 0, %for.body.lr.ph ], [ %add1, %for.body ]
-  call void @llvm.dbg.value(metadata i32 %i.07, "i", metadata !DIExpression())
-  call void @llvm.dbg.value(metadata i32 %y.06, "y", metadata !DIExpression())
-  %add1 = add nsw i32 %add, %y.06
-  call void @llvm.dbg.value(metadata i32 %add1, "y", metadata !DIExpression())
-  %inc = add nuw nsw i32 %i.07, 1
-  call void @llvm.dbg.value(metadata i32 %inc, "i", metadata !DIExpression())
-  %cmp = icmp slt i32 %inc, %n
-  br i1 %cmp, label %for.body, label %for.cond.cleanup.loopexit
+  call void @llvm.dbg.value(metadata i32 poison, "i", metadata !DIExpression())
+  call void @llvm.dbg.value(metadata i32 poison, "y", metadata !DIExpression())
+  call void @llvm.dbg.value(metadata !DIArgList(i32 %add, i32 poison), "y", metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value))
+  call void @llvm.dbg.value(metadata i32 poison, "i", metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value))
+  br i1 false, label %for.body, label %for.cond.cleanup.loopexit
 }
```

# Issue

* Filed as https://github.com/llvm/llvm-project/issues/60640
