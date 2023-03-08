set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../../vars.sh"

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O1_OPTS} -c -o example-O1.o
