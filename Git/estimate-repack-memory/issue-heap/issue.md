# Description

* Version
  * First tested 14.0.0
  * Occurs on main as well (7de0804ea3290e5e43ce38567b4056a34ccad551)
* Flags: `-fno-discard-value-names -fno-inline -g -O1`

The `Reassociate` pass rearranges the various steps that keep adding to the
variable `heap`. For the first few steps, it produces debug value expressions
which keep the value available at debug time, but eventually it stops and value
debug info is lost.

## Versions

* Clang: version 17.0.0 (https://github.com/llvm/llvm-project.git 7de0804ea3290e5e43ce38567b4056a34ccad551)
* LLDB: version 17.0.0git (git@github.com:llvm/llvm-project.git revision c820e60844ee1e5f084dd7761576bd0bd4927264)

## Compiler Explorer

* [Optimisation pipeline view using x86-64 Clang trunk (may change over time)](https://godbolt.org/z/17jGaczGd)

## Program source

```c
#include <stddef.h>
#include <stdint.h>

struct object {
  uint32_t bob;
};

struct object_entry {
  uint32_t bob;
};

struct packed {
  uint32_t pack_size;
  size_t index_size;
};

extern unsigned long count(void);

uint64_t e(struct packed *pack)
{
  unsigned long nr_objects = count();
  size_t os_cache, heap;

  if (!pack || !nr_objects)
    return 0;

  os_cache = pack->pack_size + pack->index_size;
  heap = sizeof(struct object_entry) * nr_objects;
  heap += sizeof(struct object *) * nr_objects / 2;

  return os_cache + heap;
}
```

## Debug info view

```
$ clang -fno-discard-value-names -fno-inline -g -O1 -c -o example-O1.o
$ llvm-dwarfdump -n heap example-O1.o
0x00000069: DW_TAG_variable
              DW_AT_location    (0x0000006f:
                 [0x0000000000000027, 0x0000000000000034): DW_OP_reg0 RAX)
              DW_AT_name        ("heap")
              DW_AT_decl_line   (22)
              DW_AT_type        (0x000000ed "size_t")
$ llvm-dwarfdump --debug-line example-O1.o
Address            Line   Column File   ISA Discriminator Flags
------------------ ------ ------ ------ --- ------------- -------------
0x0000000000000000     20      0      1   0             0  is_stmt
0x0000000000000009     21     30      1   0             0  is_stmt prologue_end
0x0000000000000011      0     30      1   0             0
0x0000000000000013     24      8      1   0             0  is_stmt
0x0000000000000016     24     13      1   0             0
0x000000000000001d     27     20      1   0             0  is_stmt
0x000000000000001f     28     38      1   0             0  is_stmt
0x0000000000000027      0     38      1   0             0
0x0000000000000031     29     48      1   0             0  is_stmt
0x0000000000000034     27     30      1   0             0  is_stmt
0x0000000000000038     29      8      1   0             0  is_stmt
0x000000000000003b     31     19      1   0             0  is_stmt
0x000000000000003f     32      1      1   0             0  is_stmt
0x0000000000000046     32      1      1   0             0  is_stmt end_sequence
```

The variable `heap` has a location range that ends at  `0x34`. Instructions past
that address both read from and write to `heap`, so the value is expected to be
accessible for the rest of the function.

## IR before `Reassociate`

```llvm
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
```

## IR after `Reassociate`

```llvm
if.end:                                           ; preds = %entry
  %0 = load i32, ptr %pack, align 8
  %conv = zext i32 %0 to i64
  %index_size = getelementptr inbounds %struct.packed, ptr %pack, i64 0, i32 1
  %1 = load i64, ptr %index_size, align 8
  call void @llvm.dbg.value(metadata i64 poison, "os_cache", metadata !DIExpression())
  %mul = shl i64 %call, 2
  call void @llvm.dbg.value(metadata i64 %mul, "heap", metadata !DIExpression())
  %div12 = and i64 %mul, 9223372036854775804
  call void @llvm.dbg.value(metadata i64 poison, "heap", metadata !DIExpression())
  %add = add i64 %div12, %mul
  %add3 = add i64 %add, %conv
  %add4 = add i64 %add3, %1
  br label %cleanup
```

## IR diff before and after `Reassociate`

```diff
@@ -3,12 +3,12 @@
   %conv = zext i32 %0 to i64
   %index_size = getelementptr inbounds %struct.packed, ptr %pack, i64 0, i32 1
   %1 = load i64, ptr %index_size, align 8
-  %add = add i64 %1, %conv
-  call void @llvm.dbg.value(metadata i64 %add, "os_cache", metadata !DIExpression())
+  call void @llvm.dbg.value(metadata i64 poison, "os_cache", metadata !DIExpression())
   %mul = shl i64 %call, 2
   call void @llvm.dbg.value(metadata i64 %mul, "heap", metadata !DIExpression())
   %div12 = and i64 %mul, 9223372036854775804
-  %add3 = add i64 %mul, %div12
-  call void @llvm.dbg.value(metadata i64 %add3, "heap", metadata !DIExpression())
-  %add4 = add i64 %add, %add3
+  call void @llvm.dbg.value(metadata i64 poison, "heap", metadata !DIExpression())
+  %add = add i64 %div12, %mul
+  %add3 = add i64 %add, %conv
+  %add4 = add i64 %add3, %1
   br label %cleanup
```

# Issue

* Filed as https://github.com/llvm/llvm-project/issues/61272
