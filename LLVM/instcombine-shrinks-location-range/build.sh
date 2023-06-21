set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

mkdir -p klee-out-before
${LLVM_AS} -o klee-out-before/final.bc example-before.ll

mkdir -p klee-out-after
${LLVM_AS} -o klee-out-after/final.bc example-after.ll

mkdir -p klee-out-after-fixed
${LLVM_AS} -o klee-out-after-fixed/final.bc example-after-fixed.ll
