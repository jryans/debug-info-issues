set -eux

source ../vars.sh

rm -rf klee-out-O0
${KLEE} ${KLEE_COMMON_OPTS} --output-dir=klee-out-O0 example-O0.bc

rm -rf klee-out-O1
${KLEE} ${KLEE_COMMON_OPTS} --output-dir=klee-out-O1 example-O1.bc
