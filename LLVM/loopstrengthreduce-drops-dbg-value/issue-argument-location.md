# Description

In this example, `bob` is declared on line 2 and first defined to be argument
`blah` on line 3. When this is converted to `dbg.value`s, the argument becomes
an input of the intrinsic:

```
  @dbg.value(i32 %blah, "bob" l2)
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
** 1     int foo(int blah) {

example-O1-cg-fixed`foo:
    0x106832f70 <+0>:  push   rbp
    0x106832f71 <+1>:  mov    rbp, rsp
    0x106832f74 <+4>:  lea    eax, [rdi + 0x9]

-> 2       int bob;
-> 3       for (bob = blah; bob < blah + 10; ++bob) {

->  0x106832f77 <+7>:  lea    ecx, [rdi - 0x1]
    0x106832f7a <+10>: nop    word ptr [rax + rax]
```
