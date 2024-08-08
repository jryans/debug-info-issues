set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

mkdir -p concrete-trace-O0
(
  cd concrete-trace-O0;
  # TODO: Generalise this to support Linux as well as macOS
  DYLD_INSERT_LIBRARIES=${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O0 \
    0
)

mkdir -p concrete-trace-O1
(
  cd concrete-trace-O1;
  # TODO: Generalise this to support Linux as well as macOS
  DYLD_INSERT_LIBRARIES=${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O1 \
    0
)
