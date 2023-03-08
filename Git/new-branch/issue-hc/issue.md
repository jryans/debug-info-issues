# Description

* Version
  * First tested 14.0.0, `InstCombine` appears responsible
  * Occurs on main as well (7de0804ea3290e5e43ce38567b4056a34ccad551)
* Flags: `-fno-discard-value-names -fno-inline -g -O1`

The `InstCombine` pass loses track of the value of variable `hc` before the
`if` conditional. It appears to be because the `urem` operation is moved
after the conditional, but it should be possible to extend the value expression
of `hc` to do that at debug time and preserve full debug coverage for the
variable.

## Versions

* Clang: version 17.0.0 (https://github.com/llvm/llvm-project.git 7de0804ea3290e5e43ce38567b4056a34ccad551)
* LLDB: version 17.0.0git (git@github.com:llvm/llvm-project.git revision c820e60844ee1e5f084dd7761576bd0bd4927264)

## Compiler Explorer

* [Optimisation pipeline view using x86-64 Clang trunk (may change over time)](https://godbolt.org/z/6ba9o3PE9)

## Program source

```c
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

extern unsigned long branch_table_sz;
extern struct branch **branch_table;

struct branch {
  const char *name;
};

unsigned int hc_str(const char *s, size_t len);

struct branch *lookup_branch(const char *name);

struct branch *new_branch(const char *name)
{
  unsigned int hc = hc_str(name, strlen(name)) % branch_table_sz;
  struct branch *b = lookup_branch(name);

  if (b)
    exit(1);

  branch_table[hc] = b;
  return b;
}
```

## Debug info view

```
$ clang -fno-discard-value-names -fno-inline -g -O1 -c -o example-O1.o
$ llvm-dwarfdump -n hc example-O1.o
0x0000005a: DW_TAG_variable
              DW_AT_location    (0x0000005f:
                 [0x000000000000003f, 0x000000000000005e): DW_OP_breg1 RDX+0, DW_OP_stack_value)
              DW_AT_name        ("hc")
              DW_AT_decl_line   (18)
              DW_AT_type        (0x000000b7 "unsigned int")
$ llvm-dwarfdump --debug-line example-O1.o
Address            Line   Column File   ISA Discriminator Flags
------------------ ------ ------ ------ --- ------------- -------------
0x0000000000000000     17      0      1   0             0  is_stmt
0x000000000000000d     18     33      1   0             0  is_stmt prologue_end
0x0000000000000012     18     20      1   0             0
0x0000000000000020     18     49      1   0             0
0x000000000000002a     19     21      1   0             0  is_stmt
0x0000000000000032     21      6      1   0             0  is_stmt
0x0000000000000035     21      6      1   0             0
0x0000000000000037     18     20      1   0             0  is_stmt
0x000000000000003a     18     47      1   0             0
0x000000000000003f     24      2      1   0             0  is_stmt
0x0000000000000049     24     19      1   0             0
0x0000000000000051     25      2      1   0             0  is_stmt
0x000000000000005e     22      3      1   0             0  is_stmt
0x0000000000000068     22      3      1   0             0  is_stmt end_sequence
```

The source line after the definition of `hc` (`hc = ...`) is line 19, which is
mapped to address `0x2a`. The value location range for `hc` does not start until
`0x3f` (after the conditional).

## IR before `InstCombine`

```llvm
define dso_local ptr @new_branch(ptr noundef %name) local_unnamed_addr {
entry:
  call void @llvm.dbg.value(metadata ptr %name, "name", metadata !DIExpression())
  %call = call i64 @strlen(ptr noundef %name)
  %call1 = call i32 @hc_str(ptr noundef %name, i64 noundef %call)
  %conv = zext i32 %call1 to i64
  %0 = load i64, ptr @branch_table_sz, align 8
  %rem = urem i64 %conv, %0
  %conv2 = trunc i64 %rem to i32
  call void @llvm.dbg.value(metadata i32 %conv2, "hc", metadata !DIExpression())
  %call3 = call ptr @lookup_branch(ptr noundef %name)
  call void @llvm.dbg.value(metadata ptr %call3, "b", metadata !DIExpression())
  %tobool = icmp ne ptr %call3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @exit(i32 noundef 1)
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @branch_table, align 8
  %idxprom = zext i32 %conv2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  ret ptr null
}
```

## IR after `InstCombine`

```llvm
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
```

## IR diff before and after `InstCombine`

```diff
@@ -1,26 +1,26 @@
 define dso_local ptr @new_branch(ptr noundef %name) local_unnamed_addr {
 entry:
   call void @llvm.dbg.value(metadata ptr %name, "name", metadata !DIExpression())
-  %call = call i64 @strlen(ptr noundef %name)
+  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name)
   %call1 = call i32 @hc_str(ptr noundef %name, i64 noundef %call)
-  %conv = zext i32 %call1 to i64
   %0 = load i64, ptr @branch_table_sz, align 8
-  %rem = urem i64 %conv, %0
-  %conv2 = trunc i64 %rem to i32
-  call void @llvm.dbg.value(metadata i32 %conv2, "hc", metadata !DIExpression())
+  call void @llvm.dbg.value(metadata i64 poison, "hc", metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value))
   %call3 = call ptr @lookup_branch(ptr noundef %name)
   call void @llvm.dbg.value(metadata ptr %call3, "b", metadata !DIExpression())
-  %tobool = icmp ne ptr %call3, null
-  br i1 %tobool, label %if.then, label %if.end
+  %tobool.not = icmp eq ptr %call3, null
+  br i1 %tobool.not, label %if.end, label %if.then

 if.then:                                          ; preds = %entry
   call void @exit(i32 noundef 1)
   unreachable

 if.end:                                           ; preds = %entry
+  %conv = zext i32 %call1 to i64
+  %rem = urem i64 %conv, %0
+  call void @llvm.dbg.value(metadata i64 %rem, "hc", metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value))
+  call void @llvm.dbg.value(metadata i64 %rem, "hc", metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value))
   %1 = load ptr, ptr @branch_table, align 8
-  %idxprom = zext i32 %conv2 to i64
-  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
+  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %rem
   store ptr null, ptr %arrayidx, align 8
   ret ptr null
 }
```

# Issue

* Filed as https://github.com/llvm/llvm-project/issues/61261
