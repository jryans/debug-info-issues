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
++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
[1mexample.c:85:23: [0m[0;1;35mwarning: [0m[1mcomparison of address of 'g_3' not equal to a null pointer is always true [-Wtautological-pointer-compare][0m
    if (((void*)0 != &g_3))
[0;1;32m         ~~~~~~~~     ^~~
[0m[1mexample.c:92:71: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        if ((((uint16_t)(((g_28 = &g_3) == l_30) <= (g_29 ^ g_21.f0)) % (uint16_t)1UL) , (*l_30)))
[0;1;32m              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~
[0m[1mexample.c:95:69: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            (*l_30) ^= ((uint8_t)((int8_t)g_6 << (int8_t)(((void*)0 == p_20) , 1UL)) % (uint8_t)g_5);
[0;1;32m                                                           ~~~~~~~~ ^  ~~~~
[0m[1mexample.c:105:171: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_58 &= (((*l_55) &= ((((+((((((*l_43) &= 0xDAF8D98C6833686ALL) , ((uint8_t)((((*l_43) ^= ((uint8_t)((&g_44 == ((((uint8_t)((void*)0 != p_20) + (uint8_t)1UL) == l_51[4]) , &g_44)) | g_21.f1) >> (uint8_t)l_51[4])) <= l_36) || (*p_20)) << (uint8_t)g_29)) , l_52[3]) != (void*)0) && l_53)) , l_54) , g_21.f0) >= g_5)) & l_57);
[0;1;32m                                                                                                                             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~
[0m[1mexample.c:105:247: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_58 &= (((*l_55) &= ((((+((((((*l_43) &= 0xDAF8D98C6833686ALL) , ((uint8_t)((((*l_43) ^= ((uint8_t)((&g_44 == ((((uint8_t)((void*)0 != p_20) + (uint8_t)1UL) == l_51[4]) , &g_44)) | g_21.f1) >> (uint8_t)l_51[4])) <= l_36) || (*p_20)) << (uint8_t)g_29)) , l_52[3]) != (void*)0) && l_53)) , l_54) , g_21.f0) >= g_5)) & l_57);
[0;1;32m                                                                               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~
[0m[1mexample.c:105:38: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_58 &= (((*l_55) &= ((((+((((((*l_43) &= 0xDAF8D98C6833686ALL) , ((uint8_t)((((*l_43) ^= ((uint8_t)((&g_44 == ((((uint8_t)((void*)0 != p_20) + (uint8_t)1UL) == l_51[4]) , &g_44)) | g_21.f1) >> (uint8_t)l_51[4])) <= l_36) || (*p_20)) << (uint8_t)g_29)) , l_52[3]) != (void*)0) && l_53)) , l_54) , g_21.f0) >= g_5)) & l_57);
[0;1;32m                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:105:302: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_58 &= (((*l_55) &= ((((+((((((*l_43) &= 0xDAF8D98C6833686ALL) , ((uint8_t)((((*l_43) ^= ((uint8_t)((&g_44 == ((((uint8_t)((void*)0 != p_20) + (uint8_t)1UL) == l_51[4]) , &g_44)) | g_21.f1) >> (uint8_t)l_51[4])) <= l_36) || (*p_20)) << (uint8_t)g_29)) , l_52[3]) != (void*)0) && l_53)) , l_54) , g_21.f0) >= g_5)) & l_57);
[0;1;32m                                                                                                                                                                                                                                                                                                             ^~~~
[0m[1mexample.c:121:45: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        g_21.f3 ^= ((((int64_t)((int32_t)(((l_36 , l_36) < ((((*l_66) = ((uint64_t)l_65[0][1] - (uint64_t)g_5)) , g_58) != g_29)) == l_65[0][1]) + (int32_t)l_36) / (int64_t)l_54) > (*g_28)) < 1L);
[0;1;32m                                            ^~~~
[0m[1mexample.c:125:46: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            (*g_28) |= (p_20 == ((l_70[3][6] != (void*)0) , l_71));
[0;1;32m                                  ~~~~~~~~~~ ^  ~~~~~~~~
[0m[1mexample.c:125:30: [0m[0;1;35mwarning: [0m[1mcomparison of distinct pointer types ('int32_t *' (aka 'int *') and 'uint32_t *' (aka 'unsigned int *')) [-Wcompare-distinct-pointer-types][0m
            (*g_28) |= (p_20 == ((l_70[3][6] != (void*)0) , l_71));
[0;1;32m                        ~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m10 warnings generated.
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:85:23: [0m[0;1;35mwarning: [0m[1mcomparison of address of 'g_3' not equal to a null pointer is always true [-Wtautological-pointer-compare][0m
    if (((void*)0 != &g_3))
[0;1;32m         ~~~~~~~~     ^~~
[0m[1mexample.c:92:71: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        if ((((uint16_t)(((g_28 = &g_3) == l_30) <= (g_29 ^ g_21.f0)) % (uint16_t)1UL) , (*l_30)))
[0;1;32m              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~
[0m[1mexample.c:95:69: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            (*l_30) ^= ((uint8_t)((int8_t)g_6 << (int8_t)(((void*)0 == p_20) , 1UL)) % (uint8_t)g_5);
[0;1;32m                                                           ~~~~~~~~ ^  ~~~~
[0m[1mexample.c:105:171: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_58 &= (((*l_55) &= ((((+((((((*l_43) &= 0xDAF8D98C6833686ALL) , ((uint8_t)((((*l_43) ^= ((uint8_t)((&g_44 == ((((uint8_t)((void*)0 != p_20) + (uint8_t)1UL) == l_51[4]) , &g_44)) | g_21.f1) >> (uint8_t)l_51[4])) <= l_36) || (*p_20)) << (uint8_t)g_29)) , l_52[3]) != (void*)0) && l_53)) , l_54) , g_21.f0) >= g_5)) & l_57);
[0;1;32m                                                                                                                             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~
[0m[1mexample.c:105:247: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_58 &= (((*l_55) &= ((((+((((((*l_43) &= 0xDAF8D98C6833686ALL) , ((uint8_t)((((*l_43) ^= ((uint8_t)((&g_44 == ((((uint8_t)((void*)0 != p_20) + (uint8_t)1UL) == l_51[4]) , &g_44)) | g_21.f1) >> (uint8_t)l_51[4])) <= l_36) || (*p_20)) << (uint8_t)g_29)) , l_52[3]) != (void*)0) && l_53)) , l_54) , g_21.f0) >= g_5)) & l_57);
[0;1;32m                                                                               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~
[0m[1mexample.c:105:38: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_58 &= (((*l_55) &= ((((+((((((*l_43) &= 0xDAF8D98C6833686ALL) , ((uint8_t)((((*l_43) ^= ((uint8_t)((&g_44 == ((((uint8_t)((void*)0 != p_20) + (uint8_t)1UL) == l_51[4]) , &g_44)) | g_21.f1) >> (uint8_t)l_51[4])) <= l_36) || (*p_20)) << (uint8_t)g_29)) , l_52[3]) != (void*)0) && l_53)) , l_54) , g_21.f0) >= g_5)) & l_57);
[0;1;32m                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:105:302: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_58 &= (((*l_55) &= ((((+((((((*l_43) &= 0xDAF8D98C6833686ALL) , ((uint8_t)((((*l_43) ^= ((uint8_t)((&g_44 == ((((uint8_t)((void*)0 != p_20) + (uint8_t)1UL) == l_51[4]) , &g_44)) | g_21.f1) >> (uint8_t)l_51[4])) <= l_36) || (*p_20)) << (uint8_t)g_29)) , l_52[3]) != (void*)0) && l_53)) , l_54) , g_21.f0) >= g_5)) & l_57);
[0;1;32m                                                                                                                                                                                                                                                                                                             ^~~~
[0m[1mexample.c:121:45: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        g_21.f3 ^= ((((int64_t)((int32_t)(((l_36 , l_36) < ((((*l_66) = ((uint64_t)l_65[0][1] - (uint64_t)g_5)) , g_58) != g_29)) == l_65[0][1]) + (int32_t)l_36) / (int64_t)l_54) > (*g_28)) < 1L);
[0;1;32m                                            ^~~~
[0m[1mexample.c:125:46: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            (*g_28) |= (p_20 == ((l_70[3][6] != (void*)0) , l_71));
[0;1;32m                                  ~~~~~~~~~~ ^  ~~~~~~~~
[0m[1mexample.c:125:30: [0m[0;1;35mwarning: [0m[1mcomparison of distinct pointer types ('int32_t *' (aka 'int *') and 'uint32_t *' (aka 'unsigned int *')) [-Wcompare-distinct-pointer-types][0m
            (*g_28) |= (p_20 == ((l_70[3][6] != (void*)0) , l_71));
[0;1;32m                        ~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m10 warnings generated.
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
[1mexample.c:85:23: [0m[0;1;35mwarning: [0m[1mcomparison of address of 'g_3' not equal to a null pointer is always true [-Wtautological-pointer-compare][0m
    if (((void*)0 != &g_3))
[0;1;32m         ~~~~~~~~     ^~~
[0m[1mexample.c:92:71: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        if ((((uint16_t)(((g_28 = &g_3) == l_30) <= (g_29 ^ g_21.f0)) % (uint16_t)1UL) , (*l_30)))
[0;1;32m              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~
[0m[1mexample.c:95:69: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            (*l_30) ^= ((uint8_t)((int8_t)g_6 << (int8_t)(((void*)0 == p_20) , 1UL)) % (uint8_t)g_5);
[0;1;32m                                                           ~~~~~~~~ ^  ~~~~
[0m[1mexample.c:105:171: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_58 &= (((*l_55) &= ((((+((((((*l_43) &= 0xDAF8D98C6833686ALL) , ((uint8_t)((((*l_43) ^= ((uint8_t)((&g_44 == ((((uint8_t)((void*)0 != p_20) + (uint8_t)1UL) == l_51[4]) , &g_44)) | g_21.f1) >> (uint8_t)l_51[4])) <= l_36) || (*p_20)) << (uint8_t)g_29)) , l_52[3]) != (void*)0) && l_53)) , l_54) , g_21.f0) >= g_5)) & l_57);
[0;1;32m                                                                                                                             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~
[0m[1mexample.c:105:247: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_58 &= (((*l_55) &= ((((+((((((*l_43) &= 0xDAF8D98C6833686ALL) , ((uint8_t)((((*l_43) ^= ((uint8_t)((&g_44 == ((((uint8_t)((void*)0 != p_20) + (uint8_t)1UL) == l_51[4]) , &g_44)) | g_21.f1) >> (uint8_t)l_51[4])) <= l_36) || (*p_20)) << (uint8_t)g_29)) , l_52[3]) != (void*)0) && l_53)) , l_54) , g_21.f0) >= g_5)) & l_57);
[0;1;32m                                                                               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~
[0m[1mexample.c:105:38: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_58 &= (((*l_55) &= ((((+((((((*l_43) &= 0xDAF8D98C6833686ALL) , ((uint8_t)((((*l_43) ^= ((uint8_t)((&g_44 == ((((uint8_t)((void*)0 != p_20) + (uint8_t)1UL) == l_51[4]) , &g_44)) | g_21.f1) >> (uint8_t)l_51[4])) <= l_36) || (*p_20)) << (uint8_t)g_29)) , l_52[3]) != (void*)0) && l_53)) , l_54) , g_21.f0) >= g_5)) & l_57);
[0;1;32m                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:105:302: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_58 &= (((*l_55) &= ((((+((((((*l_43) &= 0xDAF8D98C6833686ALL) , ((uint8_t)((((*l_43) ^= ((uint8_t)((&g_44 == ((((uint8_t)((void*)0 != p_20) + (uint8_t)1UL) == l_51[4]) , &g_44)) | g_21.f1) >> (uint8_t)l_51[4])) <= l_36) || (*p_20)) << (uint8_t)g_29)) , l_52[3]) != (void*)0) && l_53)) , l_54) , g_21.f0) >= g_5)) & l_57);
[0;1;32m                                                                                                                                                                                                                                                                                                             ^~~~
[0m[1mexample.c:121:45: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        g_21.f3 ^= ((((int64_t)((int32_t)(((l_36 , l_36) < ((((*l_66) = ((uint64_t)l_65[0][1] - (uint64_t)g_5)) , g_58) != g_29)) == l_65[0][1]) + (int32_t)l_36) / (int64_t)l_54) > (*g_28)) < 1L);
[0;1;32m                                            ^~~~
[0m[1mexample.c:125:46: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            (*g_28) |= (p_20 == ((l_70[3][6] != (void*)0) , l_71));
[0;1;32m                                  ~~~~~~~~~~ ^  ~~~~~~~~
[0m[1mexample.c:125:30: [0m[0;1;35mwarning: [0m[1mcomparison of distinct pointer types ('int32_t *' (aka 'int *') and 'uint32_t *' (aka 'unsigned int *')) [-Wcompare-distinct-pointer-types][0m
            (*g_28) |= (p_20 == ((l_70[3][6] != (void*)0) , l_71));
[0;1;32m                        ~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m10 warnings generated.
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

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `func_1`

✅ Before and after function names match

### Variables

Before variable `l_2` (decl src line 59)
Store to `l_2` (decl src line 59), asm line 238
  global g_3
  Added assignment starting at src line 59, column 14
Before variable `l_4` (decl src line 60)
Before variable `l_22` (decl src line 61)
Store to `l_22` (decl src line 61), asm line 243
  global g_3
  Added assignment starting at src line 61, column 14
Before variable `l_23` (decl src line 62)
Store to `l_23` (decl src line 62), asm line 247
  %arrayidx1 = getelementptr inbounds [4 x i32*], [4 x i32*]* %arrayidx, i64 0, i64 1, l62 c23, asm line 246
  Added assignment starting at src line 62, column 23
Before variable `l_84` (decl src line 63)
Store to `l_84` (decl src line 63), asm line 249
  global g_85
  Added assignment starting at src line 63, column 15
Before variable `i` (decl src line 64)
Before variable `j` (decl src line 64)

After variable `l_23` (decl src line 62)
After variable intrinsic with undef input, asm line 120, ignoring undefined variable
  @dbg.value(i32** undef, !162)
After variable `i` (decl src line 64)
After variable intrinsic with undef input, asm line 121, ignoring undefined variable
  @dbg.declare(i32* undef, !166), l64 c9
After variable `j` (decl src line 64)
After variable intrinsic with undef input, asm line 122, ignoring undefined variable
  @dbg.declare(i32* undef, !167), l64 c12

❌ 7 before variables found, 3 after variables found, 4 mismatched

### Assignments

❌ After live ranges for `l_2` (decl src line 59) not found
🔔 Before live ranges for `l_4` (decl src line 60) not found, variable likely undefined
❌ After live ranges for `l_22` (decl src line 61) not found
❌ After live ranges for `l_23` (decl src line 62) not found
❌ After live ranges for `l_84` (decl src line 63) not found
🔔 Before live ranges for `i` (decl src line 64) not found, variable likely undefined
🔔 Before live ranges for `j` (decl src line 64) not found, variable likely undefined
❌ 0 before live ranges covered, 4 uncovered, 3 undefined

### Symbolic values

#### Before values

Concrete pointer resolves to g_3, offset 0x0
Replaced concrete pointer with hash 0x21B47D327CD9D433
Collected value for `l_2`
@g_3 = internal global i32 -311950268, align 4, !dbg !12
0x21B47D327CD9D433
[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0mConcrete pointer resolves to g_3, offset 0x0
Replaced concrete pointer with hash 0x21B47D327CD9D433
Collected value for `l_22`
@g_3 = internal global i32 -311950268, align 4, !dbg !12
0x21B47D327CD9D433
Concrete pointer resolves to l_4, offset 0x8
Replaced concrete pointer with hash 0xC284310EC61ECEEC
Collected value for `l_23`
%arrayidx1 = getelementptr inbounds [4 x i32*], [4 x i32*]* %arrayidx, i64 0, i64 1, l62 c23
0xC284310EC61ECEEC
Concrete pointer resolves to g_85, offset 0x0
Replaced concrete pointer with hash 0xFE4C228934FB39EA
Collected value for `l_84`
@g_85 = internal global i64 0, align 8, !dbg !59
0xFE4C228934FB39EA
[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m
#### After values


#### Check before against after

❌ After live range for `l_2` (decl src line 59) not found
❌ After live range for `l_22` (decl src line 61) not found
❌ After live range for `l_23` (decl src line 62) not found
❌ After live range for `l_84` (decl src line 63) not found
❌ Before checked against after: 0 matching symbolic values, 4 mismatched

#### Check after against before

✅ After checked against before: 0 matching symbolic values, 0 mismatched

## Summary

❌ Some consistency checks failed
