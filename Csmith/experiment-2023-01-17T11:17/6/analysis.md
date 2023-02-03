* `func_1`
  * `l_38` is only written, does not escape the function, removable
* `func_17`
  * `g_34` is a statically null pointer, symbolic execution terminates early on
    dereference (undefined behaviour)
  * `p_18` value collection seems a bit confused, but previous undefined
    behaviour means any may have happened, so ignoring this
