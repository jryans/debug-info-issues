This example tests support for:

* Struct containing type recursive pointer in function calls
* Exploring pointer-state-dependent paths

Results appear to be INCORRECT as of tool 2def606e:

* Recursive type triggers an infinite loop trying to build post-call value
