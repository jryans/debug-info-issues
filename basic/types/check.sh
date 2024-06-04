set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

# Remove old runs in case function names have changed
find ./klee-out-O0 -type d -name 'ex*' | xargs rm -rf

KLEE_COVERAGE_OPTS="--independent-functions --output-dir=klee-out-O0 --write-no-tests --max-forks=32 --max-time=8s"
${KLEE} ${KLEE_COMMON_OPTS} ${KLEE_COVERAGE_OPTS} "$@" ${O0_BC}

# Check whether each function is fully covered
for i in ./klee-out-O0/ex*
do
  [ -d "$i" ] || continue
  ./check-coverage.js $i
done
