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
  Added assignment starting at src ln 62, col 0
Before variable `node` (decl src ln 62)
Store to `node` (decl src ln 62), asm ln 30
  arg 1
  Added assignment starting at src ln 62, col 0
Before variable `klen` (decl src ln 62)
Store to `klen` (decl src ln 62), asm ln 32
  arg 2
  Added assignment starting at src ln 62, col 0
Before variable `newbyte` (decl src ln 64)
Store to `newbyte` (decl src ln 64), asm ln 120
  %inc = add i64 %19, 1, l80 c43, asm ln 119
  Added assignment starting at src ln 80, col 43
Store to `newbyte` (decl src ln 64), asm ln 86
  const i64 0
  Added assignment starting at src ln 80, col 15
Before variable `newotherbits` (decl src ln 64)
Store to `newotherbits` (decl src ln 64), asm ln 166
  %xor29 = xor i64 %and28, 255, l91 c55, asm ln 165
  Added assignment starting at src ln 91, col 55
Store to `newotherbits` (decl src ln 64), asm ln 159
  %or26 = or i64 %32, %shr25, l90 c15, asm ln 158
  Added assignment starting at src ln 90, col 15
Store to `newotherbits` (decl src ln 64), asm ln 154
  %or24 = or i64 %30, %shr23, l89 c15, asm ln 153
  Added assignment starting at src ln 89, col 15
Store to `newotherbits` (decl src ln 64), asm ln 149
  %or = or i64 %28, %shr, l88 c15, asm ln 148
  Added assignment starting at src ln 88, col 15
Store to `newotherbits` (decl src ln 64), asm ln 144
  %conv22 = sext i32 %xor to i64, l87 c17, asm ln 143
  Added assignment starting at src ln 87, col 17
Before variable `c` (decl src ln 65)
Store to `c` (decl src ln 65), asm ln 283
  %conv74 = trunc i32 %cond to i8, l113 c7, asm ln 282
  Added assignment starting at src ln 113, col 7
Store to `c` (decl src ln 65), asm ln 172
  %37 = load i8, i8* %arrayidx31, l92 c6, asm ln 171
  Added assignment starting at src ln 92, col 6
Before variable `newdirection` (decl src ln 66)
Store to `newdirection` (decl src ln 66), asm ln 180
  %conv35 = trunc i64 %shr34 to i32, l93 c17, asm ln 179
  Added assignment starting at src ln 93, col 17
Before variable `wherep` (decl src ln 67)
Store to `wherep` (decl src ln 67), asm ln 300
  %add.ptr = getelementptr inbounds %struct.cb_node.2*, %struct.cb_node.2** %arraydecay83, i64 %74, l115 c21, asm ln 299
  Added assignment starting at src ln 115, col 21
Store to `wherep` (decl src ln 67), asm ln 201
  %root39 = getelementptr inbounds %struct.cb_tree.3, %struct.cb_tree.3* %47, i32 0, i32 0, l100 c15, asm ln 200
  Added assignment starting at src ln 100, col 15
Before variable `p` (decl src ln 67)
Store to `p` (decl src ln 67), asm ln 209
  %49 = load %struct.cb_node.2*, %struct.cb_node.2** %48, l105 c7, asm ln 208
  Added assignment starting at src ln 105, col 7
Store to `p` (decl src ln 67), asm ln 85
  %call = call %struct.cb_node.2* @cb_internal_best_match(%struct.cb_node.2* %8, i8* %arraydecay, i64 %10), l77 c6, asm ln 84
  Added assignment starting at src ln 77, col 6
Before variable `q` (decl src ln 102)
Store to `q` (decl src ln 102), asm ln 223
  %call45 = call %struct.cb_node.2* @cb_node_of(i8* %53), l108 c7, asm ln 222
  Added assignment starting at src ln 108, col 7
Before variable `direction` (decl src ln 103)
Store to `direction` (decl src ln 103), asm ln 294
  %conv81 = sext i32 %shr80 to i64, l114 c15, asm ln 293
  Added assignment starting at src ln 114, col 15
Computing generations: `c` (decl src ln 65)
  asm line 172, src ln 92, col 6, gen 0
  asm line 283, src ln 113, col 7, gen 1
Computing generations: `direction` (decl src ln 103)
  asm line 294, src ln 114, col 15, gen 0
Computing generations: `klen` (decl src ln 62)
  asm line 32, src ln 62, col 0, gen 0
Computing generations: `newbyte` (decl src ln 64)
  asm line 86, src ln 80, col 15, gen 0
  asm line 120, src ln 80, col 43, gen 1
Computing generations: `newdirection` (decl src ln 66)
  asm line 180, src ln 93, col 17, gen 0
Computing generations: `newotherbits` (decl src ln 64)
  asm line 144, src ln 87, col 17, gen 0
  asm line 149, src ln 88, col 15, gen 1
  asm line 154, src ln 89, col 15, gen 2
  asm line 159, src ln 90, col 15, gen 3
  asm line 166, src ln 91, col 55, gen 4
Computing generations: `node` (decl src ln 62)
  asm line 30, src ln 62, col 0, gen 0
Computing generations: `p` (decl src ln 67)
  asm line 85, src ln 77, col 6, gen 0
  asm line 209, src ln 105, col 7, gen 1
Computing generations: `q` (decl src ln 102)
  asm line 223, src ln 108, col 7, gen 0
Computing generations: `t` (decl src ln 62)
  asm line 28, src ln 62, col 0, gen 0
Computing generations: `wherep` (decl src ln 67)
  asm line 201, src ln 100, col 15, gen 0
  asm line 300, src ln 115, col 21, gen 1

After variable `t` (decl src ln 62)
@dbg.value mapping for `t` (decl src ln 62), asm ln 16
Value produced for `t` (decl src ln 62), asm ln 16
  arg 0
  Added assignment starting at src ln 62, col 0
After variable `node` (decl src ln 62)
@dbg.value mapping for `node` (decl src ln 62), asm ln 17
Value produced for `node` (decl src ln 62), asm ln 17
  arg 1
  Added assignment starting at src ln 62, col 0
After variable `klen` (decl src ln 62)
@dbg.value mapping for `klen` (decl src ln 62), asm ln 18
Value produced for `klen` (decl src ln 62), asm ln 18
  arg 2
  Added assignment starting at src ln 62, col 0
After variable `p` (decl src ln 67)
@dbg.value mapping for `p` (decl src ln 67), asm ln 42
Value produced for `p` (decl src ln 67), asm ln 42
  %call = call fastcc %struct.cb_node.4* @cb_internal_best_match(%struct.cb_node.4* nonnull %1, i8* nonnull %arraydecay, i64 %klen), l77 c6, asm ln 41
  Added assignment starting at src ln 77, col 6
After variable `newbyte` (decl src ln 64)
@dbg.value mapping for `newbyte` (decl src ln 64), asm ln 43
Value produced for `newbyte` (decl src ln 64), asm ln 43
  const i64 0
  Added assignment starting at src ln 64, col 0
After variable `newbyte` (decl src ln 64)
@dbg.value mapping for `newbyte` (decl src ln 64), asm ln 67
Value produced for `newbyte` (decl src ln 64), asm ln 67
  %inc = add nuw i64 %newbyte.0160, 1, l80 c43, asm ln 66
  Added assignment starting at src ln 80, col 43
After variable `newotherbits` (decl src ln 64)
@dbg.value mapping for `newotherbits` (decl src ln 64), asm ln 77
Value produced for `newotherbits` (decl src ln 64), asm ln 77
  %conv22 = zext i8 %xor154 to i64, l87 c17, asm ln 76
  Added assignment starting at src ln 87, col 17
After variable `newotherbits` (decl src ln 64)
@dbg.value mapping for `newotherbits` (decl src ln 64), asm ln 80
Value produced for `newotherbits` (decl src ln 64), asm ln 80
  %or = or i64 %shr, %conv22, l88 c15, asm ln 79
  Added assignment starting at src ln 88, col 15
After variable `newotherbits` (decl src ln 64)
@dbg.value mapping for `newotherbits` (decl src ln 64), asm ln 83
Value produced for `newotherbits` (decl src ln 64), asm ln 83
  %or24 = or i64 %shr23, %or, l89 c15, asm ln 82
  Added assignment starting at src ln 89, col 15
After variable `newotherbits` (decl src ln 64)
@dbg.value mapping for `newotherbits` (decl src ln 64), asm ln 86
Value produced for `newotherbits` (decl src ln 64), asm ln 86
  %or26 = or i64 %shr25, %or24, l90 c15, asm ln 85
  Added assignment starting at src ln 90, col 15
After variable `newotherbits` (decl src ln 64)
@dbg.value mapping for `newotherbits` (decl src ln 64), asm ln 91
Value produced for `newotherbits` (decl src ln 64), asm ln 91
  %xor29 = xor i64 %and28, 255, l91 c55, asm ln 90
  Added assignment starting at src ln 91, col 55
After variable `c` (decl src ln 65)
@dbg.value mapping for `c` (decl src ln 65), asm ln 92
Value produced for `c` (decl src ln 65), asm ln 92
  %5 = load i8, i8* %scevgep, !tbaa !91, l81 c7, asm ln 57
  Added assignment starting at src ln 81, col 7
After variable `newdirection` (decl src ln 66)
@dbg.value mapping for `newdirection` (decl src ln 66), asm ln 96
Value produced for `newdirection` (decl src ln 66), asm ln 96
  %shr34 = lshr i64 %add, 8, l93 c42, asm ln 95
  Added assignment starting at src ln 93, col 42
After variable `wherep` (decl src ln 67)
@dbg.value mapping for `wherep` (decl src ln 67), asm ln 108
Value produced for `wherep` (decl src ln 67), asm ln 108
  %root181 = bitcast %struct.cb_tree.5* %t to %struct.cb_node.4**, l71 c10, asm ln 29
  Added assignment starting at src ln 71, col 10
After variable `p` (decl src ln 67)
@dbg.value mapping for `p` (decl src ln 67), asm ln 115
Value produced for `p` (decl src ln 67), asm ln 115
  %9 = load %struct.cb_node.4*, %struct.cb_node.4** %wherep.0, !tbaa !126, l105 c7, asm ln 114
  Added assignment starting at src ln 105, col 7
After variable `q` (decl src ln 102)
@dbg.value mapping for `q` (decl src ln 102), asm ln 124
Value produced for `q` (decl src ln 102), asm ln 124
  %call45 = call fastcc %struct.cb_node.4* @cb_node_of(i8* %11), l108 c7, asm ln 123
  Added assignment starting at src ln 108, col 7
After variable `direction` (decl src ln 103)
@dbg.value mapping for `direction` (decl src ln 103), asm ln 161
Value produced for `direction` (decl src ln 103), asm ln 161
  %16 = lshr i64 %add79, 8, l114 c40, asm ln 160
  Added assignment starting at src ln 114, col 40
After variable `wherep` (decl src ln 67)
@dbg.value mapping for `wherep` (decl src ln 67), asm ln 163
Value produced for `wherep` (decl src ln 67), asm ln 163
  %add.ptr = getelementptr inbounds %struct.cb_node.4, %struct.cb_node.4* %call45, i64 0, i32 0, i64 %16, l115 c21, asm ln 162
  Added assignment starting at src ln 115, col 21
After variable `newbyte` (decl src ln 64)
@dbg.value mapping for `newbyte` (decl src ln 64), asm ln 54
Value produced for `newbyte` (decl src ln 64), asm ln 54
  %newbyte.0160 = phi i64 [ %inc, %for.inc ], [ 0, %for.body.preheader ], asm ln 51
❌ Value produced for `newbyte` (decl src ln 64): missing line info, using decl ln
  Added assignment starting at src ln 64, col 0
After variable `wherep` (decl src ln 67)
@dbg.value mapping for `wherep` (decl src ln 67), asm ln 113
Value produced for `wherep` (decl src ln 67), asm ln 113
  %wherep.0 = phi %struct.cb_node.4** [ %8, %different_byte_found ], [ %wherep.1, %cleanup ], l100 c9, asm ln 112
  Phi-based assignment in prologue, skipping
After variable `c` (decl src ln 65)
@dbg.value mapping for `c` (decl src ln 65), asm ln 153
Value produced for `c` (decl src ln 65), asm ln 153
  %cond = phi i8 [ %14, %cond.true66 ], [ 0, %if.end61 ], l113 c7, asm ln 152
  Phi-based assignment in prologue, skipping
After variable `wherep` (decl src ln 67)
@dbg.value mapping for `wherep` (decl src ln 67), asm ln 169
Value produced for `wherep` (decl src ln 67), asm ln 169
  %wherep.1 = phi %struct.cb_node.4** [ %add.ptr, %cond.end73 ], [ %wherep.0, %for.cond40 ], [ %wherep.0, %if.end44 ], [ %wherep.0, %land.lhs.true ], asm ln 167
  Phi-based assignment in prologue, skipping
Computing generations: `c` (decl src ln 65)
  asm line 92, src ln 81, col 7, gen 0
Computing generations: `direction` (decl src ln 103)
  asm line 161, src ln 114, col 40, gen 0
Computing generations: `klen` (decl src ln 62)
  asm line 18, src ln 62, col 0, gen 0
Computing generations: `newbyte` (decl src ln 64)
  asm line 43, src ln 64, col 0, gen 0
  asm line 54, src ln 64, col 0, gen 1
  asm line 67, src ln 80, col 43, gen 2
Computing generations: `newdirection` (decl src ln 66)
  asm line 96, src ln 93, col 42, gen 0
Computing generations: `newotherbits` (decl src ln 64)
  asm line 77, src ln 87, col 17, gen 0
  asm line 80, src ln 88, col 15, gen 1
  asm line 83, src ln 89, col 15, gen 2
  asm line 86, src ln 90, col 15, gen 3
  asm line 91, src ln 91, col 55, gen 4
Computing generations: `node` (decl src ln 62)
  asm line 17, src ln 62, col 0, gen 0
Computing generations: `p` (decl src ln 67)
  asm line 42, src ln 77, col 6, gen 0
  asm line 115, src ln 105, col 7, gen 1
Computing generations: `q` (decl src ln 102)
  asm line 124, src ln 108, col 7, gen 0
Computing generations: `t` (decl src ln 62)
  asm line 16, src ln 62, col 0, gen 0
Computing generations: `wherep` (decl src ln 67)
  asm line 108, src ln 71, col 10, gen 0
  asm line 163, src ln 115, col 21, gen 1

✅ 11 before variables found, 11 after variables found, 0 mismatched

### Assignments

❌ Live ranges for `c` (decl src ln 65) don't match: src ln 92, col 6, gen 0 vs. src ln 81, col 7, gen 0
❌ Live ranges for `direction` (decl src ln 103) don't match: src ln 114, col 15, gen 0 vs. src ln 114, col 40, gen 0
❌ Live ranges for `newbyte` (decl src ln 64) don't match: src ln 80, col 15, gen 0 vs. src ln 64, col 0, gen 0
❌ Live ranges for `newdirection` (decl src ln 66) don't match: src ln 93, col 17, gen 0 vs. src ln 93, col 42, gen 0
❌ Live ranges for `wherep` (decl src ln 67) don't match: src ln 100, col 15, gen 0 vs. src ln 71, col 10, gen 0
❌ Before live range coverage
  Covered:   6
  Uncovered: 5
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
  %call = call %struct.cb_node.2* @cb_internal_best_match(%struct.cb_node.2* %7, i8* %arraydecay, i64 %9), l77 c6
  0xBBDF9EF64113A051
Collected value for `newbyte`
  i64 0
  0x0
Collected value for `newbyte`
  %inc = add i64 %18, 1, l80 c43
  0x1
Collected value for `newotherbits`
  %conv22 = sext i32 %xor to i64, l87 c17
  (SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                    (ZExt w32 (Read w8 0x0 k.deref))))
Collected value for `newotherbits`
  %or = or i64 %27, %shr, l88 c15
  (Or w64 N0:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                               (ZExt w32 (Read w8 0x0 k.deref))))
         (LShr w64 N0 0x1))
Collected value for `newotherbits`
  %or24 = or i64 %29, %shr23, l89 c15
  (Or w64 N0:(Or w64 N1:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                          (ZExt w32 (Read w8 0x0 k.deref))))
                    (LShr w64 N1 0x1))
         (LShr w64 N0 0x2))
Collected value for `newotherbits`
  %or26 = or i64 %31, %shr25, l90 c15
  (Or w64 N0:(Or w64 N1:(Or w64 N2:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                                     (ZExt w32 (Read w8 0x0 k.deref))))
                               (LShr w64 N2 0x1))
                    (LShr w64 N1 0x2))
         (LShr w64 N0 0x4))
Collected value for `newotherbits`
  %xor29 = xor i64 %and28, 255, l91 c55
  (Xor w64 0xFF
          (And w64 N0:(Or w64 N1:(Or w64 N2:(Or w64 N3:(SExt w64 (Xor w32 (ZExt w32 (Read w8 0x15 cb_internal_best_match.return.deref))
                                                                          (ZExt w32 (Read w8 0x0 k.deref))))
                                                    (LShr w64 N3 0x1))
                                         (LShr w64 N2 0x2))
                              (LShr w64 N1 0x4))
                   (Xor w64 0xFFFFFFFFFFFFFFFF (LShr w64 N0 0x1))))
Collected value for `c`
  %36 = load i8, i8* %arrayidx31, l92 c6
  (Read w8 0x15 cb_internal_best_match.return.deref)
Collected value for `newdirection`
  %conv35 = trunc i64 %shr34 to i32, l93 c17
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
  %root39 = getelementptr inbounds %struct.cb_tree.3, %struct.cb_tree.3* %46, i32 0, i32 0, l100 c15
  0x8292380893C10F33
Collected value for `p`
  Concrete pointer resolves to t.deref.e0.deref, offset 0x0
  Replaced concrete pointer with hash 0xF04B5269B3FFCE6E
  %48 = load %struct.cb_node.2*, %struct.cb_node.2** %47, l105 c7
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
  %call = call fastcc %struct.cb_node.4* @cb_internal_best_match(%struct.cb_node.4* nonnull %1, i8* nonnull %arraydecay, i64 %klen), l77 c6
  0xBBDF9EF64113A051
Collected value for `newbyte`
  i64 0
  0x0
Collected value for `newbyte`
  %newbyte.0160 = phi i64 [ %inc, %for.inc ], [ 0, %if.end ]
  Block: 1
  0x0
Collected value for `newotherbits`
  %conv22 = zext i8 %xor154 to i64, l87 c17
  (ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                   (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
Collected value for `newbyte`
  %inc = add nuw i64 %newbyte.0160, 1, l80 c43
  0x1
Collected value for `newotherbits`
  %or = or i64 %shr, %conv22, l88 c15
  (Or w64 (LShr w64 N0:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                        (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                   0x1)
         N0)
Collected value for `newotherbits`
  %or24 = or i64 %shr23, %or, l89 c15
  (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                             (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                        0x1)
                              N1)
                   0x2)
         N0)
Collected value for `newotherbits`
  %or26 = or i64 %shr25, %or24, l90 c15
  (Or w64 (LShr w64 N0:(Or w64 (LShr w64 N1:(Or w64 (LShr w64 N2:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                  (Extract w8 0 (ZExt w64 (Read w8 0x15 cb_internal_best_match.return.deref)))))
                                                             0x1)
                                                   N2)
                                        0x2)
                              N1)
                   0x4)
         N0)
Collected value for `newotherbits`
  %xor29 = xor i64 %and28, 255, l91 c55
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
  %5 = load i8, i8* %scevgep, !tbaa !94, l81 c7
  (Read w8 0x15 cb_internal_best_match.return.deref)
Collected value for `newdirection`
  %shr34 = lshr i64 %add, 8, l93 c42
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
  %root181 = bitcast %struct.cb_tree.5* %t to %struct.cb_node.4**, l71 c10
  0x8292380893C10F33
Collected value for `p`
  Concrete pointer resolves to t.deref.e0.deref, offset 0x0
  Replaced concrete pointer with hash 0xF04B5269B3FFCE6E
  %9 = load %struct.cb_node.4*, %struct.cb_node.4** %wherep.0, !tbaa !129, l105 c7
  0xF04B5269B3FFCE6E

#### Check before against after

🔔 After `c` (decl src ln 65) assn src ln 81, col 7, gen 0 coordinates don't match before assn src ln 92, col 6, gen 0
Checking equivalence of `c` (decl src ln 65) from
  assn src ln 92, col 6, gen 0
  %36 = load i8, i8* %arrayidx31, l92 c6
  (Read w8 0x15 cb_internal_best_match.return.deref)
and
  assn src ln 81, col 7, gen 0
  %5 = load i8, i8* %scevgep, !tbaa !94, l81 c7
  (Read w8 0x15 cb_internal_best_match.return.deref)
Query to parse
array cb_internal_best_match.return.deref[24] : w32 -> w8 = symbolic
(query [] (Eq (Read w8 0x15 cb_internal_best_match.return.deref) (Read w8 0x15 cb_internal_best_match.return.deref)))
Parsed query
(Eq N0:(Read w8 0x15 cb_internal_best_match.return.deref) N0)

🔔 After `c` (decl src ln 65) assn src ln 81, col 7, gen 0 coordinates don't match before assn src ln 113, col 7, gen 1
Expected 1 symbolic value(s), got 0
🔔 Before `c` (decl src ln 65) assn src ln 113, col 7, gen 1 has no symbolic value (likely unreachable) from %conv74 = trunc i32 %cond to i8, l113 c7
🔔 After `direction` (decl src ln 103) assn src ln 114, col 40, gen 0 coordinates don't match before assn src ln 114, col 15, gen 0
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `direction` (decl src ln 103) assn src ln 114, col 15, gen 0 has no symbolic value (likely unreachable) from %conv81 = sext i32 %shr80 to i64, l114 c15
Checking equivalence of `klen` (decl src ln 62) from
  assn src ln 62, col 0, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
and
  assn src ln 62, col 0, gen 0
  i64 %klen
  (ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)

🔔 After `newbyte` (decl src ln 64) assn src ln 64, col 0, gen 1 coordinates don't match before assn src ln 80, col 15, gen 0
Checking equivalence of `newbyte` (decl src ln 64) from
  assn src ln 80, col 15, gen 0
  i64 0
  0x0
and
  assn src ln 64, col 0, gen 1
  %newbyte.0160 = phi i64 [ %inc, %for.inc ], [ 0, %if.end ]
  0x0

🔔 After `newbyte` (decl src ln 64) assn src ln 64, col 0, gen 1 coordinates don't match before assn src ln 80, col 43, gen 1
Checking equivalence of `newbyte` (decl src ln 64) from
  assn src ln 80, col 43, gen 1
  %inc = add i64 %18, 1, l80 c43
  0x1
and
  assn src ln 64, col 0, gen 1
  %newbyte.0160 = phi i64 [ %inc, %for.inc ], [ 0, %if.end ]
  0x0
❌ After `newbyte` (decl src ln 64) assn src ln 64, col 0, gen 1 symbolic value doesn't match before assn src ln 80, col 43, gen 1

🔔 After `newdirection` (decl src ln 66) assn src ln 93, col 42, gen 0 coordinates don't match before assn src ln 93, col 17, gen 0
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
  assn src ln 93, col 17, gen 0
  %conv35 = trunc i64 %shr34 to i32, l93 c17
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
  assn src ln 93, col 42, gen 0
  %shr34 = lshr i64 %add, 8, l93 c42
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
:15:163: error: invalid version reference.
                                                        (And w64 N5:(Or w64 (LShr w64 N6:(Or w64 (LShr w64 N7:(Or w64 (LShr w64 N8:(ZExt w64 (Xor w8 (Read w8 0x15 node.deref)
                                                                                                                                                                   ~~~~~~~~~~
[0;1;31mKLEE: ERROR: Unable to parse query
[0m