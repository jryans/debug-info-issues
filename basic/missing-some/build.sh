set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

mkdir -p klee-out-O0
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O0_OPTS} -o example-O0.ll
${LLVM_AS} -o klee-out-O0/final.bc example-O0.ll

# Hand-edited to remove some debug info for testing
mkdir -p klee-out-O1
${LLVM_AS} -o klee-out-O1/final.bc example-O1.ll

# ${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O1_OPTS} ${CC_LINK_OPTS} -o example-O1
