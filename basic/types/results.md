+ source ../vars.sh
++ set -eux
+++ dirname ../vars.sh
++ SCRIPT_DIR=..
++ source ../../vars.sh
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
++++ dirname ../../vars.sh
+++ FILTER_DOT=../../tools/filter-dot.js
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
+ [[ ! -s example.c ]]
+ ./build.sh
+++ dirname ./build.sh
++ SCRIPT_DIR=.
++ source ./../vars.sh
+++ set -eux
++++ dirname ./../vars.sh
+++ SCRIPT_DIR=./..
+++ source ./../../vars.sh
++++ set -eux
+++++ csmith release csmith
+++++ local build=release
+++++ local program=csmith
+++++ echo /Users/jryans/Projects/csmith/build-release/src/csmith
++++ CSMITH=/Users/jryans/Projects/csmith/build-release/src/csmith
++++ SRC_FILE=example.c
+++++ llvm release-clang-lldb-13.0.0 clang-tidy
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang-tidy
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
+++++ llvm release-clang-lldb-13.0.0 clang
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
++++ CLANG=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
+++++ llvm release-clang-lldb-13.0.0 llvm-as
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llvm-as
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_O2_OPTS=-O2
++++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ llvm release-clang-lldb-13.0.0 opt
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=opt
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
+++++ dirname ./../../vars.sh
++++ FILTER_DOT=./../../tools/filter-dot.js
+++++ llvm release-clang-lldb-13.0.0 llc
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llc
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
++++ LLC=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
+++++ klee debug print-module
+++++ local build=debug
+++++ local program=print-module
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/print-module
++++ PRINT_MODULE=/Users/jryans/Projects/klee/build-debug/bin/print-module
+++++ klee debug klee
+++++ local build=debug
+++++ local program=klee
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/klee
++++ KLEE=/Users/jryans/Projects/klee/build-debug/bin/klee
++++ KLEE_COMMON_OPTS='--debug-execution-trace --output-source --search=random-path'
++++ O0_BC=klee-out-O0/final.bc
++++ O1_BC=klee-out-O1/final.bc
++++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
++++ O2_BC=klee-out-O2/final.bc
++++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
++++ BEFORE_BC=klee-out-before/final.bc
++++ AFTER_BC=klee-out-after/final.bc
++++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
+++++ klee debug check-debug-info
+++++ local build=debug
+++++ local program=check-debug-info
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --search=random-path --max-forks=4 --tsv'
++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
++ mkdir -p klee-out-O1
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope -O1 -o /dev/null
++ filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
++ local input_ir=example-O1-cg-raw.ll
++ local output_ir=example-O1-cg.ll
++ grep -v '^+'
++ sed '2,/IR Dump/!d'
++ grep -v 'IR Dump'
++ rm example-O1-cg-raw.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1/final.bc example-O1-cg.ll
+ ./check.sh
+++ dirname ./check.sh
++ SCRIPT_DIR=.
++ source ./../vars.sh
+++ set -eux
++++ dirname ./../vars.sh
+++ SCRIPT_DIR=./..
+++ source ./../../vars.sh
++++ set -eux
+++++ csmith release csmith
+++++ local build=release
+++++ local program=csmith
+++++ echo /Users/jryans/Projects/csmith/build-release/src/csmith
++++ CSMITH=/Users/jryans/Projects/csmith/build-release/src/csmith
++++ SRC_FILE=example.c
+++++ llvm release-clang-lldb-13.0.0 clang-tidy
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang-tidy
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
+++++ llvm release-clang-lldb-13.0.0 clang
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
++++ CLANG=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
+++++ llvm release-clang-lldb-13.0.0 llvm-as
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llvm-as
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_O2_OPTS=-O2
++++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ llvm release-clang-lldb-13.0.0 opt
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=opt
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
+++++ dirname ./../../vars.sh
++++ FILTER_DOT=./../../tools/filter-dot.js
+++++ llvm release-clang-lldb-13.0.0 llc
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llc
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
++++ LLC=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
+++++ klee debug print-module
+++++ local build=debug
+++++ local program=print-module
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/print-module
++++ PRINT_MODULE=/Users/jryans/Projects/klee/build-debug/bin/print-module
+++++ klee debug klee
+++++ local build=debug
+++++ local program=klee
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/klee
++++ KLEE=/Users/jryans/Projects/klee/build-debug/bin/klee
++++ KLEE_COMMON_OPTS='--debug-execution-trace --output-source --search=random-path'
++++ O0_BC=klee-out-O0/final.bc
++++ O1_BC=klee-out-O1/final.bc
++++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
++++ O2_BC=klee-out-O2/final.bc
++++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
++++ BEFORE_BC=klee-out-before/final.bc
++++ AFTER_BC=klee-out-after/final.bc
++++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
+++++ klee debug check-debug-info
+++++ local build=debug
+++++ local program=check-debug-info
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --search=random-path --max-forks=4 --tsv'
++ find ./klee-out-O0 -type d -name 'ex*'
++ xargs rm -rf
++ KLEE_COVERAGE_OPTS='--independent-functions --output-dir=klee-out-O0 --write-no-tests --max-forks=8'
++ /Users/jryans/Projects/klee/build-debug/bin/klee --debug-execution-trace --output-source --search=random-path --independent-functions --output-dir=klee-out-O0 --write-no-tests --max-forks=8 klee-out-O0/final.bc
[0;35mKLEE: WARNING: Module and host target triples do not match: 'x86_64-apple-macosx14.0.0' != 'x86_64-apple-darwin23.5.0'
This may cause unexpected crashes or assertion violations.
[0mKLEE: output directory is "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/types/klee-out-O0"
[0mKLEE: Running `ex101Int` in independent function mode
[0;1;32m
KLEE: done: total instructions = 5
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex102Struct` in independent function mode
[0;1;31mKLEE: ERROR: example.c:16: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 4
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex105PointerSingleElementValue` in independent function mode
[0;1;31mKLEE: ERROR: example.c:22: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex106PointerSingleElementInstances` in independent function mode
[0;1;31mKLEE: ERROR: example.c:30: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:33: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
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
[0m[0;1;32m
KLEE: done: total instructions = 67
KLEE: done: completed paths = 7
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex107PointerMultipleElementValues` in independent function mode
[0;1;31mKLEE: ERROR: example.c:39: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:39: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 12
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 3
KLEE: done: generated tests = 0
[0mKLEE: Running `ex108PointerFunction` in independent function mode
[0;1;31mKLEE: ERROR: example.c:44: invalid function pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;32m
KLEE: done: total instructions = 13
KLEE: done: completed paths = 8
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex201StructFieldInt` in independent function mode
[0;1;31mKLEE: ERROR: example.c:54: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 4
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex202StructFieldStruct` in independent function mode
[0;1;31mKLEE: ERROR: example.c:64: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 5
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex203StructFieldArrayFixedLength` in independent function mode
[0;1;31mKLEE: ERROR: example.c:72: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:72: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex204StructFieldArrayVariableLength` in independent function mode
[0;1;31mKLEE: ERROR: example.c:80: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:80: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex205StructFieldPointerSingleElementValue` in independent function mode
[0;1;31mKLEE: ERROR: example.c:88: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 5
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex206StructFieldPointerSingleElementInstances` in independent function mode
[0;1;31mKLEE: ERROR: example.c:97: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:97: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 8
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex207StructFieldPointerMultipleElementValues` in independent function mode
[0;1;31mKLEE: ERROR: example.c:114: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:114: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 9
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex208StructFieldPointerFunction` in independent function mode
[0;1;31mKLEE: ERROR: example.c:123: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:123: calling function with too few arguments
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 4
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex301ArrayElemInt` in independent function mode
[0;1;31mKLEE: ERROR: example.c:133: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:133: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex302ArrayElemStruct` in independent function mode
[0;1;31mKLEE: ERROR: example.c:143: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:143: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 9
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex303ArrayElemArrayFixedLength` in independent function mode
[0;1;31mKLEE: ERROR: example.c:150: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:150: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 9
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex305ArrayElemPointerSingleElementValue` in independent function mode
[0;1;31mKLEE: ERROR: example.c:159: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 6
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex306ArrayElemPointerSingleElementInstances` in independent function mode
[0;1;31mKLEE: ERROR: example.c:166: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:166: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 10
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex307ArrayElemPointerMultipleElementValues` in independent function mode
[0;1;31mKLEE: ERROR: example.c:182: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:182: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 11
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex308ArrayElemPointerFunction` in independent function mode
[0;1;31mKLEE: ERROR: example.c:190: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:190: calling function with too few arguments
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 5
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex401PointerToInt` in independent function mode
[0;1;31mKLEE: ERROR: example.c:196: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex402PointerToStruct` in independent function mode
[0;1;31mKLEE: ERROR: example.c:203: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 8
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex405PointerToPointerSingleElementValue` in independent function mode
[0;1;31mKLEE: ERROR: example.c:209: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 9
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex406PointerToPointerSingleElementInstances` in independent function mode
[0;1;31mKLEE: ERROR: example.c:213: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:213: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;32m
KLEE: done: total instructions = 128
KLEE: done: completed paths = 7
KLEE: done: partially completed paths = 2
KLEE: done: generated tests = 0
[0mKLEE: Running `ex407PointerToPointerMultipleElementValues` in independent function mode
[0;1;31mKLEE: ERROR: example.c:226: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:226: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 17
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 3
KLEE: done: generated tests = 0
[0mKLEE: Running `ex408PointerToPointerFunction` in independent function mode
[0;1;31mKLEE: ERROR: example.c:231: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:231: invalid function pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:231: calling function with too few arguments
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 3
KLEE: done: generated tests = 0
[0mKLEE: Running `ex501StructWithArrayOfPointers` in independent function mode
[0;1;31mKLEE: ERROR: example.c:242: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex502ArrayOfStructsWithPointer` in independent function mode
[0;1;31mKLEE: ERROR: example.c:251: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex503PointerArithmetic` in independent function mode
[0;1;31mKLEE: ERROR: example.c:256: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 8
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex504PointerCast` in independent function mode
[0;1;31mKLEE: ERROR: example.c:260: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 8
KLEE: done: completed paths = 2
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0m++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex101Int ']'
++ ./check-coverage.js ./klee-out-O0/ex101Int
./klee-out-O0/ex101Int
Coverage for ex101Int
5 / 5 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex102Struct ']'
++ ./check-coverage.js ./klee-out-O0/ex102Struct
./klee-out-O0/ex102Struct
Coverage for ex102Struct
4 / 4 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex105PointerSingleElementValue ']'
++ ./check-coverage.js ./klee-out-O0/ex105PointerSingleElementValue
./klee-out-O0/ex105PointerSingleElementValue
Coverage for ex105PointerSingleElementValue
6 / 6 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex106PointerSingleElementInstances ']'
++ ./check-coverage.js ./klee-out-O0/ex106PointerSingleElementInstances
./klee-out-O0/ex106PointerSingleElementInstances
Coverage for ex106PointerSingleElementInstances
Warnings present, coverage may be invalid!
35 / 35 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex107PointerMultipleElementValues ']'
++ ./check-coverage.js ./klee-out-O0/ex107PointerMultipleElementValues
./klee-out-O0/ex107PointerMultipleElementValues
Coverage for ex107PointerMultipleElementValues
Asm line 125, src line 39 not covered
Asm line 126, src line 39 not covered
9 / 11 (81.81818181818183%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex108PointerFunction ']'
++ ./check-coverage.js ./klee-out-O0/ex108PointerFunction
./klee-out-O0/ex108PointerFunction
Coverage for ex108PointerFunction
Warnings present, coverage may be invalid!
6 / 6 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex201StructFieldInt ']'
++ ./check-coverage.js ./klee-out-O0/ex201StructFieldInt
./klee-out-O0/ex201StructFieldInt
Coverage for ex201StructFieldInt
4 / 4 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex202StructFieldStruct ']'
++ ./check-coverage.js ./klee-out-O0/ex202StructFieldStruct
./klee-out-O0/ex202StructFieldStruct
Coverage for ex202StructFieldStruct
5 / 5 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex203StructFieldArrayFixedLength ']'
++ ./check-coverage.js ./klee-out-O0/ex203StructFieldArrayFixedLength
./klee-out-O0/ex203StructFieldArrayFixedLength
Coverage for ex203StructFieldArrayFixedLength
Asm line 169, src line 72 not covered
Asm line 170, src line 72 not covered
7 / 9 (77.77777777777779%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex204StructFieldArrayVariableLength ']'
++ ./check-coverage.js ./klee-out-O0/ex204StructFieldArrayVariableLength
./klee-out-O0/ex204StructFieldArrayVariableLength
Coverage for ex204StructFieldArrayVariableLength
Asm line 183, src line 80 not covered
Asm line 184, src line 80 not covered
7 / 9 (77.77777777777779%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex205StructFieldPointerSingleElementValue ']'
++ ./check-coverage.js ./klee-out-O0/ex205StructFieldPointerSingleElementValue
./klee-out-O0/ex205StructFieldPointerSingleElementValue
Coverage for ex205StructFieldPointerSingleElementValue
5 / 5 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex206StructFieldPointerSingleElementInstances ']'
++ ./check-coverage.js ./klee-out-O0/ex206StructFieldPointerSingleElementInstances
./klee-out-O0/ex206StructFieldPointerSingleElementInstances
Coverage for ex206StructFieldPointerSingleElementInstances
Asm line 210, src line 97 not covered
Asm line 211, src line 97 not covered
Asm line 214, src line 99 not covered
Asm line 215, src line 99 not covered
Asm line 218, src line 100 not covered
Asm line 219, src line 100 not covered
Asm line 220, src line 100 not covered
Asm line 221, src line 100 not covered
Asm line 222, src line 100 not covered
Asm line 223, src line 100 not covered
Asm line 226, src line 101 not covered
Asm line 227, src line 101 not covered
Asm line 228, src line 101 not covered
Asm line 229, src line 101 not covered
Asm line 230, src line 101 not covered
Asm line 231, src line 101 not covered
Asm line 232, src line 101 not covered
Asm line 233, src line 101 not covered
Asm line 234, src line 101 not covered
Asm line 237, src line 104 not covered
Asm line 238, src line 104 not covered
Asm line 239, src line 104 not covered
Asm line 240, src line 104 not covered
Asm line 241, src line 104 not covered
Asm line 242, src line 104 not covered
Asm line 243, src line 104 not covered
Asm line 244, src line 104 not covered
Asm line 245, src line 104 not covered
Asm line 248, src line 106 not covered
Asm line 249, src line 106 not covered
8 / 38 (21.052631578947366%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex207StructFieldPointerMultipleElementValues ']'
++ ./check-coverage.js ./klee-out-O0/ex207StructFieldPointerMultipleElementValues
./klee-out-O0/ex207StructFieldPointerMultipleElementValues
Coverage for ex207StructFieldPointerMultipleElementValues
Asm line 264, src line 114 not covered
Asm line 265, src line 114 not covered
9 / 11 (81.81818181818183%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex208StructFieldPointerFunction ']'
++ ./check-coverage.js ./klee-out-O0/ex208StructFieldPointerFunction
./klee-out-O0/ex208StructFieldPointerFunction
Coverage for ex208StructFieldPointerFunction
Asm line 275, src line 123 not covered
4 / 5 (80%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex301ArrayElemInt ']'
++ ./check-coverage.js ./klee-out-O0/ex301ArrayElemInt
./klee-out-O0/ex301ArrayElemInt
Coverage for ex301ArrayElemInt
Asm line 288, src line 133 not covered
Asm line 289, src line 133 not covered
7 / 9 (77.77777777777779%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex302ArrayElemStruct ']'
++ ./check-coverage.js ./klee-out-O0/ex302ArrayElemStruct
./klee-out-O0/ex302ArrayElemStruct
Coverage for ex302ArrayElemStruct
Asm line 304, src line 143 not covered
Asm line 305, src line 143 not covered
9 / 11 (81.81818181818183%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex303ArrayElemArrayFixedLength ']'
++ ./check-coverage.js ./klee-out-O0/ex303ArrayElemArrayFixedLength
./klee-out-O0/ex303ArrayElemArrayFixedLength
Coverage for ex303ArrayElemArrayFixedLength
Asm line 320, src line 150 not covered
Asm line 321, src line 150 not covered
9 / 11 (81.81818181818183%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex305ArrayElemPointerSingleElementValue ']'
++ ./check-coverage.js ./klee-out-O0/ex305ArrayElemPointerSingleElementValue
./klee-out-O0/ex305ArrayElemPointerSingleElementValue
Coverage for ex305ArrayElemPointerSingleElementValue
6 / 6 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex306ArrayElemPointerSingleElementInstances ']'
++ ./check-coverage.js ./klee-out-O0/ex306ArrayElemPointerSingleElementInstances
./klee-out-O0/ex306ArrayElemPointerSingleElementInstances
Coverage for ex306ArrayElemPointerSingleElementInstances
Asm line 350, src line 166 not covered
Asm line 351, src line 166 not covered
Asm line 354, src line 168 not covered
Asm line 355, src line 168 not covered
Asm line 358, src line 169 not covered
Asm line 359, src line 169 not covered
Asm line 360, src line 169 not covered
Asm line 361, src line 169 not covered
Asm line 362, src line 169 not covered
Asm line 363, src line 169 not covered
Asm line 364, src line 169 not covered
Asm line 365, src line 169 not covered
Asm line 368, src line 170 not covered
Asm line 369, src line 170 not covered
Asm line 370, src line 170 not covered
Asm line 371, src line 170 not covered
Asm line 372, src line 170 not covered
Asm line 373, src line 170 not covered
Asm line 374, src line 170 not covered
Asm line 375, src line 170 not covered
Asm line 376, src line 170 not covered
Asm line 377, src line 170 not covered
Asm line 378, src line 170 not covered
Asm line 381, src line 173 not covered
Asm line 382, src line 173 not covered
Asm line 383, src line 173 not covered
Asm line 384, src line 173 not covered
Asm line 385, src line 173 not covered
Asm line 386, src line 173 not covered
Asm line 387, src line 173 not covered
Asm line 388, src line 173 not covered
Asm line 389, src line 173 not covered
Asm line 390, src line 173 not covered
Asm line 391, src line 173 not covered
Asm line 394, src line 175 not covered
Asm line 395, src line 175 not covered
10 / 46 (21.73913043478261%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex307ArrayElemPointerMultipleElementValues ']'
++ ./check-coverage.js ./klee-out-O0/ex307ArrayElemPointerMultipleElementValues
./klee-out-O0/ex307ArrayElemPointerMultipleElementValues
Coverage for ex307ArrayElemPointerMultipleElementValues
Asm line 412, src line 182 not covered
Asm line 413, src line 182 not covered
11 / 13 (84.61538461538461%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex308ArrayElemPointerFunction ']'
++ ./check-coverage.js ./klee-out-O0/ex308ArrayElemPointerFunction
./klee-out-O0/ex308ArrayElemPointerFunction
Coverage for ex308ArrayElemPointerFunction
Asm line 424, src line 190 not covered
Asm line 425, src line 190 not covered
Asm line 426, src line 190 not covered
Asm line 427, src line 190 not covered
Asm line 428, src line 190 not covered
Asm line 429, src line 190 not covered
5 / 11 (45.45454545454545%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex401PointerToInt ']'
++ ./check-coverage.js ./klee-out-O0/ex401PointerToInt
./klee-out-O0/ex401PointerToInt
Coverage for ex401PointerToInt
6 / 6 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex402PointerToStruct ']'
++ ./check-coverage.js ./klee-out-O0/ex402PointerToStruct
./klee-out-O0/ex402PointerToStruct
Coverage for ex402PointerToStruct
7 / 7 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex405PointerToPointerSingleElementValue ']'
++ ./check-coverage.js ./klee-out-O0/ex405PointerToPointerSingleElementValue
./klee-out-O0/ex405PointerToPointerSingleElementValue
Coverage for ex405PointerToPointerSingleElementValue
7 / 7 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex406PointerToPointerSingleElementInstances ']'
++ ./check-coverage.js ./klee-out-O0/ex406PointerToPointerSingleElementInstances
./klee-out-O0/ex406PointerToPointerSingleElementInstances
Coverage for ex406PointerToPointerSingleElementInstances
Warnings present, coverage may be invalid!
43 / 43 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex407PointerToPointerMultipleElementValues ']'
++ ./check-coverage.js ./klee-out-O0/ex407PointerToPointerMultipleElementValues
./klee-out-O0/ex407PointerToPointerMultipleElementValues
Coverage for ex407PointerToPointerMultipleElementValues
Asm line 541, src line 226 not covered
Asm line 542, src line 226 not covered
11 / 13 (84.61538461538461%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex408PointerToPointerFunction ']'
++ ./check-coverage.js ./klee-out-O0/ex408PointerToPointerFunction
./klee-out-O0/ex408PointerToPointerFunction
Coverage for ex408PointerToPointerFunction
Asm line 554, src line 231 not covered
6 / 7 (85.71428571428571%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex501StructWithArrayOfPointers ']'
++ ./check-coverage.js ./klee-out-O0/ex501StructWithArrayOfPointers
./klee-out-O0/ex501StructWithArrayOfPointers
Coverage for ex501StructWithArrayOfPointers
7 / 7 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex502ArrayOfStructsWithPointer ']'
++ ./check-coverage.js ./klee-out-O0/ex502ArrayOfStructsWithPointer
./klee-out-O0/ex502ArrayOfStructsWithPointer
Coverage for ex502ArrayOfStructsWithPointer
7 / 7 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex503PointerArithmetic ']'
++ ./check-coverage.js ./klee-out-O0/ex503PointerArithmetic
./klee-out-O0/ex503PointerArithmetic
Coverage for ex503PointerArithmetic
7 / 7 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex504PointerCast ']'
++ ./check-coverage.js ./klee-out-O0/ex504PointerCast
./klee-out-O0/ex504PointerCast
Coverage for ex504PointerCast
7 / 7 (100%) asm lines covered
