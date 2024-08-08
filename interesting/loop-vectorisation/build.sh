set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

mkdir -p klee-out-O0
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_NIL_OPTS} ${CC_IR_OPTS} ${CC_O0_OPTS} -o example-O0.ll
${LLVM_AS} -o klee-out-O0/final.bc example-O0.ll

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_NIL_OPTS} ${CC_IR_OPTS} ${CC_O2_OPTS} -o example-O2.ll

mkdir -p klee-out-O2
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_NIL_OPTS} ${CC_CG_IR_OPTS} ${CC_O2_OPTS} -o /dev/null 2> example-O2-cg-raw.ll
filter_cg_ir example-O2-cg-raw.ll example-O2-cg.ll
rm example-O2-cg-raw.ll
${LLVM_AS} -o klee-out-O2/final.bc example-O2-cg.ll

# ${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_NIL_OPTS} ${CC_O2_OPTS} ${CC_LINK_OPTS} -o example-O2
