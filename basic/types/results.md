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
+++ KLEE_COMMON_OPTS='--debug-execution-trace --output-source --max-forks=4 --search=random-path'
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
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --search=random-path --tsv'
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
++++ KLEE_COMMON_OPTS='--debug-execution-trace --output-source --max-forks=4 --search=random-path'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --search=random-path --tsv'
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
++++ KLEE_COMMON_OPTS='--debug-execution-trace --output-source --max-forks=4 --search=random-path'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --search=random-path --tsv'
++ rm -rf ./klee-out-O0/ex101Int ./klee-out-O0/ex102Struct ./klee-out-O0/ex105PointerSingleElementValue ./klee-out-O0/ex106PointerSingleElementInstances ./klee-out-O0/ex107PointerMultipleElementValues ./klee-out-O0/ex108PointerFunction ./klee-out-O0/ex201StructFieldInt ./klee-out-O0/ex202StructFieldStruct ./klee-out-O0/ex203StructFieldArrayFixedLength ./klee-out-O0/ex204StructFieldArrayVariableLength ./klee-out-O0/ex205StructFieldPointerSingleElementValue ./klee-out-O0/ex206StructFieldPointerSingleElementInstances ./klee-out-O0/ex207StructFieldPointerMultipleElementValues ./klee-out-O0/ex208StructFieldPointerFunction ./klee-out-O0/ex301ArrayElemInt ./klee-out-O0/ex302ArrayElemStruct ./klee-out-O0/ex303ArrayElemArrayFixedLength ./klee-out-O0/ex305ArrayElemPointerSingleElementValue ./klee-out-O0/ex306ArrayElemPointerSingleElementInstances ./klee-out-O0/ex307ArrayElemPointerMultipleElementValues ./klee-out-O0/ex308ArrayElemPointerFunction
++ KLEE_COVERAGE_OPTS='--independent-functions --output-dir=klee-out-O0 --write-no-tests'
++ /Users/jryans/Projects/klee/build-debug/bin/klee --debug-execution-trace --output-source --max-forks=4 --search=random-path --independent-functions --output-dir=klee-out-O0 --write-no-tests klee-out-O0/final.bc
[0;35mKLEE: WARNING: Module and host target triples do not match: 'x86_64-apple-macosx14.0.0' != 'x86_64-apple-darwin23.4.0'
This may cause unexpected crashes or assertion violations.
[0mKLEE: output directory is "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/types/klee-out-O0"
[0mKLEE: Running `ex101Int` in independent function mode
[0;1;32m
KLEE: done: total instructions = 5
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex102Struct` in independent function mode
[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex105PointerSingleElementValue` in independent function mode
[0;1;32m
KLEE: done: total instructions = 6
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex106PointerSingleElementInstances` in independent function mode
[0;1;32m
KLEE: done: total instructions = 21
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex107PointerMultipleElementValues` in independent function mode
[0;1;31mKLEE: ERROR: example.c:41: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 9
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex108PointerFunction` in independent function mode
[0;1;32m
KLEE: done: total instructions = 6
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex201StructFieldInt` in independent function mode
[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex202StructFieldStruct` in independent function mode
[0;1;32m
KLEE: done: total instructions = 9
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex203StructFieldArrayFixedLength` in independent function mode
[0;1;32m
KLEE: done: total instructions = 15
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex204StructFieldArrayVariableLength` in independent function mode
[0;1;31mKLEE: ERROR: example.c:78: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex205StructFieldPointerSingleElementValue` in independent function mode
[0;1;32m
KLEE: done: total instructions = 8
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex206StructFieldPointerSingleElementInstances` in independent function mode
[0;1;32m
KLEE: done: total instructions = 26
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex207StructFieldPointerMultipleElementValues` in independent function mode
[0;1;31mKLEE: ERROR: example.c:112: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 12
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0mKLEE: Running `ex208StructFieldPointerFunction` in independent function mode
[0;1;32m
KLEE: done: total instructions = 8
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex301ArrayElemInt` in independent function mode
[0;1;32m
KLEE: done: total instructions = 15
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex302ArrayElemStruct` in independent function mode
[0;1;32m
KLEE: done: total instructions = 17
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex303ArrayElemArrayFixedLength` in independent function mode
[0;1;32m
KLEE: done: total instructions = 11
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex305ArrayElemPointerSingleElementValue` in independent function mode
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;32m
KLEE: done: total instructions = 10
KLEE: done: completed paths = 5
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex306ArrayElemPointerSingleElementInstances` in independent function mode
[0;1;32m
KLEE: done: total instructions = 44
KLEE: done: completed paths = 4
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex307ArrayElemPointerMultipleElementValues` in independent function mode
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
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
[0m[0;1;32m
KLEE: done: total instructions = 35
KLEE: done: completed paths = 5
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0mKLEE: Running `ex308ArrayElemPointerFunction` in independent function mode
[0;1;31mKLEE: ERROR: example.c:191: invalid function pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:191: invalid function pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;1;32m
KLEE: done: total instructions = 21
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 5
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
7 / 7 (100%) asm lines covered
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
Asm line 85, src line 27 not covered
Asm line 86, src line 27 not covered
Asm line 99, src line 32 not covered
Asm line 100, src line 32 not covered
Asm line 101, src line 32 not covered
Asm line 102, src line 32 not covered
Asm line 105, src line 34 not covered
Asm line 106, src line 34 not covered
Asm line 109, src line 36 not covered
Asm line 110, src line 36 not covered
21 / 31 (67.74193548387096%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex107PointerMultipleElementValues ']'
++ ./check-coverage.js ./klee-out-O0/ex107PointerMultipleElementValues
./klee-out-O0/ex107PointerMultipleElementValues
Coverage for ex107PointerMultipleElementValues
Asm line 132, src line 41 not covered
Asm line 133, src line 41 not covered
9 / 11 (81.81818181818183%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex108PointerFunction ']'
++ ./check-coverage.js ./klee-out-O0/ex108PointerFunction
./klee-out-O0/ex108PointerFunction
Coverage for ex108PointerFunction
6 / 6 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex201StructFieldInt ']'
++ ./check-coverage.js ./klee-out-O0/ex201StructFieldInt
./klee-out-O0/ex201StructFieldInt
Coverage for ex201StructFieldInt
7 / 7 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex202StructFieldStruct ']'
++ ./check-coverage.js ./klee-out-O0/ex202StructFieldStruct
./klee-out-O0/ex202StructFieldStruct
Coverage for ex202StructFieldStruct
9 / 9 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex203StructFieldArrayFixedLength ']'
++ ./check-coverage.js ./klee-out-O0/ex203StructFieldArrayFixedLength
./klee-out-O0/ex203StructFieldArrayFixedLength
Coverage for ex203StructFieldArrayFixedLength
15 / 15 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex204StructFieldArrayVariableLength ']'
++ ./check-coverage.js ./klee-out-O0/ex204StructFieldArrayVariableLength
./klee-out-O0/ex204StructFieldArrayVariableLength
Coverage for ex204StructFieldArrayVariableLength
Asm line 203, src line 78 not covered
Asm line 204, src line 78 not covered
7 / 9 (77.77777777777779%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex205StructFieldPointerSingleElementValue ']'
++ ./check-coverage.js ./klee-out-O0/ex205StructFieldPointerSingleElementValue
./klee-out-O0/ex205StructFieldPointerSingleElementValue
Coverage for ex205StructFieldPointerSingleElementValue
8 / 8 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex206StructFieldPointerSingleElementInstances ']'
++ ./check-coverage.js ./klee-out-O0/ex206StructFieldPointerSingleElementInstances
./klee-out-O0/ex206StructFieldPointerSingleElementInstances
Coverage for ex206StructFieldPointerSingleElementInstances
Asm line 243, src line 95 not covered
Asm line 244, src line 95 not covered
Asm line 259, src line 100 not covered
Asm line 260, src line 100 not covered
Asm line 261, src line 100 not covered
Asm line 262, src line 100 not covered
Asm line 263, src line 100 not covered
Asm line 264, src line 100 not covered
Asm line 267, src line 102 not covered
Asm line 268, src line 102 not covered
Asm line 271, src line 104 not covered
Asm line 272, src line 104 not covered
26 / 38 (68.42105263157895%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex207StructFieldPointerMultipleElementValues ']'
++ ./check-coverage.js ./klee-out-O0/ex207StructFieldPointerMultipleElementValues
./klee-out-O0/ex207StructFieldPointerMultipleElementValues
Coverage for ex207StructFieldPointerMultipleElementValues
Asm line 294, src line 112 not covered
Asm line 295, src line 112 not covered
12 / 14 (85.71428571428571%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex208StructFieldPointerFunction ']'
++ ./check-coverage.js ./klee-out-O0/ex208StructFieldPointerFunction
./klee-out-O0/ex208StructFieldPointerFunction
Coverage for ex208StructFieldPointerFunction
8 / 8 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex301ArrayElemInt ']'
++ ./check-coverage.js ./klee-out-O0/ex301ArrayElemInt
./klee-out-O0/ex301ArrayElemInt
Coverage for ex301ArrayElemInt
15 / 15 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex302ArrayElemStruct ']'
++ ./check-coverage.js ./klee-out-O0/ex302ArrayElemStruct
./klee-out-O0/ex302ArrayElemStruct
Coverage for ex302ArrayElemStruct
17 / 17 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex303ArrayElemArrayFixedLength ']'
++ ./check-coverage.js ./klee-out-O0/ex303ArrayElemArrayFixedLength
./klee-out-O0/ex303ArrayElemArrayFixedLength
Coverage for ex303ArrayElemArrayFixedLength
11 / 11 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex305ArrayElemPointerSingleElementValue ']'
++ ./check-coverage.js ./klee-out-O0/ex305ArrayElemPointerSingleElementValue
./klee-out-O0/ex305ArrayElemPointerSingleElementValue
Coverage for ex305ArrayElemPointerSingleElementValue
Warnings present, coverage may be invalid!
6 / 6 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex306ArrayElemPointerSingleElementInstances ']'
++ ./check-coverage.js ./klee-out-O0/ex306ArrayElemPointerSingleElementInstances
./klee-out-O0/ex306ArrayElemPointerSingleElementInstances
Coverage for ex306ArrayElemPointerSingleElementInstances
Asm line 431, src line 174 not covered
Asm line 432, src line 174 not covered
36 / 38 (94.73684210526315%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex307ArrayElemPointerMultipleElementValues ']'
++ ./check-coverage.js ./klee-out-O0/ex307ArrayElemPointerMultipleElementValues
./klee-out-O0/ex307ArrayElemPointerMultipleElementValues
Coverage for ex307ArrayElemPointerMultipleElementValues
Warnings present, coverage may be invalid!
11 / 11 (100%) asm lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex308ArrayElemPointerFunction ']'
++ ./check-coverage.js ./klee-out-O0/ex308ArrayElemPointerFunction
./klee-out-O0/ex308ArrayElemPointerFunction
Coverage for ex308ArrayElemPointerFunction
Warnings present, coverage may be invalid!
Asm line 467, src line 191 not covered
Asm line 468, src line 191 not covered
9 / 11 (81.81818181818183%) asm lines covered
