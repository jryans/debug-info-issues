set -eux

CLANG=$(brew --prefix llvm)/bin/clang
LLVM_AS=$(brew --prefix llvm)/bin/llvm-as

CC_COMMON_OPTS="-I ${HOME}/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone"
CC_IR_OPTS="-S -emit-llvm"
CC_CG_IR_OPTS="-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope"
CC_O0_OPTS=""
CC_O1_OPTS="-O1"
CC_LINK_OPTS="-D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"

KLEE="${HOME}/Projects/klee/build-release/bin/klee"
KLEE_COMMON_OPTS="--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4"

O0_BC="klee-out-O0/final.bc"
O1_BC="klee-out-O1/final.bc"
O1_FIXED_BC="klee-out-O1-fixed/final.bc"
O2_BC="klee-out-O2/final.bc"
O2_FIXED_BC="klee-out-O2-fixed/final.bc"
CHECK="${HOME}/Projects/klee/build-debug/bin/debug-info-check"
CHECK_OPTS="--debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace"
