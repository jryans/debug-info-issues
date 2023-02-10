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
[1mexample.c:68:2: [0m[0;1;35mwarning: [0m[1mimplicit declaration of function 'assert' is invalid in C99 [-Wimplicit-function-declaration][0m
        assert(!((uintptr_t)node & 1)); /* allocations must be aligned */
[0;1;32m        ^
[0m1 warning generated.
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=cb_insert example-O0.ll
Writing '.cb_insert.dot'...
++ mv .cb_insert.dot example-O0.cb_insert.dot
++ ./../../tools/filter-dot.js example-O0.cb_insert.dot
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
[1mexample.c:68:2: [0m[0;1;35mwarning: [0m[1mimplicit declaration of function 'assert' is invalid in C99 [-Wimplicit-function-declaration][0m
        assert(!((uintptr_t)node & 1)); /* allocations must be aligned */
[0;1;32m        ^
[0m1 warning generated.
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

Before variable `t` (decl src ln 61)
Store to `t` (decl src ln 61), asm ln 24
  arg 0
  Added assignment starting at src ln 61, col 0
Before variable `node` (decl src ln 61)
Store to `node` (decl src ln 61), asm ln 26
  arg 1
  Added assignment starting at src ln 61, col 0
Before variable `klen` (decl src ln 61)
Store to `klen` (decl src ln 61), asm ln 28
  arg 2
  Added assignment starting at src ln 61, col 0
Before variable `newbyte` (decl src ln 63)
Store to `newbyte` (decl src ln 63), asm ln 101
  %inc = add i64 %18, 1, l79 c43, asm ln 100
  Added assignment starting at src ln 79, col 43
Store to `newbyte` (decl src ln 63), asm ln 67
  const i64 0
  Added assignment starting at src ln 79, col 15
Before variable `newotherbits` (decl src ln 63)
Store to `newotherbits` (decl src ln 63), asm ln 147
  %xor26 = xor i64 %and25, 255, l90 c55, asm ln 146
  Added assignment starting at src ln 90, col 55
Store to `newotherbits` (decl src ln 63), asm ln 140
  %or23 = or i64 %31, %shr22, l89 c15, asm ln 139
  Added assignment starting at src ln 89, col 15
Store to `newotherbits` (decl src ln 63), asm ln 135
  %or21 = or i64 %29, %shr20, l88 c15, asm ln 134
  Added assignment starting at src ln 88, col 15
Store to `newotherbits` (decl src ln 63), asm ln 130
  %or = or i64 %27, %shr, l87 c15, asm ln 129
  Added assignment starting at src ln 87, col 15
Store to `newotherbits` (decl src ln 63), asm ln 125
  %conv19 = sext i32 %xor to i64, l86 c17, asm ln 124
  Added assignment starting at src ln 86, col 17
Before variable `c` (decl src ln 64)
Store to `c` (decl src ln 64), asm ln 264
  %conv68 = trunc i32 %cond to i8, l112 c7, asm ln 263
  Added assignment starting at src ln 112, col 7
Store to `c` (decl src ln 64), asm ln 153
  %36 = load i8, i8* %arrayidx28, l91 c6, asm ln 152
  Added assignment starting at src ln 91, col 6
Before variable `newdirection` (decl src ln 65)
Store to `newdirection` (decl src ln 65), asm ln 161
  %conv32 = trunc i64 %shr31 to i32, l92 c17, asm ln 160
  Added assignment starting at src ln 92, col 17
Before variable `wherep` (decl src ln 66)
Store to `wherep` (decl src ln 66), asm ln 281
  %add.ptr = getelementptr inbounds %struct.cb_node.2*, %struct.cb_node.2** %arraydecay77, i64 %73, l114 c21, asm ln 280
  Added assignment starting at src ln 114, col 21
Store to `wherep` (decl src ln 66), asm ln 182
  %root36 = getelementptr inbounds %struct.cb_tree.3, %struct.cb_tree.3* %46, i32 0, i32 0, l99 c15, asm ln 181
  Added assignment starting at src ln 99, col 15
Before variable `p` (decl src ln 66)
Store to `p` (decl src ln 66), asm ln 190
  %48 = load %struct.cb_node.2*, %struct.cb_node.2** %47, l104 c7, asm ln 189
  Added assignment starting at src ln 104, col 7
Store to `p` (decl src ln 66), asm ln 66
  %call4 = call %struct.cb_node.2* @cb_internal_best_match(%struct.cb_node.2* %7, i8* %arraydecay, i64 %9), l76 c6, asm ln 65
  Added assignment starting at src ln 76, col 6
Before variable `q` (decl src ln 101)
Store to `q` (decl src ln 101), asm ln 204
  %call42 = call %struct.cb_node.2* @cb_node_of(i8* %52), l107 c7, asm ln 203
  Added assignment starting at src ln 107, col 7
Before variable `direction` (decl src ln 102)
Store to `direction` (decl src ln 102), asm ln 275
  %conv75 = sext i32 %shr74 to i64, l113 c15, asm ln 274
  Added assignment starting at src ln 113, col 15

After variable `t` (decl src ln 61)
@dbg.value mapping for `t` (decl src ln 61), asm ln 12
Value produced for `t` (decl src ln 61), asm ln 12
  arg 0
  Added assignment starting at src ln 61, col 0
After variable `node` (decl src ln 61)
@dbg.value mapping for `node` (decl src ln 61), asm ln 13
Value produced for `node` (decl src ln 61), asm ln 13
  arg 1
  Added assignment starting at src ln 61, col 0
After variable `klen` (decl src ln 61)
@dbg.value mapping for `klen` (decl src ln 61), asm ln 14
Value produced for `klen` (decl src ln 61), asm ln 14
  arg 2
  Added assignment starting at src ln 61, col 0
After variable `p` (decl src ln 66)
@dbg.value mapping for `p` (decl src ln 66), asm ln 33
Value produced for `p` (decl src ln 66), asm ln 33
  %call4 = call fastcc %struct.cb_node.4* @cb_internal_best_match(%struct.cb_node.4* nonnull %4, i8* nonnull %arraydecay, i64 %klen), l76 c6, asm ln 32
  Added assignment starting at src ln 76, col 6
After variable `newbyte` (decl src ln 63)
@dbg.value mapping for `newbyte` (decl src ln 63), asm ln 34
Value produced for `newbyte` (decl src ln 63), asm ln 34
  const i64 0
  Added assignment starting at src ln 63, col 0
After variable `newbyte` (decl src ln 63)
@dbg.value mapping for `newbyte` (decl src ln 63), asm ln 58
Value produced for `newbyte` (decl src ln 63), asm ln 58
  %inc = add nuw i64 %newbyte.0154, 1, l79 c43, asm ln 57
  Added assignment starting at src ln 79, col 43
After variable `newotherbits` (decl src ln 63)
@dbg.value mapping for `newotherbits` (decl src ln 63), asm ln 68
Value produced for `newotherbits` (decl src ln 63), asm ln 68
  %conv19 = zext i8 %xor148 to i64, l86 c17, asm ln 67
  Added assignment starting at src ln 86, col 17
After variable `newotherbits` (decl src ln 63)
@dbg.value mapping for `newotherbits` (decl src ln 63), asm ln 71
Value produced for `newotherbits` (decl src ln 63), asm ln 71
  %or = or i64 %shr, %conv19, l87 c15, asm ln 70
  Added assignment starting at src ln 87, col 15
After variable `newotherbits` (decl src ln 63)
@dbg.value mapping for `newotherbits` (decl src ln 63), asm ln 74
Value produced for `newotherbits` (decl src ln 63), asm ln 74
  %or21 = or i64 %shr20, %or, l88 c15, asm ln 73
  Added assignment starting at src ln 88, col 15
After variable `newotherbits` (decl src ln 63)
@dbg.value mapping for `newotherbits` (decl src ln 63), asm ln 77
Value produced for `newotherbits` (decl src ln 63), asm ln 77
  %or23 = or i64 %shr22, %or21, l89 c15, asm ln 76
  Added assignment starting at src ln 89, col 15
After variable `newotherbits` (decl src ln 63)
@dbg.value mapping for `newotherbits` (decl src ln 63), asm ln 82
Value produced for `newotherbits` (decl src ln 63), asm ln 82
  %xor26 = xor i64 %and25, 255, l90 c55, asm ln 81
  Added assignment starting at src ln 90, col 55
After variable `c` (decl src ln 64)
@dbg.value mapping for `c` (decl src ln 64), asm ln 83
Value produced for `c` (decl src ln 64), asm ln 83
  %8 = load i8, i8* %scevgep, !tbaa !92, l80 c7, asm ln 48
  Added assignment starting at src ln 80, col 7
After variable `newdirection` (decl src ln 65)
@dbg.value mapping for `newdirection` (decl src ln 65), asm ln 87
Value produced for `newdirection` (decl src ln 65), asm ln 87
  %shr31 = lshr i64 %add, 8, l92 c42, asm ln 86
  Added assignment starting at src ln 92, col 42
After variable `wherep` (decl src ln 66)
@dbg.value mapping for `wherep` (decl src ln 66), asm ln 99
Value produced for `wherep` (decl src ln 66), asm ln 99
  %root175 = bitcast %struct.cb_tree.5* %t to %struct.cb_node.4**, l70 c10, asm ln 20
  Added assignment starting at src ln 70, col 10
After variable `p` (decl src ln 66)
@dbg.value mapping for `p` (decl src ln 66), asm ln 106
Value produced for `p` (decl src ln 66), asm ln 106
  %12 = load %struct.cb_node.4*, %struct.cb_node.4** %wherep.0, !tbaa !127, l104 c7, asm ln 105
  Added assignment starting at src ln 104, col 7
After variable `q` (decl src ln 101)
@dbg.value mapping for `q` (decl src ln 101), asm ln 115
Value produced for `q` (decl src ln 101), asm ln 115
  %call42 = call fastcc %struct.cb_node.4* @cb_node_of(i8* %14), l107 c7, asm ln 114
  Added assignment starting at src ln 107, col 7
After variable `direction` (decl src ln 102)
@dbg.value mapping for `direction` (decl src ln 102), asm ln 152
Value produced for `direction` (decl src ln 102), asm ln 152
  %19 = lshr i64 %add73, 8, l113 c40, asm ln 151
  Added assignment starting at src ln 113, col 40
After variable `wherep` (decl src ln 66)
@dbg.value mapping for `wherep` (decl src ln 66), asm ln 154
Value produced for `wherep` (decl src ln 66), asm ln 154
  %add.ptr = getelementptr inbounds %struct.cb_node.4, %struct.cb_node.4* %call42, i64 0, i32 0, i64 %19, l114 c21, asm ln 153
  Added assignment starting at src ln 114, col 21
After variable `newbyte` (decl src ln 63)
@dbg.value mapping for `newbyte` (decl src ln 63), asm ln 45
Value produced for `newbyte` (decl src ln 63), asm ln 45
  %newbyte.0154 = phi i64 [ %inc, %for.inc ], [ 0, %for.body.preheader ], asm ln 42
  Checking phi edge [ %inc, %for.inc ]
  Last assignment for phi edge: 0, src ln 79, col 43
  Checking phi edge [ i64 0, %for.body.preheader ]
  Last assignment for phi edge: 0, src ln 63, col 0
  All phi values same as last assignments, skipping
After variable `wherep` (decl src ln 66)
@dbg.value mapping for `wherep` (decl src ln 66), asm ln 104
Value produced for `wherep` (decl src ln 66), asm ln 104
  %wherep.0 = phi %struct.cb_node.4** [ %11, %different_byte_found ], [ %wherep.1, %cleanup ], l99 c9, asm ln 103
  Checking phi edge [   %11 = bitcast %struct.cb_tree.5* %t to %struct.cb_node.4**, !dbg !71, %different_byte_found ]
  Last assignment for phi edge: 0, src ln 70, col 10
  Phi edge value mismatch
    %root175 = bitcast %struct.cb_tree.5* %t to %struct.cb_node.4**, l70 c10
      %11 = bitcast %struct.cb_tree.5* %t to %struct.cb_node.4**, !dbg !71
  Added assignment starting at src ln 99, col 9
After variable `c` (decl src ln 64)
@dbg.value mapping for `c` (decl src ln 64), asm ln 144
Value produced for `c` (decl src ln 64), asm ln 144
  %cond = phi i8 [ %17, %cond.true ], [ 0, %if.end58 ], l112 c7, asm ln 143
  Checking phi edge [   %17 = load i8, i8* %arrayidx66, align 1, !dbg !152, !tbaa !92, %cond.true ]
  Phi node with multiple predecessors
  Added assignment starting at src ln 112, col 7
After variable `wherep` (decl src ln 66)
@dbg.value mapping for `wherep` (decl src ln 66), asm ln 160
Value produced for `wherep` (decl src ln 66), asm ln 160
  %wherep.1 = phi %struct.cb_node.4** [ %add.ptr, %cond.end ], [ %wherep.0, %for.cond37 ], [ %wherep.0, %if.end41 ], [ %wherep.0, %land.lhs.true ], asm ln 158
  Checking phi edge [ %add.ptr, %cond.end ]
  Last assignment for phi edge: 0, src ln 114, col 21
  Checking phi edge [ %wherep.0, %for.cond37 ]
  Last assignment for phi edge: 0, src ln 99, col 9
  Checking phi edge [ %wherep.0, %if.end41 ]
  Last assignment for phi edge: 0, src ln 99, col 9
  Checking phi edge [ %wherep.0, %land.lhs.true ]
  Last assignment for phi edge: 0, src ln 99, col 9
  All phi values same as last assignments, skipping

✅ 11 before variables found, 11 after variables found, 0 mismatched

### Assignments

❌ Live ranges for `c` (decl src ln 64) don't match: [91.6,∞) vs. [80.7,∞)
❌ Live ranges for `direction` (decl src ln 102) don't match: [113.15,∞) vs. [113.40,∞)
❌ Live ranges for `newbyte` (decl src ln 63) don't match: [79.15,∞) vs. [63.0,∞)
❌ Live ranges for `newdirection` (decl src ln 65) don't match: [92.17,∞) vs. [92.42,∞)
❌ Live ranges for `wherep` (decl src ln 66) don't match: [99.15,∞) vs. [70.10,∞)
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
[0;1;35mKLEE: WARNING ONCE: calling external: assert(0x1) at example.c:l70:c7
[0m[0;1;31mKLEE: ERROR: example.c:68: failed external call: assert
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
❌ Unable to execute all before program states

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
[0;1;35mKLEE: WARNING ONCE: calling external: assert(0x1) at example.c:l70:c10
[0m[0;1;31mKLEE: ERROR: example.c:68: failed external call: assert
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
❌ Unable to execute all after program states

#### Check before against after

🔔 After `c` (decl src ln 64) assn 0, src ln 80, col 7 coordinates don't match before assn 0, src ln 91, col 6
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `c` (decl src ln 64) assn 0, src ln 91, col 6 has no symbolic value from %36 = load i8, i8* %arrayidx28, l91 c6
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `c` (decl src ln 64) assn 1, src ln 112, col 7 has no symbolic value from %conv68 = trunc i32 %cond to i8, l112 c7
🔔 After `direction` (decl src ln 102) assn 0, src ln 113, col 40 coordinates don't match before assn 0, src ln 113, col 15
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `direction` (decl src ln 102) assn 0, src ln 113, col 15 has no symbolic value from %conv75 = sext i32 %shr74 to i64, l113 c15
Checking equivalence of `klen` (decl src ln 61) from
assn 0, src ln 61, col 0
i64 %klen
(ReadLSB w64 0x0 klen)
and
assn 0, src ln 61, col 0
i64 %klen
(ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)
🔔 After `newbyte` (decl src ln 63) assn 0, src ln 63, col 0 coordinates don't match before assn 0, src ln 79, col 15
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `newbyte` (decl src ln 63) assn 0, src ln 79, col 15 has no symbolic value from i64 0
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `newbyte` (decl src ln 63) assn 1, src ln 79, col 43 has no symbolic value from %inc = add i64 %18, 1, l79 c43
🔔 After `newdirection` (decl src ln 65) assn 0, src ln 92, col 42 coordinates don't match before assn 0, src ln 92, col 17
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `newdirection` (decl src ln 65) assn 0, src ln 92, col 17 has no symbolic value from %conv32 = trunc i64 %shr31 to i32, l92 c17
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `newotherbits` (decl src ln 63) assn 0, src ln 86, col 17 has no symbolic value from %conv19 = sext i32 %xor to i64, l86 c17
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `newotherbits` (decl src ln 63) assn 1, src ln 87, col 15 has no symbolic value from %or = or i64 %27, %shr, l87 c15
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `newotherbits` (decl src ln 63) assn 2, src ln 88, col 15 has no symbolic value from %or21 = or i64 %29, %shr20, l88 c15
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `newotherbits` (decl src ln 63) assn 3, src ln 89, col 15 has no symbolic value from %or23 = or i64 %31, %shr22, l89 c15
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `newotherbits` (decl src ln 63) assn 4, src ln 90, col 55 has no symbolic value from %xor26 = xor i64 %and25, 255, l90 c55
Checking equivalence of `node` (decl src ln 61) from
assn 0, src ln 61, col 0
%struct.cb_node.2* %node
0xE5FBC9EAFE029AE2
and
assn 0, src ln 61, col 0
%struct.cb_node.4* %node
0xE5FBC9EAFE029AE2
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `p` (decl src ln 66) assn 0, src ln 76, col 6 has no symbolic value from %call4 = call %struct.cb_node.2* @cb_internal_best_match(%struct.cb_node.2* %7, i8* %arraydecay, i64 %9), l76 c6
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `p` (decl src ln 66) assn 1, src ln 104, col 7 has no symbolic value from %48 = load %struct.cb_node.2*, %struct.cb_node.2** %47, l104 c7
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `q` (decl src ln 101) assn 0, src ln 107, col 7 has no symbolic value from %call42 = call %struct.cb_node.2* @cb_node_of(i8* %52), l107 c7
Checking equivalence of `t` (decl src ln 61) from
assn 0, src ln 61, col 0
%struct.cb_tree.3* %t
0x8292380893C10F33
and
assn 0, src ln 61, col 0
%struct.cb_tree.5* %t
0x8292380893C10F33
🔔 After `wherep` (decl src ln 66) assn 1, src ln 99, col 9 coordinates don't match before assn 0, src ln 99, col 15
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `wherep` (decl src ln 66) assn 0, src ln 99, col 15 has no symbolic value from %root36 = getelementptr inbounds %struct.cb_tree.3, %struct.cb_tree.3* %46, i32 0, i32 0, l99 c15
🔔 After `wherep` (decl src ln 66) assn 2, src ln 114, col 21 coordinates don't match before assn 1, src ln 114, col 21
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ Before `wherep` (decl src ln 66) assn 1, src ln 114, col 21 has no symbolic value from %add.ptr = getelementptr inbounds %struct.cb_node.2*, %struct.cb_node.2** %arraydecay77, i64 %73, l114 c21
❌ Before symbolic values checked against after
  Matching:    3
  Mismatched:  16
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

🔔 Before `c` (decl src ln 64) assn 0, src ln 91, col 6 coordinates don't match after assn 0, src ln 80, col 7
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `c` (decl src ln 64) assn 0, src ln 80, col 7 has no symbolic value from %8 = load i8, i8* %scevgep, !tbaa !95, l80 c7
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `c` (decl src ln 64) assn 1, src ln 112, col 7 has no symbolic value from %cond = phi i8 [ %17, %cond.true ], [ 0, %if.end58 ], l112 c7
🔔 Before `direction` (decl src ln 102) assn 0, src ln 113, col 15 coordinates don't match after assn 0, src ln 113, col 40
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `direction` (decl src ln 102) assn 0, src ln 113, col 40 has no symbolic value from %19 = lshr i64 %add73, 8, l113 c40
Checking equivalence of `klen` (decl src ln 61) from
assn 0, src ln 61, col 0
i64 %klen
(ReadLSB w64 0x0 klen)
and
assn 0, src ln 61, col 0
i64 %klen
(ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)
🔔 Before `newbyte` (decl src ln 63) assn 0, src ln 79, col 15 coordinates don't match after assn 0, src ln 63, col 0
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `newbyte` (decl src ln 63) assn 0, src ln 63, col 0 has no symbolic value from i64 0
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `newbyte` (decl src ln 63) assn 1, src ln 79, col 43 has no symbolic value from %inc = add nuw i64 %newbyte.0154, 1, l79 c43
🔔 Before `newdirection` (decl src ln 65) assn 0, src ln 92, col 17 coordinates don't match after assn 0, src ln 92, col 42
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `newdirection` (decl src ln 65) assn 0, src ln 92, col 42 has no symbolic value from %shr31 = lshr i64 %add, 8, l92 c42
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `newotherbits` (decl src ln 63) assn 0, src ln 86, col 17 has no symbolic value from %conv19 = zext i8 %xor148 to i64, l86 c17
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `newotherbits` (decl src ln 63) assn 1, src ln 87, col 15 has no symbolic value from %or = or i64 %shr, %conv19, l87 c15
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `newotherbits` (decl src ln 63) assn 2, src ln 88, col 15 has no symbolic value from %or21 = or i64 %shr20, %or, l88 c15
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `newotherbits` (decl src ln 63) assn 3, src ln 89, col 15 has no symbolic value from %or23 = or i64 %shr22, %or21, l89 c15
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `newotherbits` (decl src ln 63) assn 4, src ln 90, col 55 has no symbolic value from %xor26 = xor i64 %and25, 255, l90 c55
Checking equivalence of `node` (decl src ln 61) from
assn 0, src ln 61, col 0
%struct.cb_node.4* %node
0xE5FBC9EAFE029AE2
and
assn 0, src ln 61, col 0
%struct.cb_node.2* %node
0xE5FBC9EAFE029AE2
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `p` (decl src ln 66) assn 0, src ln 76, col 6 has no symbolic value from %call4 = call fastcc %struct.cb_node.4* @cb_internal_best_match(%struct.cb_node.4* nonnull %4, i8* nonnull %arraydecay, i64 %klen), l76 c6
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `p` (decl src ln 66) assn 1, src ln 104, col 7 has no symbolic value from %12 = load %struct.cb_node.4*, %struct.cb_node.4** %wherep.0, !tbaa !130, l104 c7
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `q` (decl src ln 101) assn 0, src ln 107, col 7 has no symbolic value from %call42 = call fastcc %struct.cb_node.4* @cb_node_of(i8* %14), l107 c7
Checking equivalence of `t` (decl src ln 61) from
assn 0, src ln 61, col 0
%struct.cb_tree.5* %t
0x8292380893C10F33
and
assn 0, src ln 61, col 0
%struct.cb_tree.3* %t
0x8292380893C10F33
🔔 Before `wherep` (decl src ln 66) assn 0, src ln 99, col 15 coordinates don't match after assn 0, src ln 70, col 10
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `wherep` (decl src ln 66) assn 0, src ln 70, col 10 has no symbolic value from %root175 = bitcast %struct.cb_tree.5* %t to %struct.cb_node.4**, l70 c10
🔔 Before `wherep` (decl src ln 66) assn 0, src ln 99, col 15 coordinates don't match after assn 1, src ln 99, col 9
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `wherep` (decl src ln 66) assn 1, src ln 99, col 9 has no symbolic value from %wherep.0 = phi %struct.cb_node.4** [ %11, %different_byte_found ], [ %wherep.1, %cleanup ], l99 c9
🔔 Before `wherep` (decl src ln 66) assn 1, src ln 114, col 21 coordinates don't match after assn 2, src ln 114, col 21
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `wherep` (decl src ln 66) assn 2, src ln 114, col 21 has no symbolic value from %add.ptr = getelementptr inbounds %struct.cb_node.4, %struct.cb_node.4* %call42, i64 0, i32 0, i64 %19, l114 c21
❌ After symbolic values checked against before
  Matching:    3
  Mismatched:  17
  Unused:      0
  Unreachable: 0
  Removable:   0

## Function `cb_internal_best_match`

✅ Before and after function names match

### Variables

Before variable `p` (decl src ln 47)
Store to `p` (decl src ln 47), asm ln 386
  %16 = load %struct.cb_node.10*, %struct.cb_node.10** %arrayidx8, l55 c7, asm ln 385
  Added assignment starting at src ln 55, col 7
Store to `p` (decl src ln 47), asm ln 321
  arg 0
  Added assignment starting at src ln 47, col 0
Before variable `k` (decl src ln 48)
Store to `k` (decl src ln 48), asm ln 323
  arg 1
  Added assignment starting at src ln 48, col 0
Before variable `klen` (decl src ln 48)
Store to `klen` (decl src ln 48), asm ln 325
  arg 2
  Added assignment starting at src ln 48, col 0
Before variable `q` (decl src ln 51)
Store to `q` (decl src ln 51), asm ln 341
  %call = call %struct.cb_node.10* @cb_node_of(i8* %3), l51 c23, asm ln 340
  Added assignment starting at src ln 51, col 23
Before variable `c` (decl src ln 52)
Store to `c` (decl src ln 52), asm ln 368
  %conv4 = trunc i32 %cond to i8, l52 c15, asm ln 367
  Added assignment starting at src ln 52, col 15
Before variable `direction` (decl src ln 53)
Store to `direction` (decl src ln 53), asm ln 380
  %conv7 = sext i32 %shr to i64, l53 c22, asm ln 379
  Added assignment starting at src ln 53, col 22

After variable `p` (decl src ln 47)
@dbg.value mapping for `p` (decl src ln 47), asm ln 185
Value produced for `p` (decl src ln 47), asm ln 185
  arg 0
  Added assignment starting at src ln 47, col 0
After variable `k` (decl src ln 48)
@dbg.value mapping for `k` (decl src ln 48), asm ln 186
Value produced for `k` (decl src ln 48), asm ln 186
  arg 1
  Added assignment starting at src ln 48, col 0
After variable `klen` (decl src ln 48)
@dbg.value mapping for `klen` (decl src ln 48), asm ln 187
Value produced for `klen` (decl src ln 48), asm ln 187
  arg 2
  Added assignment starting at src ln 48, col 0
After variable `q` (decl src ln 51)
@dbg.value mapping for `q` (decl src ln 51), asm ln 198
Value produced for `q` (decl src ln 51), asm ln 198
  %call = call fastcc %struct.cb_node.12* @cb_node_of(i8* %1), l51 c23, asm ln 197
  Added assignment starting at src ln 51, col 23
After variable `direction` (decl src ln 53)
@dbg.value mapping for `direction` (decl src ln 53), asm ln 219
Value produced for `direction` (decl src ln 53), asm ln 219
  %5 = lshr i64 %add, 8, l53 c47, asm ln 218
  Added assignment starting at src ln 53, col 47
After variable `p` (decl src ln 47)
@dbg.value mapping for `p` (decl src ln 47), asm ln 222
Value produced for `p` (decl src ln 47), asm ln 222
  %6 = load %struct.cb_node.12*, %struct.cb_node.12** %arrayidx8, !tbaa !76, l55 c7, asm ln 221
  Added assignment starting at src ln 55, col 7
After variable `p` (decl src ln 47)
@dbg.value mapping for `p` (decl src ln 47), asm ln 195
Value produced for `p` (decl src ln 47), asm ln 195
  %p.addr.019 = phi %struct.cb_node.12* [ %6, %cond.end ], [ %p, %entry ], asm ln 194
  Checking phi edge [   %6 = load %struct.cb_node.12*, %struct.cb_node.12** %arrayidx8, align 8, !dbg !75, !tbaa !76, %cond.end ]
  Last assignment for phi edge: 0, src ln 55, col 7
  Checking phi edge [ %p, %entry ]
  Last assignment for phi edge: 0, src ln 47, col 0
  All phi values same as last assignments, skipping
After variable `c` (decl src ln 52)
@dbg.value mapping for `c` (decl src ln 52), asm ln 212
Value produced for `c` (decl src ln 52), asm ln 212
  %cond = phi i8 [ %3, %cond.true ], [ 0, %while.body ], l52 c15, asm ln 211
  Checking phi edge [   %3 = load i8, i8* %arrayidx, align 1, !dbg !69, !tbaa !70, %cond.true ]
  Phi node with multiple predecessors
  Added assignment starting at src ln 52, col 15

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Assignments

❌ Live ranges for `direction` (decl src ln 53) don't match: [53.22,∞) vs. [53.47,∞)
❌ Before live range coverage
  Covered:   5
  Uncovered: 1
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
🔔 Before `c` (decl src ln 52) assn 0, src ln 52, col 15 has no symbolic value (likely unreachable) from %conv4 = trunc i32 %cond to i8, l52 c15
🔔 After `direction` (decl src ln 53) assn 0, src ln 53, col 47 coordinates don't match before assn 0, src ln 53, col 22
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `direction` (decl src ln 53) assn 0, src ln 53, col 22 has no symbolic value (likely unreachable) from %conv7 = sext i32 %shr to i64, l53 c22
Checking equivalence of `k` (decl src ln 48) from
assn 0, src ln 48, col 0
i8* %k
0x6E0F93060F5E7E8D
and
assn 0, src ln 48, col 0
i8* %k
0x6E0F93060F5E7E8D
Checking equivalence of `klen` (decl src ln 48) from
assn 0, src ln 48, col 0
i64 %klen
(ReadLSB w64 0x0 klen)
and
assn 0, src ln 48, col 0
i64 %klen
(ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)
Checking equivalence of `p` (decl src ln 47) from
assn 0, src ln 47, col 0
%struct.cb_node.10* %p
0x6B9649B5C91006F4
and
assn 0, src ln 47, col 0
%struct.cb_node.12* %p
0x6B9649B5C91006F4
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `p` (decl src ln 47) assn 1, src ln 55, col 7 has no symbolic value (likely unreachable) from %16 = load %struct.cb_node.10*, %struct.cb_node.10** %arrayidx8, l55 c7
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 Before `q` (decl src ln 51) assn 0, src ln 51, col 23 has no symbolic value (likely unreachable) from %call = call %struct.cb_node.10* @cb_node_of(i8* %3), l51 c23
✅ Before symbolic values checked against after
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 4
  Removable:   0

#### Check after against before

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `c` (decl src ln 52) assn 0, src ln 52, col 15 has no symbolic value (likely unreachable) from %cond = phi i8 [ %3, %cond.true ], [ 0, %while.body ], l52 c15
🔔 Before `direction` (decl src ln 53) assn 0, src ln 53, col 22 coordinates don't match after assn 0, src ln 53, col 47
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `direction` (decl src ln 53) assn 0, src ln 53, col 47 has no symbolic value (likely unreachable) from %5 = lshr i64 %add, 8, l53 c47
Checking equivalence of `k` (decl src ln 48) from
assn 0, src ln 48, col 0
i8* %k
0x6E0F93060F5E7E8D
and
assn 0, src ln 48, col 0
i8* %k
0x6E0F93060F5E7E8D
Checking equivalence of `klen` (decl src ln 48) from
assn 0, src ln 48, col 0
i64 %klen
(ReadLSB w64 0x0 klen)
and
assn 0, src ln 48, col 0
i64 %klen
(ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)
Checking equivalence of `p` (decl src ln 47) from
assn 0, src ln 47, col 0
%struct.cb_node.12* %p
0x6B9649B5C91006F4
and
assn 0, src ln 47, col 0
%struct.cb_node.10* %p
0x6B9649B5C91006F4
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `p` (decl src ln 47) assn 1, src ln 55, col 7 has no symbolic value (likely unreachable) from %6 = load %struct.cb_node.12*, %struct.cb_node.12** %arrayidx8, !tbaa !79, l55 c7
Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
🔔 After `q` (decl src ln 51) assn 0, src ln 51, col 23 has no symbolic value (likely unreachable) from %call = call fastcc %struct.cb_node.12* @cb_node_of(i8* %1), l51 c23
✅ After symbolic values checked against before
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 4
  Removable:   0

## Function `cb_node_of`

✅ Before and after function names match

### Variables

Before variable `p` (decl src ln 41)
Store to `p` (decl src ln 41), asm ln 401
  arg 0
  Added assignment starting at src ln 41, col 0

After variable `p` (decl src ln 41)
@dbg.value mapping for `p` (decl src ln 41), asm ln 239
Value produced for `p` (decl src ln 41), asm ln 239
  arg 0
  Added assignment starting at src ln 41, col 0

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

Checking equivalence of `p` (decl src ln 41) from
assn 0, src ln 41, col 0
i8* %p
0x6B9649B5C91006F4
and
assn 0, src ln 41, col 0
i8* %p
0x6B9649B5C91006F4
✅ Before symbolic values checked against after
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `p` (decl src ln 41) from
assn 0, src ln 41, col 0
i8* %p
0x6B9649B5C91006F4
and
assn 0, src ln 41, col 0
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

Before variable `t` (decl src ln 123)
Store to `t` (decl src ln 123), asm ln 417
  arg 0
  Added assignment starting at src ln 123, col 0
Before variable `k` (decl src ln 123)
Store to `k` (decl src ln 123), asm ln 419
  arg 1
  Added assignment starting at src ln 123, col 0
Before variable `klen` (decl src ln 123)
Store to `klen` (decl src ln 123), asm ln 421
  arg 2
  Added assignment starting at src ln 123, col 0
Before variable `p` (decl src ln 125)
Store to `p` (decl src ln 125), asm ln 430
  %call = call %struct.cb_node.26* @cb_internal_best_match(%struct.cb_node.26* %1, i8* %2, i64 %3), l125 c22, asm ln 429
  Added assignment starting at src ln 125, col 22

After variable `t` (decl src ln 123)
@dbg.value mapping for `t` (decl src ln 123), asm ln 249
Value produced for `t` (decl src ln 123), asm ln 249
  arg 0
  Added assignment starting at src ln 123, col 0
After variable `k` (decl src ln 123)
@dbg.value mapping for `k` (decl src ln 123), asm ln 250
Value produced for `k` (decl src ln 123), asm ln 250
  arg 1
  Added assignment starting at src ln 123, col 0
After variable `klen` (decl src ln 123)
@dbg.value mapping for `klen` (decl src ln 123), asm ln 251
Value produced for `klen` (decl src ln 123), asm ln 251
  arg 2
  Added assignment starting at src ln 123, col 0
After variable `p` (decl src ln 125)
@dbg.value mapping for `p` (decl src ln 125), asm ln 255
Value produced for `p` (decl src ln 125), asm ln 255
  %call = call fastcc %struct.cb_node.28* @cb_internal_best_match(%struct.cb_node.28* %0, i8* %k, i64 %klen), l125 c22, asm ln 254
  Added assignment starting at src ln 125, col 22

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
  Concrete pointer resolves to cb_internal_best_match.deref, offset 0x0
  Replaced concrete pointer with hash 0xDBD6D2BE1EF15D48
  %call = call %struct.cb_node.26* @cb_internal_best_match(%struct.cb_node.26* %1, i8* %2, i64 %3), l125 c22
  0xDBD6D2BE1EF15D48

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
  Concrete pointer resolves to cb_internal_best_match.deref, offset 0x0
  Replaced concrete pointer with hash 0xDBD6D2BE1EF15D48
  %call = call fastcc %struct.cb_node.28* @cb_internal_best_match(%struct.cb_node.28* %0, i8* %k, i64 %klen), l125 c22
  0xDBD6D2BE1EF15D48

#### Check before against after

Checking equivalence of `k` (decl src ln 123) from
assn 0, src ln 123, col 0
i8* %k
0x6E0F93060F5E7E8D
and
assn 0, src ln 123, col 0
i8* %k
0x6E0F93060F5E7E8D
Checking equivalence of `klen` (decl src ln 123) from
assn 0, src ln 123, col 0
i64 %klen
(ReadLSB w64 0x0 klen)
and
assn 0, src ln 123, col 0
i64 %klen
(ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)
Checking equivalence of `p` (decl src ln 125) from
assn 0, src ln 125, col 22
%call = call %struct.cb_node.26* @cb_internal_best_match(%struct.cb_node.26* %1, i8* %2, i64 %3), l125 c22
0xDBD6D2BE1EF15D48
and
assn 0, src ln 125, col 22
%call = call fastcc %struct.cb_node.28* @cb_internal_best_match(%struct.cb_node.28* %0, i8* %k, i64 %klen), l125 c22
0xDBD6D2BE1EF15D48
Checking equivalence of `t` (decl src ln 123) from
assn 0, src ln 123, col 0
%struct.cb_tree.27* %t
0x8292380893C10F33
and
assn 0, src ln 123, col 0
%struct.cb_tree.29* %t
0x8292380893C10F33
✅ Before symbolic values checked against after
  Matching:    4
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `k` (decl src ln 123) from
assn 0, src ln 123, col 0
i8* %k
0x6E0F93060F5E7E8D
and
assn 0, src ln 123, col 0
i8* %k
0x6E0F93060F5E7E8D
Checking equivalence of `klen` (decl src ln 123) from
assn 0, src ln 123, col 0
i64 %klen
(ReadLSB w64 0x0 klen)
and
assn 0, src ln 123, col 0
i64 %klen
(ReadLSB w64 0x0 klen)
Query to parse
array klen[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 0x0 klen)
     (ReadLSB w64 0x0 klen)))
Parsed query
(Eq N0:(ReadLSB w64 0x0 klen)
     N0)
Checking equivalence of `p` (decl src ln 125) from
assn 0, src ln 125, col 22
%call = call fastcc %struct.cb_node.28* @cb_internal_best_match(%struct.cb_node.28* %0, i8* %k, i64 %klen), l125 c22
0xDBD6D2BE1EF15D48
and
assn 0, src ln 125, col 22
%call = call %struct.cb_node.26* @cb_internal_best_match(%struct.cb_node.26* %1, i8* %2, i64 %3), l125 c22
0xDBD6D2BE1EF15D48
Checking equivalence of `t` (decl src ln 123) from
assn 0, src ln 123, col 0
%struct.cb_tree.29* %t
0x8292380893C10F33
and
assn 0, src ln 123, col 0
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

Before variable `t` (decl src ln 142)
Store to `t` (decl src ln 142), asm ln 473
  arg 0
  Added assignment starting at src ln 142, col 0
Before variable `kpfx` (decl src ln 142)
Store to `kpfx` (decl src ln 142), asm ln 475
  arg 1
  Added assignment starting at src ln 142, col 0
Before variable `klen` (decl src ln 142)
Store to `klen` (decl src ln 142), asm ln 477
  arg 2
  Added assignment starting at src ln 142, col 0
Before variable `fn` (decl src ln 143)
Store to `fn` (decl src ln 143), asm ln 479
  arg 3
  Added assignment starting at src ln 143, col 0
Before variable `arg` (decl src ln 143)
Store to `arg` (decl src ln 143), asm ln 481
  arg 4
  Added assignment starting at src ln 143, col 0
Before variable `p` (decl src ln 145)
Store to `p` (decl src ln 145), asm ln 560
  %20 = load %struct.cb_node.34*, %struct.cb_node.34** %arrayidx9, l157 c7, asm ln 559
  Added assignment starting at src ln 157, col 7
Store to `p` (decl src ln 145), asm ln 487
  %1 = load %struct.cb_node.34*, %struct.cb_node.34** %root, l145 c25, asm ln 486
  Added assignment starting at src ln 145, col 25
Before variable `top` (decl src ln 146)
Store to `top` (decl src ln 146), asm ln 571
  %24 = load %struct.cb_node.34*, %struct.cb_node.34** %p, l159 c10, asm ln 570
  Added assignment starting at src ln 159, col 10
Store to `top` (decl src ln 146), asm ln 490
  %2 = load %struct.cb_node.34*, %struct.cb_node.34** %p, l146 c24, asm ln 489
  Added assignment starting at src ln 146, col 24
Before variable `i` (decl src ln 147)
Store to `i` (decl src ln 147), asm ln 611
  %inc = add i64 %33, 1, l162 c25, asm ln 610
  Added assignment starting at src ln 162, col 25
Store to `i` (decl src ln 147), asm ln 578
  const i64 0
  Added assignment starting at src ln 162, col 9
Store to `i` (decl src ln 147), asm ln 492
  const i64 0
  Value is same as last assignment, skipping
Before variable `q` (decl src ln 153)
Store to `q` (decl src ln 153), asm ln 515
  %call = call %struct.cb_node.34* @cb_node_of(i8* %7), l153 c23, asm ln 514
  Added assignment starting at src ln 153, col 23
Before variable `c` (decl src ln 154)
Store to `c` (decl src ln 154), asm ln 542
  %conv5 = trunc i32 %cond to i8, l154 c15, asm ln 541
  Added assignment starting at src ln 154, col 15
Before variable `direction` (decl src ln 155)
Store to `direction` (decl src ln 155), asm ln 554
  %conv8 = sext i32 %shr to i64, l155 c22, asm ln 553
  Added assignment starting at src ln 155, col 22

After variable `t` (decl src ln 142)
@dbg.value mapping for `t` (decl src ln 142), asm ln 277
Value produced for `t` (decl src ln 142), asm ln 277
  arg 0
  Added assignment starting at src ln 142, col 0
After variable `kpfx` (decl src ln 142)
@dbg.value mapping for `kpfx` (decl src ln 142), asm ln 278
Value produced for `kpfx` (decl src ln 142), asm ln 278
  arg 1
  Added assignment starting at src ln 142, col 0
After variable `klen` (decl src ln 142)
@dbg.value mapping for `klen` (decl src ln 142), asm ln 279
Value produced for `klen` (decl src ln 142), asm ln 279
  arg 2
  Added assignment starting at src ln 142, col 0
After variable `fn` (decl src ln 143)
@dbg.value mapping for `fn` (decl src ln 143), asm ln 280
Value produced for `fn` (decl src ln 143), asm ln 280
  arg 3
  Added assignment starting at src ln 143, col 0
After variable `arg` (decl src ln 143)
@dbg.value mapping for `arg` (decl src ln 143), asm ln 281
Value produced for `arg` (decl src ln 143), asm ln 281
  arg 4
  Added assignment starting at src ln 143, col 0
After variable `p` (decl src ln 145)
@dbg.value mapping for `p` (decl src ln 145), asm ln 284
Value produced for `p` (decl src ln 145), asm ln 284
  %0 = load %struct.cb_node.36*, %struct.cb_node.36** %root, !tbaa !71, l145 c25, asm ln 283
  Added assignment starting at src ln 145, col 25
After variable `top` (decl src ln 146)
@dbg.value mapping for `top` (decl src ln 146), asm ln 285
Value produced for `top` (decl src ln 146), asm ln 285
  %0 = load %struct.cb_node.36*, %struct.cb_node.36** %root, !tbaa !71, l145 c25, asm ln 283
Assertion failed: (assignment.startLine >= variable.declLine && "Assignment starts before declaration"), function addAssignment, file main.cpp, line 334.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-debug/bin/debug-info-check klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  debug-info-check         0x00000001089b1657 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 39
1  debug-info-check         0x00000001089b0498 llvm::sys::RunSignalHandlers() + 248
2  debug-info-check         0x00000001089b1ca0 SignalHandler(int) + 288
3  libsystem_platform.dylib 0x00007ff813128c1d _sigtramp + 29
4  libsystem_platform.dylib 0x000000010e796b00 _sigtramp + 18446603374798757632
5  libsystem_c.dylib        0x00007ff813047ca5 abort + 123
6  libsystem_c.dylib        0x00007ff813046fbe err + 0
7  debug-info-check         0x0000000106ee4e42 addAssignment(llvm::StringRef, klee::InstructionInfoTable const&, llvm::DbgVariableIntrinsic const*, Variable const&, llvm::StringRef, llvm::Instruction const*, llvm::SmallVector<llvm::Value const*, 2u> const&&, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > >&) + 5250
8  debug-info-check         0x0000000106ee6bf3 gatherAssignments(llvm::StringRef, llvm::Instruction const&, klee::InstructionInfoTable const&, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, llvm::SmallSet<Variable, 8u, std::__1::less<Variable> >&, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > >&) + 2083
9  debug-info-check         0x0000000106ee7233 gatherAssignments(llvm::StringRef, llvm::Function const&, klee::InstructionInfoTable const&, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, llvm::SmallSet<Variable, 8u, std::__1::less<Variable> >&, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > >&) + 355
10 debug-info-check         0x0000000106eeb65a checkFunction(llvm::LLVMContext&, llvm::StringRef, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&) + 1034
11 debug-info-check         0x0000000106eedbfe main + 1742
12 dyld                     0x00007ff812dcb310 start + 2432
./check.sh: line 6: 81358 Abort trap: 6           ${CHECK} ${O0_BC} ${O1_BC} ${CHECK_OPTS}
