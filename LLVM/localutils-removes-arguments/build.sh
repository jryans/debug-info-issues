set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

mkdir -p klee-out-O0
${LLVM_AS} -o klee-out-O0/final.bc example-O0.ll
${LLC} -O0 -o example-O0.o --filetype obj example-O0.ll

${OPT} -S -o example-O0-mem2reg.ll --mem2reg example-O0.ll
${LLC} -O0 -o example-O0-mem2reg.o --filetype obj example-O0-mem2reg.ll

mkdir -p klee-out-O2
${LLVM_AS} -o klee-out-O2/final.bc example-O2.ll
${LLC} -O0 -o example-O2.o --filetype obj example-O2.ll

mkdir -p klee-out-O2-fixed
${LLVM_AS} -o klee-out-O2-fixed/final.bc example-O2-fixed.ll
${LLC} -O0 -o example-O2-fixed.o --filetype obj example-O2-fixed.ll
