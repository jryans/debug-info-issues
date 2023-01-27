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
[1mexample.c:43:147: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_30) = ((func_2(((*l_22) = (((((uint8_t)((int64_t)((int8_t)0x72L * (int8_t)((uint16_t)(((g_18 ^ (((uint16_t)l_21 >> (uint16_t)7) >= l_21)) == 0xCAFA32FDL) , g_18) / (uint16_t)g_18)) - (int64_t)0L) % (uint8_t)0xC3L) , g_18) >= g_18) || 0UL)), g_18, l_24[1][2], g_18, g_18) < g_18) > l_24[0][1]);
[0;1;32m                                                                                               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
[0m[1mexample.c:43:205: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_30) = ((func_2(((*l_22) = (((((uint8_t)((int64_t)((int8_t)0x72L * (int8_t)((uint16_t)(((g_18 ^ (((uint16_t)l_21 >> (uint16_t)7) >= l_21)) == 0xCAFA32FDL) , g_18) / (uint16_t)g_18)) - (int64_t)0L) % (uint8_t)0xC3L) , g_18) >= g_18) || 0UL)), g_18, l_24[1][2], g_18, g_18) < g_18) > l_24[0][1]);
[0;1;32m                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
[0m[1mexample.c:60:14: [0m[0;1;35mwarning: [0m[1mbitwise negation of a boolean expression; did you mean logical negation? [-Wbool-operation][0m
    g_29 &= (~(((((void*)0 == l_28) <= g_26) == 0L) >= g_26));
[0;1;32m            ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[0;32m             !
[0m3 warnings generated.
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:43:147: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_30) = ((func_2(((*l_22) = (((((uint8_t)((int64_t)((int8_t)0x72L * (int8_t)((uint16_t)(((g_18 ^ (((uint16_t)l_21 >> (uint16_t)7) >= l_21)) == 0xCAFA32FDL) , g_18) / (uint16_t)g_18)) - (int64_t)0L) % (uint8_t)0xC3L) , g_18) >= g_18) || 0UL)), g_18, l_24[1][2], g_18, g_18) < g_18) > l_24[0][1]);
[0;1;32m                                                                                               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
[0m[1mexample.c:43:205: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_30) = ((func_2(((*l_22) = (((((uint8_t)((int64_t)((int8_t)0x72L * (int8_t)((uint16_t)(((g_18 ^ (((uint16_t)l_21 >> (uint16_t)7) >= l_21)) == 0xCAFA32FDL) , g_18) / (uint16_t)g_18)) - (int64_t)0L) % (uint8_t)0xC3L) , g_18) >= g_18) || 0UL)), g_18, l_24[1][2], g_18, g_18) < g_18) > l_24[0][1]);
[0;1;32m                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
[0m[1mexample.c:60:14: [0m[0;1;35mwarning: [0m[1mbitwise negation of a boolean expression; did you mean logical negation? [-Wbool-operation][0m
    g_29 &= (~(((((void*)0 == l_28) <= g_26) == 0L) >= g_26));
[0;1;32m            ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[0;32m             !
[0m3 warnings generated.
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
[1mexample.c:43:147: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_30) = ((func_2(((*l_22) = (((((uint8_t)((int64_t)((int8_t)0x72L * (int8_t)((uint16_t)(((g_18 ^ (((uint16_t)l_21 >> (uint16_t)7) >= l_21)) == 0xCAFA32FDL) , g_18) / (uint16_t)g_18)) - (int64_t)0L) % (uint8_t)0xC3L) , g_18) >= g_18) || 0UL)), g_18, l_24[1][2], g_18, g_18) < g_18) > l_24[0][1]);
[0;1;32m                                                                                               ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~
[0m[1mexample.c:43:205: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_30) = ((func_2(((*l_22) = (((((uint8_t)((int64_t)((int8_t)0x72L * (int8_t)((uint16_t)(((g_18 ^ (((uint16_t)l_21 >> (uint16_t)7) >= l_21)) == 0xCAFA32FDL) , g_18) / (uint16_t)g_18)) - (int64_t)0L) % (uint8_t)0xC3L) , g_18) >= g_18) || 0UL)), g_18, l_24[1][2], g_18, g_18) < g_18) > l_24[0][1]);
[0;1;32m                                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
[0m[1mexample.c:60:14: [0m[0;1;35mwarning: [0m[1mbitwise negation of a boolean expression; did you mean logical negation? [-Wbool-operation][0m
    g_29 &= (~(((((void*)0 == l_28) <= g_26) == 0L) >= g_26));
[0;1;32m            ~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m[0;32m             !
[0m3 warnings generated.
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

Before variable `l_21` (decl src line 38)
Store to `l_21` (decl src line 38), asm line 122
  const i16 -1
  Added assignment starting at src line 38, column 13
Before variable `l_22` (decl src line 39)
Store to `l_22` (decl src line 39), asm line 124
  const i64* getelementptr inbounds ([7 x [1 x [4 x i64]]], [7 x [1 x [4 x i64]]]* @g_23, i64 0, i64 2, i64 0, i64 1)
  Added assignment starting at src line 39, column 14
Before variable `l_24` (decl src line 40)
Before variable `l_30` (decl src line 41)
Store to `l_30` (decl src line 41), asm line 129
  global g_26
  Added assignment starting at src line 41, column 14
Before variable `i` (decl src line 42)
Before variable `j` (decl src line 42)

After variable `l_24` (decl src line 40)
After variable intrinsic with undef input, asm line 67, ignoring undefined variable
  @dbg.declare([12 x i8]* undef, !105, !DIExpression(DW_OP_LLVM_fragment, 64, 96)), l40 c14
After variable `l_24` (decl src line 40)
After variable intrinsic with undef input, asm line 68, ignoring undefined variable
  @dbg.declare([4 x [3 x i32]]* undef, !105, !DIExpression(DW_OP_LLVM_fragment, 192, 384)), l40 c14
After variable `l_21` (decl src line 38)
@dbg.value mapping for `l_21` (decl src line 38), asm line 69
Value produced for `l_21` (decl src line 38), asm line 69
  const i16 -1
  Added assignment starting at src line 38, column 0
After variable `l_22` (decl src line 39)
@dbg.value mapping for `l_22` (decl src line 39), asm line 70
Value produced for `l_22` (decl src line 39), asm line 70
  const i64* getelementptr inbounds ([7 x [1 x [4 x i64]]], [7 x [1 x [4 x i64]]]* @g_23, i64 0, i64 2, i64 0, i64 1)
  Added assignment starting at src line 39, column 0
After variable `l_24` (decl src line 40)
After variable intrinsic with undef input, asm line 71, ignoring undefined variable
  @dbg.value(i32 undef, !105, !DIExpression(DW_OP_LLVM_fragment, 0, 32))
After variable `l_24` (decl src line 40)
@dbg.value mapping for `l_24` (decl src line 40), asm line 72
Value produced for `l_24` (decl src line 40), asm line 72
  const i32 1263216344
  Added assignment starting at src line 40, column 0
After variable `l_24` (decl src line 40)
@dbg.value mapping for `l_24` (decl src line 40), asm line 73
Value produced for `l_24` (decl src line 40), asm line 73
  const i32 -1824343266
❌ Value produced for `l_24` (decl src line 40): missing line info
After variable `i` (decl src line 42)
After variable intrinsic with undef input, asm line 74, ignoring undefined variable
  @dbg.declare(i32* undef, !112), l42 c9
After variable `j` (decl src line 42)
After variable intrinsic with undef input, asm line 75, ignoring undefined variable
  @dbg.declare(i32* undef, !113), l42 c12

❌ 6 before variables found, 5 after variables found, 1 mismatched

### Assignments

🔔 Before live ranges for `l_24` (decl src line 40) not found, variable likely undefined
❌ After live ranges for `l_30` (decl src line 41) not found
🔔 Before live ranges for `i` (decl src line 42) not found, variable likely undefined
🔔 Before live ranges for `j` (decl src line 42) not found, variable likely undefined
❌ 2 before live ranges covered, 1 uncovered, 3 undefined

### Symbolic values

#### Before values

Collected value for `l_21`
i16 -1
0xFFFF
Concrete pointer resolves to g_23, offset 0x48
Replaced concrete pointer with hash 0x983FA5010A67F013
Collected value for `l_22`
i64* getelementptr inbounds ([7 x [1 x [4 x i64]]], [7 x [1 x [4 x i64]]]* @g_23, i64 0, i64 2, i64 0, i64 1)
0x983FA5010A67F013
[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0mConcrete pointer resolves to g_26, offset 0x0
Replaced concrete pointer with hash 0xCFD37D5648DF5F09
Collected value for `l_30`
@g_26 = internal global i32 -199565431, align 4, !dbg !28
0xCFD37D5648DF5F09

#### After values

Collected value for `l_21`
i16 -1
0xFFFF
Concrete pointer resolves to g_23, offset 0x48
Replaced concrete pointer with hash 0x983FA5010A67F013
Collected value for `l_22`
i64* getelementptr inbounds ([7 x [1 x [4 x i64]]], [7 x [1 x [4 x i64]]]* @g_23, i64 0, i64 2, i64 0, i64 1)
0x983FA5010A67F013
Collected value for `l_24`
i32 1263216344
0x4B4B26D8

#### Check before against after

Checking equivalence of `l_21` (decl src line 38) from
assn 0, src line 38, column 13
i16 -1
0xFFFF
and
assn 0, src line 38, column 0
i16 -1
0xFFFF
Checking equivalence of `l_22` (decl src line 39) from
assn 0, src line 39, column 14
i64* getelementptr inbounds ([7 x [1 x [4 x i64]]], [7 x [1 x [4 x i64]]]* @g_23, i64 0, i64 2, i64 0, i64 1)
0x983FA5010A67F013
and
assn 0, src line 39, column 0
i64* getelementptr inbounds ([7 x [1 x [4 x i64]]], [7 x [1 x [4 x i64]]]* @g_23, i64 0, i64 2, i64 0, i64 1)
0x983FA5010A67F013
❌ After live range for `l_30` (decl src line 41) not found
❌ Before checked against after: 2 matching symbolic values, 1 mismatched

#### Check after against before

Checking equivalence of `l_21` (decl src line 38) from
assn 0, src line 38, column 0
i16 -1
0xFFFF
and
assn 0, src line 38, column 13
i16 -1
0xFFFF
Checking equivalence of `l_22` (decl src line 39) from
assn 0, src line 39, column 0
i64* getelementptr inbounds ([7 x [1 x [4 x i64]]], [7 x [1 x [4 x i64]]]* @g_23, i64 0, i64 2, i64 0, i64 1)
0x983FA5010A67F013
and
assn 0, src line 39, column 14
i64* getelementptr inbounds ([7 x [1 x [4 x i64]]], [7 x [1 x [4 x i64]]]* @g_23, i64 0, i64 2, i64 0, i64 1)
0x983FA5010A67F013
❌ Before live range for `l_24` (decl src line 40) not found
❌ After checked against before: 2 matching symbolic values, 1 mismatched

## Function `func_2`

✅ Before and after function names match

### Variables

Before variable `p_3` (decl src line 54)
Store to `p_3` (decl src line 54), asm line 238
  arg 0
  Added assignment starting at src line 54, column 0
Before variable `p_4` (decl src line 54)
Store to `p_4` (decl src line 54), asm line 240
  arg 1
  Added assignment starting at src line 54, column 0
Before variable `p_5` (decl src line 54)
Store to `p_5` (decl src line 54), asm line 242
  arg 2
  Added assignment starting at src line 54, column 0
Before variable `p_6` (decl src line 54)
Store to `p_6` (decl src line 54), asm line 244
  arg 3
  Added assignment starting at src line 54, column 0
Before variable `p_7` (decl src line 54)
Store to `p_7` (decl src line 54), asm line 246
  arg 4
  Added assignment starting at src line 54, column 0
Before variable `l_25` (decl src line 56)
Before variable `l_28` (decl src line 57)
Store to `l_28` (decl src line 57), asm line 252
  const i32* null
  Added assignment starting at src line 57, column 21
Before variable `i` (decl src line 58)
Before variable `j` (decl src line 58)
Before variable `k` (decl src line 58)

After variable `p_3` (decl src line 54)
After variable intrinsic with undef input, asm line 91, ignoring undefined variable
  @dbg.value(i64 undef, !129)
After variable `p_4` (decl src line 54)
@dbg.value mapping for `p_4` (decl src line 54), asm line 92
Value produced for `p_4` (decl src line 54), asm line 92
  const i32 318486204
  Added assignment starting at src line 54, column 0
After variable `p_5` (decl src line 54)
After variable intrinsic with undef input, asm line 93, ignoring undefined variable
  @dbg.value(i32 undef, !131)
After variable `p_6` (decl src line 54)
After variable intrinsic with undef input, asm line 94, ignoring undefined variable
  @dbg.value(i8 undef, !132)
After variable `p_7` (decl src line 54)
After variable intrinsic with undef input, asm line 95, ignoring undefined variable
  @dbg.value(i64 undef, !133)
After variable `l_28` (decl src line 57)
@dbg.value mapping for `l_28` (decl src line 57), asm line 96
Value produced for `l_28` (decl src line 57), asm line 96
  const i32* null
  Added assignment starting at src line 57, column 0
After variable `i` (decl src line 58)
After variable intrinsic with undef input, asm line 97, ignoring undefined variable
  @dbg.declare(i32* undef, !141), l58 c9
After variable `j` (decl src line 58)
After variable intrinsic with undef input, asm line 98, ignoring undefined variable
  @dbg.declare(i32* undef, !142), l58 c12
After variable `k` (decl src line 58)
After variable intrinsic with undef input, asm line 99, ignoring undefined variable
  @dbg.declare(i32* undef, !143), l58 c15

❌ 10 before variables found, 9 after variables found, 1 mismatched

### Assignments

🔔 Before live ranges for `i` (decl src line 58) not found, variable likely undefined
🔔 Before live ranges for `j` (decl src line 58) not found, variable likely undefined
🔔 Before live ranges for `k` (decl src line 58) not found, variable likely undefined
🔔 Before live ranges for `l_25` (decl src line 56) not found, variable likely undefined
❌ After live ranges for `p_3` (decl src line 54) not found
❌ After live ranges for `p_5` (decl src line 54) not found
❌ After live ranges for `p_6` (decl src line 54) not found
❌ After live ranges for `p_7` (decl src line 54) not found
❌ 2 before live ranges covered, 4 uncovered, 4 undefined

### Symbolic values

#### Before values

Collected value for `p_3`
i64 %p_3
(ReadLSB w64 0x0 p_3)
Collected value for `p_4`
i32 %p_4
(ReadLSB w32 0x0 p_4)
Collected value for `p_5`
i32 %p_5
(ReadLSB w32 0x0 p_5)
Collected value for `p_6`
i8 %p_6
(Read w8 0x0 p_6)
Collected value for `p_7`
i64 %p_7
(ReadLSB w64 0x0 p_7)
[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0mCollected value for `l_28`
i32* null
0x0

#### After values

Collected value for `p_4`
i32 318486204
0x12FBB6BC
Collected value for `l_28`
i32* null
0x0

#### Check before against after

Checking equivalence of `l_28` (decl src line 57) from
assn 0, src line 57, column 21
i32* null
0x0
and
assn 0, src line 57, column 0
i32* null
0x0
❌ After live range for `p_3` (decl src line 54) not found
Checking equivalence of `p_4` (decl src line 54) from
assn 0, src line 54, column 0
i32 %p_4
(ReadLSB w32 0x0 p_4)
and
assn 0, src line 54, column 0
i32 318486204
0x12FBB6BC
Query to parse
array p_4[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 p_4)
     0x12FBB6BC))
Parsed query
(Eq (ReadLSB w32 0x0 p_4)
     0x12FBB6BC)
❌ Symbolic values don't match:
(Eq (ReadLSB w32 0x0 p_4)
     0x12FBB6BC)
❌ After live range for `p_5` (decl src line 54) not found
❌ After live range for `p_6` (decl src line 54) not found
❌ After live range for `p_7` (decl src line 54) not found
❌ Before checked against after: 1 matching symbolic values, 5 mismatched

#### Check after against before

Checking equivalence of `l_28` (decl src line 57) from
assn 0, src line 57, column 0
i32* null
0x0
and
assn 0, src line 57, column 21
i32* null
0x0
Checking equivalence of `p_4` (decl src line 54) from
assn 0, src line 54, column 0
i32 318486204
0x12FBB6BC
and
assn 0, src line 54, column 0
i32 %p_4
(ReadLSB w32 0x0 p_4)
Query to parse
array p_4[4] : w32 -> w8 = symbolic
(query [] (Eq 0x12FBB6BC
     (ReadLSB w32 0x0 p_4)))
Parsed query
(Eq 0x12FBB6BC
     (ReadLSB w32 0x0 p_4))
❌ Symbolic values don't match:
(Eq 0x12FBB6BC
     (ReadLSB w32 0x0 p_4))
❌ After checked against before: 1 matching symbolic values, 1 mismatched

## Summary

❌ Some consistency checks failed
