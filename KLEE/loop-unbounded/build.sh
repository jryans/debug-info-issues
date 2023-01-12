set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

SRC_FILE="example.c"

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O0_OPTS} -o example-O0.ll
${LLVM_AS} example-O0.ll
# ${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O0_OPTS} ${CC_LINK_OPTS} -o example-O0

# IndVarSimplifyPass removes loop debug values with Clang 13.0.0
# Limit below stops just before this
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O1_OPTS} -mllvm -opt-bisect-limit=47 -o example-O1-partial-good.ll
${LLVM_AS} example-O1-partial-good.ll

# This advances one more pass to include the bad IndVarSimplifyPass
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O1_OPTS} -mllvm -opt-bisect-limit=48 -o example-O1-partial-bad.ll
${LLVM_AS} example-O1-partial-bad.ll

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O1_OPTS} -o example-O1.ll
${LLVM_AS} example-O1.ll
# ${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O1_OPTS} ${CC_LINK_OPTS} -o example-O1

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_CG_IR_OPTS} ${CC_O1_OPTS} -o /dev/null 2> example-O1-cg-raw.ll
filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
rm example-O1-cg-raw.ll
${LLVM_AS} example-O1-cg.ll
