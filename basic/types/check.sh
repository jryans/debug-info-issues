set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

# Remove old runs in case function names have changed
rm -rf ./klee-out-O[01]/debug-info-values

# TODO: Only run the unoptimised version through KLEE
# once we add an independent function mode option
${CHECK} ${O0_BC} ${O1_BC} ${CHECK_OPTS} "$@"

# Check whether each function is fully covered
for i in ./klee-out-O0/debug-info-values/*
do
  [ -d "$i" ] || continue
  ./check-coverage.js $i
done
