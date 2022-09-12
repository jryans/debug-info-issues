set -eux

CC_COMMON_OPTS="-I ${HOME}/Projects/klee/include -g -fno-inline -fno-discard-value-names"
CC_IR_OPTS="-S -emit-llvm"
CC_CG_IR_OPTS="-S -mllvm -print-after=codegenprepare -mllvm -print-module-scope"
CC_O0_OPTS="-Xclang -disable-O0-optnone"
CC_O1_OPTS="-O1"
CC_LINK_OPTS="-D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"

KLEE="${HOME}/Projects/klee/build-release/bin/klee"
KLEE_COMMON_OPTS="--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4"

BEFORE_BC="klee-out-O0/final.bc"
AFTER_BC="klee-out-O1/final.bc"
CHECK="${HOME}/Projects/klee/build-debug/bin/debug-info-check"
CHECK_OPTS="--debug-only=debug-info-check,values-collector"
