This example tests support for:

* Calling function with variadic arguments
* Tracking the value of a pointer whose own address is also taken

Results appear to be INCORRECT as of tool 96cffc10:

* Pointer comparisons seem to be incorrect
* Pointers within pointers need stable values as well
