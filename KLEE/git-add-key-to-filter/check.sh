set -eux

BEFORE_BC="klee-out-O0/final.bc"
AFTER_BC="klee-out-O1/final.bc"
CHECK="${HOME}/Projects/klee/build-debug/bin/debug-info-check"
CHECK_OPTS="--debug-only=debug-info-check,values-collector"

${CHECK} ${BEFORE_BC} ${AFTER_BC} ${CHECK_OPTS}
