# Description

* Version
  * First tested 14.0.0
  * Occurs on main as well (5b461d5ec172d21029da492064704fe3da6f8bab)
* Flags: `-fno-discard-value-names -fno-inline -g -O1`

The `InstCombine` pass sinks the speculated / `select`-based computation of `st`
down to the end of the function. The `st` debug value is then set to `undef` for
all locations before the end of function.

It should be possible to use e.g. `DIArgList` to keep the value of `st` alive
for the whole scope.

## Versions

* Clang: version 17.0.0 (https://github.com/llvm/llvm-project.git 5b461d5ec172d21029da492064704fe3da6f8bab)
* LLDB: version 17.0.0git (git@github.com:llvm/llvm-project.git revision c820e60844ee1e5f084dd7761576bd0bd4927264)

## Compiler Explorer

* [Optimisation pipeline view using x86-64 Clang trunk (may change over time)](https://godbolt.org/z/TsWfeoKEf)

## Program source

```c
#include <string.h>
char b;
int a();
int c() {
  int st = a();
  if (a())
    st = 1;
  if (strcmp(&b, ""))
    a();
  return st;
}
```

## Debug info view

```
$ clang -fno-discard-value-names -fno-inline -g -O1 -c -o example-O1.o
$ llvm-dwarfdump -n st example-O1.o
0x00000096: DW_TAG_variable
              DW_AT_location    (0x000000f7:
                 [0x0000000000000019, 0x0000000000000029): DW_OP_reg15 R15
                 [0x0000000000000075, 0x000000000000007e): DW_OP_reg0 RAX)
              DW_AT_name        ("st")
              DW_AT_decl_line   (28)
              DW_AT_type        (0x0000003d "int")
$ llvm-dwarfdump --debug-line example-O1.o
Address            Line   Column File   ISA Discriminator Flags
------------------ ------ ------ ------ --- ------------- -------------
0x0000000000000000     27      0      1   0             0  is_stmt
0x0000000000000011     28     11      1   0             0  is_stmt prologue_end
0x0000000000000019     29      6      1   0             0  is_stmt
0x0000000000000029     32      7      1   0             0  is_stmt
0x000000000000003a     32      6      1   0             0
0x000000000000003c     33     17      1   0             0  is_stmt
0x0000000000000047     34     19      1   0             0  is_stmt
0x0000000000000049     34      7      1   0             0
0x000000000000004b     39      7      1   0             0  is_stmt
0x000000000000005c     39      6      1   0             0
0x000000000000005e     40     24      1   0             0  is_stmt
0x0000000000000069     29      6      1   0             0  is_stmt
0x0000000000000075     42      2      1   0             0  is_stmt
0x000000000000007e     35      4      1   0             0  is_stmt
0x0000000000000091     35      4      1   0             0  is_stmt end_sequence
```

`st`'s location range (shown above) is missing most of its scope after sinking.

## IR before `InstCombine`

```llvm
define dso_local i32 @c() local_unnamed_addr #0 !dbg !19 {
entry:
  %call = call i32 (...) @a() #4, !dbg !25
  call void @llvm.dbg.value(metadata i32 %call, metadata !24, metadata !DIExpression()), !dbg !26
  %call1 = call i32 (...) @a() #4, !dbg !27
  %tobool.not = icmp eq i32 %call1, 0, !dbg !27
  %spec.select = select i1 %tobool.not, i32 %call, i32 1, !dbg !29
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !24, metadata !DIExpression()), !dbg !26
  %strcmpload = load i8, ptr @b, align 1, !dbg !30
  %tobool3.not = icmp eq i8 %strcmpload, 0, !dbg !30
  br i1 %tobool3.not, label %if.end6, label %if.then4, !dbg !32

if.then4:                                         ; preds = %entry
  %call5 = call i32 (...) @a() #4, !dbg !33
  br label %if.end6, !dbg !33

if.end6:                                          ; preds = %if.then4, %entry
  ret i32 %spec.select, !dbg !34
}
```

## IR after `InstCombine`

```llvm
define dso_local i32 @c() local_unnamed_addr #0 !dbg !19 {
entry:
  %call = call i32 (...) @a() #4, !dbg !25
  call void @llvm.dbg.value(metadata i32 %call, metadata !24, metadata !DIExpression()), !dbg !26
  %call1 = call i32 (...) @a() #4, !dbg !27
  call void @llvm.dbg.value(metadata i32 poison, metadata !24, metadata !DIExpression()), !dbg !26
  %strcmpload = load i8, ptr @b, align 1, !dbg !29
  %tobool3.not = icmp eq i8 %strcmpload, 0, !dbg !29
  br i1 %tobool3.not, label %if.end6, label %if.then4, !dbg !31

if.then4:                                         ; preds = %entry
  %call5 = call i32 (...) @a() #4, !dbg !32
  br label %if.end6, !dbg !32

if.end6:                                          ; preds = %if.then4, %entry
  %tobool.not = icmp eq i32 %call1, 0, !dbg !27
  %spec.select = select i1 %tobool.not, i32 %call, i32 1, !dbg !33
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !24, metadata !DIExpression()), !dbg !26
  ret i32 %spec.select, !dbg !34
}
```

## IR diff before and after `InstCombine`

```diff
@@ -3,17 +3,18 @@
   %call = call i32 (...) @a() #4, !dbg !25
   call void @llvm.dbg.value(metadata i32 %call, metadata !24, metadata !DIExpression()), !dbg !26
   %call1 = call i32 (...) @a() #4, !dbg !27
-  %tobool.not = icmp eq i32 %call1, 0, !dbg !27
-  %spec.select = select i1 %tobool.not, i32 %call, i32 1, !dbg !29
-  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !24, metadata !DIExpression()), !dbg !26
-  %strcmpload = load i8, ptr @b, align 1, !dbg !30
-  %tobool3.not = icmp eq i8 %strcmpload, 0, !dbg !30
-  br i1 %tobool3.not, label %if.end6, label %if.then4, !dbg !32
+  call void @llvm.dbg.value(metadata i32 poison, metadata !24, metadata !DIExpression()), !dbg !26
+  %strcmpload = load i8, ptr @b, align 1, !dbg !29
+  %tobool3.not = icmp eq i8 %strcmpload, 0, !dbg !29
+  br i1 %tobool3.not, label %if.end6, label %if.then4, !dbg !31

 if.then4:                                         ; preds = %entry
-  %call5 = call i32 (...) @a() #4, !dbg !33
-  br label %if.end6, !dbg !33
+  %call5 = call i32 (...) @a() #4, !dbg !32
+  br label %if.end6, !dbg !32

 if.end6:                                          ; preds = %if.then4, %entry
+  %tobool.not = icmp eq i32 %call1, 0, !dbg !27
+  %spec.select = select i1 %tobool.not, i32 %call, i32 1, !dbg !33
+  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !24, metadata !DIExpression()), !dbg !26
   ret i32 %spec.select, !dbg !34
 }
```

# Issue

* Filed as https://github.com/llvm/llvm-project/issues/62051
