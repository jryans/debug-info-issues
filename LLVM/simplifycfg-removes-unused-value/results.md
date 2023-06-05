^D++ dirname ./build.sh
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
+ mkdir -p klee-out-O0
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
+ mkdir -p klee-out-O2
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2/final.bc example-O2.ll
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

✅ Before and after function names match

### Variables

Before variable `foo` (decl src ln 2)
Store to `foo` (decl src ln 2), asm ln 13
  const i32 4
  Added assignment asm ln 13, prod ln 2.16, live ln 4, gen 0
Before variable `beards` (decl src ln 4)
Store to `beards` (decl src ln 4), asm ln 28
  const i32 4
  Added assignment asm ln 28, prod ln 11.12, live ln 12, gen 0
Store to `beards` (decl src ln 4), asm ln 23
  const i32 8
  Added assignment asm ln 23, prod ln 8.12, live ln 9, gen 0
Store to `beards` (decl src ln 4), asm ln 15
  const i32 0
  Added assignment asm ln 15, prod ln 4.7, live ln 5, gen 0
Before variable `birds` (decl src ln 5)
Store to `birds` (decl src ln 5), asm ln 29
  const i32 6
🔔 Store to `birds` (decl src ln 5): missing live ln, using produced ln + 1
  @dbg.declare without read users, removable
  Added assignment asm ln 29, prod ln 12.11, live ln 13, gen 0
Store to `birds` (decl src ln 5), asm ln 24
  const i32 3
  @dbg.declare without read users, removable
  Added assignment asm ln 24, prod ln 9.11, live ln 10, gen 0
Store to `birds` (decl src ln 5), asm ln 17
  const i32 0
  @dbg.declare without read users, removable
  Added assignment asm ln 17, prod ln 5.7, live ln 7, gen 0
Computing generations: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 4, gen 0
Computing generations: `beards` (decl src ln 4)
  asm ln 15, prod ln 4.7, live ln 5, gen 0
  asm ln 23, prod ln 8.12, live ln 9, gen 1
  asm ln 28, prod ln 11.12, live ln 12, gen 2
Computing generations: `birds` (decl src ln 5)
  asm ln 17, prod ln 5.7, live ln 7, gen 0
  asm ln 24, prod ln 9.11, live ln 10, gen 1
  asm ln 29, prod ln 12.11, live ln 13, gen 2

After variable `foo` (decl src ln 2)
Store to `foo` (decl src ln 2), asm ln 12
  const i32 4
  Added assignment asm ln 12, prod ln 2.16, live ln 7, gen 0
After variable `beards` (decl src ln 4)
@dbg.value mapping for `beards` (decl src ln 4), asm ln 13
Value produced for `beards` (decl src ln 4), asm ln 13
  const i32 0
  Added assignment asm ln 13, prod ln 4.7, live ln 7, gen 0
After variable `birds` (decl src ln 5)
@dbg.value mapping for `birds` (decl src ln 5), asm ln 14
Value produced for `birds` (decl src ln 5), asm ln 14
  const i32 0
  Added assignment asm ln 14, prod ln 5.7, live ln 7, gen 0
After variable `beards` (decl src ln 4)
@dbg.value mapping for `beards` (decl src ln 4), asm ln 18
Value produced for `beards` (decl src ln 4), asm ln 18
  %. = select i1 %cmp, i32 8, i32 4, l10 c3, asm ln 17
  Added assignment asm ln 18, prod ln 10.7, live ln 15, gen 0
Computing generations: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 7, gen 0
Computing generations: `beards` (decl src ln 4)
  asm ln 13, prod ln 4.7, live ln 7, gen 0
  asm ln 18, prod ln 10.7, live ln 15, gen 1
Computing generations: `birds` (decl src ln 5)
  asm ln 14, prod ln 5.7, live ln 7, gen 0

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `foo`
  i32 4
  (w32 0x4)
Collected value for `beards`
  i32 0
  (w32 0x0)
Collected value for `birds`
  i32 0
  (w32 0x0)
Collected value for `beards`
  i32 4
  (w32 0x4)
Collected value for `beards`
  i32 8
  (w32 0x8)
Collected value for `birds`
  i32 6
  (w32 0x6)
Collected value for `birds`
  i32 3
  (w32 0x3)

#### After values

Collected value for `foo`
  i32 4
  (w32 0x4)
Collected value for `beards`
  i32 0
  (w32 0x0)
Collected value for `birds`
  i32 0
  (w32 0x0)
Collected value for `beards`
  %. = select i1 %cmp, i32 8, i32 4, l10 c3
  (Select w32 (Eq (w32 0x4)
                 (ReadLSB w32 (w32 0x0) foo))
             (w32 0x8)
             (w32 0x4))

### Assignments

Filtering redundant before assignments: `beards` (decl src ln 4)

Filtering redundant before assignments: `birds` (decl src ln 5)

Filtering redundant after assignments: `beards` (decl src ln 4)

Computing generations: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 4, gen 0
Computing generations: `beards` (decl src ln 4)
  asm ln 15, prod ln 4.7, live ln 5, gen 0
  asm ln 23, prod ln 8.12, live ln 9, gen 1
  asm ln 28, prod ln 11.12, live ln 12, gen 2
Computing generations: `birds` (decl src ln 5)
  asm ln 17, prod ln 5.7, live ln 7, gen 0
  asm ln 24, prod ln 9.11, live ln 10, gen 1
  asm ln 29, prod ln 12.11, live ln 13, gen 2
Building live ranges: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `beards` (decl src ln 4)
  asm ln 15, prod ln 4.7, live ln 5, gen 0
    live ln 5, gen 0 →
    live ln 9, gen 1
  asm ln 23, prod ln 8.12, live ln 9, gen 1
    live ln 9, gen 1 →
    live ln 12, gen 2
  asm ln 28, prod ln 11.12, live ln 12, gen 2
    live ln 12, gen 2 →
    live ln ∞, gen ∞
Building live ranges: `birds` (decl src ln 5)
  asm ln 17, prod ln 5.7, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln 10, gen 1
  asm ln 24, prod ln 9.11, live ln 10, gen 1
    live ln 10, gen 1 →
    live ln 13, gen 2
  asm ln 29, prod ln 12.11, live ln 13, gen 2
    live ln 13, gen 2 →
    live ln ∞, gen ∞

Computing generations: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 7, gen 0
Computing generations: `beards` (decl src ln 4)
  asm ln 13, prod ln 4.7, live ln 7, gen 0
  asm ln 18, prod ln 10.7, live ln 15, gen 1
Computing generations: `birds` (decl src ln 5)
  asm ln 14, prod ln 5.7, live ln 7, gen 0
Building live ranges: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `beards` (decl src ln 4)
  asm ln 13, prod ln 4.7, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln 15, gen 1
  asm ln 18, prod ln 10.7, live ln 15, gen 1
    live ln 15, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `birds` (decl src ln 5)
  asm ln 14, prod ln 5.7, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞

❌ Live ranges for `foo` (decl src ln 2) not fully covered: live ln 4, gen 0 < live ln 7, gen 0
❌ Live ranges for `beards` (decl src ln 4) not fully covered: live ln 5, gen 0 < live ln 7, gen 0
❌ Before live range coverage
  Covered:   1
  Uncovered: 2
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

🔔 After `beards` (decl src ln 4) assn asm ln 13, prod ln 4.7, live ln 7, gen 0 coordinates don't match before assn asm ln 15, prod ln 4.7, live ln 5, gen 0
Checking equivalence of `beards` (decl src ln 4) from
  assn asm ln 15, prod ln 4.7, live ln 5, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 13, prod ln 4.7, live ln 7, gen 0
  i32 0
  (w32 0x0)

🔔 After `beards` (decl src ln 4) assn asm ln 13, prod ln 4.7, live ln 7, gen 0 coordinates don't match before assn asm ln 23, prod ln 8.12, live ln 9, gen 1
Checking equivalence of `beards` (decl src ln 4) from
  assn asm ln 23, prod ln 8.12, live ln 9, gen 1
  i32 8
  (w32 0x8)
and
  assn asm ln 13, prod ln 4.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
❌ After `beards` (decl src ln 4) assn asm ln 13, prod ln 4.7, live ln 7, gen 0 symbolic value doesn't match before assn asm ln 23, prod ln 8.12, live ln 9, gen 1

🔔 After `beards` (decl src ln 4) assn asm ln 13, prod ln 4.7, live ln 7, gen 0 coordinates don't match before assn asm ln 28, prod ln 11.12, live ln 12, gen 2
Checking equivalence of `beards` (decl src ln 4) from
  assn asm ln 28, prod ln 11.12, live ln 12, gen 2
  i32 4
  (w32 0x4)
and
  assn asm ln 13, prod ln 4.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
❌ After `beards` (decl src ln 4) assn asm ln 13, prod ln 4.7, live ln 7, gen 0 symbolic value doesn't match before assn asm ln 28, prod ln 11.12, live ln 12, gen 2

Checking equivalence of `birds` (decl src ln 5) from
  assn asm ln 17, prod ln 5.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 14, prod ln 5.7, live ln 7, gen 0
  i32 0
  (w32 0x0)

🔔 After `birds` (decl src ln 5) assn asm ln 14, prod ln 5.7, live ln 7, gen 0 coordinates don't match before assn asm ln 24, prod ln 9.11, live ln 10, gen 1
Checking equivalence of `birds` (decl src ln 5) from
  assn asm ln 24, prod ln 9.11, live ln 10, gen 1
  i32 3
  (w32 0x3)
and
  assn asm ln 14, prod ln 5.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
❌ After `birds` (decl src ln 5) assn asm ln 14, prod ln 5.7, live ln 7, gen 0 symbolic value doesn't match before assn asm ln 24, prod ln 9.11, live ln 10, gen 1

🔔 After `birds` (decl src ln 5) assn asm ln 14, prod ln 5.7, live ln 7, gen 0 coordinates don't match before assn asm ln 29, prod ln 12.11, live ln 13, gen 2
Checking equivalence of `birds` (decl src ln 5) from
  assn asm ln 29, prod ln 12.11, live ln 13, gen 2
  i32 6
  (w32 0x6)
and
  assn asm ln 14, prod ln 5.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
❌ After `birds` (decl src ln 5) assn asm ln 14, prod ln 5.7, live ln 7, gen 0 symbolic value doesn't match before assn asm ln 29, prod ln 12.11, live ln 13, gen 2

🔔 After `foo` (decl src ln 2) assn asm ln 12, prod ln 2.16, live ln 7, gen 0 coordinates don't match before assn asm ln 13, prod ln 2.16, live ln 4, gen 0
Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 13, prod ln 2.16, live ln 4, gen 0
  i32 4
  (w32 0x4)
and
  assn asm ln 12, prod ln 2.16, live ln 7, gen 0
  i32 4
  (w32 0x4)

❌ Before symbolic values checked against after
  Matching:    3
  Mismatched:  4
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

🔔 Before `beards` (decl src ln 4) assn asm ln 15, prod ln 4.7, live ln 5, gen 0 coordinates don't match after assn asm ln 13, prod ln 4.7, live ln 7, gen 0
Checking equivalence of `beards` (decl src ln 4) from
  assn asm ln 13, prod ln 4.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 15, prod ln 4.7, live ln 5, gen 0
  i32 0
  (w32 0x0)

🔔 Before `beards` (decl src ln 4) assn asm ln 28, prod ln 11.12, live ln 12, gen 2 coordinates don't match after assn asm ln 18, prod ln 10.7, live ln 15, gen 1
Checking equivalence of `beards` (decl src ln 4) from
  assn asm ln 18, prod ln 10.7, live ln 15, gen 1
  %. = select i1 %cmp, i32 8, i32 4, l10 c3
  (Select w32 (Eq (w32 0x4)
                 (ReadLSB w32 (w32 0x0) foo))
             (w32 0x8)
             (w32 0x4))
and
  assn asm ln 28, prod ln 11.12, live ln 12, gen 2
  i32 4
  (w32 0x4)
Query to parse
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (Select w32 (Eq (w32 0x4)
                     (ReadLSB w32 (w32 0x0) foo))
                 (w32 0x8)
                 (w32 0x4))
     (w32 0x4)))
Parsed query
(Eq (Select w32 (Eq (w32 0x4)
                     (ReadLSB w32 (w32 0x0) foo))
                 (w32 0x8)
                 (w32 0x4))
     (w32 0x4))
❌ Before `beards` (decl src ln 4) assn asm ln 28, prod ln 11.12, live ln 12, gen 2 symbolic value doesn't match after assn asm ln 18, prod ln 10.7, live ln 15, gen 1

Checking equivalence of `birds` (decl src ln 5) from
  assn asm ln 14, prod ln 5.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 17, prod ln 5.7, live ln 7, gen 0
  i32 0
  (w32 0x0)

🔔 Before `foo` (decl src ln 2) assn asm ln 13, prod ln 2.16, live ln 4, gen 0 coordinates don't match after assn asm ln 12, prod ln 2.16, live ln 7, gen 0
Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 12, prod ln 2.16, live ln 7, gen 0
  i32 4
  (w32 0x4)
and
  assn asm ln 13, prod ln 2.16, live ln 4, gen 0
  i32 4
  (w32 0x4)

❌ After symbolic values checked against before
  Matching:    3
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
