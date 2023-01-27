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
[1mexample.c:53:33: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        (*l_19) |= ((uint64_t)((!(-5L)) , ((uint8_t)g_8 >> (uint8_t)2)) * (uint64_t)((!((!(((l_17 &= (((uint8_t)((uint8_t)l_15[1] >> (uint8_t)2) + (uint8_t)g_16) ^ 0xB541L)) != l_15[2]) | l_18)) != 0xB80EBBD4856CD833LL)) | l_18));
[0;1;32m                                ^~~~~~
[0m[1mexample.c:53:196: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 13262744474098653235 with boolean expression is always true [-Wtautological-constant-out-of-range-compare][0m
        (*l_19) |= ((uint64_t)((!(-5L)) , ((uint8_t)g_8 >> (uint8_t)2)) * (uint64_t)((!((!(((l_17 &= (((uint8_t)((uint8_t)l_15[1] >> (uint8_t)2) + (uint8_t)g_16) ^ 0xB541L)) != l_15[2]) | l_18)) != 0xB80EBBD4856CD833LL)) | l_18));
[0;1;32m                                                                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~
[0m2 warnings generated.
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:53:33: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        (*l_19) |= ((uint64_t)((!(-5L)) , ((uint8_t)g_8 >> (uint8_t)2)) * (uint64_t)((!((!(((l_17 &= (((uint8_t)((uint8_t)l_15[1] >> (uint8_t)2) + (uint8_t)g_16) ^ 0xB541L)) != l_15[2]) | l_18)) != 0xB80EBBD4856CD833LL)) | l_18));
[0;1;32m                                ^~~~~~
[0m[1mexample.c:53:196: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 13262744474098653235 with boolean expression is always true [-Wtautological-constant-out-of-range-compare][0m
        (*l_19) |= ((uint64_t)((!(-5L)) , ((uint8_t)g_8 >> (uint8_t)2)) * (uint64_t)((!((!(((l_17 &= (((uint8_t)((uint8_t)l_15[1] >> (uint8_t)2) + (uint8_t)g_16) ^ 0xB541L)) != l_15[2]) | l_18)) != 0xB80EBBD4856CD833LL)) | l_18));
[0;1;32m                                                                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~
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
[1mexample.c:53:33: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
        (*l_19) |= ((uint64_t)((!(-5L)) , ((uint8_t)g_8 >> (uint8_t)2)) * (uint64_t)((!((!(((l_17 &= (((uint8_t)((uint8_t)l_15[1] >> (uint8_t)2) + (uint8_t)g_16) ^ 0xB541L)) != l_15[2]) | l_18)) != 0xB80EBBD4856CD833LL)) | l_18));
[0;1;32m                                ^~~~~~
[0m[1mexample.c:53:196: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant 13262744474098653235 with boolean expression is always true [-Wtautological-constant-out-of-range-compare][0m
        (*l_19) |= ((uint64_t)((!(-5L)) , ((uint8_t)g_8 >> (uint8_t)2)) * (uint64_t)((!((!(((l_17 &= (((uint8_t)((uint8_t)l_15[1] >> (uint8_t)2) + (uint8_t)g_16) ^ 0xB541L)) != l_15[2]) | l_18)) != 0xB80EBBD4856CD833LL)) | l_18));
[0;1;32m                                                                                        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~
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

Before variable `l_2` (decl src line 42)
Store to `l_2` (decl src line 42), asm line 26
  const i16 20134
  Added assignment starting at src line 42, column 14
Before variable `l_21` (decl src line 43)
Store to `l_21` (decl src line 43), asm line 111
  const i32 0
  Added assignment starting at src line 58, column 14
Store to `l_21` (decl src line 43), asm line 28
  const i32 3
  Added assignment starting at src line 43, column 13
Before variable `l_15` (decl src line 46)
Before variable `l_17` (decl src line 47)
Store to `l_17` (decl src line 47), asm line 83
  %conv11 = trunc i64 %and to i32, l53 c99, asm line 82
  Added assignment starting at src line 53, column 99
Store to `l_17` (decl src line 47), asm line 36
  const i32 1
  Added assignment starting at src line 47, column 17
Before variable `l_18` (decl src line 48)
Store to `l_18` (decl src line 48), asm line 38
  const i32 906880372
  Added assignment starting at src line 48, column 17
Before variable `l_19` (decl src line 49)
Store to `l_19` (decl src line 49), asm line 40
  const i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 7, i64 6, i64 1)
  Added assignment starting at src line 49, column 18
Before variable `i` (decl src line 50)
Store to `i` (decl src line 50), asm line 60
  %inc = add nsw i32 %3, 1, l51 c29, asm line 59
  Added assignment starting at src line 51, column 29
Store to `i` (decl src line 50), asm line 42
  const i32 0
  Added assignment starting at src line 51, column 16

After variable `l_2` (decl src line 42)
@dbg.value mapping for `l_2` (decl src line 42), asm line 15
Value produced for `l_2` (decl src line 42), asm line 15
  const i16 20134
  Added assignment starting at src line 42, column 0
After variable `l_21` (decl src line 43)
@dbg.value mapping for `l_21` (decl src line 43), asm line 16
Value produced for `l_21` (decl src line 43), asm line 16
  const i32 3
  Added assignment starting at src line 43, column 0
After variable `l_17` (decl src line 47)
@dbg.value mapping for `l_17` (decl src line 47), asm line 17
Value produced for `l_17` (decl src line 47), asm line 17
  const i32 1
  Added assignment starting at src line 47, column 0
After variable `l_18` (decl src line 48)
@dbg.value mapping for `l_18` (decl src line 48), asm line 18
Value produced for `l_18` (decl src line 48), asm line 18
  const i32 906880372
  Added assignment starting at src line 48, column 0
After variable `l_19` (decl src line 49)
@dbg.value mapping for `l_19` (decl src line 49), asm line 19
Value produced for `l_19` (decl src line 49), asm line 19
  const i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 7, i64 6, i64 1)
  Added assignment starting at src line 49, column 0
After variable `i` (decl src line 50)
@dbg.value mapping for `i` (decl src line 50), asm line 20
Value produced for `i` (decl src line 50), asm line 20
  const i32 0
  Added assignment starting at src line 50, column 0
After variable `i` (decl src line 50)
@dbg.value mapping for `i` (decl src line 50), asm line 21
Value produced for `i` (decl src line 50), asm line 21
  const i32 undef
❌ Value produced for `i` (decl src line 50): missing line info
After variable `l_15` (decl src line 46)
After variable intrinsic with undef input, asm line 22, ignoring undefined variable
  @dbg.value(i32 undef, !57)
After variable `i` (decl src line 50)
@dbg.value mapping for `i` (decl src line 50), asm line 23
Value produced for `i` (decl src line 50), asm line 23
  const i32 undef
❌ Value produced for `i` (decl src line 50): missing line info
After variable `l_17` (decl src line 47)
@dbg.value mapping for `l_17` (decl src line 47), asm line 26
Value produced for `l_17` (decl src line 47), asm line 26
  [ const i64 1, const i32 undef ]
❌ Value produced for `l_17` (decl src line 47): missing line info

✅ 7 before variables found, 7 after variables found, 0 mismatched

### Assignments

🔔 Before live ranges for `l_15` (decl src line 46) not found, variable likely undefined
❌ Live ranges for `i` (decl src line 50) don't match: [51.16,∞) vs. [50.0,∞)
❌ 5 before live ranges covered, 1 uncovered, 1 undefined

### Symbolic values

#### Before values

Collected value for `l_2`
i16 20134
0x4EA6
Collected value for `l_21`
i32 3
0x3
Collected value for `l_17`
i32 1
0x1
Collected value for `l_18`
i32 906880372
0x360DE574
Concrete pointer resolves to g_20, offset 0x340
Replaced concrete pointer with hash 0x67947EFC6B502BF2
Collected value for `l_19`
i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 7, i64 6, i64 1)
0x67947EFC6B502BF2
Collected value for `i`
i32 0
0x0
Collected value for `i`
%inc = add nsw i32 %3, 1, l51 c29
0x1
Collected value for `l_17`
%conv11 = trunc i64 %and to i32, l53 c99
0x0
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
[0m
#### After values

Collected value for `l_2`
i16 20134
0x4EA6
Collected value for `l_21`
i32 3
0x3
Collected value for `l_17`
i32 1
0x1
Collected value for `l_18`
i32 906880372
0x360DE574
Concrete pointer resolves to g_20, offset 0x340
Replaced concrete pointer with hash 0x67947EFC6B502BF2
Collected value for `l_19`
i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 7, i64 6, i64 1)
0x67947EFC6B502BF2
Collected value for `i`
i32 0
0x0

#### Check before against after

🔔 After assn 0, src line 50, column 0 doesn't match before assn 0, src line 51, column 16
Checking equivalence of `i` (decl src line 50) from
assn 0, src line 51, column 16
i32 0
0x0
and
assn 0, src line 50, column 0
i32 0
0x0
🔔 After assn 0, src line 50, column 0 doesn't match before assn 1, src line 51, column 29
Checking equivalence of `i` (decl src line 50) from
assn 1, src line 51, column 29
%inc = add nsw i32 %3, 1, l51 c29
0x1
and
assn 0, src line 50, column 0
i32 0
0x0
Checking equivalence of `l_17` (decl src line 47) from
assn 0, src line 47, column 17
i32 1
0x1
and
assn 0, src line 47, column 0
i32 1
0x1
🔔 After assn 0, src line 47, column 0 doesn't match before assn 1, src line 53, column 99
Checking equivalence of `l_17` (decl src line 47) from
assn 1, src line 53, column 99
%conv11 = trunc i64 %and to i32, l53 c99
0x0
and
assn 0, src line 47, column 0
i32 1
0x1
Checking equivalence of `l_18` (decl src line 48) from
assn 0, src line 48, column 17
i32 906880372
0x360DE574
and
assn 0, src line 48, column 0
i32 906880372
0x360DE574
Checking equivalence of `l_19` (decl src line 49) from
assn 0, src line 49, column 18
i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 7, i64 6, i64 1)
0x67947EFC6B502BF2
and
assn 0, src line 49, column 0
i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 7, i64 6, i64 1)
0x67947EFC6B502BF2
Checking equivalence of `l_2` (decl src line 42) from
assn 0, src line 42, column 14
i16 20134
0x4EA6
and
assn 0, src line 42, column 0
i16 20134
0x4EA6
Checking equivalence of `l_21` (decl src line 43) from
assn 0, src line 43, column 13
i32 3
0x3
and
assn 0, src line 43, column 0
i32 3
0x3
🔔 After assn 0, src line 43, column 0 doesn't match before assn 1, src line 58, column 14
Expected 1 symbolic value(s), got 0
❌ Before `l_21` (decl src line 43) assn 1, src line 58, column 14 has no symbolic value from i32 0
❌ Before checked against after: 6 matching symbolic values, 3 mismatched

#### Check after against before

🔔 Before assn 0, src line 51, column 16 doesn't match after assn 0, src line 50, column 0
Checking equivalence of `i` (decl src line 50) from
assn 0, src line 50, column 0
i32 0
0x0
and
assn 0, src line 51, column 16
i32 0
0x0
Checking equivalence of `l_17` (decl src line 47) from
assn 0, src line 47, column 0
i32 1
0x1
and
assn 0, src line 47, column 17
i32 1
0x1
Checking equivalence of `l_18` (decl src line 48) from
assn 0, src line 48, column 0
i32 906880372
0x360DE574
and
assn 0, src line 48, column 17
i32 906880372
0x360DE574
Checking equivalence of `l_19` (decl src line 49) from
assn 0, src line 49, column 0
i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 7, i64 6, i64 1)
0x67947EFC6B502BF2
and
assn 0, src line 49, column 18
i32* getelementptr inbounds ([8 x [9 x [3 x i32]]], [8 x [9 x [3 x i32]]]* @g_20, i64 0, i64 7, i64 6, i64 1)
0x67947EFC6B502BF2
Checking equivalence of `l_2` (decl src line 42) from
assn 0, src line 42, column 0
i16 20134
0x4EA6
and
assn 0, src line 42, column 14
i16 20134
0x4EA6
Checking equivalence of `l_21` (decl src line 43) from
assn 0, src line 43, column 0
i32 3
0x3
and
assn 0, src line 43, column 13
i32 3
0x3
✅ After checked against before: 6 matching symbolic values, 0 mismatched

## Summary

❌ Some consistency checks failed
