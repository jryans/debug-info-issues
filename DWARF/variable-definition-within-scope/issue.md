# Description

DWARF debug info [does not contain][roc] any data detailing where a source
variable first becomes live in the middle of a given block.

This complicates debug info metrics like "source variable bytes covered" because
they will never reach 100% (since for some bytes, the variables aren't live, and
it's thus correct to not cover them).

LLVM IR however is fully aware when a source variable first becomes live, so
finding a way to pass this through to DWARF would improve metrics.

Thinking a bit further though... why don't existing tools try going from
declaration line to address and treat that as the start of the live window? ...
Actually, we want to know when the variable is first _defined_, and that is not
explicitly captured in DWARF debug info.

## IR

```llvm
; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !19
  %tobool = icmp ne i32 %n, 0, !dbg !20
  br i1 %tobool, label %if.then, label %if.else, !dbg !22

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %n, metadata !17, metadata !DIExpression()), !dbg !19
  br label %if.end, !dbg !23

if.else:                                          ; preds = %entry
  %add = add nsw i32 %n, 2, !dbg !25
  call void @llvm.dbg.value(metadata i32 %add, metadata !17, metadata !DIExpression()), !dbg !19
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bob.0 = phi i32 [ %n, %if.then ], [ %add, %if.else ], !dbg !27
  call void @llvm.dbg.value(metadata i32 %bob.0, metadata !17, metadata !DIExpression()), !dbg !19
  %add1 = add nsw i32 %n, %bob.0, !dbg !28
  %add2 = add nsw i32 %add1, 1, !dbg !29
  call void @llvm.dbg.value(metadata i32 %add2, metadata !18, metadata !DIExpression()), !dbg !19
  %add3 = add nsw i32 %bob.0, %add2, !dbg !30
  ret i32 %add3, !dbg !31
}
```

## Debug info

```
0x00000032:   DW_TAG_subprogram
                DW_AT_low_pc    (0x0000000000000000)
                DW_AT_high_pc   (0x000000000000001b)
                DW_AT_frame_base        (DW_OP_reg6 RBP)
                DW_AT_call_all_calls    (true)
                DW_AT_name      ("example")
                DW_AT_decl_line (1)
                DW_AT_prototyped        (true)
                DW_AT_type      (0x00000079 "int")
                DW_AT_external  (true)
                DW_AT_APPLE_optimized   (true)

0x0000004b:     DW_TAG_formal_parameter
                  DW_AT_location        (0x00000000:
                     [0x0000000000000000, 0x0000000000000014): DW_OP_reg5 RDI
                     [0x0000000000000014, 0x000000000000001b): DW_OP_entry_value(DW_OP_reg5 RDI), DW_OP_stack_value)
                  DW_AT_name    ("n")
                  DW_AT_decl_line       (1)
                  DW_AT_type    (0x00000079 "int")

0x0000005a:     DW_TAG_variable
                  DW_AT_location        (0x00000039:
                     [0x0000000000000009, 0x000000000000000d): DW_OP_reg5 RDI
                     [0x0000000000000012, 0x0000000000000019): DW_OP_reg0 RAX)
                  DW_AT_name    ("bob")
                  DW_AT_decl_line       (2)
                  DW_AT_type    (0x00000079 "int")

0x00000069:     DW_TAG_variable
                  DW_AT_location        (0x0000006f:
                     [0x0000000000000017, 0x000000000000001b): DW_OP_reg5 RDI)
                  DW_AT_name    ("tom")
                  DW_AT_decl_line       (3)
                  DW_AT_type    (0x00000079 "int")
```

```
Address            Line   Column File   ISA Discriminator Flags
------------------ ------ ------ ------ --- ------------- -------------
0x0000000000000000      1      0      1   0             0  is_stmt
0x0000000000000004      4      7      1   0             0  is_stmt prologue_end
0x0000000000000007      4      7      1   0             0
0x0000000000000009      0      7      1   0             0
0x000000000000000b      6      3      1   0             0  is_stmt
0x000000000000000d      7     13      1   0             0  is_stmt
0x0000000000000012      9     11      1   0             0  is_stmt
0x0000000000000014      9     17      1   0             0
0x0000000000000017     10     14      1   0             0  is_stmt
0x0000000000000019     10      3      1   0             0
0x000000000000001b     10      3      1   0             0  end_sequence
```

[roc]:
  https://robert.ocallahan.org/2018/11/comparing-quality-of-debug-information.html
