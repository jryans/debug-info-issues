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
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=cb_insert example-O0.ll
Writing '.cb_insert.dot'...
++ mv .cb_insert.dot example-O0.cb_insert.dot
++ ./../../tools/filter-dot.js example-O0.cb_insert.dot
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
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=cb_insert example-O1-cg.ll
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

✅ 6 before defined functions(s), 6 after defined functions(s)

## Function `cb_insert`

✅ Before and after function names match

### Variables

Before variable `t` (decl src ln 62)
Store to declared address of `t` (decl src ln 62), asm ln 28
  arg 0
  Added assignment asm ln 28, prod ln 62.0, live ln 69, gen 0
Before variable `node` (decl src ln 62)
Store to declared address of `node` (decl src ln 62), asm ln 30
  arg 1
  Added assignment asm ln 30, prod ln 62.0, live ln 69, gen 0
Before variable `klen` (decl src ln 62)
Store to declared address of `klen` (decl src ln 62), asm ln 32
  arg 2
  Added assignment asm ln 32, prod ln 62.0, live ln 69, gen 0
Before variable `newbyte` (decl src ln 64)
Store to declared address of `newbyte` (decl src ln 64), asm ln 108
  %inc = add i64 %18, 1, l80 c44, asm ln 107
🔔 Store to declared address of `newbyte` (decl src ln 64): live ln too early, using produced ln + 1
  Added assignment asm ln 108, prod ln 80.44, live ln 81, gen 0
Store to declared address of `newbyte` (decl src ln 64), asm ln 80
  const i64 0
🔔 Store to declared address of `newbyte` (decl src ln 64): live ln too early, using produced ln + 1
  Added assignment asm ln 80, prod ln 80.16, live ln 81, gen 0
Before variable `newotherbits` (decl src ln 64)
Store to declared address of `newotherbits` (decl src ln 64), asm ln 154
  %xor29 = xor i64 %and28, 255, l91 c56, asm ln 153
  Added assignment asm ln 154, prod ln 91.56, live ln 92, gen 0
Store to declared address of `newotherbits` (decl src ln 64), asm ln 147
  %or26 = or i64 %31, %shr25, l90 c16, asm ln 146
  Added assignment asm ln 147, prod ln 90.16, live ln 91, gen 0
Store to declared address of `newotherbits` (decl src ln 64), asm ln 142
  %or24 = or i64 %29, %shr23, l89 c16, asm ln 141
  Added assignment asm ln 142, prod ln 89.16, live ln 90, gen 0
Store to declared address of `newotherbits` (decl src ln 64), asm ln 137
  %or = or i64 %27, %shr, l88 c16, asm ln 136
  Added assignment asm ln 137, prod ln 88.16, live ln 89, gen 0
Store to declared address of `newotherbits` (decl src ln 64), asm ln 132
  %conv22 = sext i32 %xor to i64, l87 c18, asm ln 131
  Added assignment asm ln 132, prod ln 87.18, live ln 88, gen 0
Before variable `c` (decl src ln 65)
Store to declared address of `c` (decl src ln 65), asm ln 259
  %conv74 = trunc i32 %cond to i8, l113 c9, asm ln 258
  Added assignment asm ln 259, prod ln 113.9, live ln 114, gen 0
Store to declared address of `c` (decl src ln 65), asm ln 160
  %36 = load i8, i8* %arrayidx31, l92 c7, asm ln 159
  Added assignment asm ln 160, prod ln 92.7, live ln 93, gen 0
Before variable `newdirection` (decl src ln 66)
Store to declared address of `newdirection` (decl src ln 66), asm ln 168
  %conv35 = trunc i64 %shr34 to i32, l93 c18, asm ln 167
  Added assignment asm ln 168, prod ln 93.18, live ln 95, gen 0
Before variable `wherep` (decl src ln 67)
Store to declared address of `wherep` (decl src ln 67), asm ln 276
  %add.ptr = getelementptr inbounds %struct.cb_node.2*, %struct.cb_node.2** %arraydecay83, i64 %73, l115 c23, asm ln 275
🔔 Store to declared address of `wherep` (decl src ln 67): live ln too early, using produced ln + 1
  Added assignment asm ln 276, prod ln 115.23, live ln 116, gen 0
Store to declared address of `wherep` (decl src ln 67), asm ln 189
  %root39 = getelementptr inbounds %struct.cb_tree.3, %struct.cb_tree.3* %46, i32 0, i32 0, l100 c16, asm ln 188
  Added assignment asm ln 189, prod ln 100.16, live ln 101, gen 0
Before variable `p` (decl src ln 67)
Store to declared address of `p` (decl src ln 67), asm ln 197
  %48 = load %struct.cb_node.2*, %struct.cb_node.2** %47, l105 c9, asm ln 196
  Added assignment asm ln 197, prod ln 105.9, live ln 106, gen 0
Store to declared address of `p` (decl src ln 67), asm ln 79
  %call = call %struct.cb_node.2* @cb_internal_best_match(%struct.cb_node.2* %7, i8* %arraydecay, i64 %9), l77 c7, asm ln 78
  Added assignment asm ln 79, prod ln 77.7, live ln 80, gen 0
Before variable `q` (decl src ln 102)
Store to declared address of `q` (decl src ln 102), asm ln 208
  %call45 = call %struct.cb_node.2* @cb_node_of(i8* %52), l108 c9, asm ln 207
  Added assignment asm ln 208, prod ln 108.9, live ln 109, gen 0
Before variable `direction` (decl src ln 103)
Store to declared address of `direction` (decl src ln 103), asm ln 270
  %conv81 = sext i32 %shr80 to i64, l114 c17, asm ln 269
  Added assignment asm ln 270, prod ln 114.17, live ln 115, gen 0
Computing generations: `c` (decl src ln 65)
  asm ln 160, prod ln 92.7, live ln 93, gen 0
  asm ln 259, prod ln 113.9, live ln 114, gen 1
Computing generations: `direction` (decl src ln 103)
  asm ln 270, prod ln 114.17, live ln 115, gen 0
Computing generations: `klen` (decl src ln 62)
  asm ln 32, prod ln 62.0, live ln 69, gen 0
Computing generations: `newbyte` (decl src ln 64)
  asm ln 80, prod ln 80.16, live ln 81, gen 0
  asm ln 108, prod ln 80.44, live ln 81, gen 1
Computing generations: `newdirection` (decl src ln 66)
  asm ln 168, prod ln 93.18, live ln 95, gen 0
Computing generations: `newotherbits` (decl src ln 64)
  asm ln 132, prod ln 87.18, live ln 88, gen 0
  asm ln 137, prod ln 88.16, live ln 89, gen 1
  asm ln 142, prod ln 89.16, live ln 90, gen 2
  asm ln 147, prod ln 90.16, live ln 91, gen 3
  asm ln 154, prod ln 91.56, live ln 92, gen 4
Computing generations: `node` (decl src ln 62)
  asm ln 30, prod ln 62.0, live ln 69, gen 0
Computing generations: `p` (decl src ln 67)
  asm ln 79, prod ln 77.7, live ln 80, gen 0
  asm ln 197, prod ln 105.9, live ln 106, gen 1
Computing generations: `q` (decl src ln 102)
  asm ln 208, prod ln 108.9, live ln 109, gen 0
Computing generations: `t` (decl src ln 62)
  asm ln 28, prod ln 62.0, live ln 69, gen 0
Computing generations: `wherep` (decl src ln 67)
  asm ln 189, prod ln 100.16, live ln 101, gen 0
  asm ln 276, prod ln 115.23, live ln 116, gen 1

After variable `t` (decl src ln 62)
Value produced for `t` (decl src ln 62), asm ln 16
  arg 0
  Added assignment asm ln 16, prod ln 62.0, live ln 69, gen 0
After variable `node` (decl src ln 62)
Value produced for `node` (decl src ln 62), asm ln 17
  arg 1
  Added assignment asm ln 17, prod ln 62.0, live ln 69, gen 0
After variable `klen` (decl src ln 62)
Value produced for `klen` (decl src ln 62), asm ln 18
  arg 2
  Added assignment asm ln 18, prod ln 62.0, live ln 69, gen 0
After variable `p` (decl src ln 67)
Value produced for `p` (decl src ln 67), asm ln 42
  %call = call fastcc %struct.cb_node.4* @cb_internal_best_match(%struct.cb_node.4* nonnull %1, i8* nonnull %arraydecay, i64 %klen), l77 c7, asm ln 41
  Added assignment asm ln 42, prod ln 77.7, live ln 80, gen 0
After variable `newbyte` (decl src ln 64)
Value produced for `newbyte` (decl src ln 64), asm ln 43
  const i64 0
  Added assignment asm ln 43, prod ln 64.0, live ln 80, gen 0
After variable `newbyte` (decl src ln 64)
Value produced for `newbyte` (decl src ln 64), asm ln 64
  %inc = add nuw i64 %newbyte.0160, 1, l80 c44, asm ln 63
🔔 Value produced for `newbyte` (decl src ln 64): live ln too early, using produced ln + 1
  Added assignment asm ln 64, prod ln 80.44, live ln 81, gen 0
After variable `newotherbits` (decl src ln 64)
Value produced for `newotherbits` (decl src ln 64), asm ln 74
  %conv22 = zext i8 %xor154 to i64, l87 c18, asm ln 73
  Added assignment asm ln 74, prod ln 87.18, live ln 88, gen 0
After variable `newotherbits` (decl src ln 64)
Value produced for `newotherbits` (decl src ln 64), asm ln 77
  %or = or i64 %shr, %conv22, l88 c16, asm ln 76
  Added assignment asm ln 77, prod ln 88.16, live ln 89, gen 0
After variable `newotherbits` (decl src ln 64)
Value produced for `newotherbits` (decl src ln 64), asm ln 80
  %or24 = or i64 %shr23, %or, l89 c16, asm ln 79
  Added assignment asm ln 80, prod ln 89.16, live ln 90, gen 0
After variable `newotherbits` (decl src ln 64)
Value produced for `newotherbits` (decl src ln 64), asm ln 83
  %or26 = or i64 %shr25, %or24, l90 c16, asm ln 82
  Added assignment asm ln 83, prod ln 90.16, live ln 91, gen 0
After variable `newotherbits` (decl src ln 64)
Value produced for `newotherbits` (decl src ln 64), asm ln 88
  %xor29 = xor i64 %and28, 255, l91 c56, asm ln 87
  Added assignment asm ln 88, prod ln 91.56, live ln 93, gen 0
After variable `c` (decl src ln 65)
Value produced for `c` (decl src ln 65), asm ln 89
  %5 = load i8, i8* %scevgep, !tbaa !94, l81 c9, asm ln 54
  Added assignment asm ln 89, prod ln 81.9, live ln 93, gen 0
After variable `newdirection` (decl src ln 66)
Value produced for `newdirection` (decl src ln 66), asm ln 93
  %shr34 = lshr i64 %add, 8, l93 c43, asm ln 92
  Added assignment asm ln 93, prod ln 93.43, live ln 95, gen 0
After variable `wherep` (decl src ln 67)
Value produced for `wherep` (decl src ln 67), asm ln 105
  %root181 = bitcast %struct.cb_tree.5* %t to %struct.cb_node.4**, l71 c11, asm ln 29
  Added assignment asm ln 105, prod ln 71.11, live ln 101, gen 0
After variable `p` (decl src ln 67)
Value produced for `p` (decl src ln 67), asm ln 112
  %9 = load %struct.cb_node.4*, %struct.cb_node.4** %wherep.0, !tbaa !129, l105 c9, asm ln 111
  Added assignment asm ln 112, prod ln 105.9, live ln 106, gen 0
After variable `q` (decl src ln 102)
Value produced for `q` (decl src ln 102), asm ln 121
  %call45 = call fastcc %struct.cb_node.4* @cb_node_of(i8* %11), l108 c9, asm ln 120
  Added assignment asm ln 121, prod ln 108.9, live ln 109, gen 0
After variable `direction` (decl src ln 103)
Value produced for `direction` (decl src ln 103), asm ln 158
  %16 = lshr i64 %add79, 8, l114 c42, asm ln 157
  Added assignment asm ln 158, prod ln 114.42, live ln 115, gen 0
After variable `wherep` (decl src ln 67)
Value produced for `wherep` (decl src ln 67), asm ln 160
  %add.ptr = getelementptr inbounds %struct.cb_node.4, %struct.cb_node.4* %call45, i64 0, i32 0, i64 %16, l115 c23, asm ln 159
  Added assignment asm ln 160, prod ln 115.23, live ln 116, gen 0
After variable `newbyte` (decl src ln 64)
Value produced for `newbyte` (decl src ln 64), asm ln 51
  %newbyte.0160 = phi i64 [ %inc, %for.inc ], [ 0, %if.end ], asm ln 48
  Added assignment asm ln 51, prod ln 80.44, live ln 81, gen 0
After variable `wherep` (decl src ln 67)
Value produced for `wherep` (decl src ln 67), asm ln 110
  %wherep.0 = phi %struct.cb_node.4** [ %8, %different_byte_found ], [ %wherep.1, %cleanup ], l100 c10, asm ln 109
  Added assignment asm ln 110, prod ln 71.11, live ln 105, gen 0
After variable `c` (decl src ln 65)
Value produced for `c` (decl src ln 65), asm ln 150
  %cond = phi i8 [ %14, %cond.true66 ], [ 0, %if.end61 ], l113 c9, asm ln 149
  Added assignment asm ln 150, prod ln 113.26, live ln 114, gen 0
After variable `wherep` (decl src ln 67)
Value produced for `wherep` (decl src ln 67), asm ln 166
  %wherep.1 = phi %struct.cb_node.4** [ %add.ptr, %cond.end73 ], [ %wherep.0, %for.cond40 ], [ %wherep.0, %if.end44 ], [ %wherep.0, %land.lhs.true ], asm ln 164
🔔 Value produced for `wherep` (decl src ln 67): missing live ln, using produced ln + 1
  Added assignment asm ln 166, prod ln 115.23, live ln 116, gen 0
Computing generations: `c` (decl src ln 65)
  asm ln 89, prod ln 81.9, live ln 93, gen 0
  asm ln 150, prod ln 113.26, live ln 114, gen 1
Computing generations: `direction` (decl src ln 103)
  asm ln 158, prod ln 114.42, live ln 115, gen 0
Computing generations: `klen` (decl src ln 62)
  asm ln 18, prod ln 62.0, live ln 69, gen 0
Computing generations: `newbyte` (decl src ln 64)
  asm ln 43, prod ln 64.0, live ln 80, gen 0
  asm ln 51, prod ln 80.44, live ln 81, gen 1
  asm ln 64, prod ln 80.44, live ln 81, gen 2
Computing generations: `newdirection` (decl src ln 66)
  asm ln 93, prod ln 93.43, live ln 95, gen 0
Computing generations: `newotherbits` (decl src ln 64)
  asm ln 74, prod ln 87.18, live ln 88, gen 0
  asm ln 77, prod ln 88.16, live ln 89, gen 1
  asm ln 80, prod ln 89.16, live ln 90, gen 2
  asm ln 83, prod ln 90.16, live ln 91, gen 3
  asm ln 88, prod ln 91.56, live ln 93, gen 4
Computing generations: `node` (decl src ln 62)
  asm ln 17, prod ln 62.0, live ln 69, gen 0
Computing generations: `p` (decl src ln 67)
  asm ln 42, prod ln 77.7, live ln 80, gen 0
  asm ln 112, prod ln 105.9, live ln 106, gen 1
Computing generations: `q` (decl src ln 102)
  asm ln 121, prod ln 108.9, live ln 109, gen 0
Computing generations: `t` (decl src ln 62)
  asm ln 16, prod ln 62.0, live ln 69, gen 0
Computing generations: `wherep` (decl src ln 67)
  asm ln 105, prod ln 71.11, live ln 101, gen 0
  asm ln 110, prod ln 71.11, live ln 105, gen 1
  asm ln 160, prod ln 115.23, live ln 116, gen 2
  asm ln 166, prod ln 115.23, live ln 116, gen 3

✅ 11 before variables found, 11 after variables found, 0 mismatched

### Symbolic values

#### Before values

Assertion failed: ((count == 1 || valueType->isIntegerTy()) && "Unexpected type requesting multiple instances"), function buildSymbolicValue, file Executor.cpp, line 4743.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x000000010cb0f52d llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 61
1  check-debug-info         0x000000010cb0fa2b PrintStackTraceSignalHandler(void*) + 27
2  check-debug-info         0x000000010cb0dac3 llvm::sys::RunSignalHandlers() + 115
3  check-debug-info         0x000000010cb10ccf SignalHandler(int) + 223
4  libsystem_platform.dylib 0x00007ff806b065ed _sigtramp + 29
5  libsystem_platform.dylib 0x00007ff7b6157820 _sigtramp + 18446744072357220944
6  libsystem_c.dylib        0x00007ff8069ffb45 abort + 123
7  libsystem_c.dylib        0x00007ff8069fee5e err + 0
8  check-debug-info         0x0000000109e2f2d4 klee::Executor::buildSymbolicValue(klee::ExecutionState&, llvm::Value const*, llvm::Type*, llvm::Twine const&, unsigned int) + 420
9  check-debug-info         0x0000000109e2f785 klee::Executor::buildSymbolicValue(klee::ExecutionState&, llvm::Value const*, llvm::Type*, llvm::Twine const&, unsigned int) + 1621
10 check-debug-info         0x0000000109e45335 klee::Executor::enterIndependentFunction(klee::ExecutionState&, klee::KFunction*) + 341
11 check-debug-info         0x0000000109e45839 klee::Executor::runFunction(llvm::Function*) + 137
12 check-debug-info         0x0000000109debe77 ValuesCollector::collect(llvm::SmallVector<std::__1::pair<Variable, Assignment*>, 1u>*) + 71
13 check-debug-info         0x0000000109db5d64 checkFunction(llvm::LLVMContext&, llvm::StringRef, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&) + 2788
14 check-debug-info         0x0000000109db7f68 main + 1768
15 dyld                     0x00007ff80677f41f start + 1903
./check.sh: line 6: 27298 Abort trap: 6           ${CHECK} ${O0_BC} ${O1_BC} ${CHECK_OPTS}
