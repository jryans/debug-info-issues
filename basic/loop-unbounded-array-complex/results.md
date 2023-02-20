+ source ../vars.sh
++ set -eux
+++ dirname ../vars.sh
++ SCRIPT_DIR=..
++ source ../../vars.sh
+++ set -eux
++++ csmith release csmith
++++ local build=release
++++ local program=csmith
++++ echo /Users/jryans/Projects/csmith/build-release/src/csmith
+++ CSMITH=/Users/jryans/Projects/csmith/build-release/src/csmith
+++ SRC_FILE=example.c
++++ llvm release-clang-lldb-13.0.0 clang-tidy
++++ local build=release-clang-lldb-13.0.0
++++ local program=clang-tidy
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
+++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
+++ DIAGNOSTICS_FILE=diagnostics.yaml
+++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
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
+++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
+++ CC_IR_OPTS='-S -emit-llvm'
+++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
+++ CC_O0_OPTS=
+++ CC_O1_OPTS=-O1
+++ CC_LINK_OPTS='-D CONCRETE -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ llvm release-clang-lldb-13.0.0 opt
++++ local build=release-clang-lldb-13.0.0
++++ local program=opt
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
+++ OPT=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
+++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
++++ dirname ../../vars.sh
+++ FILTER_DOT=../../tools/filter-dot.js
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
+ ./build.sh
+++ dirname ./build.sh
++ SCRIPT_DIR=.
++ source ./../vars.sh
+++ set -eux
++++ dirname ./../vars.sh
+++ SCRIPT_DIR=./..
+++ source ./../../vars.sh
++++ set -eux
+++++ csmith release csmith
+++++ local build=release
+++++ local program=csmith
+++++ echo /Users/jryans/Projects/csmith/build-release/src/csmith
++++ CSMITH=/Users/jryans/Projects/csmith/build-release/src/csmith
++++ SRC_FILE=example.c
+++++ llvm release-clang-lldb-13.0.0 clang-tidy
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang-tidy
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
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
++++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_OPTS='-D CONCRETE -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ llvm release-clang-lldb-13.0.0 opt
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=opt
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
++++ OPT=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
++++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
+++++ dirname ./../../vars.sh
++++ FILTER_DOT=./../../tools/filter-dot.js
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
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=example example-O0.ll
Writing '.example.dot'...
++ mv .example.dot example-O0.dot
++ ./../../tools/filter-dot.js example-O0.dot
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
++ mkdir -p klee-out-O1
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope -O1 -o /dev/null
++ filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
++ local input_ir=example-O1-cg-raw.ll
++ local output_ir=example-O1-cg.ll
++ grep -v '^+'
++ sed '2,/IR Dump/!d'
++ grep -v 'IR Dump'
++ rm example-O1-cg-raw.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1/final.bc example-O1-cg.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=example example-O1-cg.ll
Writing '.example.dot'...
++ mv .example.dot example-O1-cg.dot
++ ./../../tools/filter-dot.js example-O1-cg.dot
+ ./check.sh
+++ dirname ./check.sh
++ SCRIPT_DIR=.
++ source ./../vars.sh
+++ set -eux
++++ dirname ./../vars.sh
+++ SCRIPT_DIR=./..
+++ source ./../../vars.sh
++++ set -eux
+++++ csmith release csmith
+++++ local build=release
+++++ local program=csmith
+++++ echo /Users/jryans/Projects/csmith/build-release/src/csmith
++++ CSMITH=/Users/jryans/Projects/csmith/build-release/src/csmith
++++ SRC_FILE=example.c
+++++ llvm release-clang-lldb-13.0.0 clang-tidy
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang-tidy
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
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
++++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_OPTS='-D CONCRETE -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ llvm release-clang-lldb-13.0.0 opt
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=opt
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
++++ OPT=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
++++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
+++++ dirname ./../../vars.sh
++++ FILTER_DOT=./../../tools/filter-dot.js
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

## Function `example`

✅ Before and after function names match

### Variables

Before variable `n` (decl src ln 1)
Store to `n` (decl src ln 1), asm ln 18
  arg 0
  Added assignment asm ln 18, prod ln 1.0, live ln 2, gen 0
Before variable `data` (decl src ln 2)
Before variable `i` (decl src ln 3)
Store to `i` (decl src ln 3), asm ln 59
  %inc = add nsw i32 %9, 1, l3 c27, asm ln 58
  Added assignment asm ln 59, prod ln 3.27, live ln 3, gen 0
Store to `i` (decl src ln 3), asm ln 24
  const i32 0
  Added assignment asm ln 24, prod ln 3.12, live ln 3, gen 0
Before variable `i2` (decl src ln 4)
Store to `i2` (decl src ln 4), asm ln 38
  %rem = srem i32 %add, 4, l4 c22, asm ln 37
  Added assignment asm ln 38, prod ln 4.22, live ln 5, gen 0
Before variable `a` (decl src ln 5)
Store to `a` (decl src ln 5), asm ln 43
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom, l5 c15, asm ln 42
  @dbg.declare without read users, removable
  Added assignment asm ln 43, prod ln 5.15, live ln 6, gen 0
Before variable `b` (decl src ln 6)
Store to `b` (decl src ln 6), asm ln 48
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15, asm ln 47
  Added assignment asm ln 48, prod ln 6.15, live ln 7, gen 0
Computing generations: `n` (decl src ln 1)
  asm ln 18, prod ln 1.0, live ln 2, gen 0
Computing generations: `i` (decl src ln 3)
  asm ln 24, prod ln 3.12, live ln 3, gen 0
  asm ln 59, prod ln 3.27, live ln 3, gen 1
Computing generations: `i2` (decl src ln 4)
  asm ln 38, prod ln 4.22, live ln 5, gen 0
Computing generations: `a` (decl src ln 5)
  asm ln 43, prod ln 5.15, live ln 6, gen 0
Computing generations: `b` (decl src ln 6)
  asm ln 48, prod ln 6.15, live ln 7, gen 0
Building live ranges: `n` (decl src ln 1)
  asm ln 18, prod ln 1.0, live ln 2, gen 0
    prod ln 1, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `i` (decl src ln 3)
  asm ln 24, prod ln 3.12, live ln 3, gen 0
    prod ln 3, gen 0 →
    prod ln 3, gen 1
  asm ln 59, prod ln 3.27, live ln 3, gen 1
    prod ln 3, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `i2` (decl src ln 4)
  asm ln 38, prod ln 4.22, live ln 5, gen 0
    prod ln 4, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `a` (decl src ln 5)
  asm ln 43, prod ln 5.15, live ln 6, gen 0
    prod ln 5, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `b` (decl src ln 6)
  asm ln 48, prod ln 6.15, live ln 7, gen 0
    prod ln 6, gen 0 →
    prod ln ∞, gen ∞

After variable `n` (decl src ln 1)
@dbg.value mapping for `n` (decl src ln 1), asm ln 13
Value produced for `n` (decl src ln 1), asm ln 13
  arg 0
  Added assignment asm ln 13, prod ln 1.0, live ln 2, gen 0
After variable `data` (decl src ln 2)
After variable `i` (decl src ln 3)
@dbg.value mapping for `i` (decl src ln 3), asm ln 18
Value produced for `i` (decl src ln 3), asm ln 18
  const i32 0
  Added assignment asm ln 18, prod ln 3.0, live ln 3, gen 0
After variable `i2` (decl src ln 4)
@dbg.value mapping for `i2` (decl src ln 4), asm ln 39
Value produced for `i2` (decl src ln 4), asm ln 39
  %rem = and i32 %lsr.iv, 3, l4 c22, asm ln 38
  Added assignment asm ln 39, prod ln 4.22, live ln 6, gen 0
After variable `a` (decl src ln 5)
After variable intrinsic with undef input, asm ln 40, ignoring undefined variable
  @dbg.value(!DIArgList([4 x i32]* %data, i32 undef), !26, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value))
After variable `b` (decl src ln 6)
@dbg.value mapping for `b` (decl src ln 6), asm ln 43
Value produced for `b` (decl src ln 6), asm ln 43
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15, asm ln 42
  Added assignment asm ln 43, prod ln 6.15, live ln 7, gen 0
After variable `i` (decl src ln 3)
@dbg.value mapping for `i` (decl src ln 3), asm ln 37
Value produced for `i` (decl src ln 3), asm ln 37
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ], asm ln 36
  Phi-based assignment in prologue, skipping
After variable `i` (decl src ln 3)
@dbg.value mapping for `i` (decl src ln 3), asm ln 47
Value produced for `i` (decl src ln 3), asm ln 47
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ], asm ln 36
  Added assignment asm ln 47, prod ln 3.21, live ln 3, gen 0
Computing generations: `n` (decl src ln 1)
  asm ln 13, prod ln 1.0, live ln 2, gen 0
Computing generations: `i` (decl src ln 3)
  asm ln 18, prod ln 3.0, live ln 3, gen 0
  asm ln 47, prod ln 3.21, live ln 3, gen 1
Computing generations: `i2` (decl src ln 4)
  asm ln 39, prod ln 4.22, live ln 6, gen 0
Computing generations: `b` (decl src ln 6)
  asm ln 43, prod ln 6.15, live ln 7, gen 0
Building live ranges: `n` (decl src ln 1)
  asm ln 13, prod ln 1.0, live ln 2, gen 0
    prod ln 1, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `i` (decl src ln 3)
  asm ln 18, prod ln 3.0, live ln 3, gen 0
    prod ln 3, gen 0 →
    prod ln 3, gen 1
  asm ln 47, prod ln 3.21, live ln 3, gen 1
    prod ln 3, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `i2` (decl src ln 4)
  asm ln 39, prod ln 4.22, live ln 6, gen 0
    prod ln 4, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `b` (decl src ln 6)
  asm ln 43, prod ln 6.15, live ln 7, gen 0
    prod ln 6, gen 0 →
    prod ln ∞, gen ∞

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Assignments

🔔 Before live ranges for `data` (decl src ln 2) not found (variable likely undefined)
🔔 After live ranges for (removable) `a` (decl src ln 5) not found
✅ Before live range coverage
  Covered:   4
  Uncovered: 0
  Undefined: 1
  Unused:    0
  Removable: 1

### Symbolic values

#### Before values

Collected value for `n`
  i32 %n
  (ReadLSB w32 0x0 n)
Collected value for `i`
  i32 0
  0x0
[0;1;31mKLEE: ERROR: example.c:9: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `i2`
  %rem = srem i32 %add, 4, l4 c22
  0x2
Collected value for `a`
  Concrete pointer resolves to data, offset 0x0
  Replaced concrete pointer with hash 0xA5339ABD7813258B
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom, l5 c15
  0xA5339ABD7813258B
Collected value for `b`
  Concrete pointer resolves to data, offset 0x8
  Replaced concrete pointer with hash 0xDBBE71147BA862F4
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  0xDBBE71147BA862F4
Collected value for `i`
  %inc = add nsw i32 %10, 1, l3 c27
  0x1

❌ Unable to execute all before program states

#### After values

Collected value for `n`
  i32 %n
  (ReadLSB w32 0x0 n)
Collected value for `i`
  i32 0
  0x0
Collected value for `i2`
  %rem = and i32 %lsr.iv, 3, l4 c22
  0x2
[0;1;31mKLEE: ERROR: example.c:9: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `b`
  Concrete pointer resolves to data, offset 0x8
  Replaced concrete pointer with hash 0xDBBE71147BA862F4
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  0xDBBE71147BA862F4
Collected value for `i`
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  Block: 0
  0x2

❌ Unable to execute all after program states

#### Check before against after

🔔 After live ranges for (removable) `a` (decl src ln 5) not found
Checking equivalence of `b` (decl src ln 6) from
  assn asm ln 48, prod ln 6.15, live ln 7, gen 0
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  0xDBBE71147BA862F4
and
  assn asm ln 43, prod ln 6.15, live ln 7, gen 0
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  0xDBBE71147BA862F4

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 24, prod ln 3.12, live ln 3, gen 0
  i32 0
  0x0
and
  assn asm ln 18, prod ln 3.0, live ln 3, gen 0
  i32 0
  0x0

Pushed initial value onto stack: 0x2
constu/s: 0x2
minus: (Sub w32 0x2 0x2)
constu/s: 0x1
plus: (Add w32 0x1 (Sub w32 0x2 0x2))
Result: (Add w32 0x1 (Sub w32 0x2 0x2))
Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 59, prod ln 3.27, live ln 3, gen 1
  %inc = add nsw i32 %10, 1, l3 c27
  0x1
and
  assn asm ln 47, prod ln 3.21, live ln 3, gen 1
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  (Add w32 0x1 (Sub w32 0x2 0x2))
Query to parse
(query [] (Eq 0x1
     (Add w32 0x1 (Sub w32 0x2 0x2))))
Parsed query
(Eq 0x1
     (Add w32 0x1 (Sub w32 0x2 0x2)))

🔔 After `i2` (decl src ln 4) assn asm ln 39, prod ln 4.22, live ln 6, gen 0 coordinates don't match before assn asm ln 38, prod ln 4.22, live ln 5, gen 0
Checking equivalence of `i2` (decl src ln 4) from
  assn asm ln 38, prod ln 4.22, live ln 5, gen 0
  %rem = srem i32 %add, 4, l4 c22
  0x2
and
  assn asm ln 39, prod ln 4.22, live ln 6, gen 0
  %rem = and i32 %lsr.iv, 3, l4 c22
  0x2

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 18, prod ln 1.0, live ln 2, gen 0
  i32 %n
  (ReadLSB w32 0x0 n)
and
  assn asm ln 13, prod ln 1.0, live ln 2, gen 0
  i32 %n
  (ReadLSB w32 0x0 n)
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 n)
     (ReadLSB w32 0x0 n)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 n)
     N0)

✅ Before symbolic values checked against after
  Matching:    5
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   1

#### Check after against before

Checking equivalence of `b` (decl src ln 6) from
  assn asm ln 43, prod ln 6.15, live ln 7, gen 0
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  0xDBBE71147BA862F4
and
  assn asm ln 48, prod ln 6.15, live ln 7, gen 0
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  0xDBBE71147BA862F4

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 18, prod ln 3.0, live ln 3, gen 0
  i32 0
  0x0
and
  assn asm ln 24, prod ln 3.12, live ln 3, gen 0
  i32 0
  0x0

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 47, prod ln 3.21, live ln 3, gen 1
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  (Add w32 0x1 (Sub w32 0x2 0x2))
and
  assn asm ln 59, prod ln 3.27, live ln 3, gen 1
  %inc = add nsw i32 %10, 1, l3 c27
  0x1
Query to parse
(query [] (Eq (Add w32 0x1 (Sub w32 0x2 0x2))
     0x1))
Parsed query
(Eq (Add w32 0x1 (Sub w32 0x2 0x2))
     0x1)

🔔 Before `i2` (decl src ln 4) assn asm ln 38, prod ln 4.22, live ln 5, gen 0 coordinates don't match after assn asm ln 39, prod ln 4.22, live ln 6, gen 0
Checking equivalence of `i2` (decl src ln 4) from
  assn asm ln 39, prod ln 4.22, live ln 6, gen 0
  %rem = and i32 %lsr.iv, 3, l4 c22
  0x2
and
  assn asm ln 38, prod ln 4.22, live ln 5, gen 0
  %rem = srem i32 %add, 4, l4 c22
  0x2

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 13, prod ln 1.0, live ln 2, gen 0
  i32 %n
  (ReadLSB w32 0x0 n)
and
  assn asm ln 18, prod ln 1.0, live ln 2, gen 0
  i32 %n
  (ReadLSB w32 0x0 n)
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 n)
     (ReadLSB w32 0x0 n)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 n)
     N0)

✅ After symbolic values checked against before
  Matching:    5
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
