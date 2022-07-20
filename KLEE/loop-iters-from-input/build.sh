set -eux

SRC_FILE="example.c"
COMMON_OPTS="-I ${HOME}/Projects/klee/include -g -fno-inline -fno-discard-value-names -c -S -emit-llvm"
O0_OPTS="-Xclang -disable-O0-optnone"
O1_OPTS="-O1"

echo "; \$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${COMMON_OPTS} ${O0_OPTS} -o example-O0.ll
" > example-O0.ll
$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${COMMON_OPTS} ${O0_OPTS} -o - >> example-O0.ll

$(brew --prefix llvm)/bin/llvm-as example-O0.ll

# IndVarSimplifyPass removes loop debug values with Clang 13.0.0
# Limit below stops just before this
echo "; \$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${COMMON_OPTS} ${O1_OPTS} -mllvm -opt-bisect-limit=39 -o example-O1-partial.ll
" > example-O1-partial.ll
$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${COMMON_OPTS} ${O1_OPTS} -mllvm -opt-bisect-limit=39 -o - >> example-O1-partial.ll

$(brew --prefix llvm)/bin/llvm-as example-O1-partial.ll
