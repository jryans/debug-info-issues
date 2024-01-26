^D++ dirname ./check-fix.sh
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
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2-fixed/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O2-fixed/final.bc for debug info consistency…

## Functions

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `charlie`

✅ Before and after function names match

### Variables

Before variable `delta` (decl src ln 10)
Store to declared address of `delta` (decl src ln 10), asm ln 15
  const i32 0
  @dbg.declare without read users, removable
  Added assignment asm ln 15, prod ln 10.7, live ln 11, gen 0
Computing generations: `delta` (decl src ln 10)
  asm ln 15, prod ln 10.7, live ln 11, gen 0

After variable `delta` (decl src ln 10)
Value produced for `delta` (decl src ln 10), asm ln 11
  const i32 0
  Added assignment asm ln 11, prod ln 10.7, live ln 11, gen 0
Computing generations: `delta` (decl src ln 10)
  asm ln 11, prod ln 10.7, live ln 11, gen 0

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `delta`
  i32 0
  (w32 0x0)

#### After values

Collected value for `delta`
  i32 0
  (w32 0x0)

### Assignments

Computing generations: `delta` (decl src ln 10)
  asm ln 15, prod ln 10.7, live ln 11, gen 0
Building live ranges: `delta` (decl src ln 10)
  asm ln 15, prod ln 10.7, live ln 11, gen 0
    live ln 11, gen 0 →
    live ln ∞, gen ∞

Computing generations: `delta` (decl src ln 10)
  asm ln 11, prod ln 10.7, live ln 11, gen 0
Building live ranges: `delta` (decl src ln 10)
  asm ln 11, prod ln 10.7, live ln 11, gen 0
    live ln 11, gen 0 →
    live ln ∞, gen ∞

✅ Before live range coverage
  Covered:   1
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `delta` (decl src ln 10) from
  assn asm ln 15, prod ln 10.7, live ln 11, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 11, prod ln 10.7, live ln 11, gen 0
  i32 0
  (w32 0x0)
✅ After `delta` (decl src ln 10) assn asm ln 11, prod ln 10.7, live ln 11, gen 0 symbolic value matches before assn asm ln 15, prod ln 10.7, live ln 11, gen 0

✅ Before symbolic values checked against after
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `delta` (decl src ln 10) from
  assn asm ln 11, prod ln 10.7, live ln 11, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 15, prod ln 10.7, live ln 11, gen 0
  i32 0
  (w32 0x0)
✅ Before `delta` (decl src ln 10) assn asm ln 15, prod ln 10.7, live ln 11, gen 0 symbolic value matches after assn asm ln 11, prod ln 10.7, live ln 11, gen 0

✅ After symbolic values checked against before
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Function `echo`

✅ Before and after function names match

### Variables

Before variable `foxtrot` (decl src ln 14)
Before variable `golf` (decl src ln 17)
Store to declared address of `golf` (decl src ln 17), asm ln 46
  %call = call i32 @bravo(), l17 c16, asm ln 45
  Added assignment asm ln 46, prod ln 17.16, live ln 18, gen 0
Computing generations: `golf` (decl src ln 17)
  asm ln 46, prod ln 17.16, live ln 18, gen 0

After variable `foxtrot` (decl src ln 14)
Value produced for `foxtrot` (decl src ln 14), asm ln 22
  %foxtrot.sroa.0.0.extract.trunc = trunc i64 %foxtrot.coerce to i32, asm ln 21
  Added assignment asm ln 22, prod ln 14.22, live ln 16, gen 0
Computing generations: `foxtrot` (decl src ln 14)
  asm ln 22, prod ln 14.22, live ln 16, gen 0

🔔 2 before variables found, 1 after variables found, 1 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `golf`
  %call = call i32 @bravo(), l17 c16
  (ReadLSB w32 (w32 0x0) bravo.return)

#### After values

Collected value for `foxtrot`
  %foxtrot.sroa.0.0.extract.trunc = trunc i64 %foxtrot.coerce to i32
  (ReadLSB w32 (w32 0x0) foxtrot.coerce)

### Assignments

Computing generations: `golf` (decl src ln 17)
  asm ln 46, prod ln 17.16, live ln 18, gen 0
Building live ranges: `golf` (decl src ln 17)
  asm ln 46, prod ln 17.16, live ln 18, gen 0
    live ln 18, gen 0 →
    live ln ∞, gen ∞

Computing generations: `foxtrot` (decl src ln 14)
  asm ln 22, prod ln 14.22, live ln 16, gen 0
Building live ranges: `foxtrot` (decl src ln 14)
  asm ln 22, prod ln 14.22, live ln 16, gen 0
    live ln 16, gen 0 →
    live ln ∞, gen ∞

🔔 Before live ranges for `foxtrot` (decl src ln 14) not found (variable likely undefined)
❌ After live ranges for `golf` (decl src ln 17) not found
❌ Before live range coverage
  Covered:   0
  Uncovered: 1
  Undefined: 1
  Unused:    0
  Removable: 0

#### Check before against after

❌ After live range for `golf` (decl src ln 17) not found

❌ Before symbolic values checked against after
  Matching:    0
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

❌ Before live range for `foxtrot` (decl src ln 14) not found

❌ After symbolic values checked against before
  Matching:    0
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
