set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

${CON_COMPARE} \
  concrete-trace-O0/default \
  concrete-trace-O1/default \
  --inlining-transform clustered \
  --save-after-inlining-transform \
  > divergences.md
${CON_COMPARE} \
  concrete-trace-O0/default \
  concrete-trace-O1/default \
  --inlining-transform deduplicated \
  --save-after-inlining-transform \
  > divergences.md
${CON_COMPARE} \
  concrete-trace-O0/default \
  concrete-trace-O1/default \
  -vv \
  > divergences-verbose.md
