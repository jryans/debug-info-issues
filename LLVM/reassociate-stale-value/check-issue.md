++ dirname ./check-issue.sh
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
+++ CC_O2_OPTS=-O2
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
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Checking klee-out-O0/final.bc and klee-out-O2/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `foo` (decl src ln 2), asm ln 36
  %7 = load volatile i32, i32* %foo, l10 c7, asm ln 36
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 36, prod ln 10.7, live ln 11, enc None
Load from declared address of `foo` (decl src ln 2), asm ln 25
  %2 = load volatile i32, i32* %foo, l6 c16, asm ln 25
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25, prod ln 6.16, live ln 7, enc None
Load from declared address of `foo` (decl src ln 2), asm ln 22
  %1 = load volatile i32, i32* %foo, l4 c15, asm ln 22
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 22, prod ln 4.15, live ln 5, enc None
Load from declared address of `foo` (decl src ln 2), asm ln 19
  %0 = load volatile i32, i32* %foo, l3 c15, asm ln 19
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 19, prod ln 3.15, live ln 4, enc None
Store to declared address of `foo` (decl src ln 2), asm ln 17
  const i32 4
  Added assignment asm ln 17, prod ln 2.16, live ln 3, enc None
Load from declared address of `read1` (decl src ln 3), asm ln 41
  %8 = load i32, i32* %read1, l11 c14, asm ln 41
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 41, prod ln 11.14, live ln 12, enc None
Load from declared address of `read1` (decl src ln 3), asm ln 28
  %3 = load i32, i32* %read1, l7 c11, asm ln 28
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 28, prod ln 7.11, live ln 8, enc None
Store to declared address of `read1` (decl src ln 3), asm ln 20
  %0 = load volatile i32, i32* %foo, l3 c15, asm ln 19
  Added assignment asm ln 20, prod ln 3.15, live ln 4, enc None
Load from declared address of `read2` (decl src ln 4), asm ln 42
  %9 = load i32, i32* %read2, l11 c22, asm ln 42
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 42, prod ln 11.22, live ln 12, enc None
Load from declared address of `read2` (decl src ln 4), asm ln 29
  %4 = load i32, i32* %read2, l7 c19, asm ln 29
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 29, prod ln 7.19, live ln 8, enc None
Store to declared address of `read2` (decl src ln 4), asm ln 23
  %1 = load volatile i32, i32* %foo, l4 c15, asm ln 22
  Added assignment asm ln 23, prod ln 4.15, live ln 6, enc None
Load from declared address of `cheese` (decl src ln 6), asm ln 45
  %10 = load i32, i32* %cheese, l12 c10, asm ln 45
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 45, prod ln 12.10, live ln 13, enc None
Store to declared address of `cheese` (decl src ln 6), asm ln 44
  %add2 = add nsw i32 %8, %9, l11 c20, asm ln 43
  Added assignment asm ln 44, prod ln 11.20, live ln 12, enc None
Load from declared address of `cheese` (decl src ln 6), asm ln 32
  %5 = load i32, i32* %cheese, l8 c8, asm ln 32
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 32, prod ln 8.8, live ln 9, enc None
Store to declared address of `cheese` (decl src ln 6), asm ln 26
  %2 = load volatile i32, i32* %foo, l6 c16, asm ln 25
  Added assignment asm ln 26, prod ln 6.16, live ln 7, enc None
Load from declared address of `a` (decl src ln 7), asm ln 63
  %14 = load i32, i32* %a, l19 c10, asm ln 63
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 63, prod ln 19.10, live ln 20, enc None
Store to declared address of `a` (decl src ln 7), asm ln 59
  const i32 0
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 59, prod ln 16.7, live ln 17, enc None
Store to declared address of `a` (decl src ln 7), asm ln 55
  %div = sdiv i32 %13, 3, l14 c7, asm ln 54
  Added assignment asm ln 55, prod ln 14.7, live ln 15, enc None
Load from declared address of `a` (decl src ln 7), asm ln 53
  %13 = load i32, i32* %a, l14 c7, asm ln 53
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 53, prod ln 14.7, live ln 15, enc None
Store to declared address of `a` (decl src ln 7), asm ln 52
  %mul = mul nsw i32 %12, 20, l13 c7, asm ln 51
  Added assignment asm ln 52, prod ln 13.7, live ln 14, enc None
Load from declared address of `a` (decl src ln 7), asm ln 50
  %12 = load i32, i32* %a, l13 c7, asm ln 50
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 50, prod ln 13.7, live ln 14, enc None
Store to declared address of `a` (decl src ln 7), asm ln 49
  %sub3 = sub nsw i32 %11, %sub, l12 c7, asm ln 48
  Added assignment asm ln 49, prod ln 12.7, live ln 13, enc None
Load from declared address of `a` (decl src ln 7), asm ln 47
  %11 = load i32, i32* %a, l12 c7, asm ln 47
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 47, prod ln 12.7, live ln 13, enc None
Store to declared address of `a` (decl src ln 7), asm ln 35
  %add1 = add nsw i32 %6, %5, l8 c5, asm ln 34
  Added assignment asm ln 35, prod ln 8.5, live ln 10, enc None
Load from declared address of `a` (decl src ln 7), asm ln 33
  %6 = load i32, i32* %a, l8 c5, asm ln 33
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 33, prod ln 8.5, live ln 9, enc None
Store to declared address of `a` (decl src ln 7), asm ln 31
  %add = add nsw i32 %3, %4, l7 c17, asm ln 30
  Added assignment asm ln 31, prod ln 7.17, live ln 8, enc None

#### After variables

Load from declared address of `foo` (decl src ln 2), asm ln 19
  %foo.0.foo.0.17 = load volatile i32, i32* %foo, !tbaa !20, l10 c7, asm ln 19
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 19, prod ln 10.7, live ln 11, enc None
Load from declared address of `foo` (decl src ln 2), asm ln 17
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !20, l6 c16, asm ln 17
  Added assignment asm ln 17, prod ln 6.16, live ln 10, enc None
Load from declared address of `foo` (decl src ln 2), asm ln 15
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, !tbaa !20, l4 c15, asm ln 15
  Added assignment asm ln 15, prod ln 4.15, live ln 6, enc None
Load from declared address of `foo` (decl src ln 2), asm ln 13
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !20, l3 c15, asm ln 13
  Added assignment asm ln 13, prod ln 3.15, live ln 4, enc None
Store to declared address of `foo` (decl src ln 2), asm ln 12
  const i32 4
  Added assignment asm ln 12, prod ln 2.16, live ln 3, enc None
Value produced for `read1` (decl src ln 3), asm ln 14
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !20, l3 c15, asm ln 13
  Added assignment asm ln 14, prod ln 3.15, live ln 4, enc None
Value produced for `read2` (decl src ln 4), asm ln 16
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, !tbaa !20, l4 c15, asm ln 15
  Added assignment asm ln 16, prod ln 4.15, live ln 6, enc None
Value produced for `cheese` (decl src ln 6), asm ln 18
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !20, l6 c16, asm ln 17
  Added assignment asm ln 18, prod ln 6.16, live ln 10, enc None
Value produced for `a` (decl src ln 7), asm ln 24
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !20, l6 c16, asm ln 17
  Added assignment asm ln 24, prod ln 7.16, live ln 13, enc None
Value produced for `a` (decl src ln 7), asm ln 27
  %mul = add i32 %0, 240, l13 c7, asm ln 26
  Added assignment asm ln 27, prod ln 13.7, live ln 14, enc None
Value produced for `a` (decl src ln 7), asm ln 29
  %div = sdiv i32 %mul, 3, l14 c7, asm ln 28
  Added assignment asm ln 29, prod ln 14.7, live ln 15, enc None
Value produced for `a` (decl src ln 7), asm ln 34
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ], asm ln 33
  Added assignment asm ln 34, prod ln 14.7, live ln 19, enc None

#### Summary

✅ 5 before variables found, 5 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `foo`
  Assignment asm ln 17, prod ln 2.16, live ln 3, enc 0
  i32 4
  (w32 0x4)
Collected value for `foo`
  Assignment asm ln 19, prod ln 3.15, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read1`
  Assignment asm ln 20, prod ln 3.15, live ln 4, enc 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `foo`
  Assignment asm ln 22, prod ln 4.15, live ln 5, enc 2
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `read2`
  Assignment asm ln 23, prod ln 4.15, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `foo`
  Assignment asm ln 25, prod ln 6.16, live ln 7, enc 3
  %2 = load volatile i32, i32* %foo, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
Collected value for `cheese`
  Assignment asm ln 26, prod ln 6.16, live ln 7, enc 0
  %2 = load volatile i32, i32* %foo, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
Collected value for `read1`
  Assignment asm ln 28, prod ln 7.11, live ln 8, enc 1
  %3 = load i32, i32* %read1, l7 c11
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read2`
  Assignment asm ln 29, prod ln 7.19, live ln 8, enc 1
  %4 = load i32, i32* %read2, l7 c19
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `a`
  Assignment asm ln 31, prod ln 7.17, live ln 8, enc 0
  %add = add nsw i32 %3, %4, l7 c17
  (Add w32 (ReadLSB w32 (w32 0x0) foo)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `cheese`
  Assignment asm ln 32, prod ln 8.8, live ln 9, enc 1
  %5 = load i32, i32* %cheese, l8 c8
  (ReadLSB w32 (w32 0x0) foo_2)
Collected value for `a`
  Assignment asm ln 33, prod ln 8.5, live ln 9, enc 1
  %6 = load i32, i32* %a, l8 c5
  (Add w32 (ReadLSB w32 (w32 0x0) foo)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `a`
  Assignment asm ln 35, prod ln 8.5, live ln 10, enc 2
  %add1 = add nsw i32 %6, %5, l8 c5
  (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                   (ReadLSB w32 (w32 0x0) foo_1))
          (ReadLSB w32 (w32 0x0) foo_2))
Collected value for `foo`
  Assignment asm ln 36, prod ln 10.7, live ln 11, enc 4
  %7 = load volatile i32, i32* %foo, l10 c7
  (ReadLSB w32 (w32 0x0) foo_3)
Collected value for `a`
  Assignment asm ln 59, prod ln 16.7, live ln 17, enc 3
  i32 0
  (w32 0x0)
Collected value for `a`
  Assignment asm ln 63, prod ln 19.10, live ln 20, enc 4
  %14 = load i32, i32* %a, l19 c10
  (w32 0x0)
Collected value for `read1`
  Assignment asm ln 41, prod ln 11.14, live ln 12, enc 2
  %8 = load i32, i32* %read1, l11 c14
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read2`
  Assignment asm ln 42, prod ln 11.22, live ln 12, enc 2
  %9 = load i32, i32* %read2, l11 c22
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `cheese`
  Assignment asm ln 44, prod ln 11.20, live ln 12, enc 2
  %add2 = add nsw i32 %8, %9, l11 c20
  (Add w32 (ReadLSB w32 (w32 0x0) foo)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `cheese`
  Assignment asm ln 45, prod ln 12.10, live ln 13, enc 3
  %10 = load i32, i32* %cheese, l12 c10
  (Add w32 (ReadLSB w32 (w32 0x0) foo)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `a`
  Assignment asm ln 47, prod ln 12.7, live ln 13, enc 5
  %11 = load i32, i32* %a, l12 c7
  (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                   (ReadLSB w32 (w32 0x0) foo_1))
          (ReadLSB w32 (w32 0x0) foo_2))
Collected value for `a`
  Assignment asm ln 49, prod ln 12.7, live ln 13, enc 6
  %sub3 = sub nsw i32 %11, %sub, l12 c7
  (Add w32 (w32 0xC)
          (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                        (ReadLSB w32 (w32 0x0) foo_1))
                            (ReadLSB w32 (w32 0x0) foo_2))
                   N0))
Collected value for `a`
  Assignment asm ln 50, prod ln 13.7, live ln 14, enc 7
  %12 = load i32, i32* %a, l13 c7
  (Add w32 (w32 0xC)
          (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                        (ReadLSB w32 (w32 0x0) foo_1))
                            (ReadLSB w32 (w32 0x0) foo_2))
                   N0))
Collected value for `a`
  Assignment asm ln 52, prod ln 13.7, live ln 14, enc 8
  %mul = mul nsw i32 %12, 20, l13 c7
  (Mul w32 (w32 0x14)
          (Add w32 (w32 0xC)
                   (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                 (ReadLSB w32 (w32 0x0) foo_1))
                                     (ReadLSB w32 (w32 0x0) foo_2))
                            N0)))
Collected value for `a`
  Assignment asm ln 53, prod ln 14.7, live ln 15, enc 9
  %13 = load i32, i32* %a, l14 c7
  (Mul w32 (w32 0x14)
          (Add w32 (w32 0xC)
                   (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                 (ReadLSB w32 (w32 0x0) foo_1))
                                     (ReadLSB w32 (w32 0x0) foo_2))
                            N0)))
Collected value for `a`
  Assignment asm ln 55, prod ln 14.7, live ln 15, enc 10
  %div = sdiv i32 %13, 3, l14 c7
  (SDiv w32 (Mul w32 (w32 0x14)
                    (Add w32 (w32 0xC)
                             (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                           (ReadLSB w32 (w32 0x0) foo_1))
                                               (ReadLSB w32 (w32 0x0) foo_2))
                                      N0)))
           (w32 0x3))

#### After values

Collected value for `foo`
  Assignment asm ln 12, prod ln 2.16, live ln 3, enc 0
  i32 4
  (w32 0x4)
Collected value for `foo`
  Assignment asm ln 13, prod ln 3.15, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !20, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read1`
  Assignment asm ln 14, prod ln 3.15, live ln 4, enc 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !20, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `foo`
  Assignment asm ln 15, prod ln 4.15, live ln 6, enc 2
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, !tbaa !20, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `read2`
  Assignment asm ln 16, prod ln 4.15, live ln 6, enc 0
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, !tbaa !20, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `foo`
  Assignment asm ln 17, prod ln 6.16, live ln 10, enc 3
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !20, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
Collected value for `cheese`
  Assignment asm ln 18, prod ln 6.16, live ln 10, enc 0
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !20, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
Collected value for `foo`
  Assignment asm ln 19, prod ln 10.7, live ln 11, enc 4
  %foo.0.foo.0.17 = load volatile i32, i32* %foo, !tbaa !20, l10 c7
  (ReadLSB w32 (w32 0x0) foo_3)
Collected value for `a`
  Assignment asm ln 24, prod ln 7.16, live ln 13, enc 0
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !20, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
Collected value for `a`
  Assignment asm ln 34, prod ln 14.7, live ln 19, enc 1
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ]
  Block: 1
  (w32 0x0)
Collected value for `a`
  Assignment asm ln 27, prod ln 13.7, live ln 14, enc 2
  %mul = add i32 %0, 240, l13 c7
  (Add w32 (w32 0xF0)
          (Mul w32 (w32 0x14)
                   (ReadLSB w32 (w32 0x0) foo_2)))
Collected value for `a`
  Assignment asm ln 29, prod ln 14.7, live ln 15, enc 3
  %div = sdiv i32 %mul, 3, l14 c7
  (SDiv w32 (Add w32 (w32 0xF0)
                    (Mul w32 (w32 0x14)
                             (ReadLSB w32 (w32 0x0) foo_2)))
           (w32 0x3))

### Assignments

#### Collation

Filtering before assignments: `foo` (decl src ln 2)

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 19, prod ln 3.15, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 17, prod ln 2.16, live ln 3, enc 0
  i32 4
  (w32 0x4)
Query to parse
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x4)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x4))

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 22, prod ln 4.15, live ln 5, enc 2
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 19, prod ln 3.15, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo))

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 25, prod ln 6.16, live ln 7, enc 3
  %2 = load volatile i32, i32* %foo, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
and
  assn asm ln 22, prod ln 4.15, live ln 5, enc 2
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_2)
     (ReadLSB w32 (w32 0x0) foo_1)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo_2)
     (ReadLSB w32 (w32 0x0) foo_1))

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 36, prod ln 10.7, live ln 11, enc 4
  %7 = load volatile i32, i32* %foo, l10 c7
  (ReadLSB w32 (w32 0x0) foo_3)
and
  assn asm ln 25, prod ln 6.16, live ln 7, enc 3
  %2 = load volatile i32, i32* %foo, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
Query to parse
array foo_3[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_3)
     (ReadLSB w32 (w32 0x0) foo_2)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo_3)
     (ReadLSB w32 (w32 0x0) foo_2))

Filtering before assignments: `read1` (decl src ln 3)

Checking equivalence of `read1` (decl src ln 3) from
  assn asm ln 28, prod ln 7.11, live ln 8, enc 1
  %3 = load i32, i32* %read1, l7 c11
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 20, prod ln 3.15, live ln 4, enc 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
🔔 Removing: asm ln 28, prod ln 7.11, live ln 8, enc 1

Checking equivalence of `read1` (decl src ln 3) from
  assn asm ln 41, prod ln 11.14, live ln 12, enc 2
  %8 = load i32, i32* %read1, l11 c14
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 20, prod ln 3.15, live ln 4, enc 0
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
🔔 Removing: asm ln 41, prod ln 11.14, live ln 12, enc 2

Filtering before assignments: `read2` (decl src ln 4)

Checking equivalence of `read2` (decl src ln 4) from
  assn asm ln 29, prod ln 7.19, live ln 8, enc 1
  %4 = load i32, i32* %read2, l7 c19
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 23, prod ln 4.15, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
🔔 Removing: asm ln 29, prod ln 7.19, live ln 8, enc 1

Checking equivalence of `read2` (decl src ln 4) from
  assn asm ln 42, prod ln 11.22, live ln 12, enc 2
  %9 = load i32, i32* %read2, l11 c22
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 23, prod ln 4.15, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_1)
     N0)
🔔 Removing: asm ln 42, prod ln 11.22, live ln 12, enc 2

Filtering before assignments: `cheese` (decl src ln 6)

Checking equivalence of `cheese` (decl src ln 6) from
  assn asm ln 32, prod ln 8.8, live ln 9, enc 1
  %5 = load i32, i32* %cheese, l8 c8
  (ReadLSB w32 (w32 0x0) foo_2)
and
  assn asm ln 26, prod ln 6.16, live ln 7, enc 0
  %2 = load volatile i32, i32* %foo, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo_2)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_2)
     N0)
🔔 Removing: asm ln 32, prod ln 8.8, live ln 9, enc 1

Checking equivalence of `cheese` (decl src ln 6) from
  assn asm ln 44, prod ln 11.20, live ln 12, enc 2
  %add2 = add nsw i32 %8, %9, l11 c20
  (Add w32 (ReadLSB w32 (w32 0x0) foo)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 26, prod ln 6.16, live ln 7, enc 0
  %2 = load volatile i32, i32* %foo, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (ReadLSB w32 (w32 0x0) foo)
              (ReadLSB w32 (w32 0x0) foo_1))
     (ReadLSB w32 (w32 0x0) foo_2)))
Parsed query
(Eq (Add w32 (ReadLSB w32 (w32 0x0) foo)
              (ReadLSB w32 (w32 0x0) foo_1))
     (ReadLSB w32 (w32 0x0) foo_2))

Checking equivalence of `cheese` (decl src ln 6) from
  assn asm ln 45, prod ln 12.10, live ln 13, enc 3
  %10 = load i32, i32* %cheese, l12 c10
  (Add w32 (ReadLSB w32 (w32 0x0) foo)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 44, prod ln 11.20, live ln 12, enc 2
  %add2 = add nsw i32 %8, %9, l11 c20
  (Add w32 (ReadLSB w32 (w32 0x0) foo)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                 (ReadLSB w32 (w32 0x0) foo_1))
     N0))
Parsed query
(Eq N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                 (ReadLSB w32 (w32 0x0) foo_1))
     N0)
🔔 Removing: asm ln 45, prod ln 12.10, live ln 13, enc 3

Filtering before assignments: `a` (decl src ln 7)

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 33, prod ln 8.5, live ln 9, enc 1
  %6 = load i32, i32* %a, l8 c5
  (Add w32 (ReadLSB w32 (w32 0x0) foo)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 31, prod ln 7.17, live ln 8, enc 0
  %add = add nsw i32 %3, %4, l7 c17
  (Add w32 (ReadLSB w32 (w32 0x0) foo)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                 (ReadLSB w32 (w32 0x0) foo_1))
     N0))
Parsed query
(Eq N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                 (ReadLSB w32 (w32 0x0) foo_1))
     N0)
🔔 Removing: asm ln 33, prod ln 8.5, live ln 9, enc 1

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 35, prod ln 8.5, live ln 10, enc 2
  %add1 = add nsw i32 %6, %5, l8 c5
  (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                   (ReadLSB w32 (w32 0x0) foo_1))
          (ReadLSB w32 (w32 0x0) foo_2))
and
  assn asm ln 31, prod ln 7.17, live ln 8, enc 0
  %add = add nsw i32 %3, %4, l7 c17
  (Add w32 (ReadLSB w32 (w32 0x0) foo)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                          (ReadLSB w32 (w32 0x0) foo_1))
              (ReadLSB w32 (w32 0x0) foo_2))
     N0))
Parsed query
(Eq (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                          (ReadLSB w32 (w32 0x0) foo_1))
              (ReadLSB w32 (w32 0x0) foo_2))
     N0)

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 59, prod ln 16.7, live ln 17, enc 3
  i32 0
  (w32 0x0)
and
  assn asm ln 35, prod ln 8.5, live ln 10, enc 2
  %add1 = add nsw i32 %6, %5, l8 c5
  (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                   (ReadLSB w32 (w32 0x0) foo_1))
          (ReadLSB w32 (w32 0x0) foo_2))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (w32 0x0)
     (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                       (ReadLSB w32 (w32 0x0) foo_1))
              (ReadLSB w32 (w32 0x0) foo_2))))
Parsed query
(Eq (w32 0x0)
     (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                       (ReadLSB w32 (w32 0x0) foo_1))
              (ReadLSB w32 (w32 0x0) foo_2)))

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 63, prod ln 19.10, live ln 20, enc 4
  %14 = load i32, i32* %a, l19 c10
  (w32 0x0)
and
  assn asm ln 59, prod ln 16.7, live ln 17, enc 3
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 63, prod ln 19.10, live ln 20, enc 4

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 47, prod ln 12.7, live ln 13, enc 5
  %11 = load i32, i32* %a, l12 c7
  (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                   (ReadLSB w32 (w32 0x0) foo_1))
          (ReadLSB w32 (w32 0x0) foo_2))
and
  assn asm ln 59, prod ln 16.7, live ln 17, enc 3
  i32 0
  (w32 0x0)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                       (ReadLSB w32 (w32 0x0) foo_1))
              (ReadLSB w32 (w32 0x0) foo_2))
     (w32 0x0)))
Parsed query
(Eq (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                       (ReadLSB w32 (w32 0x0) foo_1))
              (ReadLSB w32 (w32 0x0) foo_2))
     (w32 0x0))

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 49, prod ln 12.7, live ln 13, enc 6
  %sub3 = sub nsw i32 %11, %sub, l12 c7
  (Add w32 (w32 0xC)
          (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                        (ReadLSB w32 (w32 0x0) foo_1))
                            (ReadLSB w32 (w32 0x0) foo_2))
                   N0))
and
  assn asm ln 47, prod ln 12.7, live ln 13, enc 5
  %11 = load i32, i32* %a, l12 c7
  (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                   (ReadLSB w32 (w32 0x0) foo_1))
          (ReadLSB w32 (w32 0x0) foo_2))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0xC)
              (Sub w32 N0:(Add w32 N1:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                               (ReadLSB w32 (w32 0x0) foo_1))
                                   (ReadLSB w32 (w32 0x0) foo_2))
                       N1))
     N0))
Parsed query
(Eq (Add w32 (w32 0xC)
              (Sub w32 N0:(Add w32 N1:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                               (ReadLSB w32 (w32 0x0) foo_1))
                                   (ReadLSB w32 (w32 0x0) foo_2))
                       N1))
     N0)

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 50, prod ln 13.7, live ln 14, enc 7
  %12 = load i32, i32* %a, l13 c7
  (Add w32 (w32 0xC)
          (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                        (ReadLSB w32 (w32 0x0) foo_1))
                            (ReadLSB w32 (w32 0x0) foo_2))
                   N0))
and
  assn asm ln 49, prod ln 12.7, live ln 13, enc 6
  %sub3 = sub nsw i32 %11, %sub, l12 c7
  (Add w32 (w32 0xC)
          (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                        (ReadLSB w32 (w32 0x0) foo_1))
                            (ReadLSB w32 (w32 0x0) foo_2))
                   N0))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Add w32 (w32 0xC)
                 (Sub w32 (Add w32 N1:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                               (ReadLSB w32 (w32 0x0) foo_1))
                                   (ReadLSB w32 (w32 0x0) foo_2))
                          N1))
     N0))
Parsed query
(Eq N0:(Add w32 (w32 0xC)
                 (Sub w32 (Add w32 N1:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                               (ReadLSB w32 (w32 0x0) foo_1))
                                   (ReadLSB w32 (w32 0x0) foo_2))
                          N1))
     N0)
🔔 Removing: asm ln 50, prod ln 13.7, live ln 14, enc 7

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 52, prod ln 13.7, live ln 14, enc 8
  %mul = mul nsw i32 %12, 20, l13 c7
  (Mul w32 (w32 0x14)
          (Add w32 (w32 0xC)
                   (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                 (ReadLSB w32 (w32 0x0) foo_1))
                                     (ReadLSB w32 (w32 0x0) foo_2))
                            N0)))
and
  assn asm ln 49, prod ln 12.7, live ln 13, enc 6
  %sub3 = sub nsw i32 %11, %sub, l12 c7
  (Add w32 (w32 0xC)
          (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                        (ReadLSB w32 (w32 0x0) foo_1))
                            (ReadLSB w32 (w32 0x0) foo_2))
                   N0))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (w32 0x14)
              N0:(Add w32 (w32 0xC)
                          (Sub w32 (Add w32 N1:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                        (ReadLSB w32 (w32 0x0) foo_1))
                                            (ReadLSB w32 (w32 0x0) foo_2))
                                   N1)))
     N0))
Parsed query
(Eq (Mul w32 (w32 0x14)
              N0:(Add w32 (w32 0xC)
                          (Sub w32 (Add w32 N1:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                        (ReadLSB w32 (w32 0x0) foo_1))
                                            (ReadLSB w32 (w32 0x0) foo_2))
                                   N1)))
     N0)

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 53, prod ln 14.7, live ln 15, enc 9
  %13 = load i32, i32* %a, l14 c7
  (Mul w32 (w32 0x14)
          (Add w32 (w32 0xC)
                   (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                 (ReadLSB w32 (w32 0x0) foo_1))
                                     (ReadLSB w32 (w32 0x0) foo_2))
                            N0)))
and
  assn asm ln 52, prod ln 13.7, live ln 14, enc 8
  %mul = mul nsw i32 %12, 20, l13 c7
  (Mul w32 (w32 0x14)
          (Add w32 (w32 0xC)
                   (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                 (ReadLSB w32 (w32 0x0) foo_1))
                                     (ReadLSB w32 (w32 0x0) foo_2))
                            N0)))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Mul w32 (w32 0x14)
                 (Add w32 (w32 0xC)
                          (Sub w32 (Add w32 N1:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                        (ReadLSB w32 (w32 0x0) foo_1))
                                            (ReadLSB w32 (w32 0x0) foo_2))
                                   N1)))
     N0))
Parsed query
(Eq N0:(Mul w32 (w32 0x14)
                 (Add w32 (w32 0xC)
                          (Sub w32 (Add w32 N1:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                        (ReadLSB w32 (w32 0x0) foo_1))
                                            (ReadLSB w32 (w32 0x0) foo_2))
                                   N1)))
     N0)
🔔 Removing: asm ln 53, prod ln 14.7, live ln 15, enc 9

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 55, prod ln 14.7, live ln 15, enc 10
  %div = sdiv i32 %13, 3, l14 c7
  (SDiv w32 (Mul w32 (w32 0x14)
                    (Add w32 (w32 0xC)
                             (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                           (ReadLSB w32 (w32 0x0) foo_1))
                                               (ReadLSB w32 (w32 0x0) foo_2))
                                      N0)))
           (w32 0x3))
and
  assn asm ln 52, prod ln 13.7, live ln 14, enc 8
  %mul = mul nsw i32 %12, 20, l13 c7
  (Mul w32 (w32 0x14)
          (Add w32 (w32 0xC)
                   (Sub w32 (Add w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                 (ReadLSB w32 (w32 0x0) foo_1))
                                     (ReadLSB w32 (w32 0x0) foo_2))
                            N0)))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (SDiv w32 N0:(Mul w32 (w32 0x14)
                           (Add w32 (w32 0xC)
                                    (Sub w32 (Add w32 N1:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                                  (ReadLSB w32 (w32 0x0) foo_1))
                                                      (ReadLSB w32 (w32 0x0) foo_2))
                                             N1)))
               (w32 0x3))
     N0))
Parsed query
(Eq (SDiv w32 N0:(Mul w32 (w32 0x14)
                           (Add w32 (w32 0xC)
                                    (Sub w32 (Add w32 N1:(Add w32 (ReadLSB w32 (w32 0x0) foo)
                                                                  (ReadLSB w32 (w32 0x0) foo_1))
                                                      (ReadLSB w32 (w32 0x0) foo_2))
                                             N1)))
               (w32 0x3))
     N0)

Filtering after assignments: `foo` (decl src ln 2)

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 13, prod ln 3.15, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !20, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 12, prod ln 2.16, live ln 3, enc 0
  i32 4
  (w32 0x4)
Query to parse
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x4)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x4))

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 15, prod ln 4.15, live ln 6, enc 2
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, !tbaa !20, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 13, prod ln 3.15, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !20, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo))

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 17, prod ln 6.16, live ln 10, enc 3
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !20, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
and
  assn asm ln 15, prod ln 4.15, live ln 6, enc 2
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, !tbaa !20, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_2)
     (ReadLSB w32 (w32 0x0) foo_1)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo_2)
     (ReadLSB w32 (w32 0x0) foo_1))

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 19, prod ln 10.7, live ln 11, enc 4
  %foo.0.foo.0.17 = load volatile i32, i32* %foo, !tbaa !20, l10 c7
  (ReadLSB w32 (w32 0x0) foo_3)
and
  assn asm ln 17, prod ln 6.16, live ln 10, enc 3
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !20, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
Query to parse
array foo_3[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_3)
     (ReadLSB w32 (w32 0x0) foo_2)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo_3)
     (ReadLSB w32 (w32 0x0) foo_2))

Filtering after assignments: `a` (decl src ln 7)

Pushed initial value onto stack: (ReadLSB w32 (w32 0x0) foo_2)
plus_uconst: (Add w32 (ReadLSB w32 (w32 0x0) foo_2)
          (Extract w32 0 (w64 0xC)))
Result: (Add w32 (ReadLSB w32 (w32 0x0) foo_2)
          (Extract w32 0 (w64 0xC)))
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 34, prod ln 14.7, live ln 19, enc 1
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ]
  (w32 0x0)
and
  assn asm ln 24, prod ln 7.16, live ln 13, enc 0
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !20, l6 c16
  (Add w32 (ReadLSB w32 (w32 0x0) foo_2)
          (Extract w32 0 (w64 0xC)))
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (w32 0x0)
     (Add w32 (ReadLSB w32 (w32 0x0) foo_2)
              (Extract w32 0 (w64 0xC)))))
Parsed query
(Eq (w32 0x0)
     (Add w32 (ReadLSB w32 (w32 0x0) foo_2)
              (Extract w32 0 (w64 0xC))))

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 27, prod ln 13.7, live ln 14, enc 2
  %mul = add i32 %0, 240, l13 c7
  (Add w32 (w32 0xF0)
          (Mul w32 (w32 0x14)
                   (ReadLSB w32 (w32 0x0) foo_2)))
and
  assn asm ln 34, prod ln 14.7, live ln 19, enc 1
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ]
  (w32 0x0)
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0xF0)
              (Mul w32 (w32 0x14)
                       (ReadLSB w32 (w32 0x0) foo_2)))
     (w32 0x0)))
Parsed query
(Eq (Add w32 (w32 0xF0)
              (Mul w32 (w32 0x14)
                       (ReadLSB w32 (w32 0x0) foo_2)))
     (w32 0x0))

Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 29, prod ln 14.7, live ln 15, enc 3
  %div = sdiv i32 %mul, 3, l14 c7
  (SDiv w32 (Add w32 (w32 0xF0)
                    (Mul w32 (w32 0x14)
                             (ReadLSB w32 (w32 0x0) foo_2)))
           (w32 0x3))
and
  assn asm ln 27, prod ln 13.7, live ln 14, enc 2
  %mul = add i32 %0, 240, l13 c7
  (Add w32 (w32 0xF0)
          (Mul w32 (w32 0x14)
                   (ReadLSB w32 (w32 0x0) foo_2)))
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (SDiv w32 N0:(Add w32 (w32 0xF0)
                           (Mul w32 (w32 0x14)
                                    (ReadLSB w32 (w32 0x0) foo_2)))
               (w32 0x3))
     N0))
Parsed query
(Eq (SDiv w32 N0:(Add w32 (w32 0xF0)
                           (Mul w32 (w32 0x14)
                                    (ReadLSB w32 (w32 0x0) foo_2)))
               (w32 0x3))
     N0)

Collating encountered before assignments: `foo` (decl src ln 2)
  asm ln 17, prod ln 2.16, live ln 3, enc 0
  asm ln 19, prod ln 3.15, live ln 4, enc 1
  asm ln 22, prod ln 4.15, live ln 5, enc 2
  asm ln 25, prod ln 6.16, live ln 7, enc 3
  asm ln 36, prod ln 10.7, live ln 11, enc 4
Collating encountered before assignments: `read1` (decl src ln 3)
  asm ln 20, prod ln 3.15, live ln 4, enc 0
Collating encountered before assignments: `read2` (decl src ln 4)
  asm ln 23, prod ln 4.15, live ln 6, enc 0
Collating encountered before assignments: `cheese` (decl src ln 6)
  asm ln 26, prod ln 6.16, live ln 7, enc 0
  asm ln 44, prod ln 11.20, live ln 12, enc 1
Collating encountered before assignments: `a` (decl src ln 7)
  asm ln 31, prod ln 7.17, live ln 8, enc 0
  asm ln 35, prod ln 8.5, live ln 10, enc 1
  asm ln 59, prod ln 16.7, live ln 17, enc 2
  asm ln 47, prod ln 12.7, live ln 13, enc 3
  asm ln 49, prod ln 12.7, live ln 13, enc 4
  asm ln 52, prod ln 13.7, live ln 14, enc 5
  asm ln 55, prod ln 14.7, live ln 15, enc 6

Collating encountered after assignments: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, enc 0
  asm ln 13, prod ln 3.15, live ln 4, enc 1
  asm ln 15, prod ln 4.15, live ln 6, enc 2
  asm ln 17, prod ln 6.16, live ln 10, enc 3
  asm ln 19, prod ln 10.7, live ln 11, enc 4
Collating encountered after assignments: `read1` (decl src ln 3)
  asm ln 14, prod ln 3.15, live ln 4, enc 0
Collating encountered after assignments: `read2` (decl src ln 4)
  asm ln 16, prod ln 4.15, live ln 6, enc 0
Collating encountered after assignments: `cheese` (decl src ln 6)
  asm ln 18, prod ln 6.16, live ln 10, enc 0
Collating encountered after assignments: `a` (decl src ln 7)
  asm ln 24, prod ln 7.16, live ln 13, enc 0
  asm ln 34, prod ln 14.7, live ln 19, enc 1
  asm ln 27, prod ln 13.7, live ln 14, enc 2
  asm ln 29, prod ln 14.7, live ln 15, enc 3

#### Check after using before as reference

❌ Before encountered assn for `a` (decl src ln 7) at asm ln 49, prod ln 12.7, live ln 13, enc 4 not found in after

❌ Before encountered assn for `a` (decl src ln 7) at asm ln 52, prod ln 13.7, live ln 14, enc 5 not found in after

❌ Before encountered assn for `a` (decl src ln 7) at asm ln 55, prod ln 14.7, live ln 15, enc 6 not found in after

❌ Before `a` (decl src ln 7) assn asm ln 31, prod ln 7.17, live ln 8, enc 0 coordinates don't match after assn asm ln 24, prod ln 7.16, live ln 13, enc 0
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 24, prod ln 7.16, live ln 13, enc 0
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !20, l6 c16
  (Add w32 (ReadLSB w32 (w32 0x0) foo_2)
          (Extract w32 0 (w64 0xC)))
and
  assn asm ln 31, prod ln 7.17, live ln 8, enc 0
  %add = add nsw i32 %3, %4, l7 c17
  (Add w32 (ReadLSB w32 (w32 0x0) foo)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (ReadLSB w32 (w32 0x0) foo_2)
              (Extract w32 0 (w64 0xC)))
     (Add w32 (ReadLSB w32 (w32 0x0) foo)
              (ReadLSB w32 (w32 0x0) foo_1))))
Parsed query
(Eq (Add w32 (ReadLSB w32 (w32 0x0) foo_2)
              (Extract w32 0 (w64 0xC)))
     (Add w32 (ReadLSB w32 (w32 0x0) foo)
              (ReadLSB w32 (w32 0x0) foo_1)))
❌ Before `a` (decl src ln 7) assn asm ln 31, prod ln 7.17, live ln 8, enc 0 symbolic value doesn't match after assn asm ln 24, prod ln 7.16, live ln 13, enc 0

❌ Before `a` (decl src ln 7) assn asm ln 35, prod ln 8.5, live ln 10, enc 1 coordinates don't match after assn asm ln 34, prod ln 14.7, live ln 19, enc 1
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 34, prod ln 14.7, live ln 19, enc 1
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ]
  (w32 0x0)
and
  assn asm ln 35, prod ln 8.5, live ln 10, enc 1
  %add1 = add nsw i32 %6, %5, l8 c5
  (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                   (ReadLSB w32 (w32 0x0) foo_1))
          (ReadLSB w32 (w32 0x0) foo_2))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (w32 0x0)
     (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                       (ReadLSB w32 (w32 0x0) foo_1))
              (ReadLSB w32 (w32 0x0) foo_2))))
Parsed query
(Eq (w32 0x0)
     (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                       (ReadLSB w32 (w32 0x0) foo_1))
              (ReadLSB w32 (w32 0x0) foo_2)))
❌ Before `a` (decl src ln 7) assn asm ln 35, prod ln 8.5, live ln 10, enc 1 symbolic value doesn't match after assn asm ln 34, prod ln 14.7, live ln 19, enc 1

❌ Before `a` (decl src ln 7) assn asm ln 59, prod ln 16.7, live ln 17, enc 2 coordinates don't match after assn asm ln 27, prod ln 13.7, live ln 14, enc 2
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 27, prod ln 13.7, live ln 14, enc 2
  %mul = add i32 %0, 240, l13 c7
  (Add w32 (w32 0xF0)
          (Mul w32 (w32 0x14)
                   (ReadLSB w32 (w32 0x0) foo_2)))
and
  assn asm ln 59, prod ln 16.7, live ln 17, enc 2
  i32 0
  (w32 0x0)
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0xF0)
              (Mul w32 (w32 0x14)
                       (ReadLSB w32 (w32 0x0) foo_2)))
     (w32 0x0)))
Parsed query
(Eq (Add w32 (w32 0xF0)
              (Mul w32 (w32 0x14)
                       (ReadLSB w32 (w32 0x0) foo_2)))
     (w32 0x0))
❌ Before `a` (decl src ln 7) assn asm ln 59, prod ln 16.7, live ln 17, enc 2 symbolic value doesn't match after assn asm ln 27, prod ln 13.7, live ln 14, enc 2

❌ Before `a` (decl src ln 7) assn asm ln 47, prod ln 12.7, live ln 13, enc 3 coordinates don't match after assn asm ln 29, prod ln 14.7, live ln 15, enc 3
Checking equivalence of `a` (decl src ln 7) from
  assn asm ln 29, prod ln 14.7, live ln 15, enc 3
  %div = sdiv i32 %mul, 3, l14 c7
  (SDiv w32 (Add w32 (w32 0xF0)
                    (Mul w32 (w32 0x14)
                             (ReadLSB w32 (w32 0x0) foo_2)))
           (w32 0x3))
and
  assn asm ln 47, prod ln 12.7, live ln 13, enc 3
  %11 = load i32, i32* %a, l12 c7
  (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                   (ReadLSB w32 (w32 0x0) foo_1))
          (ReadLSB w32 (w32 0x0) foo_2))
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (SDiv w32 (Add w32 (w32 0xF0)
                        (Mul w32 (w32 0x14)
                                 (ReadLSB w32 (w32 0x0) foo_2)))
               (w32 0x3))
     (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                       (ReadLSB w32 (w32 0x0) foo_1))
              (ReadLSB w32 (w32 0x0) foo_2))))
Parsed query
(Eq (SDiv w32 (Add w32 (w32 0xF0)
                        (Mul w32 (w32 0x14)
                                 N0:(ReadLSB w32 (w32 0x0) foo_2)))
               (w32 0x3))
     (Add w32 (Add w32 (ReadLSB w32 (w32 0x0) foo)
                       (ReadLSB w32 (w32 0x0) foo_1))
              N0))
❌ Before `a` (decl src ln 7) assn asm ln 47, prod ln 12.7, live ln 13, enc 3 symbolic value doesn't match after assn asm ln 29, prod ln 14.7, live ln 15, enc 3

❌ After `a` assns checked using before as reference
Assignments:         a
  Reference:         7
  Test:              4
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 4
  Mismatched Value:  4
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   3
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

❌ Before encountered assn for `cheese` (decl src ln 6) at asm ln 44, prod ln 11.20, live ln 12, enc 1 not found in after

❌ Before `cheese` (decl src ln 6) assn asm ln 26, prod ln 6.16, live ln 7, enc 0 coordinates don't match after assn asm ln 18, prod ln 6.16, live ln 10, enc 0
Checking equivalence of `cheese` (decl src ln 6) from
  assn asm ln 18, prod ln 6.16, live ln 10, enc 0
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !20, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
and
  assn asm ln 26, prod ln 6.16, live ln 7, enc 0
  %2 = load volatile i32, i32* %foo, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_2)
     (ReadLSB w32 (w32 0x0) foo_2)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_2)
     N0)
✅ Before `cheese` (decl src ln 6) assn asm ln 26, prod ln 6.16, live ln 7, enc 0 symbolic value matches after assn asm ln 18, prod ln 6.16, live ln 10, enc 0

❌ After `cheese` assns checked using before as reference
Assignments:         cheese
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   1
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 12, prod ln 2.16, live ln 3, enc 0
  i32 4
  (w32 0x4)
and
  assn asm ln 17, prod ln 2.16, live ln 3, enc 0
  i32 4
  (w32 0x4)
✅ Before `foo` (decl src ln 2) assn asm ln 17, prod ln 2.16, live ln 3, enc 0 symbolic value matches after assn asm ln 12, prod ln 2.16, live ln 3, enc 0

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 13, prod ln 3.15, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !20, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 19, prod ln 3.15, live ln 4, enc 1
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
✅ Before `foo` (decl src ln 2) assn asm ln 19, prod ln 3.15, live ln 4, enc 1 symbolic value matches after assn asm ln 13, prod ln 3.15, live ln 4, enc 1

❌ Before `foo` (decl src ln 2) assn asm ln 22, prod ln 4.15, live ln 5, enc 2 coordinates don't match after assn asm ln 15, prod ln 4.15, live ln 6, enc 2
Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 15, prod ln 4.15, live ln 6, enc 2
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, !tbaa !20, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 22, prod ln 4.15, live ln 5, enc 2
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
✅ Before `foo` (decl src ln 2) assn asm ln 22, prod ln 4.15, live ln 5, enc 2 symbolic value matches after assn asm ln 15, prod ln 4.15, live ln 6, enc 2

❌ Before `foo` (decl src ln 2) assn asm ln 25, prod ln 6.16, live ln 7, enc 3 coordinates don't match after assn asm ln 17, prod ln 6.16, live ln 10, enc 3
Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 17, prod ln 6.16, live ln 10, enc 3
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, !tbaa !20, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
and
  assn asm ln 25, prod ln 6.16, live ln 7, enc 3
  %2 = load volatile i32, i32* %foo, l6 c16
  (ReadLSB w32 (w32 0x0) foo_2)
Query to parse
array foo_2[4] : w32 -> w8 = symbolic
array foo_2[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_2)
     (ReadLSB w32 (w32 0x0) foo_2)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_2)
     N0)
✅ Before `foo` (decl src ln 2) assn asm ln 25, prod ln 6.16, live ln 7, enc 3 symbolic value matches after assn asm ln 17, prod ln 6.16, live ln 10, enc 3

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 19, prod ln 10.7, live ln 11, enc 4
  %foo.0.foo.0.17 = load volatile i32, i32* %foo, !tbaa !20, l10 c7
  (ReadLSB w32 (w32 0x0) foo_3)
and
  assn asm ln 36, prod ln 10.7, live ln 11, enc 4
  %7 = load volatile i32, i32* %foo, l10 c7
  (ReadLSB w32 (w32 0x0) foo_3)
Query to parse
array foo_3[4] : w32 -> w8 = symbolic
array foo_3[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_3)
     (ReadLSB w32 (w32 0x0) foo_3)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo_3)
     N0)
✅ Before `foo` (decl src ln 2) assn asm ln 36, prod ln 10.7, live ln 11, enc 4 symbolic value matches after assn asm ln 19, prod ln 10.7, live ln 11, enc 4

❌ After `foo` assns checked using before as reference
Assignments:         foo
  Reference:         5
  Test:              5
Matching:
  Matching Coords:   3
  Matching Value:    5
Consistency Errors:
  Mismatched Coords: 2
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `read1` (decl src ln 3) from
  assn asm ln 14, prod ln 3.15, live ln 4, enc 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !20, l3 c15
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 20, prod ln 3.15, live ln 4, enc 0
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
✅ Before `read1` (decl src ln 3) assn asm ln 20, prod ln 3.15, live ln 4, enc 0 symbolic value matches after assn asm ln 14, prod ln 3.15, live ln 4, enc 0

✅ After `read1` assns checked using before as reference
Assignments:         read1
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `read2` (decl src ln 4) from
  assn asm ln 16, prod ln 4.15, live ln 6, enc 0
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, !tbaa !20, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 23, prod ln 4.15, live ln 6, enc 0
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
✅ Before `read2` (decl src ln 4) assn asm ln 23, prod ln 4.15, live ln 6, enc 0 symbolic value matches after assn asm ln 16, prod ln 4.15, live ln 6, enc 0

✅ After `read2` assns checked using before as reference
Assignments:         read2
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

## Summary

Assignments:
  Reference:                16
  Test:                     12 ( 75.00% of ref )
Matching:
  Matching Coords:           5 ( 31.25% of ref )
  Matching Value:            8 ( 50.00% of ref )
Consistency Errors:
  Mismatched Coords:         7 ( 43.75% of ref )
  Mismatched Value:          4 ( 25.00% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           4 ( 25.00% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:         16 (100.00% of ref )
  Complete:                 16 (100.00% of ref )
  Within Time Limit:        16 (100.00% of ref )
  Within Fork Limit:        16 (100.00% of ref )
Test Execution:
  Function Covered:         12 (100.00% of test)
  Complete:                 12 (100.00% of test)
  Within Time Limit:        12 (100.00% of test)
  Within Fork Limit:        12 (100.00% of test)

❌ Some consistency checks failed
