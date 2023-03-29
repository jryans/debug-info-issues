++ dirname ./check-fix.sh
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
Store to `foo` (decl src ln 2), asm ln 17
  const i32 4
  Added assignment asm ln 17, prod ln 2.16, live ln 3, gen 0
Before variable `read1` (decl src ln 3)
Store to `read1` (decl src ln 3), asm ln 20
  %0 = load volatile i32, i32* %foo, l3 c15, asm ln 19
  Added assignment asm ln 20, prod ln 3.15, live ln 4, gen 0
Before variable `read2` (decl src ln 4)
Store to `read2` (decl src ln 4), asm ln 23
  %1 = load volatile i32, i32* %foo, l4 c15, asm ln 22
  Added assignment asm ln 23, prod ln 4.15, live ln 6, gen 0
Before variable `cheese` (decl src ln 6)
Store to `cheese` (decl src ln 6), asm ln 44
  %add2 = add nsw i32 %8, %9, l11 c20, asm ln 43
  Added assignment asm ln 44, prod ln 11.20, live ln 12, gen 0
Store to `cheese` (decl src ln 6), asm ln 26
  %2 = load volatile i32, i32* %foo, l6 c16, asm ln 25
  Added assignment asm ln 26, prod ln 6.16, live ln 7, gen 0
Before variable `a` (decl src ln 7)
Store to `a` (decl src ln 7), asm ln 59
  const i32 0
❌ Store to `a` (decl src ln 7): missing live ln, using produced ln + 1
  Added assignment asm ln 59, prod ln 16.7, live ln 17, gen 0
Store to `a` (decl src ln 7), asm ln 55
  %div = sdiv i32 %13, 3, l14 c7, asm ln 54
  Added assignment asm ln 55, prod ln 14.7, live ln 15, gen 0
Store to `a` (decl src ln 7), asm ln 52
  %mul = mul nsw i32 %12, 20, l13 c7, asm ln 51
  Added assignment asm ln 52, prod ln 13.7, live ln 14, gen 0
Store to `a` (decl src ln 7), asm ln 49
  %sub3 = sub nsw i32 %11, %sub, l12 c7, asm ln 48
  Added assignment asm ln 49, prod ln 12.7, live ln 13, gen 0
Store to `a` (decl src ln 7), asm ln 35
  %add1 = add nsw i32 %6, %5, l8 c5, asm ln 34
  Added assignment asm ln 35, prod ln 8.5, live ln 10, gen 0
Store to `a` (decl src ln 7), asm ln 31
  %add = add nsw i32 %3, %4, l7 c17, asm ln 30
  Added assignment asm ln 31, prod ln 7.17, live ln 8, gen 0
Computing generations: `foo` (decl src ln 2)
  asm ln 17, prod ln 2.16, live ln 3, gen 0
Computing generations: `read1` (decl src ln 3)
  asm ln 20, prod ln 3.15, live ln 4, gen 0
Computing generations: `read2` (decl src ln 4)
  asm ln 23, prod ln 4.15, live ln 6, gen 0
Computing generations: `cheese` (decl src ln 6)
  asm ln 26, prod ln 6.16, live ln 7, gen 0
  asm ln 44, prod ln 11.20, live ln 12, gen 1
Computing generations: `a` (decl src ln 7)
  asm ln 31, prod ln 7.17, live ln 8, gen 0
  asm ln 35, prod ln 8.5, live ln 10, gen 1
  asm ln 49, prod ln 12.7, live ln 13, gen 2
  asm ln 52, prod ln 13.7, live ln 14, gen 3
  asm ln 55, prod ln 14.7, live ln 15, gen 4
  asm ln 59, prod ln 16.7, live ln 17, gen 5

After variable `foo` (decl src ln 2)
Store to `foo` (decl src ln 2), asm ln 13
  const i32 4
  Added assignment asm ln 13, prod ln 2.16, live ln 3, gen 0
After variable `read1` (decl src ln 3)
@dbg.value mapping for `read1` (decl src ln 3), asm ln 15
Value produced for `read1` (decl src ln 3), asm ln 15
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !21, l3 c15, asm ln 14
  Added assignment asm ln 15, prod ln 3.15, live ln 4, gen 0
After variable `read2` (decl src ln 4)
@dbg.value mapping for `read2` (decl src ln 4), asm ln 17
Value produced for `read2` (decl src ln 4), asm ln 17
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, !tbaa !21, l4 c15, asm ln 16
  Added assignment asm ln 17, prod ln 4.15, live ln 6, gen 0
After variable `cheese` (decl src ln 6)
@dbg.value mapping for `cheese` (decl src ln 6), asm ln 19
Value produced for `cheese` (decl src ln 6), asm ln 19
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !21, l6 c16, asm ln 18
  Added assignment asm ln 19, prod ln 6.16, live ln 10, gen 0
After variable `a` (decl src ln 7)
After variable intrinsic with undef input, asm ln 20, ignoring undefined variable
  @dbg.value(i32 undef, !18)
After variable `a` (decl src ln 7)
After variable intrinsic with undef input, asm ln 21, ignoring undefined variable
  @dbg.value(i32 undef, !18)
After variable `a` (decl src ln 7)
After variable intrinsic with undef input, asm ln 27, ignoring undefined variable
  @dbg.value(i32 undef, !18)
After variable `cheese` (decl src ln 6)
@dbg.value mapping for `cheese` (decl src ln 6), asm ln 28
Value produced for `cheese` (decl src ln 6), asm ln 28
  const i32 undef
🔔 Value produced for `cheese` (decl src ln 6): missing produced ln, using decl ln
  Added assignment asm ln 28, prod ln 6.0, live ln 13, gen 0
After variable `a` (decl src ln 7)
@dbg.value mapping for `a` (decl src ln 7), asm ln 29
Value produced for `a` (decl src ln 7), asm ln 29
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !21, l6 c16, asm ln 18
  Added assignment asm ln 29, prod ln 6.16, live ln 13, gen 0
After variable `a` (decl src ln 7)
@dbg.value mapping for `a` (decl src ln 7), asm ln 32
Value produced for `a` (decl src ln 7), asm ln 32
  %mul = add i32 %0, 240, l13 c7, asm ln 31
  Added assignment asm ln 32, prod ln 13.7, live ln 14, gen 0
After variable `a` (decl src ln 7)
@dbg.value mapping for `a` (decl src ln 7), asm ln 34
Value produced for `a` (decl src ln 7), asm ln 34
  %div = sdiv i32 %mul, 3, l14 c7, asm ln 33
  Added assignment asm ln 34, prod ln 14.7, live ln 15, gen 0
After variable `a` (decl src ln 7)
@dbg.value mapping for `a` (decl src ln 7), asm ln 39
Value produced for `a` (decl src ln 7), asm ln 39
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ], asm ln 38
  Added assignment asm ln 39, prod ln 14.7, live ln 20, gen 0
Computing generations: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 3, gen 0
Computing generations: `read1` (decl src ln 3)
  asm ln 15, prod ln 3.15, live ln 4, gen 0
Computing generations: `read2` (decl src ln 4)
  asm ln 17, prod ln 4.15, live ln 6, gen 0
Computing generations: `cheese` (decl src ln 6)
  asm ln 19, prod ln 6.16, live ln 10, gen 0
  asm ln 28, prod ln 6.0, live ln 13, gen 1
Computing generations: `a` (decl src ln 7)
  asm ln 29, prod ln 6.16, live ln 13, gen 0
  asm ln 32, prod ln 13.7, live ln 14, gen 1
  asm ln 34, prod ln 14.7, live ln 15, gen 2
  asm ln 39, prod ln 14.7, live ln 20, gen 3

✅ 5 before variables found, 5 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `foo`
  i32 4
  0x4
Collected value for `read1`
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 0x0 foo)
Collected value for `read2`
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 0x0 foo_1)
Collected value for `cheese`
  %2 = load volatile i32, i32* %foo, l6 c16
  (ReadLSB w32 0x0 foo_2)
Collected value for `a`
  %add = add nsw i32 %3, %4, l7 c17
  (Add w32 (ReadLSB w32 0x0 foo)
          (ReadLSB w32 0x0 foo_1))
Collected value for `a`
  %add1 = add nsw i32 %6, %5, l8 c5
  (Add w32 (Add w32 (ReadLSB w32 0x0 foo)
                   (ReadLSB w32 0x0 foo_1))
          (ReadLSB w32 0x0 foo_2))
Collected value for `a`
  i32 0
  0x0
Collected value for `cheese`
  %add2 = add nsw i32 %8, %9, l11 c20
  (Add w32 (ReadLSB w32 0x0 foo)
          (ReadLSB w32 0x0 foo_1))
Collected value for `a`
  %sub3 = sub nsw i32 %11, %sub, l12 c7
  (Add w32 0xC
          (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                        (ReadLSB w32 0x0 foo_1))
                            (ReadLSB w32 0x0 foo_2))
                   N0))
Collected value for `a`
  %mul = mul nsw i32 %12, 20, l13 c7
  (Mul w32 0x14
          (Add w32 0xC
                   (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                                 (ReadLSB w32 0x0 foo_1))
                                     (ReadLSB w32 0x0 foo_2))
                            N0)))
Collected value for `a`
  %div = sdiv i32 %13, 3, l14 c7
  (SDiv w32 (Mul w32 0x14
                    (Add w32 0xC
                             (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                                           (ReadLSB w32 0x0 foo_1))
                                               (ReadLSB w32 0x0 foo_2))
                                      N0)))
           0x3)

#### After values

Collected value for `foo`
  i32 4
  0x4
Collected value for `read1`
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !21, l3 c15
  (ReadLSB w32 0x0 foo)
Collected value for `read2`
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, !tbaa !21, l4 c15
  (ReadLSB w32 0x0 foo_1)
Collected value for `cheese`
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !21, l6 c16
  (ReadLSB w32 0x0 foo_2)
Collected value for `cheese`
  i32 undef
  0x0
Collected value for `a`
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !21, l6 c16
  (ReadLSB w32 0x0 foo_2)
Collected value for `a`
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ]
  Block: 1
  0x0
Collected value for `a`
  %mul = add i32 %0, 240, l13 c7
  (Add w32 0xF0
          (Mul w32 0x14
                   (ReadLSB w32 0x0 foo_2)))
Collected value for `a`
  %div = sdiv i32 %mul, 3, l14 c7
  (SDiv w32 (Add w32 0xF0
                    (Mul w32 0x14
                             (ReadLSB w32 0x0 foo_2)))
           0x3)

### Assignments

Filtering redundant before assignments: `cheese` (decl src ln 6)

Filtering redundant before assignments: `a` (decl src ln 7)

Filtering redundant after assignments: `cheese` (decl src ln 6)

Filtering redundant after assignments: `a` (decl src ln 7)

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 39, prod ln 14.7, live ln 20, gen 3
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ]
  0x0
and
  assn asm ln 34, prod ln 14.7, live ln 15, gen 2
  %div = sdiv i32 %mul, 3, l14 c7
  (SDiv w32 (Add w32 0xF0
                    (Mul w32 0x14
                             (ReadLSB w32 0x0 foo_2)))
           0x3)
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq 0x0
     (SDiv w32 (Add w32 0xF0
                        (Mul w32 0x14
                                 (ReadLSB w32 0x0 foo_2)))
               0x3)))
Parsed query
(Eq 0x0
     (SDiv w32 (Add w32 0xF0
                        (Mul w32 0x14
                                 (ReadLSB w32 0x0 foo_2)))
               0x3))

Computing generations: `foo` (decl src ln 2)
  asm ln 17, prod ln 2.16, live ln 3, gen 0
Computing generations: `read1` (decl src ln 3)
  asm ln 20, prod ln 3.15, live ln 4, gen 0
Computing generations: `read2` (decl src ln 4)
  asm ln 23, prod ln 4.15, live ln 6, gen 0
Computing generations: `cheese` (decl src ln 6)
  asm ln 26, prod ln 6.16, live ln 7, gen 0
  asm ln 44, prod ln 11.20, live ln 12, gen 1
Computing generations: `a` (decl src ln 7)
  asm ln 31, prod ln 7.17, live ln 8, gen 0
  asm ln 35, prod ln 8.5, live ln 10, gen 1
  asm ln 49, prod ln 12.7, live ln 13, gen 2
  asm ln 52, prod ln 13.7, live ln 14, gen 3
  asm ln 55, prod ln 14.7, live ln 15, gen 4
  asm ln 59, prod ln 16.7, live ln 17, gen 5
Building live ranges: `foo` (decl src ln 2)
  asm ln 17, prod ln 2.16, live ln 3, gen 0
    prod ln 2, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `read1` (decl src ln 3)
  asm ln 20, prod ln 3.15, live ln 4, gen 0
    prod ln 3, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `read2` (decl src ln 4)
  asm ln 23, prod ln 4.15, live ln 6, gen 0
    prod ln 4, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `cheese` (decl src ln 6)
  asm ln 26, prod ln 6.16, live ln 7, gen 0
    prod ln 6, gen 0 →
    prod ln 11, gen 1
  asm ln 44, prod ln 11.20, live ln 12, gen 1
    prod ln 11, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `a` (decl src ln 7)
  asm ln 31, prod ln 7.17, live ln 8, gen 0
    prod ln 7, gen 0 →
    prod ln 8, gen 1
  asm ln 35, prod ln 8.5, live ln 10, gen 1
    prod ln 8, gen 1 →
    prod ln 12, gen 2
  asm ln 49, prod ln 12.7, live ln 13, gen 2
    prod ln 12, gen 2 →
    prod ln 13, gen 3
  asm ln 52, prod ln 13.7, live ln 14, gen 3
    prod ln 13, gen 3 →
    prod ln 14, gen 4
  asm ln 55, prod ln 14.7, live ln 15, gen 4
    prod ln 14, gen 4 →
    prod ln 16, gen 5
  asm ln 59, prod ln 16.7, live ln 17, gen 5
    prod ln 16, gen 5 →
    prod ln ∞, gen ∞

Computing generations: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 3, gen 0
Computing generations: `read1` (decl src ln 3)
  asm ln 15, prod ln 3.15, live ln 4, gen 0
Computing generations: `read2` (decl src ln 4)
  asm ln 17, prod ln 4.15, live ln 6, gen 0
Computing generations: `cheese` (decl src ln 6)
  asm ln 19, prod ln 6.16, live ln 10, gen 0
  asm ln 28, prod ln 6.0, live ln 13, gen 1
Computing generations: `a` (decl src ln 7)
  asm ln 29, prod ln 6.16, live ln 13, gen 0
  asm ln 32, prod ln 13.7, live ln 14, gen 1
  asm ln 34, prod ln 14.7, live ln 15, gen 2
  asm ln 39, prod ln 14.7, live ln 20, gen 3
Building live ranges: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 3, gen 0
    prod ln 2, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `read1` (decl src ln 3)
  asm ln 15, prod ln 3.15, live ln 4, gen 0
    prod ln 3, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `read2` (decl src ln 4)
  asm ln 17, prod ln 4.15, live ln 6, gen 0
    prod ln 4, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `cheese` (decl src ln 6)
  asm ln 19, prod ln 6.16, live ln 10, gen 0
    prod ln 6, gen 0 →
    prod ln 6, gen 1
Building live ranges: `a` (decl src ln 7)
  asm ln 29, prod ln 6.16, live ln 13, gen 0
    prod ln 6, gen 0 →
    prod ln 13, gen 1
  asm ln 32, prod ln 13.7, live ln 14, gen 1
    prod ln 13, gen 1 →
    prod ln 14, gen 2
  asm ln 34, prod ln 14.7, live ln 15, gen 2
    prod ln 14, gen 2 →
    prod ln 14, gen 3
  asm ln 39, prod ln 14.7, live ln 20, gen 3
    prod ln 14, gen 3 →
    prod ln ∞, gen ∞

🔔 After live range for `cheese` (decl src ln 6) terminates early
✅ Before live range coverage
  Covered:   5
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

🔔 After `a` (decl src ln 7) assn asm ln 29, prod ln 6.16, live ln 13, gen 0 coordinates don't match before assn asm ln 31, prod ln 7.17, live ln 8, gen 0
Pushed initial value onto stack: (ReadLSB w32 0x0 foo_2)
plus_uconst: (Add w32 (ReadLSB w32 0x0 foo_2)
          0xC)
Result: (Add w32 (ReadLSB w32 0x0 foo_2)
          0xC)
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 31, prod ln 7.17, live ln 8, gen 0
  %add = add nsw i32 %3, %4, l7 c17
  (Add w32 (ReadLSB w32 0x0 foo)
          (ReadLSB w32 0x0 foo_1))
and
  assn asm ln 29, prod ln 6.16, live ln 13, gen 0
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !21, l6 c16
  (Add w32 (ReadLSB w32 0x0 foo_2)
          0xC)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (ReadLSB w32 0x0 foo)
              (ReadLSB w32 0x0 foo_1))
     (Add w32 (ReadLSB w32 0x0 foo_2)
              0xC)))
Parsed query
(Eq (Add w32 (ReadLSB w32 0x0 foo)
              (ReadLSB w32 0x0 foo_1))
     (Add w32 (ReadLSB w32 0x0 foo_2)
              0xC))
❌ After `a` (decl src ln 7) assn asm ln 29, prod ln 6.16, live ln 13, gen 0 symbolic value doesn't match before assn asm ln 31, prod ln 7.17, live ln 8, gen 0

🔔 After `a` (decl src ln 7) assn asm ln 29, prod ln 6.16, live ln 13, gen 0 coordinates don't match before assn asm ln 35, prod ln 8.5, live ln 10, gen 1
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 35, prod ln 8.5, live ln 10, gen 1
  %add1 = add nsw i32 %6, %5, l8 c5
  (Add w32 (Add w32 (ReadLSB w32 0x0 foo)
                   (ReadLSB w32 0x0 foo_1))
          (ReadLSB w32 0x0 foo_2))
and
  assn asm ln 29, prod ln 6.16, live ln 13, gen 0
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !21, l6 c16
  (Add w32 (ReadLSB w32 0x0 foo_2)
          0xC)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Add w32 (ReadLSB w32 0x0 foo)
                       (ReadLSB w32 0x0 foo_1))
              (ReadLSB w32 0x0 foo_2))
     (Add w32 (ReadLSB w32 0x0 foo_2)
              0xC)))
Parsed query
(Eq (Add w32 (Add w32 (ReadLSB w32 0x0 foo)
                       (ReadLSB w32 0x0 foo_1))
              N0:(ReadLSB w32 0x0 foo_2))
     (Add w32 N0 0xC))
❌ After `a` (decl src ln 7) assn asm ln 29, prod ln 6.16, live ln 13, gen 0 symbolic value doesn't match before assn asm ln 35, prod ln 8.5, live ln 10, gen 1

🔔 After `a` (decl src ln 7) assn asm ln 32, prod ln 13.7, live ln 14, gen 1 coordinates don't match before assn asm ln 49, prod ln 12.7, live ln 13, gen 2
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 49, prod ln 12.7, live ln 13, gen 2
  %sub3 = sub nsw i32 %11, %sub, l12 c7
  (Add w32 0xC
          (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                        (ReadLSB w32 0x0 foo_1))
                            (ReadLSB w32 0x0 foo_2))
                   N0))
and
  assn asm ln 32, prod ln 13.7, live ln 14, gen 1
  %mul = add i32 %0, 240, l13 c7
  (Add w32 0xF0
          (Mul w32 0x14
                   (ReadLSB w32 0x0 foo_2)))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 0xC
              (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                            (ReadLSB w32 0x0 foo_1))
                                (ReadLSB w32 0x0 foo_2))
                       N0))
     (Add w32 0xF0
              (Mul w32 0x14
                       (ReadLSB w32 0x0 foo_2)))))
Parsed query
(Eq (Add w32 0xC
              (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                            (ReadLSB w32 0x0 foo_1))
                                N1:(ReadLSB w32 0x0 foo_2))
                       N0))
     (Add w32 0xF0 (Mul w32 0x14 N1)))
❌ After `a` (decl src ln 7) assn asm ln 32, prod ln 13.7, live ln 14, gen 1 symbolic value doesn't match before assn asm ln 49, prod ln 12.7, live ln 13, gen 2

🔔 After `a` (decl src ln 7) assn asm ln 39, prod ln 14.7, live ln 20, gen 3 coordinates don't match before assn asm ln 52, prod ln 13.7, live ln 14, gen 3
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 52, prod ln 13.7, live ln 14, gen 3
  %mul = mul nsw i32 %12, 20, l13 c7
  (Mul w32 0x14
          (Add w32 0xC
                   (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                                 (ReadLSB w32 0x0 foo_1))
                                     (ReadLSB w32 0x0 foo_2))
                            N0)))
and
  assn asm ln 39, prod ln 14.7, live ln 20, gen 3
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ]
  0x0
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 0x14
              (Add w32 0xC
                       (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                                     (ReadLSB w32 0x0 foo_1))
                                         (ReadLSB w32 0x0 foo_2))
                                N0)))
     0x0))
Parsed query
(Eq (Mul w32 0x14
              (Add w32 0xC
                       (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                                     (ReadLSB w32 0x0 foo_1))
                                         (ReadLSB w32 0x0 foo_2))
                                N0)))
     0x0)
❌ After `a` (decl src ln 7) assn asm ln 39, prod ln 14.7, live ln 20, gen 3 symbolic value doesn't match before assn asm ln 52, prod ln 13.7, live ln 14, gen 3

🔔 After `a` (decl src ln 7) assn asm ln 39, prod ln 14.7, live ln 20, gen 3 coordinates don't match before assn asm ln 55, prod ln 14.7, live ln 15, gen 4
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 55, prod ln 14.7, live ln 15, gen 4
  %div = sdiv i32 %13, 3, l14 c7
  (SDiv w32 (Mul w32 0x14
                    (Add w32 0xC
                             (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                                           (ReadLSB w32 0x0 foo_1))
                                               (ReadLSB w32 0x0 foo_2))
                                      N0)))
           0x3)
and
  assn asm ln 39, prod ln 14.7, live ln 20, gen 3
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ]
  0x0
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (SDiv w32 (Mul w32 0x14
                        (Add w32 0xC
                                 (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                                               (ReadLSB w32 0x0 foo_1))
                                                   (ReadLSB w32 0x0 foo_2))
                                          N0)))
               0x3)
     0x0))
Parsed query
(Eq (SDiv w32 (Mul w32 0x14
                        (Add w32 0xC
                                 (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                                               (ReadLSB w32 0x0 foo_1))
                                                   (ReadLSB w32 0x0 foo_2))
                                          N0)))
               0x3)
     0x0)
❌ After `a` (decl src ln 7) assn asm ln 39, prod ln 14.7, live ln 20, gen 3 symbolic value doesn't match before assn asm ln 55, prod ln 14.7, live ln 15, gen 4

🔔 After `a` (decl src ln 7) assn asm ln 39, prod ln 14.7, live ln 20, gen 3 coordinates don't match before assn asm ln 59, prod ln 16.7, live ln 17, gen 5
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 59, prod ln 16.7, live ln 17, gen 5
  i32 0
  0x0
and
  assn asm ln 39, prod ln 14.7, live ln 20, gen 3
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ]
  0x0

❌ After live range for `cheese` (decl src ln 6) at asm ln 26, prod ln 6.16, live ln 7, gen 0 not found

❌ After live range for `cheese` (decl src ln 6) at asm ln 44, prod ln 11.20, live ln 12, gen 1 not found

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 17, prod ln 2.16, live ln 3, gen 0
  i32 4
  0x4
and
  assn asm ln 13, prod ln 2.16, live ln 3, gen 0
  i32 4
  0x4

Checking equivalence of `read1` (decl src ln 3) from
  assn asm ln 20, prod ln 3.15, live ln 4, gen 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 0x0 foo)
and
  assn asm ln 15, prod ln 3.15, live ln 4, gen 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !21, l3 c15
  (ReadLSB w32 0x0 foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 foo)
     (ReadLSB w32 0x0 foo)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 foo)
     N0)

Checking equivalence of `read2` (decl src ln 4) from
  assn asm ln 23, prod ln 4.15, live ln 6, gen 0
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 0x0 foo_1)
and
  assn asm ln 17, prod ln 4.15, live ln 6, gen 0
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, !tbaa !21, l4 c15
  (ReadLSB w32 0x0 foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 foo_1)
     (ReadLSB w32 0x0 foo_1)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 foo_1)
     N0)

❌ Before symbolic values checked against after
  Matching:    4
  Mismatched:  7
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

🔔 Before `a` (decl src ln 7) assn asm ln 49, prod ln 12.7, live ln 13, gen 2 coordinates don't match after assn asm ln 29, prod ln 6.16, live ln 13, gen 0
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 29, prod ln 6.16, live ln 13, gen 0
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !21, l6 c16
  (Add w32 (ReadLSB w32 0x0 foo_2)
          0xC)
and
  assn asm ln 49, prod ln 12.7, live ln 13, gen 2
  %sub3 = sub nsw i32 %11, %sub, l12 c7
  (Add w32 0xC
          (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                        (ReadLSB w32 0x0 foo_1))
                            (ReadLSB w32 0x0 foo_2))
                   N0))
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (ReadLSB w32 0x0 foo_2)
              0xC)
     (Add w32 0xC
              (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                            (ReadLSB w32 0x0 foo_1))
                                (ReadLSB w32 0x0 foo_2))
                       N0))))
Parsed query
(Eq (Add w32 N0:(ReadLSB w32 0x0 foo_2)
              0xC)
     (Add w32 0xC
              (Sub w32 (Add w32 N1:(Add w32 (ReadLSB w32 0x0 foo)
                                            (ReadLSB w32 0x0 foo_1))
                                N0)
                       N1)))

🔔 Before `a` (decl src ln 7) assn asm ln 52, prod ln 13.7, live ln 14, gen 3 coordinates don't match after assn asm ln 32, prod ln 13.7, live ln 14, gen 1
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 32, prod ln 13.7, live ln 14, gen 1
  %mul = add i32 %0, 240, l13 c7
  (Add w32 0xF0
          (Mul w32 0x14
                   (ReadLSB w32 0x0 foo_2)))
and
  assn asm ln 52, prod ln 13.7, live ln 14, gen 3
  %mul = mul nsw i32 %12, 20, l13 c7
  (Mul w32 0x14
          (Add w32 0xC
                   (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                                 (ReadLSB w32 0x0 foo_1))
                                     (ReadLSB w32 0x0 foo_2))
                            N0)))
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 0xF0
              (Mul w32 0x14
                       (ReadLSB w32 0x0 foo_2)))
     (Mul w32 0x14
              (Add w32 0xC
                       (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                                     (ReadLSB w32 0x0 foo_1))
                                         (ReadLSB w32 0x0 foo_2))
                                N0)))))
Parsed query
(Eq (Add w32 0xF0
              (Mul w32 0x14
                       N0:(ReadLSB w32 0x0 foo_2)))
     (Mul w32 0x14
              (Add w32 0xC
                       (Sub w32 (Add w32 N1:(Add w32 (ReadLSB w32 0x0 foo)
                                                     (ReadLSB w32 0x0 foo_1))
                                         N0)
                                N1))))

🔔 Before `a` (decl src ln 7) assn asm ln 55, prod ln 14.7, live ln 15, gen 4 coordinates don't match after assn asm ln 34, prod ln 14.7, live ln 15, gen 2
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 34, prod ln 14.7, live ln 15, gen 2
  %div = sdiv i32 %mul, 3, l14 c7
  (SDiv w32 (Add w32 0xF0
                    (Mul w32 0x14
                             (ReadLSB w32 0x0 foo_2)))
           0x3)
and
  assn asm ln 55, prod ln 14.7, live ln 15, gen 4
  %div = sdiv i32 %13, 3, l14 c7
  (SDiv w32 (Mul w32 0x14
                    (Add w32 0xC
                             (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                                           (ReadLSB w32 0x0 foo_1))
                                               (ReadLSB w32 0x0 foo_2))
                                      N0)))
           0x3)
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (SDiv w32 (Add w32 0xF0
                        (Mul w32 0x14
                                 (ReadLSB w32 0x0 foo_2)))
               0x3)
     (SDiv w32 (Mul w32 0x14
                        (Add w32 0xC
                                 (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 0x0 foo)
                                                               (ReadLSB w32 0x0 foo_1))
                                                   (ReadLSB w32 0x0 foo_2))
                                          N0)))
               0x3)))
Parsed query
(Eq (SDiv w32 (Add w32 0xF0
                        (Mul w32 0x14
                                 N0:(ReadLSB w32 0x0 foo_2)))
               0x3)
     (SDiv w32 (Mul w32 0x14
                        (Add w32 0xC
                                 (Sub w32 (Add w32 N1:(Add w32 (ReadLSB w32 0x0 foo)
                                                               (ReadLSB w32 0x0 foo_1))
                                                   N0)
                                          N1)))
               0x3))

🔔 Before `a` (decl src ln 7) assn asm ln 59, prod ln 16.7, live ln 17, gen 5 coordinates don't match after assn asm ln 39, prod ln 14.7, live ln 20, gen 3
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 39, prod ln 14.7, live ln 20, gen 3
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ]
  0x0
and
  assn asm ln 59, prod ln 16.7, live ln 17, gen 5
  i32 0
  0x0

🔔 Before `cheese` (decl src ln 6) assn asm ln 26, prod ln 6.16, live ln 7, gen 0 coordinates don't match after assn asm ln 19, prod ln 6.16, live ln 10, gen 0
Checking equivalence of `cheese` (decl src ln 6) from
  assn asm ln 19, prod ln 6.16, live ln 10, gen 0
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !21, l6 c16
  (ReadLSB w32 0x0 foo_2)
and
  assn asm ln 26, prod ln 6.16, live ln 7, gen 0
  %2 = load volatile i32, i32* %foo, l6 c16
  (ReadLSB w32 0x0 foo_2)
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 foo_2)
     (ReadLSB w32 0x0 foo_2)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 foo_2)
     N0)

🔔 Before `cheese` (decl src ln 6) assn asm ln 44, prod ln 11.20, live ln 12, gen 1 coordinates don't match after assn asm ln 28, prod ln 6.0, live ln 13, gen 1
Variable intrinsic with undef input
❌ After `cheese` (decl src ln 6) assn asm ln 28, prod ln 6.0, live ln 13, gen 1 has no symbolic value from i32 undef

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 13, prod ln 2.16, live ln 3, gen 0
  i32 4
  0x4
and
  assn asm ln 17, prod ln 2.16, live ln 3, gen 0
  i32 4
  0x4

Checking equivalence of `read1` (decl src ln 3) from
  assn asm ln 15, prod ln 3.15, live ln 4, gen 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !21, l3 c15
  (ReadLSB w32 0x0 foo)
and
  assn asm ln 20, prod ln 3.15, live ln 4, gen 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 0x0 foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 foo)
     (ReadLSB w32 0x0 foo)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 foo)
     N0)

Checking equivalence of `read2` (decl src ln 4) from
  assn asm ln 17, prod ln 4.15, live ln 6, gen 0
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, !tbaa !21, l4 c15
  (ReadLSB w32 0x0 foo_1)
and
  assn asm ln 23, prod ln 4.15, live ln 6, gen 0
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 0x0 foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 foo_1)
     (ReadLSB w32 0x0 foo_1)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 foo_1)
     N0)

❌ After symbolic values checked against before
  Matching:    8
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed