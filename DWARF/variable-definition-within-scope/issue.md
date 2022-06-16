# Description

DWARF debug info [does not contain][roc] any data detailing where a source
variable first becomes live in the middle of a given block.

This complicates debug info metrics like "source variable bytes covered" because
they will never reach 100% (since for some bytes, the variables aren't live, and
it's thus correct to not cover them).

LLVM IR however is fully aware when a source variable first becomes live, so
finding a way to pass this through to DWARF would improve metrics.

## IR

```llvm
define i32 @main() #0 !dbg !10 {
entry:
  %retval = alloca i32, align 4
  %bob = alloca i32, align 4
  %alice = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %bob, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 0, i32* %bob, align 4, !dbg !15
  %0 = load i32, i32* %bob, align 4, !dbg !16
  %add = add nsw i32 %0, 2, !dbg !16
  store i32 %add, i32* %bob, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %alice, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 4, i32* %alice, align 4, !dbg !18
  %1 = load i32, i32* %bob, align 4, !dbg !19
  ret i32 %1, !dbg !20
}
```

## Debug info

```
0x0000004b:     DW_TAG_variable
                  DW_AT_location	(DW_OP_fbreg -8)
                  DW_AT_name	("bob")
                  DW_AT_decl_line	(2)
                  DW_AT_type	(0x00000068 "int")

0x00000059:     DW_TAG_variable
                  DW_AT_location	(DW_OP_fbreg -12)
                  DW_AT_name	("alice")
                  DW_AT_decl_line	(4)
                  DW_AT_type	(0x00000068 "int")
```

[roc]:
  https://robert.ocallahan.org/2018/11/comparing-quality-of-debug-information.html
