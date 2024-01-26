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

## Function `get_name`

✅ Before and after function names match

### Variables

Before variable `path` (decl src ln 72)
Store to declared address of `path` (decl src ln 72), asm ln 33
  arg 0
  Added assignment asm ln 33, prod ln 72.0, live ln 75, gen 0
Before variable `oid` (decl src ln 72)
Store to declared address of `oid` (decl src ln 72), asm ln 35
  arg 1
  Added assignment asm ln 35, prod ln 72.0, live ln 75, gen 0
Before variable `flag` (decl src ln 73)
Store to declared address of `flag` (decl src ln 73), asm ln 37
  arg 2
  @dbg.declare without read users, removable
  Added assignment asm ln 37, prod ln 73.0, live ln 75, gen 0
Before variable `cb_data` (decl src ln 73)
Store to declared address of `cb_data` (decl src ln 73), asm ln 39
  arg 3
  @dbg.declare without read users, removable
  Added assignment asm ln 39, prod ln 73.0, live ln 75, gen 0
Before variable `is_tag` (decl src ln 75)
Store to declared address of `is_tag` (decl src ln 75), asm ln 54
  const i32 1
  Added assignment asm ln 54, prod ln 81.12, live ln 82, gen 0
Store to declared address of `is_tag` (decl src ln 75), asm ln 42
  const i32 0
  Added assignment asm ln 42, prod ln 75.7, live ln 78, gen 0
Before variable `peeled` (decl src ln 76)
Before variable `is_annotated` (decl src ln 77)
Store to declared address of `is_annotated` (decl src ln 77), asm ln 205
  const i32 0
🔔 Store to declared address of `is_annotated` (decl src ln 77): missing live ln, using produced ln + 1
  Added assignment asm ln 205, prod ln 131.18, live ln 132, gen 0
Store to declared address of `is_annotated` (decl src ln 77), asm ln 199
  %lnot.ext = zext i1 %lnot to i32, l128 c20, asm ln 198
  Added assignment asm ln 199, prod ln 128.20, live ln 129, gen 0
Before variable `prio` (decl src ln 77)
Store to declared address of `prio` (decl src ln 77), asm ln 227
  const i32 0
🔔 Store to declared address of `prio` (decl src ln 77): missing live ln, using produced ln + 1
  Added assignment asm ln 227, prod ln 145.10, live ln 146, gen 0
Store to declared address of `prio` (decl src ln 77), asm ln 223
  const i32 1
🔔 Store to declared address of `prio` (decl src ln 77): live ln too early, using produced ln + 1
  Added assignment asm ln 223, prod ln 143.10, live ln 144, gen 0
Store to declared address of `prio` (decl src ln 77), asm ln 214
  const i32 2
🔔 Store to declared address of `prio` (decl src ln 77): live ln too early, using produced ln + 1
  Added assignment asm ln 214, prod ln 141.10, live ln 142, gen 0
Before variable `path_to_match` (decl src ln 78)
Store to declared address of `path_to_match` (decl src ln 78), asm ln 47
  const i8* null
  Added assignment asm ln 47, prod ln 78.15, live ln 80, gen 0
Before variable `item` (decl src ln 99)
Store to declared address of `item` (decl src ln 99), asm ln 130
  %incdec.ptr = getelementptr inbounds %struct.string_list_item.1, %struct.string_list_item.1* %15, i32 1, l101 c5, asm ln 129
🔔 Store to declared address of `item` (decl src ln 99): live ln too early, using produced ln + 1
  Added assignment asm ln 130, prod ln 101.5, live ln 102, gen 0
Store to declared address of `item` (decl src ln 99), asm ln 98
  %7 = load %struct.string_list_item.1*, %struct.string_list_item.1** getelementptr inbounds (%struct.string_list.2, %struct.string_list.2* @exclude_patterns, i32 0, i32 0), l101 c5, asm ln 97
🔔 Store to declared address of `item` (decl src ln 99): live ln too early, using produced ln + 1
  Added assignment asm ln 98, prod ln 101.5, live ln 102, gen 0
Before variable `found` (decl src ln 112)
Store to declared address of `found` (decl src ln 112), asm ln 169
  const i32 1
  Added assignment asm ln 169, prod ln 117.15, live ln 118, gen 0
Store to declared address of `found` (decl src ln 112), asm ln 140
  const i32 0
  Added assignment asm ln 140, prod ln 112.9, live ln 115, gen 0
Before variable `item` (decl src ln 113)
Store to declared address of `item` (decl src ln 113), asm ln 175
  %incdec.ptr38 = getelementptr inbounds %struct.string_list_item.1, %struct.string_list_item.1* %25, i32 1, l115 c5, asm ln 174
🔔 Store to declared address of `item` (decl src ln 113): live ln too early, using produced ln + 1
  Added assignment asm ln 175, prod ln 115.5, live ln 116, gen 0
Store to declared address of `item` (decl src ln 113), asm ln 143
  %17 = load %struct.string_list_item.1*, %struct.string_list_item.1** getelementptr inbounds (%struct.string_list.2, %struct.string_list.2* @patterns, i32 0, i32 0), l115 c5, asm ln 142
🔔 Store to declared address of `item` (decl src ln 113): live ln too early, using produced ln + 1
  Added assignment asm ln 143, prod ln 115.5, live ln 116, gen 0
Computing generations: `cb_data` (decl src ln 73)
  asm ln 39, prod ln 73.0, live ln 75, gen 0
Computing generations: `flag` (decl src ln 73)
  asm ln 37, prod ln 73.0, live ln 75, gen 0
Computing generations: `found` (decl src ln 112)
  asm ln 140, prod ln 112.9, live ln 115, gen 0
  asm ln 169, prod ln 117.15, live ln 118, gen 1
Computing generations: `is_annotated` (decl src ln 77)
  asm ln 199, prod ln 128.20, live ln 129, gen 0
  asm ln 205, prod ln 131.18, live ln 132, gen 1
Computing generations: `is_tag` (decl src ln 75)
  asm ln 42, prod ln 75.7, live ln 78, gen 0
  asm ln 54, prod ln 81.12, live ln 82, gen 1
Computing generations: `item` (decl src ln 99)
  asm ln 98, prod ln 101.5, live ln 102, gen 0
  asm ln 130, prod ln 101.5, live ln 102, gen 1
Computing generations: `item` (decl src ln 113)
  asm ln 143, prod ln 115.5, live ln 116, gen 0
  asm ln 175, prod ln 115.5, live ln 116, gen 1
Computing generations: `oid` (decl src ln 72)
  asm ln 35, prod ln 72.0, live ln 75, gen 0
Computing generations: `path` (decl src ln 72)
  asm ln 33, prod ln 72.0, live ln 75, gen 0
Computing generations: `path_to_match` (decl src ln 78)
  asm ln 47, prod ln 78.15, live ln 80, gen 0
Computing generations: `prio` (decl src ln 77)
  asm ln 214, prod ln 141.10, live ln 142, gen 0
  asm ln 223, prod ln 143.10, live ln 144, gen 1
  asm ln 227, prod ln 145.10, live ln 146, gen 2

After variable `path` (decl src ln 72)
Value produced for `path` (decl src ln 72), asm ln 15
  arg 0
  Added assignment asm ln 15, prod ln 72.0, live ln 76, gen 0
After variable `oid` (decl src ln 72)
Value produced for `oid` (decl src ln 72), asm ln 16
  arg 1
  Added assignment asm ln 16, prod ln 72.0, live ln 76, gen 0
After variable `flag` (decl src ln 73)
Value produced for `flag` (decl src ln 73), asm ln 17
  arg 2
  Added assignment asm ln 17, prod ln 73.0, live ln 76, gen 0
After variable `cb_data` (decl src ln 73)
Value produced for `cb_data` (decl src ln 73), asm ln 18
  arg 3
  Added assignment asm ln 18, prod ln 73.0, live ln 76, gen 0
After variable `is_tag` (decl src ln 75)
Value produced for `is_tag` (decl src ln 75), asm ln 19
  const i32 0
  Added assignment asm ln 19, prod ln 75.0, live ln 76, gen 0
After variable `peeled` (decl src ln 76)
After variable `path_to_match` (decl src ln 78)
Value produced for `path_to_match` (decl src ln 78), asm ln 23
  const i8* null
🔔 Value produced for `path_to_match` (decl src ln 78): live ln too early, using produced ln + 1
  Added assignment asm ln 23, prod ln 78.0, live ln 79, gen 0
After variable `path_to_match` (decl src ln 78)
Value produced for `path_to_match` (decl src ln 78), asm ln 25
  %path_to_match = alloca i8*, asm ln 14
🔔 Value produced for `path_to_match` (decl src ln 78): missing produced ln, using decl ln
  Added assignment asm ln 25, prod ln 78.0, live ln 80, gen 0
Store to deref'd address of `path_to_match` (decl src ln 78), asm ln 24
  const i8* null
  Added assignment asm ln 24, prod ln 78.15, live ln 80, gen 0
^C