++ dirname ../../job.sh
+ SCRIPT_DIR=../..
+ source ../../vars.sh
++ set -eux
+++ dirname ../../vars.sh
++ SCRIPT_DIR=../..
++ source ../../../vars.sh
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
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
+++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
+++ DIAGNOSTICS_FILE=diagnostics.yaml
+++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
++++ llvm release-clang-lldb-13.0.0 clang
++++ local build=release-clang-lldb-13.0.0
++++ local program=clang
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang
+++ CLANG=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang
++++ llvm release-clang-lldb-13.0.0 llvm-as
++++ local build=release-clang-lldb-13.0.0
++++ local program=llvm-as
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as
+++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as
+++ CC_COMMON_OPTS='-I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
+++ CC_IR_OPTS='-S -emit-llvm'
+++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
+++ CC_O0_OPTS=
+++ CC_O1_OPTS=-O1
+++ CC_LINK_OPTS='-D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ klee debug print-module
++++ local build=debug
++++ local program=print-module
++++ echo /Users/jryans/Projects/klee/build-debug/bin/print-module
+++ PRINT_MODULE=/Users/jryans/Projects/klee/build-debug/bin/print-module
++++ klee release klee
++++ local build=release
++++ local program=klee
++++ echo /Users/jryans/Projects/klee/build-release/bin/klee
+++ KLEE=/Users/jryans/Projects/klee/build-release/bin/klee
+++ KLEE_COMMON_OPTS='--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4'
+++ O0_BC=klee-out-O0/final.bc
+++ O1_BC=klee-out-O1/final.bc
+++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
+++ O2_BC=klee-out-O2/final.bc
+++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
++++ klee debug debug-info-check
++++ local build=debug
++++ local program=debug-info-check
++++ echo /Users/jryans/Projects/klee/build-debug/bin/debug-info-check
+++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/debug-info-check
+++ CHECK_OPTS='--debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace'
+ [[ ! -s example.c ]]
+ ../../build.sh
+++ dirname ../../build.sh
++ SCRIPT_DIR=../..
++ source ../../vars.sh
+++ set -eux
++++ dirname ../../vars.sh
+++ SCRIPT_DIR=../..
+++ source ../../../vars.sh
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
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
+++++ llvm release-clang-lldb-13.0.0 clang
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang
++++ CLANG=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang
+++++ llvm release-clang-lldb-13.0.0 llvm-as
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llvm-as
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as
++++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as
++++ CC_COMMON_OPTS='-I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_OPTS='-D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ klee debug print-module
+++++ local build=debug
+++++ local program=print-module
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/print-module
++++ PRINT_MODULE=/Users/jryans/Projects/klee/build-debug/bin/print-module
+++++ klee release klee
+++++ local build=release
+++++ local program=klee
+++++ echo /Users/jryans/Projects/klee/build-release/bin/klee
++++ KLEE=/Users/jryans/Projects/klee/build-release/bin/klee
++++ KLEE_COMMON_OPTS='--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4'
++++ O0_BC=klee-out-O0/final.bc
++++ O1_BC=klee-out-O1/final.bc
++++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
++++ O2_BC=klee-out-O2/final.bc
++++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
+++++ klee debug debug-info-check
+++++ local build=debug
+++++ local program=debug-info-check
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/debug-info-check
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/debug-info-check
++++ CHECK_OPTS='--debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace'
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy '--checks=clang-diagnostic-*,clang-analyzer-*,misc-*' --export-fixes=diagnostics.yaml example.c --
3 warnings generated.
[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/8/example.c:62:60: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [clang-diagnostic-constant-logical-operand][0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                           ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/8/example.c:62:60: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                           ^~
[0m[0;32m                                                           &
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/8/example.c:62:60: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                          ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/8/example.c:62:71: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [clang-diagnostic-constant-logical-operand][0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                                      ^  ~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/8/example.c:62:71: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                                      ^~
[0m[0;32m                                                                      &
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/8/example.c:62:71: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                                     ~^~~~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/8/example.c:72:55: [0m[0;1;35mwarning: [0m[1mparameter 'p_25' is unused [misc-unused-parameters][0m
const int32_t * func_23(const int16_t  p_24, int16_t  p_25)
[0;1;32m                                                      ^
[0m++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
[1mexample.c:62:71: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [-Wconstant-logical-operand][0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                                      ^  ~~~~~
[0m[1mexample.c:62:71: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                                      ^~
[0m[0;32m                                                                      &
[0m[1mexample.c:62:71: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                                     ~^~~~~~~~
[0m[1mexample.c:62:60: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [-Wconstant-logical-operand][0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                           ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:62:60: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                           ^~
[0m[0;32m                                                           &
[0m[1mexample.c:62:60: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                          ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m2 warnings generated.
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:62:71: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [-Wconstant-logical-operand][0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                                      ^  ~~~~~
[0m[1mexample.c:62:71: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                                      ^~
[0m[0;32m                                                                      &
[0m[1mexample.c:62:71: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                                     ~^~~~~~~~
[0m[1mexample.c:62:60: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [-Wconstant-logical-operand][0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                           ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:62:60: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                           ^~
[0m[0;32m                                                           &
[0m[1mexample.c:62:60: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                          ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m2 warnings generated.
++ mkdir -p klee-out-O1
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope -O1 -o /dev/null
++ filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
++ local input_ir=example-O1-cg-raw.ll
++ local output_ir=example-O1-cg.ll
++ grep -v '^+'
++ sed '2,/IR Dump/!d'
++ grep -v 'IR Dump'
++ rm example-O1-cg-raw.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1/final.bc example-O1-cg.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -O1 -D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -o example-O1
[1mexample.c:62:71: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [-Wconstant-logical-operand][0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                                      ^  ~~~~~
[0m[1mexample.c:62:71: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                                      ^~
[0m[0;32m                                                                      &
[0m[1mexample.c:62:71: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                                     ~^~~~~~~~
[0m[1mexample.c:62:60: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [-Wconstant-logical-operand][0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                           ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:62:60: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                           ^~
[0m[0;32m                                                           &
[0m[1mexample.c:62:60: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
    (*g_37) = (((int8_t)((uint8_t)((uint32_t)(0UL != (l_20 && (~((7UL && (-1L)) ^ 0xD0L)))) + (uint32_t)(-8L)) >> (uint8_t)4) >> (int8_t)2) < l_20);
[0;1;32m                                                          ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m2 warnings generated.
+ ../../check.sh
+++ dirname ../../check.sh
++ SCRIPT_DIR=../..
++ source ../../vars.sh
+++ set -eux
++++ dirname ../../vars.sh
+++ SCRIPT_DIR=../..
+++ source ../../../vars.sh
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
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
+++++ llvm release-clang-lldb-13.0.0 clang
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang
++++ CLANG=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang
+++++ llvm release-clang-lldb-13.0.0 llvm-as
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llvm-as
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as
++++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as
++++ CC_COMMON_OPTS='-I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_OPTS='-D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ klee debug print-module
+++++ local build=debug
+++++ local program=print-module
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/print-module
++++ PRINT_MODULE=/Users/jryans/Projects/klee/build-debug/bin/print-module
+++++ klee release klee
+++++ local build=release
+++++ local program=klee
+++++ echo /Users/jryans/Projects/klee/build-release/bin/klee
++++ KLEE=/Users/jryans/Projects/klee/build-release/bin/klee
++++ KLEE_COMMON_OPTS='--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4'
++++ O0_BC=klee-out-O0/final.bc
++++ O1_BC=klee-out-O1/final.bc
++++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
++++ O2_BC=klee-out-O2/final.bc
++++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
+++++ klee debug debug-info-check
+++++ local build=debug
+++++ local program=debug-info-check
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/debug-info-check
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/debug-info-check
++++ CHECK_OPTS='--debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace'
++ /Users/jryans/Projects/klee/build-debug/bin/debug-info-check klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `func_1`

✅ Before and after function names match

### Variables

Before variable `l_20` (decl src line 41)
Store to `l_20` (decl src line 41), asm line 73
  %inc = add i8 %3, 1, l56 c13, asm line 72
  Added assignment starting at src line 56, column 13
Store to `l_20` (decl src line 41), asm line 32
  const i8 -113
  Added assignment starting at src line 41, column 13
Before variable `l_15` (decl src line 44)
Store to `l_15` (decl src line 44), asm line 43
  const i64 -1
  @dbg.declare without read users, removable
  Added assignment starting at src line 44, column 17
Before variable `l_16` (decl src line 45)
Store to `l_16` (decl src line 45), asm line 45
  const i16 -17901
  @dbg.declare without read users, removable
  Added assignment starting at src line 45, column 17
Before variable `l_17` (decl src line 46)
Store to `l_17` (decl src line 46), asm line 47
  const i32 -4
  @dbg.declare without read users, removable
  Added assignment starting at src line 46, column 17
Before variable `l_18` (decl src line 47)
Store to `l_18` (decl src line 47), asm line 49
  const i32 0
  @dbg.declare without read users, removable
  Added assignment starting at src line 47, column 17
Before variable `l_19` (decl src line 48)
Store to `l_19` (decl src line 48), asm line 51
  const i32 604101594
  @dbg.declare without read users, removable
  Added assignment starting at src line 48, column 17
Before variable `l_9` (decl src line 51)
Store to `l_9` (decl src line 51), asm line 62
  global g_10
  @dbg.declare without read users, removable
  Added assignment starting at src line 51, column 22
Before variable `l_11` (decl src line 52)
Store to `l_11` (decl src line 52), asm line 64
  global g_10
  @dbg.declare without read users, removable
  Added assignment starting at src line 52, column 22
Before variable `l_12` (decl src line 53)
Store to `l_12` (decl src line 53), asm line 66
  const i32* null
  @dbg.declare without read users, removable
  Added assignment starting at src line 53, column 22
Before variable `l_13` (decl src line 54)
Before variable `i` (decl src line 55)

After variable `l_20` (decl src line 41)
@dbg.value mapping for `l_20` (decl src line 41), asm line 19
Value produced for `l_20` (decl src line 41), asm line 19
  const i8 -113
  Added assignment starting at src line 41, column 0
After variable `l_20` (decl src line 41)
@dbg.value mapping for `l_20` (decl src line 41), asm line 21
Value produced for `l_20` (decl src line 41), asm line 21
  const i8 -113
  Value is same as last assignment, skipping

❌ 11 before variables found, 1 after variables found, 10 mismatched

### Assignments

🔔 Before live ranges for `i` (decl src line 55) not found (variable likely undefined)
🔔 After live ranges for (removable) `l_11` (decl src line 52) not found
🔔 After live ranges for (removable) `l_12` (decl src line 53) not found
🔔 Before live ranges for `l_13` (decl src line 54) not found (variable likely undefined)
🔔 After live ranges for (removable) `l_15` (decl src line 44) not found
🔔 After live ranges for (removable) `l_16` (decl src line 45) not found
🔔 After live ranges for (removable) `l_17` (decl src line 46) not found
🔔 After live ranges for (removable) `l_18` (decl src line 47) not found
🔔 After live ranges for (removable) `l_19` (decl src line 48) not found
🔔 After live ranges for (removable) `l_9` (decl src line 51) not found
✅ Before live range coverage
  Covered:   1
  Uncovered: 0
  Undefined: 2
  Unused:    0
  Removable: 8

### Symbolic values

#### Before values

Collected value for `l_20`
  i8 -113
  0x8F

#### After values

Collected value for `l_20`
  i8 -113
  0x8F

#### Check before against after

🔔 After live ranges for (removable) `l_11` (decl src line 52) not found
🔔 After live ranges for (removable) `l_12` (decl src line 53) not found
🔔 After live ranges for (removable) `l_15` (decl src line 44) not found
🔔 After live ranges for (removable) `l_16` (decl src line 45) not found
🔔 After live ranges for (removable) `l_17` (decl src line 46) not found
🔔 After live ranges for (removable) `l_18` (decl src line 47) not found
🔔 After live ranges for (removable) `l_19` (decl src line 48) not found
Checking equivalence of `l_20` (decl src line 41) from
assn 0, src line 41, column 13
i8 -113
0x8F
and
assn 0, src line 41, column 0
i8 -113
0x8F
🔔 After assn 0, src line 41, column 0 doesn't match before assn 1, src line 56, column 13
Expected 1 symbolic value(s), got 0
🔔 Before `l_20` (decl src line 41) assn 1, src line 56, column 13 has no symbolic value (likely unreachable) from %inc = add i8 %4, 1, l56 c13
🔔 After live ranges for (removable) `l_9` (decl src line 51) not found
✅ Before symbolic values checked against after
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 1
  Removable:   8

#### Check after against before

Checking equivalence of `l_20` (decl src line 41) from
assn 0, src line 41, column 0
i8 -113
0x8F
and
assn 0, src line 41, column 13
i8 -113
0x8F
✅ After symbolic values checked against before
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Function `func_23`

✅ Before and after function names match

### Variables

Before variable `p_24` (decl src line 72)
Store to `p_24` (decl src line 72), asm line 153
  arg 0
  Added assignment starting at src line 72, column 0
Before variable `p_25` (decl src line 72)
Store to `p_25` (decl src line 72), asm line 155
  arg 1
  @dbg.declare without read users, removable
  Added assignment starting at src line 72, column 0
Before variable `l_26` (decl src line 74)
Store to `l_26` (decl src line 74), asm line 158
  global g_27
  Added assignment starting at src line 74, column 15
Before variable `l_36` (decl src line 75)
Store to `l_36` (decl src line 75), asm line 160
  const i32 39123155
  Added assignment starting at src line 75, column 13
Before variable `l_38` (decl src line 76)
Store to `l_38` (decl src line 76), asm line 162
  global g_6
  Added assignment starting at src line 76, column 20

After variable `p_24` (decl src line 72)
@dbg.value mapping for `p_24` (decl src line 72), asm line 32
Value produced for `p_24` (decl src line 72), asm line 32
  arg 0
  Added assignment starting at src line 72, column 0
After variable `p_25` (decl src line 72)
After variable intrinsic with undef input, asm line 33, ignoring undefined variable
  @dbg.value(i16 undef, !101)
After variable `l_26` (decl src line 74)
@dbg.value mapping for `l_26` (decl src line 74), asm line 34
Value produced for `l_26` (decl src line 74), asm line 34
  global g_27
  Added assignment starting at src line 74, column 0
After variable `l_36` (decl src line 75)
@dbg.value mapping for `l_36` (decl src line 75), asm line 35
Value produced for `l_36` (decl src line 75), asm line 35
  const i32 39123155
  Added assignment starting at src line 75, column 0
After variable `l_38` (decl src line 76)
@dbg.value mapping for `l_38` (decl src line 76), asm line 36
Value produced for `l_38` (decl src line 76), asm line 36
  global g_6
  Added assignment starting at src line 76, column 0

✅ 5 before variables found, 5 after variables found, 0 mismatched

### Assignments

🔔 After live ranges for (removable) `p_25` (decl src line 72) not found
✅ Before live range coverage
  Covered:   4
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 1

### Symbolic values

#### Before values

Collected value for `p_24`
  i16 %p_24
  (ReadLSB w16 0x0 p_24)
Collected value for `p_25`
  i16 %p_25
  (ReadLSB w16 0x0 p_25)
Collected value for `l_26`
  Concrete pointer resolves to g_27, offset 0x0
  Replaced concrete pointer with hash 0xE867DB3DB1CC8FAD
  @g_27 = global i64 1562781606913586687, align 8, !dbg !32
  0xE867DB3DB1CC8FAD
Collected value for `l_36`
  i32 39123155
  0x254F8D3
Collected value for `l_38`
  Concrete pointer resolves to g_6, offset 0x0
  Replaced concrete pointer with hash 0x8654E5CC41D80D24
  @g_6 = global i32 -1765135179, align 4, !dbg !23
  0x8654E5CC41D80D24

#### After values

Collected value for `p_24`
  i16 %p_24
  (ReadLSB w16 0x0 p_24)
Collected value for `l_26`
  Concrete pointer resolves to g_27, offset 0x0
  Replaced concrete pointer with hash 0xE867DB3DB1CC8FAD
  @g_27 = local_unnamed_addr global i64 1562781606913586687, align 8, !dbg !32
  0xE867DB3DB1CC8FAD
Collected value for `l_36`
  i32 39123155
  0x254F8D3
Collected value for `l_38`
  Concrete pointer resolves to g_6, offset 0x0
  Replaced concrete pointer with hash 0x8654E5CC41D80D24
  @g_6 = global i32 -1765135179, align 4, !dbg !23
  0x8654E5CC41D80D24

#### Check before against after

Checking equivalence of `l_26` (decl src line 74) from
assn 0, src line 74, column 15
@g_27 = global i64 1562781606913586687, align 8, !dbg !32
0xE867DB3DB1CC8FAD
and
assn 0, src line 74, column 0
@g_27 = local_unnamed_addr global i64 1562781606913586687, align 8, !dbg !32
0xE867DB3DB1CC8FAD
Checking equivalence of `l_36` (decl src line 75) from
assn 0, src line 75, column 13
i32 39123155
0x254F8D3
and
assn 0, src line 75, column 0
i32 39123155
0x254F8D3
Checking equivalence of `l_38` (decl src line 76) from
assn 0, src line 76, column 20
@g_6 = global i32 -1765135179, align 4, !dbg !23
0x8654E5CC41D80D24
and
assn 0, src line 76, column 0
@g_6 = global i32 -1765135179, align 4, !dbg !23
0x8654E5CC41D80D24
Checking equivalence of `p_24` (decl src line 72) from
assn 0, src line 72, column 0
i16 %p_24
(ReadLSB w16 0x0 p_24)
and
assn 0, src line 72, column 0
i16 %p_24
(ReadLSB w16 0x0 p_24)
Query to parse
array p_24[2] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w16 0x0 p_24)
     (ReadLSB w16 0x0 p_24)))
Parsed query
(Eq N0:(ReadLSB w16 0x0 p_24)
     N0)
🔔 After live ranges for (removable) `p_25` (decl src line 72) not found
✅ Before symbolic values checked against after
  Matching:    4
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   1

#### Check after against before

Checking equivalence of `l_26` (decl src line 74) from
assn 0, src line 74, column 0
@g_27 = local_unnamed_addr global i64 1562781606913586687, align 8, !dbg !32
0xE867DB3DB1CC8FAD
and
assn 0, src line 74, column 15
@g_27 = global i64 1562781606913586687, align 8, !dbg !32
0xE867DB3DB1CC8FAD
Checking equivalence of `l_36` (decl src line 75) from
assn 0, src line 75, column 0
i32 39123155
0x254F8D3
and
assn 0, src line 75, column 13
i32 39123155
0x254F8D3
Checking equivalence of `l_38` (decl src line 76) from
assn 0, src line 76, column 0
@g_6 = global i32 -1765135179, align 4, !dbg !23
0x8654E5CC41D80D24
and
assn 0, src line 76, column 20
@g_6 = global i32 -1765135179, align 4, !dbg !23
0x8654E5CC41D80D24
Checking equivalence of `p_24` (decl src line 72) from
assn 0, src line 72, column 0
i16 %p_24
(ReadLSB w16 0x0 p_24)
and
assn 0, src line 72, column 0
i16 %p_24
(ReadLSB w16 0x0 p_24)
Query to parse
array p_24[2] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w16 0x0 p_24)
     (ReadLSB w16 0x0 p_24)))
Parsed query
(Eq N0:(ReadLSB w16 0x0 p_24)
     N0)
✅ After symbolic values checked against before
  Matching:    4
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
