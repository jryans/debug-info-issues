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
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc -O0 -o example-O2.o --filetype obj example-O2.ll
+ mkdir -p klee-out-O2-fixed
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2-fixed/final.bc example-O2-fixed.ll
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc -O0 -o example-O2-fixed.o --filetype obj example-O2-fixed.ll
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
Store to declared address of `foo` (decl src ln 2), asm ln 16
  const i32 4
  Added assignment asm ln 16, prod ln 2.16, live ln 3, gen 0
Before variable `read` (decl src ln 3)
Store to declared address of `read` (decl src ln 3), asm ln 19
  %0 = load volatile i32, i32* %foo, l3 c14, asm ln 18
  Added assignment asm ln 19, prod ln 3.14, live ln 4, gen 0
Before variable `read1` (decl src ln 4)
Store to declared address of `read1` (decl src ln 4), asm ln 22
  %1 = load volatile i32, i32* %foo, l4 c15, asm ln 21
  Added assignment asm ln 22, prod ln 4.15, live ln 6, gen 0
Before variable `result` (decl src ln 6)
Store to declared address of `result` (decl src ln 6), asm ln 38
  %sub = sub nsw i32 %4, 2, l10 c20, asm ln 37
🔔 Store to declared address of `result` (decl src ln 6): missing live ln, using produced ln + 1
  Added assignment asm ln 38, prod ln 10.20, live ln 11, gen 0
Store to declared address of `result` (decl src ln 6), asm ln 32
  %add = add nsw i32 %3, 2, l8 c20, asm ln 31
  Added assignment asm ln 32, prod ln 8.20, live ln 9, gen 0
Store to declared address of `result` (decl src ln 6), asm ln 24
  const i32 0
  Added assignment asm ln 24, prod ln 6.7, live ln 7, gen 0
Computing generations: `foo` (decl src ln 2)
  asm ln 16, prod ln 2.16, live ln 3, gen 0
Computing generations: `read` (decl src ln 3)
  asm ln 19, prod ln 3.14, live ln 4, gen 0
Computing generations: `read1` (decl src ln 4)
  asm ln 22, prod ln 4.15, live ln 6, gen 0
Computing generations: `result` (decl src ln 6)
  asm ln 24, prod ln 6.7, live ln 7, gen 0
  asm ln 32, prod ln 8.20, live ln 9, gen 1
  asm ln 38, prod ln 10.20, live ln 11, gen 2

After variable `foo` (decl src ln 2)
Store to declared address of `foo` (decl src ln 2), asm ln 12
  const i32 4
  Added assignment asm ln 12, prod ln 2.16, live ln 3, gen 0
After variable `read` (decl src ln 3)
Value produced for `read` (decl src ln 3), asm ln 14
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c14, asm ln 13
  Added assignment asm ln 14, prod ln 3.14, live ln 4, gen 0
After variable `read1` (decl src ln 4)
Value produced for `read1` (decl src ln 4), asm ln 16
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15, asm ln 15
  Added assignment asm ln 16, prod ln 4.15, live ln 7, gen 0
After variable `result` (decl src ln 6)
Value produced for `result` (decl src ln 6), asm ln 17
  const i32 0
  Added assignment asm ln 17, prod ln 6.7, live ln 7, gen 0
After variable `result` (decl src ln 6)
Value produced for `result` (decl src ln 6), asm ln 19
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15, asm ln 15
  Added assignment asm ln 19, prod ln 6.15, live ln 7, gen 0
After variable `result` (decl src ln 6)
Value produced for `result` (decl src ln 6), asm ln 20
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15, asm ln 15
  Producers match last assignment, skipping
After variable `result` (decl src ln 6)
Value produced for `result` (decl src ln 6), asm ln 23
  %result.0 = add i32 %result.0.v, %foo.0.foo.0.4, l7 c7, asm ln 22
  Added assignment asm ln 23, prod ln 7.7, live ln 13, gen 0
Computing generations: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, gen 0
Computing generations: `read` (decl src ln 3)
  asm ln 14, prod ln 3.14, live ln 4, gen 0
Computing generations: `read1` (decl src ln 4)
  asm ln 16, prod ln 4.15, live ln 7, gen 0
Computing generations: `result` (decl src ln 6)
  asm ln 17, prod ln 6.7, live ln 7, gen 0
  asm ln 19, prod ln 6.15, live ln 7, gen 1
  asm ln 23, prod ln 7.7, live ln 13, gen 2

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `foo`
  i32 4
  (w32 0x4)
Collected value for `read`
  %0 = load volatile i32, i32* %foo, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read1`
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `result`
  i32 0
  (w32 0x0)
Collected value for `result`
  %add = add nsw i32 %3, 2, l8 c20
  (Add w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `result`
  %sub = sub nsw i32 %4, 2, l10 c20
  (Add w32 (w32 0xFFFFFFFE)
          (ReadLSB w32 (w32 0x0) foo_1))

#### After values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `foo`
  i32 4
  (w32 0x4)
Collected value for `read`
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read1`
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `result`
  i32 0
  (w32 0x0)
Collected value for `result`
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `result`
  %result.0 = add i32 %result.0.v, %foo.0.foo.0.4, l7 c7
  (Add w32 (Select w32 (Eq (w32 0x4)
                          (ReadLSB w32 (w32 0x0) foo))
                      (w32 0x2)
                      (w32 0xFFFFFFFE))
          (ReadLSB w32 (w32 0x0) foo_1))

### Assignments

Filtering redundant before assignments: `result` (decl src ln 6)

Filtering redundant after assignments: `result` (decl src ln 6)

Computing generations: `foo` (decl src ln 2)
  asm ln 16, prod ln 2.16, live ln 3, gen 0
Computing generations: `read` (decl src ln 3)
  asm ln 19, prod ln 3.14, live ln 4, gen 0
Computing generations: `read1` (decl src ln 4)
  asm ln 22, prod ln 4.15, live ln 6, gen 0
Computing generations: `result` (decl src ln 6)
  asm ln 24, prod ln 6.7, live ln 7, gen 0
  asm ln 32, prod ln 8.20, live ln 9, gen 1
  asm ln 38, prod ln 10.20, live ln 11, gen 2
Building live ranges: `foo` (decl src ln 2)
  asm ln 16, prod ln 2.16, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `read` (decl src ln 3)
  asm ln 19, prod ln 3.14, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `read1` (decl src ln 4)
  asm ln 22, prod ln 4.15, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `result` (decl src ln 6)
  asm ln 24, prod ln 6.7, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln 9, gen 1
  asm ln 32, prod ln 8.20, live ln 9, gen 1
    live ln 9, gen 1 →
    live ln 11, gen 2
  asm ln 38, prod ln 10.20, live ln 11, gen 2
    live ln 11, gen 2 →
    live ln ∞, gen ∞

Computing generations: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, gen 0
Computing generations: `read` (decl src ln 3)
  asm ln 14, prod ln 3.14, live ln 4, gen 0
Computing generations: `read1` (decl src ln 4)
  asm ln 16, prod ln 4.15, live ln 7, gen 0
Computing generations: `result` (decl src ln 6)
  asm ln 17, prod ln 6.7, live ln 7, gen 0
  asm ln 19, prod ln 6.15, live ln 7, gen 1
  asm ln 23, prod ln 7.7, live ln 13, gen 2
Building live ranges: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `read` (decl src ln 3)
  asm ln 14, prod ln 3.14, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `read1` (decl src ln 4)
  asm ln 16, prod ln 4.15, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `result` (decl src ln 6)
  asm ln 17, prod ln 6.7, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln 7, gen 1
  asm ln 19, prod ln 6.15, live ln 7, gen 1
    live ln 7, gen 1 →
    live ln 13, gen 2
  asm ln 23, prod ln 7.7, live ln 13, gen 2
    live ln 13, gen 2 →
    live ln ∞, gen ∞

❌ Live ranges for `read1` (decl src ln 4) not fully covered: live ln 6, gen 0 < live ln 7, gen 0
❌ Before live range coverage
  Covered:   3
  Uncovered: 1
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 16, prod ln 2.16, live ln 3, gen 0
  i32 4
  (w32 0x4)
and
  assn asm ln 12, prod ln 2.16, live ln 3, gen 0
  i32 4
  (w32 0x4)
✅ After `foo` (decl src ln 2) assn asm ln 12, prod ln 2.16, live ln 3, gen 0 symbolic value matches before assn asm ln 16, prod ln 2.16, live ln 3, gen 0

Checking equivalence of `read` (decl src ln 3) from
  assn asm ln 19, prod ln 3.14, live ln 4, gen 0
  %0 = load volatile i32, i32* %foo, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 14, prod ln 3.14, live ln 4, gen 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
✅ After `read` (decl src ln 3) assn asm ln 14, prod ln 3.14, live ln 4, gen 0 symbolic value matches before assn asm ln 19, prod ln 3.14, live ln 4, gen 0

🔔 After `read1` (decl src ln 4) assn asm ln 16, prod ln 4.15, live ln 7, gen 0 coordinates don't match before assn asm ln 22, prod ln 4.15, live ln 6, gen 0
Checking equivalence of `read1` (decl src ln 4) from
  assn asm ln 22, prod ln 4.15, live ln 6, gen 0
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 16, prod ln 4.15, live ln 7, gen 0
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo_1)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
✅ After `read1` (decl src ln 4) assn asm ln 16, prod ln 4.15, live ln 7, gen 0 symbolic value matches before assn asm ln 22, prod ln 4.15, live ln 6, gen 0

Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 24, prod ln 6.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 17, prod ln 6.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
✅ After `result` (decl src ln 6) assn asm ln 17, prod ln 6.7, live ln 7, gen 0 symbolic value matches before assn asm ln 24, prod ln 6.7, live ln 7, gen 0

🔔 After `result` (decl src ln 6) assn asm ln 19, prod ln 6.15, live ln 7, gen 1 coordinates don't match before assn asm ln 32, prod ln 8.20, live ln 9, gen 1
Pushed initial value onto stack: (ReadLSB w32 (w32 0x0) foo_1)
plus_uconst: (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
Result: (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 32, prod ln 8.20, live ln 9, gen 1
  %add = add nsw i32 %3, 2, l8 c20
  (Add w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 19, prod ln 6.15, live ln 7, gen 1
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) foo_1))
     (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
              (Extract w32 0 (w64 0x2)))))
Parsed query
(Eq (Add w32 (w32 0x2)
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     (Add w32 N0 (Extract w32 0 (w64 0x2))))
✅ After `result` (decl src ln 6) assn asm ln 19, prod ln 6.15, live ln 7, gen 1 symbolic value matches before assn asm ln 32, prod ln 8.20, live ln 9, gen 1

🔔 After `result` (decl src ln 6) assn asm ln 19, prod ln 6.15, live ln 7, gen 1 coordinates don't match before assn asm ln 38, prod ln 10.20, live ln 11, gen 2
Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 38, prod ln 10.20, live ln 11, gen 2
  %sub = sub nsw i32 %4, 2, l10 c20
  (Add w32 (w32 0xFFFFFFFE)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 19, prod ln 6.15, live ln 7, gen 1
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0xFFFFFFFE)
              (ReadLSB w32 (w32 0x0) foo_1))
     (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
              (Extract w32 0 (w64 0x2)))))
Parsed query
(Eq (Add w32 (w32 0xFFFFFFFE)
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     (Add w32 N0 (Extract w32 0 (w64 0x2))))
❌ After `result` (decl src ln 6) assn asm ln 19, prod ln 6.15, live ln 7, gen 1 symbolic value doesn't match before assn asm ln 38, prod ln 10.20, live ln 11, gen 2

❌ Before symbolic values checked against after
  Matching:    5
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 12, prod ln 2.16, live ln 3, gen 0
  i32 4
  (w32 0x4)
and
  assn asm ln 16, prod ln 2.16, live ln 3, gen 0
  i32 4
  (w32 0x4)
✅ Before `foo` (decl src ln 2) assn asm ln 16, prod ln 2.16, live ln 3, gen 0 symbolic value matches after assn asm ln 12, prod ln 2.16, live ln 3, gen 0

Checking equivalence of `read` (decl src ln 3) from
  assn asm ln 14, prod ln 3.14, live ln 4, gen 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 19, prod ln 3.14, live ln 4, gen 0
  %0 = load volatile i32, i32* %foo, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
✅ Before `read` (decl src ln 3) assn asm ln 19, prod ln 3.14, live ln 4, gen 0 symbolic value matches after assn asm ln 14, prod ln 3.14, live ln 4, gen 0

🔔 Before `read1` (decl src ln 4) assn asm ln 22, prod ln 4.15, live ln 6, gen 0 coordinates don't match after assn asm ln 16, prod ln 4.15, live ln 7, gen 0
Checking equivalence of `read1` (decl src ln 4) from
  assn asm ln 16, prod ln 4.15, live ln 7, gen 0
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 22, prod ln 4.15, live ln 6, gen 0
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo_1)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
✅ Before `read1` (decl src ln 4) assn asm ln 22, prod ln 4.15, live ln 6, gen 0 symbolic value matches after assn asm ln 16, prod ln 4.15, live ln 7, gen 0

Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 17, prod ln 6.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 24, prod ln 6.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
✅ Before `result` (decl src ln 6) assn asm ln 24, prod ln 6.7, live ln 7, gen 0 symbolic value matches after assn asm ln 17, prod ln 6.7, live ln 7, gen 0

🔔 Before `result` (decl src ln 6) assn asm ln 24, prod ln 6.7, live ln 7, gen 0 coordinates don't match after assn asm ln 19, prod ln 6.15, live ln 7, gen 1
Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 19, prod ln 6.15, live ln 7, gen 1
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
and
  assn asm ln 24, prod ln 6.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
              (Extract w32 0 (w64 0x2)))
     (w32 0x0)))
Parsed query
(Eq (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
              (Extract w32 0 (w64 0x2)))
     (w32 0x0))
❌ Before `result` (decl src ln 6) assn asm ln 24, prod ln 6.7, live ln 7, gen 0 symbolic value doesn't match after assn asm ln 19, prod ln 6.15, live ln 7, gen 1

🔔 Before `result` (decl src ln 6) assn asm ln 38, prod ln 10.20, live ln 11, gen 2 coordinates don't match after assn asm ln 23, prod ln 7.7, live ln 13, gen 2
Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 23, prod ln 7.7, live ln 13, gen 2
  %result.0 = add i32 %result.0.v, %foo.0.foo.0.4, l7 c7
  (Add w32 (Select w32 (Eq (w32 0x4)
                          (ReadLSB w32 (w32 0x0) foo))
                      (w32 0x2)
                      (w32 0xFFFFFFFE))
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 38, prod ln 10.20, live ln 11, gen 2
  %sub = sub nsw i32 %4, 2, l10 c20
  (Add w32 (w32 0xFFFFFFFE)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Select w32 (Eq (w32 0x4)
                              (ReadLSB w32 (w32 0x0) foo))
                          (w32 0x2)
                          (w32 0xFFFFFFFE))
              (ReadLSB w32 (w32 0x0) foo_1))
     (Add w32 (w32 0xFFFFFFFE)
              (ReadLSB w32 (w32 0x0) foo_1))))
Parsed query
(Eq (Add w32 (Select w32 (Eq (w32 0x4)
                              (ReadLSB w32 (w32 0x0) foo))
                          (w32 0x2)
                          (w32 0xFFFFFFFE))
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     (Add w32 (w32 0xFFFFFFFE) N0))
❌ Before `result` (decl src ln 6) assn asm ln 38, prod ln 10.20, live ln 11, gen 2 symbolic value doesn't match after assn asm ln 23, prod ln 7.7, live ln 13, gen 2

❌ After symbolic values checked against before
  Matching:    4
  Mismatched:  2
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
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
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2-fixed/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O2-fixed/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variables

Before variable `foo` (decl src ln 2)
Store to declared address of `foo` (decl src ln 2), asm ln 16
  const i32 4
  Added assignment asm ln 16, prod ln 2.16, live ln 3, gen 0
Before variable `read` (decl src ln 3)
Store to declared address of `read` (decl src ln 3), asm ln 19
  %0 = load volatile i32, i32* %foo, l3 c14, asm ln 18
  Added assignment asm ln 19, prod ln 3.14, live ln 4, gen 0
Before variable `read1` (decl src ln 4)
Store to declared address of `read1` (decl src ln 4), asm ln 22
  %1 = load volatile i32, i32* %foo, l4 c15, asm ln 21
  Added assignment asm ln 22, prod ln 4.15, live ln 6, gen 0
Before variable `result` (decl src ln 6)
Store to declared address of `result` (decl src ln 6), asm ln 38
  %sub = sub nsw i32 %4, 2, l10 c20, asm ln 37
🔔 Store to declared address of `result` (decl src ln 6): missing live ln, using produced ln + 1
  Added assignment asm ln 38, prod ln 10.20, live ln 11, gen 0
Store to declared address of `result` (decl src ln 6), asm ln 32
  %add = add nsw i32 %3, 2, l8 c20, asm ln 31
  Added assignment asm ln 32, prod ln 8.20, live ln 9, gen 0
Store to declared address of `result` (decl src ln 6), asm ln 24
  const i32 0
  Added assignment asm ln 24, prod ln 6.7, live ln 7, gen 0
Computing generations: `foo` (decl src ln 2)
  asm ln 16, prod ln 2.16, live ln 3, gen 0
Computing generations: `read` (decl src ln 3)
  asm ln 19, prod ln 3.14, live ln 4, gen 0
Computing generations: `read1` (decl src ln 4)
  asm ln 22, prod ln 4.15, live ln 6, gen 0
Computing generations: `result` (decl src ln 6)
  asm ln 24, prod ln 6.7, live ln 7, gen 0
  asm ln 32, prod ln 8.20, live ln 9, gen 1
  asm ln 38, prod ln 10.20, live ln 11, gen 2

After variable `foo` (decl src ln 2)
Store to declared address of `foo` (decl src ln 2), asm ln 12
  const i32 4
  Added assignment asm ln 12, prod ln 2.16, live ln 3, gen 0
After variable `read` (decl src ln 3)
Value produced for `read` (decl src ln 3), asm ln 14
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !20, l3 c14, asm ln 13
  Added assignment asm ln 14, prod ln 3.14, live ln 4, gen 0
After variable `read1` (decl src ln 4)
Value produced for `read1` (decl src ln 4), asm ln 16
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !20, l4 c15, asm ln 15
  Added assignment asm ln 16, prod ln 4.15, live ln 7, gen 0
After variable `result` (decl src ln 6)
Value produced for `result` (decl src ln 6), asm ln 17
  const i32 0
  Added assignment asm ln 17, prod ln 6.7, live ln 7, gen 0
After variable `result` (decl src ln 6)
Value produced for `result` (decl src ln 6), asm ln 21
  %result.0 = add nsw i32 %result.0.v, %foo.0.foo.0.4, l7 c7, asm ln 20
  Added assignment asm ln 21, prod ln 7.7, live ln 13, gen 0
Computing generations: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, gen 0
Computing generations: `read` (decl src ln 3)
  asm ln 14, prod ln 3.14, live ln 4, gen 0
Computing generations: `read1` (decl src ln 4)
  asm ln 16, prod ln 4.15, live ln 7, gen 0
Computing generations: `result` (decl src ln 6)
  asm ln 17, prod ln 6.7, live ln 7, gen 0
  asm ln 21, prod ln 7.7, live ln 13, gen 1

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `foo`
  i32 4
  (w32 0x4)
Collected value for `read`
  %0 = load volatile i32, i32* %foo, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read1`
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `result`
  i32 0
  (w32 0x0)
Collected value for `result`
  %add = add nsw i32 %3, 2, l8 c20
  (Add w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `result`
  %sub = sub nsw i32 %4, 2, l10 c20
  (Add w32 (w32 0xFFFFFFFE)
          (ReadLSB w32 (w32 0x0) foo_1))

#### After values

Collected value for `foo`
  i32 4
  (w32 0x4)
Collected value for `read`
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !20, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read1`
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !20, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `result`
  i32 0
  (w32 0x0)
Collected value for `result`
  %result.0 = add nsw i32 %result.0.v, %foo.0.foo.0.4, l7 c7
  (Add w32 (Select w32 (Eq (w32 0x4)
                          (ReadLSB w32 (w32 0x0) foo))
                      (w32 0x2)
                      (w32 0xFFFFFFFE))
          (ReadLSB w32 (w32 0x0) foo_1))

### Assignments

Filtering redundant before assignments: `result` (decl src ln 6)

Filtering redundant after assignments: `result` (decl src ln 6)

Computing generations: `foo` (decl src ln 2)
  asm ln 16, prod ln 2.16, live ln 3, gen 0
Computing generations: `read` (decl src ln 3)
  asm ln 19, prod ln 3.14, live ln 4, gen 0
Computing generations: `read1` (decl src ln 4)
  asm ln 22, prod ln 4.15, live ln 6, gen 0
Computing generations: `result` (decl src ln 6)
  asm ln 24, prod ln 6.7, live ln 7, gen 0
  asm ln 32, prod ln 8.20, live ln 9, gen 1
  asm ln 38, prod ln 10.20, live ln 11, gen 2
Building live ranges: `foo` (decl src ln 2)
  asm ln 16, prod ln 2.16, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `read` (decl src ln 3)
  asm ln 19, prod ln 3.14, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `read1` (decl src ln 4)
  asm ln 22, prod ln 4.15, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `result` (decl src ln 6)
  asm ln 24, prod ln 6.7, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln 9, gen 1
  asm ln 32, prod ln 8.20, live ln 9, gen 1
    live ln 9, gen 1 →
    live ln 11, gen 2
  asm ln 38, prod ln 10.20, live ln 11, gen 2
    live ln 11, gen 2 →
    live ln ∞, gen ∞

Computing generations: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, gen 0
Computing generations: `read` (decl src ln 3)
  asm ln 14, prod ln 3.14, live ln 4, gen 0
Computing generations: `read1` (decl src ln 4)
  asm ln 16, prod ln 4.15, live ln 7, gen 0
Computing generations: `result` (decl src ln 6)
  asm ln 17, prod ln 6.7, live ln 7, gen 0
  asm ln 21, prod ln 7.7, live ln 13, gen 1
Building live ranges: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `read` (decl src ln 3)
  asm ln 14, prod ln 3.14, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `read1` (decl src ln 4)
  asm ln 16, prod ln 4.15, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `result` (decl src ln 6)
  asm ln 17, prod ln 6.7, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln 13, gen 1
  asm ln 21, prod ln 7.7, live ln 13, gen 1
    live ln 13, gen 1 →
    live ln ∞, gen ∞

❌ Live ranges for `read1` (decl src ln 4) not fully covered: live ln 6, gen 0 < live ln 7, gen 0
❌ Before live range coverage
  Covered:   3
  Uncovered: 1
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 16, prod ln 2.16, live ln 3, gen 0
  i32 4
  (w32 0x4)
and
  assn asm ln 12, prod ln 2.16, live ln 3, gen 0
  i32 4
  (w32 0x4)
✅ After `foo` (decl src ln 2) assn asm ln 12, prod ln 2.16, live ln 3, gen 0 symbolic value matches before assn asm ln 16, prod ln 2.16, live ln 3, gen 0

Checking equivalence of `read` (decl src ln 3) from
  assn asm ln 19, prod ln 3.14, live ln 4, gen 0
  %0 = load volatile i32, i32* %foo, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 14, prod ln 3.14, live ln 4, gen 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !20, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
✅ After `read` (decl src ln 3) assn asm ln 14, prod ln 3.14, live ln 4, gen 0 symbolic value matches before assn asm ln 19, prod ln 3.14, live ln 4, gen 0

🔔 After `read1` (decl src ln 4) assn asm ln 16, prod ln 4.15, live ln 7, gen 0 coordinates don't match before assn asm ln 22, prod ln 4.15, live ln 6, gen 0
Checking equivalence of `read1` (decl src ln 4) from
  assn asm ln 22, prod ln 4.15, live ln 6, gen 0
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 16, prod ln 4.15, live ln 7, gen 0
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !20, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo_1)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
✅ After `read1` (decl src ln 4) assn asm ln 16, prod ln 4.15, live ln 7, gen 0 symbolic value matches before assn asm ln 22, prod ln 4.15, live ln 6, gen 0

Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 24, prod ln 6.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 17, prod ln 6.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
✅ After `result` (decl src ln 6) assn asm ln 17, prod ln 6.7, live ln 7, gen 0 symbolic value matches before assn asm ln 24, prod ln 6.7, live ln 7, gen 0

🔔 After `result` (decl src ln 6) assn asm ln 17, prod ln 6.7, live ln 7, gen 0 coordinates don't match before assn asm ln 32, prod ln 8.20, live ln 9, gen 1
Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 32, prod ln 8.20, live ln 9, gen 1
  %add = add nsw i32 %3, 2, l8 c20
  (Add w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 17, prod ln 6.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) foo_1))
     (w32 0x0)))
Parsed query
(Eq (Add w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) foo_1))
     (w32 0x0))
❌ After `result` (decl src ln 6) assn asm ln 17, prod ln 6.7, live ln 7, gen 0 symbolic value doesn't match before assn asm ln 32, prod ln 8.20, live ln 9, gen 1

🔔 After `result` (decl src ln 6) assn asm ln 17, prod ln 6.7, live ln 7, gen 0 coordinates don't match before assn asm ln 38, prod ln 10.20, live ln 11, gen 2
Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 38, prod ln 10.20, live ln 11, gen 2
  %sub = sub nsw i32 %4, 2, l10 c20
  (Add w32 (w32 0xFFFFFFFE)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 17, prod ln 6.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0xFFFFFFFE)
              (ReadLSB w32 (w32 0x0) foo_1))
     (w32 0x0)))
Parsed query
(Eq (Add w32 (w32 0xFFFFFFFE)
              (ReadLSB w32 (w32 0x0) foo_1))
     (w32 0x0))
❌ After `result` (decl src ln 6) assn asm ln 17, prod ln 6.7, live ln 7, gen 0 symbolic value doesn't match before assn asm ln 38, prod ln 10.20, live ln 11, gen 2

❌ Before symbolic values checked against after
  Matching:    4
  Mismatched:  2
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 12, prod ln 2.16, live ln 3, gen 0
  i32 4
  (w32 0x4)
and
  assn asm ln 16, prod ln 2.16, live ln 3, gen 0
  i32 4
  (w32 0x4)
✅ Before `foo` (decl src ln 2) assn asm ln 16, prod ln 2.16, live ln 3, gen 0 symbolic value matches after assn asm ln 12, prod ln 2.16, live ln 3, gen 0

Checking equivalence of `read` (decl src ln 3) from
  assn asm ln 14, prod ln 3.14, live ln 4, gen 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !20, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 19, prod ln 3.14, live ln 4, gen 0
  %0 = load volatile i32, i32* %foo, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
✅ Before `read` (decl src ln 3) assn asm ln 19, prod ln 3.14, live ln 4, gen 0 symbolic value matches after assn asm ln 14, prod ln 3.14, live ln 4, gen 0

🔔 Before `read1` (decl src ln 4) assn asm ln 22, prod ln 4.15, live ln 6, gen 0 coordinates don't match after assn asm ln 16, prod ln 4.15, live ln 7, gen 0
Checking equivalence of `read1` (decl src ln 4) from
  assn asm ln 16, prod ln 4.15, live ln 7, gen 0
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !20, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 22, prod ln 4.15, live ln 6, gen 0
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo_1)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
✅ Before `read1` (decl src ln 4) assn asm ln 22, prod ln 4.15, live ln 6, gen 0 symbolic value matches after assn asm ln 16, prod ln 4.15, live ln 7, gen 0

Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 17, prod ln 6.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 24, prod ln 6.7, live ln 7, gen 0
  i32 0
  (w32 0x0)
✅ Before `result` (decl src ln 6) assn asm ln 24, prod ln 6.7, live ln 7, gen 0 symbolic value matches after assn asm ln 17, prod ln 6.7, live ln 7, gen 0

🔔 Before `result` (decl src ln 6) assn asm ln 38, prod ln 10.20, live ln 11, gen 2 coordinates don't match after assn asm ln 21, prod ln 7.7, live ln 13, gen 1
Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 21, prod ln 7.7, live ln 13, gen 1
  %result.0 = add nsw i32 %result.0.v, %foo.0.foo.0.4, l7 c7
  (Add w32 (Select w32 (Eq (w32 0x4)
                          (ReadLSB w32 (w32 0x0) foo))
                      (w32 0x2)
                      (w32 0xFFFFFFFE))
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 38, prod ln 10.20, live ln 11, gen 2
  %sub = sub nsw i32 %4, 2, l10 c20
  (Add w32 (w32 0xFFFFFFFE)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Select w32 (Eq (w32 0x4)
                              (ReadLSB w32 (w32 0x0) foo))
                          (w32 0x2)
                          (w32 0xFFFFFFFE))
              (ReadLSB w32 (w32 0x0) foo_1))
     (Add w32 (w32 0xFFFFFFFE)
              (ReadLSB w32 (w32 0x0) foo_1))))
Parsed query
(Eq (Add w32 (Select w32 (Eq (w32 0x4)
                              (ReadLSB w32 (w32 0x0) foo))
                          (w32 0x2)
                          (w32 0xFFFFFFFE))
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     (Add w32 (w32 0xFFFFFFFE) N0))
❌ Before `result` (decl src ln 6) assn asm ln 38, prod ln 10.20, live ln 11, gen 2 symbolic value doesn't match after assn asm ln 21, prod ln 7.7, live ln 13, gen 1

❌ After symbolic values checked against before
  Matching:    4
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
