# Description

* Version
  * First tested 13.0.0, `InstCombine` appears responsible
  * Occurs on main as well (87cf39aa349b83ae3b7d16c30ac7a8ffa0ad098c), but here
    `EarlyCSE` now seems to be the culprit
* Flags: `-fno-discard-value-names -fno-inline -g -O1`

The `EarlyCSE` pass removes debug value info for portions of the `oid` pointer
array, even though these values must be available since they derive from
function arguments. The `SROA` pass just before this also seems to drop some
value info for the same variable.

## Versions

* Clang: version 17.0.0 (https://github.com/llvm/llvm-project.git 87cf39aa349b83ae3b7d16c30ac7a8ffa0ad098c)
* LLDB: version 17.0.0git (git@github.com:llvm/llvm-project.git revision c820e60844ee1e5f084dd7761576bd0bd4927264)

## Compiler Explorer

* [Optimisation pipeline view using x86-64 Clang trunk (may change over time)](https://godbolt.org/z/h7dbaWozP)

## Program source

```c
struct object_id {
  int algo;
};

struct object {
  struct object_id oid;
};

struct entry {
  struct object *item;
};

int example(int n, struct entry *ent0, struct entry *ent1) {
  const struct object_id *(oid[2]);
  struct object_id mb_oid;

  if (n) {
    oid[0] = &mb_oid;
    oid[1] = &ent0->item->oid;
  } else {
    int swap = 0;
    oid[swap] = &ent0->item->oid;
    oid[1 - swap] = &ent1->item->oid;
  }
  return oid[0]->algo;
}
```

## Debug info view

```
$ clang -fno-discard-value-names -fno-inline -g -O1 -c -o example-O1.o
$ llvm-dwarfdump -n example example-O1.o
0x00000032: DW_TAG_subprogram
              DW_AT_low_pc      (0x0000000000000000)
              DW_AT_high_pc     (0x0000000000000015)
              DW_AT_frame_base  (DW_OP_reg6 RBP)
              DW_AT_call_all_calls      (true)
              DW_AT_name        ("example")
              DW_AT_decl_line   (13)
              DW_AT_prototyped  (true)
              DW_AT_type        (0x000000a7 "int")
              DW_AT_external    (true)
$ llvm-dwarfdump -n oid example-O1.o
0x00000072: DW_TAG_variable
              DW_AT_location    (0x00000000:
                 [0x0000000000000011, 0x0000000000000013): DW_OP_reg0 RAX, DW_OP_piece 0x8)
              DW_AT_name        ("oid")
              DW_AT_decl_line   (14)
              DW_AT_type        (0x000000f7 "const object_id*[2]")
```

Location for `oid` is missing for most of the function, and the location that is
present only covers part of the array.

## IR before `EarlyCSE`

```llvm
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
```

## IR after `EarlyCSE`

```llvm
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
```

## IR diff before and after `EarlyCSE`

```diff
@@ -1,14 +1,12 @@
 if.then:                                          ; preds = %entry
   call void @llvm.dbg.value(metadata ptr undef, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64))
-  %0 = load ptr, ptr %ent0, align 8
-  call void @llvm.dbg.value(metadata ptr %0, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64))
+  call void @llvm.dbg.value(metadata ptr poison, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64))
   br label %if.end

 if.else:                                          ; preds = %entry
   call void @llvm.dbg.value(metadata i32 0, "swap", metadata !DIExpression())
-  %1 = load ptr, ptr %ent0, align 8
-  call void @llvm.dbg.value(metadata ptr %1, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64))
-  %2 = load ptr, ptr %ent1, align 8
-  call void @llvm.dbg.value(metadata ptr %2, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64))
-  %oid.sroa.0.0.sroa.speculate.load.if.else = load i32, ptr %1, align 4
+  %0 = load ptr, ptr %ent0, align 8
+  call void @llvm.dbg.value(metadata ptr %0, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64))
+  call void @llvm.dbg.value(metadata ptr poison, "oid", metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64))
+  %oid.sroa.0.0.sroa.speculate.load.if.else = load i32, ptr %0, align 4
   br label %if.end
```

# Issue

* Filed as https://github.com/llvm/llvm-project/issues/61169
