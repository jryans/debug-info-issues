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
[0mKLEE: output directory is "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/types/klee-out-O1"
[0mKLEE: Running `ex101Int` in independent function mode
[0;1;32m
KLEE: done: total instructions = 2
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex102Struct` in independent function mode
[0;1;32m
KLEE: done: total instructions = 4
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex105PointerSingleElementValue` in independent function mode
[0;1;31mKLEE: ERROR: example.c:22: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 4
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex106PointerSingleElementInstances` in independent function mode
[0;1;31mKLEE: ERROR: example.c:29: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:29: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:29: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:29: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:29: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 77
KLEE: done: completed paths = 17
KLEE: done: partially completed paths = 5
KLEE: done: generated tests = 0
[0mKLEE: Running `ex108PointerFunction` in independent function mode
[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:41: invalid function pointer
[0m[0;1;32m
KLEE: done: total instructions = 2
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 33
KLEE: done: generated tests = 0
[0mKLEE: Running `ex201StructFieldInt` in independent function mode
[0;1;32m
KLEE: done: total instructions = 4
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex202StructFieldStruct` in independent function mode
[0;1;32m
KLEE: done: total instructions = 4
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex203StructFieldArrayFixedLength` in independent function mode
[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex204StructFieldArrayVariableLength` in independent function mode
[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex205StructFieldPointerSingleElementValue` in independent function mode
[0;1;31mKLEE: ERROR: example.c:85: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 6
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex206StructFieldPointerSingleElementInstances` in independent function mode
[0;1;31mKLEE: ERROR: example.c:97: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:97: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:97: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 32
KLEE: done: completed paths = 6
KLEE: done: partially completed paths = 3
KLEE: done: generated tests = 0
[0mKLEE: Running `ex207StructFieldPointerMultipleElementValues` in independent function mode
[0;1;31mKLEE: ERROR: example.c:111: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:111: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:111: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 10
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 3
KLEE: done: generated tests = 0
[0mKLEE: Running `ex208StructFieldPointerFunction` in independent function mode
[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:120: invalid function pointer
[0m[0;1;32m
KLEE: done: total instructions = 4
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 33
KLEE: done: generated tests = 0
[0mKLEE: Running `ex301ArrayElemInt` in independent function mode
[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex302ArrayElemStruct` in independent function mode
[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex303ArrayElemArrayFixedLength` in independent function mode
[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex305ArrayElemPointerSingleElementValue` in independent function mode
[0;1;31mKLEE: ERROR: example.c:156: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 6
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex306ArrayElemPointerSingleElementInstances` in independent function mode
[0;1;31mKLEE: ERROR: example.c:166: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:166: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:166: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 32
KLEE: done: completed paths = 6
KLEE: done: partially completed paths = 3
KLEE: done: generated tests = 0
[0mKLEE: Running `ex307ArrayElemPointerMultipleElementValues` in independent function mode
[0;1;31mKLEE: ERROR: example.c:179: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:179: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:179: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 10
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 3
KLEE: done: generated tests = 0
[0mKLEE: Running `ex308ArrayElemPointerFunction` in independent function mode
[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:187: invalid function pointer
[0m[0;1;32m
KLEE: done: total instructions = 4
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 33
KLEE: done: generated tests = 0
[0mKLEE: Running `ex401PointerToInt` in independent function mode
[0;1;31mKLEE: ERROR: example.c:193: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 4
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex402PointerToStruct` in independent function mode
[0;1;31mKLEE: ERROR: example.c:200: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 5
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex405PointerToPointerSingleElementValue` in independent function mode
[0;1;31mKLEE: ERROR: example.c:206: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:206: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:206: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 12
KLEE: done: completed paths = 7
KLEE: done: partially completed paths = 3
KLEE: done: generated tests = 0
[0mKLEE: Running `ex406PointerToPointerSingleElementInstances` in independent function mode
[0;1;31mKLEE: ERROR: example.c:210: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:210: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:210: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:210: memory error: out of bound pointer
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:213: memory error: out of bound pointer
[0mKLEE: HaltTimer invoked
[0mKLEE: halting execution, dumping remaining states
[0m[0;1;32m
KLEE: done: total instructions = 103
KLEE: done: completed paths = 14
KLEE: done: partially completed paths = 19
KLEE: done: generated tests = 0
[0mKLEE: Running `ex407PointerToPointerMultipleElementValues` in independent function mode
[0;1;31mKLEE: ERROR: example.c:223: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:223: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:223: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:223: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:223: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:223: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:223: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:223: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:223: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:223: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 27
KLEE: done: completed paths = 4
KLEE: done: partially completed paths = 10
KLEE: done: generated tests = 0
[0mKLEE: Running `ex408PointerToPointerFunction` in independent function mode
[0;1;31mKLEE: ERROR: example.c:228: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:228: calling function with too few arguments
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:228: invalid function pointer
[0m[0;1;32m
KLEE: done: total instructions = 5
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 33
KLEE: done: generated tests = 0
[0mKLEE: Running `ex501PointerAsArrayOfInt` in independent function mode
[0;1;31mKLEE: ERROR: example.c:235: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:235: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:235: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 8
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 3
KLEE: done: generated tests = 0
[0mKLEE: Running `ex502PointerAsArrayOfStruct` in independent function mode
[0;1;31mKLEE: ERROR: example.c:243: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:243: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:243: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 9
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 3
KLEE: done: generated tests = 0
[0mKLEE: Running `ex505PointerAsArrayOfPointerSingleElementValue` in independent function mode
[0;1;31mKLEE: ERROR: example.c:250: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:250: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:250: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 12
KLEE: done: completed paths = 7
KLEE: done: partially completed paths = 3
KLEE: done: generated tests = 0
[0mKLEE: Running `ex506PointerAsArrayOfPointerSingleElementInstances` in independent function mode
[0;1;31mKLEE: ERROR: example.c:255: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:255: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:255: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:257: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:257: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:255: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:257: memory error: out of bound pointer
[0mKLEE: HaltTimer invoked
[0mKLEE: halting execution, dumping remaining states
[0m[0;1;32m
KLEE: done: total instructions = 25
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 21
KLEE: done: generated tests = 0
[0mKLEE: Running `ex507PointerAsArrayOfPointerMultipleElementValues` in independent function mode
[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:266: memory error: out of bound pointer
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;32m
KLEE: done: total instructions = 63
KLEE: done: completed paths = 19
KLEE: done: partially completed paths = 14
KLEE: done: generated tests = 0
[0mKLEE: Running `ex508PointerAsArrayOfPointerFunction` in independent function mode
[0;1;31mKLEE: ERROR: example.c:272: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:272: calling function with too few arguments
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:272: invalid function pointer
[0m[0;1;32m
KLEE: done: total instructions = 5
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 33
KLEE: done: generated tests = 0
[0mKLEE: Running `ex601StructWithArrayOfPointers` in independent function mode
[0;1;31mKLEE: ERROR: example.c:283: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 6
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex602ArrayOfStructsWithPointer` in independent function mode
[0;1;31mKLEE: ERROR: example.c:292: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 6
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex603PointerArithmetic` in independent function mode
[0;1;31mKLEE: ERROR: example.c:299: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 5
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex604PointerCast` in independent function mode
[0;1;31mKLEE: ERROR: example.c:303: memory error: out of bound pointer
[0m[0;1;32m
KLEE: done: total instructions = 5
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex605PointerFunction` in independent function mode
[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:308: invalid function pointer
[0m[0;1;32m
KLEE: done: total instructions = 2
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 33
KLEE: done: generated tests = 0
[0mKLEE: Running `ex606ListLengthLimitedLoop` in independent function mode
[0;1;31mKLEE: ERROR: example.c:323: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:324: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:324: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:323: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:324: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:324: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:324: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:323: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:324: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:323: memory error: out of bound pointer
[0mKLEE: HaltTimer invoked
[0mKLEE: halting execution, dumping remaining states
[0m[0;1;32m
KLEE: done: total instructions = 114
KLEE: done: completed paths = 3
KLEE: done: partially completed paths = 20
KLEE: done: generated tests = 0
[0mKLEE: Running `ex607ListLengthUnlimitedLoop` in independent function mode
[0;1;31mKLEE: ERROR: example.c:341: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:342: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:342: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:341: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:342: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:341: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:342: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:342: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:342: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:342: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:342: memory error: out of bound pointer
[0m[0;1;31mKLEE: ERROR: example.c:341: memory error: out of bound pointer
[0mKLEE: HaltTimer invoked
[0mKLEE: halting execution, dumping remaining states
[0m[0;1;32m
KLEE: done: total instructions = 137
KLEE: done: completed paths = 4
KLEE: done: partially completed paths = 21
KLEE: done: generated tests = 0
[0m+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex101Int ']'
+ ./check-coverage.js ./klee-out-O1/ex101Int
./klee-out-O1/ex101Int
Coverage for ex101Int
2 / 2 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex102Struct ']'
+ ./check-coverage.js ./klee-out-O1/ex102Struct
./klee-out-O1/ex102Struct
Coverage for ex102Struct
4 / 4 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex105PointerSingleElementValue ']'
+ ./check-coverage.js ./klee-out-O1/ex105PointerSingleElementValue
./klee-out-O1/ex105PointerSingleElementValue
Coverage for ex105PointerSingleElementValue
3 / 3 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex106PointerSingleElementInstances ']'
+ ./check-coverage.js ./klee-out-O1/ex106PointerSingleElementInstances
./klee-out-O1/ex106PointerSingleElementInstances
Coverage for ex106PointerSingleElementInstances
12 / 12 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex108PointerFunction ']'
+ ./check-coverage.js ./klee-out-O1/ex108PointerFunction
./klee-out-O1/ex108PointerFunction
Coverage for ex108PointerFunction
Warnings present, coverage may be invalid!
Asm line 86, src line 41 not covered
2 / 3 (66.66666666666666%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex201StructFieldInt ']'
+ ./check-coverage.js ./klee-out-O1/ex201StructFieldInt
./klee-out-O1/ex201StructFieldInt
Coverage for ex201StructFieldInt
4 / 4 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex202StructFieldStruct ']'
+ ./check-coverage.js ./klee-out-O1/ex202StructFieldStruct
./klee-out-O1/ex202StructFieldStruct
Coverage for ex202StructFieldStruct
4 / 4 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex203StructFieldArrayFixedLength ']'
+ ./check-coverage.js ./klee-out-O1/ex203StructFieldArrayFixedLength
./klee-out-O1/ex203StructFieldArrayFixedLength
Coverage for ex203StructFieldArrayFixedLength
7 / 7 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex204StructFieldArrayVariableLength ']'
+ ./check-coverage.js ./klee-out-O1/ex204StructFieldArrayVariableLength
./klee-out-O1/ex204StructFieldArrayVariableLength
Coverage for ex204StructFieldArrayVariableLength
7 / 7 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex205StructFieldPointerSingleElementValue ']'
+ ./check-coverage.js ./klee-out-O1/ex205StructFieldPointerSingleElementValue
./klee-out-O1/ex205StructFieldPointerSingleElementValue
Coverage for ex205StructFieldPointerSingleElementValue
5 / 5 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex206StructFieldPointerSingleElementInstances ']'
+ ./check-coverage.js ./klee-out-O1/ex206StructFieldPointerSingleElementInstances
./klee-out-O1/ex206StructFieldPointerSingleElementInstances
Coverage for ex206StructFieldPointerSingleElementInstances
15 / 15 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex207StructFieldPointerMultipleElementValues ']'
+ ./check-coverage.js ./klee-out-O1/ex207StructFieldPointerMultipleElementValues
./klee-out-O1/ex207StructFieldPointerMultipleElementValues
Coverage for ex207StructFieldPointerMultipleElementValues
8 / 8 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex208StructFieldPointerFunction ']'
+ ./check-coverage.js ./klee-out-O1/ex208StructFieldPointerFunction
./klee-out-O1/ex208StructFieldPointerFunction
Coverage for ex208StructFieldPointerFunction
Warnings present, coverage may be invalid!
Asm line 187, src line 120 not covered
4 / 5 (80%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex301ArrayElemInt ']'
+ ./check-coverage.js ./klee-out-O1/ex301ArrayElemInt
./klee-out-O1/ex301ArrayElemInt
Coverage for ex301ArrayElemInt
7 / 7 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex302ArrayElemStruct ']'
+ ./check-coverage.js ./klee-out-O1/ex302ArrayElemStruct
./klee-out-O1/ex302ArrayElemStruct
Coverage for ex302ArrayElemStruct
7 / 7 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex303ArrayElemArrayFixedLength ']'
+ ./check-coverage.js ./klee-out-O1/ex303ArrayElemArrayFixedLength
./klee-out-O1/ex303ArrayElemArrayFixedLength
Coverage for ex303ArrayElemArrayFixedLength
7 / 7 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex305ArrayElemPointerSingleElementValue ']'
+ ./check-coverage.js ./klee-out-O1/ex305ArrayElemPointerSingleElementValue
./klee-out-O1/ex305ArrayElemPointerSingleElementValue
Coverage for ex305ArrayElemPointerSingleElementValue
5 / 5 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex306ArrayElemPointerSingleElementInstances ']'
+ ./check-coverage.js ./klee-out-O1/ex306ArrayElemPointerSingleElementInstances
./klee-out-O1/ex306ArrayElemPointerSingleElementInstances
Coverage for ex306ArrayElemPointerSingleElementInstances
15 / 15 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex307ArrayElemPointerMultipleElementValues ']'
+ ./check-coverage.js ./klee-out-O1/ex307ArrayElemPointerMultipleElementValues
./klee-out-O1/ex307ArrayElemPointerMultipleElementValues
Coverage for ex307ArrayElemPointerMultipleElementValues
8 / 8 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex308ArrayElemPointerFunction ']'
+ ./check-coverage.js ./klee-out-O1/ex308ArrayElemPointerFunction
./klee-out-O1/ex308ArrayElemPointerFunction
Coverage for ex308ArrayElemPointerFunction
Warnings present, coverage may be invalid!
Asm line 282, src line 187 not covered
Asm line 283, src line 187 not covered
Asm line 284, src line 187 not covered
Asm line 285, src line 187 not covered
Asm line 286, src line 187 not covered
4 / 9 (44.44444444444444%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex401PointerToInt ']'
+ ./check-coverage.js ./klee-out-O1/ex401PointerToInt
./klee-out-O1/ex401PointerToInt
Coverage for ex401PointerToInt
3 / 3 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex402PointerToStruct ']'
+ ./check-coverage.js ./klee-out-O1/ex402PointerToStruct
./klee-out-O1/ex402PointerToStruct
Coverage for ex402PointerToStruct
4 / 4 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex405PointerToPointerSingleElementValue ']'
+ ./check-coverage.js ./klee-out-O1/ex405PointerToPointerSingleElementValue
./klee-out-O1/ex405PointerToPointerSingleElementValue
Coverage for ex405PointerToPointerSingleElementValue
4 / 4 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex406PointerToPointerSingleElementInstances ']'
+ ./check-coverage.js ./klee-out-O1/ex406PointerToPointerSingleElementInstances
./klee-out-O1/ex406PointerToPointerSingleElementInstances
Coverage for ex406PointerToPointerSingleElementInstances
Warnings present, coverage may be invalid!
14 / 14 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex407PointerToPointerMultipleElementValues ']'
+ ./check-coverage.js ./klee-out-O1/ex407PointerToPointerMultipleElementValues
./klee-out-O1/ex407PointerToPointerMultipleElementValues
Coverage for ex407PointerToPointerMultipleElementValues
7 / 7 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex408PointerToPointerFunction ']'
+ ./check-coverage.js ./klee-out-O1/ex408PointerToPointerFunction
./klee-out-O1/ex408PointerToPointerFunction
Coverage for ex408PointerToPointerFunction
Warnings present, coverage may be invalid!
Asm line 358, src line 228 not covered
3 / 4 (75%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex501PointerAsArrayOfInt ']'
+ ./check-coverage.js ./klee-out-O1/ex501PointerAsArrayOfInt
./klee-out-O1/ex501PointerAsArrayOfInt
Coverage for ex501PointerAsArrayOfInt
6 / 6 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex502PointerAsArrayOfStruct ']'
+ ./check-coverage.js ./klee-out-O1/ex502PointerAsArrayOfStruct
./klee-out-O1/ex502PointerAsArrayOfStruct
Coverage for ex502PointerAsArrayOfStruct
7 / 7 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex505PointerAsArrayOfPointerSingleElementValue ']'
+ ./check-coverage.js ./klee-out-O1/ex505PointerAsArrayOfPointerSingleElementValue
./klee-out-O1/ex505PointerAsArrayOfPointerSingleElementValue
Coverage for ex505PointerAsArrayOfPointerSingleElementValue
4 / 4 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex506PointerAsArrayOfPointerSingleElementInstances ']'
+ ./check-coverage.js ./klee-out-O1/ex506PointerAsArrayOfPointerSingleElementInstances
./klee-out-O1/ex506PointerAsArrayOfPointerSingleElementInstances
Coverage for ex506PointerAsArrayOfPointerSingleElementInstances
Asm line 411, src line 257 not covered
13 / 14 (92.85714285714286%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex507PointerAsArrayOfPointerMultipleElementValues ']'
+ ./check-coverage.js ./klee-out-O1/ex507PointerAsArrayOfPointerMultipleElementValues
./klee-out-O1/ex507PointerAsArrayOfPointerMultipleElementValues
Coverage for ex507PointerAsArrayOfPointerMultipleElementValues
Warnings present, coverage may be invalid!
8 / 8 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex508PointerAsArrayOfPointerFunction ']'
+ ./check-coverage.js ./klee-out-O1/ex508PointerAsArrayOfPointerFunction
./klee-out-O1/ex508PointerAsArrayOfPointerFunction
Coverage for ex508PointerAsArrayOfPointerFunction
Warnings present, coverage may be invalid!
Asm line 437, src line 272 not covered
Asm line 438, src line 272 not covered
Asm line 439, src line 272 not covered
Asm line 440, src line 272 not covered
Asm line 441, src line 272 not covered
3 / 8 (37.5%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex601StructWithArrayOfPointers ']'
+ ./check-coverage.js ./klee-out-O1/ex601StructWithArrayOfPointers
./klee-out-O1/ex601StructWithArrayOfPointers
Coverage for ex601StructWithArrayOfPointers
5 / 5 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex602ArrayOfStructsWithPointer ']'
+ ./check-coverage.js ./klee-out-O1/ex602ArrayOfStructsWithPointer
./klee-out-O1/ex602ArrayOfStructsWithPointer
Coverage for ex602ArrayOfStructsWithPointer
5 / 5 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex603PointerArithmetic ']'
+ ./check-coverage.js ./klee-out-O1/ex603PointerArithmetic
./klee-out-O1/ex603PointerArithmetic
Coverage for ex603PointerArithmetic
4 / 4 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex604PointerCast ']'
+ ./check-coverage.js ./klee-out-O1/ex604PointerCast
./klee-out-O1/ex604PointerCast
Coverage for ex604PointerCast
4 / 4 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex605PointerFunction ']'
+ ./check-coverage.js ./klee-out-O1/ex605PointerFunction
./klee-out-O1/ex605PointerFunction
Coverage for ex605PointerFunction
Warnings present, coverage may be invalid!
Asm line 487, src line 0 not covered
Asm line 488, src line 310 not covered
2 / 4 (50%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex606ListLengthLimitedLoop ']'
+ ./check-coverage.js ./klee-out-O1/ex606ListLengthLimitedLoop
./klee-out-O1/ex606ListLengthLimitedLoop
Coverage for ex606ListLengthLimitedLoop
29 / 29 (100%) asm lines covered
+ for i in './klee-out-${LEVEL}/ex*'
+ '[' -d ./klee-out-O1/ex607ListLengthUnlimitedLoop ']'
+ ./check-coverage.js ./klee-out-O1/ex607ListLengthUnlimitedLoop
./klee-out-O1/ex607ListLengthUnlimitedLoop
Coverage for ex607ListLengthUnlimitedLoop
27 / 27 (100%) asm lines covered
