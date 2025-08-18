set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

${CON_COMPARE} \
  concrete-trace-O0/trace \
  concrete-trace-O1/trace \
  --save-after-inlining-transform \
  > divergences.md
${CON_COMPARE} \
  concrete-trace-O0/trace \
  concrete-trace-O1/trace \
  -vv \
  > divergences-verbose.md
