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
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
+++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
+++ DIAGNOSTICS_FILE=diagnostics.yaml
+++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
++++ llvm release-clang-lldb-13.0.0 clang
++++ local build=release-clang-lldb-13.0.0
++++ local program=clang
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
+++ CLANG=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
++++ llvm release-clang-lldb-13.0.0 llvm-as
++++ local build=release-clang-lldb-13.0.0
++++ local program=llvm-as
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
+++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
+++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
+++ CC_IR_OPTS='-S -emit-llvm'
+++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
+++ CC_O0_OPTS=
+++ CC_O1_OPTS=-O1
+++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ llvm release-clang-lldb-13.0.0 opt
++++ local build=release-clang-lldb-13.0.0
++++ local program=opt
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
+++ OPT=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
+++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
++++ dirname ../../vars.sh
+++ FILTER_DOT=../../tools/filter-dot.js
++++ llvm release-clang-lldb-13.0.0 llc
++++ local build=release-clang-lldb-13.0.0
++++ local program=llc
++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
+++ LLC=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
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
+++ BEFORE_BC=klee-out-before/final.bc
+++ AFTER_BC=klee-out-after/final.bc
+++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
++++ klee debug check-debug-info
++++ local build=debug
++++ local program=check-debug-info
++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
+++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
+++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace'
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
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
+++++ llvm release-clang-lldb-13.0.0 clang
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
++++ CLANG=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
+++++ llvm release-clang-lldb-13.0.0 llvm-as
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llvm-as
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ llvm release-clang-lldb-13.0.0 opt
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=opt
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
+++++ dirname ./../../vars.sh
++++ FILTER_DOT=./../../tools/filter-dot.js
+++++ llvm release-clang-lldb-13.0.0 llc
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llc
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
++++ LLC=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
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
++++ BEFORE_BC=klee-out-before/final.bc
++++ AFTER_BC=klee-out-after/final.bc
++++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
+++++ klee debug check-debug-info
+++++ local build=debug
+++++ local program=check-debug-info
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace'
++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=example example-O0.ll
Writing '.example.dot'...
++ mv .example.dot example-O0.dot
++ ./../../tools/filter-dot.js example-O0.dot
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
++ mkdir -p klee-out-O1
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope -O1 -o /dev/null
++ filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
++ local input_ir=example-O1-cg-raw.ll
++ local output_ir=example-O1-cg.ll
++ grep -v '^+'
++ sed '2,/IR Dump/!d'
++ grep -v 'IR Dump'
++ rm example-O1-cg-raw.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1/final.bc example-O1-cg.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=example example-O1-cg.ll
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
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
+++++ llvm release-clang-lldb-13.0.0 clang
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
++++ CLANG=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
+++++ llvm release-clang-lldb-13.0.0 llvm-as
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llvm-as
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ llvm release-clang-lldb-13.0.0 opt
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=opt
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
+++++ dirname ./../../vars.sh
++++ FILTER_DOT=./../../tools/filter-dot.js
+++++ llvm release-clang-lldb-13.0.0 llc
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llc
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
++++ LLC=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
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
++++ BEFORE_BC=klee-out-before/final.bc
++++ AFTER_BC=klee-out-after/final.bc
++++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
+++++ klee debug check-debug-info
+++++ local build=debug
+++++ local program=check-debug-info
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace'
++ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variables

Before variable `n` (decl src ln 1)
Store to declared address of `n` (decl src ln 1), asm ln 17
  arg 0
  Added assignment asm ln 17, prod ln 1.0, live ln 2, gen 0
Before variable `data` (decl src ln 2)
Before variable `i` (decl src ln 3)
Store to declared address of `i` (decl src ln 3), asm ln 55
  %inc = add nsw i32 %10, 1, l3 c27, asm ln 54
🔔 Store to declared address of `i` (decl src ln 3): live ln too early, using produced ln + 1
  Added assignment asm ln 55, prod ln 3.27, live ln 4, gen 0
Store to declared address of `i` (decl src ln 3), asm ln 23
  const i32 0
🔔 Store to declared address of `i` (decl src ln 3): live ln too early, using produced ln + 1
  Added assignment asm ln 23, prod ln 3.12, live ln 4, gen 0
Before variable `i2` (decl src ln 4)
Store to declared address of `i2` (decl src ln 4), asm ln 37
  %rem = srem i32 %add, 4, l4 c22, asm ln 36
  Added assignment asm ln 37, prod ln 4.22, live ln 5, gen 0
Before variable `a` (decl src ln 5)
Store to declared address of `a` (decl src ln 5), asm ln 42
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom, l5 c15, asm ln 41
  @dbg.declare without read users, removable
  Added assignment asm ln 42, prod ln 5.15, live ln 6, gen 0
Before variable `b` (decl src ln 6)
Store to declared address of `b` (decl src ln 6), asm ln 47
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15, asm ln 46
  Added assignment asm ln 47, prod ln 6.15, live ln 7, gen 0
Computing generations: `n` (decl src ln 1)
  asm ln 17, prod ln 1.0, live ln 2, gen 0
Computing generations: `i` (decl src ln 3)
  asm ln 23, prod ln 3.12, live ln 4, gen 0
  asm ln 55, prod ln 3.27, live ln 4, gen 1
Computing generations: `i2` (decl src ln 4)
  asm ln 37, prod ln 4.22, live ln 5, gen 0
Computing generations: `a` (decl src ln 5)
  asm ln 42, prod ln 5.15, live ln 6, gen 0
Computing generations: `b` (decl src ln 6)
  asm ln 47, prod ln 6.15, live ln 7, gen 0

After variable `n` (decl src ln 1)
Value produced for `n` (decl src ln 1), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 1.0, live ln 2, gen 0
After variable `data` (decl src ln 2)
After variable `i` (decl src ln 3)
Value produced for `i` (decl src ln 3), asm ln 16
  const i32 0
🔔 Value produced for `i` (decl src ln 3): live ln too early, using produced ln + 1
  Added assignment asm ln 16, prod ln 3.0, live ln 4, gen 0
After variable `i2` (decl src ln 4)
Value produced for `i2` (decl src ln 4), asm ln 36
  %rem = and i32 %lsr.iv, 3, l4 c22, asm ln 35
  Added assignment asm ln 36, prod ln 4.22, live ln 6, gen 0
After variable `a` (decl src ln 5)
After variable intrinsic with undef input, asm ln 37, ignoring undefined variable
  @dbg.value(!DIArgList([4 x i32]* %data, i32 undef), !28, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value))
After variable `b` (decl src ln 6)
Value produced for `b` (decl src ln 6), asm ln 40
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15, asm ln 39
  Added assignment asm ln 40, prod ln 6.15, live ln 7, gen 0
After variable `i` (decl src ln 3)
Value produced for `i` (decl src ln 3), asm ln 34
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ], asm ln 33
  Added assignment asm ln 34, prod ln 3.21, live ln 4, gen 0
After variable `i` (decl src ln 3)
Value produced for `i` (decl src ln 3), asm ln 44
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ], asm ln 33
🔔 Value produced for `i` (decl src ln 3): live ln too early, using produced ln + 1
  Added assignment asm ln 44, prod ln 3.21, live ln 4, gen 0
Computing generations: `n` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 2, gen 0
Computing generations: `i` (decl src ln 3)
  asm ln 16, prod ln 3.0, live ln 4, gen 0
  asm ln 34, prod ln 3.21, live ln 4, gen 1
  asm ln 44, prod ln 3.21, live ln 4, gen 2
Computing generations: `i2` (decl src ln 4)
  asm ln 36, prod ln 4.22, live ln 6, gen 0
Computing generations: `b` (decl src ln 6)
  asm ln 40, prod ln 6.15, live ln 7, gen 0

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `i`
  i32 0
  (w32 0x0)
[0;1;31mKLEE: ERROR: example.c:9: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `i2`
  %rem = srem i32 %add, 4, l4 c22
  (w32 0x2)
Collected value for `a`
  Concrete pointer resolves to data, offset (w64 0x0)
  Created deref expr (Concat w64 (w8 0xAB)
             (Concat w56 (w8 0xAB)
                         (Concat w48 (w8 0xAB)
                                     (Concat w40 (w8 0xAB)
                                                 (Concat w32 (w8 0xAB)
                                                             (Concat w24 (w8 0xAB)
                                                                         (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memcpy.destaddr.deref))))))))
  Replaced concrete pointer with hash (w64 0xA5339ABD7813258B)
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom, l5 c15
  (w64 0xA5339ABD7813258B)
Collected value for `b`
  Concrete pointer resolves to data, offset (w64 0x8)
  Created deref expr (w64 0xABABABABABABABAB)
  Replaced concrete pointer with hash (w64 0xDBBE71147BA862F4)
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  (w64 0xDBBE71147BA862F4)
Collected value for `i`
  %inc = add nsw i32 %10, 1, l3 c27
  (w32 0x1)

❌ Unable to execute all before program states

#### After values

Collected value for `n`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `i`
  i32 0
  (w32 0x0)
Collected value for `i`
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  Block: 0
  (w32 0x2)
Collected value for `i2`
  %rem = and i32 %lsr.iv, 3, l4 c22
  (w32 0x2)
[0;1;31mKLEE: ERROR: example.c:9: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `b`
  Concrete pointer resolves to data, offset (w64 0x8)
  Created deref expr (w64 0xABABABABABABABAB)
  Replaced concrete pointer with hash (w64 0xDBBE71147BA862F4)
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  (w64 0xDBBE71147BA862F4)
Collected value for `i`
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  Block: 0
  (w32 0x2)

❌ Unable to execute all after program states

### Assignments

Filtering redundant before assignments: `i` (decl src ln 3)

Filtering redundant after assignments: `i` (decl src ln 3)

Pushed initial value onto stack: (w32 0x2)
constu/s: (w64 0x2)
minus: (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))
Result: (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))
Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 34, prod ln 3.21, live ln 4, gen 1
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))
and
  assn asm ln 16, prod ln 3.0, live ln 4, gen 0
  i32 0
  (w32 0x0)
Query to parse
(query [] (Eq (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))
     (w32 0x0)))
Parsed query
(Eq (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))
     (w32 0x0))
Removing: asm ln 34, prod ln 3.21, live ln 4, gen 1

Pushed initial value onto stack: (w32 0x2)
constu/s: (w64 0x2)
minus: (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))
constu/s: (w64 0x1)
plus: (Add w32 (Extract w32 0 (w64 0x1))
          (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
Result: (Add w32 (Extract w32 0 (w64 0x1))
          (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 44, prod ln 3.21, live ln 4, gen 2
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  (Add w32 (Extract w32 0 (w64 0x1))
          (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
and
  assn asm ln 16, prod ln 3.0, live ln 4, gen 0
  i32 0
  (w32 0x0)
Query to parse
(query [] (Eq (Add w32 (Extract w32 0 (w64 0x1))
              (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
     (w32 0x0)))
Parsed query
(Eq (Add w32 (Extract w32 0 (w64 0x1))
              (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
     (w32 0x0))

Computing generations: `n` (decl src ln 1)
  asm ln 17, prod ln 1.0, live ln 2, gen 0
Computing generations: `i` (decl src ln 3)
  asm ln 23, prod ln 3.12, live ln 4, gen 0
  asm ln 55, prod ln 3.27, live ln 4, gen 1
Computing generations: `i2` (decl src ln 4)
  asm ln 37, prod ln 4.22, live ln 5, gen 0
Computing generations: `a` (decl src ln 5)
  asm ln 42, prod ln 5.15, live ln 6, gen 0
Computing generations: `b` (decl src ln 6)
  asm ln 47, prod ln 6.15, live ln 7, gen 0
Building live ranges: `n` (decl src ln 1)
  asm ln 17, prod ln 1.0, live ln 2, gen 0
    live ln 2, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `i` (decl src ln 3)
  asm ln 23, prod ln 3.12, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln 4, gen 1
  asm ln 55, prod ln 3.27, live ln 4, gen 1
    live ln 4, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `i2` (decl src ln 4)
  asm ln 37, prod ln 4.22, live ln 5, gen 0
    live ln 5, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `a` (decl src ln 5)
  asm ln 42, prod ln 5.15, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `b` (decl src ln 6)
  asm ln 47, prod ln 6.15, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞

Computing generations: `n` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 2, gen 0
Computing generations: `i` (decl src ln 3)
  asm ln 16, prod ln 3.0, live ln 4, gen 0
  asm ln 44, prod ln 3.21, live ln 4, gen 1
Computing generations: `i2` (decl src ln 4)
  asm ln 36, prod ln 4.22, live ln 6, gen 0
Computing generations: `b` (decl src ln 6)
  asm ln 40, prod ln 6.15, live ln 7, gen 0
Building live ranges: `n` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 2, gen 0
    live ln 2, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `i` (decl src ln 3)
  asm ln 16, prod ln 3.0, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln 4, gen 1
  asm ln 44, prod ln 3.21, live ln 4, gen 1
    live ln 4, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `i2` (decl src ln 4)
  asm ln 36, prod ln 4.22, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `b` (decl src ln 6)
  asm ln 40, prod ln 6.15, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞

🔔 Before live ranges for `data` (decl src ln 2) not found (variable likely undefined)
❌ Live ranges for `i2` (decl src ln 4) not fully covered: live ln 5, gen 0 < live ln 6, gen 0
🔔 After live ranges for (removable) `a` (decl src ln 5) not found
❌ Before live range coverage
  Covered:   3
  Uncovered: 1
  Undefined: 1
  Unused:    0
  Removable: 1

#### Check before against after

🔔 After live ranges for (removable) `a` (decl src ln 5) not found

Checking equivalence of `b` (decl src ln 6) from
  assn asm ln 47, prod ln 6.15, live ln 7, gen 0
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  (w64 0xDBBE71147BA862F4)
and
  assn asm ln 40, prod ln 6.15, live ln 7, gen 0
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  (w64 0xDBBE71147BA862F4)
✅ After `b` (decl src ln 6) assn asm ln 40, prod ln 6.15, live ln 7, gen 0 symbolic value matches before assn asm ln 47, prod ln 6.15, live ln 7, gen 0

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 23, prod ln 3.12, live ln 4, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 16, prod ln 3.0, live ln 4, gen 0
  i32 0
  (w32 0x0)
✅ After `i` (decl src ln 3) assn asm ln 16, prod ln 3.0, live ln 4, gen 0 symbolic value matches before assn asm ln 23, prod ln 3.12, live ln 4, gen 0

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 55, prod ln 3.27, live ln 4, gen 1
  %inc = add nsw i32 %10, 1, l3 c27
  (w32 0x1)
and
  assn asm ln 44, prod ln 3.21, live ln 4, gen 1
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  (Add w32 (Extract w32 0 (w64 0x1))
          (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
Query to parse
(query [] (Eq (w32 0x1)
     (Add w32 (Extract w32 0 (w64 0x1))
              (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))))
Parsed query
(Eq (w32 0x1)
     (Add w32 (Extract w32 0 (w64 0x1))
              (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))))
✅ After `i` (decl src ln 3) assn asm ln 44, prod ln 3.21, live ln 4, gen 1 symbolic value matches before assn asm ln 55, prod ln 3.27, live ln 4, gen 1

🔔 After `i2` (decl src ln 4) assn asm ln 36, prod ln 4.22, live ln 6, gen 0 coordinates don't match before assn asm ln 37, prod ln 4.22, live ln 5, gen 0
Checking equivalence of `i2` (decl src ln 4) from
  assn asm ln 37, prod ln 4.22, live ln 5, gen 0
  %rem = srem i32 %add, 4, l4 c22
  (w32 0x2)
and
  assn asm ln 36, prod ln 4.22, live ln 6, gen 0
  %rem = and i32 %lsr.iv, 3, l4 c22
  (w32 0x2)
✅ After `i2` (decl src ln 4) assn asm ln 36, prod ln 4.22, live ln 6, gen 0 symbolic value matches before assn asm ln 37, prod ln 4.22, live ln 5, gen 0

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 17, prod ln 1.0, live ln 2, gen 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
and
  assn asm ln 12, prod ln 1.0, live ln 2, gen 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) n)
     (ReadLSB w32 (w32 0x0) n)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) n)
     N0)
✅ After `n` (decl src ln 1) assn asm ln 12, prod ln 1.0, live ln 2, gen 0 symbolic value matches before assn asm ln 17, prod ln 1.0, live ln 2, gen 0

✅ Before symbolic values checked against after
  Matching:    5
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   1

#### Check after against before

Checking equivalence of `b` (decl src ln 6) from
  assn asm ln 40, prod ln 6.15, live ln 7, gen 0
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  (w64 0xDBBE71147BA862F4)
and
  assn asm ln 47, prod ln 6.15, live ln 7, gen 0
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  (w64 0xDBBE71147BA862F4)
✅ Before `b` (decl src ln 6) assn asm ln 47, prod ln 6.15, live ln 7, gen 0 symbolic value matches after assn asm ln 40, prod ln 6.15, live ln 7, gen 0

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 16, prod ln 3.0, live ln 4, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 23, prod ln 3.12, live ln 4, gen 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 3) assn asm ln 23, prod ln 3.12, live ln 4, gen 0 symbolic value matches after assn asm ln 16, prod ln 3.0, live ln 4, gen 0

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 44, prod ln 3.21, live ln 4, gen 1
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  (Add w32 (Extract w32 0 (w64 0x1))
          (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
and
  assn asm ln 55, prod ln 3.27, live ln 4, gen 1
  %inc = add nsw i32 %10, 1, l3 c27
  (w32 0x1)
Query to parse
(query [] (Eq (Add w32 (Extract w32 0 (w64 0x1))
              (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
     (w32 0x1)))
Parsed query
(Eq (Add w32 (Extract w32 0 (w64 0x1))
              (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
     (w32 0x1))
✅ Before `i` (decl src ln 3) assn asm ln 55, prod ln 3.27, live ln 4, gen 1 symbolic value matches after assn asm ln 44, prod ln 3.21, live ln 4, gen 1

🔔 Before `i2` (decl src ln 4) assn asm ln 37, prod ln 4.22, live ln 5, gen 0 coordinates don't match after assn asm ln 36, prod ln 4.22, live ln 6, gen 0
Checking equivalence of `i2` (decl src ln 4) from
  assn asm ln 36, prod ln 4.22, live ln 6, gen 0
  %rem = and i32 %lsr.iv, 3, l4 c22
  (w32 0x2)
and
  assn asm ln 37, prod ln 4.22, live ln 5, gen 0
  %rem = srem i32 %add, 4, l4 c22
  (w32 0x2)
✅ Before `i2` (decl src ln 4) assn asm ln 37, prod ln 4.22, live ln 5, gen 0 symbolic value matches after assn asm ln 36, prod ln 4.22, live ln 6, gen 0

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 12, prod ln 1.0, live ln 2, gen 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
and
  assn asm ln 17, prod ln 1.0, live ln 2, gen 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) n)
     (ReadLSB w32 (w32 0x0) n)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) n)
     N0)
✅ Before `n` (decl src ln 1) assn asm ln 17, prod ln 1.0, live ln 2, gen 0 symbolic value matches after assn asm ln 12, prod ln 1.0, live ln 2, gen 0

✅ After symbolic values checked against before
  Matching:    5
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
