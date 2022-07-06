set -eux

rm -rf klee-out-O0
~/Projects/klee/build-release/bin/klee --debug-print-instructions=all:file --use-query-log=all:kquery,solver:kquery --debug-execution-trace --output-dir=klee-out-O0 example-O0.bc

rm -rf klee-out-O1
~/Projects/klee/build-release/bin/klee --debug-print-instructions=all:file --use-query-log=all:kquery,solver:kquery --debug-execution-trace --output-dir=klee-out-O1 example-O1.bc
