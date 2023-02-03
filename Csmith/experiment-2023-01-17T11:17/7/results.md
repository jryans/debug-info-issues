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
4 warnings generated.
[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/7/example.c:68:157: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 3567753028 with boolean expression is always true [clang-diagnostic-tautological-constant-out-of-range-compare][0m
        (*l_2) = ((*l_45) |= (((*l_43) = (func_5(g_3, (((*l_14) = (((int8_t)(((0xF51AE9A07B30498DLL && (~g_3)) >= (*l_2)) <= l_11) << (int8_t)g_3) || g_3)) <= 0xD4A79744L)) , (*l_2))) && (*l_2)));
[0;1;32m                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/7/example.c:100:75: [0m[0;1;35mwarning: [0m[1mexpression result unused [clang-diagnostic-unused-value][0m
    if ((((int32_t)((*l_27) = (((int8_t)(((int64_t)l_24 / (int64_t)((g_15 > ((int64_t)g_3 - (int64_t)g_15)) , p_6)) <= l_24) - (int8_t)p_6) ^ g_15)) % (int32_t)g_3) & p_7))
[0;1;32m                                                                     ~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/7/example.c:106:114: [0m[0;1;35mwarning: [0m[1mcomparison of distinct pointer types ('uint32_t *' (aka 'unsigned int *') and 'int32_t *' (aka 'int *')) [clang-diagnostic-compare-distinct-pointer-types][0m
            l_41[0][2][4] = ((uint16_t)(((int16_t)((((int8_t)((int8_t)p_7 + (int8_t)(((*l_39) &= ((g_38 , &g_15) == l_27)) < (-10L))) % (int8_t)p_6) & g_3) >= g_15) >> (int16_t)(*l_27)) || g_38.f1) + (uint16_t)p_6);
[0;1;32m                                                                                                  ~~~~~~~~~~~~~~ ^  ~~~~
[0m[1m/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Csmith/experiment-2023-01-17T11:17/7/example.c:106:124: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant -10 with expression of type 'uint16_t' (aka 'unsigned short') is always false [clang-diagnostic-tautological-constant-out-of-range-compare][0m
            l_41[0][2][4] = ((uint16_t)(((int16_t)((((int8_t)((int8_t)p_7 + (int8_t)(((*l_39) &= ((g_38 , &g_15) == l_27)) < (-10L))) % (int8_t)p_6) & g_3) >= g_15) >> (int16_t)(*l_27)) || g_38.f1) + (uint16_t)p_6);
[0;1;32m                                                                                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~
[0m++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
[1mexample.c:68:157: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 3567753028 with boolean expression is always true [-Wtautological-constant-out-of-range-compare][0m
        (*l_2) = ((*l_45) |= (((*l_43) = (func_5(g_3, (((*l_14) = (((int8_t)(((0xF51AE9A07B30498DLL && (~g_3)) >= (*l_2)) <= l_11) << (int8_t)g_3) || g_3)) <= 0xD4A79744L)) , (*l_2))) && (*l_2)));
[0;1;32m                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
[0m[1mexample.c:100:75: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    if ((((int32_t)((*l_27) = (((int8_t)(((int64_t)l_24 / (int64_t)((g_15 > ((int64_t)g_3 - (int64_t)g_15)) , p_6)) <= l_24) - (int8_t)p_6) ^ g_15)) % (int32_t)g_3) & p_7))
[0;1;32m                                                                     ~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:106:114: [0m[0;1;35mwarning: [0m[1mcomparison of distinct pointer types ('uint32_t *' (aka 'unsigned int *') and 'int32_t *' (aka 'int *')) [-Wcompare-distinct-pointer-types][0m
            l_41[0][2][4] = ((uint16_t)(((int16_t)((((int8_t)((int8_t)p_7 + (int8_t)(((*l_39) &= ((g_38 , &g_15) == l_27)) < (-10L))) % (int8_t)p_6) & g_3) >= g_15) >> (int16_t)(*l_27)) || g_38.f1) + (uint16_t)p_6);
[0;1;32m                                                                                                  ~~~~~~~~~~~~~~ ^  ~~~~
[0m[1mexample.c:106:124: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant -10 with expression of type 'uint16_t' (aka 'unsigned short') is always false [-Wtautological-constant-out-of-range-compare][0m
            l_41[0][2][4] = ((uint16_t)(((int16_t)((((int8_t)((int8_t)p_7 + (int8_t)(((*l_39) &= ((g_38 , &g_15) == l_27)) < (-10L))) % (int8_t)p_6) & g_3) >= g_15) >> (int16_t)(*l_27)) || g_38.f1) + (uint16_t)p_6);
[0;1;32m                                                                                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~
[0m4 warnings generated.
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:68:157: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 3567753028 with boolean expression is always true [-Wtautological-constant-out-of-range-compare][0m
        (*l_2) = ((*l_45) |= (((*l_43) = (func_5(g_3, (((*l_14) = (((int8_t)(((0xF51AE9A07B30498DLL && (~g_3)) >= (*l_2)) <= l_11) << (int8_t)g_3) || g_3)) <= 0xD4A79744L)) , (*l_2))) && (*l_2)));
[0;1;32m                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
[0m[1mexample.c:100:75: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    if ((((int32_t)((*l_27) = (((int8_t)(((int64_t)l_24 / (int64_t)((g_15 > ((int64_t)g_3 - (int64_t)g_15)) , p_6)) <= l_24) - (int8_t)p_6) ^ g_15)) % (int32_t)g_3) & p_7))
[0;1;32m                                                                     ~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:106:114: [0m[0;1;35mwarning: [0m[1mcomparison of distinct pointer types ('uint32_t *' (aka 'unsigned int *') and 'int32_t *' (aka 'int *')) [-Wcompare-distinct-pointer-types][0m
            l_41[0][2][4] = ((uint16_t)(((int16_t)((((int8_t)((int8_t)p_7 + (int8_t)(((*l_39) &= ((g_38 , &g_15) == l_27)) < (-10L))) % (int8_t)p_6) & g_3) >= g_15) >> (int16_t)(*l_27)) || g_38.f1) + (uint16_t)p_6);
[0;1;32m                                                                                                  ~~~~~~~~~~~~~~ ^  ~~~~
[0m[1mexample.c:106:124: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant -10 with expression of type 'uint16_t' (aka 'unsigned short') is always false [-Wtautological-constant-out-of-range-compare][0m
            l_41[0][2][4] = ((uint16_t)(((int16_t)((((int8_t)((int8_t)p_7 + (int8_t)(((*l_39) &= ((g_38 , &g_15) == l_27)) < (-10L))) % (int8_t)p_6) & g_3) >= g_15) >> (int16_t)(*l_27)) || g_38.f1) + (uint16_t)p_6);
[0;1;32m                                                                                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~
[0m4 warnings generated.
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
[1mexample.c:68:157: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 3567753028 with boolean expression is always true [-Wtautological-constant-out-of-range-compare][0m
        (*l_2) = ((*l_45) |= (((*l_43) = (func_5(g_3, (((*l_14) = (((int8_t)(((0xF51AE9A07B30498DLL && (~g_3)) >= (*l_2)) <= l_11) << (int8_t)g_3) || g_3)) <= 0xD4A79744L)) , (*l_2))) && (*l_2)));
[0;1;32m                                                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
[0m[1mexample.c:100:75: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    if ((((int32_t)((*l_27) = (((int8_t)(((int64_t)l_24 / (int64_t)((g_15 > ((int64_t)g_3 - (int64_t)g_15)) , p_6)) <= l_24) - (int8_t)p_6) ^ g_15)) % (int32_t)g_3) & p_7))
[0;1;32m                                                                     ~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:106:114: [0m[0;1;35mwarning: [0m[1mcomparison of distinct pointer types ('uint32_t *' (aka 'unsigned int *') and 'int32_t *' (aka 'int *')) [-Wcompare-distinct-pointer-types][0m
            l_41[0][2][4] = ((uint16_t)(((int16_t)((((int8_t)((int8_t)p_7 + (int8_t)(((*l_39) &= ((g_38 , &g_15) == l_27)) < (-10L))) % (int8_t)p_6) & g_3) >= g_15) >> (int16_t)(*l_27)) || g_38.f1) + (uint16_t)p_6);
[0;1;32m                                                                                                  ~~~~~~~~~~~~~~ ^  ~~~~
[0m[1mexample.c:106:124: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant -10 with expression of type 'uint16_t' (aka 'unsigned short') is always false [-Wtautological-constant-out-of-range-compare][0m
            l_41[0][2][4] = ((uint16_t)(((int16_t)((((int8_t)((int8_t)p_7 + (int8_t)(((*l_39) &= ((g_38 , &g_15) == l_27)) < (-10L))) % (int8_t)p_6) & g_3) >= g_15) >> (int16_t)(*l_27)) || g_38.f1) + (uint16_t)p_6);
[0;1;32m                                                                                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~
[0m4 warnings generated.
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

Before variable `l_2` (decl src line 50)
Store to `l_2` (decl src line 50), asm line 89
  global g_3
  Added assignment starting at src line 66, column 43
Store to `l_2` (decl src line 50), asm line 33
  global g_3
  Value is same as last assignment, skipping
Before variable `l_4` (decl src line 51)
Before variable `i` (decl src line 52)
Store to `i` (decl src line 52), asm line 54
  %inc = add nsw i32 %2, 1, l53 c25, asm line 53
  Added assignment starting at src line 53, column 25
Store to `i` (decl src line 52), asm line 36
  const i32 0
  Added assignment starting at src line 53, column 12
Before variable `l_11` (decl src line 57)
Store to `l_11` (decl src line 57), asm line 64
  const i32 -1
  @dbg.declare without read users, removable
  Added assignment starting at src line 57, column 24
Before variable `l_12` (decl src line 58)
Store to `l_12` (decl src line 58), asm line 66
  const i32* null
  @dbg.declare without read users, removable
  Added assignment starting at src line 58, column 19
Before variable `l_13` (decl src line 59)
Store to `l_13` (decl src line 59), asm line 68
  const i32* null
  @dbg.declare without read users, removable
  Added assignment starting at src line 59, column 19
Before variable `l_14` (decl src line 60)
Store to `l_14` (decl src line 60), asm line 70
  global g_15
  Added assignment starting at src line 60, column 19
Before variable `l_43` (decl src line 61)
Store to `l_43` (decl src line 61), asm line 72
  global g_44
  Added assignment starting at src line 61, column 19
Before variable `l_45` (decl src line 62)
Store to `l_45` (decl src line 62), asm line 75
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %l_4, i64 0, i64 1, l62 c26, asm line 74
  Added assignment starting at src line 62, column 26
Before variable `i` (decl src line 65)
Before variable `l_48` (decl src line 72)
Store to `l_48` (decl src line 72), asm line 167
  global g_3
  Added assignment starting at src line 72, column 18

After variable `l_2` (decl src line 50)
@dbg.value mapping for `l_2` (decl src line 50), asm line 21
Value produced for `l_2` (decl src line 50), asm line 21
  global g_3
  Added assignment starting at src line 50, column 0
After variable `l_4` (decl src line 51)
After variable `i` (decl src line 52)
@dbg.value mapping for `i` (decl src line 52), asm line 25
Value produced for `i` (decl src line 52), asm line 25
  const i32 0
  Added assignment starting at src line 52, column 0
After variable `i` (decl src line 52)
@dbg.value mapping for `i` (decl src line 52), asm line 27
Value produced for `i` (decl src line 52), asm line 27
  const i32 undef
❌ Value produced for `i` (decl src line 52): missing line info
After variable `i` (decl src line 52)
@dbg.value mapping for `i` (decl src line 52), asm line 28
Value produced for `i` (decl src line 52), asm line 28
  const i32 undef
❌ Value produced for `i` (decl src line 52): missing line info
After variable `l_11` (decl src line 57)
@dbg.value mapping for `l_11` (decl src line 57), asm line 29
Value produced for `l_11` (decl src line 57), asm line 29
  const i32 -1
  Added assignment starting at src line 57, column 0
After variable `l_12` (decl src line 58)
@dbg.value mapping for `l_12` (decl src line 58), asm line 30
Value produced for `l_12` (decl src line 58), asm line 30
  const i32* null
  Added assignment starting at src line 58, column 0
After variable `l_13` (decl src line 59)
@dbg.value mapping for `l_13` (decl src line 59), asm line 31
Value produced for `l_13` (decl src line 59), asm line 31
  const i32* null
  Added assignment starting at src line 59, column 0
After variable `l_14` (decl src line 60)
@dbg.value mapping for `l_14` (decl src line 60), asm line 32
Value produced for `l_14` (decl src line 60), asm line 32
  global g_15
  Added assignment starting at src line 60, column 0
After variable `l_43` (decl src line 61)
@dbg.value mapping for `l_43` (decl src line 61), asm line 33
Value produced for `l_43` (decl src line 61), asm line 33
  global g_44
  Added assignment starting at src line 61, column 0
After variable `l_2` (decl src line 50)
@dbg.value mapping for `l_2` (decl src line 50), asm line 34
Value produced for `l_2` (decl src line 50), asm line 34
  global g_3
  Value is same as last assignment, skipping
After variable `i` (decl src line 65)
After variable intrinsic with undef input, asm line 37, ignoring undefined variable
  @dbg.value(i32 undef, !82), l65 c17
After variable `l_2` (decl src line 50)
@dbg.value mapping for `l_2` (decl src line 50), asm line 38
Value produced for `l_2` (decl src line 50), asm line 38
  const i32 undef
❌ Value produced for `l_2` (decl src line 50): missing line info
After variable `l_45` (decl src line 62)
@dbg.value mapping for `l_45` (decl src line 62), asm line 40
Value produced for `l_45` (decl src line 62), asm line 40
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, l62 c26, asm line 39
  Added assignment starting at src line 62, column 26

❌ 11 before variables found, 10 after variables found, 1 mismatched

### Assignments

❌ Live ranges for `i` (decl src line 52) don't match: [53.12,∞) vs. [52.0,∞)
🔔 Before live ranges for `i` (decl src line 65) not found (variable likely undefined)
❌ Live ranges for `l_2` (decl src line 50) don't match: [66.43,∞) vs. [50.0,∞)
🔔 Before live ranges for `l_4` (decl src line 51) not found (variable likely undefined)
❌ After live ranges for `l_48` (decl src line 72) not found
❌ Before live range coverage
  Covered:   6
  Uncovered: 3
  Undefined: 2
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

Collected value for `i`
  i32 0
  0x0
Collected value for `i`
  %inc = add nsw i32 %2, 1, l53 c25
  0x1
Collected value for `l_11`
  i32 -1
  0xFFFFFFFF
Collected value for `l_12`
  i32* null
  0x0
Collected value for `l_13`
  i32* null
  0x0
Collected value for `l_14`
  Concrete pointer resolves to g_15, offset 0x0
  Replaced concrete pointer with hash 0x339449ACD8A8AA99
  @g_15 = global i32 -336551731, align 4, !dbg !20
  0x339449ACD8A8AA99
Collected value for `l_43`
  Concrete pointer resolves to g_44, offset 0x0
  Replaced concrete pointer with hash 0x7267CB7129856CF1
  @g_44 = global i64 1, align 8, !dbg !41
  0x7267CB7129856CF1
Collected value for `l_45`
  Concrete pointer resolves to l_4, offset 0x4
  Replaced concrete pointer with hash 0x5AADE330011E8230
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %l_4, i64 0, i64 1, l62 c26
  0x5AADE330011E8230
Collected value for `l_2`
  Concrete pointer resolves to g_3, offset 0x0
  Replaced concrete pointer with hash 0x21B47D327CD9D433
  @g_3 = global i32 1308350147, align 4, !dbg !18
  0x21B47D327CD9D433

#### After values

Collected value for `l_2`
  Concrete pointer resolves to g_3, offset 0x0
  Replaced concrete pointer with hash 0x21B47D327CD9D433
  @g_3 = global i32 1308350147, align 4, !dbg !18
  0x21B47D327CD9D433
Collected value for `i`
  i32 0
  0x0
[0;1;35mKLEE: WARNING ONCE: calling external: memset_pattern16(0x109210EF8, 0x109212890, 0x8) at example.c:l0:c0
[0mCollected value for `l_11`
  i32 -1
  0xFFFFFFFF
Collected value for `l_12`
  i32* null
  0x0
Collected value for `l_13`
  i32* null
  0x0
Collected value for `l_14`
  Concrete pointer resolves to g_15, offset 0x0
  Replaced concrete pointer with hash 0x339449ACD8A8AA99
  @g_15 = local_unnamed_addr global i32 -336551731, align 4, !dbg !20
  0x339449ACD8A8AA99
Collected value for `l_43`
  Concrete pointer resolves to g_44, offset 0x0
  Replaced concrete pointer with hash 0x7267CB7129856CF1
  @g_44 = local_unnamed_addr global i64 1, align 8, !dbg !41
  0x7267CB7129856CF1
Collected value for `l_45`
  Concrete pointer resolves to l_4, offset 0x4
  Replaced concrete pointer with hash 0x5AADE330011E8230
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, l62 c26
  0x5AADE330011E8230

#### Check before against after

🔔 After assn 0, src line 52, column 0 doesn't match before assn 0, src line 53, column 12
Checking equivalence of `i` (decl src line 52) from
assn 0, src line 53, column 12
i32 0
0x0
and
assn 0, src line 52, column 0
i32 0
0x0
🔔 After assn 0, src line 52, column 0 doesn't match before assn 1, src line 53, column 25
Checking equivalence of `i` (decl src line 52) from
assn 1, src line 53, column 25
%inc = add nsw i32 %2, 1, l53 c25
0x1
and
assn 0, src line 52, column 0
i32 0
0x0
Checking equivalence of `l_11` (decl src line 57) from
assn 0, src line 57, column 24
i32 -1
0xFFFFFFFF
and
assn 0, src line 57, column 0
i32 -1
0xFFFFFFFF
Checking equivalence of `l_12` (decl src line 58) from
assn 0, src line 58, column 19
i32* null
0x0
and
assn 0, src line 58, column 0
i32* null
0x0
Checking equivalence of `l_13` (decl src line 59) from
assn 0, src line 59, column 19
i32* null
0x0
and
assn 0, src line 59, column 0
i32* null
0x0
Checking equivalence of `l_14` (decl src line 60) from
assn 0, src line 60, column 19
@g_15 = global i32 -336551731, align 4, !dbg !20
0x339449ACD8A8AA99
and
assn 0, src line 60, column 0
@g_15 = local_unnamed_addr global i32 -336551731, align 4, !dbg !20
0x339449ACD8A8AA99
🔔 After assn 0, src line 50, column 0 doesn't match before assn 0, src line 66, column 43
Checking equivalence of `l_2` (decl src line 50) from
assn 0, src line 66, column 43
@g_3 = global i32 1308350147, align 4, !dbg !18
0x21B47D327CD9D433
and
assn 0, src line 50, column 0
@g_3 = global i32 1308350147, align 4, !dbg !18
0x21B47D327CD9D433
Checking equivalence of `l_43` (decl src line 61) from
assn 0, src line 61, column 19
@g_44 = global i64 1, align 8, !dbg !41
0x7267CB7129856CF1
and
assn 0, src line 61, column 0
@g_44 = local_unnamed_addr global i64 1, align 8, !dbg !41
0x7267CB7129856CF1
Checking equivalence of `l_45` (decl src line 62) from
assn 0, src line 62, column 26
%arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %l_4, i64 0, i64 1, l62 c26
0x5AADE330011E8230
and
assn 0, src line 62, column 26
%arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, l62 c26
0x5AADE330011E8230
❌ After live range for `l_48` (decl src line 72) not found
❌ Before symbolic values checked against after
  Matching:    8
  Mismatched:  2
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

🔔 Before assn 0, src line 53, column 12 doesn't match after assn 0, src line 52, column 0
Checking equivalence of `i` (decl src line 52) from
assn 0, src line 52, column 0
i32 0
0x0
and
assn 0, src line 53, column 12
i32 0
0x0
Checking equivalence of `l_11` (decl src line 57) from
assn 0, src line 57, column 0
i32 -1
0xFFFFFFFF
and
assn 0, src line 57, column 24
i32 -1
0xFFFFFFFF
Checking equivalence of `l_12` (decl src line 58) from
assn 0, src line 58, column 0
i32* null
0x0
and
assn 0, src line 58, column 19
i32* null
0x0
Checking equivalence of `l_13` (decl src line 59) from
assn 0, src line 59, column 0
i32* null
0x0
and
assn 0, src line 59, column 19
i32* null
0x0
Checking equivalence of `l_14` (decl src line 60) from
assn 0, src line 60, column 0
@g_15 = local_unnamed_addr global i32 -336551731, align 4, !dbg !20
0x339449ACD8A8AA99
and
assn 0, src line 60, column 19
@g_15 = global i32 -336551731, align 4, !dbg !20
0x339449ACD8A8AA99
🔔 Before assn 0, src line 66, column 43 doesn't match after assn 0, src line 50, column 0
Checking equivalence of `l_2` (decl src line 50) from
assn 0, src line 50, column 0
@g_3 = global i32 1308350147, align 4, !dbg !18
0x21B47D327CD9D433
and
assn 0, src line 66, column 43
@g_3 = global i32 1308350147, align 4, !dbg !18
0x21B47D327CD9D433
Checking equivalence of `l_43` (decl src line 61) from
assn 0, src line 61, column 0
@g_44 = local_unnamed_addr global i64 1, align 8, !dbg !41
0x7267CB7129856CF1
and
assn 0, src line 61, column 19
@g_44 = global i64 1, align 8, !dbg !41
0x7267CB7129856CF1
Checking equivalence of `l_45` (decl src line 62) from
assn 0, src line 62, column 26
%arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %tmpcast, i64 0, i64 1, l62 c26
0x5AADE330011E8230
and
assn 0, src line 62, column 26
%arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %l_4, i64 0, i64 1, l62 c26
0x5AADE330011E8230
✅ After symbolic values checked against before
  Matching:    8
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Function `func_5`

✅ Before and after function names match

### Variables

Before variable `p_6` (decl src line 91)
Store to `p_6` (decl src line 91), asm line 370
  %add48 = add i64 %26, 2, l103 c44, asm line 369
  Added assignment starting at src line 103, column 44
Store to `p_6` (decl src line 91), asm line 294
  const i64 -17
  Added assignment starting at src line 103, column 18
Store to `p_6` (decl src line 91), asm line 235
  arg 0
  Added assignment starting at src line 91, column 0
Before variable `p_7` (decl src line 91)
Store to `p_7` (decl src line 91), asm line 237
  arg 1
  Added assignment starting at src line 91, column 0
Before variable `l_17` (decl src line 93)
Store to `l_17` (decl src line 93), asm line 240
  const i32* null
  @dbg.declare without read users, removable
  Added assignment starting at src line 93, column 14
Before variable `l_16` (decl src line 94)
Store to `l_16` (decl src line 94), asm line 242
  %l_17 = alloca i32*, asm line 225
  Added assignment starting at src line 94, column 15
Before variable `l_24` (decl src line 95)
Store to `l_24` (decl src line 95), asm line 244
  const i32 0
  Added assignment starting at src line 95, column 13
Before variable `l_27` (decl src line 96)
Store to `l_27` (decl src line 96), asm line 246
  %l_24 = alloca i32, asm line 227
  Added assignment starting at src line 96, column 14
Before variable `l_41` (decl src line 97)
Before variable `i` (decl src line 98)
Before variable `j` (decl src line 98)
Before variable `k` (decl src line 98)
Before variable `l_39` (decl src line 105)
Store to `l_39` (decl src line 105), asm line 304
  global g_40
  Added assignment starting at src line 105, column 23

After variable `l_41` (decl src line 97)
After variable intrinsic with undef input, asm line 66, ignoring undefined variable
  @dbg.declare([64 x i8]* undef, !126, !DIExpression(DW_OP_LLVM_fragment, 0, 512)), l97 c13
After variable `l_41` (decl src line 97)
After variable intrinsic with undef input, asm line 67, ignoring undefined variable
  @dbg.declare([364 x i8]* undef, !126, !DIExpression(DW_OP_LLVM_fragment, 544, 2912)), l97 c13
After variable `p_6` (decl src line 91)
@dbg.value mapping for `p_6` (decl src line 91), asm line 68
Value produced for `p_6` (decl src line 91), asm line 68
  arg 0
  Added assignment starting at src line 91, column 0
After variable `p_7` (decl src line 91)
@dbg.value mapping for `p_7` (decl src line 91), asm line 69
Value produced for `p_7` (decl src line 91), asm line 69
  arg 1
  Added assignment starting at src line 91, column 0
After variable `l_17` (decl src line 93)
@dbg.value mapping for `l_17` (decl src line 93), asm line 70
Value produced for `l_17` (decl src line 93), asm line 70
  const i32* null
  Added assignment starting at src line 93, column 0
After variable `l_16` (decl src line 94)
After variable intrinsic with undef input, asm line 71, ignoring undefined variable
  @dbg.value(i32** undef, !123)
After variable `l_24` (decl src line 95)
@dbg.value mapping for `l_24` (decl src line 95), asm line 72
Value produced for `l_24` (decl src line 95), asm line 72
  const i32 0
  Added assignment starting at src line 95, column 0
After variable `l_27` (decl src line 96)
After variable intrinsic with undef input, asm line 73, ignoring undefined variable
  @dbg.value(i32* undef, !125)
After variable `l_41` (decl src line 97)
After variable intrinsic with undef input, asm line 74, ignoring undefined variable
  @dbg.value(i32 undef, !126, !DIExpression(DW_OP_LLVM_fragment, 512, 32))
After variable `i` (decl src line 98)
After variable intrinsic with undef input, asm line 75, ignoring undefined variable
  @dbg.declare(i32* undef, !131), l98 c9
After variable `j` (decl src line 98)
After variable intrinsic with undef input, asm line 76, ignoring undefined variable
  @dbg.declare(i32* undef, !132), l98 c12
After variable `k` (decl src line 98)
After variable intrinsic with undef input, asm line 77, ignoring undefined variable
  @dbg.declare(i32* undef, !133), l98 c15
After variable `l_17` (decl src line 93)
@dbg.value mapping for `l_17` (decl src line 93), asm line 78
Value produced for `l_17` (decl src line 93), asm line 78
  const i32* null
  Value is same as last assignment, skipping
After variable `l_24` (decl src line 95)
@dbg.value mapping for `l_24` (decl src line 95), asm line 79
Value produced for `l_24` (decl src line 95), asm line 79
  [ const i32 1, const i32 undef, arg 0 ]
  Added assignment starting at src line 95, column 0
🔔 Multiple assignments to variable `l_24` (decl src line 95) in source range from line 95, column 0 to line 95, column 0

❌ 11 before variables found, 10 after variables found, 1 mismatched

### Assignments

🔔 Before live ranges for `i` (decl src line 98) not found (variable likely undefined)
🔔 Before live ranges for `j` (decl src line 98) not found (variable likely undefined)
🔔 Before live ranges for `k` (decl src line 98) not found (variable likely undefined)
❌ After live ranges for `l_16` (decl src line 94) not found
❌ After live ranges for `l_27` (decl src line 96) not found
❌ After live ranges for `l_39` (decl src line 105) not found
🔔 Before live ranges for `l_41` (decl src line 97) not found (variable likely undefined)
❌ Before live range coverage
  Covered:   4
  Uncovered: 3
  Undefined: 4
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

Collected value for `p_6`
  i64 %p_6
  (ReadLSB w64 0x0 p_6)
Collected value for `p_7`
  i32 %p_7
  (ReadLSB w32 0x0 p_7)
Collected value for `l_17`
  i32* null
  0x0
Collected value for `l_16`
  Concrete pointer resolves to l_17, offset 0x0
  Replaced concrete pointer with hash 0x1DF5479060C3451C
  %l_17 = alloca i32*
  0x1DF5479060C3451C
Collected value for `l_24`
  i32 0
  0x0
Collected value for `l_27`
  Concrete pointer resolves to l_24, offset 0x0
  Replaced concrete pointer with hash 0x86B343C868706B6B
  %l_24 = alloca i32
  0x86B343C868706B6B
Collected value for `p_6`
  i64 -17
  0xFFFFFFFFFFFFFFEF

#### After values

Collected value for `p_6`
  i64 %p_6
  (ReadLSB w64 0x0 p_6)
Collected value for `p_7`
  i32 %p_7
  (ReadLSB w32 0x0 p_7)
Collected value for `l_17`
  i32* null
  0x0
Collected value for `l_24`
  i32 0
  0x0
Collected value for `l_24`
  i32 1
  0x1
Collected value for `l_24`
  i32 undef
  0x0
Collected value for `l_24`
  i64 %p_6
  (ReadLSB w64 0x0 p_6)

#### Check before against after

❌ After live range for `l_16` (decl src line 94) not found
Checking equivalence of `l_17` (decl src line 93) from
assn 0, src line 93, column 14
i32* null
0x0
and
assn 0, src line 93, column 0
i32* null
0x0
🔔 After assn 1, src line 95, column 0 doesn't match before assn 0, src line 95, column 13
LLVM_arg: 0x1
LLVM_arg: (ReadLSB w64 0x0 p_6)
convert: already 64 bit(s), skipping
convert: (Extract w32 0 (ReadLSB w64 0x0 p_6))
constu/s: 0x18
shl: (Shl w32 (Extract w32 0 (ReadLSB w64 0x0 p_6))
          (Extract w32 0 0x18))
constu/s: 0x18
shra: (AShr w32 (Shl w32 (Extract w32 0 (ReadLSB w64 0x0 p_6))
                    N0:(Extract w32 0 0x18))
           N0)
minus: (Sub w32 0x1
          (AShr w32 (Shl w32 (Extract w32 0 (ReadLSB w64 0x0 p_6))
                             N0:(Extract w32 0 0x18))
                    N0))
LLVM_arg: 0x0
xor: (Xor w32 0x0
          (Sub w32 0x1
                   (AShr w32 (Shl w32 (Extract w32 0 (ReadLSB w64 0x0 p_6))
                                      N0:(Extract w32 0 0x18))
                             N0)))
Result: (Xor w32 0x0
          (Sub w32 0x1
                   (AShr w32 (Shl w32 (Extract w32 0 (ReadLSB w64 0x0 p_6))
                                      N0:(Extract w32 0 0x18))
                             N0)))
Checking equivalence of `l_24` (decl src line 95) from
assn 0, src line 95, column 13
i32 0
0x0
and
assn 1, src line 95, column 0
[ i32 1, i32 undef, i64 %p_6 ]
(Xor w32 0x0
          (Sub w32 0x1
                   (AShr w32 (Shl w32 (Extract w32 0 (ReadLSB w64 0x0 p_6))
                                      N0:(Extract w32 0 0x18))
                             N0)))
Query to parse
array p_6[8] : w32 -> w8 = symbolic
(query [] (Eq 0x0
     (Xor w32 0x0
              (Sub w32 0x1
                       (AShr w32 (Shl w32 (Extract w32 0 (ReadLSB w64 0x0 p_6))
                                          N0:(Extract w32 0 0x18))
                                 N0)))))
:6:60: error: cannot infer type of number.
                                          N0:(Extract w32 0 0x18))
                                                            ~~~~
[0;1;31mKLEE: ERROR: Unable to parse query
[0m