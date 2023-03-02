* Calling `peel_iterated_oid`, this uncovered issue with object state management
  with calls in independent mode
* Seems like `const` status is lost from other functions if you only have
  prototypes (not recoverd by `PostOrderFunctionAttrsPass`)
* Calling `add_to_known_names`, this is passed an object made symbolic by
  `peel_iterated_oid`...
  * First issue though seems to be with the `cond` argument produced by `select`
  * Doing some pointer math to move through a string, needs something larger to
    be allocated
