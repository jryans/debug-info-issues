set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

mkdir -p klee-out-O0
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O0_OPTS} -o example-O0.ll
${LLVM_AS} -o klee-out-O0/final.bc example-O0.ll
${OPT} ${OPT_CFG_OPTS} --cfg-func-name=example example-O0.ll
mv .example.dot example-O0.dot

# IndVarSimplifyPass removes loop debug values with Clang 13.0.0
# Limit below stops just before this
mkdir -p klee-out-O1-partial-good
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O1_OPTS} -mllvm -opt-bisect-limit=47 -o example-O1-partial-good.ll
${LLVM_AS} -o klee-out-O1-partial-good/final.bc example-O1-partial-good.ll

# This advances one more pass to include the bad IndVarSimplifyPass
mkdir -p klee-out-O1-partial-bad
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O1_OPTS} -mllvm -opt-bisect-limit=48 -o example-O1-partial-bad.ll
${LLVM_AS} -o klee-out-O1-partial-bad/final.bc example-O1-partial-bad.ll

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O1_OPTS} -o example-O1.ll

mkdir -p klee-out-O1
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_CG_IR_OPTS} ${CC_O1_OPTS} -o /dev/null 2> example-O1-cg-raw.ll
filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
rm example-O1-cg-raw.ll
${LLVM_AS} -o klee-out-O1/final.bc example-O1-cg.ll
${OPT} ${OPT_CFG_OPTS} --cfg-func-name=example example-O1-cg.ll
mv .example.dot example-O1-cg.dot

# ${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O1_OPTS} ${CC_LINK_OPTS} -o example-O1
