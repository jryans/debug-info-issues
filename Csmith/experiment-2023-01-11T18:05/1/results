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
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
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

❌ 2 before defined functions(s), 1 after defined functions(s)

## Function `func_1`

✅ Before and after function names match

### Variables

Before variable `l_5` (decl src line 60)
Before variable `l_54` (decl src line 61)
Store to `l_54` (decl src line 61), asm line 161
  const i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i64 0, i64 5)
  Added assignment starting at src line 61, column 14
Before variable `l_55` (decl src line 62)
Before variable `l_56` (decl src line 63)
Store to `l_56` (decl src line 63), asm line 240
  %inc14 = add i32 %18, 1, l76 c5, asm line 239
  Added assignment starting at src line 76, column 5
Store to `l_56` (decl src line 63), asm line 166
  const i32 -181181382
  Added assignment starting at src line 63, column 14
Before variable `i` (decl src line 64)
Before variable `j` (decl src line 64)
Before variable `k` (decl src line 64)
Before variable `l_51` (decl src line 67)
Before variable `i` (decl src line 68)
Before variable `l_14` (decl src line 71)
Store to `l_14` (decl src line 71), asm line 193
  const i16 1
  Added assignment starting at src line 71, column 22

After variable `l_5` (decl src line 60)
After variable intrinsic with undef input, asm line 103, ignoring undefined variable
  @dbg.declare([374 x i8]* undef, !152, !DIExpression(DW_OP_LLVM_fragment, 0, 2992)), l60 c13
After variable `l_5` (decl src line 60)
After variable intrinsic with undef input, asm line 104, ignoring undefined variable
  @dbg.declare([104 x i8]* undef, !152, !DIExpression(DW_OP_LLVM_fragment, 3008, 832)), l60 c13
After variable `l_5` (decl src line 60)
@dbg.value mapping for `l_5` (decl src line 60), asm line 105
Value produced for `l_5` (decl src line 60), asm line 105
  const i16 -20131
  Added assignment starting at src line 60, column 0
After variable `l_54` (decl src line 61)
After variable intrinsic with undef input, asm line 106, ignoring undefined variable
  @dbg.value(i32* undef, !157)
After variable `l_56` (decl src line 63)
@dbg.value mapping for `l_56` (decl src line 63), asm line 107
Value produced for `l_56` (decl src line 63), asm line 107
  const i32 -181181382
  Added assignment starting at src line 63, column 0
After variable `i` (decl src line 64)
After variable intrinsic with undef input, asm line 108, ignoring undefined variable
  @dbg.declare(i32* undef, !165), l64 c9
After variable `j` (decl src line 64)
After variable intrinsic with undef input, asm line 109, ignoring undefined variable
  @dbg.declare(i32* undef, !166), l64 c12
After variable `k` (decl src line 64)
After variable intrinsic with undef input, asm line 110, ignoring undefined variable
  @dbg.declare(i32* undef, !167), l64 c15
After variable `l_56` (decl src line 63)
@dbg.value mapping for `l_56` (decl src line 63), asm line 112
Value produced for `l_56` (decl src line 63), asm line 112
  const i32 -181181382
  Value is same as last assignment, skipping

❌ 10 before variables found, 6 after variables found, 4 mismatched

### Assignments

🔔 Before live ranges for `i` (decl src line 64) not found, variable likely undefined
🔔 Before live ranges for `i` (decl src line 68) not found, variable likely undefined
🔔 Before live ranges for `j` (decl src line 64) not found, variable likely undefined
🔔 Before live ranges for `k` (decl src line 64) not found, variable likely undefined
❌ After live ranges for `l_14` (decl src line 71) not found
🔔 Before live ranges for `l_5` (decl src line 60) not found, variable likely undefined
🔔 Before live ranges for `l_51` (decl src line 67) not found, variable likely undefined
❌ After live ranges for `l_54` (decl src line 61) not found
🔔 Before live ranges for `l_55` (decl src line 62) not found, variable likely undefined
❌ 1 before live ranges covered, 2 uncovered, 7 undefined

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0mConcrete pointer resolves to g_48, offset 0x14
Replaced concrete pointer with hash 0xD8B0126C7F82D3B6
Collected value for `l_54`
i32* getelementptr inbounds ([6 x i32], [6 x i32]* @g_48, i64 0, i64 5)
0xD8B0126C7F82D3B6
[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m
#### After values

Collected value for `l_5`
i16 -20131
0xB15D
Collected value for `l_56`
i32 -181181382
0xF533643A

#### Check before against after

❌ After live range for `l_14` (decl src line 71) not found
❌ After live range for `l_54` (decl src line 61) not found
Expected 1 symbolic value(s), got 0
❌ Before `l_56` (decl src line 63) assn 0, src line 63, column 14 has no symbolic value from i32 -181181382
🔔 After assn 0, src line 63, column 0 doesn't match before assn 1, src line 76, column 5
Expected 1 symbolic value(s), got 0
❌ Before `l_56` (decl src line 63) assn 1, src line 76, column 5 has no symbolic value from %inc14 = add i32 %22, 1, l76 c5
❌ Before checked against after: 0 matching symbolic values, 4 mismatched

#### Check after against before

❌ Before live range for `l_5` (decl src line 60) not found
Expected 1 symbolic value(s), got 0
❌ Before `l_56` (decl src line 63) assn 0, src line 63, column 14 has no symbolic value from i32 -181181382
❌ After checked against before: 0 matching symbolic values, 2 mismatched

## Function `func_8`

❌ After function not found

## Summary

❌ Some consistency checks failed
