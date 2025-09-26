set -ux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

mkdir -p concrete-trace-O0
(
  cd concrete-trace-O0
  rm -f trace*
  env \
    CON_TRACE_SOURCE=1 \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O0 \
    0
  mv trace-* trace
  env \
    CON_TRACE_VERBOSE=1 \
    CON_TRACE_SOURCE=1 \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O0 \
    0
  mv trace-verbose-* trace-verbose
)

mkdir -p concrete-trace-O1
(
  cd concrete-trace-O1
  rm -f trace*
  env \
    CON_TRACE_SOURCE=1 \
    ${CON_COLLECT_INSTRUMENTATION} \
    "$@" \
    ../example-O1 \
    0
  mv trace-* trace
  env \
    CON_TRACE_VERBOSE=1 \
    CON_TRACE_SOURCE=1 \
    "${CON_COLLECT_INSTRUMENTATION}" \
    "$@" \
    ../example-O1 \
    0
  mv trace-verbose-* trace-verbose
)
