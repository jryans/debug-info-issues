# Description

In this example, `i` is declared on line 58 and first defined to be `0` on line
61. When this is converted to `dbg.value`s, the `0` value becomes a constant
input of the intrinsic:

```
  @dbg.value(i32 0, "i" l58), l0
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

In the compiled binary...
