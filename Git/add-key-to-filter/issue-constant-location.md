# Description

In this example, `i` is declared on line 55 and first defined to be `0` on line
58. When this is converted to `dbg.value`s, the `0` value becomes a constant
input of the intrinsic:

```
  @dbg.value(i32 0, "i" l55), l0
```

`dbg.value` intrinsics don't track line numbers themselves. When the input value
is a previous SSA value, that typically has the correct location. However, with
a constant input like this, there's no attached location, so the correct
location ends up getting lost.

# Commentary

I thought the `dbg.assign` proposal might help here, but it also doesn't seem to
track lines any more than `dbg.value` does. It does track related store
instructions (which have a location), but that doesn't help with this constant
value case.

In the compiled binary though, the constant value is residualised and the
location list maps to the source line of first definition:

```
DW_TAG_variable
  DW_AT_location        (0x000000a3:
     [0x0000000100003e92, 0x0000000100003eac): DW_OP_consts +0, DW_OP_stack_value
     [0x0000000100003eac, 0x0000000100003ee3): DW_OP_reg3 RBX)
  DW_AT_name    ("i")
  DW_AT_decl_line       (55)
  DW_AT_type    (0x00000197 "int")
```

```
Address            Line   Column File   ISA Discriminator Flags
------------------ ------ ------ ------ --- ------------- -------------
0x0000000100003e92     58     17      2   0             0  is_stmt prologue_end
```

After further [investigation][notes], it appears variable location lists take
on the source location of the next machine instruction.

[notes]: https://www.notion.so/LLVM-87d86c5c9a114bbdb4b2d40a851745d8#16b475b6c5b4402dbf7ea8ad68344165
