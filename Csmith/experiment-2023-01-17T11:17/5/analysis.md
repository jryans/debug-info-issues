* `func_1`
  * Several nonsense computations
  * Values eliminated as unnecessary
  * Unable to escape second `memcpy`
  * `l_25` unreached during execution, though should be reachable...
  * `l_22`, `l_23` depend on `memcpy` stores in unoptimised version
  * `l_15` only used via statically false comparison, optimised away by SROA
* `func_11`
  * Loop condition is statically false
  * `l_30` unreachable
