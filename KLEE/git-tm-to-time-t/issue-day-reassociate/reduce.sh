set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

# C-Reduce can't handle spaces in paths, so run it from a temp directory
REDUCE_DIR=$(mktemp -d)

cp ${SRC_FILE} interestingness.sh ${REDUCE_DIR}
cd ${REDUCE_DIR}
creduce --tidy interestingness.sh ${SRC_FILE}
