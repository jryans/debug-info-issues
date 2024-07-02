++ dirname ./check.sh
+ SCRIPT_DIR=.
+ source ./../vars.sh
++ set -eux
+++ dirname ./../vars.sh
++ SCRIPT_DIR=./..
++ source ./../../vars.sh
+++ set -eux
++++ csmith release csmith
++++ local build=release
++++ local program=csmith
++++ echo /Users/jryans/Projects/csmith/build-release/src/csmith
+++ CSMITH=/Users/jryans/Projects/csmith/build-release/src/csmith
+++ SRC_FILE=example.c
++++ llvm release-clang-lldb-13.0.0 clang-tidy
++++ local build=release-clang-lldb-13.0.0
++++ local program=clang-tidy
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
+++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
+++ DIAGNOSTICS_FILE=diagnostics.yaml
+++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
++++ llvm release-clang-lldb-13.0.0 clang
++++ local build=release-clang-lldb-13.0.0
++++ local program=clang
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
+++ CLANG=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
++++ llvm release-clang-lldb-13.0.0 llvm-as
++++ local build=release-clang-lldb-13.0.0
++++ local program=llvm-as
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
+++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
+++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
+++ CC_IR_OPTS='-S -emit-llvm'
+++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
+++ CC_O0_OPTS=
+++ CC_O1_OPTS=-O1
+++ CC_O2_OPTS=-O2
+++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ llvm release-clang-lldb-13.0.0 opt
++++ local build=release-clang-lldb-13.0.0
++++ local program=opt
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
+++ OPT=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
+++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
++++ dirname ./../../vars.sh
+++ FILTER_DOT=./../../tools/filter-dot.js
++++ dirname ./../../vars.sh
+++ CHECK_COVERAGE=./../../tools/check-coverage.js
++++ llvm release-clang-lldb-13.0.0 llc
++++ local build=release-clang-lldb-13.0.0
++++ local program=llc
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
+++ LLC=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
++++ klee debug print-module
++++ local build=debug
++++ local program=print-module
++++ echo /Users/jryans/Projects/klee/build-debug/bin/print-module
+++ PRINT_MODULE=/Users/jryans/Projects/klee/build-debug/bin/print-module
++++ klee debug klee
++++ local build=debug
++++ local program=klee
++++ echo /Users/jryans/Projects/klee/build-debug/bin/klee
+++ KLEE=/Users/jryans/Projects/klee/build-debug/bin/klee
+++ KLEE_COMMON_OPTS='--debug-execution-trace --output-source --search=random-path'
+++ O0_BC=klee-out-O0/final.bc
+++ O1_BC=klee-out-O1/final.bc
+++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
+++ O2_BC=klee-out-O2/final.bc
+++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
+++ BEFORE_BC=klee-out-before/final.bc
+++ AFTER_BC=klee-out-after/final.bc
+++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
++++ klee debug check-debug-info
++++ local build=debug
++++ local program=check-debug-info
++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
+++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --search=random-path --max-forks=4 --tsv'
+ LEVEL=O1
+ shift
+ find ./klee-out-O1 -type d -name 'ex*'
+ xargs rm -rf
+ KLEE_COVERAGE_OPTS='--independent-functions --output-dir=klee-out-O1 --write-no-tests --emit-all-errors --max-forks=32 --max-time=8s'
+ LEVEL_BC_OPT=O1_BC
+ /Users/jryans/Projects/klee/build-debug/bin/klee --debug-execution-trace --output-source --search=random-path --independent-functions --output-dir=klee-out-O1 --write-no-tests --emit-all-errors --max-forks=32 --max-time=8s klee-out-O1/final.bc
[0;35mKLEE: WARNING: Module and host target triples do not match: 'x86_64-apple-macosx14.0.0' != 'x86_64-apple-darwin23.5.0'
This may cause unexpected crashes or assertion violations.
[0mKLEE: output directory is "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/var-args-pointer/klee-out-O1"
[0m[0;35mKLEE: WARNING: undefined reference to function: sscanf
[0m
## Running `example` in independent function mode
[0;1;32m
KLEE: done: total instructions = 19
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0m
+ ./../../tools/check-coverage.js ./klee-out-O1
## Coverage for `example`

Asm line 28, src line 5 not covered
Asm line 29, src line 5 not covered
Asm line 30, src line 10 not covered
Asm line 31, src line 0 not covered
Asm line 32, src line 11 not covered
Asm line 33, src line 11 not covered
Asm line 34, src line 0 not covered
Asm line 35, src line 10 not covered
Asm line 36, src line 10 not covered
Asm line 37, src line 0 not covered
Asm line 38, src line 10 not covered
Asm line 39, src line 10 not covered
16 / 28 (57.14285714285714%) asm lines covered

## Summary

16 / 28 (57.14285714285714%) asm lines covered
