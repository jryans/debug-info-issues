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
11 warnings generated.
[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:54:63: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [clang-diagnostic-constant-logical-operand][0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                              ^  ~~~~~~~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:54:63: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                              ^~
[0m[0;32m                                                              |
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:54:63: [0m[0;1;35mwarning: [0m[1mexpression result unused [clang-diagnostic-unused-value][0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                          ~~~ ^  ~~~~~~~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:54:130: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 141 with boolean expression is always false [clang-diagnostic-tautological-constant-out-of-range-compare][0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:64:42: [0m[0;1;35mwarning: [0m[1mparameter 'p_4' is unused [misc-unused-parameters][0m
int32_t  func_2(uint64_t  p_3, uint64_t  p_4, int32_t  p_5, uint8_t  p_6, uint32_t  p_7)
[0;1;32m                                         ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:64:70: [0m[0;1;35mwarning: [0m[1mparameter 'p_6' is unused [misc-unused-parameters][0m
int32_t  func_2(uint64_t  p_3, uint64_t  p_4, int32_t  p_5, uint8_t  p_6, uint32_t  p_7)
[0;1;32m                                                                     ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:64:85: [0m[0;1;35mwarning: [0m[1mparameter 'p_7' is unused [misc-unused-parameters][0m
int32_t  func_2(uint64_t  p_3, uint64_t  p_4, int32_t  p_5, uint8_t  p_6, uint32_t  p_7)
[0;1;32m                                                                                    ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:79:59: [0m[0;1;35mwarning: [0m[1mexpression result unused [clang-diagnostic-unused-value][0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                                              ~~~~~~~~~~ ~^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:79:90: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [clang-diagnostic-constant-logical-operand][0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                                                                                         ^  ~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:79:90: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                                                                                         ^~
[0m[0;32m                                                                                         |
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:79:98: [0m[0;1;35mwarning: [0m[1mexpression result unused [clang-diagnostic-unused-value][0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:80:26: [0m[0;1;35mwarning: [0m[1mbitwise negation of a boolean expression; did you mean logical negation? [clang-diagnostic-bool-operation][0m
    l_19[6][0][4] &= ((((~(((int8_t)((*l_23) = ((l_17 == &g_18) < (g_15 , g_15.f9))) / (int8_t)p_3) > g_18)) == 0L) , g_15.f7) , 1L);
[0;1;32m                        ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[0;32m                         !
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/4/example.c:80:110: [0m[0;1;35mwarning: [0m[1mexpression result unused [clang-diagnostic-unused-value][0m
    l_19[6][0][4] &= ((((~(((int8_t)((*l_23) = ((l_17 == &g_18) < (g_15 , g_15.f9))) / (int8_t)p_3) > g_18)) == 0L) , g_15.f7) , 1L);
[0;1;32m                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~
[0m++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
[1mexample.c:54:63: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                              ^  ~~~~~~~~~~~
[0m[1mexample.c:54:63: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                              ^~
[0m[0;32m                                                              |
[0m[1mexample.c:54:63: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                          ~~~ ^  ~~~~~~~~~~~
[0m[1mexample.c:54:130: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 141 with boolean expression is always false [-Wtautological-constant-out-of-range-compare][0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~
[0m[1mexample.c:79:59: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                                              ~~~~~~~~~~ ~^
[0m[1mexample.c:79:90: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                                                                                         ^  ~~~
[0m[1mexample.c:79:90: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                                                                                         ^~
[0m[0;32m                                                                                         |
[0m[1mexample.c:79:98: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
[0m[1mexample.c:80:110: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    l_19[6][0][4] &= ((((~(((int8_t)((*l_23) = ((l_17 == &g_18) < (g_15 , g_15.f9))) / (int8_t)p_3) > g_18)) == 0L) , g_15.f7) , 1L);
[0;1;32m                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~
[0m[1mexample.c:80:26: [0m[0;1;35mwarning: [0m[1mbitwise negation of a boolean expression; did you mean logical negation? [-Wbool-operation][0m
    l_19[6][0][4] &= ((((~(((int8_t)((*l_23) = ((l_17 == &g_18) < (g_15 , g_15.f9))) / (int8_t)p_3) > g_18)) == 0L) , g_15.f7) , 1L);
[0;1;32m                        ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[0;32m                         !
[0m8 warnings generated.
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:54:63: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                              ^  ~~~~~~~~~~~
[0m[1mexample.c:54:63: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                              ^~
[0m[0;32m                                                              |
[0m[1mexample.c:54:63: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                          ~~~ ^  ~~~~~~~~~~~
[0m[1mexample.c:54:130: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 141 with boolean expression is always false [-Wtautological-constant-out-of-range-compare][0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~
[0m[1mexample.c:79:59: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                                              ~~~~~~~~~~ ~^
[0m[1mexample.c:79:90: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                                                                                         ^  ~~~
[0m[1mexample.c:79:90: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                                                                                         ^~
[0m[0;32m                                                                                         |
[0m[1mexample.c:79:98: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
[0m[1mexample.c:80:110: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    l_19[6][0][4] &= ((((~(((int8_t)((*l_23) = ((l_17 == &g_18) < (g_15 , g_15.f9))) / (int8_t)p_3) > g_18)) == 0L) , g_15.f7) , 1L);
[0;1;32m                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~
[0m[1mexample.c:80:26: [0m[0;1;35mwarning: [0m[1mbitwise negation of a boolean expression; did you mean logical negation? [-Wbool-operation][0m
    l_19[6][0][4] &= ((((~(((int8_t)((*l_23) = ((l_17 == &g_18) < (g_15 , g_15.f9))) / (int8_t)p_3) > g_18)) == 0L) , g_15.f7) , 1L);
[0;1;32m                        ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[0;32m                         !
[0m8 warnings generated.
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
[1mexample.c:54:63: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                              ^  ~~~~~~~~~~~
[0m[1mexample.c:54:63: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                              ^~
[0m[0;32m                                                              |
[0m[1mexample.c:54:63: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                          ~~~ ^  ~~~~~~~~~~~
[0m[1mexample.c:54:130: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 141 with boolean expression is always false [-Wtautological-constant-out-of-range-compare][0m
    (*l_25) |= func_2(l_8, (((((l_8 != ((((uint16_t)((((((l_8 || 0x642E40C1L) , (-1L)) ^ l_11) | g_12[1][3][0]) > g_12[1][3][0]) >= 0x8DL) % (uint16_t)g_12[3][3][2]) < 0x1540EE1DL) ^ 0xE7L)) || g_12[3][5][1]) | 0x4AL) | l_8) > l_8), l_11, g_12[4][1][4], g_12[4][2][1]);
[0;1;32m                                                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~
[0m[1mexample.c:79:59: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                                              ~~~~~~~~~~ ~^
[0m[1mexample.c:79:90: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                                                                                         ^  ~~~
[0m[1mexample.c:79:90: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                                                                                         ^~
[0m[0;32m                                                                                         |
[0m[1mexample.c:79:98: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    l_19[3][0][3] |= (((int32_t)(((*l_17) = ((g_12[3][2][3] , g_15) , (l_16 > g_15.f9))) || 5UL) >> (int32_t)23) , p_5);
[0;1;32m                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
[0m[1mexample.c:80:110: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    l_19[6][0][4] &= ((((~(((int8_t)((*l_23) = ((l_17 == &g_18) < (g_15 , g_15.f9))) / (int8_t)p_3) > g_18)) == 0L) , g_15.f7) , 1L);
[0;1;32m                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~
[0m[1mexample.c:80:26: [0m[0;1;35mwarning: [0m[1mbitwise negation of a boolean expression; did you mean logical negation? [-Wbool-operation][0m
    l_19[6][0][4] &= ((((~(((int8_t)((*l_23) = ((l_17 == &g_18) < (g_15 , g_15.f9))) / (int8_t)p_3) > g_18)) == 0L) , g_15.f7) , 1L);
[0;1;32m                        ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[0;32m                         !
[0m8 warnings generated.
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

Before variable `l_8` (decl src line 51)
Store to `l_8` (decl src line 51), asm line 22
  const i64 8889101807056336539
  Added assignment starting at src line 51, column 14
Before variable `l_11` (decl src line 52)
Store to `l_11` (decl src line 52), asm line 24
  const i64 -3004284430612479775
  Added assignment starting at src line 52, column 13
Before variable `l_25` (decl src line 53)
Store to `l_25` (decl src line 53), asm line 26
  global g_26
  Added assignment starting at src line 53, column 14

After variable `l_8` (decl src line 51)
@dbg.value mapping for `l_8` (decl src line 51), asm line 19
Value produced for `l_8` (decl src line 51), asm line 19
  const i64 8889101807056336539
  Added assignment starting at src line 51, column 0
After variable `l_11` (decl src line 52)
@dbg.value mapping for `l_11` (decl src line 52), asm line 20
Value produced for `l_11` (decl src line 52), asm line 20
  const i64 -3004284430612479775
  Added assignment starting at src line 52, column 0
After variable `l_25` (decl src line 53)
@dbg.value mapping for `l_25` (decl src line 53), asm line 21
Value produced for `l_25` (decl src line 53), asm line 21
  global g_26
  Added assignment starting at src line 53, column 0

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Assignments

✅ Before live range coverage
  Covered:   3
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

Collected value for `l_8`
  i64 8889101807056336539
  0x7B5C6EFF3DE0369B
Collected value for `l_11`
  i64 -3004284430612479775
  0xD64EA33A4D1B40E1
Collected value for `l_25`
  Concrete pointer resolves to g_26, offset 0x0
  Replaced concrete pointer with hash 0xCFD37D5648DF5F09
  @g_26 = global i32 417948106, align 4, !dbg !48
  0xCFD37D5648DF5F09

#### After values

Collected value for `l_8`
  i64 8889101807056336539
  0x7B5C6EFF3DE0369B
Collected value for `l_11`
  i64 -3004284430612479775
  0xD64EA33A4D1B40E1
Collected value for `l_25`
  Concrete pointer resolves to g_26, offset 0x0
  Replaced concrete pointer with hash 0xCFD37D5648DF5F09
  @g_26 = local_unnamed_addr global i32 417948106, align 4, !dbg !48
  0xCFD37D5648DF5F09

#### Check before against after

Checking equivalence of `l_11` (decl src line 52) from
assn 0, src line 52, column 13
i64 -3004284430612479775
0xD64EA33A4D1B40E1
and
assn 0, src line 52, column 0
i64 -3004284430612479775
0xD64EA33A4D1B40E1
Checking equivalence of `l_25` (decl src line 53) from
assn 0, src line 53, column 14
@g_26 = global i32 417948106, align 4, !dbg !48
0xCFD37D5648DF5F09
and
assn 0, src line 53, column 0
@g_26 = local_unnamed_addr global i32 417948106, align 4, !dbg !48
0xCFD37D5648DF5F09
Checking equivalence of `l_8` (decl src line 51) from
assn 0, src line 51, column 14
i64 8889101807056336539
0x7B5C6EFF3DE0369B
and
assn 0, src line 51, column 0
i64 8889101807056336539
0x7B5C6EFF3DE0369B
✅ Before symbolic values checked against after
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `l_11` (decl src line 52) from
assn 0, src line 52, column 0
i64 -3004284430612479775
0xD64EA33A4D1B40E1
and
assn 0, src line 52, column 13
i64 -3004284430612479775
0xD64EA33A4D1B40E1
Checking equivalence of `l_25` (decl src line 53) from
assn 0, src line 53, column 0
@g_26 = local_unnamed_addr global i32 417948106, align 4, !dbg !48
0xCFD37D5648DF5F09
and
assn 0, src line 53, column 14
@g_26 = global i32 417948106, align 4, !dbg !48
0xCFD37D5648DF5F09
Checking equivalence of `l_8` (decl src line 51) from
assn 0, src line 51, column 0
i64 8889101807056336539
0x7B5C6EFF3DE0369B
and
assn 0, src line 51, column 14
i64 8889101807056336539
0x7B5C6EFF3DE0369B
✅ After symbolic values checked against before
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Function `func_2`

✅ Before and after function names match

### Variables

Before variable `p_3` (decl src line 64)
Store to `p_3` (decl src line 64), asm line 118
  arg 0
  Added assignment starting at src line 64, column 0
Before variable `p_4` (decl src line 64)
Store to `p_4` (decl src line 64), asm line 120
  arg 1
  @dbg.declare without read users, removable
  Added assignment starting at src line 64, column 0
Before variable `p_5` (decl src line 64)
Store to `p_5` (decl src line 64), asm line 122
  arg 2
  Added assignment starting at src line 64, column 0
Before variable `p_6` (decl src line 64)
Store to `p_6` (decl src line 64), asm line 124
  arg 3
  @dbg.declare without read users, removable
  Added assignment starting at src line 64, column 0
Before variable `p_7` (decl src line 64)
Store to `p_7` (decl src line 64), asm line 126
  arg 4
  @dbg.declare without read users, removable
  Added assignment starting at src line 64, column 0
Before variable `l_16` (decl src line 66)
Store to `l_16` (decl src line 66), asm line 129
  const i64 1
  Added assignment starting at src line 66, column 14
Before variable `l_17` (decl src line 67)
Store to `l_17` (decl src line 67), asm line 131
  global g_18
  Added assignment starting at src line 67, column 14
Before variable `l_19` (decl src line 68)
Before variable `l_23` (decl src line 69)
Store to `l_23` (decl src line 69), asm line 134
  global g_24
  Added assignment starting at src line 69, column 13
Before variable `i` (decl src line 70)
Store to `i` (decl src line 70), asm line 198
  %inc15 = add nsw i32 %8, 1, l71 c25, asm line 197
  Added assignment starting at src line 71, column 25
Store to `i` (decl src line 70), asm line 138
  const i32 0
  Added assignment starting at src line 71, column 12
Before variable `j` (decl src line 70)
Store to `j` (decl src line 70), asm line 189
  %inc12 = add nsw i32 %7, 1, l73 c29, asm line 188
  Added assignment starting at src line 73, column 29
Store to `j` (decl src line 70), asm line 147
  const i32 0
  Added assignment starting at src line 73, column 16
Before variable `k` (decl src line 70)
Store to `k` (decl src line 70), asm line 180
  %inc = add nsw i32 %6, 1, l75 c33, asm line 179
  Added assignment starting at src line 75, column 33
Store to `k` (decl src line 70), asm line 156
  const i32 0
  Added assignment starting at src line 75, column 20

After variable `p_3` (decl src line 64)
@dbg.value mapping for `p_3` (decl src line 64), asm line 43
Value produced for `p_3` (decl src line 64), asm line 43
  arg 0
  Added assignment starting at src line 64, column 0
After variable `p_4` (decl src line 64)
After variable intrinsic with undef input, asm line 44, ignoring undefined variable
  @dbg.value(i64 undef, !84)
After variable `p_5` (decl src line 64)
@dbg.value mapping for `p_5` (decl src line 64), asm line 45
Value produced for `p_5` (decl src line 64), asm line 45
  arg 2
  Added assignment starting at src line 64, column 0
After variable `p_6` (decl src line 64)
After variable intrinsic with undef input, asm line 46, ignoring undefined variable
  @dbg.value(i8 undef, !86)
After variable `p_7` (decl src line 64)
After variable intrinsic with undef input, asm line 47, ignoring undefined variable
  @dbg.value(i32 undef, !87)
After variable `l_16` (decl src line 66)
@dbg.value mapping for `l_16` (decl src line 66), asm line 48
Value produced for `l_16` (decl src line 66), asm line 48
  const i64 1
  Added assignment starting at src line 66, column 0
After variable `l_17` (decl src line 67)
@dbg.value mapping for `l_17` (decl src line 67), asm line 49
Value produced for `l_17` (decl src line 67), asm line 49
  global g_18
  Added assignment starting at src line 67, column 0
After variable `l_19` (decl src line 68)
After variable `l_23` (decl src line 69)
@dbg.value mapping for `l_23` (decl src line 69), asm line 53
Value produced for `l_23` (decl src line 69), asm line 53
  global g_24
  Added assignment starting at src line 69, column 0
After variable `i` (decl src line 70)
@dbg.value mapping for `i` (decl src line 70), asm line 54
Value produced for `i` (decl src line 70), asm line 54
  const i32 0
  Added assignment starting at src line 70, column 0
After variable `i` (decl src line 70)
@dbg.value mapping for `i` (decl src line 70), asm line 59
Value produced for `i` (decl src line 70), asm line 59
  const i32 undef
❌ Value produced for `i` (decl src line 70): missing line info
After variable `k` (decl src line 70)
@dbg.value mapping for `k` (decl src line 70), asm line 62
Value produced for `k` (decl src line 70), asm line 62
  const i32 0
  Added assignment starting at src line 70, column 0
After variable `k` (decl src line 70)
@dbg.value mapping for `k` (decl src line 70), asm line 64
Value produced for `k` (decl src line 70), asm line 64
  const i32 undef
❌ Value produced for `k` (decl src line 70): missing line info
After variable `k` (decl src line 70)
@dbg.value mapping for `k` (decl src line 70), asm line 65
Value produced for `k` (decl src line 70), asm line 65
  const i32 undef
❌ Value produced for `k` (decl src line 70): missing line info
After variable `j` (decl src line 70)
After variable intrinsic with undef input, asm line 66, ignoring undefined variable
  @dbg.value(i32 undef, !99)
After variable `i` (decl src line 70)
@dbg.value mapping for `i` (decl src line 70), asm line 67
Value produced for `i` (decl src line 70), asm line 67
  const i32 undef
❌ Value produced for `i` (decl src line 70): missing line info

✅ 12 before variables found, 12 after variables found, 0 mismatched

### Assignments

❌ Live ranges for `i` (decl src line 70) don't match: [71.12,∞) vs. [70.0,∞)
❌ After live ranges for `j` (decl src line 70) not found
❌ Live ranges for `k` (decl src line 70) don't match: [75.20,∞) vs. [70.0,∞)
🔔 Before live ranges for `l_19` (decl src line 68) not found (variable likely undefined)
🔔 After live ranges for (removable) `p_4` (decl src line 64) not found
🔔 After live ranges for (removable) `p_6` (decl src line 64) not found
🔔 After live ranges for (removable) `p_7` (decl src line 64) not found
❌ Before live range coverage
  Covered:   5
  Uncovered: 3
  Undefined: 1
  Unused:    0
  Removable: 3

### Symbolic values

#### Before values

Collected value for `p_3`
  i64 %p_3
  (ReadLSB w64 0x0 p_3)
Collected value for `p_4`
  i64 %p_4
  (ReadLSB w64 0x0 p_4)
Collected value for `p_5`
  i32 %p_5
  (ReadLSB w32 0x0 p_5)
Collected value for `p_6`
  i8 %p_6
  (Read w8 0x0 p_6)
Collected value for `p_7`
  i32 %p_7
  (ReadLSB w32 0x0 p_7)
Collected value for `l_16`
  i64 1
  0x1
Collected value for `l_17`
  Concrete pointer resolves to g_18, offset 0x0
  Replaced concrete pointer with hash 0x1E814E2E948DA31C
  @g_18 = global i64 3085331500618835686, align 8, !dbg !42
  0x1E814E2E948DA31C
Collected value for `l_23`
  Concrete pointer resolves to g_24, offset 0x0
  Replaced concrete pointer with hash 0xB993649DD050A035
  @g_24 = global i8 -4, align 1, !dbg !46
  0xB993649DD050A035
Collected value for `i`
  i32 0
  0x0
Collected value for `j`
  i32 0
  0x0
Collected value for `k`
  i32 0
  0x0
Collected value for `k`
  %inc = add nsw i32 %6, 1, l75 c33
  0x1
Collected value for `j`
  %inc12 = add nsw i32 %7, 1, l73 c29
  0x1
Collected value for `i`
  %inc15 = add nsw i32 %8, 1, l71 c25
  0x1

#### After values

Collected value for `p_3`
  i64 %p_3
  (ReadLSB w64 0x0 p_3)
Collected value for `p_5`
  i32 %p_5
  (ReadLSB w32 0x0 p_5)
Collected value for `l_16`
  i64 1
  0x1
Collected value for `l_17`
  Concrete pointer resolves to g_18, offset 0x0
  Replaced concrete pointer with hash 0x1E814E2E948DA31C
  @g_18 = local_unnamed_addr global i64 3085331500618835686, align 8, !dbg !42
  0x1E814E2E948DA31C
Collected value for `l_23`
  Concrete pointer resolves to g_24, offset 0x0
  Replaced concrete pointer with hash 0xB993649DD050A035
  @g_24 = local_unnamed_addr global i8 -4, align 1, !dbg !46
  0xB993649DD050A035
Collected value for `i`
  i32 0
  0x0
Collected value for `k`
  i32 0
  0x0
[0;1;35mKLEE: WARNING ONCE: calling external: memset_pattern16(0x1124D8900, 0x11249A8F0, 0x18) at example.c:l0:c0
[0m
#### Check before against after

🔔 After assn 0, src line 70, column 0 doesn't match before assn 0, src line 71, column 12
Checking equivalence of `i` (decl src line 70) from
assn 0, src line 71, column 12
i32 0
0x0
and
assn 0, src line 70, column 0
i32 0
0x0
🔔 After assn 0, src line 70, column 0 doesn't match before assn 1, src line 71, column 25
Checking equivalence of `i` (decl src line 70) from
assn 1, src line 71, column 25
%inc15 = add nsw i32 %8, 1, l71 c25
0x1
and
assn 0, src line 70, column 0
i32 0
0x0
❌ After live range for `j` (decl src line 70) not found
❌ After live range for `j` (decl src line 70) not found
🔔 After assn 0, src line 70, column 0 doesn't match before assn 0, src line 75, column 20
Checking equivalence of `k` (decl src line 70) from
assn 0, src line 75, column 20
i32 0
0x0
and
assn 0, src line 70, column 0
i32 0
0x0
🔔 After assn 0, src line 70, column 0 doesn't match before assn 1, src line 75, column 33
Checking equivalence of `k` (decl src line 70) from
assn 1, src line 75, column 33
%inc = add nsw i32 %6, 1, l75 c33
0x1
and
assn 0, src line 70, column 0
i32 0
0x0
Checking equivalence of `l_16` (decl src line 66) from
assn 0, src line 66, column 14
i64 1
0x1
and
assn 0, src line 66, column 0
i64 1
0x1
Checking equivalence of `l_17` (decl src line 67) from
assn 0, src line 67, column 14
@g_18 = global i64 3085331500618835686, align 8, !dbg !42
0x1E814E2E948DA31C
and
assn 0, src line 67, column 0
@g_18 = local_unnamed_addr global i64 3085331500618835686, align 8, !dbg !42
0x1E814E2E948DA31C
Checking equivalence of `l_23` (decl src line 69) from
assn 0, src line 69, column 13
@g_24 = global i8 -4, align 1, !dbg !46
0xB993649DD050A035
and
assn 0, src line 69, column 0
@g_24 = local_unnamed_addr global i8 -4, align 1, !dbg !46
0xB993649DD050A035
Checking equivalence of `p_3` (decl src line 64) from
assn 0, src line 64, column 0
i64 %p_3
(ReadLSB w64 0x0 p_3)
and
assn 0, src line 64, column 0
i64 %p_3
(ReadLSB w64 0x0 p_3)
Query to parse
array p_3[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 p_3)
     (ReadLSB w64 0x0 p_3)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 p_3)
     N0)
🔔 After live ranges for (removable) `p_4` (decl src line 64) not found
Checking equivalence of `p_5` (decl src line 64) from
assn 0, src line 64, column 0
i32 %p_5
(ReadLSB w32 0x0 p_5)
and
assn 0, src line 64, column 0
i32 %p_5
(ReadLSB w32 0x0 p_5)
Query to parse
array p_5[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 p_5)
     (ReadLSB w32 0x0 p_5)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 p_5)
     N0)
🔔 After live ranges for (removable) `p_6` (decl src line 64) not found
🔔 After live ranges for (removable) `p_7` (decl src line 64) not found
❌ Before symbolic values checked against after
  Matching:    7
  Mismatched:  4
  Unused:      0
  Unreachable: 0
  Removable:   3

#### Check after against before

🔔 Before assn 0, src line 71, column 12 doesn't match after assn 0, src line 70, column 0
Checking equivalence of `i` (decl src line 70) from
assn 0, src line 70, column 0
i32 0
0x0
and
assn 0, src line 71, column 12
i32 0
0x0
🔔 Before assn 0, src line 75, column 20 doesn't match after assn 0, src line 70, column 0
Checking equivalence of `k` (decl src line 70) from
assn 0, src line 70, column 0
i32 0
0x0
and
assn 0, src line 75, column 20
i32 0
0x0
Checking equivalence of `l_16` (decl src line 66) from
assn 0, src line 66, column 0
i64 1
0x1
and
assn 0, src line 66, column 14
i64 1
0x1
Checking equivalence of `l_17` (decl src line 67) from
assn 0, src line 67, column 0
@g_18 = local_unnamed_addr global i64 3085331500618835686, align 8, !dbg !42
0x1E814E2E948DA31C
and
assn 0, src line 67, column 14
@g_18 = global i64 3085331500618835686, align 8, !dbg !42
0x1E814E2E948DA31C
Checking equivalence of `l_23` (decl src line 69) from
assn 0, src line 69, column 0
@g_24 = local_unnamed_addr global i8 -4, align 1, !dbg !46
0xB993649DD050A035
and
assn 0, src line 69, column 13
@g_24 = global i8 -4, align 1, !dbg !46
0xB993649DD050A035
Checking equivalence of `p_3` (decl src line 64) from
assn 0, src line 64, column 0
i64 %p_3
(ReadLSB w64 0x0 p_3)
and
assn 0, src line 64, column 0
i64 %p_3
(ReadLSB w64 0x0 p_3)
Query to parse
array p_3[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 p_3)
     (ReadLSB w64 0x0 p_3)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 p_3)
     N0)
Checking equivalence of `p_5` (decl src line 64) from
assn 0, src line 64, column 0
i32 %p_5
(ReadLSB w32 0x0 p_5)
and
assn 0, src line 64, column 0
i32 %p_5
(ReadLSB w32 0x0 p_5)
Query to parse
array p_5[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 p_5)
     (ReadLSB w32 0x0 p_5)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 p_5)
     N0)
✅ After symbolic values checked against before
  Matching:    7
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
