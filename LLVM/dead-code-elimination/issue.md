# Description

For any dead code removed by the optimiser, all debug info is thrown away. I
expect this is standard practice for most compilers today. Though it does
mean that some program behaviour disappears when debugging the optimised
version, this particular variant seems more defensible than others.
