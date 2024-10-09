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
    || true
  env \
    CON_TRACE_EXTERNAL_LIBRARY=0 \
    CON_TRACE_SOURCE=1 \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O0 \
    && mv trace trace-eld \
    || true
  env \
    CON_TRACE_SOURCE=1 \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O0 \
    || true
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
    || true
  env \
    CON_TRACE_EXTERNAL_LIBRARY=0 \
    CON_TRACE_SOURCE=1 \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O2 \
    && mv trace trace-eld \
    || true
  env \
    CON_TRACE_SOURCE=1 \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O2 \
    || true
)
