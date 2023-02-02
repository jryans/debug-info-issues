This example tests support for:

* Ignoring statically unreachable blocks
* Skip runtime functions (e.g. `memcpy`)
* Treat `memcpy` and friends as alternative stores
* If a value’s users have constant results during symbolic execution, consider
  as removable
