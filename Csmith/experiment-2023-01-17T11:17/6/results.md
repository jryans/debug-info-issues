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
5 warnings generated.
[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:51:32: [0m[0;1;35mwarning: [0m[1mequality comparison with extraneous parentheses [clang-diagnostic-parentheses-equality][0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m                           ~~~~^~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:51:32: [0m[0;1;30mnote: [0mremove extraneous parentheses around the comparison to silence this warning[0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m                          ~    ^    ~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:51:32: [0m[0;1;30mnote: [0muse '=' to turn this equality comparison into an assignment[0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m                               ^~
[0m[0;32m                               =
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:57:32: [0m[0;1;35mwarning: [0m[1mexpression result unused [clang-diagnostic-unused-value][0m
    (*l_38) = (((uint8_t)0x51L << (uint8_t)((((uint16_t)func_17(l_23, l_24, l_24, l_25, &g_5) + (uint16_t)65534UL) | 0x9A2F725DL) | g_37)) , l_25);
[0;1;32m                ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:67:60: [0m[0;1;35mwarning: [0m[1mparameter 'p_20' is unused [misc-unused-parameters][0m
uint16_t  func_17(uint8_t  p_18, int32_t * p_19, int32_t * p_20, int32_t * p_21, int32_t * const  p_22)
[0;1;32m                                                           ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:67:76: [0m[0;1;35mwarning: [0m[1mparameter 'p_21' is unused [misc-unused-parameters][0m
uint16_t  func_17(uint8_t  p_18, int32_t * p_19, int32_t * p_20, int32_t * p_21, int32_t * const  p_22)
[0;1;32m                                                                           ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:76:76: [0m[0;1;35mwarning: [0m[1mDereference of null pointer (loaded from variable 'g_34') [clang-analyzer-core.NullDereference][0m
            (*p_22) |= (((uint16_t)((g_3 && (((p_19 == p_22) | (**g_33)) ^ (*g_34))) , 0x7C24L) / (uint16_t)0x0245L) <= p_18);
[0;1;32m                                                                           ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:91:5: [0m[0;1;30mnote: [0mCalling 'func_1'[0m
    func_1();
[0;1;32m    ^~~~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:48:5: [0m[0;1;30mnote: [0mLoop condition is true.  Entering loop body[0m
    for (g_5 = 0; (g_5 < 13); g_5 += 7)
[0;1;32m    ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:51:9: [0m[0;1;30mnote: [0mLoop condition is false. Execution continues on line 55[0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m        ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:48:5: [0m[0;1;30mnote: [0mLoop condition is true.  Entering loop body[0m
    for (g_5 = 0; (g_5 < 13); g_5 += 7)
[0;1;32m    ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:51:9: [0m[0;1;30mnote: [0mLoop condition is false. Execution continues on line 55[0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m        ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:48:5: [0m[0;1;30mnote: [0mLoop condition is false. Execution continues on line 57[0m
    for (g_5 = 0; (g_5 < 13); g_5 += 7)
[0;1;32m    ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:57:57: [0m[0;1;30mnote: [0mCalling 'func_17'[0m
    (*l_38) = (((uint8_t)0x51L << (uint8_t)((((uint16_t)func_17(l_23, l_24, l_24, l_25, &g_5) + (uint16_t)65534UL) | 0x9A2F725DL) | g_37)) , l_25);
[0;1;32m                                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:69:5: [0m[0;1;30mnote: [0mLoop condition is true.  Entering loop body[0m
    for (p_18 = (-17); (p_18 >= 36); ++p_18)
[0;1;32m    ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:73:9: [0m[0;1;30mnote: [0mLoop condition is true.  Entering loop body[0m
        for (g_8 = 0; (g_8 != 24); g_8 += 8)
[0;1;32m        ^
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:76:38: [0m[0;1;30mnote: [0m'g_3' is 1[0m
            (*p_22) |= (((uint16_t)((g_3 && (((p_19 == p_22) | (**g_33)) ^ (*g_34))) , 0x7C24L) / (uint16_t)0x0245L) <= p_18);
[0;1;32m                                     ^~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:76:38: [0m[0;1;30mnote: [0mLeft side of '&&' is true[0m
[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/6/example.c:76:76: [0m[0;1;30mnote: [0mDereference of null pointer (loaded from variable 'g_34')[0m
            (*p_22) |= (((uint16_t)((g_3 && (((p_19 == p_22) | (**g_33)) ^ (*g_34))) , 0x7C24L) / (uint16_t)0x0245L) <= p_18);
[0;1;32m                                                                           ^ ~~~~
[0m++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
[1mexample.c:51:32: [0m[0;1;35mwarning: [0m[1mequality comparison with extraneous parentheses [-Wparentheses-equality][0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m                           ~~~~^~~~~
[0m[1mexample.c:51:32: [0m[0;1;30mnote: [0mremove extraneous parentheses around the comparison to silence this warning[0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m                          ~    ^    ~
[0m[1mexample.c:51:32: [0m[0;1;30mnote: [0muse '=' to turn this equality comparison into an assignment[0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m                               ^~
[0m[0;32m                               =
[0m[1mexample.c:57:32: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_38) = (((uint8_t)0x51L << (uint8_t)((((uint16_t)func_17(l_23, l_24, l_24, l_25, &g_5) + (uint16_t)65534UL) | 0x9A2F725DL) | g_37)) , l_25);
[0;1;32m                ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m2 warnings generated.
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:51:32: [0m[0;1;35mwarning: [0m[1mequality comparison with extraneous parentheses [-Wparentheses-equality][0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m                           ~~~~^~~~~
[0m[1mexample.c:51:32: [0m[0;1;30mnote: [0mremove extraneous parentheses around the comparison to silence this warning[0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m                          ~    ^    ~
[0m[1mexample.c:51:32: [0m[0;1;30mnote: [0muse '=' to turn this equality comparison into an assignment[0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m                               ^~
[0m[0;32m                               =
[0m[1mexample.c:57:32: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_38) = (((uint8_t)0x51L << (uint8_t)((((uint16_t)func_17(l_23, l_24, l_24, l_25, &g_5) + (uint16_t)65534UL) | 0x9A2F725DL) | g_37)) , l_25);
[0;1;32m                ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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
[1mexample.c:51:32: [0m[0;1;35mwarning: [0m[1mequality comparison with extraneous parentheses [-Wparentheses-equality][0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m                           ~~~~^~~~~
[0m[1mexample.c:51:32: [0m[0;1;30mnote: [0mremove extraneous parentheses around the comparison to silence this warning[0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m                          ~    ^    ~
[0m[1mexample.c:51:32: [0m[0;1;30mnote: [0muse '=' to turn this equality comparison into an assignment[0m
        for (g_8 = (-26); (g_8 == 12); g_8 += 3)
[0;1;32m                               ^~
[0m[0;32m                               =
[0m[1mexample.c:57:32: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_38) = (((uint8_t)0x51L << (uint8_t)((((uint16_t)func_17(l_23, l_24, l_24, l_25, &g_5) + (uint16_t)65534UL) | 0x9A2F725DL) | g_37)) , l_25);
[0;1;32m                ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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

Before variable `l_11` (decl src line 43)
Store to `l_11` (decl src line 43), asm line 29
  const i16 1
  Added assignment starting at src line 43, column 13
Before variable `l_23` (decl src line 44)
Store to `l_23` (decl src line 44), asm line 31
  const i32 346269399
  Added assignment starting at src line 44, column 14
Before variable `l_24` (decl src line 45)
Store to `l_24` (decl src line 45), asm line 33
  const i32* null
  Added assignment starting at src line 45, column 14
Before variable `l_25` (decl src line 46)
Store to `l_25` (decl src line 46), asm line 35
  const i32* null
  Added assignment starting at src line 46, column 14
Before variable `l_38` (decl src line 47)
Store to `l_38` (decl src line 47), asm line 37
  %l_24 = alloca i32*, asm line 24
  Added assignment starting at src line 47, column 15
Before variable `l_12` (decl src line 50)
Store to `l_12` (decl src line 50), asm line 48
  global g_8
  Added assignment starting at src line 50, column 18

After variable `l_11` (decl src line 43)
@dbg.value mapping for `l_11` (decl src line 43), asm line 21
Value produced for `l_11` (decl src line 43), asm line 21
  const i16 1
  Added assignment starting at src line 43, column 0
After variable `l_23` (decl src line 44)
@dbg.value mapping for `l_23` (decl src line 44), asm line 22
Value produced for `l_23` (decl src line 44), asm line 22
  const i32 346269399
  Added assignment starting at src line 44, column 0
After variable `l_24` (decl src line 45)
@dbg.value mapping for `l_24` (decl src line 45), asm line 23
Value produced for `l_24` (decl src line 45), asm line 23
  const i32* null
  Added assignment starting at src line 45, column 0
After variable `l_25` (decl src line 46)
@dbg.value mapping for `l_25` (decl src line 46), asm line 24
Value produced for `l_25` (decl src line 46), asm line 24
  const i32* null
  Added assignment starting at src line 46, column 0
After variable `l_38` (decl src line 47)
After variable intrinsic with undef input, asm line 25, ignoring undefined variable
  @dbg.value(i32** undef, !69)
After variable `l_12` (decl src line 50)
@dbg.value mapping for `l_12` (decl src line 50), asm line 32
Value produced for `l_12` (decl src line 50), asm line 32
  global g_8
  Added assignment starting at src line 50, column 0
After variable `l_24` (decl src line 45)
@dbg.value mapping for `l_24` (decl src line 45), asm line 42
Value produced for `l_24` (decl src line 45), asm line 42
  const i32* null
  Value is same as last assignment, skipping

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Assignments

❌ After live ranges for `l_38` (decl src line 47) not found
❌ Before live range coverage
  Covered:   5
  Uncovered: 1
  Undefined: 0
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

Collected value for `l_11`
  i16 1
  0x1
Collected value for `l_23`
  i32 346269399
  0x14A3A6D7
Collected value for `l_24`
  i32* null
  0x0
Collected value for `l_25`
  i32* null
  0x0
Collected value for `l_38`
  Concrete pointer resolves to l_24, offset 0x0
  Replaced concrete pointer with hash 0x86B343C868706B6B
  %l_24 = alloca i32*
  0x86B343C868706B6B
Collected value for `l_12`
  Concrete pointer resolves to g_8, offset 0x0
  Replaced concrete pointer with hash 0x637480294135CF34
  @g_8 = global i32 -9, align 4, !dbg !28
  0x637480294135CF34

#### After values

Collected value for `l_11`
  i16 1
  0x1
Collected value for `l_23`
  i32 346269399
  0x14A3A6D7
Collected value for `l_24`
  i32* null
  0x0
Collected value for `l_25`
  i32* null
  0x0
Collected value for `l_12`
  Concrete pointer resolves to g_8, offset 0x0
  Replaced concrete pointer with hash 0x637480294135CF34
  @g_8 = global i32 -9, align 4, !dbg !28
  0x637480294135CF34

#### Check before against after

Checking equivalence of `l_11` (decl src line 43) from
assn 0, src line 43, column 13
i16 1
0x1
and
assn 0, src line 43, column 0
i16 1
0x1
Checking equivalence of `l_12` (decl src line 50) from
assn 0, src line 50, column 18
@g_8 = global i32 -9, align 4, !dbg !28
0x637480294135CF34
and
assn 0, src line 50, column 0
@g_8 = global i32 -9, align 4, !dbg !28
0x637480294135CF34
Checking equivalence of `l_23` (decl src line 44) from
assn 0, src line 44, column 14
i32 346269399
0x14A3A6D7
and
assn 0, src line 44, column 0
i32 346269399
0x14A3A6D7
Checking equivalence of `l_24` (decl src line 45) from
assn 0, src line 45, column 14
i32* null
0x0
and
assn 0, src line 45, column 0
i32* null
0x0
Checking equivalence of `l_25` (decl src line 46) from
assn 0, src line 46, column 14
i32* null
0x0
and
assn 0, src line 46, column 0
i32* null
0x0
❌ After live range for `l_38` (decl src line 47) not found
❌ Before symbolic values checked against after
  Matching:    5
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `l_11` (decl src line 43) from
assn 0, src line 43, column 0
i16 1
0x1
and
assn 0, src line 43, column 13
i16 1
0x1
Checking equivalence of `l_12` (decl src line 50) from
assn 0, src line 50, column 0
@g_8 = global i32 -9, align 4, !dbg !28
0x637480294135CF34
and
assn 0, src line 50, column 18
@g_8 = global i32 -9, align 4, !dbg !28
0x637480294135CF34
Checking equivalence of `l_23` (decl src line 44) from
assn 0, src line 44, column 0
i32 346269399
0x14A3A6D7
and
assn 0, src line 44, column 14
i32 346269399
0x14A3A6D7
Checking equivalence of `l_24` (decl src line 45) from
assn 0, src line 45, column 0
i32* null
0x0
and
assn 0, src line 45, column 14
i32* null
0x0
Checking equivalence of `l_25` (decl src line 46) from
assn 0, src line 46, column 0
i32* null
0x0
and
assn 0, src line 46, column 14
i32* null
0x0
✅ After symbolic values checked against before
  Matching:    5
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Function `func_17`

✅ Before and after function names match

### Variables

Before variable `p_18` (decl src line 67)
Store to `p_18` (decl src line 67), asm line 204
  %inc = add i8 %18, 1, l69 c38, asm line 203
  Added assignment starting at src line 69, column 38
Store to `p_18` (decl src line 67), asm line 134
  const i8 -17
  Added assignment starting at src line 69, column 15
Store to `p_18` (decl src line 67), asm line 124
  arg 0
  Added assignment starting at src line 67, column 0
Before variable `p_19` (decl src line 67)
Store to `p_19` (decl src line 67), asm line 126
  arg 1
  Added assignment starting at src line 67, column 0
Before variable `p_20` (decl src line 67)
Store to `p_20` (decl src line 67), asm line 128
  arg 2
  @dbg.declare without read users, removable
  Added assignment starting at src line 67, column 0
Before variable `p_21` (decl src line 67)
Store to `p_21` (decl src line 67), asm line 130
  arg 3
  @dbg.declare without read users, removable
  Added assignment starting at src line 67, column 0
Before variable `p_22` (decl src line 67)
Store to `p_22` (decl src line 67), asm line 132
  arg 4
  Added assignment starting at src line 67, column 0
Before variable `l_32` (decl src line 71)
Store to `l_32` (decl src line 71), asm line 145
  global g_8
  Added assignment starting at src line 71, column 18

After variable `p_18` (decl src line 67)
After variable intrinsic with undef input, asm line 49, ignoring undefined variable
  @dbg.value(i8 undef, !95)
After variable `p_19` (decl src line 67)
@dbg.value mapping for `p_19` (decl src line 67), asm line 50
Value produced for `p_19` (decl src line 67), asm line 50
  arg 1
  Added assignment starting at src line 67, column 0
After variable `p_20` (decl src line 67)
After variable intrinsic with undef input, asm line 51, ignoring undefined variable
  @dbg.value(i32* undef, !97)
After variable `p_21` (decl src line 67)
After variable intrinsic with undef input, asm line 52, ignoring undefined variable
  @dbg.value(i32* undef, !98)
After variable `p_22` (decl src line 67)
@dbg.value mapping for `p_22` (decl src line 67), asm line 53
Value produced for `p_22` (decl src line 67), asm line 53
  arg 4
  Added assignment starting at src line 67, column 0
After variable `p_18` (decl src line 67)
@dbg.value mapping for `p_18` (decl src line 67), asm line 54
Value produced for `p_18` (decl src line 67), asm line 54
  const i8 -17
  Added assignment starting at src line 67, column 0
After variable `l_32` (decl src line 71)
@dbg.value mapping for `l_32` (decl src line 71), asm line 60
Value produced for `l_32` (decl src line 71), asm line 60
  global g_8
  Added assignment starting at src line 71, column 0
After variable `p_18` (decl src line 67)
@dbg.value mapping for `p_18` (decl src line 67), asm line 89
Value produced for `p_18` (decl src line 67), asm line 89
  %inc = add nsw i8 %p_18.addr.021, 1, l69 c38, asm line 88
  Added assignment starting at src line 69, column 38
After variable `p_18` (decl src line 67)
@dbg.value mapping for `p_18` (decl src line 67), asm line 59
Value produced for `p_18` (decl src line 67), asm line 59
  %p_18.addr.021 = phi i8 [ -17, %entry ], [ %inc, %for.end ], asm line 58
  Checking phi edge [ i8 -17, %entry ]
  Last assignment for phi edge: 0, src line 67, column 0
  Checking phi edge [ %inc, %for.end ]
  Last assignment for phi edge: 0, src line 69, column 38
  All phi values same as last assignments, skipping

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Assignments

🔔 After live ranges for (removable) `p_20` (decl src line 67) not found
🔔 After live ranges for (removable) `p_21` (decl src line 67) not found
✅ Before live range coverage
  Covered:   4
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 2

### Symbolic values

#### Before values

Collected value for `p_18`
  i8 %p_18
  (Read w8 0x0 p_18)
Collected value for `p_19`
  Concrete pointer resolves to p_19.deref, offset 0x0
  Replaced concrete pointer with hash 0xE2DF9E1FBDD19199
  i32* %p_19
  0xE2DF9E1FBDD19199
Collected value for `p_20`
  Concrete pointer resolves to p_20.deref, offset 0x0
  Replaced concrete pointer with hash 0x10259B9B825C49BD
  i32* %p_20
  0x10259B9B825C49BD
Collected value for `p_21`
  Concrete pointer resolves to p_21.deref, offset 0x0
  Replaced concrete pointer with hash 0xD3E1FD6173DE1132
  i32* %p_21
  0xD3E1FD6173DE1132
Collected value for `p_22`
  Concrete pointer resolves to p_22.deref, offset 0x0
  Replaced concrete pointer with hash 0x5A9B7DDA66E67FC3
  i32* %p_22
  0x5A9B7DDA66E67FC3
Collected value for `p_18`
  i8 -17
  0xEF
Collected value for `l_32`
  Concrete pointer resolves to g_8, offset 0x0
  Replaced concrete pointer with hash 0x637480294135CF34
  @g_8 = global i32 -9, align 4, !dbg !28
  0x637480294135CF34
[0;1;31mKLEE: ERROR: example.c:76: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `p_18`
  %inc = add i8 %18, 1, l69 c38
  0xF0

❌ Unable to execute all before program states

#### After values

Collected value for `p_19`
  Concrete pointer resolves to p_19.deref, offset 0x0
  Replaced concrete pointer with hash 0xE2DF9E1FBDD19199
  i32* %p_19
  0xE2DF9E1FBDD19199
Collected value for `p_22`
  Concrete pointer resolves to p_22.deref, offset 0x0
  Replaced concrete pointer with hash 0x5A9B7DDA66E67FC3
  i32* %p_22
  0x5A9B7DDA66E67FC3
Collected value for `p_18`
  i8 -17
  0xEF
Collected value for `l_32`
  Concrete pointer resolves to g_8, offset 0x0
  Replaced concrete pointer with hash 0x637480294135CF34
  @g_8 = global i32 -9, align 4, !dbg !28
  0x637480294135CF34
Collected value for `p_18`
  %inc = add nsw i8 %p_18.addr.021, 1, l69 c38
  0xF0

#### Check before against after

Checking equivalence of `l_32` (decl src line 71) from
assn 0, src line 71, column 18
@g_8 = global i32 -9, align 4, !dbg !28
0x637480294135CF34
and
assn 0, src line 71, column 0
@g_8 = global i32 -9, align 4, !dbg !28
0x637480294135CF34
Checking equivalence of `p_18` (decl src line 67) from
assn 0, src line 67, column 0
i8 %p_18
(Read w8 0x0 p_18)
and
assn 0, src line 67, column 0
i8 -17
0xEF
Query to parse
array p_18[1] : w32 -> w8 = symbolic
(query [] (Eq (Read w8 0x0 p_18) 0xEF))
Parsed query
(Eq (Read w8 0x0 p_18) 0xEF)
❌ Symbolic values don't match:
(Eq (Read w8 0x0 p_18) 0xEF)
🔔 After assn 0, src line 67, column 0 doesn't match before assn 1, src line 69, column 15
Checking equivalence of `p_18` (decl src line 67) from
assn 1, src line 69, column 15
i8 -17
0xEF
and
assn 0, src line 67, column 0
i8 -17
0xEF
🔔 After assn 1, src line 69, column 38 doesn't match before assn 2, src line 69, column 38
Checking equivalence of `p_18` (decl src line 67) from
assn 2, src line 69, column 38
%inc = add i8 %18, 1, l69 c38
0xF0
and
assn 1, src line 69, column 38
%inc = add nsw i8 %p_18.addr.021, 1, l69 c38
0xF0
Checking equivalence of `p_19` (decl src line 67) from
assn 0, src line 67, column 0
i32* %p_19
0xE2DF9E1FBDD19199
and
assn 0, src line 67, column 0
i32* %p_19
0xE2DF9E1FBDD19199
🔔 After live ranges for (removable) `p_20` (decl src line 67) not found
🔔 After live ranges for (removable) `p_21` (decl src line 67) not found
Checking equivalence of `p_22` (decl src line 67) from
assn 0, src line 67, column 0
i32* %p_22
0x5A9B7DDA66E67FC3
and
assn 0, src line 67, column 0
i32* %p_22
0x5A9B7DDA66E67FC3
❌ Before symbolic values checked against after
  Matching:    5
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   2

#### Check after against before

Checking equivalence of `l_32` (decl src line 71) from
assn 0, src line 71, column 0
@g_8 = global i32 -9, align 4, !dbg !28
0x637480294135CF34
and
assn 0, src line 71, column 18
@g_8 = global i32 -9, align 4, !dbg !28
0x637480294135CF34
Checking equivalence of `p_18` (decl src line 67) from
assn 0, src line 67, column 0
i8 -17
0xEF
and
assn 0, src line 67, column 0
i8 %p_18
(Read w8 0x0 p_18)
Query to parse
array p_18[1] : w32 -> w8 = symbolic
(query [] (Eq 0xEF (Read w8 0x0 p_18)))
Parsed query
(Eq 0xEF (Read w8 0x0 p_18))
❌ Symbolic values don't match:
(Eq 0xEF (Read w8 0x0 p_18))
🔔 Before assn 2, src line 69, column 38 doesn't match after assn 1, src line 69, column 38
Checking equivalence of `p_18` (decl src line 67) from
assn 1, src line 69, column 38
%inc = add nsw i8 %p_18.addr.021, 1, l69 c38
0xF0
and
assn 2, src line 69, column 38
%inc = add i8 %18, 1, l69 c38
0xF0
Checking equivalence of `p_19` (decl src line 67) from
assn 0, src line 67, column 0
i32* %p_19
0xE2DF9E1FBDD19199
and
assn 0, src line 67, column 0
i32* %p_19
0xE2DF9E1FBDD19199
Checking equivalence of `p_22` (decl src line 67) from
assn 0, src line 67, column 0
i32* %p_22
0x5A9B7DDA66E67FC3
and
assn 0, src line 67, column 0
i32* %p_22
0x5A9B7DDA66E67FC3
❌ After symbolic values checked against before
  Matching:    4
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
