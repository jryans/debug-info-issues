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
+++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --tsv'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --tsv'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --tsv'
++ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --tsv
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variables

Before variable `x` (decl src ln 4)
Store to declared address of `x` (decl src ln 4), asm ln 20
  %call = call i32 @modify(i32 %2), l7 c7, asm ln 19
  Added assignment asm ln 20, prod ln 7.7, live ln 8, enc None
Store to declared address of `x` (decl src ln 4), asm ln 17
  %inc1 = add nsw i32 %1, 1, l6 c4, asm ln 16
  Added assignment asm ln 17, prod ln 6.4, live ln 7, enc None
Store to declared address of `x` (decl src ln 4), asm ln 14
  %inc = add nsw i32 %0, 1, l5 c4, asm ln 13
  Added assignment asm ln 14, prod ln 5.4, live ln 6, enc None
Store to declared address of `x` (decl src ln 4), asm ln 11
  const i32 1
  Added assignment asm ln 11, prod ln 4.7, live ln 5, enc None

After variable `x` (decl src ln 4)
Value produced for `x` (decl src ln 4), asm ln 9
  const i32 1
  Added assignment asm ln 9, prod ln 4.0, live ln 7, enc None
After variable `x` (decl src ln 4)
Value produced for `x` (decl src ln 4), asm ln 10
  const i32 2
🔔 Value produced for `x` (decl src ln 4): missing produced ln, using decl ln
  Added assignment asm ln 10, prod ln 4.0, live ln 7, enc None
After variable `x` (decl src ln 4)
Value produced for `x` (decl src ln 4), asm ln 11
  const i32 3
🔔 Value produced for `x` (decl src ln 4): missing produced ln, using decl ln
  Added assignment asm ln 11, prod ln 4.0, live ln 7, enc None
After variable `x` (decl src ln 4)
Value produced for `x` (decl src ln 4), asm ln 13
  %call = call i32 @modify(i32 3) #3, l7 c7, asm ln 12
  Added assignment asm ln 13, prod ln 7.7, live ln 8, enc None

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `x`
  i32 1
  (w32 0x1)
Collected value for `x`
  %inc = add nsw i32 %0, 1, l5 c4
  (w32 0x2)
Collected value for `x`
  %inc1 = add nsw i32 %1, 1, l6 c4
  (w32 0x3)
Collected value for `x`
  %call = call i32 @modify(i32 %2), l7 c7
  (ReadLSB w32 (w32 0x0) modify.return)

#### After values

Collected value for `x`
  i32 1
  (w32 0x1)
Collected value for `x`
  i32 2
  (w32 0x2)
Collected value for `x`
  i32 3
  (w32 0x3)
Collected value for `x`
  %call = call i32 @modify(i32 3) #3, l7 c7
  (ReadLSB w32 (w32 0x0) modify.return)

### Assignments

Filtering redundant before assignments: `x` (decl src ln 4)

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 14, prod ln 5.4, live ln 6, enc 1
  %inc = add nsw i32 %0, 1, l5 c4
  (w32 0x2)
and
  assn asm ln 11, prod ln 4.7, live ln 5, enc 0
  i32 1
  (w32 0x1)

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 17, prod ln 6.4, live ln 7, enc 2
  %inc1 = add nsw i32 %1, 1, l6 c4
  (w32 0x3)
and
  assn asm ln 14, prod ln 5.4, live ln 6, enc 1
  %inc = add nsw i32 %0, 1, l5 c4
  (w32 0x2)

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 20, prod ln 7.7, live ln 8, enc 3
  %call = call i32 @modify(i32 %2), l7 c7
  (ReadLSB w32 (w32 0x0) modify.return)
and
  assn asm ln 17, prod ln 6.4, live ln 7, enc 2
  %inc1 = add nsw i32 %1, 1, l6 c4
  (w32 0x3)
Query to parse
array modify.return[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) modify.return)
     (w32 0x3)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) modify.return)
     (w32 0x3))

Filtering redundant after assignments: `x` (decl src ln 4)

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 10, prod ln 4.0, live ln 7, enc 1
  i32 2
  (w32 0x2)
and
  assn asm ln 9, prod ln 4.0, live ln 7, enc 0
  i32 1
  (w32 0x1)

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 11, prod ln 4.0, live ln 7, enc 2
  i32 3
  (w32 0x3)
and
  assn asm ln 10, prod ln 4.0, live ln 7, enc 1
  i32 2
  (w32 0x2)

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 13, prod ln 7.7, live ln 8, enc 3
  %call = call i32 @modify(i32 3) #3, l7 c7
  (ReadLSB w32 (w32 0x0) modify.return)
and
  assn asm ln 11, prod ln 4.0, live ln 7, enc 2
  i32 3
  (w32 0x3)
Query to parse
array modify.return[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) modify.return)
     (w32 0x3)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) modify.return)
     (w32 0x3))

Collating encountered assignments: `x` (decl src ln 4)
  asm ln 11, prod ln 4.7, live ln 5, enc 0
  asm ln 14, prod ln 5.4, live ln 6, enc 1
  asm ln 17, prod ln 6.4, live ln 7, enc 2
  asm ln 20, prod ln 7.7, live ln 8, enc 3

Collating encountered assignments: `x` (decl src ln 4)
  asm ln 9, prod ln 4.0, live ln 7, enc 0
  asm ln 10, prod ln 4.0, live ln 7, enc 1
  asm ln 11, prod ln 4.0, live ln 7, enc 2
  asm ln 13, prod ln 7.7, live ln 8, enc 3


#### Check before using after as reference

❌ After `x` (decl src ln 4) assn asm ln 9, prod ln 4.0, live ln 7, enc 0 coordinates don't match before assn asm ln 11, prod ln 4.7, live ln 5, enc 0
Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 11, prod ln 4.7, live ln 5, enc 0
  i32 1
  (w32 0x1)
and
  assn asm ln 9, prod ln 4.0, live ln 7, enc 0
  i32 1
  (w32 0x1)
✅ After `x` (decl src ln 4) assn asm ln 9, prod ln 4.0, live ln 7, enc 0 symbolic value matches before assn asm ln 11, prod ln 4.7, live ln 5, enc 0

❌ After `x` (decl src ln 4) assn asm ln 10, prod ln 4.0, live ln 7, enc 1 coordinates don't match before assn asm ln 14, prod ln 5.4, live ln 6, enc 1
Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 14, prod ln 5.4, live ln 6, enc 1
  %inc = add nsw i32 %0, 1, l5 c4
  (w32 0x2)
and
  assn asm ln 10, prod ln 4.0, live ln 7, enc 1
  i32 2
  (w32 0x2)
✅ After `x` (decl src ln 4) assn asm ln 10, prod ln 4.0, live ln 7, enc 1 symbolic value matches before assn asm ln 14, prod ln 5.4, live ln 6, enc 1

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 17, prod ln 6.4, live ln 7, enc 2
  %inc1 = add nsw i32 %1, 1, l6 c4
  (w32 0x3)
and
  assn asm ln 11, prod ln 4.0, live ln 7, enc 2
  i32 3
  (w32 0x3)
✅ After `x` (decl src ln 4) assn asm ln 11, prod ln 4.0, live ln 7, enc 2 symbolic value matches before assn asm ln 17, prod ln 6.4, live ln 7, enc 2

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 20, prod ln 7.7, live ln 8, enc 3
  %call = call i32 @modify(i32 %2), l7 c7
  (ReadLSB w32 (w32 0x0) modify.return)
and
  assn asm ln 13, prod ln 7.7, live ln 8, enc 3
  %call = call i32 @modify(i32 3) #3, l7 c7
  (ReadLSB w32 (w32 0x0) modify.return)
Query to parse
array modify.return[4] : w32 -> w8 = symbolic
array modify.return[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) modify.return)
     (ReadLSB w32 (w32 0x0) modify.return)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) modify.return)
     N0)
✅ After `x` (decl src ln 4) assn asm ln 13, prod ln 7.7, live ln 8, enc 3 symbolic value matches before assn asm ln 20, prod ln 7.7, live ln 8, enc 3

❌ Before `x` assns checked using after as reference
Variable:            x
  Assignments:       4
  Matching Coords:   2
  Matching Value:    4
Errors:
  Mismatched Coords: 2
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

#### Check after using before as reference

❌ Before `x` (decl src ln 4) assn asm ln 11, prod ln 4.7, live ln 5, enc 0 coordinates don't match after assn asm ln 9, prod ln 4.0, live ln 7, enc 0
Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 9, prod ln 4.0, live ln 7, enc 0
  i32 1
  (w32 0x1)
and
  assn asm ln 11, prod ln 4.7, live ln 5, enc 0
  i32 1
  (w32 0x1)
✅ Before `x` (decl src ln 4) assn asm ln 11, prod ln 4.7, live ln 5, enc 0 symbolic value matches after assn asm ln 9, prod ln 4.0, live ln 7, enc 0

❌ Before `x` (decl src ln 4) assn asm ln 14, prod ln 5.4, live ln 6, enc 1 coordinates don't match after assn asm ln 10, prod ln 4.0, live ln 7, enc 1
Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 10, prod ln 4.0, live ln 7, enc 1
  i32 2
  (w32 0x2)
and
  assn asm ln 14, prod ln 5.4, live ln 6, enc 1
  %inc = add nsw i32 %0, 1, l5 c4
  (w32 0x2)
✅ Before `x` (decl src ln 4) assn asm ln 14, prod ln 5.4, live ln 6, enc 1 symbolic value matches after assn asm ln 10, prod ln 4.0, live ln 7, enc 1

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 11, prod ln 4.0, live ln 7, enc 2
  i32 3
  (w32 0x3)
and
  assn asm ln 17, prod ln 6.4, live ln 7, enc 2
  %inc1 = add nsw i32 %1, 1, l6 c4
  (w32 0x3)
✅ Before `x` (decl src ln 4) assn asm ln 17, prod ln 6.4, live ln 7, enc 2 symbolic value matches after assn asm ln 11, prod ln 4.0, live ln 7, enc 2

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 13, prod ln 7.7, live ln 8, enc 3
  %call = call i32 @modify(i32 3) #3, l7 c7
  (ReadLSB w32 (w32 0x0) modify.return)
and
  assn asm ln 20, prod ln 7.7, live ln 8, enc 3
  %call = call i32 @modify(i32 %2), l7 c7
  (ReadLSB w32 (w32 0x0) modify.return)
Query to parse
array modify.return[4] : w32 -> w8 = symbolic
array modify.return[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) modify.return)
     (ReadLSB w32 (w32 0x0) modify.return)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) modify.return)
     N0)
✅ Before `x` (decl src ln 4) assn asm ln 20, prod ln 7.7, live ln 8, enc 3 symbolic value matches after assn asm ln 13, prod ln 7.7, live ln 8, enc 3

❌ After `x` assns checked using before as reference
Variable:            x
  Assignments:       4
  Matching Coords:   2
  Matching Value:    4
Errors:
  Mismatched Coords: 2
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

## Summary

❌ Some consistency checks failed
