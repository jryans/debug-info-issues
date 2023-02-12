This example tests support for:

* Multi-argument dbg.value expressions
* Phi control flow
* Symbolic arguments after function calls affect aliased pointers
* State explosion with unbounded loops
* Assume value expression constants have width of source variable
* Treat `memcpy` and friends as alternative stores
