This example tests support for:

* Calling function with variadic arguments
* Tracking the value of a pointer whose own address is also taken
* Gather address loads as value events (in addition to stores)
* Allow state termination and coverage for `unreachable`

Results appear to be correct as of tool 1cb84570
