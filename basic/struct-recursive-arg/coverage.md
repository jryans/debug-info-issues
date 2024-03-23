This example tests support for:

* Struct containing type recursive pointer in function calls
* Exploring pointer-state-dependent paths
* Aggregate values via `dbg.declare` and `getelementptr`

Results appear to be ALMOST CORRECT as of tool d1e091a5:

* Only subset of state-dependent paths visited
