set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

# Default to O0, accept others via args
LEVEL="${1:-O0}"
shift

# Remove old runs in case function names have changed
find "./klee-out-${LEVEL}" -type d -name 'ex*' | xargs rm -rf

KLEE_COVERAGE_OPTS="--independent-functions --output-dir=klee-out-${LEVEL} --write-no-tests --emit-all-errors --max-forks=32 --max-time=8s"
LEVEL_BC_OPT="${LEVEL}_BC"
${KLEE} ${KLEE_COMMON_OPTS} ${KLEE_COVERAGE_OPTS} "$@" ${!LEVEL_BC_OPT}

# Check whether each function is fully covered
${CHECK_COVERAGE} ./klee-out-${LEVEL}
