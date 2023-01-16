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
[1mexample.c:52:30: [0m[0;1;35mwarning: [0m[1mcomparison of address of 'l_7' not equal to a null pointer is always true [-Wtautological-pointer-compare][0m
        g_3 |= ((void*)0 != &l_7);
[0;1;32m                ~~~~~~~~     ^~~
[0m1 warning generated.
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
[1mexample.c:52:30: [0m[0;1;35mwarning: [0m[1mcomparison of address of 'l_7' not equal to a null pointer is always true [-Wtautological-pointer-compare][0m
        g_3 |= ((void*)0 != &l_7);
[0;1;32m                ~~~~~~~~     ^~~
[0m1 warning generated.
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
[1mexample.c:52:30: [0m[0;1;35mwarning: [0m[1mcomparison of address of 'l_7' not equal to a null pointer is always true [-Wtautological-pointer-compare][0m
        g_3 |= ((void*)0 != &l_7);
[0;1;32m                ~~~~~~~~     ^~~
[0m1 warning generated.
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

Before variable `l_2` (decl src line 35)
Before variable `l_7` (decl src line 36)
Store to `l_7` (decl src line 36), asm line 121
  %inc23 = add nsw i32 %14, 1, l44 c35, asm line 120
  Added assignment starting at src line 44, column 35
Store to `l_7` (decl src line 36), asm line 64
  const i32 9
  Added assignment starting at src line 44, column 14
Store to `l_7` (decl src line 36), asm line 54
  %xor = xor i32 %5, %conv, l42 c13, asm line 53
  Added assignment starting at src line 42, column 13
Store to `l_7` (decl src line 36), asm line 30
  const i32 9
  Added assignment starting at src line 36, column 13
Before variable `i` (decl src line 37)
Before variable `l_6` (decl src line 40)
Before variable `i` (decl src line 41)
Before variable `j` (decl src line 41)
Before variable `k` (decl src line 41)
Before variable `l_13` (decl src line 46)
Store to `l_13` (decl src line 46), asm line 74
  const i32 -4
  Added assignment starting at src line 46, column 18
Before variable `l_14` (decl src line 47)
Before variable `i` (decl src line 48)
Store to `i` (decl src line 48), asm line 95
  %inc = add nsw i32 %10, 1, l49 c29, asm line 94
  Added assignment starting at src line 49, column 29
Store to `i` (decl src line 48), asm line 77
  const i32 0
  Added assignment starting at src line 49, column 16

After variable `l_7` (decl src line 36)
@dbg.value mapping for `l_7` (decl src line 36), asm line 14
Value produced for `l_7` (decl src line 36), asm line 14
  const i32 9
  Added assignment starting at src line 36, column 0
After variable `i` (decl src line 37)
❌ After variable intrinsic with undef input, asm line 15
  @dbg.declare(i32* undef, !46), l37 c9
After variable `l_7` (decl src line 36)
❌ After variable intrinsic with undef input, asm line 16
  @dbg.value(i32 undef, !45)
After variable `l_7` (decl src line 36)
❌ After variable intrinsic with undef input, asm line 17
  @dbg.value(i32 undef, !45, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_xor, DW_OP_stack_value))
After variable `l_7` (decl src line 36)
@dbg.value mapping for `l_7` (decl src line 36), asm line 19
Value produced for `l_7` (decl src line 36), asm line 19
  const i32 9
  Value is same as last assignment, skipping

❌ 10 before variables found, 2 after variables found, 8 mismatched

### Assignments

❌ Before live ranges for `i` (decl src line 37) not found
❌ Before live ranges for `i` (decl src line 41) not found
❌ After live ranges for `i` (decl src line 48) not found
❌ Before live ranges for `j` (decl src line 41) not found
❌ Before live ranges for `k` (decl src line 41) not found
❌ After live ranges for `l_13` (decl src line 46) not found
❌ Before live ranges for `l_14` (decl src line 47) not found
❌ Before live ranges for `l_2` (decl src line 35) not found
❌ Before live ranges for `l_6` (decl src line 40) not found
❌ 1 before live ranges covered, 9 uncovered

### Symbolic values

#### Before values

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
[0mCollected value for `l_7`
i32 9
0x9
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
[0m
#### After values

Collected value for `l_7`
i32 9
0x9

#### Check before against after

❌ After live range for `i` (decl src line 48) not found
❌ After live range for `i` (decl src line 48) not found
❌ After live range for `l_13` (decl src line 46) not found
Checking equivalence of `l_7` (decl src line 36) from
assn 0, src line 36, column 13
i32 9
0x9
and
assn 0, src line 36, column 0
i32 9
0x9
🔔 After assn 0, src line 36, column 0 doesn't match before assn 1, src line 42, column 13
Expected 1 symbolic value(s), got 0
❌ Before `l_7` (decl src line 36) assn 1, src line 42, column 13 has no symbolic value from %xor = xor i32 %7, %conv, l42 c13
🔔 After assn 0, src line 36, column 0 doesn't match before assn 2, src line 44, column 14
Expected 1 symbolic value(s), got 0
❌ Before `l_7` (decl src line 36) assn 2, src line 44, column 14 has no symbolic value from i32 9
🔔 After assn 0, src line 36, column 0 doesn't match before assn 3, src line 44, column 35
Expected 1 symbolic value(s), got 0
❌ Before `l_7` (decl src line 36) assn 3, src line 44, column 35 has no symbolic value from %inc23 = add nsw i32 %16, 1, l44 c35
❌ Before checked against after: 1 matching symbolic values, 6 mismatched

#### Check after against before

Checking equivalence of `l_7` (decl src line 36) from
assn 0, src line 36, column 0
i32 9
0x9
and
assn 0, src line 36, column 13
i32 9
0x9
✅ After checked against before: 1 matching symbolic values, 0 mismatched

## Summary

❌ Some consistency checks failed
