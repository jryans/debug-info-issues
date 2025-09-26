UNAME=`uname`

if [[ "$UNAME" == 'Darwin' ]]; then
  OS="mac"
else
  OS="linux"
fi

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
if [[ "$OS" == 'mac' ]]; then
  CC_SYSROOT_OPTS="--sysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk"
else
  CC_SYSROOT_OPTS="-B/nix/store/maxa3xhmxggrc5v2vc0c3pjb79hjlkp9-glibc-2.40-66/lib/ -idirafter /nix/store/81awch8mhqanda1vy0c09bflgra4cxh0-glibc-2.40-66-dev/include -B/nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0/lib/gcc/x86_64-unknown-linux-gnu/13.3.0 --gcc-toolchain=/nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0 -B/nix/store/w9mcn0hi97xp5m9ds5nsc4cr99qspz9h-clang-18.1.8-lib/lib -resource-dir=/nix/store/c6mlpw8bb0n9rc38hihmy0zzc1w81ljr-clang-wrapper-18.1.8/resource-root ${NIX_CFLAGS_COMPILE}"
fi
# Modified by some files to add further compilation flags
CC_COMMON_OPTS="${CC_SYSROOT_OPTS} -g -fno-pie -fno-discard-value-names -Xclang -disable-O0-optnone"
CC_NIL_OPTS="-fno-inline"
CC_IR_OPTS="-S -emit-llvm"
CC_CG_IR_OPTS="-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope"
CC_O0_OPTS=""
CC_O1_OPTS="-O1"
CC_O2_OPTS="-O2"
if [[ "$OS" == 'mac' ]]; then
  LD_SYSROOT_OPTS=""
else
  LD_SYSROOT_OPTS="-Wl,-dynamic-linker=/nix/store/maxa3xhmxggrc5v2vc0c3pjb79hjlkp9-glibc-2.40-66/lib/ld-linux-x86-64.so.2 -L/nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0/lib/gcc/x86_64-unknown-linux-gnu/13.3.0 -L/nix/store/mhd0rk497xm0xnip7262xdw9bylvzh99-gcc-13.3.0-lib/lib -L/nix/store/yg4ahy7gahx91nq80achmzilrjyv0scj-gcc-13.3.0/lib -L/nix/store/czlhi3r9b6ip4xyynwibfhm458ljwsir-gcc-13.3.0-libgcc/lib -L/nix/store/w9mcn0hi97xp5m9ds5nsc4cr99qspz9h-clang-18.1.8-lib/lib"
fi
if [[ "$OS" == 'mac' ]]; then
  LD_COMMON_OPTS="${LD_SYSROOT_OPTS} -Wl,-no_pie"
else
  LD_COMMON_OPTS="${LD_SYSROOT_OPTS} -Wl,-no-pie"
fi
# Modified by some files to add further linking flags
CC_LINK_OPTS="${LD_COMMON_OPTS}"

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

if [[ "$OS" == 'mac' ]]; then
  CON_COLLECT_INSTRUMENTATION="DYLD_INSERT_LIBRARIES=${HOME}/Projects/debug-info-concrete-check/binary-instrumentation/build/libcollect-trace-preload.dylib"
else
  CON_COLLECT_INSTRUMENTATION="LD_PRELOAD=${HOME}/Projects/debug-info-concrete-check/binary-instrumentation/build/libcollect-trace-preload.so"
fi

CON_COMPARE="${HOME}/Projects/debug-info-concrete-check/compare-traces/target/release/debug-info-concrete-compare-traces"
