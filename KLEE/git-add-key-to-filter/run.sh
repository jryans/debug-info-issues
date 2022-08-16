set -eux

KLEE="${HOME}/Projects/klee/build-release/bin/klee"
KLEE_COMMON_OPTS="--output-module --debug-print-instructions=all:file --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4"

rm -rf klee-out-O0
${KLEE} ${KLEE_COMMON_OPTS} --output-dir=klee-out-O0 example-O0.bc

rm -rf klee-out-O1
${KLEE} ${KLEE_COMMON_OPTS} --output-dir=klee-out-O1 example-O1.bc
