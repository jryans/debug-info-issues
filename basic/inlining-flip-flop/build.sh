set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O0_OPTS} -o example-O0.ll
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O0_OPTS} ${CC_LINK_OPTS} ${LD_NPIE_OPTS} -o example-O0
mv example-O0.dSYM/Contents/Resources/DWARF/example-O0 example-O0.dwarf
rm -rf example-O0.dSYM

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O1_OPTS} -o example-O1.ll
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O1_OPTS} ${CC_LINK_OPTS} ${LD_NPIE_OPTS} -o example-O1
mv example-O1.dSYM/Contents/Resources/DWARF/example-O1 example-O1.dwarf
rm -rf example-O1.dSYM
