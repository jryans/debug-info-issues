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
[1mexample.c:70:35: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*g_23) = func_2(((*l_19) = ((g_8 , (g_17 = (g_16 ^= (+(((*l_12) = l_10) != g_13))))) | g_18)), g_18, g_21, &g_22[1], &g_22[2]);
[0;1;32m                                  ^~~
[0m1 warning generated.
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:70:35: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*g_23) = func_2(((*l_19) = ((g_8 , (g_17 = (g_16 ^= (+(((*l_12) = l_10) != g_13))))) | g_18)), g_18, g_21, &g_22[1], &g_22[2]);
[0;1;32m                                  ^~~
[0m1 warning generated.
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
[1mexample.c:70:35: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*g_23) = func_2(((*l_19) = ((g_8 , (g_17 = (g_16 ^= (+(((*l_12) = l_10) != g_13))))) | g_18)), g_18, g_21, &g_22[1], &g_22[2]);
[0;1;32m                                  ^~~
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

Before variable `l_10` (decl src line 64)
Store to `l_10` (decl src line 64), asm line 36
  const i32* null
  Added assignment starting at src line 64, column 14
Before variable `l_11` (decl src line 65)
Store to `l_11` (decl src line 65), asm line 38
  const i32** null
  Added assignment starting at src line 65, column 15
Before variable `l_12` (decl src line 66)
Store to `l_12` (decl src line 66), asm line 40
  %l_10 = alloca i32*, asm line 27
  Added assignment starting at src line 66, column 15
Before variable `l_15` (decl src line 67)
Before variable `l_19` (decl src line 68)
Store to `l_19` (decl src line 68), asm line 45
  global g_20
  Added assignment starting at src line 68, column 14
Before variable `i` (decl src line 69)
Before variable `j` (decl src line 69)
Before variable `k` (decl src line 69)

After variable `l_10` (decl src line 64)
@dbg.value mapping for `l_10` (decl src line 64), asm line 26
Value produced for `l_10` (decl src line 64), asm line 26
  const i32* null
  Added assignment starting at src line 64, column 0
After variable `l_11` (decl src line 65)
@dbg.value mapping for `l_11` (decl src line 65), asm line 27
Value produced for `l_11` (decl src line 65), asm line 27
  const i32** null
  Added assignment starting at src line 65, column 0
After variable `l_12` (decl src line 66)
After variable intrinsic with undef input, asm line 28, ignoring undefined variable
  @dbg.value(i32** undef, !81)
After variable `l_19` (decl src line 68)
@dbg.value mapping for `l_19` (decl src line 68), asm line 29
Value produced for `l_19` (decl src line 68), asm line 29
  global g_20
  Added assignment starting at src line 68, column 0
After variable `i` (decl src line 69)
After variable intrinsic with undef input, asm line 30, ignoring undefined variable
  @dbg.declare(i32* undef, !89), l69 c9
After variable `j` (decl src line 69)
After variable intrinsic with undef input, asm line 31, ignoring undefined variable
  @dbg.declare(i32* undef, !90), l69 c12
After variable `k` (decl src line 69)
After variable intrinsic with undef input, asm line 32, ignoring undefined variable
  @dbg.declare(i32* undef, !91), l69 c15
After variable `l_10` (decl src line 64)
@dbg.value mapping for `l_10` (decl src line 64), asm line 33
Value produced for `l_10` (decl src line 64), asm line 33
  const i32* null
  Value is same as last assignment, skipping

❌ 8 before variables found, 7 after variables found, 1 mismatched

### Assignments

❌ After live ranges for `l_12` (decl src line 66) not found
🔔 Before live ranges for `l_15` (decl src line 67) not found, variable likely undefined
🔔 Before live ranges for `i` (decl src line 69) not found, variable likely undefined
🔔 Before live ranges for `j` (decl src line 69) not found, variable likely undefined
🔔 Before live ranges for `k` (decl src line 69) not found, variable likely undefined
❌ 3 before live ranges covered, 1 uncovered, 4 undefined

### Symbolic values

#### Before values

Collected value for `l_10`
i32* null
0x0
Collected value for `l_11`
i32** null
0x0
Concrete pointer resolves to l_10, offset 0x0
Replaced concrete pointer with hash 0x6F12609E9AE82E02
Collected value for `l_12`
%l_10 = alloca i32*
0x6F12609E9AE82E02
[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0mConcrete pointer resolves to g_20, offset 0x0
Replaced concrete pointer with hash 0xC0BCAC4766056EC8
Collected value for `l_19`
@g_20 = global i32 1817629194, align 4, !dbg !37
0xC0BCAC4766056EC8
[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m
#### After values

Collected value for `l_10`
i32* null
0x0
Collected value for `l_11`
i32** null
0x0
Concrete pointer resolves to g_20, offset 0x0
Replaced concrete pointer with hash 0xC0BCAC4766056EC8
Collected value for `l_19`
@g_20 = local_unnamed_addr global i32 1817629194, align 4, !dbg !37
0xC0BCAC4766056EC8
[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0m
#### Check before against after

Checking equivalence of `l_10` (decl src line 64) from
assn 0, src line 64, column 14
i32* null
0x0
and
assn 0, src line 64, column 0
i32* null
0x0
Checking equivalence of `l_11` (decl src line 65) from
assn 0, src line 65, column 15
i32** null
0x0
and
assn 0, src line 65, column 0
i32** null
0x0
❌ After live range for `l_12` (decl src line 66) not found
Checking equivalence of `l_19` (decl src line 68) from
assn 0, src line 68, column 14
@g_20 = global i32 1817629194, align 4, !dbg !37
0xC0BCAC4766056EC8
and
assn 0, src line 68, column 0
@g_20 = local_unnamed_addr global i32 1817629194, align 4, !dbg !37
0xC0BCAC4766056EC8
❌ Before checked against after: 3 matching symbolic values, 1 mismatched

#### Check after against before

Checking equivalence of `l_10` (decl src line 64) from
assn 0, src line 64, column 0
i32* null
0x0
and
assn 0, src line 64, column 14
i32* null
0x0
Checking equivalence of `l_11` (decl src line 65) from
assn 0, src line 65, column 0
i32** null
0x0
and
assn 0, src line 65, column 15
i32** null
0x0
Checking equivalence of `l_19` (decl src line 68) from
assn 0, src line 68, column 0
@g_20 = local_unnamed_addr global i32 1817629194, align 4, !dbg !37
0xC0BCAC4766056EC8
and
assn 0, src line 68, column 14
@g_20 = global i32 1817629194, align 4, !dbg !37
0xC0BCAC4766056EC8
✅ After checked against before: 3 matching symbolic values, 0 mismatched

## Function `func_2`

✅ Before and after function names match

### Variables

Before variable `p_3` (decl src line 81)
Store to `p_3` (decl src line 81), asm line 96
  arg 0
  Added assignment starting at src line 81, column 0
Before variable `p_4` (decl src line 81)
Store to `p_4` (decl src line 81), asm line 98
  arg 1
  Added assignment starting at src line 81, column 0
Before variable `p_5` (decl src line 81)
Store to `p_5` (decl src line 81), asm line 100
  arg 2
  Added assignment starting at src line 81, column 0
Before variable `p_6` (decl src line 81)
Store to `p_6` (decl src line 81), asm line 102
  arg 3
  Added assignment starting at src line 81, column 0
Before variable `p_7` (decl src line 81)
Store to `p_7` (decl src line 81), asm line 104
  arg 4
  Added assignment starting at src line 81, column 0

After variable `p_3` (decl src line 81)
After variable intrinsic with undef input, asm line 68, ignoring undefined variable
  @dbg.value(i32 undef, !126)
After variable `p_4` (decl src line 81)
After variable intrinsic with undef input, asm line 69, ignoring undefined variable
  @dbg.value(i32 undef, !127)
After variable `p_5` (decl src line 81)
After variable intrinsic with undef input, asm line 70, ignoring undefined variable
  @dbg.value(i32* undef, !128)
After variable `p_6` (decl src line 81)
After variable intrinsic with undef input, asm line 71, ignoring undefined variable
  @dbg.value(i32* undef, !129)
After variable `p_7` (decl src line 81)
After variable intrinsic with undef input, asm line 72, ignoring undefined variable
  @dbg.value(i32* undef, !130)

✅ 5 before variables found, 5 after variables found, 0 mismatched

### Assignments

❌ After live ranges for `p_3` (decl src line 81) not found
❌ After live ranges for `p_4` (decl src line 81) not found
❌ After live ranges for `p_5` (decl src line 81) not found
❌ After live ranges for `p_6` (decl src line 81) not found
❌ After live ranges for `p_7` (decl src line 81) not found
❌ 0 before live ranges covered, 5 uncovered, 0 undefined

### Symbolic values

#### Before values

Collected value for `p_3`
i32 %p_3
(ReadLSB w32 0x0 p_3)
Collected value for `p_4`
i32 %p_4
(ReadLSB w32 0x0 p_4)
Concrete pointer resolves to p_5.deref, offset 0x0
Replaced concrete pointer with hash 0xF04EB4789E5781E4
Collected value for `p_5`
i32* %p_5
0xF04EB4789E5781E4
Concrete pointer resolves to p_6.deref, offset 0x0
Replaced concrete pointer with hash 0x1EE368DFADD7E3B5
Collected value for `p_6`
i32* %p_6
0x1EE368DFADD7E3B5
Concrete pointer resolves to p_7.deref, offset 0x0
Replaced concrete pointer with hash 0x841AD7EDAD603979
Collected value for `p_7`
i32* %p_7
0x841AD7EDAD603979

#### After values


#### Check before against after

❌ After live range for `p_3` (decl src line 81) not found
❌ After live range for `p_4` (decl src line 81) not found
❌ After live range for `p_5` (decl src line 81) not found
❌ After live range for `p_6` (decl src line 81) not found
❌ After live range for `p_7` (decl src line 81) not found
❌ Before checked against after: 0 matching symbolic values, 5 mismatched

#### Check after against before

✅ After checked against before: 0 matching symbolic values, 0 mismatched

## Summary

❌ Some consistency checks failed
