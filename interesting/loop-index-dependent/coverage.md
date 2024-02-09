This example tests support for:

* Reaching all basic blocks during execution

Results appear to be INCORRECT as of tool 4ee615c7:

* Only visit basic block once feature means we never find other paths
* Coverage and complete execution features fail to detect this error
