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
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-forks=4 --tsv'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-forks=4 --tsv'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-forks=4 --tsv'
++ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-forks=4 --tsv
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variables

Before variable `n` (decl src ln 3)
Store to declared address of `n` (decl src ln 3), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 3.0, live ln 4, enc None
Before variable `r` (decl src ln 4)
Store to declared address of `r` (decl src ln 4), asm ln 34
  %call = call i32 @modify(i32 %3), l7 c11, asm ln 33
🔔 Store to declared address of `r` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 34, prod ln 7.11, live ln 8, enc None
Store to declared address of `r` (decl src ln 4), asm ln 15
  const i32 0
  Added assignment asm ln 15, prod ln 4.7, live ln 5, enc None
Before variable `i` (decl src ln 5)
Store to declared address of `i` (decl src ln 5), asm ln 40
  %inc = add nsw i32 %4, 1, l5 c27, asm ln 39
🔔 Store to declared address of `i` (decl src ln 5): live ln too early, using produced ln + 1
  Added assignment asm ln 40, prod ln 5.27, live ln 6, enc None
Store to declared address of `i` (decl src ln 5), asm ln 17
  const i32 0
🔔 Store to declared address of `i` (decl src ln 5): live ln too early, using produced ln + 1
  Added assignment asm ln 17, prod ln 5.12, live ln 6, enc None

After variable `n` (decl src ln 3)
Value produced for `n` (decl src ln 3), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 3.0, live ln 5, enc None
After variable `r` (decl src ln 4)
Value produced for `r` (decl src ln 4), asm ln 10
  const i32 0
  Added assignment asm ln 10, prod ln 4.0, live ln 5, enc None
After variable `i` (decl src ln 5)
Value produced for `i` (decl src ln 5), asm ln 11
  const i32 0
🔔 Value produced for `i` (decl src ln 5): live ln too early, using produced ln + 1
  Added assignment asm ln 11, prod ln 5.0, live ln 6, enc None
After variable `r` (decl src ln 4)
Value produced for `r` (decl src ln 4), asm ln 29
  %call = call i32 @modify(i32 64) #3, l7 c11, asm ln 28
🔔 Value produced for `r` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 29, prod ln 7.11, live ln 8, enc None
After variable `i` (decl src ln 5)
Value produced for `i` (decl src ln 5), asm ln 36
  %inc = add nuw nsw i32 %i.09, 1, l5 c27, asm ln 35
🔔 Value produced for `i` (decl src ln 5): live ln too early, using produced ln + 1
  Added assignment asm ln 36, prod ln 5.27, live ln 6, enc None
After variable `i` (decl src ln 5)
Value produced for `i` (decl src ln 5), asm ln 22
  %i.09 = phi i32 [ %inc, %for.inc ], [ 0, %entry ], asm ln 20
  Added assignment asm ln 22, prod ln 5.27, live ln 6, enc None
After variable `r` (decl src ln 4)
Value produced for `r` (decl src ln 4), asm ln 23
  %r.08 = phi i32 [ %r.1, %for.inc ], [ 0, %entry ], asm ln 21
🔔 Value produced for `r` (decl src ln 4): missing produced ln, using decl ln
  Added assignment asm ln 23, prod ln 4.0, live ln 6, enc None
After variable `r` (decl src ln 4)
Value produced for `r` (decl src ln 4), asm ln 34
  %r.1 = phi i32 [ %call, %if.then ], [ %r.08, %for.body ], asm ln 33
🔔 Value produced for `r` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 34, prod ln 7.11, live ln 8, enc None

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `r`
  i32 0
  (w32 0x0)
Collected value for `i`
  i32 0
  (w32 0x0)
Collected value for `i`
  %inc = add nsw i32 %4, 1, l5 c27
  (w32 0x1)
[0;1;35mKLEE: WARNING ONCE: skipping fork (max-forks reached)
[0m
🔔 Unable to execute all before program states

🔔 Unable to execute all before instructions

#### After values

Collected value for `n`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `r`
  i32 0
  (w32 0x0)
Collected value for `i`
  i32 0
  (w32 0x0)
Collected value for `i`
  %i.09 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  Block: 1
  (w32 0x0)
Collected value for `r`
  %r.08 = phi i32 [ %r.1, %for.inc ], [ 0, %entry ]
  Block: 1
  (w32 0x0)
Collected value for `r`
  %r.1 = phi i32 [ %call, %if.then ], [ %r.08, %for.body ]
  Block: 1
  (w32 0x0)
Collected value for `i`
  %inc = add nuw nsw i32 %i.09, 1, l5 c27
  (w32 0x1)

🔔 Unable to execute all after program states

🔔 Unable to execute all after instructions

### Assignments

Filtering redundant before assignments: `r` (decl src ln 4)

Expected 1 symbolic value(s), got 0
❌ Before `r` (decl src ln 4) assn asm ln 34, prod ln 7.11, live ln 8, enc None has no symbolic value from %call = call i32 @modify(i32 %3), l7 c11

Filtering redundant before assignments: `i` (decl src ln 5)

Checking equivalence of `i` (decl src ln 5) from
  assn asm ln 40, prod ln 5.27, live ln 6, enc 1
  %inc = add nsw i32 %4, 1, l5 c27
  (w32 0x1)
and
  assn asm ln 17, prod ln 5.12, live ln 6, enc 0
  i32 0
  (w32 0x0)

Filtering redundant after assignments: `r` (decl src ln 4)

Expected 1 symbolic value(s), got 0
❌ After `r` (decl src ln 4) assn asm ln 29, prod ln 7.11, live ln 8, enc None has no symbolic value from %call = call i32 @modify(i32 64) #3, l7 c11

Checking equivalence of `r` (decl src ln 4) from
  assn asm ln 23, prod ln 4.0, live ln 6, enc 1
  %r.08 = phi i32 [ %r.1, %for.inc ], [ 0, %entry ]
  (w32 0x0)
and
  assn asm ln 10, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 23, prod ln 4.0, live ln 6, enc 1

Checking equivalence of `r` (decl src ln 4) from
  assn asm ln 34, prod ln 7.11, live ln 8, enc 2
  %r.1 = phi i32 [ %call, %if.then ], [ %r.08, %for.body ]
  (w32 0x0)
and
  assn asm ln 10, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 34, prod ln 7.11, live ln 8, enc 2

Filtering redundant after assignments: `i` (decl src ln 5)

Checking equivalence of `i` (decl src ln 5) from
  assn asm ln 22, prod ln 5.27, live ln 6, enc 1
  %i.09 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  (w32 0x0)
and
  assn asm ln 11, prod ln 5.0, live ln 6, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 22, prod ln 5.27, live ln 6, enc 1

Checking equivalence of `i` (decl src ln 5) from
  assn asm ln 36, prod ln 5.27, live ln 6, enc 2
  %inc = add nuw nsw i32 %i.09, 1, l5 c27
  (w32 0x1)
and
  assn asm ln 11, prod ln 5.0, live ln 6, enc 0
  i32 0
  (w32 0x0)

Collating encountered before assignments: `n` (decl src ln 3)
  asm ln 12, prod ln 3.0, live ln 4, enc 0
Collating encountered before assignments: `r` (decl src ln 4)
❌ Assignment asm ln 34, prod ln 7.11, live ln 8, enc None for `r` (decl src ln 4) was not encountered during execution
  asm ln 15, prod ln 4.7, live ln 5, enc 0
Collating encountered before assignments: `i` (decl src ln 5)
  asm ln 17, prod ln 5.12, live ln 6, enc 0
  asm ln 40, prod ln 5.27, live ln 6, enc 1

Collating encountered after assignments: `n` (decl src ln 3)
  asm ln 9, prod ln 3.0, live ln 5, enc 0
Collating encountered after assignments: `r` (decl src ln 4)
❌ Assignment asm ln 29, prod ln 7.11, live ln 8, enc None for `r` (decl src ln 4) was not encountered during execution
  asm ln 10, prod ln 4.0, live ln 5, enc 0
Collating encountered after assignments: `i` (decl src ln 5)
  asm ln 11, prod ln 5.0, live ln 6, enc 0
  asm ln 36, prod ln 5.27, live ln 6, enc 1

#### Check before using after as reference

Checking equivalence of `i` (decl src ln 5) from
  assn asm ln 17, prod ln 5.12, live ln 6, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 11, prod ln 5.0, live ln 6, enc 0
  i32 0
  (w32 0x0)
✅ After `i` (decl src ln 5) assn asm ln 11, prod ln 5.0, live ln 6, enc 0 symbolic value matches before assn asm ln 17, prod ln 5.12, live ln 6, enc 0

Checking equivalence of `i` (decl src ln 5) from
  assn asm ln 40, prod ln 5.27, live ln 6, enc 1
  %inc = add nsw i32 %4, 1, l5 c27
  (w32 0x1)
and
  assn asm ln 36, prod ln 5.27, live ln 6, enc 1
  %inc = add nuw nsw i32 %i.09, 1, l5 c27
  (w32 0x1)
✅ After `i` (decl src ln 5) assn asm ln 36, prod ln 5.27, live ln 6, enc 1 symbolic value matches before assn asm ln 40, prod ln 5.27, live ln 6, enc 1

✅ Before `i` assns checked using after as reference
Variable:            i
  Assignments:       2
  Matching Coords:   2
  Matching Value:    2
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

❌ After `n` (decl src ln 3) assn asm ln 9, prod ln 3.0, live ln 5, enc 0 coordinates don't match before assn asm ln 12, prod ln 3.0, live ln 4, enc 0
Checking equivalence of `n` (decl src ln 3) from
  assn asm ln 12, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
and
  assn asm ln 9, prod ln 3.0, live ln 5, enc 0
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
✅ After `n` (decl src ln 3) assn asm ln 9, prod ln 3.0, live ln 5, enc 0 symbolic value matches before assn asm ln 12, prod ln 3.0, live ln 4, enc 0

❌ Before `n` assns checked using after as reference
Variable:            n
  Assignments:       1
  Matching Coords:   0
  Matching Value:    1
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

❌ Before assn asm ln 34, prod ln 7.11, live ln 8, enc None for `r` (decl src ln 4) was not encountered during execution

Checking equivalence of `r` (decl src ln 4) from
  assn asm ln 15, prod ln 4.7, live ln 5, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 10, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
✅ After `r` (decl src ln 4) assn asm ln 10, prod ln 4.0, live ln 5, enc 0 symbolic value matches before assn asm ln 15, prod ln 4.7, live ln 5, enc 0

❌ Before `r` assns checked using after as reference
Variable:            r
  Assignments:       2
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   1
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

#### Check after using before as reference

Checking equivalence of `i` (decl src ln 5) from
  assn asm ln 11, prod ln 5.0, live ln 6, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 17, prod ln 5.12, live ln 6, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 5) assn asm ln 17, prod ln 5.12, live ln 6, enc 0 symbolic value matches after assn asm ln 11, prod ln 5.0, live ln 6, enc 0

Checking equivalence of `i` (decl src ln 5) from
  assn asm ln 36, prod ln 5.27, live ln 6, enc 1
  %inc = add nuw nsw i32 %i.09, 1, l5 c27
  (w32 0x1)
and
  assn asm ln 40, prod ln 5.27, live ln 6, enc 1
  %inc = add nsw i32 %4, 1, l5 c27
  (w32 0x1)
✅ Before `i` (decl src ln 5) assn asm ln 40, prod ln 5.27, live ln 6, enc 1 symbolic value matches after assn asm ln 36, prod ln 5.27, live ln 6, enc 1

✅ After `i` assns checked using before as reference
Variable:            i
  Assignments:       2
  Matching Coords:   2
  Matching Value:    2
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

❌ Before `n` (decl src ln 3) assn asm ln 12, prod ln 3.0, live ln 4, enc 0 coordinates don't match after assn asm ln 9, prod ln 3.0, live ln 5, enc 0
Checking equivalence of `n` (decl src ln 3) from
  assn asm ln 9, prod ln 3.0, live ln 5, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
and
  assn asm ln 12, prod ln 3.0, live ln 4, enc 0
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
✅ Before `n` (decl src ln 3) assn asm ln 12, prod ln 3.0, live ln 4, enc 0 symbolic value matches after assn asm ln 9, prod ln 3.0, live ln 5, enc 0

❌ After `n` assns checked using before as reference
Variable:            n
  Assignments:       1
  Matching Coords:   0
  Matching Value:    1
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

❌ After assn asm ln 29, prod ln 7.11, live ln 8, enc None for `r` (decl src ln 4) was not encountered during execution

Checking equivalence of `r` (decl src ln 4) from
  assn asm ln 10, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 15, prod ln 4.7, live ln 5, enc 0
  i32 0
  (w32 0x0)
✅ Before `r` (decl src ln 4) assn asm ln 15, prod ln 4.7, live ln 5, enc 0 symbolic value matches after assn asm ln 10, prod ln 4.0, live ln 5, enc 0

❌ After `r` assns checked using before as reference
Variable:            r
  Assignments:       2
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   1
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

## Summary

❌ Some consistency checks failed
