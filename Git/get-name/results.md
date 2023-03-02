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

## Function `get_name`

✅ Before and after function names match

### Variables

Before variable `path` (decl src ln 72)
Store to `path` (decl src ln 72), asm ln 33
  arg 0
  Added assignment asm ln 33, prod ln 72.0, live ln 75, gen 0
Before variable `oid` (decl src ln 72)
Store to `oid` (decl src ln 72), asm ln 35
  arg 1
  Added assignment asm ln 35, prod ln 72.0, live ln 75, gen 0
Before variable `flag` (decl src ln 73)
Store to `flag` (decl src ln 73), asm ln 37
  arg 2
  @dbg.declare without read users, removable
  Added assignment asm ln 37, prod ln 73.0, live ln 75, gen 0
Before variable `cb_data` (decl src ln 73)
Store to `cb_data` (decl src ln 73), asm ln 39
  arg 3
  @dbg.declare without read users, removable
  Added assignment asm ln 39, prod ln 73.0, live ln 75, gen 0
Before variable `is_tag` (decl src ln 75)
Store to `is_tag` (decl src ln 75), asm ln 54
  const i32 1
  Added assignment asm ln 54, prod ln 81.10, live ln 82, gen 0
Store to `is_tag` (decl src ln 75), asm ln 42
  const i32 0
  Added assignment asm ln 42, prod ln 75.6, live ln 78, gen 0
Before variable `peeled` (decl src ln 76)
Before variable `is_annotated` (decl src ln 77)
Store to `is_annotated` (decl src ln 77), asm ln 233
  const i32 0
❌ Store to `is_annotated` (decl src ln 77): missing live line, using decl ln
  Added assignment asm ln 233, prod ln 131.16, live ln 77, gen 0
Store to `is_annotated` (decl src ln 77), asm ln 227
  %lnot.ext = zext i1 %lnot to i32, l128 c18, asm ln 226
  Added assignment asm ln 227, prod ln 128.18, live ln 129, gen 0
Before variable `prio` (decl src ln 77)
Store to `prio` (decl src ln 77), asm ln 255
  const i32 0
❌ Store to `prio` (decl src ln 77): missing live line, using decl ln
  Added assignment asm ln 255, prod ln 145.8, live ln 77, gen 0
Store to `prio` (decl src ln 77), asm ln 251
  const i32 1
  Added assignment asm ln 251, prod ln 143.8, live ln 143, gen 0
Store to `prio` (decl src ln 77), asm ln 242
  const i32 2
  Added assignment asm ln 242, prod ln 141.8, live ln 141, gen 0
Before variable `path_to_match` (decl src ln 78)
Store to `path_to_match` (decl src ln 78), asm ln 47
  const i8* null
  Added assignment asm ln 47, prod ln 78.14, live ln 80, gen 0
Before variable `item` (decl src ln 99)
Store to `item` (decl src ln 99), asm ln 145
  %incdec.ptr = getelementptr inbounds %struct.string_list_item.1, %struct.string_list_item.1* %16, i32 1, l101 c3, asm ln 144
  Added assignment asm ln 145, prod ln 101.3, live ln 101, gen 0
Store to `item` (decl src ln 99), asm ln 106
  %7 = load %struct.string_list_item.1*, %struct.string_list_item.1** getelementptr inbounds (%struct.string_list.2, %struct.string_list.2* @exclude_patterns, i32 0, i32 0), l101 c3, asm ln 105
  Added assignment asm ln 106, prod ln 101.3, live ln 101, gen 0
Before variable `found` (decl src ln 112)
Store to `found` (decl src ln 112), asm ln 191
  const i32 1
  Added assignment asm ln 191, prod ln 117.11, live ln 118, gen 0
Store to `found` (decl src ln 112), asm ln 158
  const i32 0
  Added assignment asm ln 158, prod ln 112.7, live ln 115, gen 0
Before variable `item` (decl src ln 113)
Store to `item` (decl src ln 113), asm ln 200
  %incdec.ptr38 = getelementptr inbounds %struct.string_list_item.1, %struct.string_list_item.1* %27, i32 1, l115 c3, asm ln 199
  Added assignment asm ln 200, prod ln 115.3, live ln 115, gen 0
Store to `item` (decl src ln 113), asm ln 161
  %18 = load %struct.string_list_item.1*, %struct.string_list_item.1** getelementptr inbounds (%struct.string_list.2, %struct.string_list.2* @patterns, i32 0, i32 0), l115 c3, asm ln 160
  Added assignment asm ln 161, prod ln 115.3, live ln 115, gen 0
Computing generations: `cb_data` (decl src ln 73)
  asm ln 39, prod ln 73.0, live ln 75, gen 0
Computing generations: `flag` (decl src ln 73)
  asm ln 37, prod ln 73.0, live ln 75, gen 0
Computing generations: `found` (decl src ln 112)
  asm ln 158, prod ln 112.7, live ln 115, gen 0
  asm ln 191, prod ln 117.11, live ln 118, gen 1
Computing generations: `is_annotated` (decl src ln 77)
  asm ln 233, prod ln 131.16, live ln 77, gen 0
  asm ln 227, prod ln 128.18, live ln 129, gen 1
Computing generations: `is_tag` (decl src ln 75)
  asm ln 42, prod ln 75.6, live ln 78, gen 0
  asm ln 54, prod ln 81.10, live ln 82, gen 1
Computing generations: `item` (decl src ln 99)
  asm ln 106, prod ln 101.3, live ln 101, gen 0
  asm ln 145, prod ln 101.3, live ln 101, gen 1
Computing generations: `item` (decl src ln 113)
  asm ln 161, prod ln 115.3, live ln 115, gen 0
  asm ln 200, prod ln 115.3, live ln 115, gen 1
Computing generations: `oid` (decl src ln 72)
  asm ln 35, prod ln 72.0, live ln 75, gen 0
Computing generations: `path` (decl src ln 72)
  asm ln 33, prod ln 72.0, live ln 75, gen 0
Computing generations: `path_to_match` (decl src ln 78)
  asm ln 47, prod ln 78.14, live ln 80, gen 0
Computing generations: `prio` (decl src ln 77)
  asm ln 255, prod ln 145.8, live ln 77, gen 0
  asm ln 251, prod ln 143.8, live ln 143, gen 1
  asm ln 242, prod ln 141.8, live ln 141, gen 2

After variable `path` (decl src ln 72)
@dbg.value mapping for `path` (decl src ln 72), asm ln 15
Value produced for `path` (decl src ln 72), asm ln 15
  arg 0
  Added assignment asm ln 15, prod ln 72.0, live ln 76, gen 0
After variable `oid` (decl src ln 72)
@dbg.value mapping for `oid` (decl src ln 72), asm ln 16
Value produced for `oid` (decl src ln 72), asm ln 16
  arg 1
  Added assignment asm ln 16, prod ln 72.0, live ln 76, gen 0
After variable `flag` (decl src ln 73)
@dbg.value mapping for `flag` (decl src ln 73), asm ln 17
Value produced for `flag` (decl src ln 73), asm ln 17
  arg 2
  Added assignment asm ln 17, prod ln 73.0, live ln 76, gen 0
After variable `cb_data` (decl src ln 73)
@dbg.value mapping for `cb_data` (decl src ln 73), asm ln 18
Value produced for `cb_data` (decl src ln 73), asm ln 18
  arg 3
  Added assignment asm ln 18, prod ln 73.0, live ln 76, gen 0
After variable `is_tag` (decl src ln 75)
@dbg.value mapping for `is_tag` (decl src ln 75), asm ln 19
Value produced for `is_tag` (decl src ln 75), asm ln 19
  const i32 0
  Added assignment asm ln 19, prod ln 75.0, live ln 76, gen 0
After variable `peeled` (decl src ln 76)
After variable `path_to_match` (decl src ln 78)
@dbg.value mapping for `path_to_match` (decl src ln 78), asm ln 25
Value produced for `path_to_match` (decl src ln 78), asm ln 25
  const i8* null
  Added assignment asm ln 25, prod ln 78.0, live ln 78, gen 0
After variable `path_to_match` (decl src ln 78)
@dbg.value mapping for `path_to_match` (decl src ln 78), asm ln 27
Value produced for `path_to_match` (decl src ln 78), asm ln 27
  %path_to_match = alloca i8*, asm ln 14
🔔 Value produced for `path_to_match` (decl src ln 78): missing produced line, using decl ln
  Added assignment asm ln 27, prod ln 78.0, live ln 80, gen 0
After variable `is_tag` (decl src ln 75)
@dbg.value mapping for `is_tag` (decl src ln 75), asm ln 33
Value produced for `is_tag` (decl src ln 75), asm ln 33
  const i32 1
🔔 Value produced for `is_tag` (decl src ln 75): missing produced line, using decl ln
  Added assignment asm ln 33, prod ln 75.0, live ln 127, gen 0
After variable `is_tag` (decl src ln 75)
@dbg.value mapping for `is_tag` (decl src ln 75), asm ln 34
Value produced for `is_tag` (decl src ln 75), asm ln 34
  const i32 1
  Producers match last assignment, skipping
After variable `is_annotated` (decl src ln 77)
@dbg.value mapping for `is_annotated` (decl src ln 77), asm ln 42
Value produced for `is_annotated` (decl src ln 77), asm ln 42
  %tobool52.not.not = icmp eq i32 %call51, 0, l128 c18, asm ln 41
  Added assignment asm ln 42, prod ln 128.18, live ln 140, gen 0
After variable `is_annotated` (decl src ln 77)
@dbg.value mapping for `is_annotated` (decl src ln 77), asm ln 43
Value produced for `is_annotated` (decl src ln 77), asm ln 43
  const i32 undef
🔔 Value produced for `is_annotated` (decl src ln 77): missing produced line, using decl ln
  Added assignment asm ln 43, prod ln 77.0, live ln 140, gen 0
After variable `is_annotated` (decl src ln 77)
@dbg.value mapping for `is_annotated` (decl src ln 77), asm ln 48
Value produced for `is_annotated` (decl src ln 77), asm ln 48
  const i32 0
🔔 Value produced for `is_annotated` (decl src ln 77): missing produced line, using decl ln
  Added assignment asm ln 48, prod ln 77.0, live ln 140, gen 0
After variable `is_annotated` (decl src ln 77)
@dbg.value mapping for `is_annotated` (decl src ln 77), asm ln 49
Value produced for `is_annotated` (decl src ln 77), asm ln 49
  const i32 undef
🔔 Value produced for `is_annotated` (decl src ln 77): missing produced line, using decl ln
  Added assignment asm ln 49, prod ln 77.0, live ln 140, gen 0
After variable `prio` (decl src ln 77)
@dbg.value mapping for `prio` (decl src ln 77), asm ln 53
Value produced for `prio` (decl src ln 77), asm ln 53
  const i32 1
  Added assignment asm ln 53, prod ln 77.0, live ln 143, gen 0
After variable `prio` (decl src ln 77)
@dbg.value mapping for `prio` (decl src ln 77), asm ln 58
Value produced for `prio` (decl src ln 77), asm ln 58
  %prio.0 = phi i32 [ 1, %if.then59 ], [ 2, %if.then50 ], asm ln 57
🔔 Value produced for `prio` (decl src ln 77): missing produced line, using decl ln
  Added assignment asm ln 58, prod ln 77.0, live ln 147, gen 0
Computing generations: `cb_data` (decl src ln 73)
  asm ln 18, prod ln 73.0, live ln 76, gen 0
Computing generations: `flag` (decl src ln 73)
  asm ln 17, prod ln 73.0, live ln 76, gen 0
Computing generations: `is_annotated` (decl src ln 77)
  asm ln 42, prod ln 128.18, live ln 140, gen 0
  asm ln 43, prod ln 77.0, live ln 140, gen 1
  asm ln 48, prod ln 77.0, live ln 140, gen 2
  asm ln 49, prod ln 77.0, live ln 140, gen 3
Computing generations: `is_tag` (decl src ln 75)
  asm ln 19, prod ln 75.0, live ln 76, gen 0
  asm ln 33, prod ln 75.0, live ln 127, gen 1
Computing generations: `oid` (decl src ln 72)
  asm ln 16, prod ln 72.0, live ln 76, gen 0
Computing generations: `path` (decl src ln 72)
  asm ln 15, prod ln 72.0, live ln 76, gen 0
Computing generations: `path_to_match` (decl src ln 78)
  asm ln 25, prod ln 78.0, live ln 78, gen 0
  asm ln 27, prod ln 78.0, live ln 80, gen 1
Computing generations: `prio` (decl src ln 77)
  asm ln 53, prod ln 77.0, live ln 143, gen 0
  asm ln 58, prod ln 77.0, live ln 147, gen 1

🔔 12 before variables found, 9 after variables found, 3 mismatched

### Symbolic values

#### Before values

Collected value for `path`
  Concrete pointer resolves to path.deref, offset 0x0
  Replaced concrete pointer with hash 0x448F4ECF717B6818
  i8* %path
  0x448F4ECF717B6818
Collected value for `oid`
  Concrete pointer resolves to oid.deref, offset 0x0
  Replaced concrete pointer with hash 0x21765CC5F3C8C0D5
  %struct.object_id.3* %oid
  0x21765CC5F3C8C0D5
Collected value for `flag`
  i32 %flag
  (ReadLSB w32 0x0 flag)
Collected value for `cb_data`
  Concrete pointer resolves to cb_data.deref, offset 0x0
  Replaced concrete pointer with hash 0x6E7C9DC1E05E6D9
  i8* %cb_data
  0x6E7C9DC1E05E6D9
Collected value for `is_tag`
  i32 0
  0x0
Collected value for `path_to_match`
  i8* null
  0x0
[0;1;35mKLEE: WARNING ONCE: calling external: skip_prefix(0x1137A25B0, 0x1137A45E0, 0x1137A27A0) at example.c:l80:c6
[0m[0;1;31mKLEE: ERROR: example.c:80: failed external call: skip_prefix
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
❌ Unable to execute all before program states

#### After values

Collected value for `path`
  Concrete pointer resolves to path.deref, offset 0x0
  Replaced concrete pointer with hash 0x448F4ECF717B6818
  i8* %path
  0x448F4ECF717B6818
Collected value for `oid`
  Concrete pointer resolves to oid.deref, offset 0x0
  Replaced concrete pointer with hash 0x21765CC5F3C8C0D5
  %struct.object_id.4* %oid
  0x21765CC5F3C8C0D5
Collected value for `flag`
  i32 %flag
  (ReadLSB w32 0x0 flag)
Collected value for `cb_data`
  Concrete pointer resolves to cb_data.deref, offset 0x0
  Replaced concrete pointer with hash 0x6E7C9DC1E05E6D9
  i8* %cb_data
  0x6E7C9DC1E05E6D9
Collected value for `is_tag`
  i32 0
  0x0
Collected value for `path_to_match`
  i8* null
  0x0
Collected value for `path_to_match`
  Concrete pointer resolves to path_to_match, offset 0x0
  Replaced concrete pointer with hash 0xB9AA4B967455F09A
  %path_to_match = alloca i8*
  0xB9AA4B967455F09A
[0;1;35mKLEE: WARNING ONCE: calling external: skip_prefix(0x1137A2690, 0x1137A4650, 0x1137A2960) at example.c:l80:c6
[0m[0;1;31mKLEE: ERROR: example.c:80: failed external call: skip_prefix
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
❌ Unable to execute all after program states

### Assignments

Filtering redundant before assignments: `found` (decl src ln 112)

Filtering redundant before assignments: `is_annotated` (decl src ln 77)

Filtering redundant before assignments: `is_tag` (decl src ln 75)

Filtering redundant before assignments: `item` (decl src ln 99)

Filtering redundant before assignments: `item` (decl src ln 113)

Filtering redundant before assignments: `prio` (decl src ln 77)

Filtering redundant after assignments: `is_annotated` (decl src ln 77)

Filtering redundant after assignments: `is_tag` (decl src ln 75)

Filtering redundant after assignments: `path_to_match` (decl src ln 78)

Filtering redundant after assignments: `prio` (decl src ln 77)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
❌ After `prio` (decl src ln 77) assn asm ln 58, prod ln 77.0, live ln 147, gen 1 has no symbolic value from %prio.0 = phi i32 [ 1, %if.then59 ], [ 2, %if.then50 ]

Computing generations: `cb_data` (decl src ln 73)
  asm ln 39, prod ln 73.0, live ln 75, gen 0
Computing generations: `flag` (decl src ln 73)
  asm ln 37, prod ln 73.0, live ln 75, gen 0
Computing generations: `found` (decl src ln 112)
  asm ln 158, prod ln 112.7, live ln 115, gen 0
  asm ln 191, prod ln 117.11, live ln 118, gen 1
Computing generations: `is_annotated` (decl src ln 77)
  asm ln 233, prod ln 131.16, live ln 77, gen 0
  asm ln 227, prod ln 128.18, live ln 129, gen 1
Computing generations: `is_tag` (decl src ln 75)
  asm ln 42, prod ln 75.6, live ln 78, gen 0
  asm ln 54, prod ln 81.10, live ln 82, gen 1
Computing generations: `item` (decl src ln 99)
  asm ln 106, prod ln 101.3, live ln 101, gen 0
  asm ln 145, prod ln 101.3, live ln 101, gen 1
Computing generations: `item` (decl src ln 113)
  asm ln 161, prod ln 115.3, live ln 115, gen 0
  asm ln 200, prod ln 115.3, live ln 115, gen 1
Computing generations: `oid` (decl src ln 72)
  asm ln 35, prod ln 72.0, live ln 75, gen 0
Computing generations: `path` (decl src ln 72)
  asm ln 33, prod ln 72.0, live ln 75, gen 0
Computing generations: `path_to_match` (decl src ln 78)
  asm ln 47, prod ln 78.14, live ln 80, gen 0
Computing generations: `prio` (decl src ln 77)
  asm ln 255, prod ln 145.8, live ln 77, gen 0
  asm ln 251, prod ln 143.8, live ln 143, gen 1
  asm ln 242, prod ln 141.8, live ln 141, gen 2
Building live ranges: `cb_data` (decl src ln 73)
  asm ln 39, prod ln 73.0, live ln 75, gen 0
    prod ln 73, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `flag` (decl src ln 73)
  asm ln 37, prod ln 73.0, live ln 75, gen 0
    prod ln 73, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `found` (decl src ln 112)
  asm ln 158, prod ln 112.7, live ln 115, gen 0
    prod ln 112, gen 0 →
    prod ln 117, gen 1
  asm ln 191, prod ln 117.11, live ln 118, gen 1
    prod ln 117, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `is_annotated` (decl src ln 77)
  asm ln 233, prod ln 131.16, live ln 77, gen 0
    prod ln 131, gen 0 →
    prod ln 128, gen 1
❌ Invalid range for `is_annotated` (decl src ln 77) from prod ln 131, gen 0 to prod ln 128, gen 1
  asm ln 227, prod ln 128.18, live ln 129, gen 1
    prod ln 128, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `is_tag` (decl src ln 75)
  asm ln 42, prod ln 75.6, live ln 78, gen 0
    prod ln 75, gen 0 →
    prod ln 81, gen 1
  asm ln 54, prod ln 81.10, live ln 82, gen 1
    prod ln 81, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `item` (decl src ln 99)
  asm ln 106, prod ln 101.3, live ln 101, gen 0
    prod ln 101, gen 0 →
    prod ln 101, gen 1
  asm ln 145, prod ln 101.3, live ln 101, gen 1
    prod ln 101, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `item` (decl src ln 113)
  asm ln 161, prod ln 115.3, live ln 115, gen 0
    prod ln 115, gen 0 →
    prod ln 115, gen 1
  asm ln 200, prod ln 115.3, live ln 115, gen 1
    prod ln 115, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `oid` (decl src ln 72)
  asm ln 35, prod ln 72.0, live ln 75, gen 0
    prod ln 72, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `path` (decl src ln 72)
  asm ln 33, prod ln 72.0, live ln 75, gen 0
    prod ln 72, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `path_to_match` (decl src ln 78)
  asm ln 47, prod ln 78.14, live ln 80, gen 0
    prod ln 78, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `prio` (decl src ln 77)
  asm ln 255, prod ln 145.8, live ln 77, gen 0
    prod ln 145, gen 0 →
    prod ln 143, gen 1
❌ Invalid range for `prio` (decl src ln 77) from prod ln 145, gen 0 to prod ln 143, gen 1
  asm ln 251, prod ln 143.8, live ln 143, gen 1
    prod ln 143, gen 1 →
    prod ln 141, gen 2
❌ Invalid range for `prio` (decl src ln 77) from prod ln 143, gen 1 to prod ln 141, gen 2
  asm ln 242, prod ln 141.8, live ln 141, gen 2
    prod ln 141, gen 2 →
    prod ln ∞, gen ∞

Computing generations: `cb_data` (decl src ln 73)
  asm ln 18, prod ln 73.0, live ln 76, gen 0
Computing generations: `flag` (decl src ln 73)
  asm ln 17, prod ln 73.0, live ln 76, gen 0
Computing generations: `is_annotated` (decl src ln 77)
  asm ln 42, prod ln 128.18, live ln 140, gen 0
  asm ln 43, prod ln 77.0, live ln 140, gen 1
  asm ln 48, prod ln 77.0, live ln 140, gen 2
  asm ln 49, prod ln 77.0, live ln 140, gen 3
Computing generations: `is_tag` (decl src ln 75)
  asm ln 19, prod ln 75.0, live ln 76, gen 0
  asm ln 33, prod ln 75.0, live ln 127, gen 1
Computing generations: `oid` (decl src ln 72)
  asm ln 16, prod ln 72.0, live ln 76, gen 0
Computing generations: `path` (decl src ln 72)
  asm ln 15, prod ln 72.0, live ln 76, gen 0
Computing generations: `path_to_match` (decl src ln 78)
  asm ln 25, prod ln 78.0, live ln 78, gen 0
  asm ln 27, prod ln 78.0, live ln 80, gen 1
Computing generations: `prio` (decl src ln 77)
  asm ln 53, prod ln 77.0, live ln 143, gen 0
  asm ln 58, prod ln 77.0, live ln 147, gen 1
Building live ranges: `cb_data` (decl src ln 73)
  asm ln 18, prod ln 73.0, live ln 76, gen 0
    prod ln 73, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `flag` (decl src ln 73)
  asm ln 17, prod ln 73.0, live ln 76, gen 0
    prod ln 73, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `is_annotated` (decl src ln 77)
  asm ln 42, prod ln 128.18, live ln 140, gen 0
    prod ln 128, gen 0 →
    prod ln 77, gen 1
❌ Invalid range for `is_annotated` (decl src ln 77) from prod ln 128, gen 0 to prod ln 77, gen 1
  asm ln 48, prod ln 77.0, live ln 140, gen 2
    prod ln 77, gen 2 →
    prod ln 77, gen 3
Building live ranges: `is_tag` (decl src ln 75)
  asm ln 19, prod ln 75.0, live ln 76, gen 0
    prod ln 75, gen 0 →
    prod ln 75, gen 1
  asm ln 33, prod ln 75.0, live ln 127, gen 1
    prod ln 75, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `oid` (decl src ln 72)
  asm ln 16, prod ln 72.0, live ln 76, gen 0
    prod ln 72, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `path` (decl src ln 72)
  asm ln 15, prod ln 72.0, live ln 76, gen 0
    prod ln 72, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `path_to_match` (decl src ln 78)
  asm ln 25, prod ln 78.0, live ln 78, gen 0
    prod ln 78, gen 0 →
    prod ln 78, gen 1
  asm ln 27, prod ln 78.0, live ln 80, gen 1
    prod ln 78, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `prio` (decl src ln 77)
  asm ln 53, prod ln 77.0, live ln 143, gen 0
    prod ln 77, gen 0 →
    prod ln 77, gen 1
  asm ln 58, prod ln 77.0, live ln 147, gen 1
    prod ln 77, gen 1 →
    prod ln ∞, gen ∞

❌ After live ranges for `found` (decl src ln 112) not found
Assertion failed: (afterRange.stop().line == UINT_MAX && "After live range terminates early"), function checkFunction, file main.cpp, line 1080.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-debug/bin/debug-info-check klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  debug-info-check         0x000000010fb5f587 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 39
1  debug-info-check         0x000000010fb5e3c8 llvm::sys::RunSignalHandlers() + 248
2  debug-info-check         0x000000010fb5fbd0 SignalHandler(int) + 288
3  libsystem_platform.dylib 0x00007ff819786c1d _sigtramp + 29
4  libsystem_platform.dylib 0x00007ff7b1e71650 _sigtramp + 18446744071971973712
5  libsystem_c.dylib        0x00007ff8196a5ca5 abort + 123
6  libsystem_c.dylib        0x00007ff8196a4fbe err + 0
7  debug-info-check         0x000000010e099796 checkFunction(llvm::LLVMContext&, llvm::StringRef, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&) + 5926
8  debug-info-check         0x000000010e09ae8e main + 1742
9  dyld                     0x00007ff819429310 start + 2432
./check.sh: line 6: 65584 Abort trap: 6           ${CHECK} ${O0_BC} ${O1_BC} ${CHECK_OPTS}
