set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

mkdir -p klee-out-O0
$(brew --prefix llvm)/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll

mkdir -p klee-out-O1
$(brew --prefix llvm)/bin/llvm-as -o klee-out-O1/final.bc example-O1-cg.ll

mkdir -p klee-out-O1-fixed
$(brew --prefix llvm)/bin/llvm-as -o klee-out-O1-fixed/final.bc example-O1-cg-fixed.ll
