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

❌ After encountered assn for `foo` (decl src ln 6) at asm ln 125, prod ln 17.12, live ln 18, enc 0 not found in before

❌ After `foo` assns checked using before as reference
Assignments:         foo
  Reference:         0
  Test:              1
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
  Test Not in Ref:   1
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

❌ Before encountered assn for `i` (decl src ln 12) at asm ln 44, prod ln 12.31, live ln 13, enc 1 not found in after

Checking equivalence of `i` (decl src ln 12) from
  assn asm ln 17, prod ln 12.12, live ln 13, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 23, prod ln 12.12, live ln 13, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 12) assn asm ln 23, prod ln 12.12, live ln 13, enc 0 symbolic value matches after assn asm ln 17, prod ln 12.12, live ln 13, enc 0

❌ After `i` assns checked using before as reference
Assignments:         i
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
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

❌ Before encountered assn for `sum` (decl src ln 15) at asm ln 49, prod ln 15.16, live ln 16, enc 0 not found in after

❌ Before encountered assn for `sum` (decl src ln 15) at asm ln 66, prod ln 17.9, live ln 18, enc 1 not found in after

❌ Before encountered assn for `sum` (decl src ln 15) at asm ln 73, prod ln 19.10, live ln 20, enc 2 not found in after

❌ After `sum` assns checked using before as reference
Assignments:         sum
  Reference:         3
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
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

## Function `memset`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `dst` (decl src ln 12), asm ln 118
  %4 = load i8*, i8** %dst.addr, l16 c10, asm ln 118
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 118, prod ln 16.10, live ln 17, enc None
Load from declared address of `dst` (decl src ln 12), asm ln 97
  %0 = load i8*, i8** %dst.addr, l13 c13, asm ln 97
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 97, prod ln 13.13, live ln 14, enc None
Store to declared address of `dst` (decl src ln 12), asm ln 90
  arg 0
  Added assignment asm ln 90, prod ln 12.0, live ln 13, enc None
Load from declared address of `s` (decl src ln 12), asm ln 109
  %2 = load i32, i32* %s.addr, l15 c12, asm ln 109
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 109, prod ln 15.12, live ln 16, enc None
Store to declared address of `s` (decl src ln 12), asm ln 92
  arg 1
  Added assignment asm ln 92, prod ln 12.0, live ln 13, enc None
Store to declared address of `count` (decl src ln 12), asm ln 104
  %dec = add i64 %1, -1, l14 c15, asm ln 103
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 104, prod ln 14.15, live ln 15, enc None
Load from declared address of `count` (decl src ln 12), asm ln 102
  %1 = load i64, i64* %count.addr, l14 c15, asm ln 102
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 102, prod ln 14.15, live ln 15, enc None
Store to declared address of `count` (decl src ln 12), asm ln 94
  arg 2
  Added assignment asm ln 94, prod ln 12.0, live ln 13, enc None
Store to declared address of `a` (decl src ln 13), asm ln 113
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7, asm ln 112
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 113, prod ln 15.7, live ln 16, enc None
Load from declared address of `a` (decl src ln 13), asm ln 111
  %3 = load i8*, i8** %a, l15 c7, asm ln 111
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 111, prod ln 15.7, live ln 16, enc None
Store to declared address of `a` (decl src ln 13), asm ln 98
  %0 = load i8*, i8** %dst.addr, l13 c13, asm ln 97
  Added assignment asm ln 98, prod ln 13.13, live ln 14, enc None

#### After variables

Load from declared address of `dst` (decl src ln 12), asm ln 704
  %4 = load i8*, i8** %dst.addr, l16 c10, asm ln 704
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 704, prod ln 16.10, live ln 17, enc None
Load from declared address of `dst` (decl src ln 12), asm ln 683
  %0 = load i8*, i8** %dst.addr, l13 c13, asm ln 683
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 683, prod ln 13.13, live ln 14, enc None
Store to declared address of `dst` (decl src ln 12), asm ln 676
  arg 0
  Added assignment asm ln 676, prod ln 12.0, live ln 13, enc None
Load from declared address of `s` (decl src ln 12), asm ln 695
  %2 = load i32, i32* %s.addr, l15 c12, asm ln 695
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 695, prod ln 15.12, live ln 16, enc None
Store to declared address of `s` (decl src ln 12), asm ln 678
  arg 1
  Added assignment asm ln 678, prod ln 12.0, live ln 13, enc None
Store to declared address of `count` (decl src ln 12), asm ln 690
  %dec = add i64 %1, -1, l14 c15, asm ln 689
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 690, prod ln 14.15, live ln 15, enc None
Load from declared address of `count` (decl src ln 12), asm ln 688
  %1 = load i64, i64* %count.addr, l14 c15, asm ln 688
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 688, prod ln 14.15, live ln 15, enc None
Store to declared address of `count` (decl src ln 12), asm ln 680
  arg 2
  Added assignment asm ln 680, prod ln 12.0, live ln 13, enc None
Store to declared address of `a` (decl src ln 13), asm ln 699
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7, asm ln 698
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 699, prod ln 15.7, live ln 16, enc None
Load from declared address of `a` (decl src ln 13), asm ln 697
  %3 = load i8*, i8** %a, l15 c7, asm ln 697
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 697, prod ln 15.7, live ln 16, enc None
Store to declared address of `a` (decl src ln 13), asm ln 684
  %0 = load i8*, i8** %dst.addr, l13 c13, asm ln 683
  Added assignment asm ln 684, prod ln 13.13, live ln 14, enc None

#### Summary

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memset.c`
[0mCollected value for `dst`
  Assignment asm ln 90, prod ln 12.0, live ln 13, enc 0
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
Collected value for `s`
  Assignment asm ln 92, prod ln 12.0, live ln 13, enc 0
  i32 %s
  (ReadLSB w32 (w32 0x0) memset.s)
Collected value for `count`
  Assignment asm ln 94, prod ln 12.0, live ln 13, enc 0
  i64 %count
  (ReadLSB w64 (w32 0x0) memset.count)
Collected value for `dst`
  Assignment asm ln 97, prod ln 13.13, live ln 14, enc 1
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
Collected value for `a`
  Assignment asm ln 98, prod ln 13.13, live ln 14, enc 0
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
Collected value for `count`
  Assignment asm ln 102, prod ln 14.15, live ln 15, enc 1
  %1 = load i64, i64* %count.addr, l14 c15
  (ReadLSB w64 (w32 0x0) memset.count)
Collected value for `count`
  Assignment asm ln 104, prod ln 14.15, live ln 15, enc 2
  %dec = add i64 %1, -1, l14 c15
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memset.count))
Collected value for `s`
  Assignment asm ln 109, prod ln 15.12, live ln 16, enc 1
  %2 = load i32, i32* %s.addr, l15 c12
  (ReadLSB w32 (w32 0x0) memset.s)
Collected value for `dst`
  Assignment asm ln 118, prod ln 16.10, live ln 17, enc 2
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %4 = load i8*, i8** %dst.addr, l16 c10
  (w64 0x81E3D7BD4621BBAC)
Collected value for `a`
  Assignment asm ln 111, prod ln 15.7, live ln 16, enc 1
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %3 = load i8*, i8** %a, l15 c7
  (w64 0x81E3D7BD4621BBAC)
Collected value for `a`
  Assignment asm ln 113, prod ln 15.7, live ln 16, enc 2
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x6AC9DD0D98FEBCE6)
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7
  (w64 0x6AC9DD0D98FEBCE6)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m
🔔 Unable to execute all before program states

#### After values

Collected value for `dst`
  Assignment asm ln 676, prod ln 12.0, live ln 13, enc 0
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
Collected value for `s`
  Assignment asm ln 678, prod ln 12.0, live ln 13, enc 0
  i32 %s
  (ReadLSB w32 (w32 0x0) memset.s)
Collected value for `count`
  Assignment asm ln 680, prod ln 12.0, live ln 13, enc 0
  i64 %count
  (ReadLSB w64 (w32 0x0) memset.count)
Collected value for `dst`
  Assignment asm ln 683, prod ln 13.13, live ln 14, enc 1
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
Collected value for `a`
  Assignment asm ln 684, prod ln 13.13, live ln 14, enc 0
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
Collected value for `count`
  Assignment asm ln 688, prod ln 14.15, live ln 15, enc 1
  %1 = load i64, i64* %count.addr, l14 c15
  (ReadLSB w64 (w32 0x0) memset.count)
Collected value for `count`
  Assignment asm ln 690, prod ln 14.15, live ln 15, enc 2
  %dec = add i64 %1, -1, l14 c15
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memset.count))
Collected value for `s`
  Assignment asm ln 695, prod ln 15.12, live ln 16, enc 1
  %2 = load i32, i32* %s.addr, l15 c12
  (ReadLSB w32 (w32 0x0) memset.s)
Collected value for `dst`
  Assignment asm ln 704, prod ln 16.10, live ln 17, enc 2
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %4 = load i8*, i8** %dst.addr, l16 c10
  (w64 0x81E3D7BD4621BBAC)
Collected value for `a`
  Assignment asm ln 697, prod ln 15.7, live ln 16, enc 1
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %3 = load i8*, i8** %a, l15 c7
  (w64 0x81E3D7BD4621BBAC)
Collected value for `a`
  Assignment asm ln 699, prod ln 15.7, live ln 16, enc 2
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x1)
  Created deref expr (ReadLSB w64 (w32 0x1) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x6AC9DD0D98FEBCE6)
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7
  (w64 0x6AC9DD0D98FEBCE6)
[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m[0;35mKLEE: WARNING: Skipping fork (max-forks reached)
[0m
🔔 Unable to execute all after program states

### Assignments

#### Collation

Filtering before assignments: `dst` (decl src ln 12)

Checking equivalence of `dst` (decl src ln 12) from
  assn asm ln 97, prod ln 13.13, live ln 14, enc 1
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 90, prod ln 12.0, live ln 13, enc 0
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
🔔 Removing: asm ln 97, prod ln 13.13, live ln 14, enc 1

Checking equivalence of `dst` (decl src ln 12) from
  assn asm ln 118, prod ln 16.10, live ln 17, enc 2
  %4 = load i8*, i8** %dst.addr, l16 c10
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 90, prod ln 12.0, live ln 13, enc 0
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
🔔 Removing: asm ln 118, prod ln 16.10, live ln 17, enc 2

Filtering before assignments: `s` (decl src ln 12)

Checking equivalence of `s` (decl src ln 12) from
  assn asm ln 109, prod ln 15.12, live ln 16, enc 1
  %2 = load i32, i32* %s.addr, l15 c12
  (ReadLSB w32 (w32 0x0) memset.s)
and
  assn asm ln 92, prod ln 12.0, live ln 13, enc 0
  i32 %s
  (ReadLSB w32 (w32 0x0) memset.s)
Query to parse
array memset.s[4] : w32 -> w8 = symbolic
array memset.s[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) memset.s)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) memset.s)
     N0)
🔔 Removing: asm ln 109, prod ln 15.12, live ln 16, enc 1

Filtering before assignments: `count` (decl src ln 12)

Checking equivalence of `count` (decl src ln 12) from
  assn asm ln 102, prod ln 14.15, live ln 15, enc 1
  %1 = load i64, i64* %count.addr, l14 c15
  (ReadLSB w64 (w32 0x0) memset.count)
and
  assn asm ln 94, prod ln 12.0, live ln 13, enc 0
  i64 %count
  (ReadLSB w64 (w32 0x0) memset.count)
Query to parse
array memset.count[8] : w32 -> w8 = symbolic
array memset.count[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) memset.count)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) memset.count)
     N0)
🔔 Removing: asm ln 102, prod ln 14.15, live ln 15, enc 1

Checking equivalence of `count` (decl src ln 12) from
  assn asm ln 104, prod ln 14.15, live ln 15, enc 2
  %dec = add i64 %1, -1, l14 c15
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memset.count))
and
  assn asm ln 94, prod ln 12.0, live ln 13, enc 0
  i64 %count
  (ReadLSB w64 (w32 0x0) memset.count)
Query to parse
array memset.count[8] : w32 -> w8 = symbolic
array memset.count[8] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
              N0:(ReadLSB w64 (w32 0x0) memset.count))
     N0))
Parsed query
(Eq (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
              N0:(ReadLSB w64 (w32 0x0) memset.count))
     N0)

Filtering before assignments: `a` (decl src ln 13)

Checking equivalence of `a` (decl src ln 13) from
  assn asm ln 111, prod ln 15.7, live ln 16, enc 1
  %3 = load i8*, i8** %a, l15 c7
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 98, prod ln 13.13, live ln 14, enc 0
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
🔔 Removing: asm ln 111, prod ln 15.7, live ln 16, enc 1

Checking equivalence of `a` (decl src ln 13) from
  assn asm ln 113, prod ln 15.7, live ln 16, enc 2
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7
  (w64 0x6AC9DD0D98FEBCE6)
and
  assn asm ln 98, prod ln 13.13, live ln 14, enc 0
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)

Filtering after assignments: `dst` (decl src ln 12)

Checking equivalence of `dst` (decl src ln 12) from
  assn asm ln 683, prod ln 13.13, live ln 14, enc 1
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 676, prod ln 12.0, live ln 13, enc 0
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
🔔 Removing: asm ln 683, prod ln 13.13, live ln 14, enc 1

Checking equivalence of `dst` (decl src ln 12) from
  assn asm ln 704, prod ln 16.10, live ln 17, enc 2
  %4 = load i8*, i8** %dst.addr, l16 c10
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 676, prod ln 12.0, live ln 13, enc 0
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
🔔 Removing: asm ln 704, prod ln 16.10, live ln 17, enc 2

Filtering after assignments: `s` (decl src ln 12)

Checking equivalence of `s` (decl src ln 12) from
  assn asm ln 695, prod ln 15.12, live ln 16, enc 1
  %2 = load i32, i32* %s.addr, l15 c12
  (ReadLSB w32 (w32 0x0) memset.s)
and
  assn asm ln 678, prod ln 12.0, live ln 13, enc 0
  i32 %s
  (ReadLSB w32 (w32 0x0) memset.s)
Query to parse
array memset.s[4] : w32 -> w8 = symbolic
array memset.s[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) memset.s)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) memset.s)
     N0)
🔔 Removing: asm ln 695, prod ln 15.12, live ln 16, enc 1

Filtering after assignments: `count` (decl src ln 12)

Checking equivalence of `count` (decl src ln 12) from
  assn asm ln 688, prod ln 14.15, live ln 15, enc 1
  %1 = load i64, i64* %count.addr, l14 c15
  (ReadLSB w64 (w32 0x0) memset.count)
and
  assn asm ln 680, prod ln 12.0, live ln 13, enc 0
  i64 %count
  (ReadLSB w64 (w32 0x0) memset.count)
Query to parse
array memset.count[8] : w32 -> w8 = symbolic
array memset.count[8] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w64 (w32 0x0) memset.count)
     N0))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) memset.count)
     N0)
🔔 Removing: asm ln 688, prod ln 14.15, live ln 15, enc 1

Checking equivalence of `count` (decl src ln 12) from
  assn asm ln 690, prod ln 14.15, live ln 15, enc 2
  %dec = add i64 %1, -1, l14 c15
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memset.count))
and
  assn asm ln 680, prod ln 12.0, live ln 13, enc 0
  i64 %count
  (ReadLSB w64 (w32 0x0) memset.count)
Query to parse
array memset.count[8] : w32 -> w8 = symbolic
array memset.count[8] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
              N0:(ReadLSB w64 (w32 0x0) memset.count))
     N0))
Parsed query
(Eq (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
              N0:(ReadLSB w64 (w32 0x0) memset.count))
     N0)

Filtering after assignments: `a` (decl src ln 13)

Checking equivalence of `a` (decl src ln 13) from
  assn asm ln 697, prod ln 15.7, live ln 16, enc 1
  %3 = load i8*, i8** %a, l15 c7
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 684, prod ln 13.13, live ln 14, enc 0
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
🔔 Removing: asm ln 697, prod ln 15.7, live ln 16, enc 1

Checking equivalence of `a` (decl src ln 13) from
  assn asm ln 699, prod ln 15.7, live ln 16, enc 2
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7
  (w64 0x6AC9DD0D98FEBCE6)
and
  assn asm ln 684, prod ln 13.13, live ln 14, enc 0
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)

Collating encountered before assignments: `dst` (decl src ln 12)
  asm ln 90, prod ln 12.0, live ln 13, enc 0
Collating encountered before assignments: `s` (decl src ln 12)
  asm ln 92, prod ln 12.0, live ln 13, enc 0
Collating encountered before assignments: `count` (decl src ln 12)
  asm ln 94, prod ln 12.0, live ln 13, enc 0
  asm ln 104, prod ln 14.15, live ln 15, enc 1
Collating encountered before assignments: `a` (decl src ln 13)
  asm ln 98, prod ln 13.13, live ln 14, enc 0
  asm ln 113, prod ln 15.7, live ln 16, enc 1

Collating encountered after assignments: `dst` (decl src ln 12)
  asm ln 676, prod ln 12.0, live ln 13, enc 0
Collating encountered after assignments: `s` (decl src ln 12)
  asm ln 678, prod ln 12.0, live ln 13, enc 0
Collating encountered after assignments: `count` (decl src ln 12)
  asm ln 680, prod ln 12.0, live ln 13, enc 0
  asm ln 690, prod ln 14.15, live ln 15, enc 1
Collating encountered after assignments: `a` (decl src ln 13)
  asm ln 684, prod ln 13.13, live ln 14, enc 0
  asm ln 699, prod ln 15.7, live ln 16, enc 1

#### Check after using before as reference

Checking equivalence of `a` (decl src ln 13) from
  assn asm ln 684, prod ln 13.13, live ln 14, enc 0
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 98, prod ln 13.13, live ln 14, enc 0
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
✅ Before `a` (decl src ln 13) assn asm ln 98, prod ln 13.13, live ln 14, enc 0 symbolic value matches after assn asm ln 684, prod ln 13.13, live ln 14, enc 0

Checking equivalence of `a` (decl src ln 13) from
  assn asm ln 699, prod ln 15.7, live ln 16, enc 1
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7
  (w64 0x6AC9DD0D98FEBCE6)
and
  assn asm ln 113, prod ln 15.7, live ln 16, enc 1
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7
  (w64 0x6AC9DD0D98FEBCE6)
✅ Before `a` (decl src ln 13) assn asm ln 113, prod ln 15.7, live ln 16, enc 1 symbolic value matches after assn asm ln 699, prod ln 15.7, live ln 16, enc 1

✅ After `a` assns checked using before as reference
Assignments:         a
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   2
  Matching Value:    2
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
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `count` (decl src ln 12) from
  assn asm ln 680, prod ln 12.0, live ln 13, enc 0
  i64 %count
  (ReadLSB w64 (w32 0x0) memset.count)
and
  assn asm ln 94, prod ln 12.0, live ln 13, enc 0
  i64 %count
  (ReadLSB w64 (w32 0x0) memset.count)
Query to parse
array memset.count[8] : w32 -> w8 = symbolic
array memset.count[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) memset.count)
     (ReadLSB w64 (w32 0x0) memset.count)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) memset.count)
     N0)
✅ Before `count` (decl src ln 12) assn asm ln 94, prod ln 12.0, live ln 13, enc 0 symbolic value matches after assn asm ln 680, prod ln 12.0, live ln 13, enc 0

Checking equivalence of `count` (decl src ln 12) from
  assn asm ln 690, prod ln 14.15, live ln 15, enc 1
  %dec = add i64 %1, -1, l14 c15
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memset.count))
and
  assn asm ln 104, prod ln 14.15, live ln 15, enc 1
  %dec = add i64 %1, -1, l14 c15
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memset.count))
Query to parse
array memset.count[8] : w32 -> w8 = symbolic
array memset.count[8] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
              (ReadLSB w64 (w32 0x0) memset.count))
     (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
              (ReadLSB w64 (w32 0x0) memset.count))))
Parsed query
(Eq N0:(Add w64 (w64 0xFFFFFFFFFFFFFFFF)
                 (ReadLSB w64 (w32 0x0) memset.count))
     N0)
✅ Before `count` (decl src ln 12) assn asm ln 104, prod ln 14.15, live ln 15, enc 1 symbolic value matches after assn asm ln 690, prod ln 14.15, live ln 15, enc 1

✅ After `count` assns checked using before as reference
Assignments:         count
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   2
  Matching Value:    2
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
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `dst` (decl src ln 12) from
  assn asm ln 676, prod ln 12.0, live ln 13, enc 0
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 90, prod ln 12.0, live ln 13, enc 0
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
✅ Before `dst` (decl src ln 12) assn asm ln 90, prod ln 12.0, live ln 13, enc 0 symbolic value matches after assn asm ln 676, prod ln 12.0, live ln 13, enc 0

✅ After `dst` assns checked using before as reference
Assignments:         dst
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
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

Checking equivalence of `s` (decl src ln 12) from
  assn asm ln 678, prod ln 12.0, live ln 13, enc 0
  i32 %s
  (ReadLSB w32 (w32 0x0) memset.s)
and
  assn asm ln 92, prod ln 12.0, live ln 13, enc 0
  i32 %s
  (ReadLSB w32 (w32 0x0) memset.s)
Query to parse
array memset.s[4] : w32 -> w8 = symbolic
array memset.s[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) memset.s)
     (ReadLSB w32 (w32 0x0) memset.s)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) memset.s)
     N0)
✅ Before `s` (decl src ln 12) assn asm ln 92, prod ln 12.0, live ln 13, enc 0 symbolic value matches after assn asm ln 678, prod ln 12.0, live ln 13, enc 0

✅ After `s` assns checked using before as reference
Assignments:         s
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
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: false

## Summary

Assignments:
  Reference:                13
  Test:                      8 ( 61.54% of ref )
Matching:
  Matching Coords:           7 ( 53.85% of ref )
  Matching Value:            7 ( 53.85% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           6 ( 46.15% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           1 ( 12.50% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:         11 ( 84.62% of ref )
  Complete:                  5 ( 38.46% of ref )
  Within Time Limit:        11 ( 84.62% of ref )
  Within Fork Limit:         5 ( 38.46% of ref )
Test Execution:
  Function Covered:          8 (100.00% of test)
  Complete:                  2 ( 25.00% of test)
  Within Time Limit:         8 (100.00% of test)
  Within Fork Limit:         2 ( 25.00% of test)

❌ Some consistency checks failed
