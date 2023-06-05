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
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
+++ OPT=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
+++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
++++ dirname ./../../vars.sh
+++ FILTER_DOT=./../../tools/filter-dot.js
++++ llvm release-clang-lldb-13.0.0 llc
++++ local build=release-clang-lldb-13.0.0
++++ local program=llc
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc
+++ LLC=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc
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

warning: Linking two modules of different data layouts: 'memset64_Debug+Asserts.bc' is 'e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128' whereas 'klee-out-O0/final.bc' is 'e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128'

warning: Linking two modules of different target triples: 'memset64_Debug+Asserts.bc' is 'x86_64-apple-macosx13.0.0' whereas 'klee-out-O0/final.bc' is 'x86_64-unknown-linux-gnu'

warning: Linking two modules of different data layouts: 'memset64_Debug+Asserts.bc' is 'e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128' whereas 'klee-out-O2/final.bc' is 'e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128'

warning: Linking two modules of different target triples: 'memset64_Debug+Asserts.bc' is 'x86_64-apple-macosx13.0.0' whereas 'klee-out-O2/final.bc' is 'x86_64-unknown-linux-gnu'

✅ Before and after function names match

### Variables

Before variable `foo` (decl src ln 6)
Before variable `bar` (decl src ln 7)
Before variable `i` (decl src ln 12)
Store to `i` (decl src ln 12), asm ln 44
  %inc = add nsw i32 %9, 1, l12 c31, asm ln 43
🔔 Store to `i` (decl src ln 12): live ln too early, using produced ln + 1
  Added assignment asm ln 44, prod ln 12.31, live ln 13, gen 0
Store to `i` (decl src ln 12), asm ln 23
  const i32 0
🔔 Store to `i` (decl src ln 12): live ln too early, using produced ln + 1
  Added assignment asm ln 23, prod ln 12.12, live ln 13, gen 0
Before variable `sum` (decl src ln 15)
Store to `sum` (decl src ln 15), asm ln 66
  %add9 = add i32 %13, %12, l17 c9, asm ln 65
🔔 Store to `sum` (decl src ln 15): live ln too early, using produced ln + 1
  Added assignment asm ln 66, prod ln 17.9, live ln 18, gen 0
Store to `sum` (decl src ln 15), asm ln 49
  const i32 0
  Added assignment asm ln 49, prod ln 15.16, live ln 16, gen 0
Before variable `j` (decl src ln 16)
Store to `j` (decl src ln 16), asm ln 69
  %inc11 = add nsw i32 %14, 1, l16 c31, asm ln 68
🔔 Store to `j` (decl src ln 16): live ln too early, using produced ln + 1
  Added assignment asm ln 69, prod ln 16.31, live ln 17, gen 0
Store to `j` (decl src ln 16), asm ln 51
  const i32 0
🔔 Store to `j` (decl src ln 16): live ln too early, using produced ln + 1
  Added assignment asm ln 51, prod ln 16.12, live ln 17, gen 0
Computing generations: `i` (decl src ln 12)
  asm ln 23, prod ln 12.12, live ln 13, gen 0
  asm ln 44, prod ln 12.31, live ln 13, gen 1
Computing generations: `sum` (decl src ln 15)
  asm ln 49, prod ln 15.16, live ln 16, gen 0
  asm ln 66, prod ln 17.9, live ln 18, gen 1
Computing generations: `j` (decl src ln 16)
  asm ln 51, prod ln 16.12, live ln 17, gen 0
  asm ln 69, prod ln 16.31, live ln 17, gen 1

After variable `foo` (decl src ln 6)
After variable `bar` (decl src ln 7)
After variable `i` (decl src ln 12)
@dbg.value mapping for `i` (decl src ln 12), asm ln 17
Value produced for `i` (decl src ln 12), asm ln 17
  const i32 0
🔔 Value produced for `i` (decl src ln 12): live ln too early, using produced ln + 1
  Added assignment asm ln 17, prod ln 12.12, live ln 13, gen 0
After variable `sum` (decl src ln 15)
After variable intrinsic with undef input, asm ln 650, ignoring undefined variable
  @dbg.value(i32 undef, !26), l15 c16
Computing generations: `i` (decl src ln 12)
  asm ln 17, prod ln 12.12, live ln 13, gen 0

🔔 5 before variables found, 4 after variables found, 1 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `i`
  i32 0
  (w32 0x0)
Collected value for `i`
  %inc = add nsw i32 %9, 1, l12 c31
  (w32 0x1)
Collected value for `sum`
  i32 0
  (w32 0x0)
Collected value for `j`
  i32 0
  (w32 0x0)
Collected value for `sum`
  %add9 = add i32 %13, %12, l17 c9
  (Add w32 (Concat w32 (w8 0xAB)
                      (Concat w24 (w8 0xAB)
                                  (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref))))
          (Concat w32 (w8 0xAB)
                      (Concat w24 (w8 0xAB)
                                  (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref_1)))))
Collected value for `j`
  %inc11 = add nsw i32 %14, 1, l16 c31
  (w32 0x1)

#### After values

Collected value for `i`
  i32 0
  (w32 0x0)

### Assignments

Filtering redundant before assignments: `i` (decl src ln 12)

Filtering redundant before assignments: `sum` (decl src ln 15)

Filtering redundant before assignments: `j` (decl src ln 16)

Computing generations: `i` (decl src ln 12)
  asm ln 23, prod ln 12.12, live ln 13, gen 0
  asm ln 44, prod ln 12.31, live ln 13, gen 1
Computing generations: `sum` (decl src ln 15)
  asm ln 49, prod ln 15.16, live ln 16, gen 0
  asm ln 66, prod ln 17.9, live ln 18, gen 1
Computing generations: `j` (decl src ln 16)
  asm ln 51, prod ln 16.12, live ln 17, gen 0
  asm ln 69, prod ln 16.31, live ln 17, gen 1
Building live ranges: `i` (decl src ln 12)
  asm ln 23, prod ln 12.12, live ln 13, gen 0
    live ln 13, gen 0 →
    live ln 13, gen 1
  asm ln 44, prod ln 12.31, live ln 13, gen 1
    live ln 13, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `sum` (decl src ln 15)
  asm ln 49, prod ln 15.16, live ln 16, gen 0
    live ln 16, gen 0 →
    live ln 18, gen 1
  asm ln 66, prod ln 17.9, live ln 18, gen 1
    live ln 18, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `j` (decl src ln 16)
  asm ln 51, prod ln 16.12, live ln 17, gen 0
    live ln 17, gen 0 →
    live ln 17, gen 1
  asm ln 69, prod ln 16.31, live ln 17, gen 1
    live ln 17, gen 1 →
    live ln ∞, gen ∞

Computing generations: `i` (decl src ln 12)
  asm ln 17, prod ln 12.12, live ln 13, gen 0
Building live ranges: `i` (decl src ln 12)
  asm ln 17, prod ln 12.12, live ln 13, gen 0
    live ln 13, gen 0 →
    live ln ∞, gen ∞

🔔 Before live ranges for `foo` (decl src ln 6) not found (variable likely undefined)
🔔 Before live ranges for `bar` (decl src ln 7) not found (variable likely undefined)
❌ After live ranges for `sum` (decl src ln 15) not found
❌ After live ranges for `j` (decl src ln 16) not found
❌ Before live range coverage
  Covered:   1
  Uncovered: 2
  Undefined: 2
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `i` (decl src ln 12) from
  assn asm ln 23, prod ln 12.12, live ln 13, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 17, prod ln 12.12, live ln 13, gen 0
  i32 0
  (w32 0x0)

🔔 After `i` (decl src ln 12) assn asm ln 17, prod ln 12.12, live ln 13, gen 0 coordinates don't match before assn asm ln 44, prod ln 12.31, live ln 13, gen 1
Checking equivalence of `i` (decl src ln 12) from
  assn asm ln 44, prod ln 12.31, live ln 13, gen 1
  %inc = add nsw i32 %9, 1, l12 c31
  (w32 0x1)
and
  assn asm ln 17, prod ln 12.12, live ln 13, gen 0
  i32 0
  (w32 0x0)
❌ After `i` (decl src ln 12) assn asm ln 17, prod ln 12.12, live ln 13, gen 0 symbolic value doesn't match before assn asm ln 44, prod ln 12.31, live ln 13, gen 1

❌ After live range for `j` (decl src ln 16) not found

❌ After live range for `j` (decl src ln 16) not found

❌ After live range for `sum` (decl src ln 15) not found

❌ After live range for `sum` (decl src ln 15) not found

❌ Before symbolic values checked against after
  Matching:    1
  Mismatched:  5
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `i` (decl src ln 12) from
  assn asm ln 17, prod ln 12.12, live ln 13, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 23, prod ln 12.12, live ln 13, gen 0
  i32 0
  (w32 0x0)

✅ After symbolic values checked against before
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed