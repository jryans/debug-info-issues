set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

mkdir -p klee-out-O0
${LLVM_AS} -o klee-out-O0/final.bc example-O0.ll
${LLC} -O0 -o example-O0.o --filetype obj example-O0.ll

${OPT} -S -o example-O0-mem2reg.ll --mem2reg example-O0.ll
${LLC} -O0 -o example-O0-mem2reg.o --filetype obj example-O0-mem2reg.ll

mkdir -p klee-out-O1
${LLVM_AS} -o klee-out-O1/final.bc example-O1.ll
${LLC} -O0 -o example-O1.o --filetype obj example-O1.ll

mkdir -p klee-out-O1-fixed
${LLVM_AS} -o klee-out-O1-fixed/final.bc example-O1-fixed.ll
${LLC} -O0 -o example-O1-fixed.o --filetype obj example-O1-fixed.ll

# ${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_NIL_OPTS} ${CC_O1_OPTS} -c -o example-O1-cg-fixed.o
# ${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_NIL_OPTS} ${CC_O1_OPTS} ${CC_LINK_OPTS} -o example-O1-cg-fixed
