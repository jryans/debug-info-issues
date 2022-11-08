# Description

The "fix" for this issue removed debug related to the `select` instruction, so
we lose debug info along the inputs to the `select`:

```
  @dbg.value(i32 0, "result" l6), l6 c7
  %cmp = icmp eq i32 %foo.0.foo.0., 4, l7 c12
  %result.0.v = select i1 %cmp, i32 2, i32 -2, l7 c7
  %result.0 = add nsw i32 %result.0.v, %foo.0.foo.0.4, l7 c7
  @dbg.value(i32 %result.0, "result" l6), l6 c7
```

Those inputs came from different branches of an if / else block, but all of that
line info has been discarded.
