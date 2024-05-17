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
++ rm -rf ./klee-out-O0/ex001Int ./klee-out-O0/ex002Struct ./klee-out-O0/ex003PointerSingleElementValue ./klee-out-O0/ex004PointerSingleElementInstances ./klee-out-O0/ex005PointerMultipleElementValues ./klee-out-O0/ex006PointerFunction ./klee-out-O0/ex007StructFieldInt ./klee-out-O0/ex008StructFieldStruct ./klee-out-O0/ex009StructFieldArrayFixedLength ./klee-out-O0/ex010StructFieldArrayVariableLength ./klee-out-O0/ex011StructFieldPointerSingleElementValue ./klee-out-O0/ex012PointerSingleElementInstances ./klee-out-O0/ex013PointerMultipleElementValues ./klee-out-O0/ex014StructFieldPointerFunction
++ KLEE_COVERAGE_OPTS='--independent-functions --output-dir=klee-out-O0 --write-no-tests'
++ /Users/jryans/Projects/klee/build-debug/bin/klee --debug-execution-trace --output-source --max-forks=4 --search=random-path --independent-functions --output-dir=klee-out-O0 --write-no-tests klee-out-O0/final.bc
[0;35mKLEE: WARNING: Module and host target triples do not match: 'x86_64-apple-macosx14.0.0' != 'x86_64-apple-darwin23.4.0'
This may cause unexpected crashes or assertion violations.
[0mKLEE: output directory is "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/types/klee-out-O0"
[0m[0;1;32m
KLEE: done: total instructions = 5
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0m[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0m[0;1;32m
KLEE: done: total instructions = 6
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0m[0;1;32m
KLEE: done: total instructions = 21
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0m[0;1;31mKLEE: ERROR: example.c:39: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 13
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0m[0;1;32m
KLEE: done: total instructions = 6
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0m[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0m[0;1;32m
KLEE: done: total instructions = 9
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0m[0;1;32m
KLEE: done: total instructions = 15
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0m[0;1;31mKLEE: ERROR: example.c:76: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 7
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0m[0;1;32m
KLEE: done: total instructions = 8
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0m[0;1;32m
KLEE: done: total instructions = 26
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0m[0;1;31mKLEE: ERROR: example.c:110: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;32m
KLEE: done: total instructions = 17
KLEE: done: completed paths = 0
KLEE: done: partially completed paths = 1
KLEE: done: generated tests = 0
[0m[0;1;32m
KLEE: done: total instructions = 8
KLEE: done: completed paths = 1
KLEE: done: partially completed paths = 0
KLEE: done: generated tests = 0
[0m++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex001Int ']'
++ ./check-coverage.js ./klee-out-O0/ex001Int
./klee-out-O0/ex001Int
Coverage for ex001Int
All lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex002Struct ']'
++ ./check-coverage.js ./klee-out-O0/ex002Struct
./klee-out-O0/ex002Struct
Coverage for ex002Struct
All lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex003PointerSingleElementValue ']'
++ ./check-coverage.js ./klee-out-O0/ex003PointerSingleElementValue
./klee-out-O0/ex003PointerSingleElementValue
Coverage for ex003PointerSingleElementValue
All lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex004PointerSingleElementInstances ']'
++ ./check-coverage.js ./klee-out-O0/ex004PointerSingleElementInstances
./klee-out-O0/ex004PointerSingleElementInstances
Coverage for ex004PointerSingleElementInstances
Asm line 76, src line 25 not covered
Asm line 77, src line 25 not covered
Asm line 90, src line 30 not covered
Asm line 91, src line 30 not covered
Asm line 92, src line 30 not covered
Asm line 93, src line 30 not covered
Asm line 96, src line 32 not covered
Asm line 97, src line 32 not covered
Asm line 100, src line 34 not covered
Asm line 101, src line 34 not covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex005PointerMultipleElementValues ']'
++ ./check-coverage.js ./klee-out-O0/ex005PointerMultipleElementValues
./klee-out-O0/ex005PointerMultipleElementValues
Coverage for ex005PointerMultipleElementValues
Asm line 127, src line 39 not covered
Asm line 128, src line 39 not covered
Asm line 129, src line 39 not covered
Asm line 130, src line 39 not covered
Asm line 131, src line 39 not covered
Asm line 132, src line 39 not covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex006PointerFunction ']'
++ ./check-coverage.js ./klee-out-O0/ex006PointerFunction
./klee-out-O0/ex006PointerFunction
Coverage for ex006PointerFunction
All lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex007StructFieldInt ']'
++ ./check-coverage.js ./klee-out-O0/ex007StructFieldInt
./klee-out-O0/ex007StructFieldInt
Coverage for ex007StructFieldInt
All lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex008StructFieldStruct ']'
++ ./check-coverage.js ./klee-out-O0/ex008StructFieldStruct
./klee-out-O0/ex008StructFieldStruct
Coverage for ex008StructFieldStruct
All lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex009StructFieldArrayFixedLength ']'
++ ./check-coverage.js ./klee-out-O0/ex009StructFieldArrayFixedLength
./klee-out-O0/ex009StructFieldArrayFixedLength
Coverage for ex009StructFieldArrayFixedLength
All lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex010StructFieldArrayVariableLength ']'
++ ./check-coverage.js ./klee-out-O0/ex010StructFieldArrayVariableLength
./klee-out-O0/ex010StructFieldArrayVariableLength
Coverage for ex010StructFieldArrayVariableLength
Asm line 202, src line 76 not covered
Asm line 203, src line 76 not covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex011StructFieldPointerSingleElementValue ']'
++ ./check-coverage.js ./klee-out-O0/ex011StructFieldPointerSingleElementValue
./klee-out-O0/ex011StructFieldPointerSingleElementValue
Coverage for ex011StructFieldPointerSingleElementValue
All lines covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex012StructFieldPointerSingleElementInstances ']'
++ ./check-coverage.js ./klee-out-O0/ex012StructFieldPointerSingleElementInstances
./klee-out-O0/ex012StructFieldPointerSingleElementInstances
Coverage for ex012StructFieldPointerSingleElementInstances
Asm line 242, src line 93 not covered
Asm line 243, src line 93 not covered
Asm line 258, src line 98 not covered
Asm line 259, src line 98 not covered
Asm line 260, src line 98 not covered
Asm line 261, src line 98 not covered
Asm line 262, src line 98 not covered
Asm line 263, src line 98 not covered
Asm line 266, src line 100 not covered
Asm line 267, src line 100 not covered
Asm line 270, src line 102 not covered
Asm line 271, src line 102 not covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex013StructFieldPointerMultipleElementValues ']'
++ ./check-coverage.js ./klee-out-O0/ex013StructFieldPointerMultipleElementValues
./klee-out-O0/ex013StructFieldPointerMultipleElementValues
Coverage for ex013StructFieldPointerMultipleElementValues
Asm line 298, src line 110 not covered
Asm line 299, src line 110 not covered
Asm line 300, src line 110 not covered
Asm line 301, src line 110 not covered
Asm line 302, src line 110 not covered
Asm line 303, src line 110 not covered
Asm line 304, src line 110 not covered
++ for i in './klee-out-O0/ex*'
++ '[' -d ./klee-out-O0/ex014StructFieldPointerFunction ']'
++ ./check-coverage.js ./klee-out-O0/ex014StructFieldPointerFunction
./klee-out-O0/ex014StructFieldPointerFunction
Coverage for ex014StructFieldPointerFunction
All lines covered
