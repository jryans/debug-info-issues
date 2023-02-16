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
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=cb_insert example-O0.ll
Writing '.cb_insert.dot'...
++ mv .cb_insert.dot example-O0.cb_insert.dot
++ ./../../tools/filter-dot.js example-O0.cb_insert.dot
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
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=cb_insert example-O1-cg.ll
Writing '.cb_insert.dot'...
++ mv .cb_insert.dot example-O1-cg.cb_insert.dot
++ ./../../tools/filter-dot.js example-O1-cg.cb_insert.dot
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

✅ 6 before defined functions(s), 6 after defined functions(s)

## Function `cb_insert`

✅ Before and after function names match

### Variables

Before variable `t` (decl src ln 62)
Store to `t` (decl src ln 62), asm ln 28
  arg 0
  Added assignment asm ln 28, live ln 69, gen 0, prod ln 62, col 0
Before variable `node` (decl src ln 62)
Store to `node` (decl src ln 62), asm ln 30
  arg 1
  Added assignment asm ln 30, live ln 69, gen 0, prod ln 62, col 0
Before variable `klen` (decl src ln 62)
Store to `klen` (decl src ln 62), asm ln 32
  arg 2
  Added assignment asm ln 32, live ln 69, gen 0, prod ln 62, col 0
Before variable `newbyte` (decl src ln 64)
Store to `newbyte` (decl src ln 64), asm ln 120
  %inc = add i64 %19, 1, l80 c44, asm ln 119
  Added assignment asm ln 120, live ln 80, gen 0, prod ln 80, col 44
Store to `newbyte` (decl src ln 64), asm ln 86
  const i64 0
  Added assignment asm ln 86, live ln 80, gen 0, prod ln 80, col 16
Before variable `newotherbits` (decl src ln 64)
Store to `newotherbits` (decl src ln 64), asm ln 166
  %xor29 = xor i64 %and28, 255, l91 c56, asm ln 165
  Added assignment asm ln 166, live ln 92, gen 0, prod ln 91, col 56
Store to `newotherbits` (decl src ln 64), asm ln 159
  %or26 = or i64 %32, %shr25, l90 c16, asm ln 158
  Added assignment asm ln 159, live ln 91, gen 0, prod ln 90, col 16
Store to `newotherbits` (decl src ln 64), asm ln 154
  %or24 = or i64 %30, %shr23, l89 c16, asm ln 153
  Added assignment asm ln 154, live ln 90, gen 0, prod ln 89, col 16
Store to `newotherbits` (decl src ln 64), asm ln 149
  %or = or i64 %28, %shr, l88 c16, asm ln 148
  Added assignment asm ln 149, live ln 89, gen 0, prod ln 88, col 16
Store to `newotherbits` (decl src ln 64), asm ln 144
  %conv22 = sext i32 %xor to i64, l87 c18, asm ln 143
  Added assignment asm ln 144, live ln 88, gen 0, prod ln 87, col 18
Before variable `c` (decl src ln 65)
Store to `c` (decl src ln 65), asm ln 283
  %conv74 = trunc i32 %cond to i8, l113 c9, asm ln 282
  Added assignment asm ln 283, live ln 114, gen 0, prod ln 113, col 9
Store to `c` (decl src ln 65), asm ln 172
  %37 = load i8, i8* %arrayidx31, l92 c7, asm ln 171
  Added assignment asm ln 172, live ln 93, gen 0, prod ln 92, col 7
Before variable `newdirection` (decl src ln 66)
Store to `newdirection` (decl src ln 66), asm ln 180
  %conv35 = trunc i64 %shr34 to i32, l93 c18, asm ln 179
  Added assignment asm ln 180, live ln 95, gen 0, prod ln 93, col 18
Before variable `wherep` (decl src ln 67)
Store to `wherep` (decl src ln 67), asm ln 300
  %add.ptr = getelementptr inbounds %struct.cb_node.2*, %struct.cb_node.2** %arraydecay83, i64 %74, l115 c23, asm ln 299
  Added assignment asm ln 300, live ln 101, gen 0, prod ln 115, col 23
Store to `wherep` (decl src ln 67), asm ln 201
  %root39 = getelementptr inbounds %struct.cb_tree.3, %struct.cb_tree.3* %47, i32 0, i32 0, l100 c16, asm ln 200
  Added assignment asm ln 201, live ln 101, gen 0, prod ln 100, col 16
Before variable `p` (decl src ln 67)
Store to `p` (decl src ln 67), asm ln 209
  %49 = load %struct.cb_node.2*, %struct.cb_node.2** %48, l105 c9, asm ln 208
  Added assignment asm ln 209, live ln 106, gen 0, prod ln 105, col 9
Store to `p` (decl src ln 67), asm ln 85
  %call = call %struct.cb_node.2* @cb_internal_best_match(%struct.cb_node.2* %8, i8* %arraydecay, i64 %10), l77 c7, asm ln 84
  Added assignment asm ln 85, live ln 80, gen 0, prod ln 77, col 7
Before variable `q` (decl src ln 102)
Store to `q` (decl src ln 102), asm ln 223
  %call45 = call %struct.cb_node.2* @cb_node_of(i8* %53), l108 c9, asm ln 222
  Added assignment asm ln 223, live ln 109, gen 0, prod ln 108, col 9
Before variable `direction` (decl src ln 103)
Store to `direction` (decl src ln 103), asm ln 294
  %conv81 = sext i32 %shr80 to i64, l114 c17, asm ln 293
  Added assignment asm ln 294, live ln 115, gen 0, prod ln 114, col 17
Computing generations: `c` (decl src ln 65)
  asm ln 172, live ln 93, gen 0
  asm ln 283, live ln 114, gen 1
Computing generations: `direction` (decl src ln 103)
  asm ln 294, live ln 115, gen 0
Computing generations: `klen` (decl src ln 62)
  asm ln 32, live ln 69, gen 0
Computing generations: `newbyte` (decl src ln 64)
  asm ln 86, live ln 80, gen 0
  asm ln 120, live ln 80, gen 1
Computing generations: `newdirection` (decl src ln 66)
  asm ln 180, live ln 95, gen 0
Computing generations: `newotherbits` (decl src ln 64)
  asm ln 144, live ln 88, gen 0
  asm ln 149, live ln 89, gen 1
  asm ln 154, live ln 90, gen 2
  asm ln 159, live ln 91, gen 3
  asm ln 166, live ln 92, gen 4
Computing generations: `node` (decl src ln 62)
  asm ln 30, live ln 69, gen 0
Computing generations: `p` (decl src ln 67)
  asm ln 85, live ln 80, gen 0
  asm ln 209, live ln 106, gen 1
Computing generations: `q` (decl src ln 102)
  asm ln 223, live ln 109, gen 0
Computing generations: `t` (decl src ln 62)
  asm ln 28, live ln 69, gen 0
Computing generations: `wherep` (decl src ln 67)
  asm ln 201, live ln 101, gen 0
  asm ln 300, live ln 101, gen 1

After variable `t` (decl src ln 62)
@dbg.value mapping for `t` (decl src ln 62), asm ln 16
Value produced for `t` (decl src ln 62), asm ln 16
  arg 0
  Added assignment asm ln 16, live ln 69, gen 0, prod ln 62, col 0
After variable `node` (decl src ln 62)
@dbg.value mapping for `node` (decl src ln 62), asm ln 17
Value produced for `node` (decl src ln 62), asm ln 17
  arg 1
  Added assignment asm ln 17, live ln 69, gen 0, prod ln 62, col 0
After variable `klen` (decl src ln 62)
@dbg.value mapping for `klen` (decl src ln 62), asm ln 18
Value produced for `klen` (decl src ln 62), asm ln 18
  arg 2
  Added assignment asm ln 18, live ln 69, gen 0, prod ln 62, col 0
After variable `p` (decl src ln 67)
@dbg.value mapping for `p` (decl src ln 67), asm ln 42
Value produced for `p` (decl src ln 67), asm ln 42
  %call = call fastcc %struct.cb_node.4* @cb_internal_best_match(%struct.cb_node.4* nonnull %1, i8* nonnull %arraydecay, i64 %klen), l77 c7, asm ln 41
  Added assignment asm ln 42, live ln 80, gen 0, prod ln 77, col 7
After variable `newbyte` (decl src ln 64)
@dbg.value mapping for `newbyte` (decl src ln 64), asm ln 43
Value produced for `newbyte` (decl src ln 64), asm ln 43
  const i64 0
  Added assignment asm ln 43, live ln 80, gen 0, prod ln 64, col 0
After variable `newbyte` (decl src ln 64)
@dbg.value mapping for `newbyte` (decl src ln 64), asm ln 67
Value produced for `newbyte` (decl src ln 64), asm ln 67
  %inc = add nuw i64 %newbyte.0160, 1, l80 c44, asm ln 66
  Added assignment asm ln 67, live ln 80, gen 0, prod ln 80, col 44
After variable `newotherbits` (decl src ln 64)
@dbg.value mapping for `newotherbits` (decl src ln 64), asm ln 77
Value produced for `newotherbits` (decl src ln 64), asm ln 77
  %conv22 = zext i8 %xor154 to i64, l87 c18, asm ln 76
  Added assignment asm ln 77, live ln 88, gen 0, prod ln 87, col 18
After variable `newotherbits` (decl src ln 64)
@dbg.value mapping for `newotherbits` (decl src ln 64), asm ln 80
Value produced for `newotherbits` (decl src ln 64), asm ln 80
  %or = or i64 %shr, %conv22, l88 c16, asm ln 79
  Added assignment asm ln 80, live ln 89, gen 0, prod ln 88, col 16
After variable `newotherbits` (decl src ln 64)
@dbg.value mapping for `newotherbits` (decl src ln 64), asm ln 83
Value produced for `newotherbits` (decl src ln 64), asm ln 83
  %or24 = or i64 %shr23, %or, l89 c16, asm ln 82
  Added assignment asm ln 83, live ln 90, gen 0, prod ln 89, col 16
After variable `newotherbits` (decl src ln 64)
@dbg.value mapping for `newotherbits` (decl src ln 64), asm ln 86
Value produced for `newotherbits` (decl src ln 64), asm ln 86
  %or26 = or i64 %shr25, %or24, l90 c16, asm ln 85
  Added assignment asm ln 86, live ln 91, gen 0, prod ln 90, col 16
After variable `newotherbits` (decl src ln 64)
@dbg.value mapping for `newotherbits` (decl src ln 64), asm ln 91
Value produced for `newotherbits` (decl src ln 64), asm ln 91
  %xor29 = xor i64 %and28, 255, l91 c56, asm ln 90
  Added assignment asm ln 91, live ln 93, gen 0, prod ln 91, col 56
After variable `c` (decl src ln 65)
@dbg.value mapping for `c` (decl src ln 65), asm ln 92
Value produced for `c` (decl src ln 65), asm ln 92
  %5 = load i8, i8* %scevgep, !tbaa !91, l81 c9, asm ln 57
  Added assignment asm ln 92, live ln 93, gen 0, prod ln 81, col 9
After variable `newdirection` (decl src ln 66)
@dbg.value mapping for `newdirection` (decl src ln 66), asm ln 96
Value produced for `newdirection` (decl src ln 66), asm ln 96
  %shr34 = lshr i64 %add, 8, l93 c43, asm ln 95
  Added assignment asm ln 96, live ln 95, gen 0, prod ln 93, col 43
After variable `wherep` (decl src ln 67)
@dbg.value mapping for `wherep` (decl src ln 67), asm ln 108
Value produced for `wherep` (decl src ln 67), asm ln 108
  %root181 = bitcast %struct.cb_tree.5* %t to %struct.cb_node.4**, l71 c11, asm ln 29
  Added assignment asm ln 108, live ln 101, gen 0, prod ln 71, col 11
After variable `p` (decl src ln 67)
@dbg.value mapping for `p` (decl src ln 67), asm ln 115
Value produced for `p` (decl src ln 67), asm ln 115
  %9 = load %struct.cb_node.4*, %struct.cb_node.4** %wherep.0, !tbaa !126, l105 c9, asm ln 114
  Added assignment asm ln 115, live ln 106, gen 0, prod ln 105, col 9
After variable `q` (decl src ln 102)
@dbg.value mapping for `q` (decl src ln 102), asm ln 124
Value produced for `q` (decl src ln 102), asm ln 124
  %call45 = call fastcc %struct.cb_node.4* @cb_node_of(i8* %11), l108 c9, asm ln 123
  Added assignment asm ln 124, live ln 109, gen 0, prod ln 108, col 9
After variable `direction` (decl src ln 103)
@dbg.value mapping for `direction` (decl src ln 103), asm ln 161
Value produced for `direction` (decl src ln 103), asm ln 161
  %16 = lshr i64 %add79, 8, l114 c42, asm ln 160
  Added assignment asm ln 161, live ln 115, gen 0, prod ln 114, col 42
After variable `wherep` (decl src ln 67)
@dbg.value mapping for `wherep` (decl src ln 67), asm ln 163
Value produced for `wherep` (decl src ln 67), asm ln 163
  %add.ptr = getelementptr inbounds %struct.cb_node.4, %struct.cb_node.4* %call45, i64 0, i32 0, i64 %16, l115 c23, asm ln 162
  Added assignment asm ln 163, live ln 116, gen 0, prod ln 115, col 23
After variable `newbyte` (decl src ln 64)
@dbg.value mapping for `newbyte` (decl src ln 64), asm ln 54
Value produced for `newbyte` (decl src ln 64), asm ln 54
  %newbyte.0160 = phi i64 [ %inc, %for.inc ], [ 0, %for.body.preheader ], asm ln 51
  Phi-based assignment in prologue, skipping
After variable `wherep` (decl src ln 67)
@dbg.value mapping for `wherep` (decl src ln 67), asm ln 113
Value produced for `wherep` (decl src ln 67), asm ln 113
  %wherep.0 = phi %struct.cb_node.4** [ %8, %different_byte_found ], [ %wherep.1, %cleanup ], l100 c10, asm ln 112
  Phi-based assignment in prologue, skipping
After variable `c` (decl src ln 65)
@dbg.value mapping for `c` (decl src ln 65), asm ln 153
Value produced for `c` (decl src ln 65), asm ln 153
  %cond = phi i8 [ %14, %cond.true66 ], [ 0, %if.end61 ], l113 c9, asm ln 152
  Phi-based assignment in prologue, skipping
After variable `wherep` (decl src ln 67)
@dbg.value mapping for `wherep` (decl src ln 67), asm ln 169
Value produced for `wherep` (decl src ln 67), asm ln 169
  %wherep.1 = phi %struct.cb_node.4** [ %add.ptr, %cond.end73 ], [ %wherep.0, %for.cond40 ], [ %wherep.0, %if.end44 ], [ %wherep.0, %land.lhs.true ], asm ln 167
  Phi-based assignment in prologue, skipping
Computing generations: `c` (decl src ln 65)
  asm ln 92, live ln 93, gen 0
Computing generations: `direction` (decl src ln 103)
  asm ln 161, live ln 115, gen 0
Computing generations: `klen` (decl src ln 62)
  asm ln 18, live ln 69, gen 0
Computing generations: `newbyte` (decl src ln 64)
  asm ln 43, live ln 80, gen 0
  asm ln 67, live ln 80, gen 1
Computing generations: `newdirection` (decl src ln 66)
  asm ln 96, live ln 95, gen 0
Computing generations: `newotherbits` (decl src ln 64)
  asm ln 77, live ln 88, gen 0
  asm ln 80, live ln 89, gen 1
  asm ln 83, live ln 90, gen 2
  asm ln 86, live ln 91, gen 3
  asm ln 91, live ln 93, gen 4
Computing generations: `node` (decl src ln 62)
  asm ln 17, live ln 69, gen 0
Computing generations: `p` (decl src ln 67)
  asm ln 42, live ln 80, gen 0
  asm ln 115, live ln 106, gen 1
Computing generations: `q` (decl src ln 102)
  asm ln 124, live ln 109, gen 0
Computing generations: `t` (decl src ln 62)
  asm ln 16, live ln 69, gen 0
Computing generations: `wherep` (decl src ln 67)
  asm ln 108, live ln 101, gen 0
  asm ln 163, live ln 116, gen 1

✅ 11 before variables found, 11 after variables found, 0 mismatched

### Assignments

✅ Before live range coverage
  Covered:   11
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

Collected value for `t`
  Concrete pointer resolves to t.deref, offset 0x0
  Replaced concrete pointer with hash 0x8292380893C10F33
  %struct.cb_tree.3* %t
  0x8292380893C10F33
Collected value for `node`
  Concrete pointer resolves to node.deref, offset 0x0
  Replaced concrete pointer with hash 0xE5FBC9EAFE029AE2
  %struct.cb_node.2* %node
  0xE5FBC9EAFE029AE2
Collected value for `klen`
  i64 %klen
  (ReadLSB w64 0x0 klen)
Collected value for `p`
  Concrete pointer resolves to cb_internal_best_match.return.deref, offset 0x0
  Replaced concrete pointer with hash 0xBBDF9EF64113A051
  %call = call %struct.cb_node.2* @cb_internal_best_match(%struct.cb_node.2* %7, i8* %arraydecay, i64 %9), l77 c7
  0xBBDF9EF64113A051
Collected value for `newbyte`
  i64 0
  0x0
Collected value for `newbyte`
  %inc = add i64 %18, 1, l80 c44
  0x1
Collected value for `newotherbits`
  %conv22 = sext i32 %xor to i64, l87 c18
  (SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                    (ZExt w32 (Read w8 0x0 k.deref))))
Collected value for `newotherbits`
  %or = or i64 %27, %shr, l88 c16
  (Or w64 N0:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                               (ZExt w32 (Read w8 0x0 k.deref))))
         (LShr w64 N0 0x1))
Collected value for `newotherbits`
  %or24 = or i64 %29, %shr23, l89 c16
  (Or w64 N0:(Or w64 N1:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                          (ZExt w32 (Read w8 0x0 k.deref))))
                    (LShr w64 N1 0x1))
         (LShr w64 N0 0x2))
Collected value for `newotherbits`
  %or26 = or i64 %31, %shr25, l90 c16
  (Or w64 N0:(Or w64 N1:(Or w64 N2:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                                     (ZExt w32 (Read w8 0x0 k.deref))))
                               (LShr w64 N2 0x1))
                    (LShr w64 N1 0x2))
         (LShr w64 N0 0x4))
Collected value for `newotherbits`
  %xor29 = xor i64 %and28, 255, l91 c56
  (Xor w64 0xFF
          (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                                                          (ZExt w32 (Read w8 0x0 k.deref))))
                                                    (LShr w64 N3 0x1))
                                         (LShr w64 N2 0x2))
                              (LShr w64 N1 0x4))
                   (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
Collected value for `c`
  %36 = load i8, i8* %arrayidx31, l92 c7
  (Read w8 0x15 cb_internal_best_match.return.deref)
Collected value for `newdirection`
  %conv35 = trunc i64 %shr34 to i32, l93 c18
  (Extract w32 0 (LShr w64 (Add w64 0x1
                                   (Or w64 (Xor w64 0xFF
                                                    (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 N4:(Read w8 0x15 cb_internal_best_match.return.deref))
                                                                                                                    (ZExt w32 (Read w8 0x0 k.deref))))
                                                                                              (LShr w64 N3 0x1))
                                                                                   (LShr w64 N2 0x2))
                                                                        (LShr w64 N1 0x4))
                                                             (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                           (ZExt w64 N4)))
                          0x8))
Collected value for `wherep`
  Concrete pointer resolves to t.deref, offset 0x0
  Replaced concrete pointer with hash 0x8292380893C10F33
  %root39 = getelementptr inbounds %struct.cb_tree.3, %struct.cb_tree.3* %46, i32 0, i32 0, l100 c16
  0x8292380893C10F33
Collected value for `p`
  Concrete pointer resolves to t.deref.e0.deref, offset 0x0
  Replaced concrete pointer with hash 0xF04B5269B3FFCE6E
  %48 = load %struct.cb_node.2*, %struct.cb_node.2** %47, l105 c9
  0xF04B5269B3FFCE6E

#### After values

Collected value for `t`
  Concrete pointer resolves to t.deref, offset 0x0
  Replaced concrete pointer with hash 0x8292380893C10F33
  %struct.cb_tree.5* %t
  0x8292380893C10F33
Collected value for `node`
  Concrete pointer resolves to node.deref, offset 0x0
  Replaced concrete pointer with hash 0xE5FBC9EAFE029AE2
  %struct.cb_node.4* %node
  0xE5FBC9EAFE029AE2
Collected value for `klen`
  i64 %klen
  (ReadLSB w64 0x0 klen)
Collected value for `p`
  Concrete pointer resolves to cb_internal_best_match.return.deref, offset 0x0
  Replaced concrete pointer with hash 0xBBDF9EF64113A051
  %call = call fastcc %struct.cb_node.4* @cb_internal_best_match(%struct.cb_node.4* nonnull %1, i8* nonnull %arraydecay, i64 %klen), l77 c7
  0xBBDF9EF64113A051
Collected value for `newbyte`
  i64 0
  0x0
Collected value for `newotherbits`
  %conv22 = zext i8 %xor154 to i64, l87 c18
  (ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                   (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
Collected value for `newbyte`
  %inc = add nuw i64 %newbyte.0160, 1, l80 c44
  0x1
Collected value for `newotherbits`
  %or = or i64 %shr, %conv22, l88 c16
  (Or w64 (LShr w64 N0:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                        (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                   0x1)
         N0)
Collected value for `newotherbits`
  %or24 = or i64 %shr23, %or, l89 c16
  (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                             (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                        0x1)
                              N1)
                   0x2)
         N0)
Collected value for `newotherbits`
  %or26 = or i64 %shr25, %or24, l90 c16
  (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                  (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                             0x1)
                                                   N2)
                                        0x2)
                              N1)
                   0x4)
         N0)
Collected value for `newotherbits`
  %xor29 = xor i64 %and28, 255, l91 c56
  (Xor w64 0xFF
          (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                       (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                  0x1)
                                                                        N3)
                                                             0x2)
                                                   N2)
                                        0x4)
                              N1)
                   (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
Collected value for `c`
  %5 = load i8, i8* %scevgep, !tbaa !94, l81 c9
  (Read w8 0x15 cb_internal_best_match.return.deref)
Collected value for `newdirection`
  %shr34 = lshr i64 %add, 8, l93 c43
  (LShr w64 (Add w64 0x1
                    (Or w64 (Xor w64 0xFF
                                     (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                                                  (Extract w8 0 N4:(ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                                             0x1)
                                                                                                   N3)
                                                                                        0x2)
                                                                              N2)
                                                                   0x4)
                                                         N1)
                                              (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                            N4))
           0x8)
Collected value for `wherep`
  Concrete pointer resolves to t.deref, offset 0x0
  Replaced concrete pointer with hash 0x8292380893C10F33
  %root181 = bitcast %struct.cb_tree.5* %t to %struct.cb_node.4**, l71 c11
  0x8292380893C10F33
Collected value for `p`
  Concrete pointer resolves to t.deref.e0.deref, offset 0x0
  Replaced concrete pointer with hash 0xF04B5269B3FFCE6E
  %9 = load %struct.cb_node.4*, %struct.cb_node.4** %wherep.0, !tbaa !129, l105 c9
  0xF04B5269B3FFCE6E

#### Check before against after

Checking equivalence of `c` (decl src ln 65) from
  assn asm ln 172, live ln 93, gen 0
  %36 = load i8, i8* %arrayidx31, l92 c7
  (Read w8 0x15 cb_internal_best_match.return.deref)
and
  assn asm ln 92, live ln 93, gen 0
  %5 = load i8, i8* %scevgep, !tbaa !94, l81 c9
  (Read w8 0x15 cb_internal_best_match.return.deref)
Query to parse
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
(query [] (Eq (Read w8 0x15 cb_internal_best_match.return.deref) (Read w8 0x15 cb_internal_best_match.return.deref)))
Parsed query
(Eq N0:(Read w8 0x15 cb_internal_best_match.return.deref) N0)

🔔 After `c` (decl src ln 65) assn asm ln 92, live ln 93, gen 0 coordinates don't match before assn asm ln 283, live ln 114, gen 1
Expected 1 symbolic value(s), got 0
🔔 Before `c` (decl src ln 65) assn asm ln 283, live ln 114, gen 1 has no symbolic value (likely unreachable) from %conv74 = trunc i32 %cond to i8, l113 c9
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `direction` (decl src ln 103) assn asm ln 294, live ln 115, gen 0 has no symbolic value (likely unreachable) from %conv81 = sext i32 %shr80 to i64, l114 c17
Checking equivalence of `klen` (decl src ln 62) from
  assn asm ln 32, live ln 69, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
and
  assn asm ln 18, live ln 69, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)

Checking equivalence of `newbyte` (decl src ln 64) from
  assn asm ln 86, live ln 80, gen 0
  i64 0
  0x0
and
  assn asm ln 43, live ln 80, gen 0
  i64 0
  0x0

Checking equivalence of `newbyte` (decl src ln 64) from
  assn asm ln 120, live ln 80, gen 1
  %inc = add i64 %18, 1, l80 c44
  0x1
and
  assn asm ln 67, live ln 80, gen 1
  %inc = add nuw i64 %newbyte.0160, 1, l80 c44
  0x1

Pushed initial value onto stack: (LShr w64 (Add w64 0x1
                    (Or w64 (Xor w64 0xFF
                                     (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                                                  (Extract w8 0 N4:(ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                                             0x1)
                                                                                                   N3)
                                                                                        0x2)
                                                                              N2)
                                                                   0x4)
                                                         N1)
                                              (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                            N4))
           0x8)
convert: already 64 bit(s), skipping
convert: (Extract w32 0 (LShr w64 (Add w64 0x1
                                   (Or w64 (Xor w64 0xFF
                                                    (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                                                                 (Extract w8 0 N4:(ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                                                            0x1)
                                                                                                                  N3)
                                                                                                       0x2)
                                                                                             N2)
                                                                                  0x4)
                                                                        N1)
                                                             (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                           N4))
                          0x8))
Result: (Extract w32 0 (LShr w64 (Add w64 0x1
                                   (Or w64 (Xor w64 0xFF
                                                    (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                                                                 (Extract w8 0 N4:(ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                                                            0x1)
                                                                                                                  N3)
                                                                                                       0x2)
                                                                                             N2)
                                                                                  0x4)
                                                                        N1)
                                                             (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                           N4))
                          0x8))
Checking equivalence of `newdirection` (decl src ln 66) from
  assn asm ln 180, live ln 95, gen 0
  %conv35 = trunc i64 %shr34 to i32, l93 c18
  (Extract w32 0 (LShr w64 (Add w64 0x1
                                   (Or w64 (Xor w64 0xFF
                                                    (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 N4:(Read w8 0x15 cb_internal_best_match.return.deref))
                                                                                                                    (ZExt w32 (Read w8 0x0 k.deref))))
                                                                                              (LShr w64 N3 0x1))
                                                                                   (LShr w64 N2 0x2))
                                                                        (LShr w64 N1 0x4))
                                                             (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                           (ZExt w64 N4)))
                          0x8))
and
  assn asm ln 96, live ln 95, gen 0
  %shr34 = lshr i64 %add, 8, l93 c43
  (Extract w32 0 (LShr w64 (Add w64 0x1
                                   (Or w64 (Xor w64 0xFF
                                                    (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                                                                 (Extract w8 0 N4:(ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                                                            0x1)
                                                                                                                  N3)
                                                                                                       0x2)
                                                                                             N2)
                                                                                  0x4)
                                                                        N1)
                                                             (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                           N4))
                          0x8))
Query to parse
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array k.deref[1] : w32 -> w8 = symbolic
array node.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
(query [] (Eq (Extract w32 0 (LShr w64 (Add w64 0x1
                                       (Or w64 (Xor w64 0xFF
                                                        (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 N4:(Read w8 0x15 cb_internal_best_match.return.deref))
                                                                                                                        (ZExt w32 (Read w8 0x0 k.deref))))
                                                                                                  (LShr w64 N3 0x1))
                                                                                       (LShr w64 N2 0x2))
                                                                            (LShr w64 N1 0x4))
                                                                 (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                               (ZExt w64 N4)))
                              0x8))
     (Extract w32 0 (LShr w64 (Add w64 0x1
                                       (Or w64 (Xor w64 0xFF
                                                        (And w64 N5:(Or w64 (LShr w64 N6:(Or w64 (LShr w64 N7:(Or w64 (LShr w64 N8:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                                                                     (Extract w8 0 N9:(ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                                                                0x1)
                                                                                                                      N8)
                                                                                                           0x2)
                                                                                                 N7)
                                                                                      0x4)
                                                                            N6)
                                                                 (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N5 0x1))))
                                               N9))
                              0x8))))
Parsed query
(Eq (Extract w32 0 (LShr w64 (Add w64 0x1
                                       (Or w64 (Xor w64 0xFF
                                                        (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 N4:(Read w8 0x15 cb_internal_best_match.return.deref))
                                                                                                                        (ZExt w32 (Read w8 0x0 k.deref))))
                                                                                                  (LShr w64 N3 0x1))
                                                                                       (LShr w64 N2 0x2))
                                                                            (LShr w64 N1 0x4))
                                                                 (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                               N5:(ZExt w64 N4)))
                              0x8))
     (Extract w32 0 (LShr w64 (Add w64 0x1
                                       (Or w64 (Xor w64 0xFF
                                                        (And w64 N6:(Or w64 (LShr w64 N7:(Or w64 (LShr w64 N8:(Or w64 (LShr w64 N9:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref) (Extract w8 0 N5)))
                                                                                                                                0x1)
                                                                                                                      N9)
                                                                                                           0x2)
                                                                                                 N8)
                                                                                      0x4)
                                                                            N7)
                                                                 (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N6 0x1))))
                                               N5))
                              0x8)))
❌ After `newdirection` (decl src ln 66) assn asm ln 96, live ln 95, gen 0 symbolic value doesn't match before assn asm ln 180, live ln 95, gen 0
(Eq (Extract w32 0 (LShr w64 (Add w64 0x1
                                       (Or w64 (Xor w64 0xFF
                                                        (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 N4:(Read w8 0x15 cb_internal_best_match.return.deref))
                                                                                                                        (ZExt w32 (Read w8 0x0 k.deref))))
                                                                                                  (LShr w64 N3 0x1))
                                                                                       (LShr w64 N2 0x2))
                                                                            (LShr w64 N1 0x4))
                                                                 (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                               N5:(ZExt w64 N4)))
                              0x8))
     (Extract w32 0 (LShr w64 (Add w64 0x1
                                       (Or w64 (Xor w64 0xFF
                                                        (And w64 N6:(Or w64 (LShr w64 N7:(Or w64 (LShr w64 N8:(Or w64 (LShr w64 N9:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref) (Extract w8 0 N5)))
                                                                                                                                0x1)
                                                                                                                      N9)
                                                                                                           0x2)
                                                                                                 N8)
                                                                                      0x4)
                                                                            N7)
                                                                 (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N6 0x1))))
                                               N5))
                              0x8)))

Checking equivalence of `newotherbits` (decl src ln 64) from
  assn asm ln 144, live ln 88, gen 0
  %conv22 = sext i32 %xor to i64, l87 c18
  (SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                    (ZExt w32 (Read w8 0x0 k.deref))))
and
  assn asm ln 77, live ln 88, gen 0
  %conv22 = zext i8 %xor154 to i64, l87 c18
  (ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                   (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
Query to parse
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array k.deref[1] : w32 -> w8 = symbolic
array node.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
(query [] (Eq (SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                        (ZExt w32 (Read w8 0x0 k.deref))))
     (ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                       (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))))
Parsed query
(Eq (SExt w64 (Xor w32 (ZExt w32 N0:(Read w8 0x15 cb_internal_best_match.return.deref))
                        (ZExt w32 (Read w8 0x0 k.deref))))
     (ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                       (Extract w8 0 (ZExt w64 N0)))))
❌ After `newotherbits` (decl src ln 64) assn asm ln 77, live ln 88, gen 0 symbolic value doesn't match before assn asm ln 144, live ln 88, gen 0
(Eq (SExt w64 (Xor w32 (ZExt w32 N0:(Read w8 0x15 cb_internal_best_match.return.deref))
                        (ZExt w32 (Read w8 0x0 k.deref))))
     (ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                       (Extract w8 0 (ZExt w64 N0)))))

Checking equivalence of `newotherbits` (decl src ln 64) from
  assn asm ln 149, live ln 89, gen 1
  %or = or i64 %27, %shr, l88 c16
  (Or w64 N0:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                               (ZExt w32 (Read w8 0x0 k.deref))))
         (LShr w64 N0 0x1))
and
  assn asm ln 80, live ln 89, gen 1
  %or = or i64 %shr, %conv22, l88 c16
  (Or w64 (LShr w64 N0:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                        (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                   0x1)
         N0)
Query to parse
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array k.deref[1] : w32 -> w8 = symbolic
array node.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
(query [] (Eq (Or w64 N0:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                   (ZExt w32 (Read w8 0x0 k.deref))))
             (LShr w64 N0 0x1))
     (Or w64 (LShr w64 N1:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                            (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                       0x1)
             N1)))
Parsed query
(Eq (Or w64 N0:(SExt w64 (Xor w32 (ZExt w32 N1:(Read w8 0x15 cb_internal_best_match.return.deref))
                                   (ZExt w32 (Read w8 0x0 k.deref))))
             (LShr w64 N0 0x1))
     (Or w64 (LShr w64 N2:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                            (Extract w8 0 (ZExt w64 N1))))
                       0x1)
             N2))
❌ After `newotherbits` (decl src ln 64) assn asm ln 80, live ln 89, gen 1 symbolic value doesn't match before assn asm ln 149, live ln 89, gen 1
(Eq (Or w64 N0:(SExt w64 (Xor w32 (ZExt w32 N1:(Read w8 0x15 cb_internal_best_match.return.deref))
                                   (ZExt w32 (Read w8 0x0 k.deref))))
             (LShr w64 N0 0x1))
     (Or w64 (LShr w64 N2:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                            (Extract w8 0 (ZExt w64 N1))))
                       0x1)
             N2))

Checking equivalence of `newotherbits` (decl src ln 64) from
  assn asm ln 154, live ln 90, gen 2
  %or24 = or i64 %29, %shr23, l89 c16
  (Or w64 N0:(Or w64 N1:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                          (ZExt w32 (Read w8 0x0 k.deref))))
                    (LShr w64 N1 0x1))
         (LShr w64 N0 0x2))
and
  assn asm ln 83, live ln 90, gen 2
  %or24 = or i64 %shr23, %or, l89 c16
  (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                             (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                        0x1)
                              N1)
                   0x2)
         N0)
Query to parse
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array k.deref[1] : w32 -> w8 = symbolic
array node.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
(query [] (Eq (Or w64 N0:(Or w64 N1:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                              (ZExt w32 (Read w8 0x0 k.deref))))
                        (LShr w64 N1 0x1))
             (LShr w64 N0 0x2))
     (Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                 (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                            0x1)
                                  N3)
                       0x2)
             N2)))
Parsed query
(Eq (Or w64 N0:(Or w64 N1:(SExt w64 (Xor w32 (ZExt w32 N2:(Read w8 0x15 cb_internal_best_match.return.deref))
                                              (ZExt w32 (Read w8 0x0 k.deref))))
                        (LShr w64 N1 0x1))
             (LShr w64 N0 0x2))
     (Or w64 (LShr w64 N3:(Or w64 (LShr w64 N4:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                 (Extract w8 0 (ZExt w64 N2))))
                                            0x1)
                                  N4)
                       0x2)
             N3))
❌ After `newotherbits` (decl src ln 64) assn asm ln 83, live ln 90, gen 2 symbolic value doesn't match before assn asm ln 154, live ln 90, gen 2
(Eq (Or w64 N0:(Or w64 N1:(SExt w64 (Xor w32 (ZExt w32 N2:(Read w8 0x15 cb_internal_best_match.return.deref))
                                              (ZExt w32 (Read w8 0x0 k.deref))))
                        (LShr w64 N1 0x1))
             (LShr w64 N0 0x2))
     (Or w64 (LShr w64 N3:(Or w64 (LShr w64 N4:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                 (Extract w8 0 (ZExt w64 N2))))
                                            0x1)
                                  N4)
                       0x2)
             N3))

Checking equivalence of `newotherbits` (decl src ln 64) from
  assn asm ln 159, live ln 91, gen 3
  %or26 = or i64 %31, %shr25, l90 c16
  (Or w64 N0:(Or w64 N1:(Or w64 N2:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                                     (ZExt w32 (Read w8 0x0 k.deref))))
                               (LShr w64 N2 0x1))
                    (LShr w64 N1 0x2))
         (LShr w64 N0 0x4))
and
  assn asm ln 86, live ln 91, gen 3
  %or26 = or i64 %shr25, %or24, l90 c16
  (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                  (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                             0x1)
                                                   N2)
                                        0x2)
                              N1)
                   0x4)
         N0)
Query to parse
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array k.deref[1] : w32 -> w8 = symbolic
array node.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
(query [] (Eq (Or w64 N0:(Or w64 N1:(Or w64 N2:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                                         (ZExt w32 (Read w8 0x0 k.deref))))
                                   (LShr w64 N2 0x1))
                        (LShr w64 N1 0x2))
             (LShr w64 N0 0x4))
     (Or w64 (LShr w64 N3:(Or w64 (LShr w64 N4:(Or w64 (LShr w64 N5:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                      (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                 0x1)
                                                       N5)
                                            0x2)
                                  N4)
                       0x4)
             N3)))
Parsed query
(Eq (Or w64 N0:(Or w64 N1:(Or w64 N2:(SExt w64 (Xor w32 (ZExt w32 N3:(Read w8 0x15 cb_internal_best_match.return.deref))
                                                         (ZExt w32 (Read w8 0x0 k.deref))))
                                   (LShr w64 N2 0x1))
                        (LShr w64 N1 0x2))
             (LShr w64 N0 0x4))
     (Or w64 (LShr w64 N4:(Or w64 (LShr w64 N5:(Or w64 (LShr w64 N6:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                      (Extract w8 0 (ZExt w64 N3))))
                                                                 0x1)
                                                       N6)
                                            0x2)
                                  N5)
                       0x4)
             N4))
❌ After `newotherbits` (decl src ln 64) assn asm ln 86, live ln 91, gen 3 symbolic value doesn't match before assn asm ln 159, live ln 91, gen 3
(Eq (Or w64 N0:(Or w64 N1:(Or w64 N2:(SExt w64 (Xor w32 (ZExt w32 N3:(Read w8 0x15 cb_internal_best_match.return.deref))
                                                         (ZExt w32 (Read w8 0x0 k.deref))))
                                   (LShr w64 N2 0x1))
                        (LShr w64 N1 0x2))
             (LShr w64 N0 0x4))
     (Or w64 (LShr w64 N4:(Or w64 (LShr w64 N5:(Or w64 (LShr w64 N6:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                      (Extract w8 0 (ZExt w64 N3))))
                                                                 0x1)
                                                       N6)
                                            0x2)
                                  N5)
                       0x4)
             N4))

🔔 After `newotherbits` (decl src ln 64) assn asm ln 86, live ln 91, gen 3 coordinates don't match before assn asm ln 166, live ln 92, gen 4
Checking equivalence of `newotherbits` (decl src ln 64) from
  assn asm ln 166, live ln 92, gen 4
  %xor29 = xor i64 %and28, 255, l91 c56
  (Xor w64 0xFF
          (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                                                          (ZExt w32 (Read w8 0x0 k.deref))))
                                                    (LShr w64 N3 0x1))
                                         (LShr w64 N2 0x2))
                              (LShr w64 N1 0x4))
                   (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
and
  assn asm ln 86, live ln 91, gen 3
  %or26 = or i64 %shr25, %or24, l90 c16
  (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                  (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                             0x1)
                                                   N2)
                                        0x2)
                              N1)
                   0x4)
         N0)
Query to parse
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array k.deref[1] : w32 -> w8 = symbolic
array node.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
(query [] (Eq (Xor w64 0xFF
              (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                                                              (ZExt w32 (Read w8 0x0 k.deref))))
                                                        (LShr w64 N3 0x1))
                                             (LShr w64 N2 0x2))
                                  (LShr w64 N1 0x4))
                       (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
     (Or w64 (LShr w64 N4:(Or w64 (LShr w64 N5:(Or w64 (LShr w64 N6:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                      (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                 0x1)
                                                       N6)
                                            0x2)
                                  N5)
                       0x4)
             N4)))
Parsed query
(Eq (Xor w64 0xFF
              (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 N4:(Read w8 0x15 cb_internal_best_match.return.deref))
                                                                              (ZExt w32 (Read w8 0x0 k.deref))))
                                                        (LShr w64 N3 0x1))
                                             (LShr w64 N2 0x2))
                                  (LShr w64 N1 0x4))
                       (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
     (Or w64 (LShr w64 N5:(Or w64 (LShr w64 N6:(Or w64 (LShr w64 N7:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                      (Extract w8 0 (ZExt w64 N4))))
                                                                 0x1)
                                                       N7)
                                            0x2)
                                  N6)
                       0x4)
             N5))
❌ After `newotherbits` (decl src ln 64) assn asm ln 86, live ln 91, gen 3 symbolic value doesn't match before assn asm ln 166, live ln 92, gen 4
(Eq (Xor w64 0xFF
              (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 N4:(Read w8 0x15 cb_internal_best_match.return.deref))
                                                                              (ZExt w32 (Read w8 0x0 k.deref))))
                                                        (LShr w64 N3 0x1))
                                             (LShr w64 N2 0x2))
                                  (LShr w64 N1 0x4))
                       (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
     (Or w64 (LShr w64 N5:(Or w64 (LShr w64 N6:(Or w64 (LShr w64 N7:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                      (Extract w8 0 (ZExt w64 N4))))
                                                                 0x1)
                                                       N7)
                                            0x2)
                                  N6)
                       0x4)
             N5))

Checking equivalence of `node` (decl src ln 62) from
  assn asm ln 30, live ln 69, gen 0
  %struct.cb_node.2* %node
  0xE5FBC9EAFE029AE2
and
  assn asm ln 17, live ln 69, gen 0
  %struct.cb_node.4* %node
  0xE5FBC9EAFE029AE2

Checking equivalence of `p` (decl src ln 67) from
  assn asm ln 85, live ln 80, gen 0
  %call = call %struct.cb_node.2* @cb_internal_best_match(%struct.cb_node.2* %7, i8* %arraydecay, i64 %9), l77 c7
  0xBBDF9EF64113A051
and
  assn asm ln 42, live ln 80, gen 0
  %call = call fastcc %struct.cb_node.4* @cb_internal_best_match(%struct.cb_node.4* nonnull %1, i8* nonnull %arraydecay, i64 %klen), l77 c7
  0xBBDF9EF64113A051

Checking equivalence of `p` (decl src ln 67) from
  assn asm ln 209, live ln 106, gen 1
  %48 = load %struct.cb_node.2*, %struct.cb_node.2** %47, l105 c9
  0xF04B5269B3FFCE6E
and
  assn asm ln 115, live ln 106, gen 1
  %9 = load %struct.cb_node.4*, %struct.cb_node.4** %wherep.0, !tbaa !129, l105 c9
  0xF04B5269B3FFCE6E

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `q` (decl src ln 102) assn asm ln 223, live ln 109, gen 0 has no symbolic value (likely unreachable) from %call45 = call %struct.cb_node.2* @cb_node_of(i8* %52), l108 c9
Checking equivalence of `t` (decl src ln 62) from
  assn asm ln 28, live ln 69, gen 0
  %struct.cb_tree.3* %t
  0x8292380893C10F33
and
  assn asm ln 16, live ln 69, gen 0
  %struct.cb_tree.5* %t
  0x8292380893C10F33

Checking equivalence of `wherep` (decl src ln 67) from
  assn asm ln 201, live ln 101, gen 0
  %root39 = getelementptr inbounds %struct.cb_tree.3, %struct.cb_tree.3* %46, i32 0, i32 0, l100 c16
  0x8292380893C10F33
and
  assn asm ln 108, live ln 101, gen 0
  %root181 = bitcast %struct.cb_tree.5* %t to %struct.cb_node.4**, l71 c11
  0x8292380893C10F33

🔔 After `wherep` (decl src ln 67) assn asm ln 108, live ln 101, gen 0 coordinates don't match before assn asm ln 300, live ln 101, gen 1
Expected 1 symbolic value(s), got 0
🔔 Before `wherep` (decl src ln 67) assn asm ln 300, live ln 101, gen 1 has no symbolic value (likely unreachable) from %add.ptr = getelementptr inbounds %struct.cb_node.2*, %struct.cb_node.2** %arraydecay83, i64 %73, l115 c23
❌ Before symbolic values checked against after
  Matching:    9
  Mismatched:  6
  Unused:      0
  Unreachable: 4
  Removable:   0

#### Check after against before

Checking equivalence of `c` (decl src ln 65) from
  assn asm ln 92, live ln 93, gen 0
  %5 = load i8, i8* %scevgep, !tbaa !94, l81 c9
  (Read w8 0x15 cb_internal_best_match.return.deref)
and
  assn asm ln 172, live ln 93, gen 0
  %36 = load i8, i8* %arrayidx31, l92 c7
  (Read w8 0x15 cb_internal_best_match.return.deref)
Query to parse
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
(query [] (Eq (Read w8 0x15 cb_internal_best_match.return.deref) (Read w8 0x15 cb_internal_best_match.return.deref)))
Parsed query
(Eq N0:(Read w8 0x15 cb_internal_best_match.return.deref) N0)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `direction` (decl src ln 103) assn asm ln 161, live ln 115, gen 0 has no symbolic value (likely unreachable) from %16 = lshr i64 %add79, 8, l114 c42
Checking equivalence of `klen` (decl src ln 62) from
  assn asm ln 18, live ln 69, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
and
  assn asm ln 32, live ln 69, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)

Checking equivalence of `newbyte` (decl src ln 64) from
  assn asm ln 43, live ln 80, gen 0
  i64 0
  0x0
and
  assn asm ln 86, live ln 80, gen 0
  i64 0
  0x0

Checking equivalence of `newbyte` (decl src ln 64) from
  assn asm ln 67, live ln 80, gen 1
  %inc = add nuw i64 %newbyte.0160, 1, l80 c44
  0x1
and
  assn asm ln 120, live ln 80, gen 1
  %inc = add i64 %18, 1, l80 c44
  0x1

Checking equivalence of `newdirection` (decl src ln 66) from
  assn asm ln 96, live ln 95, gen 0
  %shr34 = lshr i64 %add, 8, l93 c43
  (Extract w32 0 (LShr w64 (Add w64 0x1
                                   (Or w64 (Xor w64 0xFF
                                                    (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                                                                 (Extract w8 0 N4:(ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                                                            0x1)
                                                                                                                  N3)
                                                                                                       0x2)
                                                                                             N2)
                                                                                  0x4)
                                                                        N1)
                                                             (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                           N4))
                          0x8))
and
  assn asm ln 180, live ln 95, gen 0
  %conv35 = trunc i64 %shr34 to i32, l93 c18
  (Extract w32 0 (LShr w64 (Add w64 0x1
                                   (Or w64 (Xor w64 0xFF
                                                    (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 N4:(Read w8 0x15 cb_internal_best_match.return.deref))
                                                                                                                    (ZExt w32 (Read w8 0x0 k.deref))))
                                                                                              (LShr w64 N3 0x1))
                                                                                   (LShr w64 N2 0x2))
                                                                        (LShr w64 N1 0x4))
                                                             (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                           (ZExt w64 N4)))
                          0x8))
Query to parse
array node.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array k.deref[1] : w32 -> w8 = symbolic
(query [] (Eq (Extract w32 0 (LShr w64 (Add w64 0x1
                                       (Or w64 (Xor w64 0xFF
                                                        (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                                                                     (Extract w8 0 N4:(ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                                                                0x1)
                                                                                                                      N3)
                                                                                                           0x2)
                                                                                                 N2)
                                                                                      0x4)
                                                                            N1)
                                                                 (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                               N4))
                              0x8))
     (Extract w32 0 (LShr w64 (Add w64 0x1
                                       (Or w64 (Xor w64 0xFF
                                                        (And w64 N5:(Or w64 N6:(Or w64 N7:(Or w64 N8:(SExt w64 (Xor w32 (ZExt w32 N9:(Read w8 0x15 cb_internal_best_match.return.deref))
                                                                                                                        (ZExt w32 (Read w8 0x0 k.deref))))
                                                                                                  (LShr w64 N8 0x1))
                                                                                       (LShr w64 N7 0x2))
                                                                            (LShr w64 N6 0x4))
                                                                 (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N5 0x1))))
                                               (ZExt w64 N9)))
                              0x8))))
Parsed query
(Eq (Extract w32 0 (LShr w64 (Add w64 0x1
                                       (Or w64 (Xor w64 0xFF
                                                        (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                                                                     (Extract w8 0 N4:(ZExt w64 N5:(Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                                                                0x1)
                                                                                                                      N3)
                                                                                                           0x2)
                                                                                                 N2)
                                                                                      0x4)
                                                                            N1)
                                                                 (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                               N4))
                              0x8))
     (Extract w32 0 (LShr w64 (Add w64 0x1
                                       (Or w64 (Xor w64 0xFF
                                                        (And w64 N6:(Or w64 N7:(Or w64 N8:(Or w64 N9:(SExt w64 (Xor w32 (ZExt w32 N5)
                                                                                                                        (ZExt w32 (Read w8 0x0 k.deref))))
                                                                                                  (LShr w64 N9 0x1))
                                                                                       (LShr w64 N8 0x2))
                                                                            (LShr w64 N7 0x4))
                                                                 (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N6 0x1))))
                                               N4))
                              0x8)))
❌ Before `newdirection` (decl src ln 66) assn asm ln 180, live ln 95, gen 0 symbolic value doesn't match after assn asm ln 96, live ln 95, gen 0
(Eq (Extract w32 0 (LShr w64 (Add w64 0x1
                                       (Or w64 (Xor w64 0xFF
                                                        (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                                                                     (Extract w8 0 N4:(ZExt w64 N5:(Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                                                                0x1)
                                                                                                                      N3)
                                                                                                           0x2)
                                                                                                 N2)
                                                                                      0x4)
                                                                            N1)
                                                                 (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
                                               N4))
                              0x8))
     (Extract w32 0 (LShr w64 (Add w64 0x1
                                       (Or w64 (Xor w64 0xFF
                                                        (And w64 N6:(Or w64 N7:(Or w64 N8:(Or w64 N9:(SExt w64 (Xor w32 (ZExt w32 N5)
                                                                                                                        (ZExt w32 (Read w8 0x0 k.deref))))
                                                                                                  (LShr w64 N9 0x1))
                                                                                       (LShr w64 N8 0x2))
                                                                            (LShr w64 N7 0x4))
                                                                 (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N6 0x1))))
                                               N4))
                              0x8)))

Checking equivalence of `newotherbits` (decl src ln 64) from
  assn asm ln 77, live ln 88, gen 0
  %conv22 = zext i8 %xor154 to i64, l87 c18
  (ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                   (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
and
  assn asm ln 144, live ln 88, gen 0
  %conv22 = sext i32 %xor to i64, l87 c18
  (SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                    (ZExt w32 (Read w8 0x0 k.deref))))
Query to parse
array node.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array k.deref[1] : w32 -> w8 = symbolic
(query [] (Eq (ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                       (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
     (SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                        (ZExt w32 (Read w8 0x0 k.deref))))))
Parsed query
(Eq (ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                       (Extract w8 0 (ZExt w64 N0:(Read w8 0x15 cb_internal_best_match.return.deref)))))
     (SExt w64 (Xor w32 (ZExt w32 N0)
                        (ZExt w32 (Read w8 0x0 k.deref)))))
❌ Before `newotherbits` (decl src ln 64) assn asm ln 144, live ln 88, gen 0 symbolic value doesn't match after assn asm ln 77, live ln 88, gen 0
(Eq (ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                       (Extract w8 0 (ZExt w64 N0:(Read w8 0x15 cb_internal_best_match.return.deref)))))
     (SExt w64 (Xor w32 (ZExt w32 N0)
                        (ZExt w32 (Read w8 0x0 k.deref)))))

Checking equivalence of `newotherbits` (decl src ln 64) from
  assn asm ln 80, live ln 89, gen 1
  %or = or i64 %shr, %conv22, l88 c16
  (Or w64 (LShr w64 N0:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                        (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                   0x1)
         N0)
and
  assn asm ln 149, live ln 89, gen 1
  %or = or i64 %27, %shr, l88 c16
  (Or w64 N0:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                               (ZExt w32 (Read w8 0x0 k.deref))))
         (LShr w64 N0 0x1))
Query to parse
array node.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array k.deref[1] : w32 -> w8 = symbolic
(query [] (Eq (Or w64 (LShr w64 N0:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                            (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                       0x1)
             N0)
     (Or w64 N1:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                   (ZExt w32 (Read w8 0x0 k.deref))))
             (LShr w64 N1 0x1))))
Parsed query
(Eq (Or w64 (LShr w64 N0:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                            (Extract w8 0 (ZExt w64 N1:(Read w8 0x15 cb_internal_best_match.return.deref)))))
                       0x1)
             N0)
     (Or w64 N2:(SExt w64 (Xor w32 (ZExt w32 N1)
                                   (ZExt w32 (Read w8 0x0 k.deref))))
             (LShr w64 N2 0x1)))
❌ Before `newotherbits` (decl src ln 64) assn asm ln 149, live ln 89, gen 1 symbolic value doesn't match after assn asm ln 80, live ln 89, gen 1
(Eq (Or w64 (LShr w64 N0:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                            (Extract w8 0 (ZExt w64 N1:(Read w8 0x15 cb_internal_best_match.return.deref)))))
                       0x1)
             N0)
     (Or w64 N2:(SExt w64 (Xor w32 (ZExt w32 N1)
                                   (ZExt w32 (Read w8 0x0 k.deref))))
             (LShr w64 N2 0x1)))

Checking equivalence of `newotherbits` (decl src ln 64) from
  assn asm ln 83, live ln 90, gen 2
  %or24 = or i64 %shr23, %or, l89 c16
  (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                             (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                        0x1)
                              N1)
                   0x2)
         N0)
and
  assn asm ln 154, live ln 90, gen 2
  %or24 = or i64 %29, %shr23, l89 c16
  (Or w64 N0:(Or w64 N1:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                          (ZExt w32 (Read w8 0x0 k.deref))))
                    (LShr w64 N1 0x1))
         (LShr w64 N0 0x2))
Query to parse
array node.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array k.deref[1] : w32 -> w8 = symbolic
(query [] (Eq (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                 (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                            0x1)
                                  N1)
                       0x2)
             N0)
     (Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                              (ZExt w32 (Read w8 0x0 k.deref))))
                        (LShr w64 N3 0x1))
             (LShr w64 N2 0x2))))
Parsed query
(Eq (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                 (Extract w8 0 (ZExt w64 N2:(Read w8 0x15 cb_internal_best_match.return.deref)))))
                                            0x1)
                                  N1)
                       0x2)
             N0)
     (Or w64 N3:(Or w64 N4:(SExt w64 (Xor w32 (ZExt w32 N2)
                                              (ZExt w32 (Read w8 0x0 k.deref))))
                        (LShr w64 N4 0x1))
             (LShr w64 N3 0x2)))
❌ Before `newotherbits` (decl src ln 64) assn asm ln 154, live ln 90, gen 2 symbolic value doesn't match after assn asm ln 83, live ln 90, gen 2
(Eq (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                 (Extract w8 0 (ZExt w64 N2:(Read w8 0x15 cb_internal_best_match.return.deref)))))
                                            0x1)
                                  N1)
                       0x2)
             N0)
     (Or w64 N3:(Or w64 N4:(SExt w64 (Xor w32 (ZExt w32 N2)
                                              (ZExt w32 (Read w8 0x0 k.deref))))
                        (LShr w64 N4 0x1))
             (LShr w64 N3 0x2)))

Checking equivalence of `newotherbits` (decl src ln 64) from
  assn asm ln 86, live ln 91, gen 3
  %or26 = or i64 %shr25, %or24, l90 c16
  (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                  (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                             0x1)
                                                   N2)
                                        0x2)
                              N1)
                   0x4)
         N0)
and
  assn asm ln 159, live ln 91, gen 3
  %or26 = or i64 %31, %shr25, l90 c16
  (Or w64 N0:(Or w64 N1:(Or w64 N2:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                                     (ZExt w32 (Read w8 0x0 k.deref))))
                               (LShr w64 N2 0x1))
                    (LShr w64 N1 0x2))
         (LShr w64 N0 0x4))
Query to parse
array node.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array k.deref[1] : w32 -> w8 = symbolic
(query [] (Eq (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                      (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                 0x1)
                                                       N2)
                                            0x2)
                                  N1)
                       0x4)
             N0)
     (Or w64 N3:(Or w64 N4:(Or w64 N5:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                                         (ZExt w32 (Read w8 0x0 k.deref))))
                                   (LShr w64 N5 0x1))
                        (LShr w64 N4 0x2))
             (LShr w64 N3 0x4))))
Parsed query
(Eq (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                      (Extract w8 0 (ZExt w64 N3:(Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                 0x1)
                                                       N2)
                                            0x2)
                                  N1)
                       0x4)
             N0)
     (Or w64 N4:(Or w64 N5:(Or w64 N6:(SExt w64 (Xor w32 (ZExt w32 N3)
                                                         (ZExt w32 (Read w8 0x0 k.deref))))
                                   (LShr w64 N6 0x1))
                        (LShr w64 N5 0x2))
             (LShr w64 N4 0x4)))
❌ Before `newotherbits` (decl src ln 64) assn asm ln 159, live ln 91, gen 3 symbolic value doesn't match after assn asm ln 86, live ln 91, gen 3
(Eq (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                      (Extract w8 0 (ZExt w64 N3:(Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                 0x1)
                                                       N2)
                                            0x2)
                                  N1)
                       0x4)
             N0)
     (Or w64 N4:(Or w64 N5:(Or w64 N6:(SExt w64 (Xor w32 (ZExt w32 N3)
                                                         (ZExt w32 (Read w8 0x0 k.deref))))
                                   (LShr w64 N6 0x1))
                        (LShr w64 N5 0x2))
             (LShr w64 N4 0x4)))

🔔 Before `newotherbits` (decl src ln 64) assn asm ln 166, live ln 92, gen 4 coordinates don't match after assn asm ln 91, live ln 93, gen 4
Checking equivalence of `newotherbits` (decl src ln 64) from
  assn asm ln 91, live ln 93, gen 4
  %xor29 = xor i64 %and28, 255, l91 c56
  (Xor w64 0xFF
          (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                       (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                  0x1)
                                                                        N3)
                                                             0x2)
                                                   N2)
                                        0x4)
                              N1)
                   (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
and
  assn asm ln 166, live ln 92, gen 4
  %xor29 = xor i64 %and28, 255, l91 c56
  (Xor w64 0xFF
          (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                                                          (ZExt w32 (Read w8 0x0 k.deref))))
                                                    (LShr w64 N3 0x1))
                                         (LShr w64 N2 0x2))
                              (LShr w64 N1 0x4))
                   (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
Query to parse
array node.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
array k.deref[1] : w32 -> w8 = symbolic
(query [] (Eq (Xor w64 0xFF
              (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                           (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                      0x1)
                                                                            N3)
                                                                 0x2)
                                                       N2)
                                            0x4)
                                  N1)
                       (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
     (Xor w64 0xFF
              (And w64 N4:(Or w64 N5:(Or w64 N6:(Or w64 N7:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                                                              (ZExt w32 (Read w8 0x0 k.deref))))
                                                        (LShr w64 N7 0x1))
                                             (LShr w64 N6 0x2))
                                  (LShr w64 N5 0x4))
                       (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N4 0x1))))))
Parsed query
(Eq (Xor w64 0xFF
              (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                           (Extract w8 0 (ZExt w64 N4:(Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                      0x1)
                                                                            N3)
                                                                 0x2)
                                                       N2)
                                            0x4)
                                  N1)
                       (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
     (Xor w64 0xFF
              (And w64 N5:(Or w64 N6:(Or w64 N7:(Or w64 N8:(SExt w64 (Xor w32 (ZExt w32 N4)
                                                                              (ZExt w32 (Read w8 0x0 k.deref))))
                                                        (LShr w64 N8 0x1))
                                             (LShr w64 N7 0x2))
                                  (LShr w64 N6 0x4))
                       (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N5 0x1)))))
❌ Before `newotherbits` (decl src ln 64) assn asm ln 166, live ln 92, gen 4 symbolic value doesn't match after assn asm ln 91, live ln 93, gen 4
(Eq (Xor w64 0xFF
              (And w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(Or w64 (LShr w64 N3:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                           (Extract w8 0 (ZExt w64 N4:(Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                                                      0x1)
                                                                            N3)
                                                                 0x2)
                                                       N2)
                                            0x4)
                                  N1)
                       (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
     (Xor w64 0xFF
              (And w64 N5:(Or w64 N6:(Or w64 N7:(Or w64 N8:(SExt w64 (Xor w32 (ZExt w32 N4)
                                                                              (ZExt w32 (Read w8 0x0 k.deref))))
                                                        (LShr w64 N8 0x1))
                                             (LShr w64 N7 0x2))
                                  (LShr w64 N6 0x4))
                       (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N5 0x1)))))

Checking equivalence of `node` (decl src ln 62) from
  assn asm ln 17, live ln 69, gen 0
  %struct.cb_node.4* %node
  0xE5FBC9EAFE029AE2
and
  assn asm ln 30, live ln 69, gen 0
  %struct.cb_node.2* %node
  0xE5FBC9EAFE029AE2

Checking equivalence of `p` (decl src ln 67) from
  assn asm ln 42, live ln 80, gen 0
  %call = call fastcc %struct.cb_node.4* @cb_internal_best_match(%struct.cb_node.4* nonnull %1, i8* nonnull %arraydecay, i64 %klen), l77 c7
  0xBBDF9EF64113A051
and
  assn asm ln 85, live ln 80, gen 0
  %call = call %struct.cb_node.2* @cb_internal_best_match(%struct.cb_node.2* %7, i8* %arraydecay, i64 %9), l77 c7
  0xBBDF9EF64113A051

Checking equivalence of `p` (decl src ln 67) from
  assn asm ln 115, live ln 106, gen 1
  %9 = load %struct.cb_node.4*, %struct.cb_node.4** %wherep.0, !tbaa !129, l105 c9
  0xF04B5269B3FFCE6E
and
  assn asm ln 209, live ln 106, gen 1
  %48 = load %struct.cb_node.2*, %struct.cb_node.2** %47, l105 c9
  0xF04B5269B3FFCE6E

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `q` (decl src ln 102) assn asm ln 124, live ln 109, gen 0 has no symbolic value (likely unreachable) from %call45 = call fastcc %struct.cb_node.4* @cb_node_of(i8* %11), l108 c9
Checking equivalence of `t` (decl src ln 62) from
  assn asm ln 16, live ln 69, gen 0
  %struct.cb_tree.5* %t
  0x8292380893C10F33
and
  assn asm ln 28, live ln 69, gen 0
  %struct.cb_tree.3* %t
  0x8292380893C10F33

Checking equivalence of `wherep` (decl src ln 67) from
  assn asm ln 108, live ln 101, gen 0
  %root181 = bitcast %struct.cb_tree.5* %t to %struct.cb_node.4**, l71 c11
  0x8292380893C10F33
and
  assn asm ln 201, live ln 101, gen 0
  %root39 = getelementptr inbounds %struct.cb_tree.3, %struct.cb_tree.3* %46, i32 0, i32 0, l100 c16
  0x8292380893C10F33

🔔 Before `wherep` (decl src ln 67) assn asm ln 300, live ln 101, gen 1 coordinates don't match after assn asm ln 163, live ln 116, gen 1
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `wherep` (decl src ln 67) assn asm ln 163, live ln 116, gen 1 has no symbolic value (likely unreachable) from %add.ptr = getelementptr inbounds %struct.cb_node.4, %struct.cb_node.4* %call45, i64 0, i32 0, i64 %16, l115 c23
❌ After symbolic values checked against before
  Matching:    9
  Mismatched:  6
  Unused:      0
  Unreachable: 3
  Removable:   0

## Function `cb_internal_best_match`

✅ Before and after function names match

### Variables

Before variable `p` (decl src ln 48)
Store to `p` (decl src ln 48), asm ln 406
  %16 = load %struct.cb_node.10*, %struct.cb_node.10** %arrayidx8, l56 c9, asm ln 405
  Added assignment asm ln 406, live ln 51, gen 0, prod ln 56, col 9
Store to `p` (decl src ln 48), asm ln 341
  arg 0
  Added assignment asm ln 341, live ln 51, gen 0, prod ln 48, col 0
Before variable `k` (decl src ln 49)
Store to `k` (decl src ln 49), asm ln 343
  arg 1
  Added assignment asm ln 343, live ln 51, gen 0, prod ln 49, col 0
Before variable `klen` (decl src ln 49)
Store to `klen` (decl src ln 49), asm ln 345
  arg 2
  Added assignment asm ln 345, live ln 51, gen 0, prod ln 49, col 0
Before variable `q` (decl src ln 52)
Store to `q` (decl src ln 52), asm ln 361
  %call = call %struct.cb_node.10* @cb_node_of(i8* %3), l52 c25, asm ln 360
  Added assignment asm ln 361, live ln 53, gen 0, prod ln 52, col 25
Before variable `c` (decl src ln 53)
Store to `c` (decl src ln 53), asm ln 388
  %conv4 = trunc i32 %cond to i8, l53 c17, asm ln 387
  Added assignment asm ln 388, live ln 54, gen 0, prod ln 53, col 17
Before variable `direction` (decl src ln 54)
Store to `direction` (decl src ln 54), asm ln 400
  %conv7 = sext i32 %shr to i64, l54 c24, asm ln 399
  Added assignment asm ln 400, live ln 56, gen 0, prod ln 54, col 24
Computing generations: `p` (decl src ln 48)
  asm ln 341, live ln 51, gen 0
  asm ln 406, live ln 51, gen 1
Computing generations: `k` (decl src ln 49)
  asm ln 343, live ln 51, gen 0
Computing generations: `klen` (decl src ln 49)
  asm ln 345, live ln 51, gen 0
Computing generations: `q` (decl src ln 52)
  asm ln 361, live ln 53, gen 0
Computing generations: `c` (decl src ln 53)
  asm ln 388, live ln 54, gen 0
Computing generations: `direction` (decl src ln 54)
  asm ln 400, live ln 56, gen 0

After variable `p` (decl src ln 48)
@dbg.value mapping for `p` (decl src ln 48), asm ln 195
Value produced for `p` (decl src ln 48), asm ln 195
  arg 0
  Added assignment asm ln 195, live ln 51, gen 0, prod ln 48, col 0
After variable `k` (decl src ln 49)
@dbg.value mapping for `k` (decl src ln 49), asm ln 196
Value produced for `k` (decl src ln 49), asm ln 196
  arg 1
  Added assignment asm ln 196, live ln 51, gen 0, prod ln 49, col 0
After variable `klen` (decl src ln 49)
@dbg.value mapping for `klen` (decl src ln 49), asm ln 197
Value produced for `klen` (decl src ln 49), asm ln 197
  arg 2
  Added assignment asm ln 197, live ln 51, gen 0, prod ln 49, col 0
After variable `q` (decl src ln 52)
@dbg.value mapping for `q` (decl src ln 52), asm ln 208
Value produced for `q` (decl src ln 52), asm ln 208
  %call = call fastcc %struct.cb_node.12* @cb_node_of(i8* %1), l52 c25, asm ln 207
  Added assignment asm ln 208, live ln 53, gen 0, prod ln 52, col 25
After variable `direction` (decl src ln 54)
@dbg.value mapping for `direction` (decl src ln 54), asm ln 229
Value produced for `direction` (decl src ln 54), asm ln 229
  %5 = lshr i64 %add, 8, l54 c49, asm ln 228
  Added assignment asm ln 229, live ln 56, gen 0, prod ln 54, col 49
After variable `p` (decl src ln 48)
@dbg.value mapping for `p` (decl src ln 48), asm ln 232
Value produced for `p` (decl src ln 48), asm ln 232
  %6 = load %struct.cb_node.12*, %struct.cb_node.12** %arrayidx8, !tbaa !76, l56 c9, asm ln 231
  Added assignment asm ln 232, live ln 51, gen 0, prod ln 56, col 9
After variable `p` (decl src ln 48)
@dbg.value mapping for `p` (decl src ln 48), asm ln 205
Value produced for `p` (decl src ln 48), asm ln 205
  %p.addr.019 = phi %struct.cb_node.12* [ %6, %cond.end ], [ %p, %entry ], asm ln 204
  Phi-based assignment in prologue, skipping
After variable `c` (decl src ln 53)
@dbg.value mapping for `c` (decl src ln 53), asm ln 222
Value produced for `c` (decl src ln 53), asm ln 222
  %cond = phi i8 [ %3, %cond.true ], [ 0, %while.body ], l53 c17, asm ln 221
  Added assignment asm ln 222, live ln 54, gen 0, prod ln 53, col 17
Computing generations: `p` (decl src ln 48)
  asm ln 195, live ln 51, gen 0
  asm ln 232, live ln 51, gen 1
Computing generations: `k` (decl src ln 49)
  asm ln 196, live ln 51, gen 0
Computing generations: `klen` (decl src ln 49)
  asm ln 197, live ln 51, gen 0
Computing generations: `q` (decl src ln 52)
  asm ln 208, live ln 53, gen 0
Computing generations: `direction` (decl src ln 54)
  asm ln 229, live ln 56, gen 0
Computing generations: `c` (decl src ln 53)
  asm ln 222, live ln 54, gen 0

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Assignments

✅ Before live range coverage
  Covered:   6
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

Collected value for `p`
  Concrete pointer resolves to p.deref, offset 0x0
  Replaced concrete pointer with hash 0x6B9649B5C91006F4
  %struct.cb_node.10* %p
  0x6B9649B5C91006F4
Collected value for `k`
  Concrete pointer resolves to k.deref, offset 0x0
  Replaced concrete pointer with hash 0x6E0F93060F5E7E8D
  i8* %k
  0x6E0F93060F5E7E8D
Collected value for `klen`
  i64 %klen
  (ReadLSB w64 0x0 klen)

#### After values

Collected value for `p`
  Concrete pointer resolves to p.deref, offset 0x0
  Replaced concrete pointer with hash 0x6B9649B5C91006F4
  %struct.cb_node.12* %p
  0x6B9649B5C91006F4
Collected value for `k`
  Concrete pointer resolves to k.deref, offset 0x0
  Replaced concrete pointer with hash 0x6E0F93060F5E7E8D
  i8* %k
  0x6E0F93060F5E7E8D
Collected value for `klen`
  i64 %klen
  (ReadLSB w64 0x0 klen)

#### Check before against after

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `c` (decl src ln 53) assn asm ln 388, live ln 54, gen 0 has no symbolic value (likely unreachable) from %conv4 = trunc i32 %cond to i8, l53 c17
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `direction` (decl src ln 54) assn asm ln 400, live ln 56, gen 0 has no symbolic value (likely unreachable) from %conv7 = sext i32 %shr to i64, l54 c24
Checking equivalence of `k` (decl src ln 49) from
  assn asm ln 343, live ln 51, gen 0
  i8* %k
  0x6E0F93060F5E7E8D
and
  assn asm ln 196, live ln 51, gen 0
  i8* %k
  0x6E0F93060F5E7E8D

Checking equivalence of `klen` (decl src ln 49) from
  assn asm ln 345, live ln 51, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
and
  assn asm ln 197, live ln 51, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)

Checking equivalence of `p` (decl src ln 48) from
  assn asm ln 341, live ln 51, gen 0
  %struct.cb_node.10* %p
  0x6B9649B5C91006F4
and
  assn asm ln 195, live ln 51, gen 0
  %struct.cb_node.12* %p
  0x6B9649B5C91006F4

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `p` (decl src ln 48) assn asm ln 406, live ln 51, gen 1 has no symbolic value (likely unreachable) from %16 = load %struct.cb_node.10*, %struct.cb_node.10** %arrayidx8, l56 c9
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `q` (decl src ln 52) assn asm ln 361, live ln 53, gen 0 has no symbolic value (likely unreachable) from %call = call %struct.cb_node.10* @cb_node_of(i8* %3), l52 c25
✅ Before symbolic values checked against after
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 4
  Removable:   0

#### Check after against before

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `c` (decl src ln 53) assn asm ln 222, live ln 54, gen 0 has no symbolic value (likely unreachable) from %cond = phi i8 [ %3, %cond.true ], [ 0, %while.body ], l53 c17
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `direction` (decl src ln 54) assn asm ln 229, live ln 56, gen 0 has no symbolic value (likely unreachable) from %5 = lshr i64 %add, 8, l54 c49
Checking equivalence of `k` (decl src ln 49) from
  assn asm ln 196, live ln 51, gen 0
  i8* %k
  0x6E0F93060F5E7E8D
and
  assn asm ln 343, live ln 51, gen 0
  i8* %k
  0x6E0F93060F5E7E8D

Checking equivalence of `klen` (decl src ln 49) from
  assn asm ln 197, live ln 51, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
and
  assn asm ln 345, live ln 51, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)

Checking equivalence of `p` (decl src ln 48) from
  assn asm ln 195, live ln 51, gen 0
  %struct.cb_node.12* %p
  0x6B9649B5C91006F4
and
  assn asm ln 341, live ln 51, gen 0
  %struct.cb_node.10* %p
  0x6B9649B5C91006F4

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `p` (decl src ln 48) assn asm ln 232, live ln 51, gen 1 has no symbolic value (likely unreachable) from %6 = load %struct.cb_node.12*, %struct.cb_node.12** %arrayidx8, !tbaa !79, l56 c9
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `q` (decl src ln 52) assn asm ln 208, live ln 53, gen 0 has no symbolic value (likely unreachable) from %call = call fastcc %struct.cb_node.12* @cb_node_of(i8* %1), l52 c25
✅ After symbolic values checked against before
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 4
  Removable:   0

## Function `cb_node_of`

✅ Before and after function names match

### Variables

Before variable `p` (decl src ln 42)
Store to `p` (decl src ln 42), asm ln 421
  arg 0
  Added assignment asm ln 421, live ln 44, gen 0, prod ln 42, col 0
Computing generations: `p` (decl src ln 42)
  asm ln 421, live ln 44, gen 0

After variable `p` (decl src ln 42)
@dbg.value mapping for `p` (decl src ln 42), asm ln 249
Value produced for `p` (decl src ln 42), asm ln 249
  arg 0
  Added assignment asm ln 249, live ln 44, gen 0, prod ln 42, col 0
Computing generations: `p` (decl src ln 42)
  asm ln 249, live ln 44, gen 0

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Assignments

✅ Before live range coverage
  Covered:   1
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

Collected value for `p`
  Concrete pointer resolves to p.deref, offset 0x0
  Replaced concrete pointer with hash 0x6B9649B5C91006F4
  i8* %p
  0x6B9649B5C91006F4

#### After values

Collected value for `p`
  Concrete pointer resolves to p.deref, offset 0x0
  Replaced concrete pointer with hash 0x6B9649B5C91006F4
  i8* %p
  0x6B9649B5C91006F4

#### Check before against after

Checking equivalence of `p` (decl src ln 42) from
  assn asm ln 421, live ln 44, gen 0
  i8* %p
  0x6B9649B5C91006F4
and
  assn asm ln 249, live ln 44, gen 0
  i8* %p
  0x6B9649B5C91006F4

✅ Before symbolic values checked against after
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `p` (decl src ln 42) from
  assn asm ln 249, live ln 44, gen 0
  i8* %p
  0x6B9649B5C91006F4
and
  assn asm ln 421, live ln 44, gen 0
  i8* %p
  0x6B9649B5C91006F4

✅ After symbolic values checked against before
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Function `cb_lookup`

✅ Before and after function names match

### Variables

Before variable `t` (decl src ln 124)
Store to `t` (decl src ln 124), asm ln 437
  arg 0
  Added assignment asm ln 437, live ln 126, gen 0, prod ln 124, col 0
Before variable `k` (decl src ln 124)
Store to `k` (decl src ln 124), asm ln 439
  arg 1
  Added assignment asm ln 439, live ln 126, gen 0, prod ln 124, col 0
Before variable `klen` (decl src ln 124)
Store to `klen` (decl src ln 124), asm ln 441
  arg 2
  Added assignment asm ln 441, live ln 126, gen 0, prod ln 124, col 0
Before variable `p` (decl src ln 126)
Store to `p` (decl src ln 126), asm ln 450
  %call = call %struct.cb_node.26* @cb_internal_best_match(%struct.cb_node.26* %1, i8* %2, i64 %3), l126 c23, asm ln 449
  Added assignment asm ln 450, live ln 128, gen 0, prod ln 126, col 23
Computing generations: `t` (decl src ln 124)
  asm ln 437, live ln 126, gen 0
Computing generations: `k` (decl src ln 124)
  asm ln 439, live ln 126, gen 0
Computing generations: `klen` (decl src ln 124)
  asm ln 441, live ln 126, gen 0
Computing generations: `p` (decl src ln 126)
  asm ln 450, live ln 128, gen 0

After variable `t` (decl src ln 124)
@dbg.value mapping for `t` (decl src ln 124), asm ln 259
Value produced for `t` (decl src ln 124), asm ln 259
  arg 0
  Added assignment asm ln 259, live ln 126, gen 0, prod ln 124, col 0
After variable `k` (decl src ln 124)
@dbg.value mapping for `k` (decl src ln 124), asm ln 260
Value produced for `k` (decl src ln 124), asm ln 260
  arg 1
  Added assignment asm ln 260, live ln 126, gen 0, prod ln 124, col 0
After variable `klen` (decl src ln 124)
@dbg.value mapping for `klen` (decl src ln 124), asm ln 261
Value produced for `klen` (decl src ln 124), asm ln 261
  arg 2
  Added assignment asm ln 261, live ln 126, gen 0, prod ln 124, col 0
After variable `p` (decl src ln 126)
@dbg.value mapping for `p` (decl src ln 126), asm ln 265
Value produced for `p` (decl src ln 126), asm ln 265
  %call = call fastcc %struct.cb_node.28* @cb_internal_best_match(%struct.cb_node.28* %0, i8* %k, i64 %klen), l126 c23, asm ln 264
  Added assignment asm ln 265, live ln 128, gen 0, prod ln 126, col 23
Computing generations: `t` (decl src ln 124)
  asm ln 259, live ln 126, gen 0
Computing generations: `k` (decl src ln 124)
  asm ln 260, live ln 126, gen 0
Computing generations: `klen` (decl src ln 124)
  asm ln 261, live ln 126, gen 0
Computing generations: `p` (decl src ln 126)
  asm ln 265, live ln 128, gen 0

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Assignments

✅ Before live range coverage
  Covered:   4
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

Collected value for `t`
  Concrete pointer resolves to t.deref, offset 0x0
  Replaced concrete pointer with hash 0x8292380893C10F33
  %struct.cb_tree.27* %t
  0x8292380893C10F33
Collected value for `k`
  Concrete pointer resolves to k.deref, offset 0x0
  Replaced concrete pointer with hash 0x6E0F93060F5E7E8D
  i8* %k
  0x6E0F93060F5E7E8D
Collected value for `klen`
  i64 %klen
  (ReadLSB w64 0x0 klen)
Collected value for `p`
  Concrete pointer resolves to cb_internal_best_match.return.deref, offset 0x0
  Replaced concrete pointer with hash 0xBBDF9EF64113A051
  %call = call %struct.cb_node.26* @cb_internal_best_match(%struct.cb_node.26* %1, i8* %2, i64 %3), l126 c23
  0xBBDF9EF64113A051

#### After values

Collected value for `t`
  Concrete pointer resolves to t.deref, offset 0x0
  Replaced concrete pointer with hash 0x8292380893C10F33
  %struct.cb_tree.29* %t
  0x8292380893C10F33
Collected value for `k`
  Concrete pointer resolves to k.deref, offset 0x0
  Replaced concrete pointer with hash 0x6E0F93060F5E7E8D
  i8* %k
  0x6E0F93060F5E7E8D
Collected value for `klen`
  i64 %klen
  (ReadLSB w64 0x0 klen)
Collected value for `p`
  Concrete pointer resolves to cb_internal_best_match.return.deref, offset 0x0
  Replaced concrete pointer with hash 0xBBDF9EF64113A051
  %call = call fastcc %struct.cb_node.28* @cb_internal_best_match(%struct.cb_node.28* %0, i8* %k, i64 %klen), l126 c23
  0xBBDF9EF64113A051

#### Check before against after

Checking equivalence of `k` (decl src ln 124) from
  assn asm ln 439, live ln 126, gen 0
  i8* %k
  0x6E0F93060F5E7E8D
and
  assn asm ln 260, live ln 126, gen 0
  i8* %k
  0x6E0F93060F5E7E8D

Checking equivalence of `klen` (decl src ln 124) from
  assn asm ln 441, live ln 126, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
and
  assn asm ln 261, live ln 126, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)

Checking equivalence of `p` (decl src ln 126) from
  assn asm ln 450, live ln 128, gen 0
  %call = call %struct.cb_node.26* @cb_internal_best_match(%struct.cb_node.26* %1, i8* %2, i64 %3), l126 c23
  0xBBDF9EF64113A051
and
  assn asm ln 265, live ln 128, gen 0
  %call = call fastcc %struct.cb_node.28* @cb_internal_best_match(%struct.cb_node.28* %0, i8* %k, i64 %klen), l126 c23
  0xBBDF9EF64113A051

Checking equivalence of `t` (decl src ln 124) from
  assn asm ln 437, live ln 126, gen 0
  %struct.cb_tree.27* %t
  0x8292380893C10F33
and
  assn asm ln 259, live ln 126, gen 0
  %struct.cb_tree.29* %t
  0x8292380893C10F33

✅ Before symbolic values checked against after
  Matching:    4
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `k` (decl src ln 124) from
  assn asm ln 260, live ln 126, gen 0
  i8* %k
  0x6E0F93060F5E7E8D
and
  assn asm ln 439, live ln 126, gen 0
  i8* %k
  0x6E0F93060F5E7E8D

Checking equivalence of `klen` (decl src ln 124) from
  assn asm ln 261, live ln 126, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
and
  assn asm ln 441, live ln 126, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)

Checking equivalence of `p` (decl src ln 126) from
  assn asm ln 265, live ln 128, gen 0
  %call = call fastcc %struct.cb_node.28* @cb_internal_best_match(%struct.cb_node.28* %0, i8* %k, i64 %klen), l126 c23
  0xBBDF9EF64113A051
and
  assn asm ln 450, live ln 128, gen 0
  %call = call %struct.cb_node.26* @cb_internal_best_match(%struct.cb_node.26* %1, i8* %2, i64 %3), l126 c23
  0xBBDF9EF64113A051

Checking equivalence of `t` (decl src ln 124) from
  assn asm ln 259, live ln 126, gen 0
  %struct.cb_tree.29* %t
  0x8292380893C10F33
and
  assn asm ln 437, live ln 126, gen 0
  %struct.cb_tree.27* %t
  0x8292380893C10F33

✅ After symbolic values checked against before
  Matching:    4
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Function `cb_each`

✅ Before and after function names match

### Variables

Before variable `t` (decl src ln 143)
Store to `t` (decl src ln 143), asm ln 493
  arg 0
  Added assignment asm ln 493, live ln 146, gen 0, prod ln 143, col 0
Before variable `kpfx` (decl src ln 143)
Store to `kpfx` (decl src ln 143), asm ln 495
  arg 1
  Added assignment asm ln 495, live ln 146, gen 0, prod ln 143, col 0
Before variable `klen` (decl src ln 143)
Store to `klen` (decl src ln 143), asm ln 497
  arg 2
  Added assignment asm ln 497, live ln 146, gen 0, prod ln 143, col 0
Before variable `fn` (decl src ln 144)
Store to `fn` (decl src ln 144), asm ln 499
  arg 3
  Added assignment asm ln 499, live ln 146, gen 0, prod ln 144, col 0
Before variable `arg` (decl src ln 144)
Store to `arg` (decl src ln 144), asm ln 501
  arg 4
  Added assignment asm ln 501, live ln 146, gen 0, prod ln 144, col 0
Before variable `p` (decl src ln 146)
Store to `p` (decl src ln 146), asm ln 580
  %20 = load %struct.cb_node.34*, %struct.cb_node.34** %arrayidx9, l158 c9, asm ln 579
  Added assignment asm ln 580, live ln 159, gen 0, prod ln 158, col 9
Store to `p` (decl src ln 146), asm ln 507
  %1 = load %struct.cb_node.34*, %struct.cb_node.34** %root, l146 c26, asm ln 506
  Added assignment asm ln 507, live ln 147, gen 0, prod ln 146, col 26
Before variable `top` (decl src ln 147)
Store to `top` (decl src ln 147), asm ln 591
  %24 = load %struct.cb_node.34*, %struct.cb_node.34** %p, l160 c13, asm ln 590
  Added assignment asm ln 591, live ln 160, gen 0, prod ln 160, col 13
Store to `top` (decl src ln 147), asm ln 510
  %2 = load %struct.cb_node.34*, %struct.cb_node.34** %p, l147 c25, asm ln 509
  Added assignment asm ln 510, live ln 148, gen 0, prod ln 147, col 25
Before variable `i` (decl src ln 148)
Store to `i` (decl src ln 148), asm ln 631
  %inc = add i64 %33, 1, l163 c26, asm ln 630
  Added assignment asm ln 631, live ln 163, gen 0, prod ln 163, col 26
Store to `i` (decl src ln 148), asm ln 598
  const i64 0
  Added assignment asm ln 598, live ln 163, gen 0, prod ln 163, col 10
Store to `i` (decl src ln 148), asm ln 512
  const i64 0
  Producers match last assignment, skipping
Before variable `q` (decl src ln 154)
Store to `q` (decl src ln 154), asm ln 535
  %call = call %struct.cb_node.34* @cb_node_of(i8* %7), l154 c25, asm ln 534
  Added assignment asm ln 535, live ln 155, gen 0, prod ln 154, col 25
Before variable `c` (decl src ln 155)
Store to `c` (decl src ln 155), asm ln 562
  %conv5 = trunc i32 %cond to i8, l155 c17, asm ln 561
  Added assignment asm ln 562, live ln 156, gen 0, prod ln 155, col 17
Before variable `direction` (decl src ln 156)
Store to `direction` (decl src ln 156), asm ln 574
  %conv8 = sext i32 %shr to i64, l156 c24, asm ln 573
  Added assignment asm ln 574, live ln 158, gen 0, prod ln 156, col 24
Computing generations: `arg` (decl src ln 144)
  asm ln 501, live ln 146, gen 0
Computing generations: `c` (decl src ln 155)
  asm ln 562, live ln 156, gen 0
Computing generations: `direction` (decl src ln 156)
  asm ln 574, live ln 158, gen 0
Computing generations: `fn` (decl src ln 144)
  asm ln 499, live ln 146, gen 0
Computing generations: `i` (decl src ln 148)
  asm ln 598, live ln 163, gen 0
  asm ln 631, live ln 163, gen 1
Computing generations: `klen` (decl src ln 143)
  asm ln 497, live ln 146, gen 0
Computing generations: `kpfx` (decl src ln 143)
  asm ln 495, live ln 146, gen 0
Computing generations: `p` (decl src ln 146)
  asm ln 507, live ln 147, gen 0
  asm ln 580, live ln 159, gen 1
Computing generations: `q` (decl src ln 154)
  asm ln 535, live ln 155, gen 0
Computing generations: `t` (decl src ln 143)
  asm ln 493, live ln 146, gen 0
Computing generations: `top` (decl src ln 147)
  asm ln 510, live ln 148, gen 0
  asm ln 591, live ln 160, gen 1

After variable `t` (decl src ln 143)
@dbg.value mapping for `t` (decl src ln 143), asm ln 287
Value produced for `t` (decl src ln 143), asm ln 287
  arg 0
  Added assignment asm ln 287, live ln 146, gen 0, prod ln 143, col 0
After variable `kpfx` (decl src ln 143)
@dbg.value mapping for `kpfx` (decl src ln 143), asm ln 288
Value produced for `kpfx` (decl src ln 143), asm ln 288
  arg 1
  Added assignment asm ln 288, live ln 146, gen 0, prod ln 143, col 0
After variable `klen` (decl src ln 143)
@dbg.value mapping for `klen` (decl src ln 143), asm ln 289
Value produced for `klen` (decl src ln 143), asm ln 289
  arg 2
  Added assignment asm ln 289, live ln 146, gen 0, prod ln 143, col 0
After variable `fn` (decl src ln 144)
@dbg.value mapping for `fn` (decl src ln 144), asm ln 290
Value produced for `fn` (decl src ln 144), asm ln 290
  arg 3
  Added assignment asm ln 290, live ln 146, gen 0, prod ln 144, col 0
After variable `arg` (decl src ln 144)
@dbg.value mapping for `arg` (decl src ln 144), asm ln 291
Value produced for `arg` (decl src ln 144), asm ln 291
  arg 4
  Added assignment asm ln 291, live ln 146, gen 0, prod ln 144, col 0
After variable `p` (decl src ln 146)
@dbg.value mapping for `p` (decl src ln 146), asm ln 294
Value produced for `p` (decl src ln 146), asm ln 294
  %0 = load %struct.cb_node.36*, %struct.cb_node.36** %root, !tbaa !71, l146 c26, asm ln 293
  Added assignment asm ln 294, live ln 150, gen 0, prod ln 146, col 26
After variable `top` (decl src ln 147)
@dbg.value mapping for `top` (decl src ln 147), asm ln 295
Value produced for `top` (decl src ln 147), asm ln 295
  %0 = load %struct.cb_node.36*, %struct.cb_node.36** %root, !tbaa !71, l146 c26, asm ln 293
❌ Value produced for `top` (decl src ln 147): asm ln 0, live ln 0, gen 0 produced line starts before decl
  Added assignment asm ln 295, live ln 150, gen 0, prod ln 146, col 26
After variable `i` (decl src ln 148)
@dbg.value mapping for `i` (decl src ln 148), asm ln 296
Value produced for `i` (decl src ln 148), asm ln 296
  const i64 0
  Added assignment asm ln 296, live ln 150, gen 0, prod ln 148, col 0
After variable `p` (decl src ln 146)
@dbg.value mapping for `p` (decl src ln 146), asm ln 301
Value produced for `p` (decl src ln 146), asm ln 301
  %0 = load %struct.cb_node.36*, %struct.cb_node.36** %root, !tbaa !71, l146 c26, asm ln 293
  Producers match last assignment, skipping
After variable `top` (decl src ln 147)
@dbg.value mapping for `top` (decl src ln 147), asm ln 302
Value produced for `top` (decl src ln 147), asm ln 302
  %0 = load %struct.cb_node.36*, %struct.cb_node.36** %root, !tbaa !71, l146 c26, asm ln 293
  Producers match last assignment, skipping
After variable `i` (decl src ln 148)
@dbg.value mapping for `i` (decl src ln 148), asm ln 311
Value produced for `i` (decl src ln 148), asm ln 311
  const i64 0
  Producers match last assignment, skipping
After variable `q` (decl src ln 154)
@dbg.value mapping for `q` (decl src ln 154), asm ln 322
Value produced for `q` (decl src ln 154), asm ln 322
  %call = call fastcc %struct.cb_node.36* @cb_node_of(i8* %2), l154 c25, asm ln 321
  Added assignment asm ln 322, live ln 155, gen 0, prod ln 154, col 25
After variable `direction` (decl src ln 156)
@dbg.value mapping for `direction` (decl src ln 156), asm ln 343
Value produced for `direction` (decl src ln 156), asm ln 343
  %6 = lshr i64 %add, 8, l156 c49, asm ln 342
  Added assignment asm ln 343, live ln 158, gen 0, prod ln 156, col 49
After variable `p` (decl src ln 146)
@dbg.value mapping for `p` (decl src ln 146), asm ln 346
Value produced for `p` (decl src ln 146), asm ln 346
  %7 = load %struct.cb_node.36*, %struct.cb_node.36** %arrayidx9, !tbaa !101, l158 c9, asm ln 345
  Added assignment asm ln 346, live ln 159, gen 0, prod ln 158, col 9
After variable `top` (decl src ln 147)
@dbg.value mapping for `top` (decl src ln 147), asm ln 348
Value produced for `top` (decl src ln 147), asm ln 348
  %spec.select = select i1 %cmp, %struct.cb_node.36* %7, %struct.cb_node.36* %top.052, l159 c9, asm ln 347
  Added assignment asm ln 348, live ln 153, gen 0, prod ln 159, col 9
After variable `i` (decl src ln 148)
@dbg.value mapping for `i` (decl src ln 148), asm ln 355
Value produced for `i` (decl src ln 148), asm ln 355
  %inc = add nuw i64 %i.056, 1, l163 c26, asm ln 367
  Added assignment asm ln 355, live ln 163, gen 0, prod ln 163, col 26
After variable `i` (decl src ln 148)
@dbg.value mapping for `i` (decl src ln 148), asm ln 368
Value produced for `i` (decl src ln 148), asm ln 368
  %inc = add nuw i64 %i.056, 1, l163 c26, asm ln 367
  Producers match last assignment, skipping
After variable `p` (decl src ln 146)
@dbg.value mapping for `p` (decl src ln 146), asm ln 318
Value produced for `p` (decl src ln 146), asm ln 318
  %p.053 = phi %struct.cb_node.36* [ %7, %cond.end ], [ %0, %while.cond.preheader ], asm ln 316
  Phi-based assignment in prologue, skipping
After variable `top` (decl src ln 147)
@dbg.value mapping for `top` (decl src ln 147), asm ln 319
Value produced for `top` (decl src ln 147), asm ln 319
  %top.052 = phi %struct.cb_node.36* [ %spec.select, %cond.end ], [ %0, %while.cond.preheader ], asm ln 317
  Phi-based assignment in prologue, skipping
After variable `c` (decl src ln 155)
@dbg.value mapping for `c` (decl src ln 155), asm ln 336
Value produced for `c` (decl src ln 155), asm ln 336
  %cond = phi i8 [ %4, %cond.true ], [ 0, %while.body ], l155 c17, asm ln 335
  Added assignment asm ln 336, live ln 156, gen 0, prod ln 155, col 17
After variable `i` (decl src ln 148)
@dbg.value mapping for `i` (decl src ln 148), asm ln 361
Value produced for `i` (decl src ln 148), asm ln 361
  %i.056 = phi i64 [ %inc, %for.cond ], [ 0, %for.cond.preheader ], asm ln 360
  Phi-based assignment in prologue, skipping
Computing generations: `arg` (decl src ln 144)
  asm ln 291, live ln 146, gen 0
Computing generations: `c` (decl src ln 155)
  asm ln 336, live ln 156, gen 0
Computing generations: `direction` (decl src ln 156)
  asm ln 343, live ln 158, gen 0
Computing generations: `fn` (decl src ln 144)
  asm ln 290, live ln 146, gen 0
Computing generations: `i` (decl src ln 148)
  asm ln 296, live ln 150, gen 0
  asm ln 355, live ln 163, gen 1
Computing generations: `klen` (decl src ln 143)
  asm ln 289, live ln 146, gen 0
Computing generations: `kpfx` (decl src ln 143)
  asm ln 288, live ln 146, gen 0
Computing generations: `p` (decl src ln 146)
  asm ln 294, live ln 150, gen 0
  asm ln 346, live ln 159, gen 1
Computing generations: `q` (decl src ln 154)
  asm ln 322, live ln 155, gen 0
Computing generations: `t` (decl src ln 143)
  asm ln 287, live ln 146, gen 0
Computing generations: `top` (decl src ln 147)
  asm ln 295, live ln 150, gen 0
  asm ln 348, live ln 153, gen 1

✅ 11 before variables found, 11 after variables found, 0 mismatched

### Assignments

❌ Live ranges for `i` (decl src ln 148) don't match: live ln 163, gen 0 vs. live ln 150, gen 0
❌ Live ranges for `p` (decl src ln 146) don't match: live ln 147, gen 0 vs. live ln 150, gen 0
❌ Live ranges for `top` (decl src ln 147) don't match: live ln 148, gen 0 vs. live ln 150, gen 0
❌ Before live range coverage
  Covered:   8
  Uncovered: 3
  Undefined: 0
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

Collected value for `t`
  Concrete pointer resolves to t.deref, offset 0x0
  Replaced concrete pointer with hash 0x8292380893C10F33
  %struct.cb_tree.35* %t
  0x8292380893C10F33
Collected value for `kpfx`
  Concrete pointer resolves to kpfx.deref, offset 0x0
  Replaced concrete pointer with hash 0xC317ACB09B96E91B
  i8* %kpfx
  0xC317ACB09B96E91B
Collected value for `klen`
  i64 %klen
  (ReadLSB w64 0x0 klen)
Collected value for `fn`
  Concrete pointer resolves to fn.deref, offset 0x0
  Replaced concrete pointer with hash 0x49FEC10265F3871D
  i32 (%struct.cb_node.34*, i8*)* %fn
  0x49FEC10265F3871D
Collected value for `arg`
  Concrete pointer resolves to arg.deref, offset 0x0
  Replaced concrete pointer with hash 0xCBB9609E6B58D0C7
  i8* %arg
  0xCBB9609E6B58D0C7
Collected value for `p`
  Concrete pointer resolves to t.deref.e0.deref, offset 0x0
  Replaced concrete pointer with hash 0xF04B5269B3FFCE6E
  %1 = load %struct.cb_node.34*, %struct.cb_node.34** %root, l146 c26
  0xF04B5269B3FFCE6E
Collected value for `top`
  Concrete pointer resolves to t.deref.e0.deref, offset 0x0
  Replaced concrete pointer with hash 0xF04B5269B3FFCE6E
  %2 = load %struct.cb_node.34*, %struct.cb_node.34** %p, l147 c25
  0xF04B5269B3FFCE6E
Collected value for `i`
  i64 0
  0x0
Collected value for `i`
  %inc = add i64 %33, 1, l163 c26
  0x1

#### After values

Collected value for `t`
  Concrete pointer resolves to t.deref, offset 0x0
  Replaced concrete pointer with hash 0x8292380893C10F33
  %struct.cb_tree.37* %t
  0x8292380893C10F33
Collected value for `kpfx`
  Concrete pointer resolves to kpfx.deref, offset 0x0
  Replaced concrete pointer with hash 0xC317ACB09B96E91B
  i8* %kpfx
  0xC317ACB09B96E91B
Collected value for `klen`
  i64 %klen
  (ReadLSB w64 0x0 klen)
Collected value for `fn`
  Concrete pointer resolves to fn.deref, offset 0x0
  Replaced concrete pointer with hash 0x49FEC10265F3871D
  i32 (%struct.cb_node.36*, i8*)* %fn
  0x49FEC10265F3871D
Collected value for `arg`
  Concrete pointer resolves to arg.deref, offset 0x0
  Replaced concrete pointer with hash 0xCBB9609E6B58D0C7
  i8* %arg
  0xCBB9609E6B58D0C7
Collected value for `p`
  Concrete pointer resolves to t.deref.e0.deref, offset 0x0
  Replaced concrete pointer with hash 0xF04B5269B3FFCE6E
  %0 = load %struct.cb_node.36*, %struct.cb_node.36** %root, !tbaa !74, l146 c26
  0xF04B5269B3FFCE6E
Collected value for `top`
  Concrete pointer resolves to t.deref.e0.deref, offset 0x0
  Replaced concrete pointer with hash 0xF04B5269B3FFCE6E
  %0 = load %struct.cb_node.36*, %struct.cb_node.36** %root, !tbaa !74, l146 c26
  0xF04B5269B3FFCE6E
Collected value for `i`
  i64 0
  0x0
Collected value for `i`
  %inc = add nuw i64 %i.056, 1, l163 c26
  0x1

#### Check before against after

Checking equivalence of `arg` (decl src ln 144) from
  assn asm ln 501, live ln 146, gen 0
  i8* %arg
  0xCBB9609E6B58D0C7
and
  assn asm ln 291, live ln 146, gen 0
  i8* %arg
  0xCBB9609E6B58D0C7

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `c` (decl src ln 155) assn asm ln 562, live ln 156, gen 0 has no symbolic value (likely unreachable) from %conv5 = trunc i32 %cond to i8, l155 c17
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `direction` (decl src ln 156) assn asm ln 574, live ln 158, gen 0 has no symbolic value (likely unreachable) from %conv8 = sext i32 %shr to i64, l156 c24
Checking equivalence of `fn` (decl src ln 144) from
  assn asm ln 499, live ln 146, gen 0
  i32 (%struct.cb_node.34*, i8*)* %fn
  0x49FEC10265F3871D
and
  assn asm ln 290, live ln 146, gen 0
  i32 (%struct.cb_node.36*, i8*)* %fn
  0x49FEC10265F3871D

🔔 After `i` (decl src ln 148) assn asm ln 296, live ln 150, gen 0 coordinates don't match before assn asm ln 598, live ln 163, gen 0
Checking equivalence of `i` (decl src ln 148) from
  assn asm ln 598, live ln 163, gen 0
  i64 0
  0x0
and
  assn asm ln 296, live ln 150, gen 0
  i64 0
  0x0

Checking equivalence of `i` (decl src ln 148) from
  assn asm ln 631, live ln 163, gen 1
  %inc = add i64 %33, 1, l163 c26
  0x1
and
  assn asm ln 355, live ln 163, gen 1
  %inc = add nuw i64 %i.056, 1, l163 c26
  0x1

Checking equivalence of `klen` (decl src ln 143) from
  assn asm ln 497, live ln 146, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
and
  assn asm ln 289, live ln 146, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)

Checking equivalence of `kpfx` (decl src ln 143) from
  assn asm ln 495, live ln 146, gen 0
  i8* %kpfx
  0xC317ACB09B96E91B
and
  assn asm ln 288, live ln 146, gen 0
  i8* %kpfx
  0xC317ACB09B96E91B

🔔 After `p` (decl src ln 146) assn asm ln 294, live ln 150, gen 0 coordinates don't match before assn asm ln 507, live ln 147, gen 0
Checking equivalence of `p` (decl src ln 146) from
  assn asm ln 507, live ln 147, gen 0
  %1 = load %struct.cb_node.34*, %struct.cb_node.34** %root, l146 c26
  0xF04B5269B3FFCE6E
and
  assn asm ln 294, live ln 150, gen 0
  %0 = load %struct.cb_node.36*, %struct.cb_node.36** %root, !tbaa !74, l146 c26
  0xF04B5269B3FFCE6E

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `p` (decl src ln 146) assn asm ln 580, live ln 159, gen 1 has no symbolic value (likely unreachable) from %20 = load %struct.cb_node.34*, %struct.cb_node.34** %arrayidx9, l158 c9
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `q` (decl src ln 154) assn asm ln 535, live ln 155, gen 0 has no symbolic value (likely unreachable) from %call = call %struct.cb_node.34* @cb_node_of(i8* %7), l154 c25
Checking equivalence of `t` (decl src ln 143) from
  assn asm ln 493, live ln 146, gen 0
  %struct.cb_tree.35* %t
  0x8292380893C10F33
and
  assn asm ln 287, live ln 146, gen 0
  %struct.cb_tree.37* %t
  0x8292380893C10F33

🔔 After `top` (decl src ln 147) assn asm ln 295, live ln 150, gen 0 coordinates don't match before assn asm ln 510, live ln 148, gen 0
Checking equivalence of `top` (decl src ln 147) from
  assn asm ln 510, live ln 148, gen 0
  %2 = load %struct.cb_node.34*, %struct.cb_node.34** %p, l147 c25
  0xF04B5269B3FFCE6E
and
  assn asm ln 295, live ln 150, gen 0
  %0 = load %struct.cb_node.36*, %struct.cb_node.36** %root, !tbaa !74, l146 c26
  0xF04B5269B3FFCE6E

🔔 After `top` (decl src ln 147) assn asm ln 348, live ln 153, gen 1 coordinates don't match before assn asm ln 591, live ln 160, gen 1
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `top` (decl src ln 147) assn asm ln 591, live ln 160, gen 1 has no symbolic value (likely unreachable) from %24 = load %struct.cb_node.34*, %struct.cb_node.34** %p, l160 c13
✅ Before symbolic values checked against after
  Matching:    9
  Mismatched:  0
  Unused:      0
  Unreachable: 5
  Removable:   0

#### Check after against before

Checking equivalence of `arg` (decl src ln 144) from
  assn asm ln 291, live ln 146, gen 0
  i8* %arg
  0xCBB9609E6B58D0C7
and
  assn asm ln 501, live ln 146, gen 0
  i8* %arg
  0xCBB9609E6B58D0C7

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `c` (decl src ln 155) assn asm ln 336, live ln 156, gen 0 has no symbolic value (likely unreachable) from %cond = phi i8 [ %4, %cond.true ], [ 0, %while.body ], l155 c17
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `direction` (decl src ln 156) assn asm ln 343, live ln 158, gen 0 has no symbolic value (likely unreachable) from %6 = lshr i64 %add, 8, l156 c49
Checking equivalence of `fn` (decl src ln 144) from
  assn asm ln 290, live ln 146, gen 0
  i32 (%struct.cb_node.36*, i8*)* %fn
  0x49FEC10265F3871D
and
  assn asm ln 499, live ln 146, gen 0
  i32 (%struct.cb_node.34*, i8*)* %fn
  0x49FEC10265F3871D

🔔 Before `i` (decl src ln 148) assn asm ln 598, live ln 163, gen 0 coordinates don't match after assn asm ln 296, live ln 150, gen 0
Checking equivalence of `i` (decl src ln 148) from
  assn asm ln 296, live ln 150, gen 0
  i64 0
  0x0
and
  assn asm ln 598, live ln 163, gen 0
  i64 0
  0x0

Checking equivalence of `i` (decl src ln 148) from
  assn asm ln 355, live ln 163, gen 1
  %inc = add nuw i64 %i.056, 1, l163 c26
  0x1
and
  assn asm ln 631, live ln 163, gen 1
  %inc = add i64 %33, 1, l163 c26
  0x1

Checking equivalence of `klen` (decl src ln 143) from
  assn asm ln 289, live ln 146, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
and
  assn asm ln 497, live ln 146, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)

Checking equivalence of `kpfx` (decl src ln 143) from
  assn asm ln 288, live ln 146, gen 0
  i8* %kpfx
  0xC317ACB09B96E91B
and
  assn asm ln 495, live ln 146, gen 0
  i8* %kpfx
  0xC317ACB09B96E91B

🔔 Before `p` (decl src ln 146) assn asm ln 507, live ln 147, gen 0 coordinates don't match after assn asm ln 294, live ln 150, gen 0
Checking equivalence of `p` (decl src ln 146) from
  assn asm ln 294, live ln 150, gen 0
  %0 = load %struct.cb_node.36*, %struct.cb_node.36** %root, !tbaa !74, l146 c26
  0xF04B5269B3FFCE6E
and
  assn asm ln 507, live ln 147, gen 0
  %1 = load %struct.cb_node.34*, %struct.cb_node.34** %root, l146 c26
  0xF04B5269B3FFCE6E

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `p` (decl src ln 146) assn asm ln 346, live ln 159, gen 1 has no symbolic value (likely unreachable) from %7 = load %struct.cb_node.36*, %struct.cb_node.36** %arrayidx9, !tbaa !104, l158 c9
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `q` (decl src ln 154) assn asm ln 322, live ln 155, gen 0 has no symbolic value (likely unreachable) from %call = call fastcc %struct.cb_node.36* @cb_node_of(i8* %2), l154 c25
Checking equivalence of `t` (decl src ln 143) from
  assn asm ln 287, live ln 146, gen 0
  %struct.cb_tree.37* %t
  0x8292380893C10F33
and
  assn asm ln 493, live ln 146, gen 0
  %struct.cb_tree.35* %t
  0x8292380893C10F33

🔔 Before `top` (decl src ln 147) assn asm ln 510, live ln 148, gen 0 coordinates don't match after assn asm ln 295, live ln 150, gen 0
Checking equivalence of `top` (decl src ln 147) from
  assn asm ln 295, live ln 150, gen 0
  %0 = load %struct.cb_node.36*, %struct.cb_node.36** %root, !tbaa !74, l146 c26
  0xF04B5269B3FFCE6E
and
  assn asm ln 510, live ln 148, gen 0
  %2 = load %struct.cb_node.34*, %struct.cb_node.34** %p, l147 c25
  0xF04B5269B3FFCE6E

🔔 Before `top` (decl src ln 147) assn asm ln 510, live ln 148, gen 0 coordinates don't match after assn asm ln 348, live ln 153, gen 1
Expected 1 symbolic value(s), got 0
🔔 After `top` (decl src ln 147) assn asm ln 348, live ln 153, gen 1 has no symbolic value (likely unreachable) from %spec.select = select i1 %cmp, %struct.cb_node.36* %7, %struct.cb_node.36* %top.052, l159 c9
✅ After symbolic values checked against before
  Matching:    9
  Mismatched:  0
  Unused:      0
  Unreachable: 5
  Removable:   0

## Function `cb_descend`

✅ Before and after function names match

### Variables

Before variable `p` (decl src ln 131)
Store to `p` (decl src ln 131), asm ln 654
  arg 0
  Added assignment asm ln 654, live ln 133, gen 0, prod ln 131, col 0
Before variable `fn` (decl src ln 131)
Store to `fn` (decl src ln 131), asm ln 656
  arg 1
  Added assignment asm ln 656, live ln 133, gen 0, prod ln 131, col 0
Before variable `arg` (decl src ln 131)
Store to `arg` (decl src ln 131), asm ln 658
  arg 2
  Added assignment asm ln 658, live ln 133, gen 0, prod ln 131, col 0
Before variable `q` (decl src ln 134)
Store to `q` (decl src ln 134), asm ln 671
  %call = call %struct.cb_node.42* @cb_node_of(i8* %3), l134 c25, asm ln 670
  Added assignment asm ln 671, live ln 135, gen 0, prod ln 134, col 25
Before variable `n` (decl src ln 135)
Store to `n` (decl src ln 135), asm ln 680
  %call1 = call i32 @cb_descend(%struct.cb_node.42* %5, i32 (%struct.cb_node.42*, i8*)* %6, i8* %7), l135 c22, asm ln 679
  Added assignment asm ln 680, live ln 137, gen 0, prod ln 135, col 22
Computing generations: `p` (decl src ln 131)
  asm ln 654, live ln 133, gen 0
Computing generations: `fn` (decl src ln 131)
  asm ln 656, live ln 133, gen 0
Computing generations: `arg` (decl src ln 131)
  asm ln 658, live ln 133, gen 0
Computing generations: `q` (decl src ln 134)
  asm ln 671, live ln 135, gen 0
Computing generations: `n` (decl src ln 135)
  asm ln 680, live ln 137, gen 0

After variable `p` (decl src ln 131)
@dbg.value mapping for `p` (decl src ln 131), asm ln 382
Value produced for `p` (decl src ln 131), asm ln 382
  arg 0
  Added assignment asm ln 382, live ln 133, gen 0, prod ln 131, col 0
After variable `fn` (decl src ln 131)
@dbg.value mapping for `fn` (decl src ln 131), asm ln 383
Value produced for `fn` (decl src ln 131), asm ln 383
  arg 1
  Added assignment asm ln 383, live ln 133, gen 0, prod ln 131, col 0
After variable `arg` (decl src ln 131)
@dbg.value mapping for `arg` (decl src ln 131), asm ln 384
Value produced for `arg` (decl src ln 131), asm ln 384
  arg 2
  Added assignment asm ln 384, live ln 133, gen 0, prod ln 131, col 0
After variable `q` (decl src ln 134)
@dbg.value mapping for `q` (decl src ln 134), asm ln 393
Value produced for `q` (decl src ln 134), asm ln 393
  %call = call fastcc %struct.cb_node.44* @cb_node_of(i8* %1), l134 c25, asm ln 392
  Added assignment asm ln 393, live ln 135, gen 0, prod ln 134, col 25
After variable `n` (decl src ln 135)
@dbg.value mapping for `n` (decl src ln 135), asm ln 397
Value produced for `n` (decl src ln 135), asm ln 397
  %call1 = call fastcc i32 @cb_descend(%struct.cb_node.44* %2, i32 (%struct.cb_node.44*, i8*)* %fn, i8* %arg), l135 c22, asm ln 396
  Added assignment asm ln 397, live ln 137, gen 0, prod ln 135, col 22
Computing generations: `p` (decl src ln 131)
  asm ln 382, live ln 133, gen 0
Computing generations: `fn` (decl src ln 131)
  asm ln 383, live ln 133, gen 0
Computing generations: `arg` (decl src ln 131)
  asm ln 384, live ln 133, gen 0
Computing generations: `q` (decl src ln 134)
  asm ln 393, live ln 135, gen 0
Computing generations: `n` (decl src ln 135)
  asm ln 397, live ln 137, gen 0

✅ 5 before variables found, 5 after variables found, 0 mismatched

### Assignments

✅ Before live range coverage
  Covered:   5
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

Collected value for `p`
  Concrete pointer resolves to p.deref, offset 0x0
  Replaced concrete pointer with hash 0x6B9649B5C91006F4
  %struct.cb_node.42* %p
  0x6B9649B5C91006F4
Collected value for `fn`
  Concrete pointer resolves to fn.deref, offset 0x0
  Replaced concrete pointer with hash 0x49FEC10265F3871D
  i32 (%struct.cb_node.42*, i8*)* %fn
  0x49FEC10265F3871D
Collected value for `arg`
  Concrete pointer resolves to arg.deref, offset 0x0
  Replaced concrete pointer with hash 0xCBB9609E6B58D0C7
  i8* %arg
  0xCBB9609E6B58D0C7

#### After values

Collected value for `p`
  Concrete pointer resolves to p.deref, offset 0x0
  Replaced concrete pointer with hash 0x6B9649B5C91006F4
  %struct.cb_node.44* %p
  0x6B9649B5C91006F4
Collected value for `fn`
  Concrete pointer resolves to fn.deref, offset 0x0
  Replaced concrete pointer with hash 0x49FEC10265F3871D
  i32 (%struct.cb_node.44*, i8*)* %fn
  0x49FEC10265F3871D
Collected value for `arg`
  Concrete pointer resolves to arg.deref, offset 0x0
  Replaced concrete pointer with hash 0xCBB9609E6B58D0C7
  i8* %arg
  0xCBB9609E6B58D0C7

#### Check before against after

Checking equivalence of `arg` (decl src ln 131) from
  assn asm ln 658, live ln 133, gen 0
  i8* %arg
  0xCBB9609E6B58D0C7
and
  assn asm ln 384, live ln 133, gen 0
  i8* %arg
  0xCBB9609E6B58D0C7

Checking equivalence of `fn` (decl src ln 131) from
  assn asm ln 656, live ln 133, gen 0
  i32 (%struct.cb_node.42*, i8*)* %fn
  0x49FEC10265F3871D
and
  assn asm ln 383, live ln 133, gen 0
  i32 (%struct.cb_node.44*, i8*)* %fn
  0x49FEC10265F3871D

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `n` (decl src ln 135) assn asm ln 680, live ln 137, gen 0 has no symbolic value (likely unreachable) from %call1 = call i32 @cb_descend(%struct.cb_node.42* %5, i32 (%struct.cb_node.42*, i8*)* %6, i8* %7), l135 c22
Checking equivalence of `p` (decl src ln 131) from
  assn asm ln 654, live ln 133, gen 0
  %struct.cb_node.42* %p
  0x6B9649B5C91006F4
and
  assn asm ln 382, live ln 133, gen 0
  %struct.cb_node.44* %p
  0x6B9649B5C91006F4

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `q` (decl src ln 134) assn asm ln 671, live ln 135, gen 0 has no symbolic value (likely unreachable) from %call = call %struct.cb_node.42* @cb_node_of(i8* %3), l134 c25
✅ Before symbolic values checked against after
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 2
  Removable:   0

#### Check after against before

Checking equivalence of `arg` (decl src ln 131) from
  assn asm ln 384, live ln 133, gen 0
  i8* %arg
  0xCBB9609E6B58D0C7
and
  assn asm ln 658, live ln 133, gen 0
  i8* %arg
  0xCBB9609E6B58D0C7

Checking equivalence of `fn` (decl src ln 131) from
  assn asm ln 383, live ln 133, gen 0
  i32 (%struct.cb_node.44*, i8*)* %fn
  0x49FEC10265F3871D
and
  assn asm ln 656, live ln 133, gen 0
  i32 (%struct.cb_node.42*, i8*)* %fn
  0x49FEC10265F3871D

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `n` (decl src ln 135) assn asm ln 397, live ln 137, gen 0 has no symbolic value (likely unreachable) from %call1 = call fastcc i32 @cb_descend(%struct.cb_node.44* %2, i32 (%struct.cb_node.44*, i8*)* %fn, i8* %arg), l135 c22
Checking equivalence of `p` (decl src ln 131) from
  assn asm ln 382, live ln 133, gen 0
  %struct.cb_node.44* %p
  0x6B9649B5C91006F4
and
  assn asm ln 654, live ln 133, gen 0
  %struct.cb_node.42* %p
  0x6B9649B5C91006F4

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `q` (decl src ln 134) assn asm ln 393, live ln 135, gen 0 has no symbolic value (likely unreachable) from %call = call fastcc %struct.cb_node.44* @cb_node_of(i8* %1), l134 c25
✅ After symbolic values checked against before
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 2
  Removable:   0

## Summary

❌ Some consistency checks failed
