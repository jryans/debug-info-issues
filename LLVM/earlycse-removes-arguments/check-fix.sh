set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

${CHECK} ${O0_BC} ${O2_FIXED_BC} ${CHECK_OPTS}
