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
[1mexample.c:55:88: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        if ((((int8_t)(((int8_t)1L << (int8_t)((((int16_t)func_11(g_2, (g_15 ^= l_14)) / (int16_t)g_2) , g_15) == (-8L))) <= l_14) + (int8_t)g_2) , (-10L)))
[0;1;32m                                                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~
[0m[1mexample.c:55:132: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        if ((((int8_t)(((int8_t)1L << (int8_t)((((int16_t)func_11(g_2, (g_15 ^= l_14)) / (int16_t)g_2) , g_15) == (-8L))) <= l_14) + (int8_t)g_2) , (-10L)))
[0;1;32m              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~
[0m[1mexample.c:71:73: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        if ((((*l_26) &= (-1L)) < (((g_15 == ((*l_28) ^= (((0L >= g_18) ^ g_18) , (-1L)))) || g_2) < 0xB7L)))
[0;1;32m                                                           ~~~~~~~~~~~~ ^ ~~~~
[0m[1mexample.c:71:100: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 183 with boolean expression is always true [-Wtautological-constant-out-of-range-compare][0m
        if ((((*l_26) &= (-1L)) < (((g_15 == ((*l_28) ^= (((0L >= g_18) ^ g_18) , (-1L)))) || g_2) < 0xB7L)))
[0;1;32m                                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~
[0m[1mexample.c:93:32: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 8405159632662885185 with expression of type 'int32_t' (aka 'int') is always true [-Wtautological-constant-out-of-range-compare][0m
    (*l_17) = (-(uint16_t)(g_2 != 0x74A520274952F341LL));
[0;1;32m                           ~~~ ^  ~~~~~~~~~~~~~~~~~~~~
[0m5 warnings generated.
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:55:88: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        if ((((int8_t)(((int8_t)1L << (int8_t)((((int16_t)func_11(g_2, (g_15 ^= l_14)) / (int16_t)g_2) , g_15) == (-8L))) <= l_14) + (int8_t)g_2) , (-10L)))
[0;1;32m                                                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~
[0m[1mexample.c:55:132: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        if ((((int8_t)(((int8_t)1L << (int8_t)((((int16_t)func_11(g_2, (g_15 ^= l_14)) / (int16_t)g_2) , g_15) == (-8L))) <= l_14) + (int8_t)g_2) , (-10L)))
[0;1;32m              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~
[0m[1mexample.c:71:73: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        if ((((*l_26) &= (-1L)) < (((g_15 == ((*l_28) ^= (((0L >= g_18) ^ g_18) , (-1L)))) || g_2) < 0xB7L)))
[0;1;32m                                                           ~~~~~~~~~~~~ ^ ~~~~
[0m[1mexample.c:71:100: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 183 with boolean expression is always true [-Wtautological-constant-out-of-range-compare][0m
        if ((((*l_26) &= (-1L)) < (((g_15 == ((*l_28) ^= (((0L >= g_18) ^ g_18) , (-1L)))) || g_2) < 0xB7L)))
[0;1;32m                                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~
[0m[1mexample.c:93:32: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 8405159632662885185 with expression of type 'int32_t' (aka 'int') is always true [-Wtautological-constant-out-of-range-compare][0m
    (*l_17) = (-(uint16_t)(g_2 != 0x74A520274952F341LL));
[0;1;32m                           ~~~ ^  ~~~~~~~~~~~~~~~~~~~~
[0m5 warnings generated.
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
[1mexample.c:55:88: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        if ((((int8_t)(((int8_t)1L << (int8_t)((((int16_t)func_11(g_2, (g_15 ^= l_14)) / (int16_t)g_2) , g_15) == (-8L))) <= l_14) + (int8_t)g_2) , (-10L)))
[0;1;32m                                                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~
[0m[1mexample.c:55:132: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        if ((((int8_t)(((int8_t)1L << (int8_t)((((int16_t)func_11(g_2, (g_15 ^= l_14)) / (int16_t)g_2) , g_15) == (-8L))) <= l_14) + (int8_t)g_2) , (-10L)))
[0;1;32m              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~
[0m[1mexample.c:71:73: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        if ((((*l_26) &= (-1L)) < (((g_15 == ((*l_28) ^= (((0L >= g_18) ^ g_18) , (-1L)))) || g_2) < 0xB7L)))
[0;1;32m                                                           ~~~~~~~~~~~~ ^ ~~~~
[0m[1mexample.c:71:100: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 183 with boolean expression is always true [-Wtautological-constant-out-of-range-compare][0m
        if ((((*l_26) &= (-1L)) < (((g_15 == ((*l_28) ^= (((0L >= g_18) ^ g_18) , (-1L)))) || g_2) < 0xB7L)))
[0;1;32m                                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~
[0m[1mexample.c:93:32: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 8405159632662885185 with expression of type 'int32_t' (aka 'int') is always true [-Wtautological-constant-out-of-range-compare][0m
    (*l_17) = (-(uint16_t)(g_2 != 0x74A520274952F341LL));
[0;1;32m                           ~~~ ^  ~~~~~~~~~~~~~~~~~~~~
[0m5 warnings generated.
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

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `func_1`

✅ Before and after function names match

### Variables

Before variable `l_20` (decl src line 43)
Store to `l_20` (decl src line 43), asm line 232
  %dec = add i16 %10, -1, l59 c13, asm line 231
  Added assignment starting at src line 59, column 13
Store to `l_20` (decl src line 43), asm line 119
  const i16 -3
  Added assignment starting at src line 43, column 14
Before variable `l_40` (decl src line 44)
Store to `l_40` (decl src line 44), asm line 121
  const i32* null
  Added assignment starting at src line 44, column 15
Before variable `l_42` (decl src line 45)
Before variable `i` (decl src line 46)
Before variable `l_14` (decl src line 49)
Store to `l_14` (decl src line 49), asm line 136
  const i16 22680
  Added assignment starting at src line 49, column 18
Before variable `l_26` (decl src line 50)
Store to `l_26` (decl src line 50), asm line 138
  global g_27
  Added assignment starting at src line 50, column 18
Before variable `l_28` (decl src line 51)
Store to `l_28` (decl src line 51), asm line 140
  global g_29
  Added assignment starting at src line 51, column 18
Before variable `l_31` (decl src line 52)
Before variable `l_30` (decl src line 53)
Store to `l_30` (decl src line 53), asm line 187
  %arrayidx23 = getelementptr inbounds [3 x i16*], [3 x i16*]* %arrayidx, i64 0, i64 0, l53 c35, asm line 186
  Added assignment starting at src line 53, column 35
Before variable `i` (decl src line 54)
Before variable `j` (decl src line 54)
Before variable `l_19` (decl src line 57)
Before variable `i` (decl src line 58)
Before variable `j` (decl src line 58)
Before variable `l_23` (decl src line 63)
Store to `l_23` (decl src line 63), asm line 237
  const i64 0
  Added assignment starting at src line 63, column 21
Before variable `l_24` (decl src line 64)
Store to `l_24` (decl src line 64), asm line 239
  %l_14 = alloca i16, asm line 104
  Added assignment starting at src line 64, column 23
Before variable `l_25` (decl src line 65)
Before variable `i` (decl src line 66)
Store to `i` (decl src line 66), asm line 260
  %inc = add nsw i32 %13, 1, l67 c33, asm line 259
  Added assignment starting at src line 67, column 33
Store to `i` (decl src line 66), asm line 242
  const i32 0
  Added assignment starting at src line 67, column 20

After variable `l_20` (decl src line 43)
@dbg.value mapping for `l_20` (decl src line 43), asm line 72
Value produced for `l_20` (decl src line 43), asm line 72
  const i16 -3
  Added assignment starting at src line 43, column 0
After variable `l_40` (decl src line 44)
@dbg.value mapping for `l_40` (decl src line 44), asm line 73
Value produced for `l_40` (decl src line 44), asm line 73
  const i32* null
  Added assignment starting at src line 44, column 0
After variable `i` (decl src line 46)
After variable intrinsic with undef input, asm line 74, ignoring undefined variable
  @dbg.declare(i32* undef, !120), l46 c9
After variable `l_14` (decl src line 49)
@dbg.value mapping for `l_14` (decl src line 49), asm line 76
Value produced for `l_14` (decl src line 49), asm line 76
  const i16 22680
  Added assignment starting at src line 49, column 0
After variable `l_28` (decl src line 51)
@dbg.value mapping for `l_28` (decl src line 51), asm line 77
Value produced for `l_28` (decl src line 51), asm line 77
  global g_29
  Added assignment starting at src line 51, column 0
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 78, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 79, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 80, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 81, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 82, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 83, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 84, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 85, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 86, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 87, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 88, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 89, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 90, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 91, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 92, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 93, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 94, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_31` (decl src line 52)
After variable intrinsic with undef input, asm line 95, ignoring undefined variable
  @dbg.value(i16* undef, !128)
After variable `l_30` (decl src line 53)
After variable intrinsic with undef input, asm line 96, ignoring undefined variable
  @dbg.value([6 x [3 x i16*]]* undef, !132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value))
After variable `i` (decl src line 54)
After variable intrinsic with undef input, asm line 97, ignoring undefined variable
  @dbg.declare(i32* undef, !133), l54 c13
After variable `j` (decl src line 54)
After variable intrinsic with undef input, asm line 98, ignoring undefined variable
  @dbg.declare(i32* undef, !134), l54 c16
After variable `l_14` (decl src line 49)
@dbg.value mapping for `l_14` (decl src line 49), asm line 99
Value produced for `l_14` (decl src line 49), asm line 99
  const i16 22680
  Value is same as last assignment, skipping
After variable `l_14` (decl src line 49)
@dbg.value mapping for `l_14` (decl src line 49), asm line 104
Value produced for `l_14` (decl src line 49), asm line 104
  const i16 undef
❌ Value produced for `l_14` (decl src line 49): missing line info
After variable `l_20` (decl src line 43)
@dbg.value mapping for `l_20` (decl src line 43), asm line 105
Value produced for `l_20` (decl src line 43), asm line 105
  const i16 -3
  Value is same as last assignment, skipping
After variable `l_20` (decl src line 43)
@dbg.value mapping for `l_20` (decl src line 43), asm line 106
Value produced for `l_20` (decl src line 43), asm line 106
  const i16 -3
  Value is same as last assignment, skipping

❌ 18 before variables found, 9 after variables found, 9 mismatched

### Assignments

🔔 Before live ranges for `i` (decl src line 46) not found, variable likely undefined
🔔 Before live ranges for `i` (decl src line 54) not found, variable likely undefined
🔔 Before live ranges for `i` (decl src line 58) not found, variable likely undefined
❌ After live ranges for `i` (decl src line 66) not found
🔔 Before live ranges for `j` (decl src line 54) not found, variable likely undefined
🔔 Before live ranges for `j` (decl src line 58) not found, variable likely undefined
🔔 Before live ranges for `l_19` (decl src line 57) not found, variable likely undefined
❌ After live ranges for `l_23` (decl src line 63) not found
❌ After live ranges for `l_24` (decl src line 64) not found
🔔 Before live ranges for `l_25` (decl src line 65) not found, variable likely undefined
❌ After live ranges for `l_26` (decl src line 50) not found
❌ After live ranges for `l_30` (decl src line 53) not found
🔔 Before live ranges for `l_31` (decl src line 52) not found, variable likely undefined
🔔 Before live ranges for `l_42` (decl src line 45) not found, variable likely undefined
❌ 4 before live ranges covered, 5 uncovered, 9 undefined

### Symbolic values

#### Before values

Collected value for `l_20`
i16 -3
0xFFFD
Collected value for `l_40`
i32* null
0x0
[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memset.c`
[0mCollected value for `l_14`
i16 22680
0x5898
Concrete pointer resolves to g_27, offset 0x0
Replaced concrete pointer with hash 0xE867DB3DB1CC8FAD
Collected value for `l_26`
@g_27 = internal global i64 0, align 8, !dbg !34
0xE867DB3DB1CC8FAD
Concrete pointer resolves to g_29, offset 0x0
Replaced concrete pointer with hash 0x2FECAA027FD85ED0
Collected value for `l_28`
@g_29 = internal global i64 -6050899294598026192, align 8, !dbg !38
0x2FECAA027FD85ED0
Concrete pointer resolves to l_31, offset 0x18
Replaced concrete pointer with hash 0x9B8E65153E0D662C
Collected value for `l_30`
%arrayidx23 = getelementptr inbounds [3 x i16*], [3 x i16*]* %arrayidx, i64 0, i64 0, l53 c35
0x9B8E65153E0D662C
[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0mCollected value for `l_20`
%dec = add i16 %12, -1, l59 c13
0xFFFC

#### After values

Collected value for `l_20`
i16 -3
0xFFFD
Collected value for `l_40`
i32* null
0x0
Collected value for `l_14`
i16 22680
0x5898
Concrete pointer resolves to g_29, offset 0x0
Replaced concrete pointer with hash 0x2FECAA027FD85ED0
Collected value for `l_28`
@g_29 = internal unnamed_addr global i64 -6050899294598026192, align 8, !dbg !38
0x2FECAA027FD85ED0

#### Check before against after

❌ After live range for `i` (decl src line 66) not found
❌ After live range for `i` (decl src line 66) not found
Checking equivalence of `l_14` (decl src line 49) from
assn 0, src line 49, column 18
i16 22680
0x5898
and
assn 0, src line 49, column 0
i16 22680
0x5898
Checking equivalence of `l_20` (decl src line 43) from
assn 0, src line 43, column 14
i16 -3
0xFFFD
and
assn 0, src line 43, column 0
i16 -3
0xFFFD
🔔 After assn 0, src line 43, column 0 doesn't match before assn 1, src line 59, column 13
Checking equivalence of `l_20` (decl src line 43) from
assn 1, src line 59, column 13
%dec = add i16 %12, -1, l59 c13
0xFFFC
and
assn 0, src line 43, column 0
i16 -3
0xFFFD
❌ After live range for `l_23` (decl src line 63) not found
❌ After live range for `l_24` (decl src line 64) not found
❌ After live range for `l_26` (decl src line 50) not found
Checking equivalence of `l_28` (decl src line 51) from
assn 0, src line 51, column 18
@g_29 = internal global i64 -6050899294598026192, align 8, !dbg !38
0x2FECAA027FD85ED0
and
assn 0, src line 51, column 0
@g_29 = internal unnamed_addr global i64 -6050899294598026192, align 8, !dbg !38
0x2FECAA027FD85ED0
❌ After live range for `l_30` (decl src line 53) not found
Checking equivalence of `l_40` (decl src line 44) from
assn 0, src line 44, column 15
i32* null
0x0
and
assn 0, src line 44, column 0
i32* null
0x0
❌ Before checked against after: 4 matching symbolic values, 7 mismatched

#### Check after against before

Checking equivalence of `l_14` (decl src line 49) from
assn 0, src line 49, column 0
i16 22680
0x5898
and
assn 0, src line 49, column 18
i16 22680
0x5898
Checking equivalence of `l_20` (decl src line 43) from
assn 0, src line 43, column 0
i16 -3
0xFFFD
and
assn 0, src line 43, column 14
i16 -3
0xFFFD
Checking equivalence of `l_28` (decl src line 51) from
assn 0, src line 51, column 0
@g_29 = internal unnamed_addr global i64 -6050899294598026192, align 8, !dbg !38
0x2FECAA027FD85ED0
and
assn 0, src line 51, column 18
@g_29 = internal global i64 -6050899294598026192, align 8, !dbg !38
0x2FECAA027FD85ED0
Checking equivalence of `l_40` (decl src line 44) from
assn 0, src line 44, column 0
i32* null
0x0
and
assn 0, src line 44, column 15
i32* null
0x0
✅ After checked against before: 4 matching symbolic values, 0 mismatched

## Function `func_11`

✅ Before and after function names match

### Variables

Before variable `p_12` (decl src line 90)
Store to `p_12` (decl src line 90), asm line 386
  arg 0
  Added assignment starting at src line 90, column 0
Before variable `p_13` (decl src line 90)
Store to `p_13` (decl src line 90), asm line 388
  arg 1
  Added assignment starting at src line 90, column 0
Before variable `l_17` (decl src line 92)
Store to `l_17` (decl src line 92), asm line 391
  global g_18
  Added assignment starting at src line 92, column 14

After variable `p_12` (decl src line 90)
After variable intrinsic with undef input, asm line 116, ignoring undefined variable
  @dbg.value(i8 undef, !169)
After variable `p_13` (decl src line 90)
After variable intrinsic with undef input, asm line 117, ignoring undefined variable
  @dbg.value(i16 undef, !170)

❌ 3 before variables found, 2 after variables found, 1 mismatched

### Assignments

❌ After live ranges for `p_12` (decl src line 90) not found
❌ After live ranges for `p_13` (decl src line 90) not found
❌ After live ranges for `l_17` (decl src line 92) not found
❌ 0 before live ranges covered, 3 uncovered, 0 undefined

### Symbolic values

#### Before values

Collected value for `p_12`
i8 %p_12
(Read w8 0x0 p_12)
Collected value for `p_13`
i16 %p_13
(ReadLSB w16 0x0 p_13)
Concrete pointer resolves to g_18, offset 0x0
Replaced concrete pointer with hash 0x1E814E2E948DA31C
Collected value for `l_17`
@g_18 = internal global i32 -9, align 4, !dbg !32
0x1E814E2E948DA31C

#### After values


#### Check before against after

❌ After live range for `l_17` (decl src line 92) not found
❌ After live range for `p_12` (decl src line 90) not found
❌ After live range for `p_13` (decl src line 90) not found
❌ Before checked against after: 0 matching symbolic values, 3 mismatched

#### Check after against before

✅ After checked against before: 0 matching symbolic values, 0 mismatched

## Summary

❌ Some consistency checks failed
