set -eux

source ../vars.sh

${CHECK} ${BEFORE_BC} ${AFTER_BC} ${CHECK_OPTS}
