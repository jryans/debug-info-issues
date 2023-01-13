set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/vars.sh"

${CSMITH} \
--no-argc \
--no-checksum \
--no-float \
--max-block-depth 2 \
--max-block-size 2 \
--max-expr-complexity 4 \
--max-funcs 2 \
--no-safe-math \
--no-builtins \
--no-force-globals-static \
> ${SRC_FILE}

replace --silent '\"csmith.h\"' '<stdint.h>' ${SRC_FILE}
replace --silent '^.*platform_main.*$' '' ${SRC_FILE}
