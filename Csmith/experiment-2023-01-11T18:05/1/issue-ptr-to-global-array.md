# Description

* Version
  * First tested 13.0.0
  * Confirmed fixed in 15.0.0
* Flags: `-fno-discard-value-names -fno-inline -g -O1`

IPSCCP (Interprocedural Sparse Conditional Constant Propagation) causes `l_54`
to become unobservable (presumably because it is unused). However, given it's
the address of global which still exists, it seems like it would be reasonable
to preserve.

Curiously, this particular issue seems to hang on the fact that it's an array.
If the array is replaced by a scalar type, the location is preserved. This gives
further credence that it's reasonable to preserve the location.

## Minimised example

```c
#include <stdint.h>
int32_t g_48[1];
uint64_t a() {
  int32_t *l_54 = &g_48[0];
  if (0) return *l_54;
  return 0;
}
```

## IR before `IPSCCP`

```llvm
define dso_local i64 @a() {
entry:
  call void @llvm.dbg.value(metadata i32* getelementptr inbounds ([1 x i32], [1 x i32]* @g_48, i64 0, i64 0), metadata !28, metadata !DIExpression())
  ret i64 0
}
```

## IR after `IPSCCP`

```llvm
define dso_local i64 @a() {
entry:
  call void @llvm.dbg.value(metadata i32* undef, metadata !28, metadata !DIExpression())
  ret i64 0
}
```

# Issue

* Tool found issue we were previously unaware of
* Already fixed, no need to file
* Haven't looked for possible historical issue yet
