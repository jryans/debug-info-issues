This example tests support for:

* Multiple assignments in the same source range
* Value expressions with multiple new operations
  * DW_OP_shl
  * DW_OP_shra
  * DW_OP_xor
* Value expressions with relaxed truncation (shifts)
* Ignoring value expressions that use `undef` inputs
* Treat `memcpy` and friends as alternative stores
