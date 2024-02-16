This example tests support for:

* Reaching all basic blocks during execution
* Additional encounter triggered by phi nodes

Results appear to be INCORRECT as of tool 4ee615c7:

* Execution keeps going around the loop without finding the lurking block
