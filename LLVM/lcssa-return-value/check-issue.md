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

warning: Linking two modules of different data layouts: 'memset64_Debug+Asserts.bc' is 'e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128' whereas 'klee-out-O0/final.bc' is 'e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128'

warning: Linking two modules of different target triples: 'memset64_Debug+Asserts.bc' is 'x86_64-apple-macosx13.0.0' whereas 'klee-out-O0/final.bc' is 'x86_64-unknown-linux-gnu'

warning: Linking two modules of different data layouts: 'memset64_Debug+Asserts.bc' is 'e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128' whereas 'klee-out-O2/final.bc' is 'e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128'

warning: Linking two modules of different target triples: 'memset64_Debug+Asserts.bc' is 'x86_64-apple-macosx13.0.0' whereas 'klee-out-O2/final.bc' is 'x86_64-unknown-linux-gnu'

## Function `example`

✅ Before and after function names match

### Variable events

#### Before variables

Store to declared address of `i` (decl src ln 12), asm ln 44
  %inc = add nsw i32 %9, 1, l12 c31, asm ln 43
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 44, prod ln 12.31, live ln 13, enc None
Load from declared address of `i` (decl src ln 12), asm ln 42
  %9 = load i32, i32* %i, l12 c31, asm ln 42
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 42, prod ln 12.31, live ln 13, enc None
Load from declared address of `i` (decl src ln 12), asm ln 36
  %7 = load i32, i32* %i, l13 c9, asm ln 36
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 36, prod ln 13.9, live ln 14, enc None
Load from declared address of `i` (decl src ln 12), asm ln 32
  %5 = load i32, i32* %i, l13 c19, asm ln 32
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 32, prod ln 13.19, live ln 14, enc None
Load from declared address of `i` (decl src ln 12), asm ln 27
  %4 = load i32, i32* %i, l12 c19, asm ln 27
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 27, prod ln 12.19, live ln 13, enc None
Store to declared address of `i` (decl src ln 12), asm ln 23
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 23, prod ln 12.12, live ln 13, enc None
Load from declared address of `sum` (decl src ln 15), asm ln 73
  %15 = load i32, i32* %sum, l19 c10, asm ln 73
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 73, prod ln 19.10, live ln 20, enc None
Store to declared address of `sum` (decl src ln 15), asm ln 66
  %add9 = add i32 %13, %12, l17 c9, asm ln 65
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 66, prod ln 17.9, live ln 18, enc None
Load from declared address of `sum` (decl src ln 15), asm ln 64
  %13 = load i32, i32* %sum, l17 c9, asm ln 64
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 64, prod ln 17.9, live ln 18, enc None
Store to declared address of `sum` (decl src ln 15), asm ln 49
  const i32 0
  Added assignment asm ln 49, prod ln 15.16, live ln 16, enc None
Store to declared address of `j` (decl src ln 16), asm ln 69
  %inc11 = add nsw i32 %14, 1, l16 c31, asm ln 68
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 69, prod ln 16.31, live ln 17, enc None
Load from declared address of `j` (decl src ln 16), asm ln 67
  %14 = load i32, i32* %j, l16 c31, asm ln 67
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 67, prod ln 16.31, live ln 17, enc None
Load from declared address of `j` (decl src ln 16), asm ln 60
  %11 = load i32, i32* %j, l17 c16, asm ln 60
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 60, prod ln 17.16, live ln 18, enc None
Load from declared address of `j` (decl src ln 16), asm ln 55
  %10 = load i32, i32* %j, l16 c19, asm ln 55
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 55, prod ln 16.19, live ln 17, enc None
Store to declared address of `j` (decl src ln 16), asm ln 51
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 51, prod ln 16.12, live ln 17, enc None

#### After variables

Load from declared address of `foo` (decl src ln 6), asm ln 125
  %wide.load46 = load <4 x i32>, <4 x i32>* %29, !tbaa !41, l17 c12, asm ln 125
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 125, prod ln 17.12, live ln 18, enc None
Value produced for `i` (decl src ln 12), asm ln 17
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 17, prod ln 12.12, live ln 13, enc None
After variable intrinsic with undef input, asm ln 650, ignoring undefined variable
  @dbg.value(i32 undef, !26), l15 c16

#### Summary

❌ 5 before variables found, 4 after variables found, 1 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `i`
  Assignment asm ln 23, prod ln 12.12, live ln 13, enc 0
  i32 0
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 27, prod ln 12.19, live ln 13, enc 1
  %4 = load i32, i32* %i, l12 c19
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 32, prod ln 13.19, live ln 14, enc 2
  %5 = load i32, i32* %i, l13 c19
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 36, prod ln 13.9, live ln 14, enc 3
  %7 = load i32, i32* %i, l13 c9
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 42, prod ln 12.31, live ln 13, enc 4
  %9 = load i32, i32* %i, l12 c31
  (w32 0x0)
Collected value for `i`
  Assignment asm ln 44, prod ln 12.31, live ln 13, enc 5
  %inc = add nsw i32 %9, 1, l12 c31
  (w32 0x1)
Collected value for `sum`
  Assignment asm ln 49, prod ln 15.16, live ln 16, enc 0
  i32 0
  (w32 0x0)
Collected value for `j`
  Assignment asm ln 51, prod ln 16.12, live ln 17, enc 0
  i32 0
  (w32 0x0)
Collected value for `j`
  Assignment asm ln 55, prod ln 16.19, live ln 17, enc 1
  %10 = load i32, i32* %j, l16 c19
  (w32 0x0)
Collected value for `j`
  Assignment asm ln 60, prod ln 17.16, live ln 18, enc 2
  %11 = load i32, i32* %j, l17 c16
  (w32 0x0)
Collected value for `sum`
  Assignment asm ln 64, prod ln 17.9, live ln 18, enc 1
  %13 = load i32, i32* %sum, l17 c9
  (w32 0x0)
Collected value for `sum`
  Assignment asm ln 66, prod ln 17.9, live ln 18, enc 2
  %add9 = add i32 %13, %12, l17 c9
  (Add w32 (Concat w32 (w8 0xAB)
                      (Concat w24 (w8 0xAB)
                                  (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref))))
          (Concat w32 (w8 0xAB)
                      (Concat w24 (w8 0xAB)
                                  (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref_1)))))
Collected value for `j`
  Assignment asm ln 67, prod ln 16.31, live ln 17, enc 3
  %14 = load i32, i32* %j, l16 c31
  (w32 0x0)
Collected value for `j`
  Assignment asm ln 69, prod ln 16.31, live ln 17, enc 4
  %inc11 = add nsw i32 %14, 1, l16 c31
  (w32 0x1)
Collected value for `sum`
  Assignment asm ln 73, prod ln 19.10, live ln 20, enc 3
  %15 = load i32, i32* %sum, l19 c10
  (Add w32 (w32 0x2A2A292A)
          (Add w32 (Concat w32 (w8 0xAB)
                               (Concat w24 (w8 0xAB)
                                           (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref))))
                   (Concat w32 (w8 0xAB)
                               (Concat w24 (w8 0xAB)
                                           (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref_1))))))

#### After values

Collected value for `i`
  Assignment asm ln 17, prod ln 12.12, live ln 13, enc 0
  i32 0
  (w32 0x0)
Collected value for `foo`
  Assignment asm ln 125, prod ln 17.12, live ln 18, enc 0
  %wide.load46 = load <4 x i32>, <4 x i32>* %29, !tbaa !41, l17 c12
  (Concat w128 (w8 0x57)
              (Concat w120 (w8 0x57)
                           (Concat w112 (w8 0x57)
                                        (Concat w104 (w8 0x56)
                                                     (Concat w96 (w8 0x57)
                                                                 (Concat w88 (w8 0x57)
                                                                             (Concat w80 (w8 0x57)
                                                                                         (Concat w72 (w8 0x56)
                                                                                                     (Concat w64 (w8 0x57)
                                                                                                                 (Concat w56 (w8 0x57)
                                                                                                                             (Concat w48 (w8 0x57)
                                                                                                                                         (Concat w40 (w8 0x56)
                                                                                                                                                     (Add w32 (Concat w32 (w8 0xAB)
                                                                                                                                                                          (Concat w24 (w8 0xAB)
                                                                                                                                                                                      (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref))))
                                                                                                                                                              (Concat w32 (w8 0xAB)
                                                                                                                                                                          (Concat w24 (w8 0xAB)
                                                                                                                                                                                      (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref_1)))))))))))))))))

### Assignments

#### Collation

Filtering before assignments: `i` (decl src ln 12)

Checking equivalence of `i` (decl src ln 12) from
  assn asm ln 27, prod ln 12.19, live ln 13, enc 1
  %4 = load i32, i32* %i, l12 c19
  (w32 0x0)
and
  assn asm ln 23, prod ln 12.12, live ln 13, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 27, prod ln 12.19, live ln 13, enc 1

Checking equivalence of `i` (decl src ln 12) from
  assn asm ln 32, prod ln 13.19, live ln 14, enc 2
  %5 = load i32, i32* %i, l13 c19
  (w32 0x0)
and
  assn asm ln 23, prod ln 12.12, live ln 13, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 32, prod ln 13.19, live ln 14, enc 2

Checking equivalence of `i` (decl src ln 12) from
  assn asm ln 36, prod ln 13.9, live ln 14, enc 3
  %7 = load i32, i32* %i, l13 c9
  (w32 0x0)
and
  assn asm ln 23, prod ln 12.12, live ln 13, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 36, prod ln 13.9, live ln 14, enc 3

Checking equivalence of `i` (decl src ln 12) from
  assn asm ln 42, prod ln 12.31, live ln 13, enc 4
  %9 = load i32, i32* %i, l12 c31
  (w32 0x0)
and
  assn asm ln 23, prod ln 12.12, live ln 13, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 42, prod ln 12.31, live ln 13, enc 4

Checking equivalence of `i` (decl src ln 12) from
  assn asm ln 44, prod ln 12.31, live ln 13, enc 5
  %inc = add nsw i32 %9, 1, l12 c31
  (w32 0x1)
and
  assn asm ln 23, prod ln 12.12, live ln 13, enc 0
  i32 0
  (w32 0x0)

Filtering before assignments: `sum` (decl src ln 15)

Checking equivalence of `sum` (decl src ln 15) from
  assn asm ln 64, prod ln 17.9, live ln 18, enc 1
  %13 = load i32, i32* %sum, l17 c9
  (w32 0x0)
and
  assn asm ln 49, prod ln 15.16, live ln 16, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 64, prod ln 17.9, live ln 18, enc 1

Checking equivalence of `sum` (decl src ln 15) from
  assn asm ln 66, prod ln 17.9, live ln 18, enc 2
  %add9 = add i32 %13, %12, l17 c9
  (Add w32 (Concat w32 (w8 0xAB)
                      (Concat w24 (w8 0xAB)
                                  (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref))))
          (Concat w32 (w8 0xAB)
                      (Concat w24 (w8 0xAB)
                                  (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref_1)))))
and
  assn asm ln 49, prod ln 15.16, live ln 16, enc 0
  i32 0
  (w32 0x0)
Query to parse
array memset.dst.deref[1] : w32 -> w8 = symbolic
array memset.dst.deref_1[1] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Concat w32 (w8 0xAB)
                          (Concat w24 (w8 0xAB)
                                      (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref))))
              (Concat w32 (w8 0xAB)
                          (Concat w24 (w8 0xAB)
                                      (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref_1)))))
     (w32 0x0)))
Parsed query
(Eq (Add w32 (Concat w32 (w8 0xAB)
                          (Concat w24 (w8 0xAB)
                                      (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref))))
              (Concat w32 (w8 0xAB)
                          (Concat w24 (w8 0xAB)
                                      (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref_1)))))
     (w32 0x0))

Checking equivalence of `sum` (decl src ln 15) from
  assn asm ln 73, prod ln 19.10, live ln 20, enc 3
  %15 = load i32, i32* %sum, l19 c10
  (Add w32 (w32 0x2A2A292A)
          (Add w32 (Concat w32 (w8 0xAB)
                               (Concat w24 (w8 0xAB)
                                           (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref))))
                   (Concat w32 (w8 0xAB)
                               (Concat w24 (w8 0xAB)
                                           (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref_1))))))
and
  assn asm ln 66, prod ln 17.9, live ln 18, enc 2
  %add9 = add i32 %13, %12, l17 c9
  (Add w32 (Concat w32 (w8 0xAB)
                      (Concat w24 (w8 0xAB)
                                  (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref))))
          (Concat w32 (w8 0xAB)
                      (Concat w24 (w8 0xAB)
                                  (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref_1)))))
Query to parse
array memset.dst.deref[1] : w32 -> w8 = symbolic
array memset.dst.deref_1[1] : w32 -> w8 = symbolic
array memset.dst.deref[1] : w32 -> w8 = symbolic
array memset.dst.deref_1[1] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x2A2A292A)
              N0:(Add w32 (Concat w32 (w8 0xAB)
                                      (Concat w24 (w8 0xAB)
                                                  (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref))))
                          (Concat w32 (w8 0xAB)
                                      (Concat w24 (w8 0xAB)
                                                  (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref_1))))))
     N0))
Parsed query
(Eq (Add w32 (w32 0x2A2A292A)
              N0:(Add w32 (Concat w32 (w8 0xAB)
                                      (Concat w24 (w8 0xAB)
                                                  (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref))))
                          (Concat w32 (w8 0xAB)
                                      (Concat w24 (w8 0xAB)
                                                  (Concat w16 (w8 0xAB) (Read w8 (w32 0x0) memset.dst.deref_1))))))
     N0)

Filtering before assignments: `j` (decl src ln 16)

Checking equivalence of `j` (decl src ln 16) from
  assn asm ln 55, prod ln 16.19, live ln 17, enc 1
  %10 = load i32, i32* %j, l16 c19
  (w32 0x0)
and
  assn asm ln 51, prod ln 16.12, live ln 17, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 55, prod ln 16.19, live ln 17, enc 1

Checking equivalence of `j` (decl src ln 16) from
  assn asm ln 60, prod ln 17.16, live ln 18, enc 2
  %11 = load i32, i32* %j, l17 c16
  (w32 0x0)
and
  assn asm ln 51, prod ln 16.12, live ln 17, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 60, prod ln 17.16, live ln 18, enc 2

Checking equivalence of `j` (decl src ln 16) from
  assn asm ln 67, prod ln 16.31, live ln 17, enc 3
  %14 = load i32, i32* %j, l16 c31
  (w32 0x0)
and
  assn asm ln 51, prod ln 16.12, live ln 17, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 67, prod ln 16.31, live ln 17, enc 3

Checking equivalence of `j` (decl src ln 16) from
  assn asm ln 69, prod ln 16.31, live ln 17, enc 4
  %inc11 = add nsw i32 %14, 1, l16 c31
  (w32 0x1)
and
  assn asm ln 51, prod ln 16.12, live ln 17, enc 0
  i32 0
  (w32 0x0)

Collating encountered before assignments: `i` (decl src ln 12)
  asm ln 23, prod ln 12.12, live ln 13, enc 0
  asm ln 44, prod ln 12.31, live ln 13, enc 1
Collating encountered before assignments: `sum` (decl src ln 15)
  asm ln 49, prod ln 15.16, live ln 16, enc 0
  asm ln 66, prod ln 17.9, live ln 18, enc 1
  asm ln 73, prod ln 19.10, live ln 20, enc 2
Collating encountered before assignments: `j` (decl src ln 16)
  asm ln 51, prod ln 16.12, live ln 17, enc 0
  asm ln 69, prod ln 16.31, live ln 17, enc 1

Collating encountered after assignments: `foo` (decl src ln 6)
  asm ln 125, prod ln 17.12, live ln 18, enc 0
Collating encountered after assignments: `i` (decl src ln 12)
  asm ln 17, prod ln 12.12, live ln 13, enc 0

#### Check after using before as reference

❌ Before encountered assns for `j` (decl src ln 16) not found in after
Assignments:         j
  Reference:         2
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   2
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

✅ After `bar` assns checked using before as reference
Assignments:         bar
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
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

PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.      Program arguments: /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x0000000110d6fe2d llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 61
1  check-debug-info         0x0000000110d7032b PrintStackTraceSignalHandler(void*) + 27
2  check-debug-info         0x0000000110d6e3c3 llvm::sys::RunSignalHandlers() + 115
3  check-debug-info         0x0000000110d715cf SignalHandler(int) + 223
4  libsystem_platform.dylib 0x00007ff800bb3fdd _sigtramp + 29
5  libsystem_platform.dylib 0x00000001164998e0 _sigtramp + 18446603375237552416
6  libsystem_c.dylib        0x00007ff800aaaa39 abort + 126
7  check-debug-info         0x000000010e034921 std::__1::__throw_out_of_range[abi:v160006](char const*) + 17
8  check-debug-info         0x000000010e01424f std::__1::map<Variable, std::__1::map<unsigned int, Assignment*, std::__1::less<unsigned int>, std::__1::allocator<std::__1::pair<unsigned int const, Assignment*> > >, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, std::__1::map<unsigned int, Assignment*, std::__1::less<unsigned int>, std::__1::allocator<std::__1::pair<unsigned int const, Assignment*> > > > > >::at(Variable const&) const + 63
9  check-debug-info         0x000000010e01269f checkAssignments(llvm::StringRef, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > > const&, std::__1::map<Variable, std::__1::map<unsigned int, Assignment*, std::__1::less<unsigned int>, std::__1::allocator<std::__1::pair<unsigned int const, Assignment*> > >, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, std::__1::map<unsigned int, Assignment*, std::__1::less<unsigned int>, std::__1::allocator<std::__1::pair<unsigned int const, Assignment*> > > > > > const&, ExecutionValidity const&, llvm::StringRef, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > > const&, std::__1::map<Variable, std::__1::map<unsigned int, Assignment*, std::__1::less<unsigned int>, std::__1::allocator<std::__1::pair<unsigned int const, Assignment*> > >, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, std::__1::map<unsigned int, Assignment*, std::__1::less<unsigned int>, std::__1::allocator<std::__1::pair<unsigned int const, Assignment*> > > > > > const&, ExecutionValidity const&, llvm::StringRef, llvm::Optional<std::__1::unique_ptr<llvm::raw_fd_ostream, std::__1::default_delete<llvm::raw_fd_ostream> > >&, AssignmentStats&) + 6895
10 check-debug-info         0x000000010e015610 checkFunction(llvm::SmallVector<ValuesCollector, 2u>&, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, AssignmentStats&) + 4784
11 check-debug-info         0x000000010e0167d8 main + 2376
12 dyld                     0x00007ff8007f9366 start + 1942
./check-issue.sh: line 6: 18901 Abort trap: 6           ${CHECK} ${O0_BC} ${O2_BC} ${CHECK_OPTS}
