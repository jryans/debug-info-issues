set -eux

SRC_FILE="example.c"
COMMON_OPTS="-I ${HOME}/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm"
O0_OPTS="-Xclang -disable-O0-optnone"
O1_OPTS="-O1"

$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${COMMON_OPTS} ${O0_OPTS} -o example-O0.ll
$(brew --prefix llvm)/bin/llvm-as example-O0.ll

# IndVarSimplifyPass removes loop debug values with Clang 13.0.0
# Limit below stops just before this
$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${COMMON_OPTS} ${O1_OPTS} -mllvm -opt-bisect-limit=47 -o example-O1-partial-good.ll
$(brew --prefix llvm)/bin/llvm-as example-O1-partial-good.ll

# This advances one more pass to include the bad IndVarSimplifyPass
$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${COMMON_OPTS} ${O1_OPTS} -mllvm -opt-bisect-limit=48 -o example-O1-partial-bad.ll
$(brew --prefix llvm)/bin/llvm-as example-O1-partial-bad.ll

$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${COMMON_OPTS} ${O1_OPTS} -o example-O1.ll
$(brew --prefix llvm)/bin/llvm-as example-O1.ll
