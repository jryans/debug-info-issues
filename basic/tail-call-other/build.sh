set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O0_OPTS} ${CC_NIL_OPTS} -o example-O0.ll
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O0_OPTS} ${CC_NIL_OPTS} ${CC_LINK_OPTS} -o example-O0
if [[ "$OS" == 'mac' ]]; then
  mv example-O0.dSYM/Contents/Resources/DWARF/example-O0 example-O0.dwarf
  rm -rf example-O0.dSYM
fi

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O1_OPTS} ${CC_NIL_OPTS} -o example-O1.ll
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O1_OPTS} ${CC_NIL_OPTS} ${CC_LINK_OPTS} -o example-O1
if [[ "$OS" == 'mac' ]]; then
  mv example-O1.dSYM/Contents/Resources/DWARF/example-O1 example-O1.dwarf
  rm -rf example-O1.dSYM
fi

${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_IR_OPTS} ${CC_O2_OPTS} ${CC_NIL_OPTS} -o example-O2.ll
${CLANG} ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O2_OPTS} ${CC_NIL_OPTS} ${CC_LINK_OPTS} -o example-O2
if [[ "$OS" == 'mac' ]]; then
  mv example-O2.dSYM/Contents/Resources/DWARF/example-O2 example-O2.dwarf
  rm -rf example-O2.dSYM
fi
