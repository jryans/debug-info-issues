set -eux

SRC_FILE="example.c"
CC_COMMON_OPTS="-I ${HOME}/Projects/klee/include -g -fno-inline -fno-discard-value-names"
CC_ASM_OPTS="-c -S -emit-llvm"
CC_O0_OPTS="-Xclang -disable-O0-optnone"
CC_O1_OPTS="-O1"
CC_LINK_OPTS="-D CONCRETE -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"

$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_ASM_OPTS} ${CC_O0_OPTS} -o example-O0.ll
$(brew --prefix llvm)/bin/llvm-as example-O0.ll

$(brew --prefix llvm)/bin/clang ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_ASM_OPTS} ${CC_O1_OPTS} -o example-O1.ll
$(brew --prefix llvm)/bin/llvm-as example-O1.ll
# $(brew --prefix llvm)/bin/clang ${SRC_FILE} ${CC_COMMON_OPTS} ${CC_O1_OPTS} ${CC_LINK_OPTS} -o example-O1
