set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

mkdir -p klee-out-O0
${LLVM_AS} -o klee-out-O0/final.bc example-O0.ll

mkdir -p klee-out-O2
${LLVM_AS} -o klee-out-O2/final.bc example-O2.ll

mkdir -p klee-out-O2-fixed
${LLVM_AS} -o klee-out-O2-fixed/final.bc example-O2-fixed.ll
