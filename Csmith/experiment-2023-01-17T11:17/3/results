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
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
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

Before variable `l_2` (decl src line 33)
Store to `l_2` (decl src line 33), asm line 37
  const i32* null
  Added assignment starting at src line 33, column 14
Before variable `l_3` (decl src line 34)
Store to `l_3` (decl src line 34), asm line 39
  const i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
  Added assignment starting at src line 34, column 14
Before variable `l_5` (decl src line 35)
Store to `l_5` (decl src line 35), asm line 41
  const i32* null
  Added assignment starting at src line 35, column 14
Before variable `l_6` (decl src line 36)
Store to `l_6` (decl src line 36), asm line 43
  const i32 106391706
  Added assignment starting at src line 36, column 13
Before variable `l_7` (decl src line 37)
Store to `l_7` (decl src line 37), asm line 45
  %l_6 = alloca i32, asm line 15
  Added assignment starting at src line 37, column 14
Before variable `l_8` (decl src line 38)
Store to `l_8` (decl src line 38), asm line 47
  const i32* null
  Added assignment starting at src line 38, column 14
Before variable `l_9` (decl src line 39)
Store to `l_9` (decl src line 39), asm line 49
  %l_6 = alloca i32, asm line 15
  Added assignment starting at src line 39, column 14
Before variable `l_10` (decl src line 40)
Store to `l_10` (decl src line 40), asm line 51
  const i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
  Added assignment starting at src line 40, column 14
Before variable `l_11` (decl src line 41)
Store to `l_11` (decl src line 41), asm line 53
  const i32 9
  Added assignment starting at src line 41, column 13
Before variable `l_12` (decl src line 42)
Store to `l_12` (decl src line 42), asm line 55
  const i32 1938017351
  Added assignment starting at src line 42, column 13
Before variable `l_13` (decl src line 43)
Store to `l_13` (decl src line 43), asm line 57
  %l_6 = alloca i32, asm line 15
  Added assignment starting at src line 43, column 14
Before variable `l_14` (decl src line 44)
Store to `l_14` (decl src line 44), asm line 59
  %l_6 = alloca i32, asm line 15
  Added assignment starting at src line 44, column 14
Before variable `l_15` (decl src line 45)
Store to `l_15` (decl src line 45), asm line 61
  const i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
  Added assignment starting at src line 45, column 14
Before variable `l_16` (decl src line 46)
Store to `l_16` (decl src line 46), asm line 63
  %l_6 = alloca i32, asm line 15
  Added assignment starting at src line 46, column 14
Before variable `l_17` (decl src line 47)
Store to `l_17` (decl src line 47), asm line 65
  const i32 -1
  Added assignment starting at src line 47, column 13
Before variable `l_18` (decl src line 48)
Store to `l_18` (decl src line 48), asm line 67
  %l_12 = alloca i32, asm line 21
  Added assignment starting at src line 48, column 14
Before variable `l_19` (decl src line 49)
Store to `l_19` (decl src line 49), asm line 69
  const i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 0)
  Added assignment starting at src line 49, column 14
Before variable `l_20` (decl src line 50)
Store to `l_20` (decl src line 50), asm line 71
  const i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
  Added assignment starting at src line 50, column 14
Before variable `l_21` (decl src line 51)
Before variable `l_22` (decl src line 52)
Store to `l_22` (decl src line 52), asm line 132
  const i32 -359608326
  Added assignment starting at src line 52, column 13
Before variable `l_23` (decl src line 53)
Store to `l_23` (decl src line 53), asm line 140
  %inc = add i32 %0, 1, l55 c5, asm line 139
  Added assignment starting at src line 55, column 5
Store to `l_23` (decl src line 53), asm line 134
  const i32 -1
  Added assignment starting at src line 53, column 14
Before variable `i` (decl src line 54)
Before variable `j` (decl src line 54)
Before variable `k` (decl src line 54)

After variable `l_2` (decl src line 33)
@dbg.value mapping for `l_2` (decl src line 33), asm line 12
Value produced for `l_2` (decl src line 33), asm line 12
  const i32* null
  Added assignment starting at src line 33, column 0
After variable `l_3` (decl src line 34)
@dbg.value mapping for `l_3` (decl src line 34), asm line 13
Value produced for `l_3` (decl src line 34), asm line 13
  const i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
  Added assignment starting at src line 34, column 0
After variable `l_5` (decl src line 35)
@dbg.value mapping for `l_5` (decl src line 35), asm line 14
Value produced for `l_5` (decl src line 35), asm line 14
  const i32* null
  Added assignment starting at src line 35, column 0
After variable `l_6` (decl src line 36)
@dbg.value mapping for `l_6` (decl src line 36), asm line 15
Value produced for `l_6` (decl src line 36), asm line 15
  const i32 106391706
  Added assignment starting at src line 36, column 0
After variable `l_7` (decl src line 37)
After variable intrinsic with undef input, asm line 16, ignoring undefined variable
  @dbg.value(i32* undef, !33)
After variable `l_8` (decl src line 38)
@dbg.value mapping for `l_8` (decl src line 38), asm line 17
Value produced for `l_8` (decl src line 38), asm line 17
  const i32* null
  Added assignment starting at src line 38, column 0
After variable `l_9` (decl src line 39)
After variable intrinsic with undef input, asm line 18, ignoring undefined variable
  @dbg.value(i32* undef, !35)
After variable `l_10` (decl src line 40)
@dbg.value mapping for `l_10` (decl src line 40), asm line 19
Value produced for `l_10` (decl src line 40), asm line 19
  const i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
  Added assignment starting at src line 40, column 0
After variable `l_11` (decl src line 41)
@dbg.value mapping for `l_11` (decl src line 41), asm line 20
Value produced for `l_11` (decl src line 41), asm line 20
  const i32 9
  Added assignment starting at src line 41, column 0
After variable `l_12` (decl src line 42)
@dbg.value mapping for `l_12` (decl src line 42), asm line 21
Value produced for `l_12` (decl src line 42), asm line 21
  const i32 1938017351
  Added assignment starting at src line 42, column 0
After variable `l_13` (decl src line 43)
After variable intrinsic with undef input, asm line 22, ignoring undefined variable
  @dbg.value(i32* undef, !39)
After variable `l_14` (decl src line 44)
After variable intrinsic with undef input, asm line 23, ignoring undefined variable
  @dbg.value(i32* undef, !40)
After variable `l_15` (decl src line 45)
@dbg.value mapping for `l_15` (decl src line 45), asm line 24
Value produced for `l_15` (decl src line 45), asm line 24
  const i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
  Added assignment starting at src line 45, column 0
After variable `l_16` (decl src line 46)
After variable intrinsic with undef input, asm line 25, ignoring undefined variable
  @dbg.value(i32* undef, !42)
After variable `l_17` (decl src line 47)
@dbg.value mapping for `l_17` (decl src line 47), asm line 26
Value produced for `l_17` (decl src line 47), asm line 26
  const i32 -1
  Added assignment starting at src line 47, column 0
After variable `l_18` (decl src line 48)
After variable intrinsic with undef input, asm line 27, ignoring undefined variable
  @dbg.value(i32* undef, !44)
After variable `l_19` (decl src line 49)
After variable intrinsic with undef input, asm line 28, ignoring undefined variable
  @dbg.value(i32* undef, !45)
After variable `l_20` (decl src line 50)
@dbg.value mapping for `l_20` (decl src line 50), asm line 29
Value produced for `l_20` (decl src line 50), asm line 29
  const i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
  Added assignment starting at src line 50, column 0
After variable `l_21` (decl src line 51)
After variable intrinsic with undef input, asm line 30, ignoring undefined variable
  @dbg.value(i32* undef, !47, !DIExpression(DW_OP_LLVM_fragment, 0, 64))
After variable `l_21` (decl src line 51)
After variable intrinsic with undef input, asm line 31, ignoring undefined variable
  @dbg.value(i32* undef, !47, !DIExpression(DW_OP_LLVM_fragment, 64, 64))
After variable `l_21` (decl src line 51)
After variable intrinsic with undef input, asm line 32, ignoring undefined variable
  @dbg.value(i32* undef, !47, !DIExpression(DW_OP_LLVM_fragment, 128, 64))
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 33
Value produced for `l_21` (decl src line 51), asm line 33
  const i32* null
  Added assignment starting at src line 51, column 0
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 34
Value produced for `l_21` (decl src line 51), asm line 34
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 35
Value produced for `l_21` (decl src line 51), asm line 35
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 36
Value produced for `l_21` (decl src line 51), asm line 36
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 37
Value produced for `l_21` (decl src line 51), asm line 37
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 38
Value produced for `l_21` (decl src line 51), asm line 38
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 39
Value produced for `l_21` (decl src line 51), asm line 39
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 40
Value produced for `l_21` (decl src line 51), asm line 40
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 41
Value produced for `l_21` (decl src line 51), asm line 41
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 42
Value produced for `l_21` (decl src line 51), asm line 42
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 43
Value produced for `l_21` (decl src line 51), asm line 43
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 44
Value produced for `l_21` (decl src line 51), asm line 44
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 45
Value produced for `l_21` (decl src line 51), asm line 45
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 46
Value produced for `l_21` (decl src line 51), asm line 46
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 47
Value produced for `l_21` (decl src line 51), asm line 47
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 48
Value produced for `l_21` (decl src line 51), asm line 48
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 49
Value produced for `l_21` (decl src line 51), asm line 49
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 50
Value produced for `l_21` (decl src line 51), asm line 50
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 51
Value produced for `l_21` (decl src line 51), asm line 51
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 52
Value produced for `l_21` (decl src line 51), asm line 52
  const i32* undef
❌ Value produced for `l_21` (decl src line 51): missing line info
After variable `l_21` (decl src line 51)
@dbg.value mapping for `l_21` (decl src line 51), asm line 53
Value produced for `l_21` (decl src line 51), asm line 53
  const i32* null
  Value is same as last assignment, skipping
After variable `l_22` (decl src line 52)
@dbg.value mapping for `l_22` (decl src line 52), asm line 54
Value produced for `l_22` (decl src line 52), asm line 54
  const i32 -359608326
  Added assignment starting at src line 52, column 0
After variable `l_23` (decl src line 53)
@dbg.value mapping for `l_23` (decl src line 53), asm line 55
Value produced for `l_23` (decl src line 53), asm line 55
  const i32 -1
  Added assignment starting at src line 53, column 0
After variable `i` (decl src line 54)
After variable intrinsic with undef input, asm line 56, ignoring undefined variable
  @dbg.declare(i32* undef, !56), l54 c9
After variable `j` (decl src line 54)
After variable intrinsic with undef input, asm line 57, ignoring undefined variable
  @dbg.declare(i32* undef, !57), l54 c12
After variable `k` (decl src line 54)
After variable intrinsic with undef input, asm line 58, ignoring undefined variable
  @dbg.declare(i32* undef, !58), l54 c15
After variable `l_23` (decl src line 53)
@dbg.value mapping for `l_23` (decl src line 53), asm line 59
Value produced for `l_23` (decl src line 53), asm line 59
  const i32 -1
  Value is same as last assignment, skipping

✅ 24 before variables found, 24 after variables found, 0 mismatched

### Assignments

🔔 Before live ranges for `i` (decl src line 54) not found, variable likely undefined
🔔 Before live ranges for `j` (decl src line 54) not found, variable likely undefined
🔔 Before live ranges for `k` (decl src line 54) not found, variable likely undefined
❌ After live ranges for `l_13` (decl src line 43) not found
❌ After live ranges for `l_14` (decl src line 44) not found
❌ After live ranges for `l_16` (decl src line 46) not found
❌ After live ranges for `l_18` (decl src line 48) not found
❌ After live ranges for `l_19` (decl src line 49) not found
🔔 Before live ranges for `l_21` (decl src line 51) not found, variable likely undefined
❌ After live ranges for `l_7` (decl src line 37) not found
❌ After live ranges for `l_9` (decl src line 39) not found
❌ 13 before live ranges covered, 7 uncovered, 4 undefined

### Symbolic values

#### Before values

Collected value for `l_2`
i32* null
0x0
Concrete pointer resolves to g_4, offset 0x4
Replaced concrete pointer with hash 0x1286B2DCC56E2642
Collected value for `l_3`
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Collected value for `l_5`
i32* null
0x0
Collected value for `l_6`
i32 106391706
0x657689A
Concrete pointer resolves to l_6, offset 0x0
Replaced concrete pointer with hash 0x450E844007529019
Collected value for `l_7`
%l_6 = alloca i32
0x450E844007529019
Collected value for `l_8`
i32* null
0x0
Concrete pointer resolves to l_6, offset 0x0
Replaced concrete pointer with hash 0x450E844007529019
Collected value for `l_9`
%l_6 = alloca i32
0x450E844007529019
Concrete pointer resolves to g_4, offset 0x4
Replaced concrete pointer with hash 0x1286B2DCC56E2642
Collected value for `l_10`
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Collected value for `l_11`
i32 9
0x9
Collected value for `l_12`
i32 1938017351
0x7383CC47
Concrete pointer resolves to l_6, offset 0x0
Replaced concrete pointer with hash 0x450E844007529019
Collected value for `l_13`
%l_6 = alloca i32
0x450E844007529019
Concrete pointer resolves to l_6, offset 0x0
Replaced concrete pointer with hash 0x450E844007529019
Collected value for `l_14`
%l_6 = alloca i32
0x450E844007529019
Concrete pointer resolves to g_4, offset 0x4
Replaced concrete pointer with hash 0x1286B2DCC56E2642
Collected value for `l_15`
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Concrete pointer resolves to l_6, offset 0x0
Replaced concrete pointer with hash 0x450E844007529019
Collected value for `l_16`
%l_6 = alloca i32
0x450E844007529019
Collected value for `l_17`
i32 -1
0xFFFFFFFF
Concrete pointer resolves to l_12, offset 0x0
Replaced concrete pointer with hash 0x9A94928404228A1D
Collected value for `l_18`
%l_12 = alloca i32
0x9A94928404228A1D
Concrete pointer resolves to g_4, offset 0x0
Replaced concrete pointer with hash 0x854CED0AD30A87BF
Collected value for `l_19`
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 0)
0x854CED0AD30A87BF
Concrete pointer resolves to g_4, offset 0x4
Replaced concrete pointer with hash 0x1286B2DCC56E2642
Collected value for `l_20`
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Collected value for `l_22`
i32 -359608326
0xEA90CFFA
Collected value for `l_23`
i32 -1
0xFFFFFFFF
Collected value for `l_23`
%inc = add i32 %0, 1, l55 c5
0x0

#### After values

Collected value for `l_2`
i32* null
0x0
Concrete pointer resolves to g_4, offset 0x4
Replaced concrete pointer with hash 0x1286B2DCC56E2642
Collected value for `l_3`
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Collected value for `l_5`
i32* null
0x0
Collected value for `l_6`
i32 106391706
0x657689A
Collected value for `l_8`
i32* null
0x0
Concrete pointer resolves to g_4, offset 0x4
Replaced concrete pointer with hash 0x1286B2DCC56E2642
Collected value for `l_10`
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Collected value for `l_11`
i32 9
0x9
Collected value for `l_12`
i32 1938017351
0x7383CC47
Concrete pointer resolves to g_4, offset 0x4
Replaced concrete pointer with hash 0x1286B2DCC56E2642
Collected value for `l_15`
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Collected value for `l_17`
i32 -1
0xFFFFFFFF
Concrete pointer resolves to g_4, offset 0x4
Replaced concrete pointer with hash 0x1286B2DCC56E2642
Collected value for `l_20`
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Collected value for `l_21`
i32* null
0x0
Collected value for `l_22`
i32 -359608326
0xEA90CFFA
Collected value for `l_23`
i32 -1
0xFFFFFFFF

#### Check before against after

Checking equivalence of `l_10` (decl src line 40) from
assn 0, src line 40, column 14
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
and
assn 0, src line 40, column 0
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Checking equivalence of `l_11` (decl src line 41) from
assn 0, src line 41, column 13
i32 9
0x9
and
assn 0, src line 41, column 0
i32 9
0x9
Checking equivalence of `l_12` (decl src line 42) from
assn 0, src line 42, column 13
i32 1938017351
0x7383CC47
and
assn 0, src line 42, column 0
i32 1938017351
0x7383CC47
❌ After live range for `l_13` (decl src line 43) not found
❌ After live range for `l_14` (decl src line 44) not found
Checking equivalence of `l_15` (decl src line 45) from
assn 0, src line 45, column 14
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
and
assn 0, src line 45, column 0
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
❌ After live range for `l_16` (decl src line 46) not found
Checking equivalence of `l_17` (decl src line 47) from
assn 0, src line 47, column 13
i32 -1
0xFFFFFFFF
and
assn 0, src line 47, column 0
i32 -1
0xFFFFFFFF
❌ After live range for `l_18` (decl src line 48) not found
❌ After live range for `l_19` (decl src line 49) not found
Checking equivalence of `l_2` (decl src line 33) from
assn 0, src line 33, column 14
i32* null
0x0
and
assn 0, src line 33, column 0
i32* null
0x0
Checking equivalence of `l_20` (decl src line 50) from
assn 0, src line 50, column 14
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
and
assn 0, src line 50, column 0
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Checking equivalence of `l_22` (decl src line 52) from
assn 0, src line 52, column 13
i32 -359608326
0xEA90CFFA
and
assn 0, src line 52, column 0
i32 -359608326
0xEA90CFFA
Checking equivalence of `l_23` (decl src line 53) from
assn 0, src line 53, column 14
i32 -1
0xFFFFFFFF
and
assn 0, src line 53, column 0
i32 -1
0xFFFFFFFF
🔔 After assn 0, src line 53, column 0 doesn't match before assn 1, src line 55, column 5
Checking equivalence of `l_23` (decl src line 53) from
assn 1, src line 55, column 5
%inc = add i32 %0, 1, l55 c5
0x0
and
assn 0, src line 53, column 0
i32 -1
0xFFFFFFFF
Checking equivalence of `l_3` (decl src line 34) from
assn 0, src line 34, column 14
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
and
assn 0, src line 34, column 0
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Checking equivalence of `l_5` (decl src line 35) from
assn 0, src line 35, column 14
i32* null
0x0
and
assn 0, src line 35, column 0
i32* null
0x0
Checking equivalence of `l_6` (decl src line 36) from
assn 0, src line 36, column 13
i32 106391706
0x657689A
and
assn 0, src line 36, column 0
i32 106391706
0x657689A
❌ After live range for `l_7` (decl src line 37) not found
Checking equivalence of `l_8` (decl src line 38) from
assn 0, src line 38, column 14
i32* null
0x0
and
assn 0, src line 38, column 0
i32* null
0x0
❌ After live range for `l_9` (decl src line 39) not found
❌ Before checked against after: 13 matching symbolic values, 8 mismatched

#### Check after against before

Checking equivalence of `l_10` (decl src line 40) from
assn 0, src line 40, column 0
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
and
assn 0, src line 40, column 14
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Checking equivalence of `l_11` (decl src line 41) from
assn 0, src line 41, column 0
i32 9
0x9
and
assn 0, src line 41, column 13
i32 9
0x9
Checking equivalence of `l_12` (decl src line 42) from
assn 0, src line 42, column 0
i32 1938017351
0x7383CC47
and
assn 0, src line 42, column 13
i32 1938017351
0x7383CC47
Checking equivalence of `l_15` (decl src line 45) from
assn 0, src line 45, column 0
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
and
assn 0, src line 45, column 14
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Checking equivalence of `l_17` (decl src line 47) from
assn 0, src line 47, column 0
i32 -1
0xFFFFFFFF
and
assn 0, src line 47, column 13
i32 -1
0xFFFFFFFF
Checking equivalence of `l_2` (decl src line 33) from
assn 0, src line 33, column 0
i32* null
0x0
and
assn 0, src line 33, column 14
i32* null
0x0
Checking equivalence of `l_20` (decl src line 50) from
assn 0, src line 50, column 0
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
and
assn 0, src line 50, column 14
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
❌ Before live range for `l_21` (decl src line 51) not found
Checking equivalence of `l_22` (decl src line 52) from
assn 0, src line 52, column 0
i32 -359608326
0xEA90CFFA
and
assn 0, src line 52, column 13
i32 -359608326
0xEA90CFFA
Checking equivalence of `l_23` (decl src line 53) from
assn 0, src line 53, column 0
i32 -1
0xFFFFFFFF
and
assn 0, src line 53, column 14
i32 -1
0xFFFFFFFF
Checking equivalence of `l_3` (decl src line 34) from
assn 0, src line 34, column 0
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
and
assn 0, src line 34, column 14
i32* getelementptr inbounds ([3 x i32], [3 x i32]* @g_4, i64 0, i64 1)
0x1286B2DCC56E2642
Checking equivalence of `l_5` (decl src line 35) from
assn 0, src line 35, column 0
i32* null
0x0
and
assn 0, src line 35, column 14
i32* null
0x0
Checking equivalence of `l_6` (decl src line 36) from
assn 0, src line 36, column 0
i32 106391706
0x657689A
and
assn 0, src line 36, column 13
i32 106391706
0x657689A
Checking equivalence of `l_8` (decl src line 38) from
assn 0, src line 38, column 0
i32* null
0x0
and
assn 0, src line 38, column 14
i32* null
0x0
❌ After checked against before: 13 matching symbolic values, 1 mismatched

## Summary

❌ Some consistency checks failed
