^D++ dirname ./check-issue.sh
+ SCRIPT_DIR=.
+ source ./../vars.sh
++ set -eux
+++ dirname ./../vars.sh
++ SCRIPT_DIR=./..
++ source ./../../vars.sh
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
++++ dirname ./../../vars.sh
+++ FILTER_DOT=./../../tools/filter-dot.js
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
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O2/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variables

Before variable `c` (decl src ln 3)
Store to declared address of `c` (decl src ln 3), asm ln 19
  %conv = sext i8 %dec to i32, l3 c11, asm ln 18
🔔 Store to declared address of `c` (decl src ln 3): live ln too early, using produced ln + 1
  Added assignment asm ln 19, prod ln 3.11, live ln 4, gen 0
Before variable `l_1240` (decl src ln 3)
Store to declared address of `l_1240` (decl src ln 3), asm ln 23
  %1 = load i32, i32* %c, l4 c12, asm ln 22
  @dbg.declare without read users, removable
  Added assignment asm ln 23, prod ln 4.12, live ln 5, gen 0
Store to declared address of `l_1240` (decl src ln 3), asm ln 21
  const i32 -8
  @dbg.declare without read users, removable
  Added assignment asm ln 21, prod ln 3.16, live ln 4, gen 0
Computing generations: `c` (decl src ln 3)
  asm ln 19, prod ln 3.11, live ln 4, gen 0
Computing generations: `l_1240` (decl src ln 3)
  asm ln 21, prod ln 3.16, live ln 4, gen 0
  asm ln 23, prod ln 4.12, live ln 5, gen 1

After variable `l_1240` (decl src ln 3)
Value produced for `l_1240` (decl src ln 3), asm ln 15
  const i32 -8
  Added assignment asm ln 15, prod ln 3.0, live ln 5, gen 0
Computing generations: `l_1240` (decl src ln 3)
  asm ln 15, prod ln 3.0, live ln 5, gen 0

🔔 2 before variables found, 1 after variables found, 1 mismatched

### Symbolic values

#### Before values

Collected value for `c`
  %conv = sext i8 %dec to i32, l3 c11
  (w32 0xFFFFFFFF)
Collected value for `l_1240`
  i32 -8
  (w32 0xFFFFFFF8)
Collected value for `l_1240`
  %1 = load i32, i32* %c, l4 c12
  (w32 0xFFFFFFFF)

#### After values

Collected value for `l_1240`
  i32 -8
  (w32 0xFFFFFFF8)

### Assignments

Filtering redundant before assignments: `l_1240` (decl src ln 3)

Computing generations: `c` (decl src ln 3)
  asm ln 19, prod ln 3.11, live ln 4, gen 0
Computing generations: `l_1240` (decl src ln 3)
  asm ln 21, prod ln 3.16, live ln 4, gen 0
  asm ln 23, prod ln 4.12, live ln 5, gen 1
Building live ranges: `c` (decl src ln 3)
  asm ln 19, prod ln 3.11, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `l_1240` (decl src ln 3)
  asm ln 21, prod ln 3.16, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln 5, gen 1
  asm ln 23, prod ln 4.12, live ln 5, gen 1
    live ln 5, gen 1 →
    live ln ∞, gen ∞

Computing generations: `l_1240` (decl src ln 3)
  asm ln 15, prod ln 3.0, live ln 5, gen 0
Building live ranges: `l_1240` (decl src ln 3)
  asm ln 15, prod ln 3.0, live ln 5, gen 0
    live ln 5, gen 0 →
    live ln ∞, gen ∞

❌ After live ranges for `c` (decl src ln 3) not found
❌ Live ranges for `l_1240` (decl src ln 3) not fully covered: live ln 4, gen 0 < live ln 5, gen 0
❌ Before live range coverage
  Covered:   0
  Uncovered: 2
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

❌ After live range for `c` (decl src ln 3) not found

🔔 After `l_1240` (decl src ln 3) assn asm ln 15, prod ln 3.0, live ln 5, gen 0 coordinates don't match before assn asm ln 21, prod ln 3.16, live ln 4, gen 0
Checking equivalence of `l_1240` (decl src ln 3) from
  assn asm ln 21, prod ln 3.16, live ln 4, gen 0
  i32 -8
  (w32 0xFFFFFFF8)
and
  assn asm ln 15, prod ln 3.0, live ln 5, gen 0
  i32 -8
  (w32 0xFFFFFFF8)
✅ After `l_1240` (decl src ln 3) assn asm ln 15, prod ln 3.0, live ln 5, gen 0 symbolic value matches before assn asm ln 21, prod ln 3.16, live ln 4, gen 0

🔔 After `l_1240` (decl src ln 3) assn asm ln 15, prod ln 3.0, live ln 5, gen 0 coordinates don't match before assn asm ln 23, prod ln 4.12, live ln 5, gen 1
Checking equivalence of `l_1240` (decl src ln 3) from
  assn asm ln 23, prod ln 4.12, live ln 5, gen 1
  %1 = load i32, i32* %c, l4 c12
  (w32 0xFFFFFFFF)
and
  assn asm ln 15, prod ln 3.0, live ln 5, gen 0
  i32 -8
  (w32 0xFFFFFFF8)
❌ After `l_1240` (decl src ln 3) assn asm ln 15, prod ln 3.0, live ln 5, gen 0 symbolic value doesn't match before assn asm ln 23, prod ln 4.12, live ln 5, gen 1

❌ Before symbolic values checked against after
  Matching:    1
  Mismatched:  2
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

🔔 Before `l_1240` (decl src ln 3) assn asm ln 21, prod ln 3.16, live ln 4, gen 0 coordinates don't match after assn asm ln 15, prod ln 3.0, live ln 5, gen 0
Checking equivalence of `l_1240` (decl src ln 3) from
  assn asm ln 15, prod ln 3.0, live ln 5, gen 0
  i32 -8
  (w32 0xFFFFFFF8)
and
  assn asm ln 21, prod ln 3.16, live ln 4, gen 0
  i32 -8
  (w32 0xFFFFFFF8)
✅ Before `l_1240` (decl src ln 3) assn asm ln 21, prod ln 3.16, live ln 4, gen 0 symbolic value matches after assn asm ln 15, prod ln 3.0, live ln 5, gen 0

✅ After symbolic values checked against before
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
