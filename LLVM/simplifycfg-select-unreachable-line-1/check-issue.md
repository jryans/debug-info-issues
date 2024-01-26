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

Before variable `foo` (decl src ln 2)
Store to declared address of `foo` (decl src ln 2), asm ln 13
  const i32 0
  Added assignment asm ln 13, prod ln 2.16, live ln 3, gen 0
Before variable `read1` (decl src ln 3)
Store to declared address of `read1` (decl src ln 3), asm ln 16
  %0 = load volatile i32, i32* %foo, l3 c15, asm ln 15
  Added assignment asm ln 16, prod ln 3.15, live ln 4, gen 0
Before variable `brains` (decl src ln 4)
Store to declared address of `brains` (decl src ln 4), asm ln 30
  %add = add nsw i32 %4, 1, l8 c12, asm ln 29
  Added assignment asm ln 30, prod ln 8.12, live ln 9, gen 0
Store to declared address of `brains` (decl src ln 4), asm ln 27
  %mul = mul nsw i32 %3, 2, l7 c12, asm ln 26
  Added assignment asm ln 27, prod ln 7.12, live ln 8, gen 0
Store to declared address of `brains` (decl src ln 4), asm ln 19
  %1 = load volatile i32, i32* %foo, l4 c16, asm ln 18
  Added assignment asm ln 19, prod ln 4.16, live ln 6, gen 0
Computing generations: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 3, gen 0
Computing generations: `read1` (decl src ln 3)
  asm ln 16, prod ln 3.15, live ln 4, gen 0
Computing generations: `brains` (decl src ln 4)
  asm ln 19, prod ln 4.16, live ln 6, gen 0
  asm ln 27, prod ln 7.12, live ln 8, gen 1
  asm ln 30, prod ln 8.12, live ln 9, gen 2

After variable `foo` (decl src ln 2)
Store to declared address of `foo` (decl src ln 2), asm ln 12
  const i32 0
  Added assignment asm ln 12, prod ln 2.16, live ln 3, gen 0
After variable `read1` (decl src ln 3)
Value produced for `read1` (decl src ln 3), asm ln 14
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l3 c15, asm ln 13
  Added assignment asm ln 14, prod ln 3.15, live ln 4, gen 0
After variable `brains` (decl src ln 4)
Value produced for `brains` (decl src ln 4), asm ln 16
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !18, l4 c16, asm ln 15
  Added assignment asm ln 16, prod ln 4.16, live ln 6, gen 0
After variable `brains` (decl src ln 4)
Value produced for `brains` (decl src ln 4), asm ln 19
  %mul = shl nsw i32 %foo.0.foo.0.5, 1, l7 c12, asm ln 18
  Added assignment asm ln 19, prod ln 7.12, live ln 8, gen 0
After variable `brains` (decl src ln 4)
Value produced for `brains` (decl src ln 4), asm ln 21
  %add = or i32 %mul, 1, l8 c12, asm ln 20
🔔 Value produced for `brains` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 21, prod ln 8.12, live ln 9, gen 0
After variable `brains` (decl src ln 4)
Value produced for `brains` (decl src ln 4), asm ln 23
  %brains.0 = select i1 %cmp, i32 %add, i32 %foo.0.foo.0.5, l6 c7, asm ln 22
  Added assignment asm ln 23, prod ln 6.7, live ln 11, gen 0
Computing generations: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, gen 0
Computing generations: `read1` (decl src ln 3)
  asm ln 14, prod ln 3.15, live ln 4, gen 0
Computing generations: `brains` (decl src ln 4)
  asm ln 16, prod ln 4.16, live ln 6, gen 0
  asm ln 19, prod ln 7.12, live ln 8, gen 1
  asm ln 21, prod ln 8.12, live ln 9, gen 2
  asm ln 23, prod ln 6.7, live ln 11, gen 3

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `foo`
  i32 0
  (w32 0x0)
Collected value for `read1`
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `brains`
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `brains`
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `brains`
  %add = add nsw i32 %4, 1, l8 c12
  (Add w32 (w32 0x1)
          (Mul w32 (w32 0x2)
                   (ReadLSB w32 (w32 0x0) foo_1)))

#### After values

Collected value for `foo`
  i32 0
  (w32 0x0)
Collected value for `read1`
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `brains`
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !18, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `brains`
  %mul = shl nsw i32 %foo.0.foo.0.5, 1, l7 c12
  (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
          (w32 0x1))
Collected value for `brains`
  %add = or i32 %mul, 1, l8 c12
  (Or w32 (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
                  (w32 0x1))
         (w32 0x1))
Collected value for `brains`
  %brains.0 = select i1 %cmp, i32 %add, i32 %foo.0.foo.0.5, l6 c7
  (Select w32 (Slt (w32 0x3)
                  (ReadLSB w32 (w32 0x0) foo))
             (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                              (w32 0x1))
                     (w32 0x1))
             N0)

### Assignments

Filtering redundant before assignments: `brains` (decl src ln 4)

Filtering redundant after assignments: `brains` (decl src ln 4)

Computing generations: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 3, gen 0
Computing generations: `read1` (decl src ln 3)
  asm ln 16, prod ln 3.15, live ln 4, gen 0
Computing generations: `brains` (decl src ln 4)
  asm ln 19, prod ln 4.16, live ln 6, gen 0
  asm ln 27, prod ln 7.12, live ln 8, gen 1
  asm ln 30, prod ln 8.12, live ln 9, gen 2
Building live ranges: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `read1` (decl src ln 3)
  asm ln 16, prod ln 3.15, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `brains` (decl src ln 4)
  asm ln 19, prod ln 4.16, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln 8, gen 1
  asm ln 27, prod ln 7.12, live ln 8, gen 1
    live ln 8, gen 1 →
    live ln 9, gen 2
  asm ln 30, prod ln 8.12, live ln 9, gen 2
    live ln 9, gen 2 →
    live ln ∞, gen ∞

Computing generations: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, gen 0
Computing generations: `read1` (decl src ln 3)
  asm ln 14, prod ln 3.15, live ln 4, gen 0
Computing generations: `brains` (decl src ln 4)
  asm ln 16, prod ln 4.16, live ln 6, gen 0
  asm ln 19, prod ln 7.12, live ln 8, gen 1
  asm ln 21, prod ln 8.12, live ln 9, gen 2
  asm ln 23, prod ln 6.7, live ln 11, gen 3
Building live ranges: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `read1` (decl src ln 3)
  asm ln 14, prod ln 3.15, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `brains` (decl src ln 4)
  asm ln 16, prod ln 4.16, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln 8, gen 1
  asm ln 19, prod ln 7.12, live ln 8, gen 1
    live ln 8, gen 1 →
    live ln 9, gen 2
  asm ln 21, prod ln 8.12, live ln 9, gen 2
    live ln 9, gen 2 →
    live ln 11, gen 3
  asm ln 23, prod ln 6.7, live ln 11, gen 3
    live ln 11, gen 3 →
    live ln ∞, gen ∞

✅ Before live range coverage
  Covered:   3
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 19, prod ln 4.16, live ln 6, gen 0
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 16, prod ln 4.16, live ln 6, gen 0
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !18, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo_1)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
✅ After `brains` (decl src ln 4) assn asm ln 16, prod ln 4.16, live ln 6, gen 0 symbolic value matches before assn asm ln 19, prod ln 4.16, live ln 6, gen 0

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 27, prod ln 7.12, live ln 8, gen 1
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 19, prod ln 7.12, live ln 8, gen 1
  %mul = shl nsw i32 %foo.0.foo.0.5, 1, l7 c12
  (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
          (w32 0x1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) foo_1))
     (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
              (w32 0x1))))
Parsed query
(Eq (Mul w32 (w32 0x2)
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     (Shl w32 N0 (w32 0x1)))
✅ After `brains` (decl src ln 4) assn asm ln 19, prod ln 7.12, live ln 8, gen 1 symbolic value matches before assn asm ln 27, prod ln 7.12, live ln 8, gen 1

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 30, prod ln 8.12, live ln 9, gen 2
  %add = add nsw i32 %4, 1, l8 c12
  (Add w32 (w32 0x1)
          (Mul w32 (w32 0x2)
                   (ReadLSB w32 (w32 0x0) foo_1)))
and
  assn asm ln 21, prod ln 8.12, live ln 9, gen 2
  %add = or i32 %mul, 1, l8 c12
  (Or w32 (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
                  (w32 0x1))
         (w32 0x1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              (Mul w32 (w32 0x2)
                       (ReadLSB w32 (w32 0x0) foo_1)))
     (Or w32 (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
                      (w32 0x1))
             (w32 0x1))))
Parsed query
(Eq (Add w32 (w32 0x1)
              (Mul w32 (w32 0x2)
                       N0:(ReadLSB w32 (w32 0x0) foo_1)))
     (Or w32 (Shl w32 N0 (w32 0x1)) (w32 0x1)))
✅ After `brains` (decl src ln 4) assn asm ln 21, prod ln 8.12, live ln 9, gen 2 symbolic value matches before assn asm ln 30, prod ln 8.12, live ln 9, gen 2

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 13, prod ln 2.16, live ln 3, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 12, prod ln 2.16, live ln 3, gen 0
  i32 0
  (w32 0x0)
✅ After `foo` (decl src ln 2) assn asm ln 12, prod ln 2.16, live ln 3, gen 0 symbolic value matches before assn asm ln 13, prod ln 2.16, live ln 3, gen 0

Checking equivalence of `read1` (decl src ln 3) from
  assn asm ln 16, prod ln 3.15, live ln 4, gen 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 14, prod ln 3.15, live ln 4, gen 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
✅ After `read1` (decl src ln 3) assn asm ln 14, prod ln 3.15, live ln 4, gen 0 symbolic value matches before assn asm ln 16, prod ln 3.15, live ln 4, gen 0

✅ Before symbolic values checked against after
  Matching:    5
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 16, prod ln 4.16, live ln 6, gen 0
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !18, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 19, prod ln 4.16, live ln 6, gen 0
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo_1)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
✅ Before `brains` (decl src ln 4) assn asm ln 19, prod ln 4.16, live ln 6, gen 0 symbolic value matches after assn asm ln 16, prod ln 4.16, live ln 6, gen 0

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 19, prod ln 7.12, live ln 8, gen 1
  %mul = shl nsw i32 %foo.0.foo.0.5, 1, l7 c12
  (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
          (w32 0x1))
and
  assn asm ln 27, prod ln 7.12, live ln 8, gen 1
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
              (w32 0x1))
     (Mul w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) foo_1))))
Parsed query
(Eq (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
              (w32 0x1))
     (Mul w32 (w32 0x2) N0))
✅ Before `brains` (decl src ln 4) assn asm ln 27, prod ln 7.12, live ln 8, gen 1 symbolic value matches after assn asm ln 19, prod ln 7.12, live ln 8, gen 1

Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 21, prod ln 8.12, live ln 9, gen 2
  %add = or i32 %mul, 1, l8 c12
  (Or w32 (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
                  (w32 0x1))
         (w32 0x1))
and
  assn asm ln 30, prod ln 8.12, live ln 9, gen 2
  %add = add nsw i32 %4, 1, l8 c12
  (Add w32 (w32 0x1)
          (Mul w32 (w32 0x2)
                   (ReadLSB w32 (w32 0x0) foo_1)))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Or w32 (Shl w32 (ReadLSB w32 (w32 0x0) foo_1)
                      (w32 0x1))
             (w32 0x1))
     (Add w32 (w32 0x1)
              (Mul w32 (w32 0x2)
                       (ReadLSB w32 (w32 0x0) foo_1)))))
Parsed query
(Eq (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                      (w32 0x1))
             (w32 0x1))
     (Add w32 (w32 0x1) (Mul w32 (w32 0x2) N0)))
✅ Before `brains` (decl src ln 4) assn asm ln 30, prod ln 8.12, live ln 9, gen 2 symbolic value matches after assn asm ln 21, prod ln 8.12, live ln 9, gen 2

🔔 Before `brains` (decl src ln 4) assn asm ln 30, prod ln 8.12, live ln 9, gen 2 coordinates don't match after assn asm ln 23, prod ln 6.7, live ln 11, gen 3
Checking equivalence of `brains` (decl src ln 4) from
  assn asm ln 23, prod ln 6.7, live ln 11, gen 3
  %brains.0 = select i1 %cmp, i32 %add, i32 %foo.0.foo.0.5, l6 c7
  (Select w32 (Slt (w32 0x3)
                  (ReadLSB w32 (w32 0x0) foo))
             (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                              (w32 0x1))
                     (w32 0x1))
             N0)
and
  assn asm ln 30, prod ln 8.12, live ln 9, gen 2
  %add = add nsw i32 %4, 1, l8 c12
  (Add w32 (w32 0x1)
          (Mul w32 (w32 0x2)
                   (ReadLSB w32 (w32 0x0) foo_1)))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Select w32 (Slt (w32 0x3)
                      (ReadLSB w32 (w32 0x0) foo))
                 (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                                  (w32 0x1))
                         (w32 0x1))
                 N0)
     (Add w32 (w32 0x1)
              (Mul w32 (w32 0x2)
                       (ReadLSB w32 (w32 0x0) foo_1)))))
Parsed query
(Eq (Select w32 (Slt (w32 0x3)
                      (ReadLSB w32 (w32 0x0) foo))
                 (Or w32 (Shl w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
                                  (w32 0x1))
                         (w32 0x1))
                 N0)
     (Add w32 (w32 0x1) (Mul w32 (w32 0x2) N0)))
❌ Before `brains` (decl src ln 4) assn asm ln 30, prod ln 8.12, live ln 9, gen 2 symbolic value doesn't match after assn asm ln 23, prod ln 6.7, live ln 11, gen 3

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 12, prod ln 2.16, live ln 3, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 13, prod ln 2.16, live ln 3, gen 0
  i32 0
  (w32 0x0)
✅ Before `foo` (decl src ln 2) assn asm ln 13, prod ln 2.16, live ln 3, gen 0 symbolic value matches after assn asm ln 12, prod ln 2.16, live ln 3, gen 0

Checking equivalence of `read1` (decl src ln 3) from
  assn asm ln 14, prod ln 3.15, live ln 4, gen 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 16, prod ln 3.15, live ln 4, gen 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
✅ Before `read1` (decl src ln 3) assn asm ln 16, prod ln 3.15, live ln 4, gen 0 symbolic value matches after assn asm ln 14, prod ln 3.15, live ln 4, gen 0

❌ After symbolic values checked against before
  Matching:    5
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
