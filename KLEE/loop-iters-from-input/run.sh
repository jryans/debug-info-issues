set -eux

rm -rf klee-out-O0
~/Projects/klee/build-release/bin/klee --debug-print-instructions=all:file --use-query-log=all:kquery,solver:kquery --debug-execution-trace --output-dir=klee-out-O0 --max-forks=4 example-O0.bc

rm -rf klee-out-O1-partial
~/Projects/klee/build-release/bin/klee --debug-print-instructions=all:file --use-query-log=all:kquery,solver:kquery --debug-execution-trace --output-dir=klee-out-O1-partial --max-forks=4 example-O1-partial.bc
