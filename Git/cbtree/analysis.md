* `cb_insert`
  * Optimised assignments shifted far away from source position
  * Is it because of unstructured control flow?
  * May need to follow `getelementptr` values to realise `node` and `k` are
    related...?
* Many functions
  * Quite a few values marked as unreachable...
  * Behaviour depends on bit-testing pointers, KLEE doesn't know how to follow
    all paths in this case
* Assignment location info lost through value reuse (`c` in `cb_insert` among
  others)
