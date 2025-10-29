set -eux

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")
source "${SCRIPT_DIR}/../vars.sh"

CLANG_CXX=$(llvm release-clang-lldb-18 clang++)

mkdir -p O0
(
  cd O0
  ${CLANG_CXX} ../caller.cpp ${CC_COMMON_OPTS} -fno-inline ${CC_IR_OPTS} ${CC_O0_OPTS} -o caller.ll
  ${CLANG_CXX} ../callee.cpp ${CC_COMMON_OPTS} -fno-inline ${CC_IR_OPTS} ${CC_O0_OPTS} -o callee.ll
  ${CLANG_CXX} ../caller.cpp ${CC_COMMON_OPTS} -fno-inline ${CC_O0_OPTS} -c -o caller.o
  ${CLANG_CXX} ../callee.cpp ${CC_COMMON_OPTS} -fno-inline ${CC_O0_OPTS} -c -o callee.o
  ${CLANG_CXX} caller.o callee.o ${CC_COMMON_OPTS} ${CC_O0_OPTS} ${CC_LINK_OPTS} -o example
)

mkdir -p O1
(
  cd O1
  ${CLANG_CXX} ../caller.cpp ${CC_COMMON_OPTS} -fno-inline ${CC_IR_OPTS} ${CC_O1_OPTS} -o caller.ll
  ${CLANG_CXX} ../callee.cpp ${CC_COMMON_OPTS} -fno-inline ${CC_IR_OPTS} ${CC_O1_OPTS} -o callee.ll
  ${CLANG_CXX} ../caller.cpp ${CC_COMMON_OPTS} -fno-inline ${CC_O1_OPTS} -c -o caller.o
  ${CLANG_CXX} ../callee.cpp ${CC_COMMON_OPTS} -fno-inline ${CC_O1_OPTS} -c -o callee.o
  ${CLANG_CXX} caller.o callee.o ${CC_COMMON_OPTS} ${CC_O1_OPTS} ${CC_LINK_OPTS} -o example
)
