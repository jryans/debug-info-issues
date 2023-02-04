set -eux

source "../vars.sh"

[[ ! -s ${SRC_FILE} ]] && ./generate.sh
./build.sh
./check.sh
