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
[1mexample.c:48:128: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    l_24 = func_2((g_17 = ((((((int8_t)((uint16_t)g_10 + (uint16_t)g_11) + (int8_t)(((uint32_t)g_11 % (uint32_t)l_14) < l_15)) | l_15) , g_10) >= l_14) > g_11)), g_11, g_11);
[0;1;32m                              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~
[0m[1mexample.c:49:26: [0m[0;1;35mwarning: [0m[1mequality comparison with extraneous parentheses [-Wparentheses-equality][0m
    for (l_24 = 0; (l_24 == (-24)); l_24 -= 7)
[0;1;32m                    ~~~~~^~~~~~~~
[0m[1mexample.c:49:26: [0m[0;1;30mnote: [0mremove extraneous parentheses around the comparison to silence this warning[0m
    for (l_24 = 0; (l_24 == (-24)); l_24 -= 7)
[0;1;32m                   ~     ^       ~
[0m[1mexample.c:49:26: [0m[0;1;30mnote: [0muse '=' to turn this equality comparison into an assignment[0m
    for (l_24 = 0; (l_24 == (-24)); l_24 -= 7)
[0;1;32m                         ^~
[0m[0;32m                         =
[0m[1mexample.c:53:17: [0m[0;1;35mwarning: [0m[1massigning to 'int32_t *' (aka 'int *') from 'uint32_t *' (aka 'unsigned int *') converts between pointers to integer types with different sign [-Wpointer-sign][0m
        (*g_32) = g_30;
[0;1;32m                ^ ~~~~
[0m3 warnings generated.
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:48:128: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    l_24 = func_2((g_17 = ((((((int8_t)((uint16_t)g_10 + (uint16_t)g_11) + (int8_t)(((uint32_t)g_11 % (uint32_t)l_14) < l_15)) | l_15) , g_10) >= l_14) > g_11)), g_11, g_11);
[0;1;32m                              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~
[0m[1mexample.c:49:26: [0m[0;1;35mwarning: [0m[1mequality comparison with extraneous parentheses [-Wparentheses-equality][0m
    for (l_24 = 0; (l_24 == (-24)); l_24 -= 7)
[0;1;32m                    ~~~~~^~~~~~~~
[0m[1mexample.c:49:26: [0m[0;1;30mnote: [0mremove extraneous parentheses around the comparison to silence this warning[0m
    for (l_24 = 0; (l_24 == (-24)); l_24 -= 7)
[0;1;32m                   ~     ^       ~
[0m[1mexample.c:49:26: [0m[0;1;30mnote: [0muse '=' to turn this equality comparison into an assignment[0m
    for (l_24 = 0; (l_24 == (-24)); l_24 -= 7)
[0;1;32m                         ^~
[0m[0;32m                         =
[0m[1mexample.c:53:17: [0m[0;1;35mwarning: [0m[1massigning to 'int32_t *' (aka 'int *') from 'uint32_t *' (aka 'unsigned int *') converts between pointers to integer types with different sign [-Wpointer-sign][0m
        (*g_32) = g_30;
[0;1;32m                ^ ~~~~
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
[1mexample.c:48:128: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    l_24 = func_2((g_17 = ((((((int8_t)((uint16_t)g_10 + (uint16_t)g_11) + (int8_t)(((uint32_t)g_11 % (uint32_t)l_14) < l_15)) | l_15) , g_10) >= l_14) > g_11)), g_11, g_11);
[0;1;32m                              ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~
[0m[1mexample.c:49:26: [0m[0;1;35mwarning: [0m[1mequality comparison with extraneous parentheses [-Wparentheses-equality][0m
    for (l_24 = 0; (l_24 == (-24)); l_24 -= 7)
[0;1;32m                    ~~~~~^~~~~~~~
[0m[1mexample.c:49:26: [0m[0;1;30mnote: [0mremove extraneous parentheses around the comparison to silence this warning[0m
    for (l_24 = 0; (l_24 == (-24)); l_24 -= 7)
[0;1;32m                   ~     ^       ~
[0m[1mexample.c:49:26: [0m[0;1;30mnote: [0muse '=' to turn this equality comparison into an assignment[0m
    for (l_24 = 0; (l_24 == (-24)); l_24 -= 7)
[0;1;32m                         ^~
[0m[0;32m                         =
[0m[1mexample.c:53:17: [0m[0;1;35mwarning: [0m[1massigning to 'int32_t *' (aka 'int *') from 'uint32_t *' (aka 'unsigned int *') converts between pointers to integer types with different sign [-Wpointer-sign][0m
        (*g_32) = g_30;
[0;1;32m                ^ ~~~~
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

Before variable `l_14` (decl src line 42)
Store to `l_14` (decl src line 42), asm line 31
  const i8 1
  Added assignment starting at src line 42, column 12
Before variable `l_15` (decl src line 43)
Store to `l_15` (decl src line 43), asm line 33
  const i16 -1
  Added assignment starting at src line 43, column 14
Before variable `l_16` (decl src line 44)
Before variable `l_24` (decl src line 45)
Store to `l_24` (decl src line 45), asm line 107
  %sub = sub nsw i32 %17, 7, l49 c42, asm line 106
  Added assignment starting at src line 49, column 42
Store to `l_24` (decl src line 45), asm line 83
  const i32 0
  Added assignment starting at src line 49, column 15
Store to `l_24` (decl src line 45), asm line 82
  %call = call i32 @func_2(i32 %conv19, i32 %conv20, i8 signext %11), l48 c12, asm line 81
  Added assignment starting at src line 48, column 12
Store to `l_24` (decl src line 45), asm line 38
  const i32 1
  Added assignment starting at src line 45, column 13
Before variable `l_31` (decl src line 46)
Store to `l_31` (decl src line 46), asm line 98
  %conv24 = zext i1 %cmp23 to i32, l52 c22, asm line 97
  Added assignment starting at src line 52, column 22
Store to `l_31` (decl src line 46), asm line 40
  const i32 8
  Added assignment starting at src line 46, column 13
Before variable `i` (decl src line 47)
Before variable `j` (decl src line 47)
Before variable `k` (decl src line 47)
Before variable `l_27` (decl src line 51)
Store to `l_27` (decl src line 51), asm line 93
  const i32*** null
  Added assignment starting at src line 51, column 21

After variable `l_14` (decl src line 42)
@dbg.value mapping for `l_14` (decl src line 42), asm line 22
Value produced for `l_14` (decl src line 42), asm line 22
  const i8 1
  Added assignment starting at src line 42, column 0
After variable `l_15` (decl src line 43)
@dbg.value mapping for `l_15` (decl src line 43), asm line 23
Value produced for `l_15` (decl src line 43), asm line 23
  const i16 -1
  Added assignment starting at src line 43, column 0
After variable `l_24` (decl src line 45)
@dbg.value mapping for `l_24` (decl src line 45), asm line 24
Value produced for `l_24` (decl src line 45), asm line 24
  const i32 1
  Added assignment starting at src line 45, column 0
After variable `l_31` (decl src line 46)
@dbg.value mapping for `l_31` (decl src line 46), asm line 25
Value produced for `l_31` (decl src line 46), asm line 25
  const i32 8
  Added assignment starting at src line 46, column 0
After variable `i` (decl src line 47)
After variable intrinsic with undef input, asm line 26, ignoring undefined variable
  @dbg.declare(i32* undef, !69), l47 c9
After variable `j` (decl src line 47)
After variable intrinsic with undef input, asm line 27, ignoring undefined variable
  @dbg.declare(i32* undef, !70), l47 c12
After variable `k` (decl src line 47)
After variable intrinsic with undef input, asm line 28, ignoring undefined variable
  @dbg.declare(i32* undef, !71), l47 c15
After variable `l_24` (decl src line 45)
@dbg.value mapping for `l_24` (decl src line 45), asm line 38
Value produced for `l_24` (decl src line 45), asm line 38
  %call = call i32 @func_2(i32 undef, i32 undef, i8 signext undef), l48 c12, asm line 37
  Added assignment starting at src line 48, column 12
After variable `l_24` (decl src line 45)
@dbg.value mapping for `l_24` (decl src line 45), asm line 39
Value produced for `l_24` (decl src line 45), asm line 39
  const i32 0
❌ Value produced for `l_24` (decl src line 45): missing line info
After variable `l_24` (decl src line 45)
@dbg.value mapping for `l_24` (decl src line 45), asm line 40
Value produced for `l_24` (decl src line 45), asm line 40
  const i32 0
❌ Value produced for `l_24` (decl src line 45): missing line info

❌ 9 before variables found, 7 after variables found, 2 mismatched

### Assignments

🔔 Before live ranges for `i` (decl src line 47) not found, variable likely undefined
🔔 Before live ranges for `j` (decl src line 47) not found, variable likely undefined
🔔 Before live ranges for `k` (decl src line 47) not found, variable likely undefined
🔔 Before live ranges for `l_16` (decl src line 44) not found, variable likely undefined
❌ After live ranges for `l_27` (decl src line 51) not found
❌ 4 before live ranges covered, 1 uncovered, 4 undefined

### Symbolic values

#### Before values

Collected value for `l_14`
i8 1
0x1
Collected value for `l_15`
i16 -1
0xFFFF
[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0mCollected value for `l_24`
i32 1
0x1
Collected value for `l_31`
i32 8
0x8
Collected value for `l_24`
%call = call i32 @func_2(i32 %conv19, i32 %conv20, i8 signext %12), l48 c12
(ReadLSB w32 0x0 func_2)
Collected value for `l_24`
i32 0
0x0

#### After values

Collected value for `l_14`
i8 1
0x1
Collected value for `l_15`
i16 -1
0xFFFF
Collected value for `l_24`
i32 1
0x1
Collected value for `l_31`
i32 8
0x8
Collected value for `l_24`
%call = call i32 @func_2(i32 undef, i32 undef, i8 signext undef), l48 c12
(ReadLSB w32 0x0 func_2)

#### Check before against after

Checking equivalence of `l_14` (decl src line 42) from
assn 0, src line 42, column 12
i8 1
0x1
and
assn 0, src line 42, column 0
i8 1
0x1
Checking equivalence of `l_15` (decl src line 43) from
assn 0, src line 43, column 14
i16 -1
0xFFFF
and
assn 0, src line 43, column 0
i16 -1
0xFFFF
Checking equivalence of `l_24` (decl src line 45) from
assn 0, src line 45, column 13
i32 1
0x1
and
assn 0, src line 45, column 0
i32 1
0x1
Checking equivalence of `l_24` (decl src line 45) from
assn 1, src line 48, column 12
%call = call i32 @func_2(i32 %conv19, i32 %conv20, i8 signext %12), l48 c12
(ReadLSB w32 0x0 func_2)
and
assn 1, src line 48, column 12
%call = call i32 @func_2(i32 undef, i32 undef, i8 signext undef), l48 c12
(ReadLSB w32 0x0 func_2)
Query to parse
array func_2[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 func_2)
     (ReadLSB w32 0x0 func_2)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 func_2)
     N0)
🔔 After assn 1, src line 48, column 12 doesn't match before assn 2, src line 49, column 15
Checking equivalence of `l_24` (decl src line 45) from
assn 2, src line 49, column 15
i32 0
0x0
and
assn 1, src line 48, column 12
%call = call i32 @func_2(i32 undef, i32 undef, i8 signext undef), l48 c12
(ReadLSB w32 0x0 func_2)
Query to parse
array func_2[4] : w32 -> w8 = symbolic
(query [] (Eq 0x0
     (ReadLSB w32 0x0 func_2)))
Parsed query
(Eq 0x0
     (ReadLSB w32 0x0 func_2))
❌ Symbolic values don't match:
(Eq 0x0
     (ReadLSB w32 0x0 func_2))
🔔 After assn 1, src line 48, column 12 doesn't match before assn 3, src line 49, column 42
Expected 1 symbolic value(s), got 0
❌ Before `l_24` (decl src line 45) assn 3, src line 49, column 42 has no symbolic value from %sub = sub nsw i32 %18, 7, l49 c42
❌ After live range for `l_27` (decl src line 51) not found
Checking equivalence of `l_31` (decl src line 46) from
assn 0, src line 46, column 13
i32 8
0x8
and
assn 0, src line 46, column 0
i32 8
0x8
🔔 After assn 0, src line 46, column 0 doesn't match before assn 1, src line 52, column 22
Expected 1 symbolic value(s), got 0
❌ Before `l_31` (decl src line 46) assn 1, src line 52, column 22 has no symbolic value from %conv24 = zext i1 %cmp23 to i32, l52 c22
❌ Before checked against after: 5 matching symbolic values, 4 mismatched

#### Check after against before

Checking equivalence of `l_14` (decl src line 42) from
assn 0, src line 42, column 0
i8 1
0x1
and
assn 0, src line 42, column 12
i8 1
0x1
Checking equivalence of `l_15` (decl src line 43) from
assn 0, src line 43, column 0
i16 -1
0xFFFF
and
assn 0, src line 43, column 14
i16 -1
0xFFFF
Checking equivalence of `l_24` (decl src line 45) from
assn 0, src line 45, column 0
i32 1
0x1
and
assn 0, src line 45, column 13
i32 1
0x1
Checking equivalence of `l_24` (decl src line 45) from
assn 1, src line 48, column 12
%call = call i32 @func_2(i32 undef, i32 undef, i8 signext undef), l48 c12
(ReadLSB w32 0x0 func_2)
and
assn 1, src line 48, column 12
%call = call i32 @func_2(i32 %conv19, i32 %conv20, i8 signext %12), l48 c12
(ReadLSB w32 0x0 func_2)
Query to parse
array func_2[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 func_2)
     (ReadLSB w32 0x0 func_2)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 func_2)
     N0)
Checking equivalence of `l_31` (decl src line 46) from
assn 0, src line 46, column 0
i32 8
0x8
and
assn 0, src line 46, column 13
i32 8
0x8
✅ After checked against before: 5 matching symbolic values, 0 mismatched

## Function `func_2`

✅ Before and after function names match

### Variables

Before variable `p_3` (decl src line 64)
Store to `p_3` (decl src line 64), asm line 192
  %add = add i32 %5, 1, l75 c32, asm line 191
  Added assignment starting at src line 75, column 32
Store to `p_3` (decl src line 64), asm line 174
  const i32 0
  Added assignment starting at src line 75, column 14
Store to `p_3` (decl src line 64), asm line 134
  arg 0
  Added assignment starting at src line 64, column 0
Before variable `p_4` (decl src line 64)
Store to `p_4` (decl src line 64), asm line 136
  arg 1
  Added assignment starting at src line 64, column 0
Before variable `p_5` (decl src line 64)
Store to `p_5` (decl src line 64), asm line 138
  arg 2
  Added assignment starting at src line 64, column 0
Before variable `l_18` (decl src line 66)
Before variable `l_19` (decl src line 67)
Store to `l_19` (decl src line 67), asm line 142
  const i32*** null
  Added assignment starting at src line 67, column 17
Before variable `l_20` (decl src line 68)
Store to `l_20` (decl src line 68), asm line 144
  const i32*** null
  Added assignment starting at src line 68, column 17
Before variable `l_23` (decl src line 69)
Store to `l_23` (decl src line 69), asm line 146
  global g_17
  Added assignment starting at src line 69, column 15
Before variable `l_22` (decl src line 70)
Store to `l_22` (decl src line 70), asm line 148
  %l_23 = alloca i32*, asm line 130
  Added assignment starting at src line 70, column 16
Before variable `l_21` (decl src line 71)
Store to `l_21` (decl src line 71), asm line 150
  %l_22 = alloca i32**, asm line 131
  Added assignment starting at src line 71, column 17
Before variable `i` (decl src line 72)
Store to `i` (decl src line 72), asm line 170
  %inc = add nsw i32 %2, 1, l73 c25, asm line 169
  Added assignment starting at src line 73, column 25
Store to `i` (decl src line 72), asm line 152
  const i32 0
  Added assignment starting at src line 73, column 12

After variable `p_3` (decl src line 64)
After variable intrinsic with undef input, asm line 56, ignoring undefined variable
  @dbg.value(i32 undef, !100)
After variable `p_4` (decl src line 64)
After variable intrinsic with undef input, asm line 57, ignoring undefined variable
  @dbg.value(i32 undef, !101)
After variable `p_5` (decl src line 64)
After variable intrinsic with undef input, asm line 58, ignoring undefined variable
  @dbg.value(i8 undef, !102)
After variable `l_18` (decl src line 66)
After variable `l_19` (decl src line 67)
@dbg.value mapping for `l_19` (decl src line 67), asm line 62
Value produced for `l_19` (decl src line 67), asm line 62
  const i32*** null
  Added assignment starting at src line 67, column 0
After variable `l_20` (decl src line 68)
@dbg.value mapping for `l_20` (decl src line 68), asm line 63
Value produced for `l_20` (decl src line 68), asm line 63
  const i32*** null
  Added assignment starting at src line 68, column 0
After variable `l_23` (decl src line 69)
@dbg.value mapping for `l_23` (decl src line 69), asm line 64
Value produced for `l_23` (decl src line 69), asm line 64
  global g_17
  Added assignment starting at src line 69, column 0
After variable `l_22` (decl src line 70)
After variable intrinsic with undef input, asm line 65, ignoring undefined variable
  @dbg.value(i32** undef, !109)
After variable `l_21` (decl src line 71)
After variable intrinsic with undef input, asm line 66, ignoring undefined variable
  @dbg.value(i32*** undef, !110)
After variable `i` (decl src line 72)
@dbg.value mapping for `i` (decl src line 72), asm line 67
Value produced for `i` (decl src line 72), asm line 67
  const i32 0
  Added assignment starting at src line 72, column 0
After variable `i` (decl src line 72)
@dbg.value mapping for `i` (decl src line 72), asm line 69
Value produced for `i` (decl src line 72), asm line 69
  const i32 undef
❌ Value produced for `i` (decl src line 72): missing line info
After variable `i` (decl src line 72)
@dbg.value mapping for `i` (decl src line 72), asm line 70
Value produced for `i` (decl src line 72), asm line 70
  const i32 undef
❌ Value produced for `i` (decl src line 72): missing line info
After variable `p_3` (decl src line 64)
After variable intrinsic with undef input, asm line 72, ignoring undefined variable
  @dbg.value(i32 undef, !100)
After variable `p_3` (decl src line 64)
After variable intrinsic with undef input, asm line 73, ignoring undefined variable
  @dbg.value(i32 undef, !100, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value))
After variable `l_22` (decl src line 70)
@dbg.value mapping for `l_22` (decl src line 70), asm line 74
Value produced for `l_22` (decl src line 70), asm line 74
  const i32** null
  Added assignment starting at src line 70, column 0

✅ 10 before variables found, 10 after variables found, 0 mismatched

### Assignments

❌ Live ranges for `i` (decl src line 72) don't match: [73.12,∞) vs. [72.0,∞)
🔔 Before live ranges for `l_18` (decl src line 66) not found, variable likely undefined
❌ After live ranges for `l_21` (decl src line 71) not found
❌ After live ranges for `p_3` (decl src line 64) not found
❌ After live ranges for `p_4` (decl src line 64) not found
❌ After live ranges for `p_5` (decl src line 64) not found
❌ 4 before live ranges covered, 5 uncovered, 1 undefined

### Symbolic values

#### Before values

Collected value for `p_3`
i32 %p_3
(ReadLSB w32 0x0 p_3)
Collected value for `p_4`
i32 %p_4
(ReadLSB w32 0x0 p_4)
Collected value for `p_5`
i8 %p_5
(Read w8 0x0 p_5)
Collected value for `l_19`
i32*** null
0x0
Collected value for `l_20`
i32*** null
0x0
Concrete pointer resolves to g_17, offset 0x0
Replaced concrete pointer with hash 0x36175A6F2824AA0E
Collected value for `l_23`
@g_17 = global i32 0, align 4, !dbg !23
0x36175A6F2824AA0E
Concrete pointer resolves to l_23, offset 0x0
Replaced concrete pointer with hash 0xA6445552C6EA3EBC
Collected value for `l_22`
%l_23 = alloca i32*
0xA6445552C6EA3EBC
Concrete pointer resolves to l_22, offset 0x0
Replaced concrete pointer with hash 0x70981A8DA92FCB2
Collected value for `l_21`
%l_22 = alloca i32**
0x70981A8DA92FCB2
Collected value for `i`
i32 0
0x0
Collected value for `i`
%inc = add nsw i32 %2, 1, l73 c25
0x1
Collected value for `p_3`
i32 0
0x0
Collected value for `p_3`
%add = add i32 %5, 1, l75 c32
0x1

#### After values

Collected value for `l_19`
i32*** null
0x0
Collected value for `l_20`
i32*** null
0x0
Concrete pointer resolves to g_17, offset 0x0
Replaced concrete pointer with hash 0x36175A6F2824AA0E
Collected value for `l_23`
@g_17 = global i32 0, align 4, !dbg !23
0x36175A6F2824AA0E
Collected value for `i`
i32 0
0x0
[0;1;35mKLEE: WARNING ONCE: calling external: memset_pattern16(0x10F768BE8, 0x10F76A310, 0x8) at example.c:l0:c0
[0mCollected value for `l_22`
i32** null
0x0

#### Check before against after

🔔 After assn 0, src line 72, column 0 doesn't match before assn 0, src line 73, column 12
Checking equivalence of `i` (decl src line 72) from
assn 0, src line 73, column 12
i32 0
0x0
and
assn 0, src line 72, column 0
i32 0
0x0
🔔 After assn 0, src line 72, column 0 doesn't match before assn 1, src line 73, column 25
Checking equivalence of `i` (decl src line 72) from
assn 1, src line 73, column 25
%inc = add nsw i32 %2, 1, l73 c25
0x1
and
assn 0, src line 72, column 0
i32 0
0x0
Checking equivalence of `l_19` (decl src line 67) from
assn 0, src line 67, column 17
i32*** null
0x0
and
assn 0, src line 67, column 0
i32*** null
0x0
Checking equivalence of `l_20` (decl src line 68) from
assn 0, src line 68, column 17
i32*** null
0x0
and
assn 0, src line 68, column 0
i32*** null
0x0
❌ After live range for `l_21` (decl src line 71) not found
Checking equivalence of `l_22` (decl src line 70) from
assn 0, src line 70, column 16
%l_23 = alloca i32*
0xA6445552C6EA3EBC
and
assn 0, src line 70, column 0
i32** null
0x0
Checking equivalence of `l_23` (decl src line 69) from
assn 0, src line 69, column 15
@g_17 = global i32 0, align 4, !dbg !23
0x36175A6F2824AA0E
and
assn 0, src line 69, column 0
@g_17 = global i32 0, align 4, !dbg !23
0x36175A6F2824AA0E
❌ After live range for `p_3` (decl src line 64) not found
❌ After live range for `p_3` (decl src line 64) not found
❌ After live range for `p_3` (decl src line 64) not found
❌ After live range for `p_4` (decl src line 64) not found
❌ After live range for `p_5` (decl src line 64) not found
❌ Before checked against after: 4 matching symbolic values, 8 mismatched

#### Check after against before

🔔 Before assn 0, src line 73, column 12 doesn't match after assn 0, src line 72, column 0
Checking equivalence of `i` (decl src line 72) from
assn 0, src line 72, column 0
i32 0
0x0
and
assn 0, src line 73, column 12
i32 0
0x0
Checking equivalence of `l_19` (decl src line 67) from
assn 0, src line 67, column 0
i32*** null
0x0
and
assn 0, src line 67, column 17
i32*** null
0x0
Checking equivalence of `l_20` (decl src line 68) from
assn 0, src line 68, column 0
i32*** null
0x0
and
assn 0, src line 68, column 17
i32*** null
0x0
Checking equivalence of `l_22` (decl src line 70) from
assn 0, src line 70, column 0
i32** null
0x0
and
assn 0, src line 70, column 16
%l_23 = alloca i32*
0xA6445552C6EA3EBC
Checking equivalence of `l_23` (decl src line 69) from
assn 0, src line 69, column 0
@g_17 = global i32 0, align 4, !dbg !23
0x36175A6F2824AA0E
and
assn 0, src line 69, column 15
@g_17 = global i32 0, align 4, !dbg !23
0x36175A6F2824AA0E
❌ After checked against before: 4 matching symbolic values, 1 mismatched

## Summary

❌ Some consistency checks failed
