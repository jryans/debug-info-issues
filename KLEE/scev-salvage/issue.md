# Description

`LoopStrengthReduce` is one of several IR passes which are only added when
codegen is enabled, so they are missed if you use the default IR emitting
options (which stop before these codegen passes).
