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
+++ CC_O2_OPTS=-O2
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
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
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
++++ CC_O2_OPTS=-O2
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
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
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
++++ CC_O2_OPTS=-O2
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
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
++ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `n` (decl src ln 1), asm ln 59
  %11 = load i32, i32* %n.addr, l9 c15, asm ln 59
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 59, prod ln 9.15, live ln 10, enc None
Load from declared address of `n` (decl src ln 1), asm ln 48
  %7 = load i32, i32* %n.addr, l7 c11, asm ln 48
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 48, prod ln 7.11, live ln 8, enc None
Load from declared address of `n` (decl src ln 1), asm ln 28
  %3 = load i32, i32* %n.addr, l3 c23, asm ln 28
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 28, prod ln 3.23, live ln 4, enc None
Store to declared address of `n` (decl src ln 1), asm ln 17
  arg 0
  Added assignment asm ln 17, prod ln 1.0, live ln 2, enc None
Store to declared address of `i` (decl src ln 3), asm ln 55
  %inc = add nsw i32 %10, 1, l3 c27, asm ln 54
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 55, prod ln 3.27, live ln 4, enc None
Load from declared address of `i` (decl src ln 3), asm ln 53
  %10 = load i32, i32* %i, l3 c27, asm ln 53
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 53, prod ln 3.27, live ln 4, enc None
Load from declared address of `i` (decl src ln 3), asm ln 39
  %5 = load i32, i32* %i, l5 c20, asm ln 39
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 39, prod ln 5.20, live ln 6, enc None
Load from declared address of `i` (decl src ln 3), asm ln 34
  %4 = load i32, i32* %i, l4 c15, asm ln 34
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 34, prod ln 4.15, live ln 5, enc None
Load from declared address of `i` (decl src ln 3), asm ln 27
  %2 = load i32, i32* %i, l3 c19, asm ln 27
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 27, prod ln 3.19, live ln 4, enc None
Store to declared address of `i` (decl src ln 3), asm ln 23
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 23, prod ln 3.12, live ln 4, enc None
Load from declared address of `i2` (decl src ln 4), asm ln 44
  %6 = load i32, i32* %i2, l6 c20, asm ln 44
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 44, prod ln 6.20, live ln 7, enc None
Store to declared address of `i2` (decl src ln 4), asm ln 37
  %rem = srem i32 %add, 4, l4 c22, asm ln 36
  Added assignment asm ln 37, prod ln 4.22, live ln 5, enc None
Store to declared address of `a` (decl src ln 5), asm ln 42
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom, l5 c15, asm ln 41
  @dbg.declare without read users, removable
  Added assignment asm ln 42, prod ln 5.15, live ln 6, enc None
Load from declared address of `b` (decl src ln 6), asm ln 49
  %8 = load i32*, i32** %b, l7 c6, asm ln 49
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 49, prod ln 7.6, live ln 8, enc None
Store to declared address of `b` (decl src ln 6), asm ln 47
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15, asm ln 46
  Added assignment asm ln 47, prod ln 6.15, live ln 7, enc None

#### After variables

Value produced for `n` (decl src ln 1), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 1.0, live ln 2, enc None
Value produced for `i` (decl src ln 3), asm ln 16
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 16, prod ln 3.0, live ln 4, enc None
Value produced for `i2` (decl src ln 4), asm ln 36
  %rem = and i32 %lsr.iv, 3, l4 c22, asm ln 35
  Added assignment asm ln 36, prod ln 4.22, live ln 6, enc None
After variable intrinsic with undef input, asm ln 37, ignoring undefined variable
  @dbg.value(!DIArgList([4 x i32]* %data, i32 undef), !28, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value))
Value produced for `b` (decl src ln 6), asm ln 40
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15, asm ln 39
  Added assignment asm ln 40, prod ln 6.15, live ln 7, enc None
Value produced for `i` (decl src ln 3), asm ln 34
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ], asm ln 33
  Added assignment asm ln 34, prod ln 3.21, live ln 4, enc None
Value produced for `i` (decl src ln 3), asm ln 44
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ], asm ln 33
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 44, prod ln 3.21, live ln 4, enc None

#### Summary

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  Assignment asm ln 17, prod ln 1.0, live ln 2, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `i`
  Assignment asm ln 23, prod ln 3.12, live ln 4, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 27, prod ln 3.19, live ln 4, enc 1
  %2 = load i32, i32* %i, l3 c19
  (w32 0x0)
Collected value for `n`
  Assignment asm ln 28, prod ln 3.23, live ln 4, enc 1
  %3 = load i32, i32* %n.addr, l3 c23
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `i`
  Assignment asm ln 34, prod ln 4.15, live ln 5, enc 2
  %4 = load i32, i32* %i, l4 c15
  (w32 0x0)
Collected value for `n`
  Assignment asm ln 59, prod ln 9.15, live ln 10, enc 2
  %11 = load i32, i32* %n.addr, l9 c15
  (ReadLSB w32 (w32 0x0) example.n)
[0;1;31mKLEE: ERROR: example.c:9: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `i2`
  Assignment asm ln 37, prod ln 4.22, live ln 5, enc 0
  %rem = srem i32 %add, 4, l4 c22
  (w32 0x2)
Collected value for `i`
  Assignment asm ln 39, prod ln 5.20, live ln 6, enc 3
  %5 = load i32, i32* %i, l5 c20
  (w32 0x0)
Collected value for `a`
  Assignment asm ln 42, prod ln 5.15, live ln 6, enc 0
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
Collected value for `i2`
  Assignment asm ln 44, prod ln 6.20, live ln 7, enc 1
  %6 = load i32, i32* %i2, l6 c20
  (w32 0x2)
Collected value for `b`
  Assignment asm ln 47, prod ln 6.15, live ln 7, enc 0
  Concrete pointer resolves to data, offset (w64 0x8)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xDBBE71147BA862F4)
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  (w64 0xDBBE71147BA862F4)
Collected value for `n`
  Assignment asm ln 48, prod ln 7.11, live ln 8, enc 3
  %7 = load i32, i32* %n.addr, l7 c11
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `b`
  Assignment asm ln 49, prod ln 7.6, live ln 8, enc 1
  Concrete pointer resolves to data, offset (w64 0x8)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xDBBE71147BA862F4)
  %8 = load i32*, i32** %b, l7 c6
  (w64 0xDBBE71147BA862F4)
Collected value for `i`
  Assignment asm ln 53, prod ln 3.27, live ln 4, enc 4
  %10 = load i32, i32* %i, l3 c27
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 55, prod ln 3.27, live ln 4, enc 5
  %inc = add nsw i32 %10, 1, l3 c27
  (w32 0x1)
[0;1;35mKLEE: WARNING ONCE: skipping fork (max-forks reached)
[0m
🔔 Unable to execute all before program states

#### After values

Collected value for `n`
  Assignment asm ln 12, prod ln 1.0, live ln 2, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `i`
  Assignment asm ln 16, prod ln 3.0, live ln 4, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 34, prod ln 3.21, live ln 4, enc 1
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  Block: 0
  (w32 0x2)
Collected value for `i2`
  Assignment asm ln 36, prod ln 4.22, live ln 6, enc 0
  %rem = and i32 %lsr.iv, 3, l4 c22
  (w32 0x2)
[0;1;31mKLEE: ERROR: example.c:9: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `b`
  Assignment asm ln 40, prod ln 6.15, live ln 7, enc 0
  Concrete pointer resolves to data, offset (w64 0x8)
  Created deref expr <concrete pointer>
  Replaced concrete pointer with hash (w64 0xDBBE71147BA862F4)
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  (w64 0xDBBE71147BA862F4)
Collected value for `i`
  Assignment asm ln 44, prod ln 3.21, live ln 4, enc 2
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  Block: 0
  (w32 0x2)

🔔 Unable to execute all after program states

### Assignments

#### Collation

Filtering redundant before assignments: `n` (decl src ln 1)

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 28, prod ln 3.23, live ln 4, enc 1
  %3 = load i32, i32* %n.addr, l3 c23
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 17, prod ln 1.0, live ln 2, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0)
🔔 Removing: asm ln 28, prod ln 3.23, live ln 4, enc 1

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 59, prod ln 9.15, live ln 10, enc 2
  %11 = load i32, i32* %n.addr, l9 c15
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 17, prod ln 1.0, live ln 2, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0)
🔔 Removing: asm ln 59, prod ln 9.15, live ln 10, enc 2

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 48, prod ln 7.11, live ln 8, enc 3
  %7 = load i32, i32* %n.addr, l7 c11
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 17, prod ln 1.0, live ln 2, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0)
🔔 Removing: asm ln 48, prod ln 7.11, live ln 8, enc 3

Filtering redundant before assignments: `i` (decl src ln 3)

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 27, prod ln 3.19, live ln 4, enc 1
  %2 = load i32, i32* %i, l3 c19
  (w32 0x0)
and
  assn asm ln 23, prod ln 3.12, live ln 4, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 27, prod ln 3.19, live ln 4, enc 1

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 34, prod ln 4.15, live ln 5, enc 2
  %4 = load i32, i32* %i, l4 c15
  (w32 0x0)
and
  assn asm ln 23, prod ln 3.12, live ln 4, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 34, prod ln 4.15, live ln 5, enc 2

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 39, prod ln 5.20, live ln 6, enc 3
  %5 = load i32, i32* %i, l5 c20
  (w32 0x0)
and
  assn asm ln 23, prod ln 3.12, live ln 4, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 39, prod ln 5.20, live ln 6, enc 3

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 53, prod ln 3.27, live ln 4, enc 4
  %10 = load i32, i32* %i, l3 c27
  (w32 0x0)
and
  assn asm ln 23, prod ln 3.12, live ln 4, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 53, prod ln 3.27, live ln 4, enc 4

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 55, prod ln 3.27, live ln 4, enc 5
  %inc = add nsw i32 %10, 1, l3 c27
  (w32 0x1)
and
  assn asm ln 23, prod ln 3.12, live ln 4, enc 0
  i32 0
  (w32 0x0)

Filtering redundant before assignments: `i2` (decl src ln 4)

Checking equivalence of `i2` (decl src ln 4) from
  assn asm ln 44, prod ln 6.20, live ln 7, enc 1
  %6 = load i32, i32* %i2, l6 c20
  (w32 0x2)
and
  assn asm ln 37, prod ln 4.22, live ln 5, enc 0
  %rem = srem i32 %add, 4, l4 c22
  (w32 0x2)
🔔 Removing: asm ln 44, prod ln 6.20, live ln 7, enc 1

Filtering redundant before assignments: `b` (decl src ln 6)

Checking equivalence of `b` (decl src ln 6) from
  assn asm ln 49, prod ln 7.6, live ln 8, enc 1
  %8 = load i32*, i32** %b, l7 c6
  (w64 0xDBBE71147BA862F4)
and
  assn asm ln 47, prod ln 6.15, live ln 7, enc 0
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  (w64 0xDBBE71147BA862F4)
🔔 Removing: asm ln 49, prod ln 7.6, live ln 8, enc 1

Filtering redundant after assignments: `i` (decl src ln 3)

Pushed initial value onto stack: (w32 0x2)
constu/s: (w64 0x2)
minus: (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))
Result: (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))
Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 34, prod ln 3.21, live ln 4, enc 1
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))
and
  assn asm ln 16, prod ln 3.0, live ln 4, enc 0
  i32 0
  (w32 0x0)
Query to parse
(query [] (Eq (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))
     (w32 0x0)))
Parsed query
(Eq (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))
     (w32 0x0))
🔔 Removing: asm ln 34, prod ln 3.21, live ln 4, enc 1

Pushed initial value onto stack: (w32 0x2)
constu/s: (w64 0x2)
minus: (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2)))
constu/s: (w64 0x1)
plus: (Add w32 (Extract w32 0 (w64 0x1))
          (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
Result: (Add w32 (Extract w32 0 (w64 0x1))
          (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 44, prod ln 3.21, live ln 4, enc 2
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  (Add w32 (Extract w32 0 (w64 0x1))
          (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
and
  assn asm ln 16, prod ln 3.0, live ln 4, enc 0
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

Collating encountered before assignments: `n` (decl src ln 1)
  asm ln 17, prod ln 1.0, live ln 2, enc 0
Collating encountered before assignments: `i` (decl src ln 3)
  asm ln 23, prod ln 3.12, live ln 4, enc 0
  asm ln 55, prod ln 3.27, live ln 4, enc 1
Collating encountered before assignments: `i2` (decl src ln 4)
  asm ln 37, prod ln 4.22, live ln 5, enc 0
Collating encountered before assignments: `a` (decl src ln 5)
  asm ln 42, prod ln 5.15, live ln 6, enc 0
Collating encountered before assignments: `b` (decl src ln 6)
  asm ln 47, prod ln 6.15, live ln 7, enc 0

Collating encountered after assignments: `n` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 2, enc 0
Collating encountered after assignments: `i` (decl src ln 3)
  asm ln 16, prod ln 3.0, live ln 4, enc 0
  asm ln 44, prod ln 3.21, live ln 4, enc 1
Collating encountered after assignments: `i2` (decl src ln 4)
  asm ln 36, prod ln 4.22, live ln 6, enc 0
Collating encountered after assignments: `b` (decl src ln 6)
  asm ln 40, prod ln 6.15, live ln 7, enc 0

#### Check after using before as reference

✅ After `a` assns checked using before as reference
Assignments:         a
  Reference:         1
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Not Encountered:   0
  Not Found in Ref:  0
  Not Found in Test: 0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0
Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `b` (decl src ln 6) from
  assn asm ln 40, prod ln 6.15, live ln 7, enc 0
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  (w64 0xDBBE71147BA862F4)
and
  assn asm ln 47, prod ln 6.15, live ln 7, enc 0
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 %idxprom1, l6 c15
  (w64 0xDBBE71147BA862F4)
✅ Before `b` (decl src ln 6) assn asm ln 47, prod ln 6.15, live ln 7, enc 0 symbolic value matches after assn asm ln 40, prod ln 6.15, live ln 7, enc 0

✅ After `b` assns checked using before as reference
Assignments:         b
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Not Encountered:   0
  Not Found in Ref:  0
  Not Found in Test: 0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0
Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

❌ After assns for `data` (decl src ln 2) not found in before
✅ After `data` assns checked using before as reference
Assignments:         data
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Not Encountered:   0
  Not Found in Ref:  0
  Not Found in Test: 0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0
Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 16, prod ln 3.0, live ln 4, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 23, prod ln 3.12, live ln 4, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 3) assn asm ln 23, prod ln 3.12, live ln 4, enc 0 symbolic value matches after assn asm ln 16, prod ln 3.0, live ln 4, enc 0

Checking equivalence of `i` (decl src ln 3) from
  assn asm ln 44, prod ln 3.21, live ln 4, enc 1
  %lsr.iv = phi i32 [ 2, %for.body.preheader ], [ %lsr.iv.next, %for.body ]
  (Add w32 (Extract w32 0 (w64 0x1))
          (Sub w32 (w32 0x2) (Extract w32 0 (w64 0x2))))
and
  assn asm ln 55, prod ln 3.27, live ln 4, enc 1
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
✅ Before `i` (decl src ln 3) assn asm ln 55, prod ln 3.27, live ln 4, enc 1 symbolic value matches after assn asm ln 44, prod ln 3.21, live ln 4, enc 1

✅ After `i` assns checked using before as reference
Assignments:         i
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   2
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Not Encountered:   0
  Not Found in Ref:  0
  Not Found in Test: 0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0
Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

❌ Before `i2` (decl src ln 4) assn asm ln 37, prod ln 4.22, live ln 5, enc 0 coordinates don't match after assn asm ln 36, prod ln 4.22, live ln 6, enc 0
Checking equivalence of `i2` (decl src ln 4) from
  assn asm ln 36, prod ln 4.22, live ln 6, enc 0
  %rem = and i32 %lsr.iv, 3, l4 c22
  (w32 0x2)
and
  assn asm ln 37, prod ln 4.22, live ln 5, enc 0
  %rem = srem i32 %add, 4, l4 c22
  (w32 0x2)
✅ Before `i2` (decl src ln 4) assn asm ln 37, prod ln 4.22, live ln 5, enc 0 symbolic value matches after assn asm ln 36, prod ln 4.22, live ln 6, enc 0

❌ After `i2` assns checked using before as reference
Assignments:         i2
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Not Encountered:   0
  Not Found in Ref:  0
  Not Found in Test: 0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0
Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 12, prod ln 1.0, live ln 2, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 17, prod ln 1.0, live ln 2, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) example.n)
     (ReadLSB w32 (w32 0x0) example.n)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0)
✅ Before `n` (decl src ln 1) assn asm ln 17, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 12, prod ln 1.0, live ln 2, enc 0

✅ After `n` assns checked using before as reference
Assignments:         n
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Not Encountered:   0
  Not Found in Ref:  0
  Not Found in Test: 0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0
Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

## Function `memcpy`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `destaddr` (decl src ln 12), asm ln 114
  %6 = load i8*, i8** %destaddr.addr, l18 c10, asm ln 114
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 114, prod ln 18.10, live ln 19, enc None
Load from declared address of `destaddr` (decl src ln 12), asm ln 88
  %0 = load i8*, i8** %destaddr.addr, l13 c16, asm ln 88
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 88, prod ln 13.16, live ln 14, enc None
Store to declared address of `destaddr` (decl src ln 12), asm ln 81
  arg 0
  Added assignment asm ln 81, prod ln 12.0, live ln 13, enc None
Load from declared address of `srcaddr` (decl src ln 12), asm ln 91
  %1 = load i8*, i8** %srcaddr.addr, l14 c21, asm ln 91
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 91, prod ln 14.21, live ln 15, enc None
Store to declared address of `srcaddr` (decl src ln 12), asm ln 83
  arg 1
  Added assignment asm ln 83, prod ln 12.0, live ln 13, enc None
Store to declared address of `len` (decl src ln 12), asm ln 98
  %dec = add i64 %2, -1, l16 c13, asm ln 97
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 98, prod ln 16.13, live ln 17, enc None
Load from declared address of `len` (decl src ln 12), asm ln 96
  %2 = load i64, i64* %len.addr, l16 c13, asm ln 96
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 96, prod ln 16.13, live ln 17, enc None
Store to declared address of `len` (decl src ln 12), asm ln 85
  arg 2
  Added assignment asm ln 85, prod ln 12.0, live ln 13, enc None
Store to declared address of `dest` (decl src ln 13), asm ln 109
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, l17 c10, asm ln 108
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 109, prod ln 17.10, live ln 18, enc None
Load from declared address of `dest` (decl src ln 13), asm ln 107
  %5 = load i8*, i8** %dest, l17 c10, asm ln 107
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 107, prod ln 17.10, live ln 18, enc None
Store to declared address of `dest` (decl src ln 13), asm ln 89
  %0 = load i8*, i8** %destaddr.addr, l13 c16, asm ln 88
  Added assignment asm ln 89, prod ln 13.16, live ln 14, enc None
Store to declared address of `src` (decl src ln 14), asm ln 105
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l17 c19, asm ln 104
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 105, prod ln 17.19, live ln 18, enc None
Load from declared address of `src` (decl src ln 14), asm ln 103
  %3 = load i8*, i8** %src, l17 c19, asm ln 103
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 103, prod ln 17.19, live ln 18, enc None
Store to declared address of `src` (decl src ln 14), asm ln 92
  %1 = load i8*, i8** %srcaddr.addr, l14 c21, asm ln 91
  Added assignment asm ln 92, prod ln 14.21, live ln 16, enc None

#### After variables

Load from declared address of `destaddr` (decl src ln 12), asm ln 107
  %6 = load i8*, i8** %destaddr.addr, l18 c10, asm ln 107
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 107, prod ln 18.10, live ln 19, enc None
Load from declared address of `destaddr` (decl src ln 12), asm ln 81
  %0 = load i8*, i8** %destaddr.addr, l13 c16, asm ln 81
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 81, prod ln 13.16, live ln 14, enc None
Store to declared address of `destaddr` (decl src ln 12), asm ln 74
  arg 0
  Added assignment asm ln 74, prod ln 12.0, live ln 13, enc None
Load from declared address of `srcaddr` (decl src ln 12), asm ln 84
  %1 = load i8*, i8** %srcaddr.addr, l14 c21, asm ln 84
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 84, prod ln 14.21, live ln 15, enc None
Store to declared address of `srcaddr` (decl src ln 12), asm ln 76
  arg 1
  Added assignment asm ln 76, prod ln 12.0, live ln 13, enc None
Store to declared address of `len` (decl src ln 12), asm ln 91
  %dec = add i64 %2, -1, l16 c13, asm ln 90
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 91, prod ln 16.13, live ln 17, enc None
Load from declared address of `len` (decl src ln 12), asm ln 89
  %2 = load i64, i64* %len.addr, l16 c13, asm ln 89
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 89, prod ln 16.13, live ln 17, enc None
Store to declared address of `len` (decl src ln 12), asm ln 78
  arg 2
  Added assignment asm ln 78, prod ln 12.0, live ln 13, enc None
Store to declared address of `dest` (decl src ln 13), asm ln 102
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, l17 c10, asm ln 101
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 102, prod ln 17.10, live ln 18, enc None
Load from declared address of `dest` (decl src ln 13), asm ln 100
  %5 = load i8*, i8** %dest, l17 c10, asm ln 100
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 100, prod ln 17.10, live ln 18, enc None
Store to declared address of `dest` (decl src ln 13), asm ln 82
  %0 = load i8*, i8** %destaddr.addr, l13 c16, asm ln 81
  Added assignment asm ln 82, prod ln 13.16, live ln 14, enc None
Store to declared address of `src` (decl src ln 14), asm ln 98
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l17 c19, asm ln 97
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 98, prod ln 17.19, live ln 18, enc None
Load from declared address of `src` (decl src ln 14), asm ln 96
  %3 = load i8*, i8** %src, l17 c19, asm ln 96
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 96, prod ln 17.19, live ln 18, enc None
Store to declared address of `src` (decl src ln 14), asm ln 85
  %1 = load i8*, i8** %srcaddr.addr, l14 c21, asm ln 84
  Added assignment asm ln 85, prod ln 14.21, live ln 16, enc None

#### Summary

✅ 5 before variables found, 5 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memcpy.c`
[0mCollected value for `destaddr`
  Assignment asm ln 81, prod ln 12.0, live ln 13, enc 0
  Concrete pointer resolves to memcpy.destaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.destaddr.deref)
  Replaced concrete pointer with hash (w64 0x7FC22D8B9A750CD6)
  i8* %destaddr
  (w64 0x7FC22D8B9A750CD6)
Collected value for `srcaddr`
  Assignment asm ln 83, prod ln 12.0, live ln 13, enc 0
  Concrete pointer resolves to memcpy.srcaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.srcaddr.deref)
  Replaced concrete pointer with hash (w64 0x5E3323D2F45AA419)
  i8* %srcaddr
  (w64 0x5E3323D2F45AA419)
Collected value for `len`
  Assignment asm ln 85, prod ln 12.0, live ln 13, enc 0
  i64 %len
  (ReadLSB w64 (w32 0x0) memcpy.len)
Collected value for `destaddr`
  Assignment asm ln 88, prod ln 13.16, live ln 14, enc 1
  Concrete pointer resolves to memcpy.destaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.destaddr.deref)
  Replaced concrete pointer with hash (w64 0x7FC22D8B9A750CD6)
  %0 = load i8*, i8** %destaddr.addr, l13 c16
  (w64 0x7FC22D8B9A750CD6)
Collected value for `dest`
  Assignment asm ln 89, prod ln 13.16, live ln 14, enc 0
  Concrete pointer resolves to memcpy.destaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.destaddr.deref)
  Replaced concrete pointer with hash (w64 0x7FC22D8B9A750CD6)
  %0 = load i8*, i8** %destaddr.addr, l13 c16
  (w64 0x7FC22D8B9A750CD6)
Collected value for `srcaddr`
  Assignment asm ln 91, prod ln 14.21, live ln 15, enc 1
  Concrete pointer resolves to memcpy.srcaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.srcaddr.deref)
  Replaced concrete pointer with hash (w64 0x5E3323D2F45AA419)
  %1 = load i8*, i8** %srcaddr.addr, l14 c21
  (w64 0x5E3323D2F45AA419)
Collected value for `src`
  Assignment asm ln 92, prod ln 14.21, live ln 16, enc 0
  Concrete pointer resolves to memcpy.srcaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.srcaddr.deref)
  Replaced concrete pointer with hash (w64 0x5E3323D2F45AA419)
  %1 = load i8*, i8** %srcaddr.addr, l14 c21
  (w64 0x5E3323D2F45AA419)
Collected value for `len`
  Assignment asm ln 96, prod ln 16.13, live ln 17, enc 1
  %2 = load i64, i64* %len.addr, l16 c13
  (ReadLSB w64 (w32 0x0) memcpy.len)
Collected value for `len`
  Assignment asm ln 98, prod ln 16.13, live ln 17, enc 2
  %dec = add i64 %2, -1, l16 c13
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memcpy.len))
Collected value for `destaddr`
  Assignment asm ln 114, prod ln 18.10, live ln 19, enc 2
  Concrete pointer resolves to memcpy.destaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.destaddr.deref)
  Replaced concrete pointer with hash (w64 0x7FC22D8B9A750CD6)
  %6 = load i8*, i8** %destaddr.addr, l18 c10
  (w64 0x7FC22D8B9A750CD6)
Collected value for `src`
  Assignment asm ln 103, prod ln 17.19, live ln 18, enc 1
  Concrete pointer resolves to memcpy.srcaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.srcaddr.deref)
  Replaced concrete pointer with hash (w64 0x5E3323D2F45AA419)
  %3 = load i8*, i8** %src, l17 c19
  (w64 0x5E3323D2F45AA419)
Collected value for `src`
  Assignment asm ln 105, prod ln 17.19, live ln 18, enc 2
  Concrete pointer resolves to memcpy.srcaddr.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) memcpy.srcaddr.deref)
  Replaced concrete pointer with hash (w64 0x4570F25F0268EBE0)
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l17 c19
  (w64 0x4570F25F0268EBE0)
Collected value for `dest`
  Assignment asm ln 107, prod ln 17.10, live ln 18, enc 1
  Concrete pointer resolves to memcpy.destaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.destaddr.deref)
  Replaced concrete pointer with hash (w64 0x7FC22D8B9A750CD6)
  %5 = load i8*, i8** %dest, l17 c10
  (w64 0x7FC22D8B9A750CD6)
Collected value for `dest`
  Assignment asm ln 109, prod ln 17.10, live ln 18, enc 2
  Concrete pointer resolves to memcpy.destaddr.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) memcpy.destaddr.deref)
  Replaced concrete pointer with hash (w64 0x5870C7D2416A9BDE)
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, l17 c10
  (w64 0x5870C7D2416A9BDE)

🔔 Unable to execute all before program states

#### After values

Collected value for `destaddr`
  Assignment asm ln 74, prod ln 12.0, live ln 13, enc 0
  Concrete pointer resolves to memcpy.destaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.destaddr.deref)
  Replaced concrete pointer with hash (w64 0x7FC22D8B9A750CD6)
  i8* %destaddr
  (w64 0x7FC22D8B9A750CD6)
Collected value for `srcaddr`
  Assignment asm ln 76, prod ln 12.0, live ln 13, enc 0
  Concrete pointer resolves to memcpy.srcaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.srcaddr.deref)
  Replaced concrete pointer with hash (w64 0x5E3323D2F45AA419)
  i8* %srcaddr
  (w64 0x5E3323D2F45AA419)
Collected value for `len`
  Assignment asm ln 78, prod ln 12.0, live ln 13, enc 0
  i64 %len
  (ReadLSB w64 (w32 0x0) memcpy.len)
Collected value for `destaddr`
  Assignment asm ln 81, prod ln 13.16, live ln 14, enc 1
  Concrete pointer resolves to memcpy.destaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.destaddr.deref)
  Replaced concrete pointer with hash (w64 0x7FC22D8B9A750CD6)
  %0 = load i8*, i8** %destaddr.addr, l13 c16
  (w64 0x7FC22D8B9A750CD6)
Collected value for `dest`
  Assignment asm ln 82, prod ln 13.16, live ln 14, enc 0
  Concrete pointer resolves to memcpy.destaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.destaddr.deref)
  Replaced concrete pointer with hash (w64 0x7FC22D8B9A750CD6)
  %0 = load i8*, i8** %destaddr.addr, l13 c16
  (w64 0x7FC22D8B9A750CD6)
Collected value for `srcaddr`
  Assignment asm ln 84, prod ln 14.21, live ln 15, enc 1
  Concrete pointer resolves to memcpy.srcaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.srcaddr.deref)
  Replaced concrete pointer with hash (w64 0x5E3323D2F45AA419)
  %1 = load i8*, i8** %srcaddr.addr, l14 c21
  (w64 0x5E3323D2F45AA419)
Collected value for `src`
  Assignment asm ln 85, prod ln 14.21, live ln 16, enc 0
  Concrete pointer resolves to memcpy.srcaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.srcaddr.deref)
  Replaced concrete pointer with hash (w64 0x5E3323D2F45AA419)
  %1 = load i8*, i8** %srcaddr.addr, l14 c21
  (w64 0x5E3323D2F45AA419)
Collected value for `len`
  Assignment asm ln 89, prod ln 16.13, live ln 17, enc 1
  %2 = load i64, i64* %len.addr, l16 c13
  (ReadLSB w64 (w32 0x0) memcpy.len)
Collected value for `len`
  Assignment asm ln 91, prod ln 16.13, live ln 17, enc 2
  %dec = add i64 %2, -1, l16 c13
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memcpy.len))
Collected value for `destaddr`
  Assignment asm ln 107, prod ln 18.10, live ln 19, enc 2
  Concrete pointer resolves to memcpy.destaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.destaddr.deref)
  Replaced concrete pointer with hash (w64 0x7FC22D8B9A750CD6)
  %6 = load i8*, i8** %destaddr.addr, l18 c10
  (w64 0x7FC22D8B9A750CD6)
Collected value for `src`
  Assignment asm ln 96, prod ln 17.19, live ln 18, enc 1
  Concrete pointer resolves to memcpy.srcaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.srcaddr.deref)
  Replaced concrete pointer with hash (w64 0x5E3323D2F45AA419)
  %3 = load i8*, i8** %src, l17 c19
  (w64 0x5E3323D2F45AA419)
Collected value for `src`
  Assignment asm ln 98, prod ln 17.19, live ln 18, enc 2
  Concrete pointer resolves to memcpy.srcaddr.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) memcpy.srcaddr.deref)
  Replaced concrete pointer with hash (w64 0x4570F25F0268EBE0)
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l17 c19
  (w64 0x4570F25F0268EBE0)
Collected value for `dest`
  Assignment asm ln 100, prod ln 17.10, live ln 18, enc 1
  Concrete pointer resolves to memcpy.destaddr.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memcpy.destaddr.deref)
  Replaced concrete pointer with hash (w64 0x7FC22D8B9A750CD6)
  %5 = load i8*, i8** %dest, l17 c10
  (w64 0x7FC22D8B9A750CD6)
Collected value for `dest`
  Assignment asm ln 102, prod ln 17.10, live ln 18, enc 2
  Concrete pointer resolves to memcpy.destaddr.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) memcpy.destaddr.deref)
  Replaced concrete pointer with hash (w64 0x5870C7D2416A9BDE)
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, l17 c10
  (w64 0x5870C7D2416A9BDE)

🔔 Unable to execute all after program states

### Assignments

#### Collation

Filtering redundant before assignments: `destaddr` (decl src ln 12)

Checking equivalence of `destaddr` (decl src ln 12) from
  assn asm ln 88, prod ln 13.16, live ln 14, enc 1
  %0 = load i8*, i8** %destaddr.addr, l13 c16
  (w64 0x7FC22D8B9A750CD6)
and
  assn asm ln 81, prod ln 12.0, live ln 13, enc 0
  i8* %destaddr
  (w64 0x7FC22D8B9A750CD6)
🔔 Removing: asm ln 88, prod ln 13.16, live ln 14, enc 1

Checking equivalence of `destaddr` (decl src ln 12) from
  assn asm ln 114, prod ln 18.10, live ln 19, enc 2
  %6 = load i8*, i8** %destaddr.addr, l18 c10
  (w64 0x7FC22D8B9A750CD6)
and
  assn asm ln 81, prod ln 12.0, live ln 13, enc 0
  i8* %destaddr
  (w64 0x7FC22D8B9A750CD6)
🔔 Removing: asm ln 114, prod ln 18.10, live ln 19, enc 2

Filtering redundant before assignments: `srcaddr` (decl src ln 12)

Checking equivalence of `srcaddr` (decl src ln 12) from
  assn asm ln 91, prod ln 14.21, live ln 15, enc 1
  %1 = load i8*, i8** %srcaddr.addr, l14 c21
  (w64 0x5E3323D2F45AA419)
and
  assn asm ln 83, prod ln 12.0, live ln 13, enc 0
  i8* %srcaddr
  (w64 0x5E3323D2F45AA419)
🔔 Removing: asm ln 91, prod ln 14.21, live ln 15, enc 1

Filtering redundant before assignments: `len` (decl src ln 12)

Checking equivalence of `len` (decl src ln 12) from
  assn asm ln 96, prod ln 16.13, live ln 17, enc 1
  %2 = load i64, i64* %len.addr, l16 c13
  (ReadLSB w64 (w32 0x0) memcpy.len)
and
  assn asm ln 85, prod ln 12.0, live ln 13, enc 0
  i64 %len
  (ReadLSB w64 (w32 0x0) memcpy.len)
Query to parse
array memcpy.len[8] : w32 -> w8 = symbolic
array memcpy.len[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) memcpy.len)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) memcpy.len)
     N0)
🔔 Removing: asm ln 96, prod ln 16.13, live ln 17, enc 1

Checking equivalence of `len` (decl src ln 12) from
  assn asm ln 98, prod ln 16.13, live ln 17, enc 2
  %dec = add i64 %2, -1, l16 c13
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memcpy.len))
and
  assn asm ln 85, prod ln 12.0, live ln 13, enc 0
  i64 %len
  (ReadLSB w64 (w32 0x0) memcpy.len)
Query to parse
array memcpy.len[8] : w32 -> w8 = symbolic
array memcpy.len[8] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
              N0:(ReadLSB w64 (w32 0x0) memcpy.len))
     N0))
Parsed query
(Eq (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
              N0:(ReadLSB w64 (w32 0x0) memcpy.len))
     N0)

Filtering redundant before assignments: `dest` (decl src ln 13)

Checking equivalence of `dest` (decl src ln 13) from
  assn asm ln 107, prod ln 17.10, live ln 18, enc 1
  %5 = load i8*, i8** %dest, l17 c10
  (w64 0x7FC22D8B9A750CD6)
and
  assn asm ln 89, prod ln 13.16, live ln 14, enc 0
  %0 = load i8*, i8** %destaddr.addr, l13 c16
  (w64 0x7FC22D8B9A750CD6)
🔔 Removing: asm ln 107, prod ln 17.10, live ln 18, enc 1

Checking equivalence of `dest` (decl src ln 13) from
  assn asm ln 109, prod ln 17.10, live ln 18, enc 2
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, l17 c10
  (w64 0x5870C7D2416A9BDE)
and
  assn asm ln 89, prod ln 13.16, live ln 14, enc 0
  %0 = load i8*, i8** %destaddr.addr, l13 c16
  (w64 0x7FC22D8B9A750CD6)

Filtering redundant before assignments: `src` (decl src ln 14)

Checking equivalence of `src` (decl src ln 14) from
  assn asm ln 103, prod ln 17.19, live ln 18, enc 1
  %3 = load i8*, i8** %src, l17 c19
  (w64 0x5E3323D2F45AA419)
and
  assn asm ln 92, prod ln 14.21, live ln 16, enc 0
  %1 = load i8*, i8** %srcaddr.addr, l14 c21
  (w64 0x5E3323D2F45AA419)
🔔 Removing: asm ln 103, prod ln 17.19, live ln 18, enc 1

Checking equivalence of `src` (decl src ln 14) from
  assn asm ln 105, prod ln 17.19, live ln 18, enc 2
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l17 c19
  (w64 0x4570F25F0268EBE0)
and
  assn asm ln 92, prod ln 14.21, live ln 16, enc 0
  %1 = load i8*, i8** %srcaddr.addr, l14 c21
  (w64 0x5E3323D2F45AA419)

Filtering redundant after assignments: `destaddr` (decl src ln 12)

Checking equivalence of `destaddr` (decl src ln 12) from
  assn asm ln 81, prod ln 13.16, live ln 14, enc 1
  %0 = load i8*, i8** %destaddr.addr, l13 c16
  (w64 0x7FC22D8B9A750CD6)
and
  assn asm ln 74, prod ln 12.0, live ln 13, enc 0
  i8* %destaddr
  (w64 0x7FC22D8B9A750CD6)
🔔 Removing: asm ln 81, prod ln 13.16, live ln 14, enc 1

Checking equivalence of `destaddr` (decl src ln 12) from
  assn asm ln 107, prod ln 18.10, live ln 19, enc 2
  %6 = load i8*, i8** %destaddr.addr, l18 c10
  (w64 0x7FC22D8B9A750CD6)
and
  assn asm ln 74, prod ln 12.0, live ln 13, enc 0
  i8* %destaddr
  (w64 0x7FC22D8B9A750CD6)
🔔 Removing: asm ln 107, prod ln 18.10, live ln 19, enc 2

Filtering redundant after assignments: `srcaddr` (decl src ln 12)

Checking equivalence of `srcaddr` (decl src ln 12) from
  assn asm ln 84, prod ln 14.21, live ln 15, enc 1
  %1 = load i8*, i8** %srcaddr.addr, l14 c21
  (w64 0x5E3323D2F45AA419)
and
  assn asm ln 76, prod ln 12.0, live ln 13, enc 0
  i8* %srcaddr
  (w64 0x5E3323D2F45AA419)
🔔 Removing: asm ln 84, prod ln 14.21, live ln 15, enc 1

Filtering redundant after assignments: `len` (decl src ln 12)

Checking equivalence of `len` (decl src ln 12) from
  assn asm ln 89, prod ln 16.13, live ln 17, enc 1
  %2 = load i64, i64* %len.addr, l16 c13
  (ReadLSB w64 (w32 0x0) memcpy.len)
and
  assn asm ln 78, prod ln 12.0, live ln 13, enc 0
  i64 %len
  (ReadLSB w64 (w32 0x0) memcpy.len)
Query to parse
array memcpy.len[8] : w32 -> w8 = symbolic
array memcpy.len[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) memcpy.len)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) memcpy.len)
     N0)
🔔 Removing: asm ln 89, prod ln 16.13, live ln 17, enc 1

Checking equivalence of `len` (decl src ln 12) from
  assn asm ln 91, prod ln 16.13, live ln 17, enc 2
  %dec = add i64 %2, -1, l16 c13
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memcpy.len))
and
  assn asm ln 78, prod ln 12.0, live ln 13, enc 0
  i64 %len
  (ReadLSB w64 (w32 0x0) memcpy.len)
Query to parse
array memcpy.len[8] : w32 -> w8 = symbolic
array memcpy.len[8] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
              N0:(ReadLSB w64 (w32 0x0) memcpy.len))
     N0))
Parsed query
(Eq (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
              N0:(ReadLSB w64 (w32 0x0) memcpy.len))
     N0)

Filtering redundant after assignments: `dest` (decl src ln 13)

Checking equivalence of `dest` (decl src ln 13) from
  assn asm ln 100, prod ln 17.10, live ln 18, enc 1
  %5 = load i8*, i8** %dest, l17 c10
  (w64 0x7FC22D8B9A750CD6)
and
  assn asm ln 82, prod ln 13.16, live ln 14, enc 0
  %0 = load i8*, i8** %destaddr.addr, l13 c16
  (w64 0x7FC22D8B9A750CD6)
🔔 Removing: asm ln 100, prod ln 17.10, live ln 18, enc 1

Checking equivalence of `dest` (decl src ln 13) from
  assn asm ln 102, prod ln 17.10, live ln 18, enc 2
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, l17 c10
  (w64 0x5870C7D2416A9BDE)
and
  assn asm ln 82, prod ln 13.16, live ln 14, enc 0
  %0 = load i8*, i8** %destaddr.addr, l13 c16
  (w64 0x7FC22D8B9A750CD6)

Filtering redundant after assignments: `src` (decl src ln 14)

Checking equivalence of `src` (decl src ln 14) from
  assn asm ln 96, prod ln 17.19, live ln 18, enc 1
  %3 = load i8*, i8** %src, l17 c19
  (w64 0x5E3323D2F45AA419)
and
  assn asm ln 85, prod ln 14.21, live ln 16, enc 0
  %1 = load i8*, i8** %srcaddr.addr, l14 c21
  (w64 0x5E3323D2F45AA419)
🔔 Removing: asm ln 96, prod ln 17.19, live ln 18, enc 1

Checking equivalence of `src` (decl src ln 14) from
  assn asm ln 98, prod ln 17.19, live ln 18, enc 2
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l17 c19
  (w64 0x4570F25F0268EBE0)
and
  assn asm ln 85, prod ln 14.21, live ln 16, enc 0
  %1 = load i8*, i8** %srcaddr.addr, l14 c21
  (w64 0x5E3323D2F45AA419)

Collating encountered before assignments: `destaddr` (decl src ln 12)
  asm ln 81, prod ln 12.0, live ln 13, enc 0
Collating encountered before assignments: `srcaddr` (decl src ln 12)
  asm ln 83, prod ln 12.0, live ln 13, enc 0
Collating encountered before assignments: `len` (decl src ln 12)
  asm ln 85, prod ln 12.0, live ln 13, enc 0
  asm ln 98, prod ln 16.13, live ln 17, enc 1
Collating encountered before assignments: `dest` (decl src ln 13)
  asm ln 89, prod ln 13.16, live ln 14, enc 0
  asm ln 109, prod ln 17.10, live ln 18, enc 1
Collating encountered before assignments: `src` (decl src ln 14)
  asm ln 92, prod ln 14.21, live ln 16, enc 0
  asm ln 105, prod ln 17.19, live ln 18, enc 1

Collating encountered after assignments: `destaddr` (decl src ln 12)
  asm ln 74, prod ln 12.0, live ln 13, enc 0
Collating encountered after assignments: `srcaddr` (decl src ln 12)
  asm ln 76, prod ln 12.0, live ln 13, enc 0
Collating encountered after assignments: `len` (decl src ln 12)
  asm ln 78, prod ln 12.0, live ln 13, enc 0
  asm ln 91, prod ln 16.13, live ln 17, enc 1
Collating encountered after assignments: `dest` (decl src ln 13)
  asm ln 82, prod ln 13.16, live ln 14, enc 0
  asm ln 102, prod ln 17.10, live ln 18, enc 1
Collating encountered after assignments: `src` (decl src ln 14)
  asm ln 85, prod ln 14.21, live ln 16, enc 0
  asm ln 98, prod ln 17.19, live ln 18, enc 1

#### Check after using before as reference

Checking equivalence of `dest` (decl src ln 13) from
  assn asm ln 82, prod ln 13.16, live ln 14, enc 0
  %0 = load i8*, i8** %destaddr.addr, l13 c16
  (w64 0x7FC22D8B9A750CD6)
and
  assn asm ln 89, prod ln 13.16, live ln 14, enc 0
  %0 = load i8*, i8** %destaddr.addr, l13 c16
  (w64 0x7FC22D8B9A750CD6)
✅ Before `dest` (decl src ln 13) assn asm ln 89, prod ln 13.16, live ln 14, enc 0 symbolic value matches after assn asm ln 82, prod ln 13.16, live ln 14, enc 0

Checking equivalence of `dest` (decl src ln 13) from
  assn asm ln 102, prod ln 17.10, live ln 18, enc 1
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, l17 c10
  (w64 0x5870C7D2416A9BDE)
and
  assn asm ln 109, prod ln 17.10, live ln 18, enc 1
  %incdec.ptr1 = getelementptr inbounds i8, i8* %5, i32 1, l17 c10
  (w64 0x5870C7D2416A9BDE)
✅ Before `dest` (decl src ln 13) assn asm ln 109, prod ln 17.10, live ln 18, enc 1 symbolic value matches after assn asm ln 102, prod ln 17.10, live ln 18, enc 1

✅ After `dest` assns checked using before as reference
Assignments:         dest
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   2
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Not Encountered:   0
  Not Found in Ref:  0
  Not Found in Test: 0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0
Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `destaddr` (decl src ln 12) from
  assn asm ln 74, prod ln 12.0, live ln 13, enc 0
  i8* %destaddr
  (w64 0x7FC22D8B9A750CD6)
and
  assn asm ln 81, prod ln 12.0, live ln 13, enc 0
  i8* %destaddr
  (w64 0x7FC22D8B9A750CD6)
✅ Before `destaddr` (decl src ln 12) assn asm ln 81, prod ln 12.0, live ln 13, enc 0 symbolic value matches after assn asm ln 74, prod ln 12.0, live ln 13, enc 0

✅ After `destaddr` assns checked using before as reference
Assignments:         destaddr
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Not Encountered:   0
  Not Found in Ref:  0
  Not Found in Test: 0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0
Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `len` (decl src ln 12) from
  assn asm ln 78, prod ln 12.0, live ln 13, enc 0
  i64 %len
  (ReadLSB w64 (w32 0x0) memcpy.len)
and
  assn asm ln 85, prod ln 12.0, live ln 13, enc 0
  i64 %len
  (ReadLSB w64 (w32 0x0) memcpy.len)
Query to parse
array memcpy.len[8] : w32 -> w8 = symbolic
array memcpy.len[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) memcpy.len)
     (ReadLSB w64 (w32 0x0) memcpy.len)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) memcpy.len)
     N0)
✅ Before `len` (decl src ln 12) assn asm ln 85, prod ln 12.0, live ln 13, enc 0 symbolic value matches after assn asm ln 78, prod ln 12.0, live ln 13, enc 0

Checking equivalence of `len` (decl src ln 12) from
  assn asm ln 91, prod ln 16.13, live ln 17, enc 1
  %dec = add i64 %2, -1, l16 c13
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memcpy.len))
and
  assn asm ln 98, prod ln 16.13, live ln 17, enc 1
  %dec = add i64 %2, -1, l16 c13
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memcpy.len))
Query to parse
array memcpy.len[8] : w32 -> w8 = symbolic
array memcpy.len[8] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
              (ReadLSB w64 (w32 0x0) memcpy.len))
     (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
              (ReadLSB w64 (w32 0x0) memcpy.len))))
Parsed query
(Eq N0:(Add w64 (w64 0xFFFFFFFFFFFFFFFF)
                 (ReadLSB w64 (w32 0x0) memcpy.len))
     N0)
✅ Before `len` (decl src ln 12) assn asm ln 98, prod ln 16.13, live ln 17, enc 1 symbolic value matches after assn asm ln 91, prod ln 16.13, live ln 17, enc 1

✅ After `len` assns checked using before as reference
Assignments:         len
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   2
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Not Encountered:   0
  Not Found in Ref:  0
  Not Found in Test: 0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0
Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `src` (decl src ln 14) from
  assn asm ln 85, prod ln 14.21, live ln 16, enc 0
  %1 = load i8*, i8** %srcaddr.addr, l14 c21
  (w64 0x5E3323D2F45AA419)
and
  assn asm ln 92, prod ln 14.21, live ln 16, enc 0
  %1 = load i8*, i8** %srcaddr.addr, l14 c21
  (w64 0x5E3323D2F45AA419)
✅ Before `src` (decl src ln 14) assn asm ln 92, prod ln 14.21, live ln 16, enc 0 symbolic value matches after assn asm ln 85, prod ln 14.21, live ln 16, enc 0

Checking equivalence of `src` (decl src ln 14) from
  assn asm ln 98, prod ln 17.19, live ln 18, enc 1
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l17 c19
  (w64 0x4570F25F0268EBE0)
and
  assn asm ln 105, prod ln 17.19, live ln 18, enc 1
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l17 c19
  (w64 0x4570F25F0268EBE0)
✅ Before `src` (decl src ln 14) assn asm ln 105, prod ln 17.19, live ln 18, enc 1 symbolic value matches after assn asm ln 98, prod ln 17.19, live ln 18, enc 1

✅ After `src` assns checked using before as reference
Assignments:         src
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   2
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Not Encountered:   0
  Not Found in Ref:  0
  Not Found in Test: 0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0
Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `srcaddr` (decl src ln 12) from
  assn asm ln 76, prod ln 12.0, live ln 13, enc 0
  i8* %srcaddr
  (w64 0x5E3323D2F45AA419)
and
  assn asm ln 83, prod ln 12.0, live ln 13, enc 0
  i8* %srcaddr
  (w64 0x5E3323D2F45AA419)
✅ Before `srcaddr` (decl src ln 12) assn asm ln 83, prod ln 12.0, live ln 13, enc 0 symbolic value matches after assn asm ln 76, prod ln 12.0, live ln 13, enc 0

✅ After `srcaddr` assns checked using before as reference
Assignments:         srcaddr
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Not Encountered:   0
  Not Found in Ref:  0
  Not Found in Test: 0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0
Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

## Summary

Assignments:
  Reference:                14
  Test:                     13 ( 92.86%)
Matching:
  Matching Coords:          12 ( 85.71%)
  Matching Value:           13 ( 92.86%)
Consistency Errors:
  Mismatched Coords:         1 (  7.14%)
  Mismatched Value:          0 (  0.00%)
Availability Errors:
  Not Encountered:           0 (  0.00%)
  Not Found in Ref:          0 (  0.00%)
  Not Found in Test:         0 (  0.00%)
Warnings:
  Unused:                    0 (  0.00%)
  Unreachable:               0 (  0.00%)
  Removable:                 0 (  0.00%)
Execution:
  Function Covered:         13 ( 92.86%)
  Complete:                  0 (  0.00%)
  Within Time Limit:        13 ( 92.86%)
  Within Fork Limit:         0 (  0.00%)

❌ Some consistency checks failed
