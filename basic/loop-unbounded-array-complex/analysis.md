* Typical case of state explosion for symbolic execution
* Initial array data is set via `memcpy`
  * Currently this is made opaque and results become symbolic
  * However, the symbolic dest memory doesn't seem carry over to other SSA
    pointers that alias to the same location (`%data`), so symbolic data is
    missed later
* Signed values leads to out of bounds array access (undefined behaviour)
  * Perhaps best to finish investigation here, then move to a separate version
    with fixed types
