set -eux

source ../vars.sh

SRC_FILE="example.c"

$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O0_OPTS} -o example-O0.ll
$(brew --prefix llvm)/bin/llvm-as example-O0.ll

$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O1_OPTS} -o example-O1.ll
$(brew --prefix llvm)/bin/llvm-as example-O1.ll
# $(brew --prefix llvm)/bin/clang ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O1_OPTS} ${CC_LINK_OPTS} -o example-O1
