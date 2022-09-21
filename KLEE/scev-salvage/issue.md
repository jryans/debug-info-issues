# Description

This example is adapted from the "SCEV salvage" debug info tests in LLVM. This
salvaging occurs as part of the `LoopStrengthReduce` pass.

`LoopStrengthReduce` is one of several IR passes which are only added when
codegen is enabled, so they are missed if you use the default IR emitting
options (which stop before these codegen passes).

## Location info in loop body

`LoopStrengthReduce` changes the value mapping for the induction variable `i` at
the end of the loop to depend on the same input as the beginning of loop and
expresses the difference in the debug value expression. This is okay as far as
expressing the correct value, but the location of update at the end of the loop
is lost, since that hangs off the input value.

```
  %lsr.iv = phi i64 [ 0, %while.body.preheader ], [ %lsr.iv.next, %while.body ]
  @dbg.value(i64 %lsr.iv, "i" l2, !DIExpression(DW_OP_consts, 4, DW_OP_div, DW_OP_stack_value))
  ... rest of loop ...
  @dbg.value(i64 %lsr.iv, "i" l2, !DIExpression(DW_OP_consts, 4, DW_OP_div, DW_OP_consts, 1, DW_OP_plus, DW_OP_stack_value))
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 4, l4 c12
```
