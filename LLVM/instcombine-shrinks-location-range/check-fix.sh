set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

${SYM_CHECK} ${BEFORE_BC} ${AFTER_FIXED_BC} ${SYM_CHECK_OPTS}
