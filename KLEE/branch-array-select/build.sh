set -eux

SRC_FILE="example.c"
CC_COMMON_OPTS="-I ${HOME}/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm"
CC_O0_OPTS="-Xclang -disable-O0-optnone"
CC_O1_OPTS="-O1"

$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O0_OPTS} -o example-O0.ll
$(brew --prefix llvm)/bin/llvm-as example-O0.ll

$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O1_OPTS} -o example-O1.ll
$(brew --prefix llvm)/bin/llvm-as example-O1.ll
