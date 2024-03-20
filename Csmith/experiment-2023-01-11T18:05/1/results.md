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
++++ dirname ../../../vars.sh
+++ FILTER_DOT=../../../tools/filter-dot.js
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
+++ BEFORE_BC=klee-out-before/final.bc
+++ AFTER_BC=klee-out-after/final.bc
+++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
++++ klee debug check-debug-info
++++ local build=debug
++++ local program=check-debug-info
++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
+++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
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
+++++ dirname ../../../vars.sh
++++ FILTER_DOT=../../../tools/filter-dot.js
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
++++ BEFORE_BC=klee-out-before/final.bc
++++ AFTER_BC=klee-out-after/final.bc
++++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
+++++ klee debug check-debug-info
+++++ local build=debug
+++++ local program=check-debug-info
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
[1mexample.c:106:80: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_34 = (g_6 <= (((int8_t)((((uint16_t)(((uint32_t)((((g_30 = &g_7) == ((g_33 = (!g_7)) , l_15[3][2])) , g_20[0]) , 1UL) - (uint32_t)g_31) == p_11) + (uint16_t)0xE8BFL) , 0x6B71L) > (-1L)) * (int8_t)p_12) != g_29));
[0;1;32m                                                                 ~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:106:123: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_34 = (g_6 <= (((int8_t)((((uint16_t)(((uint32_t)((((g_30 = &g_7) == ((g_33 = (!g_7)) , l_15[3][2])) , g_20[0]) , 1UL) - (uint32_t)g_31) == p_11) + (uint16_t)0xE8BFL) , 0x6B71L) > (-1L)) * (int8_t)p_12) != g_29));
[0;1;32m                                                                                                                    ~~~~ ~^
[0m[1mexample.c:106:160: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_34 = (g_6 <= (((int8_t)((((uint16_t)(((uint32_t)((((g_30 = &g_7) == ((g_33 = (!g_7)) , l_15[3][2])) , g_20[0]) , 1UL) - (uint32_t)g_31) == p_11) + (uint16_t)0xE8BFL) , 0x6B71L) > (-1L)) * (int8_t)p_12) != g_29));
[0;1;32m                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~
[0m[1mexample.c:109:59: [0m[0;1;35mwarning: [0m[1mcomparison of distinct pointer types ('const int32_t **' (aka 'const int **') and 'int32_t **' (aka 'int **')) [-Wcompare-distinct-pointer-types][0m
        g_6 = ((uint8_t)((uint16_t)p_9 - (uint16_t)(&g_30 == (l_45 = &l_37))) * (uint8_t)0xD9L);
[0;1;32m                                                    ~~~~~ ^  ~~~~~~~~~~~~~~
[0m4 warnings generated.
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:106:80: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_34 = (g_6 <= (((int8_t)((((uint16_t)(((uint32_t)((((g_30 = &g_7) == ((g_33 = (!g_7)) , l_15[3][2])) , g_20[0]) , 1UL) - (uint32_t)g_31) == p_11) + (uint16_t)0xE8BFL) , 0x6B71L) > (-1L)) * (int8_t)p_12) != g_29));
[0;1;32m                                                                 ~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:106:123: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_34 = (g_6 <= (((int8_t)((((uint16_t)(((uint32_t)((((g_30 = &g_7) == ((g_33 = (!g_7)) , l_15[3][2])) , g_20[0]) , 1UL) - (uint32_t)g_31) == p_11) + (uint16_t)0xE8BFL) , 0x6B71L) > (-1L)) * (int8_t)p_12) != g_29));
[0;1;32m                                                                                                                    ~~~~ ~^
[0m[1mexample.c:106:160: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_34 = (g_6 <= (((int8_t)((((uint16_t)(((uint32_t)((((g_30 = &g_7) == ((g_33 = (!g_7)) , l_15[3][2])) , g_20[0]) , 1UL) - (uint32_t)g_31) == p_11) + (uint16_t)0xE8BFL) , 0x6B71L) > (-1L)) * (int8_t)p_12) != g_29));
[0;1;32m                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~
[0m[1mexample.c:109:59: [0m[0;1;35mwarning: [0m[1mcomparison of distinct pointer types ('const int32_t **' (aka 'const int **') and 'int32_t **' (aka 'int **')) [-Wcompare-distinct-pointer-types][0m
        g_6 = ((uint8_t)((uint16_t)p_9 - (uint16_t)(&g_30 == (l_45 = &l_37))) * (uint8_t)0xD9L);
[0;1;32m                                                    ~~~~~ ^  ~~~~~~~~~~~~~~
[0m4 warnings generated.
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
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -O1 -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -o example-O1
[1mexample.c:106:80: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_34 = (g_6 <= (((int8_t)((((uint16_t)(((uint32_t)((((g_30 = &g_7) == ((g_33 = (!g_7)) , l_15[3][2])) , g_20[0]) , 1UL) - (uint32_t)g_31) == p_11) + (uint16_t)0xE8BFL) , 0x6B71L) > (-1L)) * (int8_t)p_12) != g_29));
[0;1;32m                                                                 ~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:106:123: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_34 = (g_6 <= (((int8_t)((((uint16_t)(((uint32_t)((((g_30 = &g_7) == ((g_33 = (!g_7)) , l_15[3][2])) , g_20[0]) , 1UL) - (uint32_t)g_31) == p_11) + (uint16_t)0xE8BFL) , 0x6B71L) > (-1L)) * (int8_t)p_12) != g_29));
[0;1;32m                                                                                                                    ~~~~ ~^
[0m[1mexample.c:106:160: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_34 = (g_6 <= (((int8_t)((((uint16_t)(((uint32_t)((((g_30 = &g_7) == ((g_33 = (!g_7)) , l_15[3][2])) , g_20[0]) , 1UL) - (uint32_t)g_31) == p_11) + (uint16_t)0xE8BFL) , 0x6B71L) > (-1L)) * (int8_t)p_12) != g_29));
[0;1;32m                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~
[0m[1mexample.c:109:59: [0m[0;1;35mwarning: [0m[1mcomparison of distinct pointer types ('const int32_t **' (aka 'const int **') and 'int32_t **' (aka 'int **')) [-Wcompare-distinct-pointer-types][0m
        g_6 = ((uint8_t)((uint16_t)p_9 - (uint16_t)(&g_30 == (l_45 = &l_37))) * (uint8_t)0xD9L);
[0;1;32m                                                    ~~~~~ ^  ~~~~~~~~~~~~~~
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
+++++ dirname ../../../vars.sh
++++ FILTER_DOT=../../../tools/filter-dot.js
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
++++ BEFORE_BC=klee-out-before/final.bc
++++ AFTER_BC=klee-out-after/final.bc
++++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
+++++ klee debug check-debug-info
+++++ local build=debug
+++++ local program=check-debug-info
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
++ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

❌ 2 before defined functions(s), 1 after defined functions(s)

## Function `func_1`

✅ Before and after function names match

### Variable events

#### Before variables

Store to declared address of `l_54` (decl src ln 61), asm ln 155
  const i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i64 0, i64 5)
  @dbg.declare without read users, removable
  Added assignment asm ln 155, prod ln 61.14, live ln 62, enc None
Store to declared address of `l_56` (decl src ln 63), asm ln 228
  %inc14 = add i32 %22, 1, l76 c5, asm ln 227
  Added assignment asm ln 228, prod ln 76.5, live ln 77, enc None
Load from declared address of `l_56` (decl src ln 63), asm ln 226
  %22 = load i32, i32* %l_56, l76 c5, asm ln 226
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 226, prod ln 76.5, live ln 77, enc None
Store to declared address of `l_56` (decl src ln 63), asm ln 160
  const i32 -181181382
  Added assignment asm ln 160, prod ln 63.14, live ln 65, enc None
Load from declared address of `l_14` (decl src ln 71), asm ln 192
  %11 = load i16, i16* %l_14, l72 c49, asm ln 192
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 192, prod ln 72.49, live ln 73, enc None
Store to declared address of `l_14` (decl src ln 71), asm ln 187
  const i16 1
  Added assignment asm ln 187, prod ln 71.22, live ln 72, enc None

#### After variables

After variable intrinsic with undef input, asm ln 103, ignoring undefined variable
  @dbg.declare([374 x i8]* undef, !159, !DIExpression(DW_OP_LLVM_fragment, 0, 2992)), l60 c13
After variable intrinsic with undef input, asm ln 104, ignoring undefined variable
  @dbg.declare([104 x i8]* undef, !159, !DIExpression(DW_OP_LLVM_fragment, 3008, 832)), l60 c13
Value produced for `l_5` (decl src ln 60), asm ln 105
  const i16 -20131
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 105, prod ln 60.0, live ln 61, enc None
After variable intrinsic with undef input, asm ln 106, ignoring undefined variable
  @dbg.value(i32* undef, !164)
Value produced for `l_56` (decl src ln 63), asm ln 107
  const i32 -181181382
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 107, prod ln 63.0, live ln 64, enc None
After variable intrinsic with undef input, asm ln 108, ignoring undefined variable
  @dbg.declare(i32* undef, !172), l64 c9
After variable intrinsic with undef input, asm ln 109, ignoring undefined variable
  @dbg.declare(i32* undef, !173), l64 c12
After variable intrinsic with undef input, asm ln 110, ignoring undefined variable
  @dbg.declare(i32* undef, !174), l64 c15
Value produced for `l_56` (decl src ln 63), asm ln 112
  const i32 -181181382
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 112, prod ln 63.0, live ln 77, enc None

#### Summary

❌ 10 before variables found, 6 after variables found, 4 mismatched

### Symbolic values

#### Before values

Collected value for `l_54`
  Assignment asm ln 155, prod ln 61.14, live ln 62, enc 0
  Concrete pointer resolves to g_48, offset (w64 0x14)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xD8B0126C7F82D3B6)
  i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i64 0, i64 5)
  (w64 0xD8B0126C7F82D3B6)
Collected value for `l_56`
  Assignment asm ln 160, prod ln 63.14, live ln 65, enc 0
  i32 -181181382
  (w32 0xF533643A)
Collected value for `l_56`
  Assignment asm ln 226, prod ln 76.5, live ln 77, enc 1
  %22 = load i32, i32* %l_56, l76 c5
  (w32 0xF533643A)
Collected value for `l_56`
  Assignment asm ln 228, prod ln 76.5, live ln 77, enc 2
  %inc14 = add i32 %22, 1, l76 c5
  (w32 0xF533643B)

🔔 Unable to execute all before instructions

#### After values

Collected value for `l_5`
  Assignment asm ln 105, prod ln 60.0, live ln 61, enc 0
  i16 -20131
  (w16 0xB15D)
Collected value for `l_56`
  Assignment asm ln 107, prod ln 63.0, live ln 64, enc 0
  i32 -181181382
  (w32 0xF533643A)
Collected value for `l_56`
  Assignment asm ln 112, prod ln 63.0, live ln 77, enc 1
  i32 -181181382
  (w32 0xF533643A)

### Assignments

#### Collation

Filtering before assignments: `l_14` (decl src ln 71)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `l_14` (decl src ln 71) from
  assn asm ln 187, prod ln 71.22, live ln 72, enc None
  i16 1
and
  assn asm ln 192, prod ln 72.49, live ln 73, enc None
  %11 = load i16, i16* %l_14, l72 c49
🔔 Removing: asm ln 187, prod ln 71.22, live ln 72, enc None

Filtering before assignments: `l_56` (decl src ln 63)

Checking equivalence of `l_56` (decl src ln 63) from
  assn asm ln 226, prod ln 76.5, live ln 77, enc 1
  %22 = load i32, i32* %l_56, l76 c5
  (w32 0xF533643A)
and
  assn asm ln 160, prod ln 63.14, live ln 65, enc 0
  i32 -181181382
  (w32 0xF533643A)
🔔 Removing: asm ln 226, prod ln 76.5, live ln 77, enc 1

Checking equivalence of `l_56` (decl src ln 63) from
  assn asm ln 228, prod ln 76.5, live ln 77, enc 2
  %inc14 = add i32 %22, 1, l76 c5
  (w32 0xF533643B)
and
  assn asm ln 160, prod ln 63.14, live ln 65, enc 0
  i32 -181181382
  (w32 0xF533643A)

Filtering after assignments: `l_56` (decl src ln 63)

Pushed initial value onto stack: (w32 0xF533643A)
plus_uconst: (Add w32 (w32 0xF533643A) (Extract w32 0 (w64 0x1)))
Result: (Add w32 (w32 0xF533643A) (Extract w32 0 (w64 0x1)))
Checking equivalence of `l_56` (decl src ln 63) from
  assn asm ln 112, prod ln 63.0, live ln 77, enc 1
  i32 -181181382
  (Add w32 (w32 0xF533643A) (Extract w32 0 (w64 0x1)))
and
  assn asm ln 107, prod ln 63.0, live ln 64, enc 0
  i32 -181181382
  (w32 0xF533643A)
Query to parse
(query [] (Eq (Add w32 (w32 0xF533643A) (Extract w32 0 (w64 0x1)))
     (w32 0xF533643A)))
Parsed query
(Eq (Add w32 (w32 0xF533643A) (Extract w32 0 (w64 0x1)))
     (w32 0xF533643A))

Collating encountered before assignments: `l_14` (decl src ln 71)
❌ Assignment asm ln 192, prod ln 72.49, live ln 73, enc None for `l_14` (decl src ln 71) was not encountered during execution
Collating encountered before assignments: `l_54` (decl src ln 61)
  asm ln 155, prod ln 61.14, live ln 62, enc 0
Collating encountered before assignments: `l_56` (decl src ln 63)
  asm ln 160, prod ln 63.14, live ln 65, enc 0
  asm ln 228, prod ln 76.5, live ln 77, enc 1

Collating encountered after assignments: `l_5` (decl src ln 60)
  asm ln 105, prod ln 60.0, live ln 61, enc 0
Collating encountered after assignments: `l_56` (decl src ln 63)
  asm ln 107, prod ln 63.0, live ln 64, enc 0
  asm ln 112, prod ln 63.0, live ln 77, enc 1

#### Check after using before as reference

🔔 Before encountered assns for (removable) `i` (decl src ln 68) not found in after
Assignments:         i
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

❌ Before encountered assns for `l_14` (decl src ln 71) not found in after
Assignments:         l_14
  Reference:         1
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   1
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before encountered assns for (removable) `l_51` (decl src ln 67) not found in after
Assignments:         l_51
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

🔔 Before encountered assns for (removable) `l_55` (decl src ln 62) not found in after
Assignments:         l_55
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

✅ After `i` assns checked using before as reference
Assignments:         i
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

✅ After `j` assns checked using before as reference
Assignments:         j
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

✅ After `k` assns checked using before as reference
Assignments:         k
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

❌ After encountered assn for `l_5` (decl src ln 60) at asm ln 105, prod ln 60.0, live ln 61, enc 0 not found in before

❌ After `l_5` assns checked using before as reference
Assignments:         l_5
  Reference:         0
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   1
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

❌ Before encountered assn for `l_54` (decl src ln 61) at asm ln 155, prod ln 61.14, live ln 62, enc 0 not found in after

❌ After `l_54` assns checked using before as reference
Assignments:         l_54
  Reference:         1
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   1
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

❌ Before `l_56` (decl src ln 63) assn asm ln 160, prod ln 63.14, live ln 65, enc 0 coordinates don't match after assn asm ln 107, prod ln 63.0, live ln 64, enc 0
Checking equivalence of `l_56` (decl src ln 63) from
  assn asm ln 107, prod ln 63.0, live ln 64, enc 0
  i32 -181181382
  (w32 0xF533643A)
and
  assn asm ln 160, prod ln 63.14, live ln 65, enc 0
  i32 -181181382
  (w32 0xF533643A)
✅ Before `l_56` (decl src ln 63) assn asm ln 160, prod ln 63.14, live ln 65, enc 0 symbolic value matches after assn asm ln 107, prod ln 63.0, live ln 64, enc 0

Checking equivalence of `l_56` (decl src ln 63) from
  assn asm ln 112, prod ln 63.0, live ln 77, enc 1
  i32 -181181382
  (Add w32 (w32 0xF533643A) (Extract w32 0 (w64 0x1)))
and
  assn asm ln 228, prod ln 76.5, live ln 77, enc 1
  %inc14 = add i32 %22, 1, l76 c5
  (w32 0xF533643B)
Query to parse
(query [] (Eq (Add w32 (w32 0xF533643A) (Extract w32 0 (w64 0x1)))
     (w32 0xF533643B)))
Parsed query
(Eq (Add w32 (w32 0xF533643A) (Extract w32 0 (w64 0x1)))
     (w32 0xF533643B))
✅ Before `l_56` (decl src ln 63) assn asm ln 228, prod ln 76.5, live ln 77, enc 1 symbolic value matches after assn asm ln 112, prod ln 63.0, live ln 77, enc 1

❌ After `l_56` assns checked using before as reference
Assignments:         l_56
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

## Function `func_8`

❌ After function not found

## Function `memcpy`

❌ After function not found

## Summary

Assignments:
  Reference:                 4
  Test:                      3 ( 75.00% of ref )
Matching:
  Matching Coords:           1 ( 25.00% of ref )
  Matching Value:            2 ( 50.00% of ref )
Consistency Errors:
  Mismatched Coords:         1 ( 25.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           2 ( 50.00% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           1 ( 33.33% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          0 (  0.00% of ref )
  Complete:                  3 ( 75.00% of ref )
  Within Time Limit:         3 ( 75.00% of ref )
  Within Fork Limit:         3 ( 75.00% of ref )
Test Execution:
  Function Covered:          3 (100.00% of test)
  Complete:                  3 (100.00% of test)
  Within Time Limit:         3 (100.00% of test)
  Within Fork Limit:         3 (100.00% of test)

❌ Some consistency checks failed
