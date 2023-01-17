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
[1mexample.c:44:73: [0m[0;1;35mwarning: [0m[1mshifting a negative signed value is undefined [-Wshift-negative-value][0m
    (*g_9) = (((*l_2) &= 0xA188L) == (((*l_5) = l_4) <= ((int16_t)(-5L) << (int16_t)11)));
[0;1;32m                                                         ~~~~~~~~~~~~~~ ^
[0m[1mexample.c:44:54: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant -10240 with expression of type 'uint8_t' (aka 'unsigned char') is always false [-Wtautological-constant-out-of-range-compare][0m
    (*g_9) = (((*l_2) &= 0xA188L) == (((*l_5) = l_4) <= ((int16_t)(-5L) << (int16_t)11)));
[0;1;32m                                      ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m2 warnings generated.
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
[1mexample.c:44:73: [0m[0;1;35mwarning: [0m[1mshifting a negative signed value is undefined [-Wshift-negative-value][0m
    (*g_9) = (((*l_2) &= 0xA188L) == (((*l_5) = l_4) <= ((int16_t)(-5L) << (int16_t)11)));
[0;1;32m                                                         ~~~~~~~~~~~~~~ ^
[0m[1mexample.c:44:54: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant -10240 with expression of type 'uint8_t' (aka 'unsigned char') is always false [-Wtautological-constant-out-of-range-compare][0m
    (*g_9) = (((*l_2) &= 0xA188L) == (((*l_5) = l_4) <= ((int16_t)(-5L) << (int16_t)11)));
[0;1;32m                                      ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
[0m2 warnings generated.
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
[1mexample.c:44:73: [0m[0;1;35mwarning: [0m[1mshifting a negative signed value is undefined [-Wshift-negative-value][0m
    (*g_9) = (((*l_2) &= 0xA188L) == (((*l_5) = l_4) <= ((int16_t)(-5L) << (int16_t)11)));
[0;1;32m                                                         ~~~~~~~~~~~~~~ ^
[0m[1mexample.c:44:54: [0m[0;1;35mwarning: [0m[1mresult of comparison of constant -10240 with expression of type 'uint8_t' (aka 'unsigned char') is always false [-Wtautological-constant-out-of-range-compare][0m
    (*g_9) = (((*l_2) &= 0xA188L) == (((*l_5) = l_4) <= ((int16_t)(-5L) << (int16_t)11)));
[0;1;32m                                      ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `func_1`

✅ Before and after function names match

### Variables

Before variable `l_2` (decl src line 37)
Store to `l_2` (decl src line 37), asm line 26
  global g_3
  Added assignment starting at src line 37, column 15
Before variable `l_4` (decl src line 38)
Store to `l_4` (decl src line 38), asm line 28
  const i32 1597437661
  Added assignment starting at src line 38, column 13
Before variable `l_5` (decl src line 39)
Store to `l_5` (decl src line 39), asm line 30
  global g_6
  Added assignment starting at src line 39, column 14
Before variable `l_11` (decl src line 40)
Store to `l_11` (decl src line 40), asm line 32
  %l_4 = alloca i32, asm line 17
  Added assignment starting at src line 40, column 14
Before variable `l_12` (decl src line 41)
Store to `l_12` (decl src line 41), asm line 34
  global g_10
  Added assignment starting at src line 41, column 14
Before variable `l_13` (decl src line 42)
Before variable `i` (decl src line 43)
Before variable `j` (decl src line 43)
Before variable `k` (decl src line 43)

After variable `l_2` (decl src line 37)
@dbg.value mapping for `l_2` (decl src line 37), asm line 16
Value produced for `l_2` (decl src line 37), asm line 16
  global g_3
  Added assignment starting at src line 37, column 0
After variable `l_4` (decl src line 38)
@dbg.value mapping for `l_4` (decl src line 38), asm line 17
Value produced for `l_4` (decl src line 38), asm line 17
  const i32 1597437661
  Added assignment starting at src line 38, column 0
After variable `l_5` (decl src line 39)
@dbg.value mapping for `l_5` (decl src line 39), asm line 18
Value produced for `l_5` (decl src line 39), asm line 18
  global g_6
  Added assignment starting at src line 39, column 0
After variable `l_11` (decl src line 40)
❌ After variable intrinsic with undef input, asm line 19
  @dbg.value(i32* undef, !52)
After variable `l_12` (decl src line 41)
@dbg.value mapping for `l_12` (decl src line 41), asm line 20
Value produced for `l_12` (decl src line 41), asm line 20
  global g_10
  Added assignment starting at src line 41, column 0
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 21
Value produced for `l_13` (decl src line 42), asm line 21
  global g_10
  Added assignment starting at src line 42, column 0
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 22
Value produced for `l_13` (decl src line 42), asm line 22
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 23
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 128, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 24
Value produced for `l_13` (decl src line 42), asm line 24
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 25
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 256, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 26
Value produced for `l_13` (decl src line 42), asm line 26
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 27
Value produced for `l_13` (decl src line 42), asm line 27
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 28
Value produced for `l_13` (decl src line 42), asm line 28
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 29
Value produced for `l_13` (decl src line 42), asm line 29
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 30
Value produced for `l_13` (decl src line 42), asm line 30
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 31
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 640, 64))
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 32
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 704, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 33
Value produced for `l_13` (decl src line 42), asm line 33
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 34
Value produced for `l_13` (decl src line 42), asm line 34
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 35
Value produced for `l_13` (decl src line 42), asm line 35
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 36
Value produced for `l_13` (decl src line 42), asm line 36
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 37
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 1024, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 38
Value produced for `l_13` (decl src line 42), asm line 38
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 39
Value produced for `l_13` (decl src line 42), asm line 39
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 40
Value produced for `l_13` (decl src line 42), asm line 40
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 41
Value produced for `l_13` (decl src line 42), asm line 41
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 42
Value produced for `l_13` (decl src line 42), asm line 42
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 43
Value produced for `l_13` (decl src line 42), asm line 43
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 44
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 1472, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 45
Value produced for `l_13` (decl src line 42), asm line 45
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 46
Value produced for `l_13` (decl src line 42), asm line 46
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 47
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 1664, 64))
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 48
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 1728, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 49
Value produced for `l_13` (decl src line 42), asm line 49
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 50
Value produced for `l_13` (decl src line 42), asm line 50
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 51
Value produced for `l_13` (decl src line 42), asm line 51
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 52
Value produced for `l_13` (decl src line 42), asm line 52
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 53
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 2048, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 54
Value produced for `l_13` (decl src line 42), asm line 54
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 55
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 2176, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 56
Value produced for `l_13` (decl src line 42), asm line 56
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 57
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 2304, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 58
Value produced for `l_13` (decl src line 42), asm line 58
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 59
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 2432, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 60
Value produced for `l_13` (decl src line 42), asm line 60
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 61
Value produced for `l_13` (decl src line 42), asm line 61
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 62
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 2624, 64))
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 63
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 2688, 64))
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 64
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 2752, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 65
Value produced for `l_13` (decl src line 42), asm line 65
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 66
Value produced for `l_13` (decl src line 42), asm line 66
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 67
Value produced for `l_13` (decl src line 42), asm line 67
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 68
Value produced for `l_13` (decl src line 42), asm line 68
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 69
Value produced for `l_13` (decl src line 42), asm line 69
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 70
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 3136, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 71
Value produced for `l_13` (decl src line 42), asm line 71
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 72
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 3264, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 73
Value produced for `l_13` (decl src line 42), asm line 73
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 74
Value produced for `l_13` (decl src line 42), asm line 74
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 75
Value produced for `l_13` (decl src line 42), asm line 75
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 76
Value produced for `l_13` (decl src line 42), asm line 76
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 77
Value produced for `l_13` (decl src line 42), asm line 77
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 78
Value produced for `l_13` (decl src line 42), asm line 78
  global g_10
  Value is same as last assignment, skipping
After variable `l_13` (decl src line 42)
❌ After variable intrinsic with undef input, asm line 79
  @dbg.value(i32* undef, !54, !DIExpression(DW_OP_LLVM_fragment, 3712, 64))
After variable `l_13` (decl src line 42)
@dbg.value mapping for `l_13` (decl src line 42), asm line 80
Value produced for `l_13` (decl src line 42), asm line 80
  global g_10
  Value is same as last assignment, skipping
After variable `i` (decl src line 43)
❌ After variable intrinsic with undef input, asm line 81
  @dbg.declare(i32* undef, !59), l43 c9
After variable `j` (decl src line 43)
❌ After variable intrinsic with undef input, asm line 82
  @dbg.declare(i32* undef, !60), l43 c12
After variable `k` (decl src line 43)
❌ After variable intrinsic with undef input, asm line 83
  @dbg.declare(i32* undef, !61), l43 c15

✅ 9 before variables found, 9 after variables found, 0 mismatched

### Assignments

❌ Before live ranges for `i` (decl src line 43) not found
❌ Before live ranges for `j` (decl src line 43) not found
❌ Before live ranges for `k` (decl src line 43) not found
❌ After live ranges for `l_11` (decl src line 40) not found
❌ Before live ranges for `l_13` (decl src line 42) not found
❌ 4 before live ranges covered, 5 uncovered

### Symbolic values

#### Before values

Concrete pointer resolves to g_3, offset 0x0
Replaced concrete pointer with hash 0x21B47D327CD9D433
Collected value for `l_2`
@g_3 = global i16 7157, align 2, !dbg !10
0x21B47D327CD9D433
Collected value for `l_4`
i32 1597437661
0x5F36F6DD
Concrete pointer resolves to g_6, offset 0x0
Replaced concrete pointer with hash 0x8654E5CC41D80D24
Collected value for `l_5`
@g_6 = global i8 2, align 1, !dbg !14
0x8654E5CC41D80D24
Concrete pointer resolves to l_4, offset 0x0
Replaced concrete pointer with hash 0x92B319276797BD6
Collected value for `l_11`
%l_4 = alloca i32
0x92B319276797BD6
Concrete pointer resolves to g_10, offset 0x0
Replaced concrete pointer with hash 0xCABCAAF719A6EAF
Collected value for `l_12`
@g_10 = global i32 -6, align 4, !dbg !18
0xCABCAAF719A6EAF

#### After values

Concrete pointer resolves to g_3, offset 0x0
Replaced concrete pointer with hash 0x21B47D327CD9D433
Collected value for `l_2`
@g_3 = local_unnamed_addr global i16 7157, align 2, !dbg !10
0x21B47D327CD9D433
Collected value for `l_4`
i32 1597437661
0x5F36F6DD
Concrete pointer resolves to g_6, offset 0x0
Replaced concrete pointer with hash 0x8654E5CC41D80D24
Collected value for `l_5`
@g_6 = local_unnamed_addr global i8 2, align 1, !dbg !14
0x8654E5CC41D80D24
Concrete pointer resolves to g_10, offset 0x0
Replaced concrete pointer with hash 0xCABCAAF719A6EAF
Collected value for `l_12`
@g_10 = global i32 -6, align 4, !dbg !18
0xCABCAAF719A6EAF
Concrete pointer resolves to g_10, offset 0x0
Replaced concrete pointer with hash 0xCABCAAF719A6EAF
Collected value for `l_13`
@g_10 = global i32 -6, align 4, !dbg !18
0xCABCAAF719A6EAF

#### Check before against after

❌ After live range for `l_11` (decl src line 40) not found
Checking equivalence of `l_12` (decl src line 41) from
assn 0, src line 41, column 14
@g_10 = global i32 -6, align 4, !dbg !18
0xCABCAAF719A6EAF
and
assn 0, src line 41, column 0
@g_10 = global i32 -6, align 4, !dbg !18
0xCABCAAF719A6EAF
Checking equivalence of `l_2` (decl src line 37) from
assn 0, src line 37, column 15
@g_3 = global i16 7157, align 2, !dbg !10
0x21B47D327CD9D433
and
assn 0, src line 37, column 0
@g_3 = local_unnamed_addr global i16 7157, align 2, !dbg !10
0x21B47D327CD9D433
Checking equivalence of `l_4` (decl src line 38) from
assn 0, src line 38, column 13
i32 1597437661
0x5F36F6DD
and
assn 0, src line 38, column 0
i32 1597437661
0x5F36F6DD
Checking equivalence of `l_5` (decl src line 39) from
assn 0, src line 39, column 14
@g_6 = global i8 2, align 1, !dbg !14
0x8654E5CC41D80D24
and
assn 0, src line 39, column 0
@g_6 = local_unnamed_addr global i8 2, align 1, !dbg !14
0x8654E5CC41D80D24
❌ Before checked against after: 4 matching symbolic values, 1 mismatched

#### Check after against before

Checking equivalence of `l_12` (decl src line 41) from
assn 0, src line 41, column 0
@g_10 = global i32 -6, align 4, !dbg !18
0xCABCAAF719A6EAF
and
assn 0, src line 41, column 14
@g_10 = global i32 -6, align 4, !dbg !18
0xCABCAAF719A6EAF
❌ Before live range for `l_13` (decl src line 42) not found
Checking equivalence of `l_2` (decl src line 37) from
assn 0, src line 37, column 0
@g_3 = local_unnamed_addr global i16 7157, align 2, !dbg !10
0x21B47D327CD9D433
and
assn 0, src line 37, column 15
@g_3 = global i16 7157, align 2, !dbg !10
0x21B47D327CD9D433
Checking equivalence of `l_4` (decl src line 38) from
assn 0, src line 38, column 0
i32 1597437661
0x5F36F6DD
and
assn 0, src line 38, column 13
i32 1597437661
0x5F36F6DD
Checking equivalence of `l_5` (decl src line 39) from
assn 0, src line 39, column 0
@g_6 = local_unnamed_addr global i8 2, align 1, !dbg !14
0x8654E5CC41D80D24
and
assn 0, src line 39, column 14
@g_6 = global i8 2, align 1, !dbg !14
0x8654E5CC41D80D24
❌ After checked against before: 4 matching symbolic values, 1 mismatched

## Summary

❌ Some consistency checks failed
