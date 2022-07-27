set -eux

KLEE="${HOME}/Projects/klee/build-release/bin/klee"
COMMON_OPTS="--debug-print-instructions=all:file --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4"

rm -rf klee-out-O0
${KLEE} ${COMMON_OPTS} --output-dir=klee-out-O0  example-O0.bc

rm -rf klee-out-O1-partial-good
${KLEE} ${COMMON_OPTS} --output-dir=klee-out-O1-partial-good example-O1-partial-good.bc

rm -rf klee-out-O1-partial-bad
${KLEE} ${COMMON_OPTS} --output-dir=klee-out-O1-partial-bad example-O1-partial-bad.bc

rm -rf klee-out-O1
${KLEE} ${COMMON_OPTS} --output-dir=klee-out-O1 example-O1.bc
