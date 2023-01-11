set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")

${SCRIPT_DIR}/generate.sh
${SCRIPT_DIR}/build.sh
${SCRIPT_DIR}/check.sh
