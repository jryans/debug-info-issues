set -eux

source "../vars.sh"

[[ ! -s ${SRC_FILE} ]] && ./generate.sh
./build.sh
./check-issue.sh
./check-fix.sh
