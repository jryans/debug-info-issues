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
[1mexample.c:57:86: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
    (*l_27) = ((uint64_t)(((g_6 != ((uint64_t)((int64_t)(((func_11((g_15 = 1L), (g_6 || 0xEBL)) , l_26[0]) == g_17) >= l_26[0]) % (int64_t)l_26[0]) % (uint64_t)1L)) & (-5L)) , l_26[0]) / (uint64_t)1L);
[0;1;32m                                                                                     ^  ~~~~~
[0m[1mexample.c:57:86: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
    (*l_27) = ((uint64_t)(((g_6 != ((uint64_t)((int64_t)(((func_11((g_15 = 1L), (g_6 || 0xEBL)) , l_26[0]) == g_17) >= l_26[0]) % (int64_t)l_26[0]) % (uint64_t)1L)) & (-5L)) , l_26[0]) / (uint64_t)1L);
[0;1;32m                                                                                     ^~
[0m[0;32m                                                                                     |
[0m[1mexample.c:57:166: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_27) = ((uint64_t)(((g_6 != ((uint64_t)((int64_t)(((func_11((g_15 = 1L), (g_6 || 0xEBL)) , l_26[0]) == g_17) >= l_26[0]) % (int64_t)l_26[0]) % (uint64_t)1L)) & (-5L)) , l_26[0]) / (uint64_t)1L);
[0;1;32m                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~
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
[1mexample.c:57:86: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
    (*l_27) = ((uint64_t)(((g_6 != ((uint64_t)((int64_t)(((func_11((g_15 = 1L), (g_6 || 0xEBL)) , l_26[0]) == g_17) >= l_26[0]) % (int64_t)l_26[0]) % (uint64_t)1L)) & (-5L)) , l_26[0]) / (uint64_t)1L);
[0;1;32m                                                                                     ^  ~~~~~
[0m[1mexample.c:57:86: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
    (*l_27) = ((uint64_t)(((g_6 != ((uint64_t)((int64_t)(((func_11((g_15 = 1L), (g_6 || 0xEBL)) , l_26[0]) == g_17) >= l_26[0]) % (int64_t)l_26[0]) % (uint64_t)1L)) & (-5L)) , l_26[0]) / (uint64_t)1L);
[0;1;32m                                                                                     ^~
[0m[0;32m                                                                                     |
[0m[1mexample.c:57:166: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_27) = ((uint64_t)(((g_6 != ((uint64_t)((int64_t)(((func_11((g_15 = 1L), (g_6 || 0xEBL)) , l_26[0]) == g_17) >= l_26[0]) % (int64_t)l_26[0]) % (uint64_t)1L)) & (-5L)) , l_26[0]) / (uint64_t)1L);
[0;1;32m                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~
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
[1mexample.c:57:86: [0m[0;1;35mwarning: [0m[1muse of logical '||' with constant operand [-Wconstant-logical-operand][0m
    (*l_27) = ((uint64_t)(((g_6 != ((uint64_t)((int64_t)(((func_11((g_15 = 1L), (g_6 || 0xEBL)) , l_26[0]) == g_17) >= l_26[0]) % (int64_t)l_26[0]) % (uint64_t)1L)) & (-5L)) , l_26[0]) / (uint64_t)1L);
[0;1;32m                                                                                     ^  ~~~~~
[0m[1mexample.c:57:86: [0m[0;1;30mnote: [0muse '|' for a bitwise operation[0m
    (*l_27) = ((uint64_t)(((g_6 != ((uint64_t)((int64_t)(((func_11((g_15 = 1L), (g_6 || 0xEBL)) , l_26[0]) == g_17) >= l_26[0]) % (int64_t)l_26[0]) % (uint64_t)1L)) & (-5L)) , l_26[0]) / (uint64_t)1L);
[0;1;32m                                                                                     ^~
[0m[0;32m                                                                                     |
[0m[1mexample.c:57:166: [0m[0;1;35mwarning: [0m[1mexpression result unused [-Wunused-value][0m
    (*l_27) = ((uint64_t)(((g_6 != ((uint64_t)((int64_t)(((func_11((g_15 = 1L), (g_6 || 0xEBL)) , l_26[0]) == g_17) >= l_26[0]) % (int64_t)l_26[0]) % (uint64_t)1L)) & (-5L)) , l_26[0]) / (uint64_t)1L);
[0;1;32m                           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^ ~~~~~
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

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `func_1`

✅ Before and after function names match

### Variables

Before variable `l_14` (decl src line 46)
Before variable `l_26` (decl src line 47)
Before variable `l_27` (decl src line 48)
Store to `l_27` (decl src line 48), asm line 27
  global g_17
  Added assignment starting at src line 48, column 14
Before variable `i` (decl src line 49)
Store to `i` (decl src line 49), asm line 91
  %inc15 = add nsw i32 %8, 1, l55 c25, asm line 90
  Added assignment starting at src line 55, column 25
Store to `i` (decl src line 49), asm line 73
  const i32 0
  Added assignment starting at src line 55, column 12
Store to `i` (decl src line 49), asm line 69
  %inc7 = add nsw i32 %5, 1, l50 c25, asm line 68
  Added assignment starting at src line 50, column 25
Store to `i` (decl src line 49), asm line 30
  const i32 0
  Added assignment starting at src line 50, column 12
Before variable `j` (decl src line 49)
Store to `j` (decl src line 49), asm line 60
  %inc = add nsw i32 %4, 1, l52 c29, asm line 59
  Added assignment starting at src line 52, column 29
Store to `j` (decl src line 49), asm line 39
  const i32 0
  Added assignment starting at src line 52, column 16

After variable `l_27` (decl src line 48)
@dbg.value mapping for `l_27` (decl src line 48), asm line 18
Value produced for `l_27` (decl src line 48), asm line 18
  global g_17
  Added assignment starting at src line 48, column 0
After variable `i` (decl src line 49)
@dbg.value mapping for `i` (decl src line 49), asm line 19
Value produced for `i` (decl src line 49), asm line 19
  const i32 0
  Added assignment starting at src line 49, column 0
After variable `i` (decl src line 49)
❌ After variable intrinsic with undef input, asm line 20
  @dbg.value(i32 undef, !67)
After variable `j` (decl src line 49)
@dbg.value mapping for `j` (decl src line 49), asm line 21
Value produced for `j` (decl src line 49), asm line 21
  const i32 0
  Added assignment starting at src line 49, column 0
After variable `j` (decl src line 49)
❌ After variable intrinsic with undef input, asm line 22
  @dbg.value(i32 undef, !68)
After variable `l_14` (decl src line 46)
❌ After variable intrinsic with undef input, asm line 23
  @dbg.value(i32 undef, !56)
After variable `j` (decl src line 49)
❌ After variable intrinsic with undef input, asm line 24
  @dbg.value(i32 undef, !68, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value))
After variable `i` (decl src line 49)
❌ After variable intrinsic with undef input, asm line 25
  @dbg.value(i32 undef, !67)
After variable `l_26` (decl src line 47)
@dbg.value mapping for `l_26` (decl src line 47), asm line 26
Value produced for `l_26` (decl src line 47), asm line 26
  const i32 -880701764
  Added assignment starting at src line 47, column 0
After variable `i` (decl src line 49)
@dbg.value mapping for `i` (decl src line 49), asm line 27
Value produced for `i` (decl src line 49), asm line 27
  const i32 1
❌ Value produced for `i` (decl src line 49): missing line info
After variable `i` (decl src line 49)
❌ After variable intrinsic with undef input, asm line 28
  @dbg.value(i32 undef, !67)

✅ 5 before variables found, 5 after variables found, 0 mismatched

### Assignments

❌ Before live ranges for `l_14` (decl src line 46) not found
❌ Before live ranges for `l_26` (decl src line 47) not found
❌ Live ranges for `i` (decl src line 49) don't match: [50.12,∞) vs. [49.0,∞)
❌ Live ranges for `j` (decl src line 49) don't match: [52.16,∞) vs. [49.0,∞)
❌ 1 before live ranges covered, 4 uncovered

### Symbolic values

#### Before values

Concrete pointer resolves to g_17, offset 0x0
Replaced concrete pointer with hash 0x36175A6F2824AA0E
Collected value for `l_27`
@g_17 = global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
Collected value for `i`
i32 0
0x0
Collected value for `j`
i32 0
0x0
Collected value for `j`
%inc = add nsw i32 %4, 1, l52 c29
0x1
Collected value for `i`
%inc7 = add nsw i32 %5, 1, l50 c25
0x1
Collected value for `i`
i32 0
0x0
Collected value for `i`
%inc15 = add nsw i32 %8, 1, l55 c25
0x1

#### After values

Concrete pointer resolves to g_17, offset 0x0
Replaced concrete pointer with hash 0x36175A6F2824AA0E
Collected value for `l_27`
@g_17 = local_unnamed_addr global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
Collected value for `i`
i32 0
0x0
Collected value for `j`
i32 0
0x0
Collected value for `l_26`
i32 -880701764
0xCB818EBC

#### Check before against after

🔔 After assn 0, src line 49, column 0 doesn't match before assn 0, src line 50, column 12
Checking equivalence of `i` (decl src line 49) from
assn 0, src line 50, column 12
i32 0
0x0
and
assn 0, src line 49, column 0
i32 0
0x0
🔔 After assn 0, src line 49, column 0 doesn't match before assn 1, src line 50, column 25
Checking equivalence of `i` (decl src line 49) from
assn 1, src line 50, column 25
%inc7 = add nsw i32 %5, 1, l50 c25
0x1
and
assn 0, src line 49, column 0
i32 0
0x0
🔔 After assn 0, src line 49, column 0 doesn't match before assn 2, src line 55, column 12
Checking equivalence of `i` (decl src line 49) from
assn 2, src line 55, column 12
i32 0
0x0
and
assn 0, src line 49, column 0
i32 0
0x0
🔔 After assn 0, src line 49, column 0 doesn't match before assn 3, src line 55, column 25
Checking equivalence of `i` (decl src line 49) from
assn 3, src line 55, column 25
%inc15 = add nsw i32 %8, 1, l55 c25
0x1
and
assn 0, src line 49, column 0
i32 0
0x0
🔔 After assn 0, src line 49, column 0 doesn't match before assn 0, src line 52, column 16
Checking equivalence of `j` (decl src line 49) from
assn 0, src line 52, column 16
i32 0
0x0
and
assn 0, src line 49, column 0
i32 0
0x0
🔔 After assn 0, src line 49, column 0 doesn't match before assn 1, src line 52, column 29
Checking equivalence of `j` (decl src line 49) from
assn 1, src line 52, column 29
%inc = add nsw i32 %4, 1, l52 c29
0x1
and
assn 0, src line 49, column 0
i32 0
0x0
Checking equivalence of `l_27` (decl src line 48) from
assn 0, src line 48, column 14
@g_17 = global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
and
assn 0, src line 48, column 0
@g_17 = local_unnamed_addr global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
❌ Before checked against after: 4 matching symbolic values, 3 mismatched

#### Check after against before

🔔 Before assn 0, src line 50, column 12 doesn't match after assn 0, src line 49, column 0
Checking equivalence of `i` (decl src line 49) from
assn 0, src line 49, column 0
i32 0
0x0
and
assn 0, src line 50, column 12
i32 0
0x0
🔔 Before assn 0, src line 52, column 16 doesn't match after assn 0, src line 49, column 0
Checking equivalence of `j` (decl src line 49) from
assn 0, src line 49, column 0
i32 0
0x0
and
assn 0, src line 52, column 16
i32 0
0x0
❌ Before live range for `l_26` (decl src line 47) not found
Checking equivalence of `l_27` (decl src line 48) from
assn 0, src line 48, column 0
@g_17 = local_unnamed_addr global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
and
assn 0, src line 48, column 14
@g_17 = global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
❌ After checked against before: 3 matching symbolic values, 1 mismatched

## Function `func_11`

✅ Before and after function names match

### Variables

Before variable `p_12` (decl src line 67)
Store to `p_12` (decl src line 67), asm line 161
  arg 0
  Added assignment starting at src line 67, column 0
Before variable `p_13` (decl src line 67)
Store to `p_13` (decl src line 67), asm line 163
  arg 1
  Added assignment starting at src line 67, column 0
Before variable `l_16` (decl src line 69)
Store to `l_16` (decl src line 69), asm line 166
  global g_17
  Added assignment starting at src line 69, column 14
Before variable `l_18` (decl src line 70)
Store to `l_18` (decl src line 70), asm line 168
  global g_17
  Added assignment starting at src line 70, column 14
Before variable `l_19` (decl src line 71)
Store to `l_19` (decl src line 71), asm line 170
  const i32* null
  Added assignment starting at src line 71, column 14
Before variable `l_20` (decl src line 72)
Store to `l_20` (decl src line 72), asm line 172
  const i32 -242292642
  Added assignment starting at src line 72, column 13
Before variable `l_21` (decl src line 73)
Before variable `i` (decl src line 74)
Before variable `j` (decl src line 74)
Before variable `k` (decl src line 74)

After variable `p_12` (decl src line 67)
❌ After variable intrinsic with undef input, asm line 43
  @dbg.value(i64 undef, !86)
After variable `p_13` (decl src line 67)
❌ After variable intrinsic with undef input, asm line 44
  @dbg.value(i64 undef, !87)
After variable `l_16` (decl src line 69)
@dbg.value mapping for `l_16` (decl src line 69), asm line 45
Value produced for `l_16` (decl src line 69), asm line 45
  global g_17
  Added assignment starting at src line 69, column 0
After variable `l_18` (decl src line 70)
@dbg.value mapping for `l_18` (decl src line 70), asm line 46
Value produced for `l_18` (decl src line 70), asm line 46
  global g_17
  Added assignment starting at src line 70, column 0
After variable `l_19` (decl src line 71)
@dbg.value mapping for `l_19` (decl src line 71), asm line 47
Value produced for `l_19` (decl src line 71), asm line 47
  const i32* null
  Added assignment starting at src line 71, column 0
After variable `l_20` (decl src line 72)
@dbg.value mapping for `l_20` (decl src line 72), asm line 48
Value produced for `l_20` (decl src line 72), asm line 48
  const i32 -242292642
  Added assignment starting at src line 72, column 0
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 49
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 0, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 50
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 64, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 51
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 128, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 52
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 192, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 53
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 256, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 54
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 320, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 55
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 384, 64))
After variable `l_21` (decl src line 73)
@dbg.value mapping for `l_21` (decl src line 73), asm line 56
Value produced for `l_21` (decl src line 73), asm line 56
  const i32* null
  Added assignment starting at src line 73, column 0
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 57
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 512, 64))
After variable `l_21` (decl src line 73)
@dbg.value mapping for `l_21` (decl src line 73), asm line 58
Value produced for `l_21` (decl src line 73), asm line 58
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 59
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 640, 64))
After variable `l_21` (decl src line 73)
@dbg.value mapping for `l_21` (decl src line 73), asm line 60
Value produced for `l_21` (decl src line 73), asm line 60
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 61
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 768, 64))
After variable `l_21` (decl src line 73)
@dbg.value mapping for `l_21` (decl src line 73), asm line 62
Value produced for `l_21` (decl src line 73), asm line 62
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 63
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 896, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 64
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 960, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 65
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 1024, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 66
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 1088, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 67
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 1152, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 68
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 1216, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 69
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 1280, 64))
After variable `l_21` (decl src line 73)
@dbg.value mapping for `l_21` (decl src line 73), asm line 70
Value produced for `l_21` (decl src line 73), asm line 70
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 71
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 1408, 64))
After variable `l_21` (decl src line 73)
@dbg.value mapping for `l_21` (decl src line 73), asm line 72
Value produced for `l_21` (decl src line 73), asm line 72
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 73
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 1536, 64))
After variable `l_21` (decl src line 73)
@dbg.value mapping for `l_21` (decl src line 73), asm line 74
Value produced for `l_21` (decl src line 73), asm line 74
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 75
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 1664, 64))
After variable `l_21` (decl src line 73)
@dbg.value mapping for `l_21` (decl src line 73), asm line 76
Value produced for `l_21` (decl src line 73), asm line 76
  const i32* null
  Value is same as last assignment, skipping
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 77
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 1792, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 78
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 1856, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 79
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 1920, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 80
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 1984, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 81
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 2048, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 82
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 2112, 64))
After variable `l_21` (decl src line 73)
❌ After variable intrinsic with undef input, asm line 83
  @dbg.value(i32* undef, !92, !DIExpression(DW_OP_LLVM_fragment, 2176, 64))
After variable `i` (decl src line 74)
❌ After variable intrinsic with undef input, asm line 84
  @dbg.declare(i32* undef, !97), l74 c9
After variable `j` (decl src line 74)
❌ After variable intrinsic with undef input, asm line 85
  @dbg.declare(i32* undef, !98), l74 c12
After variable `k` (decl src line 74)
❌ After variable intrinsic with undef input, asm line 86
  @dbg.declare(i32* undef, !99), l74 c15

✅ 10 before variables found, 10 after variables found, 0 mismatched

### Assignments

❌ Before live ranges for `i` (decl src line 74) not found
❌ Before live ranges for `j` (decl src line 74) not found
❌ Before live ranges for `k` (decl src line 74) not found
❌ Before live ranges for `l_21` (decl src line 73) not found
❌ After live ranges for `p_12` (decl src line 67) not found
❌ After live ranges for `p_13` (decl src line 67) not found
❌ 4 before live ranges covered, 6 uncovered

### Symbolic values

#### Before values

Collected value for `p_12`
i64 %p_12
(ReadLSB w64 0x0 p_12)
Collected value for `p_13`
i64 %p_13
(ReadLSB w64 0x0 p_13)
Concrete pointer resolves to g_17, offset 0x0
Replaced concrete pointer with hash 0x36175A6F2824AA0E
Collected value for `l_16`
@g_17 = global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
Concrete pointer resolves to g_17, offset 0x0
Replaced concrete pointer with hash 0x36175A6F2824AA0E
Collected value for `l_18`
@g_17 = global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
Collected value for `l_19`
i32* null
0x0
Collected value for `l_20`
i32 -242292642
0xF18EE85E
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

Concrete pointer resolves to g_17, offset 0x0
Replaced concrete pointer with hash 0x36175A6F2824AA0E
Collected value for `l_16`
@g_17 = local_unnamed_addr global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
Concrete pointer resolves to g_17, offset 0x0
Replaced concrete pointer with hash 0x36175A6F2824AA0E
Collected value for `l_18`
@g_17 = local_unnamed_addr global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
Collected value for `l_19`
i32* null
0x0
Collected value for `l_20`
i32 -242292642
0xF18EE85E
Collected value for `l_21`
i32* null
0x0

#### Check before against after

Checking equivalence of `l_16` (decl src line 69) from
assn 0, src line 69, column 14
@g_17 = global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
and
assn 0, src line 69, column 0
@g_17 = local_unnamed_addr global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
Checking equivalence of `l_18` (decl src line 70) from
assn 0, src line 70, column 14
@g_17 = global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
and
assn 0, src line 70, column 0
@g_17 = local_unnamed_addr global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
Checking equivalence of `l_19` (decl src line 71) from
assn 0, src line 71, column 14
i32* null
0x0
and
assn 0, src line 71, column 0
i32* null
0x0
Checking equivalence of `l_20` (decl src line 72) from
assn 0, src line 72, column 13
i32 -242292642
0xF18EE85E
and
assn 0, src line 72, column 0
i32 -242292642
0xF18EE85E
❌ After live range for `p_12` (decl src line 67) not found
❌ After live range for `p_13` (decl src line 67) not found
❌ Before checked against after: 4 matching symbolic values, 2 mismatched

#### Check after against before

Checking equivalence of `l_16` (decl src line 69) from
assn 0, src line 69, column 0
@g_17 = local_unnamed_addr global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
and
assn 0, src line 69, column 14
@g_17 = global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
Checking equivalence of `l_18` (decl src line 70) from
assn 0, src line 70, column 0
@g_17 = local_unnamed_addr global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
and
assn 0, src line 70, column 14
@g_17 = global i32 1678277265, align 4, !dbg !18
0x36175A6F2824AA0E
Checking equivalence of `l_19` (decl src line 71) from
assn 0, src line 71, column 0
i32* null
0x0
and
assn 0, src line 71, column 14
i32* null
0x0
Checking equivalence of `l_20` (decl src line 72) from
assn 0, src line 72, column 0
i32 -242292642
0xF18EE85E
and
assn 0, src line 72, column 13
i32 -242292642
0xF18EE85E
❌ Before live range for `l_21` (decl src line 73) not found
❌ After checked against before: 4 matching symbolic values, 1 mismatched

## Summary

❌ Some consistency checks failed
