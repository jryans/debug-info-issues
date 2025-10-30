# Description

In this example, `current` is declared on line 2 and first defined to be argument
`input` on line 3. When this is converted to `dbg.value`s, the argument becomes
an input of the intrinsic:

```
  @dbg.value(i32 %input, "current" l2)
```

`dbg.value` intrinsics don't track line numbers themselves. When the input value
is a previous SSA value, that typically has the correct location. However, with
an argument input like this, there's no attached location, so the correct
location ends up getting lost.

## Commentary

I thought the `dbg.assign` proposal might help here, but it also doesn't seem to
track lines any more than `dbg.value` does.

In the compiled binary, we can't really distinguish whether it matters because
no native code is emitted for source line 2, so it blends into line 3:

```
** 1     int example(int input) {

example-O1-cg-fixed`example:
    0x106832f70 <+0>:  push   rbp
    0x106832f71 <+1>:  mov    rbp, rsp
    0x106832f74 <+4>:  lea    eax, [rdi + 0x9]

-> 2       int current;
-> 3       for (current = input; current < input + 10; ++current) {

->  0x106832f77 <+7>:  lea    ecx, [rdi - 0x1]
    0x106832f7a <+10>: nop    word ptr [rax + rax]
```
