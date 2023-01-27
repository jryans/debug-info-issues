^D++ dirname ../../job.sh
+ SCRIPT_DIR=../..
+ ../../generate.sh
+++ dirname ../../generate.sh
++ SCRIPT_DIR=../..
++ source ../../vars.sh
+++ set -eux
++++ dirname ../../vars.sh
+++ SCRIPT_DIR=../..
+++ source ../../../vars.sh
++++ set -eux
++++ CSMITH='csmith release csmith'
++++ SRC_FILE=example.c
++++ CLANG='llvm release-clang-lldb-13.0.0 clang'
++++ LLVM_AS='llvm release-clang-lldb-13.0.0 llvm-as'
++++ CC_COMMON_OPTS='-I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_OPTS='-D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ PRINT_MODULE='klee debug print-module'
++++ KLEE='klee release klee'
++++ KLEE_COMMON_OPTS='--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4'
++++ O0_BC=klee-out-O0/final.bc
++++ O1_BC=klee-out-O1/final.bc
++++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
++++ O2_BC=klee-out-O2/final.bc
++++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
++++ CHECK='klee debug debug-info-check'
++++ CHECK_OPTS='--debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace'
++ csmith release csmith --no-argc --no-checksum --no-float --max-block-depth 2 --max-block-size 2 --max-expr-complexity 4 --max-funcs 2 --no-safe-math --no-builtins --no-force-globals-static
++ local build=release
++ local program=csmith
++ shift 2
++ /Users/jryans/Projects/csmith/build-release/src/csmith --no-argc --no-checksum --no-float --max-block-depth 2 --max-block-size 2 --max-expr-complexity 4 --max-funcs 2 --no-safe-math --no-builtins --no-force-globals-static
++ replace --silent '\"csmith.h\"' '<stdint.h>' example.c
++ replace --silent '^.*platform_main.*$' '' example.c
+ ../../build.sh
+++ dirname ../../build.sh
++ SCRIPT_DIR=../..
++ source ../../vars.sh
+++ set -eux
++++ dirname ../../vars.sh
+++ SCRIPT_DIR=../..
+++ source ../../../vars.sh
++++ set -eux
++++ CSMITH='csmith release csmith'
++++ SRC_FILE=example.c
++++ CLANG='llvm release-clang-lldb-13.0.0 clang'
++++ LLVM_AS='llvm release-clang-lldb-13.0.0 llvm-as'
++++ CC_COMMON_OPTS='-I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_OPTS='-D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ PRINT_MODULE='klee debug print-module'
++++ KLEE='klee release klee'
++++ KLEE_COMMON_OPTS='--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4'
++++ O0_BC=klee-out-O0/final.bc
++++ O1_BC=klee-out-O1/final.bc
++++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
++++ O2_BC=klee-out-O2/final.bc
++++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
++++ CHECK='klee debug debug-info-check'
++++ CHECK_OPTS='--debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace'
++ mkdir -p klee-out-O0
++ llvm release-clang-lldb-13.0.0 clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
++ local build=release-clang-lldb-13.0.0
++ local program=clang
++ shift 2
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
[1mexample.c:45:107: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    if ((((func_3(l_7, l_7, ((int32_t)((((int16_t)((((uint8_t)((uint64_t)((((0x8C38EC32L & l_16) >= l_16) & g_2) , l_16) >> (uint64_t)41) * (uint8_t)0xEFL) ^ l_16) != 0x6AL) + (int16_t)0x876AL) , 0xCDEDL) != l_7) / (int32_t)l_7)) , g_26[3]) | 6L) | 3UL))
[0;1;32m                                                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~
[0m[1mexample.c:45:175: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    if ((((func_3(l_7, l_7, ((int32_t)((((int16_t)((((uint8_t)((uint64_t)((((0x8C38EC32L & l_16) >= l_16) & g_2) , l_16) >> (uint64_t)41) * (uint8_t)0xEFL) ^ l_16) != 0x6AL) + (int16_t)0x876AL) , 0xCDEDL) != l_7) / (int32_t)l_7)) , g_26[3]) | 6L) | 3UL))
[0;1;32m                                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:89: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [-Wconstant-logical-operand][0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                                                                        ^  ~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:89: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                                                                        ^~
[0m[0;32m                                                                                        &
[0m[1mexample.c:65:89: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                                                                       ~^~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:28: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                      ~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:143: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                                                                                                                              ^~~~
[0m[1mexample.c:47:25: [0m[0;1;35mwarning: [0m[1mimplicit conversion from 'unsigned long' to 'uint32_t' (aka 'unsigned int') changes value from 18446744073709551615 to 4294967295 [-Wconstant-conversion][0m
        uint32_t l_54 = 18446744073709551615UL;
[0;1;32m                 ~~~~   ^~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:114: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 46896 with boolean expression is always true [-Wtautological-constant-out-of-range-compare][0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~
[0m[1mexample.c:88:64: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
        if (((l_17[p_6] != ((uint32_t)l_17[1] * (uint32_t)(g_2 || 0xF68993DDL))) >= l_17[p_6]))
[0;1;32m                                                               ^  ~~~~~~~~~~~
[0m[1mexample.c:88:64: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
        if (((l_17[p_6] != ((uint32_t)l_17[1] * (uint32_t)(g_2 || 0xF68993DDL))) >= l_17[p_6]))
[0;1;32m                                                               ^~
[0m[0;32m                                                               |
[0m[1mexample.c:96:149: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [-Wconstant-logical-operand][0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                    ^  ~~
[0m[1mexample.c:96:149: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                    ^~
[0m[0;32m                                                                                                                                                    &
[0m[1mexample.c:96:149: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                   ~^~~~~
[0m[1mexample.c:96:157: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                            ^  ~~
[0m[1mexample.c:96:157: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                            ^~
[0m[0;32m                                                                                                                                                            |
[0m[1mexample.c:96:77: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                            ^~~
[0m[1mexample.c:105:36: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_21 = (((uint16_t)g_2 % (uint16_t)((int8_t)((int64_t)g_21 >> (int64_t)(g_48 = ((int16_t)((g_21 < p_4) & g_21) % (int16_t)65534UL))) + (int8_t)l_25[0])) , 0x99D32817L);
[0;1;32m                     ~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:96:234: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 8 with boolean expression is always false [-Wtautological-constant-out-of-range-compare][0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~
[0m[1mexample.c:105:166: [0m[0;1;35mwarning: [0m[1mimplicit conversion from 'long' to 'int32_t' (aka 'int') changes value from 2580752407 to -1714214889 [-Wconstant-conversion][0m
            g_21 = (((uint16_t)g_2 % (uint16_t)((int8_t)((int64_t)g_21 >> (int64_t)(g_48 = ((int16_t)((g_21 < p_4) & g_21) % (int16_t)65534UL))) + (int8_t)l_25[0])) , 0x99D32817L);
[0;1;32m                 ~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~
[0m14 warnings generated.
++ llvm release-clang-lldb-13.0.0 llvm-as -o klee-out-O0/final.bc example-O0.ll
++ local build=release-clang-lldb-13.0.0
++ local program=llvm-as
++ shift 2
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ llvm release-clang-lldb-13.0.0 clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
++ local build=release-clang-lldb-13.0.0
++ local program=clang
++ shift 2
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:45:107: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    if ((((func_3(l_7, l_7, ((int32_t)((((int16_t)((((uint8_t)((uint64_t)((((0x8C38EC32L & l_16) >= l_16) & g_2) , l_16) >> (uint64_t)41) * (uint8_t)0xEFL) ^ l_16) != 0x6AL) + (int16_t)0x876AL) , 0xCDEDL) != l_7) / (int32_t)l_7)) , g_26[3]) | 6L) | 3UL))
[0;1;32m                                                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~
[0m[1mexample.c:45:175: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    if ((((func_3(l_7, l_7, ((int32_t)((((int16_t)((((uint8_t)((uint64_t)((((0x8C38EC32L & l_16) >= l_16) & g_2) , l_16) >> (uint64_t)41) * (uint8_t)0xEFL) ^ l_16) != 0x6AL) + (int16_t)0x876AL) , 0xCDEDL) != l_7) / (int32_t)l_7)) , g_26[3]) | 6L) | 3UL))
[0;1;32m                                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:89: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [-Wconstant-logical-operand][0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                                                                        ^  ~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:89: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                                                                        ^~
[0m[0;32m                                                                                        &
[0m[1mexample.c:65:89: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                                                                       ~^~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:28: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                      ~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:143: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                                                                                                                              ^~~~
[0m[1mexample.c:47:25: [0m[0;1;35mwarning: [0m[1mimplicit conversion from 'unsigned long' to 'uint32_t' (aka 'unsigned int') changes value from 18446744073709551615 to 4294967295 [-Wconstant-conversion][0m
        uint32_t l_54 = 18446744073709551615UL;
[0;1;32m                 ~~~~   ^~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:114: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 46896 with boolean expression is always true [-Wtautological-constant-out-of-range-compare][0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~
[0m[1mexample.c:88:64: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
        if (((l_17[p_6] != ((uint32_t)l_17[1] * (uint32_t)(g_2 || 0xF68993DDL))) >= l_17[p_6]))
[0;1;32m                                                               ^  ~~~~~~~~~~~
[0m[1mexample.c:88:64: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
        if (((l_17[p_6] != ((uint32_t)l_17[1] * (uint32_t)(g_2 || 0xF68993DDL))) >= l_17[p_6]))
[0;1;32m                                                               ^~
[0m[0;32m                                                               |
[0m[1mexample.c:96:149: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [-Wconstant-logical-operand][0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                    ^  ~~
[0m[1mexample.c:96:149: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                    ^~
[0m[0;32m                                                                                                                                                    &
[0m[1mexample.c:96:149: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                   ~^~~~~
[0m[1mexample.c:96:157: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                            ^  ~~
[0m[1mexample.c:96:157: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                            ^~
[0m[0;32m                                                                                                                                                            |
[0m[1mexample.c:96:77: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                            ^~~
[0m[1mexample.c:105:36: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_21 = (((uint16_t)g_2 % (uint16_t)((int8_t)((int64_t)g_21 >> (int64_t)(g_48 = ((int16_t)((g_21 < p_4) & g_21) % (int16_t)65534UL))) + (int8_t)l_25[0])) , 0x99D32817L);
[0;1;32m                     ~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:96:234: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 8 with boolean expression is always false [-Wtautological-constant-out-of-range-compare][0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~
[0m[1mexample.c:105:166: [0m[0;1;35mwarning: [0m[1mimplicit conversion from 'long' to 'int32_t' (aka 'int') changes value from 2580752407 to -1714214889 [-Wconstant-conversion][0m
            g_21 = (((uint16_t)g_2 % (uint16_t)((int8_t)((int64_t)g_21 >> (int64_t)(g_48 = ((int16_t)((g_21 < p_4) & g_21) % (int16_t)65534UL))) + (int8_t)l_25[0])) , 0x99D32817L);
[0;1;32m                 ~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~
[0m14 warnings generated.
++ mkdir -p klee-out-O1
++ llvm release-clang-lldb-13.0.0 clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope -O1 -o /dev/null
++ filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
++ local input_ir=example-O1-cg-raw.ll
++ local output_ir=example-O1-cg.ll
++ grep -v '^+'
++ sed '2,/IR Dump/!d'
++ grep -v 'IR Dump'
++ rm example-O1-cg-raw.ll
++ llvm release-clang-lldb-13.0.0 llvm-as -o klee-out-O1/final.bc example-O1-cg.ll
++ local build=release-clang-lldb-13.0.0
++ local program=llvm-as
++ shift 2
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1/final.bc example-O1-cg.ll
++ llvm release-clang-lldb-13.0.0 clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -O1 -D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -o example-O1
++ local build=release-clang-lldb-13.0.0
++ local program=clang
++ shift 2
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -O1 -D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -o example-O1
[1mexample.c:45:107: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    if ((((func_3(l_7, l_7, ((int32_t)((((int16_t)((((uint8_t)((uint64_t)((((0x8C38EC32L & l_16) >= l_16) & g_2) , l_16) >> (uint64_t)41) * (uint8_t)0xEFL) ^ l_16) != 0x6AL) + (int16_t)0x876AL) , 0xCDEDL) != l_7) / (int32_t)l_7)) , g_26[3]) | 6L) | 3UL))
[0;1;32m                                                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~
[0m[1mexample.c:45:175: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    if ((((func_3(l_7, l_7, ((int32_t)((((int16_t)((((uint8_t)((uint64_t)((((0x8C38EC32L & l_16) >= l_16) & g_2) , l_16) >> (uint64_t)41) * (uint8_t)0xEFL) ^ l_16) != 0x6AL) + (int16_t)0x876AL) , 0xCDEDL) != l_7) / (int32_t)l_7)) , g_26[3]) | 6L) | 3UL))
[0;1;32m                                         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:89: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [-Wconstant-logical-operand][0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                                                                        ^  ~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:89: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                                                                        ^~
[0m[0;32m                                                                                        &
[0m[1mexample.c:65:89: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                                                                       ~^~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:28: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                      ~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:143: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                                                                                                                              ^~~~
[0m[1mexample.c:47:25: [0m[0;1;35mwarning: [0m[1mimplicit conversion from 'unsigned long' to 'uint32_t' (aka 'unsigned int') changes value from 18446744073709551615 to 4294967295 [-Wconstant-conversion][0m
        uint32_t l_54 = 18446744073709551615UL;
[0;1;32m                 ~~~~   ^~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:65:114: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 46896 with boolean expression is always true [-Wtautological-constant-out-of-range-compare][0m
            l_65 = (((l_57 || ((int8_t)(((g_26[3] < (l_63 = (((*l_62) |= 0UL) < l_57))) && 0xD6341D34D3BE1F67LL) <= 0xB730L) >> (int8_t)7)) , l_16) , 4L);
[0;1;32m                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~
[0m[1mexample.c:88:64: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
        if (((l_17[p_6] != ((uint32_t)l_17[1] * (uint32_t)(g_2 || 0xF68993DDL))) >= l_17[p_6]))
[0;1;32m                                                               ^  ~~~~~~~~~~~
[0m[1mexample.c:88:64: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
        if (((l_17[p_6] != ((uint32_t)l_17[1] * (uint32_t)(g_2 || 0xF68993DDL))) >= l_17[p_6]))
[0;1;32m                                                               ^~
[0m[0;32m                                                               |
[0m[1mexample.c:96:149: [0m[0;1;35mwarning: [0m[1muse of logical '&&' with constant operand [-Wconstant-logical-operand][0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                    ^  ~~
[0m[1mexample.c:96:149: [0m[0;1;30mnote: [0muse '&' for a bitwise operation[0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                    ^~
[0m[0;32m                                                                                                                                                    &
[0m[1mexample.c:96:149: [0m[0;1;30mnote: [0mremove constant to silence this warning[0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                   ~^~~~~
[0m[1mexample.c:96:157: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                            ^  ~~
[0m[1mexample.c:96:157: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                                                                                                            ^~
[0m[0;32m                                                                                                                                                            |
[0m[1mexample.c:96:77: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                                            ^~~
[0m[1mexample.c:105:36: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
            g_21 = (((uint16_t)g_2 % (uint16_t)((int8_t)((int64_t)g_21 >> (int64_t)(g_48 = ((int16_t)((g_21 < p_4) & g_21) % (int16_t)65534UL))) + (int8_t)l_25[0])) , 0x99D32817L);
[0;1;32m                     ~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[1mexample.c:96:234: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 8 with boolean expression is always false [-Wtautological-constant-out-of-range-compare][0m
            l_39 |= ((int8_t)((-(uint8_t)(g_2 >= ((((((uint32_t)(((int16_t)(p_5 , ((l_38[1][7][3] ^= (((uint32_t)(l_17[0] ^ g_21) << (uint32_t)p_5) && 5L)) || 4L)) << (int16_t)8) != g_21) - (uint32_t)l_17[0]) == p_4) & p_6) >= g_21) > 8UL))) < p_6) << (int8_t)2);
[0;1;32m                                                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~
[0m[1mexample.c:105:166: [0m[0;1;35mwarning: [0m[1mimplicit conversion from 'long' to 'int32_t' (aka 'int') changes value from 2580752407 to -1714214889 [-Wconstant-conversion][0m
            g_21 = (((uint16_t)g_2 % (uint16_t)((int8_t)((int64_t)g_21 >> (int64_t)(g_48 = ((int16_t)((g_21 < p_4) & g_21) % (int16_t)65534UL))) + (int8_t)l_25[0])) , 0x99D32817L);
[0;1;32m                 ~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~
[0m14 warnings generated.
+ ../../check.sh
+++ dirname ../../check.sh
++ SCRIPT_DIR=../..
++ source ../../vars.sh
+++ set -eux
++++ dirname ../../vars.sh
+++ SCRIPT_DIR=../..
+++ source ../../../vars.sh
++++ set -eux
++++ CSMITH='csmith release csmith'
++++ SRC_FILE=example.c
++++ CLANG='llvm release-clang-lldb-13.0.0 clang'
++++ LLVM_AS='llvm release-clang-lldb-13.0.0 llvm-as'
++++ CC_COMMON_OPTS='-I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_OPTS='-D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ PRINT_MODULE='klee debug print-module'
++++ KLEE='klee release klee'
++++ KLEE_COMMON_OPTS='--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4'
++++ O0_BC=klee-out-O0/final.bc
++++ O1_BC=klee-out-O1/final.bc
++++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
++++ O2_BC=klee-out-O2/final.bc
++++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
++++ CHECK='klee debug debug-info-check'
++++ CHECK_OPTS='--debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace'
++ klee debug debug-info-check klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace
++ local build=debug
++ local program=debug-info-check
++ shift 2
++ /Users/jryans/Projects/klee/build-debug/bin/debug-info-check klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `func_1`

✅ Before and after function names match

### Variables

Before variable `l_7` (decl src line 41)
Store to `l_7` (decl src line 41), asm line 39
  const i32 -679241582
  Added assignment starting at src line 41, column 14
Before variable `l_16` (decl src line 42)
Store to `l_16` (decl src line 42), asm line 41
  const i8 1
  Added assignment starting at src line 42, column 13
Before variable `l_63` (decl src line 43)
Store to `l_63` (decl src line 43), asm line 220
  %conv64 = trunc i64 %div63 to i32, l67 c16, asm line 219
  Added assignment starting at src line 67, column 16
Store to `l_63` (decl src line 43), asm line 174
  %conv43 = zext i1 %cmp42 to i32, l65 c79, asm line 173
  Added assignment starting at src line 65, column 79
Store to `l_63` (decl src line 43), asm line 43
  const i32 895178269
  Added assignment starting at src line 43, column 13
Before variable `l_54` (decl src line 47)
Store to `l_54` (decl src line 47), asm line 89
  const i32 -1
  Added assignment starting at src line 47, column 18
Before variable `l_65` (decl src line 55)
Store to `l_65` (decl src line 55), asm line 197
  const i32 4
  Added assignment starting at src line 65, column 18
Store to `l_65` (decl src line 55), asm line 118
  const i32 5
  Added assignment starting at src line 55, column 17
Before variable `l_68` (decl src line 56)
Store to `l_68` (decl src line 56), asm line 120
  global g_69
  Added assignment starting at src line 56, column 18
Before variable `l_57` (decl src line 59)
Store to `l_57` (decl src line 59), asm line 132
  const i32 1
  Added assignment starting at src line 59, column 22
Before variable `l_62` (decl src line 60)
Store to `l_62` (decl src line 60), asm line 134
  %l_16 = alloca i8, asm line 29
  Added assignment starting at src line 60, column 22
Before variable `l_64` (decl src line 61)
Before variable `i` (decl src line 62)
Store to `i` (decl src line 62), asm line 155
  %inc = add nsw i32 %16, 1, l63 c33, asm line 154
  Added assignment starting at src line 63, column 33
Store to `i` (decl src line 62), asm line 137
  const i32 0
  Added assignment starting at src line 63, column 20

After variable `l_7` (decl src line 41)
@dbg.value mapping for `l_7` (decl src line 41), asm line 19
Value produced for `l_7` (decl src line 41), asm line 19
  const i32 -679241582
  Added assignment starting at src line 41, column 0
After variable `l_16` (decl src line 42)
@dbg.value mapping for `l_16` (decl src line 42), asm line 20
Value produced for `l_16` (decl src line 42), asm line 20
  const i8 1
  Added assignment starting at src line 42, column 0
After variable `l_63` (decl src line 43)
@dbg.value mapping for `l_63` (decl src line 43), asm line 21
Value produced for `l_63` (decl src line 43), asm line 21
  const i32 895178269
  Added assignment starting at src line 43, column 0
After variable `l_54` (decl src line 47)
@dbg.value mapping for `l_54` (decl src line 47), asm line 26
Value produced for `l_54` (decl src line 47), asm line 26
  const i32 -1
  Added assignment starting at src line 47, column 0

❌ 10 before variables found, 4 after variables found, 6 mismatched

### Assignments

❌ After live ranges for `i` (decl src line 62) not found
❌ After live ranges for `l_57` (decl src line 59) not found
❌ After live ranges for `l_62` (decl src line 60) not found
❌ Before live ranges for `l_64` (decl src line 61) not found
❌ After live ranges for `l_65` (decl src line 55) not found
❌ After live ranges for `l_68` (decl src line 56) not found
❌ 4 before live ranges covered, 6 uncovered

### Symbolic values

#### Before values

Collected value for `l_7`
i32 -679241582
0xD7839892
Collected value for `l_16`
i8 1
0x1
Collected value for `l_63`
i32 895178269
0x355B561D
Collected value for `l_54`
i32 -1
0xFFFFFFFF

#### After values

Collected value for `l_7`
i32 -679241582
0xD7839892
Collected value for `l_16`
i8 1
0x1
Collected value for `l_63`
i32 895178269
0x355B561D
Collected value for `l_54`
i32 -1
0xFFFFFFFF

#### Check before against after

❌ After live range for `i` (decl src line 62) not found
❌ After live range for `i` (decl src line 62) not found
Checking equivalence of `l_16` (decl src line 42) from
assn 0, src line 42, column 13
i8 1
0x1
and
assn 0, src line 42, column 0
i8 1
0x1
Checking equivalence of `l_54` (decl src line 47) from
assn 0, src line 47, column 18
i32 -1
0xFFFFFFFF
and
assn 0, src line 47, column 0
i32 -1
0xFFFFFFFF
❌ After live range for `l_57` (decl src line 59) not found
❌ After live range for `l_62` (decl src line 60) not found
Checking equivalence of `l_63` (decl src line 43) from
assn 0, src line 43, column 13
i32 895178269
0x355B561D
and
assn 0, src line 43, column 0
i32 895178269
0x355B561D
🔔 After assn 0, src line 43, column 0 doesn't match before assn 1, src line 65, column 79
Expected 1 symbolic value(s), got 0
❌ Before `l_63` (decl src line 43) assn 1, src line 65, column 79 has no symbolic value from %conv43 = zext i1 %cmp42 to i32, l65 c79
🔔 After assn 0, src line 43, column 0 doesn't match before assn 2, src line 67, column 16
Expected 1 symbolic value(s), got 0
❌ Before `l_63` (decl src line 43) assn 2, src line 67, column 16 has no symbolic value from %conv64 = trunc i64 %div63 to i32, l67 c16
❌ After live range for `l_65` (decl src line 55) not found
❌ After live range for `l_65` (decl src line 55) not found
❌ After live range for `l_68` (decl src line 56) not found
Checking equivalence of `l_7` (decl src line 41) from
assn 0, src line 41, column 14
i32 -679241582
0xD7839892
and
assn 0, src line 41, column 0
i32 -679241582
0xD7839892
❌ Before checked against after: 4 matching symbolic values, 9 mismatched

#### Check after against before

Checking equivalence of `l_16` (decl src line 42) from
assn 0, src line 42, column 0
i8 1
0x1
and
assn 0, src line 42, column 13
i8 1
0x1
Checking equivalence of `l_54` (decl src line 47) from
assn 0, src line 47, column 0
i32 -1
0xFFFFFFFF
and
assn 0, src line 47, column 18
i32 -1
0xFFFFFFFF
Checking equivalence of `l_63` (decl src line 43) from
assn 0, src line 43, column 0
i32 895178269
0x355B561D
and
assn 0, src line 43, column 13
i32 895178269
0x355B561D
Checking equivalence of `l_7` (decl src line 41) from
assn 0, src line 41, column 0
i32 -679241582
0xD7839892
and
assn 0, src line 41, column 14
i32 -679241582
0xD7839892
✅ After checked against before: 4 matching symbolic values, 0 mismatched

## Function `func_3`

✅ Before and after function names match

### Variables

Before variable `p_4` (decl src line 78)
Store to `p_4` (decl src line 78), asm line 261
  arg 0
  Added assignment starting at src line 78, column 0
Before variable `p_5` (decl src line 78)
Store to `p_5` (decl src line 78), asm line 263
  arg 1
  Added assignment starting at src line 78, column 0
Before variable `p_6` (decl src line 78)
Store to `p_6` (decl src line 78), asm line 533
  %add112 = add nsw i32 %42, 1, l84 c35, asm line 532
  Added assignment starting at src line 84, column 35
Store to `p_6` (decl src line 78), asm line 278
  const i32 1
  Added assignment starting at src line 84, column 14
Store to `p_6` (decl src line 78), asm line 265
  arg 2
  Added assignment starting at src line 78, column 0
Before variable `l_17` (decl src line 80)
Before variable `l_38` (decl src line 81)
Before variable `l_39` (decl src line 82)
Store to `l_39` (decl src line 82), asm line 460
  %or = or i32 %31, %shl80, l96 c18, asm line 459
  Added assignment starting at src line 96, column 18
Store to `l_39` (decl src line 82), asm line 274
  const i32 -6
  Added assignment starting at src line 82, column 13
Before variable `i` (decl src line 83)
Before variable `j` (decl src line 83)
Before variable `k` (decl src line 83)
Before variable `l_25` (decl src line 86)
Before variable `i` (decl src line 87)
Before variable `l_20` (decl src line 90)
Store to `l_20` (decl src line 90), asm line 322
  global g_21
  Added assignment starting at src line 90, column 22
Before variable `l_22` (decl src line 91)
Store to `l_22` (decl src line 91), asm line 324
  const i32 -654720216
  Added assignment starting at src line 91, column 21
Before variable `l_23` (decl src line 92)
Store to `l_23` (decl src line 92), asm line 326
  global g_21
  Added assignment starting at src line 92, column 22
Before variable `l_24` (decl src line 93)
Before variable `i` (decl src line 94)
Before variable `j` (decl src line 94)
Before variable `k` (decl src line 94)
Before variable `l_49` (decl src line 100)
Store to `l_49` (decl src line 100), asm line 465
  const i32* null
  Added assignment starting at src line 100, column 22
Before variable `l_50` (decl src line 101)
Before variable `i` (decl src line 102)
Store to `i` (decl src line 102), asm line 489
  %inc91 = add nsw i32 %34, 1, l103 c33, asm line 488
  Added assignment starting at src line 103, column 33
Store to `i` (decl src line 102), asm line 468
  const i32 0
  Added assignment starting at src line 103, column 20

After variable `l_25` (decl src line 86)
❌ After variable intrinsic with undef input, asm line 41
  @dbg.declare([6 x i32]* undef, !118, !DIExpression(DW_OP_LLVM_fragment, 32, 192)), l86 c17
After variable `p_4` (decl src line 78)
@dbg.value mapping for `p_4` (decl src line 78), asm line 42
Value produced for `p_4` (decl src line 78), asm line 42
  arg 0
  Added assignment starting at src line 78, column 0
After variable `p_5` (decl src line 78)
@dbg.value mapping for `p_5` (decl src line 78), asm line 43
Value produced for `p_5` (decl src line 78), asm line 43
  arg 1
  Added assignment starting at src line 78, column 0
After variable `p_6` (decl src line 78)
❌ After variable intrinsic with undef input, asm line 44
  @dbg.value(i32 undef, !105)
After variable `l_39` (decl src line 82)
@dbg.value mapping for `l_39` (decl src line 82), asm line 47
Value produced for `l_39` (decl src line 82), asm line 47
  const i32 -6
  Added assignment starting at src line 82, column 0
After variable `i` (decl src line 83)
❌ After variable intrinsic with undef input, asm line 49
  @dbg.declare(i32* undef, !115), l83 c9
After variable `j` (decl src line 83)
❌ After variable intrinsic with undef input, asm line 50
  @dbg.declare(i32* undef, !116), l83 c12
After variable `k` (decl src line 83)
❌ After variable intrinsic with undef input, asm line 51
  @dbg.declare(i32* undef, !117), l83 c15
After variable `p_6` (decl src line 78)
@dbg.value mapping for `p_6` (decl src line 78), asm line 52
Value produced for `p_6` (decl src line 78), asm line 52
  const i32 1
  Added assignment starting at src line 78, column 0
After variable `p_6` (decl src line 78)
@dbg.value mapping for `p_6` (decl src line 78), asm line 53
Value produced for `p_6` (decl src line 78), asm line 53
  const i32 1
  Value is same as last assignment, skipping
After variable `l_25` (decl src line 86)
@dbg.value mapping for `l_25` (decl src line 86), asm line 59
Value produced for `l_25` (decl src line 86), asm line 59
  const i32 5
  Added assignment starting at src line 86, column 0
After variable `i` (decl src line 87)
❌ After variable intrinsic with undef input, asm line 60
  @dbg.declare(i32* undef, !125), l87 c13
After variable `l_49` (decl src line 100)
@dbg.value mapping for `l_49` (decl src line 100), asm line 62
Value produced for `l_49` (decl src line 100), asm line 62
  const i32* null
  Added assignment starting at src line 100, column 0
After variable `i` (decl src line 102)
@dbg.value mapping for `i` (decl src line 102), asm line 63
Value produced for `i` (decl src line 102), asm line 63
  const i32 0
  Added assignment starting at src line 102, column 0
After variable `i` (decl src line 102)
❌ After variable intrinsic with undef input, asm line 64
  @dbg.value(i32 undef, !141)
After variable `l_50` (decl src line 101)
❌ After variable intrinsic with undef input, asm line 65
  @dbg.value(i32 undef, !139)
After variable `i` (decl src line 102)
❌ After variable intrinsic with undef input, asm line 66
  @dbg.value(i32 undef, !141, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value))
After variable `p_6` (decl src line 78)
@dbg.value mapping for `p_6` (decl src line 78), asm line 71
Value produced for `p_6` (decl src line 78), asm line 71
  %add112 = add nuw nsw i32 %p_6.addr.0173, 1, l84 c35, asm line 70
  Added assignment starting at src line 84, column 35
After variable `p_6` (decl src line 78)
@dbg.value mapping for `p_6` (decl src line 78), asm line 58
Value produced for `p_6` (decl src line 78), asm line 58
  %p_6.addr.0173 = phi i32 [ 1, %entry ], [ %add112, %for.body ], asm line 57
  Checking phi edge [ i32 1, %entry ]
  Last assignment for phi edge: 0, src line 78, column 0
  Checking phi edge [ %add112, %for.body ]
  Ignoring cyclical phi edge
  All phi values same as last assignments, skipping

❌ 21 before variables found, 12 after variables found, 9 mismatched

### Assignments

❌ Before live ranges for `i` (decl src line 83) not found
❌ Before live ranges for `i` (decl src line 87) not found
❌ Before live ranges for `i` (decl src line 94) not found
❌ Live ranges for `i` (decl src line 102) don't match: [103.20,∞) vs. [102.0,∞)
❌ Before live ranges for `j` (decl src line 83) not found
❌ Before live ranges for `j` (decl src line 94) not found
❌ Before live ranges for `k` (decl src line 83) not found
❌ Before live ranges for `k` (decl src line 94) not found
❌ Before live ranges for `l_17` (decl src line 80) not found
❌ After live ranges for `l_20` (decl src line 90) not found
❌ After live ranges for `l_22` (decl src line 91) not found
❌ After live ranges for `l_23` (decl src line 92) not found
❌ Before live ranges for `l_24` (decl src line 93) not found
❌ Before live ranges for `l_25` (decl src line 86) not found
❌ Before live ranges for `l_38` (decl src line 81) not found
❌ Before live ranges for `l_50` (decl src line 101) not found
❌ 5 before live ranges covered, 16 uncovered

### Symbolic values

#### Before values

Collected value for `p_4`
i8 %p_4
(Read w8 0x0 p_4)
Collected value for `p_5`
i16 %p_5
(ReadLSB w16 0x0 p_5)
Collected value for `p_6`
i32 %p_6
(ReadLSB w32 0x0 p_6)
[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m
#### After values

Collected value for `p_4`
i8 %p_4
(Read w8 0x0 p_4)
Collected value for `p_5`
i16 %p_5
(ReadLSB w16 0x0 p_5)
Collected value for `l_39`
i32 -6
0xFFFFFFFA
Collected value for `p_6`
i32 1
0x1
Collected value for `l_25`
i32 5
0x5
Collected value for `l_49`
i32* null
0x0
Collected value for `i`
i32 0
0x0
Collected value for `p_6`
%add112 = add nuw nsw i32 %p_6.addr.0173, 1, l84 c35
0x2

#### Check before against after

🔔 After assn 0, src line 102, column 0 doesn't match before assn 0, src line 103, column 20
Expected 1 symbolic value(s), got 0
❌ Before `i` (decl src line 102) assn 0, src line 103, column 20 has no symbolic value from i32 0
🔔 After assn 0, src line 102, column 0 doesn't match before assn 1, src line 103, column 33
Expected 1 symbolic value(s), got 0
❌ Before `i` (decl src line 102) assn 1, src line 103, column 33 has no symbolic value from %inc91 = add nsw i32 %39, 1, l103 c33
❌ After live range for `l_20` (decl src line 90) not found
❌ After live range for `l_22` (decl src line 91) not found
❌ After live range for `l_23` (decl src line 92) not found
Expected 1 symbolic value(s), got 0
❌ Before `l_39` (decl src line 82) assn 0, src line 82, column 13 has no symbolic value from i32 -6
🔔 After assn 0, src line 82, column 0 doesn't match before assn 1, src line 96, column 18
Expected 1 symbolic value(s), got 0
❌ Before `l_39` (decl src line 82) assn 1, src line 96, column 18 has no symbolic value from %or = or i32 %36, %shl80, l96 c18
Expected 1 symbolic value(s), got 0
❌ Before `l_49` (decl src line 100) assn 0, src line 100, column 22 has no symbolic value from i32* null
Checking equivalence of `p_4` (decl src line 78) from
assn 0, src line 78, column 0
i8 %p_4
(Read w8 0x0 p_4)
and
assn 0, src line 78, column 0
i8 %p_4
(Read w8 0x0 p_4)
Query to parse
array p_4[1] : w32 -> w8 = symbolic
(query [] (Eq (Read w8 0x0 p_4) (Read w8 0x0 p_4)))
Parsed query
(Eq N0:(Read w8 0x0 p_4) N0)
Checking equivalence of `p_5` (decl src line 78) from
assn 0, src line 78, column 0
i16 %p_5
(ReadLSB w16 0x0 p_5)
and
assn 0, src line 78, column 0
i16 %p_5
(ReadLSB w16 0x0 p_5)
Query to parse
array p_5[2] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w16 0x0 p_5)
     (ReadLSB w16 0x0 p_5)))
Parsed query
(Eq N0:(ReadLSB w16 0x0 p_5)
     N0)
Checking equivalence of `p_6` (decl src line 78) from
assn 0, src line 78, column 0
i32 %p_6
(ReadLSB w32 0x0 p_6)
and
assn 0, src line 78, column 0
i32 1
0x1
Query to parse
array p_6[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 p_6)
     0x1))
Parsed query
(Eq (ReadLSB w32 0x0 p_6)
     0x1)
❌ Symbolic values don't match:
(Eq (ReadLSB w32 0x0 p_6)
     0x1)
🔔 After assn 0, src line 78, column 0 doesn't match before assn 1, src line 84, column 14
Expected 1 symbolic value(s), got 0
❌ Before `p_6` (decl src line 78) assn 1, src line 84, column 14 has no symbolic value from i32 1
🔔 After assn 1, src line 84, column 35 doesn't match before assn 2, src line 84, column 35
Expected 1 symbolic value(s), got 0
❌ Before `p_6` (decl src line 78) assn 2, src line 84, column 35 has no symbolic value from %add112 = add nsw i32 %47, 1, l84 c35
❌ Before checked against after: 2 matching symbolic values, 11 mismatched

#### Check after against before

🔔 Before assn 0, src line 103, column 20 doesn't match after assn 0, src line 102, column 0
Expected 1 symbolic value(s), got 0
❌ Before `i` (decl src line 102) assn 0, src line 103, column 20 has no symbolic value from i32 0
❌ Before live range for `l_25` (decl src line 86) not found
Expected 1 symbolic value(s), got 0
❌ Before `l_39` (decl src line 82) assn 0, src line 82, column 13 has no symbolic value from i32 -6
Expected 1 symbolic value(s), got 0
❌ Before `l_49` (decl src line 100) assn 0, src line 100, column 22 has no symbolic value from i32* null
Checking equivalence of `p_4` (decl src line 78) from
assn 0, src line 78, column 0
i8 %p_4
(Read w8 0x0 p_4)
and
assn 0, src line 78, column 0
i8 %p_4
(Read w8 0x0 p_4)
Query to parse
array p_4[1] : w32 -> w8 = symbolic
(query [] (Eq (Read w8 0x0 p_4) (Read w8 0x0 p_4)))
Parsed query
(Eq N0:(Read w8 0x0 p_4) N0)
Checking equivalence of `p_5` (decl src line 78) from
assn 0, src line 78, column 0
i16 %p_5
(ReadLSB w16 0x0 p_5)
and
assn 0, src line 78, column 0
i16 %p_5
(ReadLSB w16 0x0 p_5)
Query to parse
array p_5[2] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w16 0x0 p_5)
     (ReadLSB w16 0x0 p_5)))
Parsed query
(Eq N0:(ReadLSB w16 0x0 p_5)
     N0)
Checking equivalence of `p_6` (decl src line 78) from
assn 0, src line 78, column 0
i32 1
0x1
and
assn 0, src line 78, column 0
i32 %p_6
(ReadLSB w32 0x0 p_6)
Query to parse
array p_6[4] : w32 -> w8 = symbolic
(query [] (Eq 0x1
     (ReadLSB w32 0x0 p_6)))
Parsed query
(Eq 0x1
     (ReadLSB w32 0x0 p_6))
❌ Symbolic values don't match:
(Eq 0x1
     (ReadLSB w32 0x0 p_6))
🔔 Before assn 2, src line 84, column 35 doesn't match after assn 1, src line 84, column 35
Expected 1 symbolic value(s), got 0
❌ Before `p_6` (decl src line 78) assn 2, src line 84, column 35 has no symbolic value from %add112 = add nsw i32 %47, 1, l84 c35
❌ After checked against before: 2 matching symbolic values, 6 mismatched

## Summary

❌ Some consistency checks failed
