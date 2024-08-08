set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_NIL_OPTS} ${CC_IR_OPTS} ${CC_O0_OPTS} -o example-O0.ll
${LLC} -O0 -o example-O0.o --filetype obj example-O0.ll

${OPT} -S -o example-O0-mem2reg.ll --mem2reg example-O0.ll
${LLC} -O0 -o example-O0-mem2reg.o --filetype obj example-O0-mem2reg.ll

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_NIL_OPTS} ${CC_IR_OPTS} ${CC_O1_OPTS} -o example-O1.ll
${LLC} -O0 -o example-O1.o --filetype obj example-O1.ll
