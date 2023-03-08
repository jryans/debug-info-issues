# Description

* Version
  * First tested 14.0.0, `InstCombine` appears responsible
  * Occurs on main as well (7de0804ea3290e5e43ce38567b4056a34ccad551)
* Flags: `-fno-discard-value-names -fno-inline -g -O1`

The `InstCombine` pass simplifies `health_started` to a boolean value, but in
doing so, it loses the debug value info for `health_started` at the point of the
`cleanup` label.

## Versions

* Clang: version 17.0.0 (https://github.com/llvm/llvm-project.git 7de0804ea3290e5e43ce38567b4056a34ccad551)
* LLDB: version 17.0.0git (git@github.com:llvm/llvm-project.git revision c820e60844ee1e5f084dd7761576bd0bd4927264)

## Compiler Explorer

* [Optimisation pipeline view using x86-64 Clang trunk (may change over time)](https://godbolt.org/z/3q1417xj6)

## Program source

```c
extern int result;
extern int bob(void);

int d() {
  int health_started = 0;
  if (bob())
    goto cleanup;
  health_started = 1;
cleanup:
  if (health_started)
    return ++result;
  return 0;
}
```

## Debug info view

```
$ clang -fno-discard-value-names -fno-inline -g -O1 -c -o example-O1.o
$ llvm-dwarfdump -n health_started example-O1.o
0x0000004b: DW_TAG_variable
              DW_AT_location    (0x00000000:
                 [0x0000000000000004, 0x000000000000000f): DW_OP_consts +0, DW_OP_stack_value)
              DW_AT_name        ("health_started")
              DW_AT_decl_line   (5)
              DW_AT_type        (0x00000082 "int")
$ llvm-dwarfdump --debug-line example-O1.o
Address            Line   Column File   ISA Discriminator Flags
------------------ ------ ------ ------ --- ------------- -------------
0x0000000000000000      4      0      1   0             0  is_stmt
0x0000000000000004      6      7      1   0             0  is_stmt prologue_end
0x000000000000000f     10      7      1   0             0  is_stmt
0x0000000000000011     13      1      1   0             0  is_stmt
0x0000000000000013     11     12      1   0             0  is_stmt
0x0000000000000021     13      1      1   0             0  is_stmt
0x0000000000000023     13      1      1   0             0  is_stmt end_sequence
```

The variable `health_started` has the location range `[0x04, 0x0f)`. The
conditional `if (health_started)` is on source line 10 / address `0x0f`. The
value should remain visible at least for the conditional (where it is used), but
currently it stops just before that.

## IR before `InstCombine`

```llvm
define dso_local i32 @d() local_unnamed_addr {
entry:
  call void @llvm.dbg.value(metadata i32 0, "health_started", metadata !DIExpression())
  %call = call i32 @bob()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, "health_started", metadata !DIExpression())
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %health_started.0 = phi i32 [ 0, %entry ], [ 1, %if.end ]
  call void @llvm.dbg.value(metadata i32 %health_started.0, "health_started", metadata !DIExpression())
  call void @llvm.dbg.label(metadata !16)
  %tobool1 = icmp ne i32 %health_started.0, 0
  br i1 %tobool1, label %if.then2, label %if.end3

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
```

## IR after `InstCombine`

```llvm
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
```

## IR diff before and after `InstCombine`

```diff
@@ -2,19 +2,17 @@
 entry:
   call void @llvm.dbg.value(metadata i32 0, "health_started", metadata !DIExpression())
   %call = call i32 @bob()
-  %tobool = icmp ne i32 %call, 0
-  br i1 %tobool, label %cleanup, label %if.end
+  %tobool.not.not = icmp eq i32 %call, 0
+  br i1 %tobool.not.not, label %if.end, label %cleanup

 if.end:                                           ; preds = %entry
   call void @llvm.dbg.value(metadata i32 1, "health_started", metadata !DIExpression())
   br label %cleanup

 cleanup:                                          ; preds = %entry, %if.end
-  %health_started.0 = phi i32 [ 0, %entry ], [ 1, %if.end ]
-  call void @llvm.dbg.value(metadata i32 %health_started.0, "health_started", metadata !DIExpression())
+  call void @llvm.dbg.value(metadata i32 poison, "health_started", metadata !DIExpression())
   call void @llvm.dbg.label(metadata !16)
-  %tobool1 = icmp ne i32 %health_started.0, 0
-  br i1 %tobool1, label %if.then2, label %if.end3
+  br i1 %tobool.not.not, label %if.then2, label %if.end3

 if.then2:                                         ; preds = %cleanup
   %0 = load i32, ptr @result, align 4
```

# Issue

* Filed as https://github.com/llvm/llvm-project/issues/61266
