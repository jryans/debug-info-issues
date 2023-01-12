* `func_8` eliminated by optimiser, seems correct
* Unoptimised version of `func_1` uses `getelementptr`, assert fires
* `func_1` has been reduced to a single `store`, with many preceding `undef`
  debug inputs
* `l_54` in `func_1` reads the address of a global, which goes unused, ends up
  as undef
* Seems like it variable location could reasonable be preserved even if value is
  unused
* `l_54` debug info becomes `undef` during "Interprocedural Sparse
  Conditional Constant Propagation (ipsccp)"
* If I change the code to use `l_54`, debug info is preserved
