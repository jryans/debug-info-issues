set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

mkdir -p concrete-trace-O0
(
  cd concrete-trace-O0
  env \
    CON_TRACE_VERBOSE=1 \
    CON_TRACE_SOURCE=1 \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O0 \
    0 || true
  env \
    CON_TRACE_SOURCE=1 \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O0 \
    0 || true
)

mkdir -p concrete-trace-O1
(
  cd concrete-trace-O1
  env \
    CON_TRACE_VERBOSE=1 \
    CON_TRACE_SOURCE=1 \
    "${CON_COLLECT_INSTRUMENTATION}" \
    "$@" \
    ../example-O1 \
    0 || true
  env \
    CON_TRACE_SOURCE=1 \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O1 \
    0 || true
)

mkdir -p concrete-trace-O2
(
  cd concrete-trace-O2
  env \
    CON_TRACE_VERBOSE=1 \
    CON_TRACE_SOURCE=1 \
    "${CON_COLLECT_INSTRUMENTATION}" \
    "$@" \
    ../example-O2 \
    0 || true
  env \
    CON_TRACE_SOURCE=1 \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O2 \
    0 || true
)
