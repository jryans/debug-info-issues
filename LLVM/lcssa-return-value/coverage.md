This example tests support for:

* KLEE module transformations before static analysis
* KLEE query parsing needs explicit types for numbers (e.g. with `Concat`)
* Treat `memcpy` and friends as alternative stores
* Reference assignment with no recorded encounters
  * Only occurs because of missing `memset` store detection
