set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

SRC_FILE="example.cpp"

# mkdir -p klee-out-O0
# # Allow inlining (in later steps)
# ${CLANG} ${SRC_FILE} ${CC_SYSROOT_OPTS} -g -fno-discard-value-names -Xclang -disable-O0-optnone ${CC_IR_OPTS} ${CC_O0_OPTS} -o example-O0.ll
# ${LLVM_AS} -o klee-out-O0/final.bc example-O0.ll

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O0_OPTS} -c -o example-O0.o
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O0_OPTS} -lc++ ${CC_LINK_OPTS} -o example-O0

# TODO: Strip `noinline` manually...

# Run only mem2reg to lower dbg.declare to dbg.value for realistic value coverage
# ${OPT} -S -o example-O0-mem2reg.ll --mem2reg example-O0.ll
# ${LLC} -O0 -o example-O0-mem2reg.o --filetype obj example-O0-mem2reg.ll

# Add inlining as well
# ${OPT} -S -o example-O0-mem2reg-inline.ll --inline example-O0-mem2reg.ll
# ${LLC} -O0 -o example-O0-mem2reg-inline.o --filetype obj example-O0-mem2reg-inline.ll

# ${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O1_OPTS} -o example-O1.ll

# mkdir -p klee-out-O1
# ${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_CG_IR_OPTS} ${CC_O1_OPTS} -o /dev/null 2> example-O1-cg-raw.ll
# filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
# rm example-O1-cg-raw.ll
# ${LLVM_AS} -o klee-out-O1/final.bc example-O1-cg.ll

# ${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O1_OPTS} -c -o example-O1.o

# # Allow inlining
# ${CLANG} ${SRC_FILE} ${CC_SYSROOT_OPTS} -g -fno-discard-value-names -Xclang -disable-O0-optnone ${CC_IR_OPTS} ${CC_O1_OPTS} -o example-O1-inline.ll
# ${CLANG} ${SRC_FILE} ${CC_SYSROOT_OPTS} -g -fno-discard-value-names -Xclang -disable-O0-optnone ${CC_O1_OPTS} -c -o example-O1-inline.o
${CLANG} ${SRC_FILE} ${CC_SYSROOT_OPTS} -g -fno-discard-value-names -Xclang -disable-O0-optnone ${CC_O1_OPTS} -lc++ ${CC_LINK_OPTS} -o example-O1-inline
