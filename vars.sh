set -eux

llvm() {
  local build=$1
  local program=$2
  echo "$HOME/Projects/LLVM/llvm/builds/$build/bin/$program"
}

klee() {
  local build=$1
  local program=$2
  echo "$HOME/Projects/klee/build-$build/bin/$program"
}

csmith() {
  local build=$1
  local program=$2
  echo "$HOME/Projects/csmith/build-$build/src/$program"
}

CSMITH=$(csmith release csmith)
SRC_FILE="example.c"

CLANG_TIDY=$(llvm release-clang-lldb-13.0.0 clang-tidy)
DIAGNOSTICS_FILE="diagnostics.yaml"
CLANG_TIDY_OPTS="--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=${DIAGNOSTICS_FILE}"

CLANG=$(llvm release-clang-lldb-13.0.0 clang)
LLVM_AS=$(llvm release-clang-lldb-13.0.0 llvm-as)
# TODO: Rename these removing `OPTS` suffix...?
# TODO: Might be able to use `--sysroot` to cover both `-isysroot` and `-syslibroot`
CC_SYSROOT_OPTS="-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
# Modified by some files to add further compilation flags
CC_COMMON_OPTS="${CC_SYSROOT_OPTS} -g -fno-discard-value-names -Xclang -disable-O0-optnone"
CC_NIL_OPTS="-fno-inline"
CC_IR_OPTS="-S -emit-llvm"
CC_CG_IR_OPTS="-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope"
CC_O0_OPTS=""
CC_O1_OPTS="-O1"
CC_O2_OPTS="-O2"
CC_LINK_SYSROOT_OPTS="-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
# Modified by some files to add further linking flags
CC_LINK_OPTS="${CC_LINK_SYSROOT_OPTS}"

OPT=$(llvm release-clang-lldb-13.0.0 opt)
OPT_CFG_OPTS="--passes=dot-cfg-only --disable-output"
FILTER_DOT="$(dirname "${BASH_SOURCE[0]}")/tools/filter-dot.js"
CHECK_COVERAGE="$(dirname "${BASH_SOURCE[0]}")/tools/check-coverage.js"

LLC=$(llvm release-clang-lldb-13.0.0 llc)

filter_cg_ir() {
  local input_ir="$1"
  local output_ir="$2"
  < ${input_ir} grep -v '^+' | sed '2,/IR Dump/!d' | grep -v 'IR Dump' > ${output_ir}
}

PRINT_MODULE=$(klee debug print-module)

KLEE=$(klee debug klee)
KLEE_COMMON_OPTS="--debug-execution-trace --output-source --search=random-path"

O0_BC="klee-out-O0/final.bc"
O1_BC="klee-out-O1/final.bc"
O1_FIXED_BC="klee-out-O1-fixed/final.bc"
O2_BC="klee-out-O2/final.bc"
O2_FIXED_BC="klee-out-O2-fixed/final.bc"

BEFORE_BC="klee-out-before/final.bc"
AFTER_BC="klee-out-after/final.bc"
AFTER_FIXED_BC="klee-out-after-fixed/final.bc"

SYM_CHECK=$(klee debug check-debug-info)
SYM_CHECK_OPTS="--debug-only=check-debug-info,values-collector,variable ${KLEE_COMMON_OPTS} --max-forks=4 --tsv"
