set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

mkdir -p klee-out-O0
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O0_OPTS} -o example-O0.ll
${LLVM_AS} -o klee-out-O0/final.bc example-O0.ll
${OPT} ${OPT_CFG_OPTS} --cfg-func-name=cb_insert example-O0.ll
mv .cb_insert.dot example-O0.cb_insert.dot

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O1_OPTS} -o example-O1.ll

mkdir -p klee-out-O1
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_CG_IR_OPTS} ${CC_O1_OPTS} -o /dev/null 2> example-O1-cg-raw.ll
filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
rm example-O1-cg-raw.ll
${LLVM_AS} -o klee-out-O1/final.bc example-O1-cg.ll
${OPT} ${OPT_CFG_OPTS} --cfg-func-name=cb_insert example-O1-cg.ll
mv .cb_insert.dot example-O1-cg.cb_insert.dot

# ${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O1_OPTS} ${CC_LINK_OPTS} -o example-O1
