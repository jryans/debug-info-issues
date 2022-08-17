# Description

`IndVarSimplify` (`-mllvm -opt-bisect-limit=72`) changes the loop body's `phi`
from `i32` to `i64`, and then `dbg.value` intrinsic for source variable `i`
which uses this ends up with a larger than expected value for the source type...
does this matter?

After some investigation, it doesn't seem to matter. When running the final
binary in `lldb`, the value of `i` is always visible after declaration, and
seems to take on the right value across loop iterations.
