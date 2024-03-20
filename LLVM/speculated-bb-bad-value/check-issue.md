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

Load from declared address of `foo` (decl src ln 2), asm ln 21
  %1 = load volatile i32, i32* %foo, l4 c15, asm ln 21
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 21, prod ln 4.15, live ln 5, enc None
Load from declared address of `foo` (decl src ln 2), asm ln 18
  %0 = load volatile i32, i32* %foo, l3 c14, asm ln 18
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 18, prod ln 3.14, live ln 4, enc None
Store to declared address of `foo` (decl src ln 2), asm ln 16
  const i32 4
  Added assignment asm ln 16, prod ln 2.16, live ln 3, enc None
Load from declared address of `read` (decl src ln 3), asm ln 25
  %2 = load i32, i32* %read, l7 c7, asm ln 25
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25, prod ln 7.7, live ln 8, enc None
Store to declared address of `read` (decl src ln 3), asm ln 19
  %0 = load volatile i32, i32* %foo, l3 c14, asm ln 18
  Added assignment asm ln 19, prod ln 3.14, live ln 4, enc None
Load from declared address of `read1` (decl src ln 4), asm ln 36
  %4 = load i32, i32* %read1, l10 c14, asm ln 36
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 36, prod ln 10.14, live ln 11, enc None
Load from declared address of `read1` (decl src ln 4), asm ln 30
  %3 = load i32, i32* %read1, l8 c14, asm ln 30
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 30, prod ln 8.14, live ln 9, enc None
Store to declared address of `read1` (decl src ln 4), asm ln 22
  %1 = load volatile i32, i32* %foo, l4 c15, asm ln 21
  Added assignment asm ln 22, prod ln 4.15, live ln 6, enc None
Load from declared address of `result` (decl src ln 6), asm ln 42
  %5 = load i32, i32* %result, l13 c10, asm ln 42
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 42, prod ln 13.10, live ln 14, enc None
Store to declared address of `result` (decl src ln 6), asm ln 38
  %sub = sub nsw i32 %4, 2, l10 c20, asm ln 37
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 38, prod ln 10.20, live ln 11, enc None
Store to declared address of `result` (decl src ln 6), asm ln 32
  %add = add nsw i32 %3, 2, l8 c20, asm ln 31
  Added assignment asm ln 32, prod ln 8.20, live ln 9, enc None
Store to declared address of `result` (decl src ln 6), asm ln 24
  const i32 0
  Added assignment asm ln 24, prod ln 6.7, live ln 7, enc None

#### After variables

Load from declared address of `foo` (decl src ln 2), asm ln 15
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15, asm ln 15
  Added assignment asm ln 15, prod ln 4.15, live ln 7, enc None
Load from declared address of `foo` (decl src ln 2), asm ln 13
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c14, asm ln 13
  Added assignment asm ln 13, prod ln 3.14, live ln 4, enc None
Store to declared address of `foo` (decl src ln 2), asm ln 12
  const i32 4
  Added assignment asm ln 12, prod ln 2.16, live ln 3, enc None
Value produced for `read` (decl src ln 3), asm ln 14
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c14, asm ln 13
  Added assignment asm ln 14, prod ln 3.14, live ln 4, enc None
Value produced for `read1` (decl src ln 4), asm ln 16
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15, asm ln 15
  Added assignment asm ln 16, prod ln 4.15, live ln 7, enc None
Value produced for `result` (decl src ln 6), asm ln 17
  const i32 0
  Added assignment asm ln 17, prod ln 6.7, live ln 7, enc None
Value produced for `result` (decl src ln 6), asm ln 19
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15, asm ln 15
  Added assignment asm ln 19, prod ln 6.15, live ln 7, enc None
Value produced for `result` (decl src ln 6), asm ln 20
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15, asm ln 15
  Added assignment asm ln 20, prod ln 6.15, live ln 7, enc None
Value produced for `result` (decl src ln 6), asm ln 23
  %result.0 = add i32 %result.0.v, %foo.0.foo.0.4, l7 c7, asm ln 22
  Added assignment asm ln 23, prod ln 7.7, live ln 13, enc None

#### Summary

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `foo`
  Assignment asm ln 16, prod ln 2.16, live ln 3, enc 0
  i32 4
  (w32 0x4)
Collected value for `foo`
  Assignment asm ln 18, prod ln 3.14, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read`
  Assignment asm ln 19, prod ln 3.14, live ln 4, enc 0
  %0 = load volatile i32, i32* %foo, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `foo`
  Assignment asm ln 21, prod ln 4.15, live ln 5, enc 2
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `read1`
  Assignment asm ln 22, prod ln 4.15, live ln 6, enc 0
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `result`
  Assignment asm ln 24, prod ln 6.7, live ln 7, enc 0
  i32 0
  (w32 0x0)
Collected value for `read`
  Assignment asm ln 25, prod ln 7.7, live ln 8, enc 1
  %2 = load i32, i32* %read, l7 c7
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read1`
  Assignment asm ln 30, prod ln 8.14, live ln 9, enc 1
  %3 = load i32, i32* %read1, l8 c14
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `read1`
  Assignment asm ln 36, prod ln 10.14, live ln 11, enc 2
  %4 = load i32, i32* %read1, l10 c14
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `result`
  Assignment asm ln 32, prod ln 8.20, live ln 9, enc 1
  %add = add nsw i32 %3, 2, l8 c20
  (Add w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `result`
  Assignment asm ln 38, prod ln 10.20, live ln 11, enc 2
  %sub = sub nsw i32 %4, 2, l10 c20
  (Add w32 (w32 0xFFFFFFFE)
          (ReadLSB w32 (w32 0x0) foo_1))
Collected value for `result`
  Assignment asm ln 42, prod ln 13.10, live ln 14, enc 3
  %5 = load i32, i32* %result, l13 c10
  (Add w32 (w32 0xFFFFFFFE)
          (ReadLSB w32 (w32 0x0) foo_1))

#### After values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `foo`
  Assignment asm ln 12, prod ln 2.16, live ln 3, enc 0
  i32 4
  (w32 0x4)
Collected value for `foo`
  Assignment asm ln 13, prod ln 3.14, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `read`
  Assignment asm ln 14, prod ln 3.14, live ln 4, enc 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `foo`
  Assignment asm ln 15, prod ln 4.15, live ln 7, enc 2
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `read1`
  Assignment asm ln 16, prod ln 4.15, live ln 7, enc 0
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `result`
  Assignment asm ln 17, prod ln 6.7, live ln 7, enc 0
  i32 0
  (w32 0x0)
Collected value for `result`
  Assignment asm ln 19, prod ln 6.15, live ln 7, enc 1
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `result`
  Assignment asm ln 20, prod ln 6.15, live ln 7, enc 2
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
Collected value for `result`
  Assignment asm ln 23, prod ln 7.7, live ln 13, enc 3
  %result.0 = add i32 %result.0.v, %foo.0.foo.0.4, l7 c7
  (Add w32 (Select w32 (Eq (w32 0x4)
                          (ReadLSB w32 (w32 0x0) foo))
                      (w32 0x2)
                      (w32 0xFFFFFFFE))
          (ReadLSB w32 (w32 0x0) foo_1))

### Assignments

#### Collation

Filtering before assignments: `foo` (decl src ln 2)

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 18, prod ln 3.14, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 16, prod ln 2.16, live ln 3, enc 0
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
  assn asm ln 21, prod ln 4.15, live ln 5, enc 2
  %1 = load volatile i32, i32* %foo, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 18, prod ln 3.14, live ln 4, enc 1
  %0 = load volatile i32, i32* %foo, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo))

Filtering before assignments: `read` (decl src ln 3)

Checking equivalence of `read` (decl src ln 3) from
  assn asm ln 25, prod ln 7.7, live ln 8, enc 1
  %2 = load i32, i32* %read, l7 c7
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 19, prod ln 3.14, live ln 4, enc 0
  %0 = load volatile i32, i32* %foo, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
🔔 Removing: asm ln 25, prod ln 7.7, live ln 8, enc 1

Filtering before assignments: `read1` (decl src ln 4)

Checking equivalence of `read1` (decl src ln 4) from
  assn asm ln 30, prod ln 8.14, live ln 9, enc 1
  %3 = load i32, i32* %read1, l8 c14
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 22, prod ln 4.15, live ln 6, enc 0
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
🔔 Removing: asm ln 30, prod ln 8.14, live ln 9, enc 1

Checking equivalence of `read1` (decl src ln 4) from
  assn asm ln 36, prod ln 10.14, live ln 11, enc 2
  %4 = load i32, i32* %read1, l10 c14
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 22, prod ln 4.15, live ln 6, enc 0
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
🔔 Removing: asm ln 36, prod ln 10.14, live ln 11, enc 2

Filtering before assignments: `result` (decl src ln 6)

Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 32, prod ln 8.20, live ln 9, enc 1
  %add = add nsw i32 %3, 2, l8 c20
  (Add w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 24, prod ln 6.7, live ln 7, enc 0
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

Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 38, prod ln 10.20, live ln 11, enc 2
  %sub = sub nsw i32 %4, 2, l10 c20
  (Add w32 (w32 0xFFFFFFFE)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 32, prod ln 8.20, live ln 9, enc 1
  %add = add nsw i32 %3, 2, l8 c20
  (Add w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0xFFFFFFFE)
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     (Add w32 (w32 0x2) N0)))
Parsed query
(Eq (Add w32 (w32 0xFFFFFFFE)
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     (Add w32 (w32 0x2) N0))

Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 42, prod ln 13.10, live ln 14, enc 3
  %5 = load i32, i32* %result, l13 c10
  (Add w32 (w32 0xFFFFFFFE)
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 38, prod ln 10.20, live ln 11, enc 2
  %sub = sub nsw i32 %4, 2, l10 c20
  (Add w32 (w32 0xFFFFFFFE)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Add w32 (w32 0xFFFFFFFE)
                 (ReadLSB w32 (w32 0x0) foo_1))
     N0))
Parsed query
(Eq N0:(Add w32 (w32 0xFFFFFFFE)
                 (ReadLSB w32 (w32 0x0) foo_1))
     N0)
🔔 Removing: asm ln 42, prod ln 13.10, live ln 14, enc 3

Filtering after assignments: `foo` (decl src ln 2)

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 13, prod ln 3.14, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c14
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
  assn asm ln 15, prod ln 4.15, live ln 7, enc 2
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 13, prod ln 3.14, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo_1)
     (ReadLSB w32 (w32 0x0) foo))

Filtering after assignments: `result` (decl src ln 6)

Pushed initial value onto stack: (ReadLSB w32 (w32 0x0) foo_1)
plus_uconst: (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
Result: (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 19, prod ln 6.15, live ln 7, enc 1
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
and
  assn asm ln 17, prod ln 6.7, live ln 7, enc 0
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

Pushed initial value onto stack: (ReadLSB w32 (w32 0x0) foo_1)
constu/s: (w64 0x2)
minus: (Sub w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
Result: (Sub w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 20, prod ln 6.15, live ln 7, enc 2
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (Sub w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
and
  assn asm ln 19, prod ln 6.15, live ln 7, enc 1
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Sub w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
              N1:(Extract w32 0 (w64 0x2)))
     (Add w32 N0 N1)))
Parsed query
(Eq (Sub w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
              N1:(Extract w32 0 (w64 0x2)))
     (Add w32 N0 N1))

Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 23, prod ln 7.7, live ln 13, enc 3
  %result.0 = add i32 %result.0.v, %foo.0.foo.0.4, l7 c7
  (Add w32 (Select w32 (Eq (w32 0x4)
                          (ReadLSB w32 (w32 0x0) foo))
                      (w32 0x2)
                      (w32 0xFFFFFFFE))
          (ReadLSB w32 (w32 0x0) foo_1))
and
  assn asm ln 20, prod ln 6.15, live ln 7, enc 2
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (Sub w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Select w32 (Eq (w32 0x4)
                              (ReadLSB w32 (w32 0x0) foo))
                          (w32 0x2)
                          (w32 0xFFFFFFFE))
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     (Sub w32 N0 (Extract w32 0 (w64 0x2)))))
Parsed query
(Eq (Add w32 (Select w32 (Eq (w32 0x4)
                              (ReadLSB w32 (w32 0x0) foo))
                          (w32 0x2)
                          (w32 0xFFFFFFFE))
              N0:(ReadLSB w32 (w32 0x0) foo_1))
     (Sub w32 N0 (Extract w32 0 (w64 0x2))))

Collating encountered before assignments: `foo` (decl src ln 2)
  asm ln 16, prod ln 2.16, live ln 3, enc 0
  asm ln 18, prod ln 3.14, live ln 4, enc 1
  asm ln 21, prod ln 4.15, live ln 5, enc 2
Collating encountered before assignments: `read` (decl src ln 3)
  asm ln 19, prod ln 3.14, live ln 4, enc 0
Collating encountered before assignments: `read1` (decl src ln 4)
  asm ln 22, prod ln 4.15, live ln 6, enc 0
Collating encountered before assignments: `result` (decl src ln 6)
  asm ln 24, prod ln 6.7, live ln 7, enc 0
  asm ln 32, prod ln 8.20, live ln 9, enc 1
  asm ln 38, prod ln 10.20, live ln 11, enc 2

Collating encountered after assignments: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 3, enc 0
  asm ln 13, prod ln 3.14, live ln 4, enc 1
  asm ln 15, prod ln 4.15, live ln 7, enc 2
Collating encountered after assignments: `read` (decl src ln 3)
  asm ln 14, prod ln 3.14, live ln 4, enc 0
Collating encountered after assignments: `read1` (decl src ln 4)
  asm ln 16, prod ln 4.15, live ln 7, enc 0
Collating encountered after assignments: `result` (decl src ln 6)
  asm ln 17, prod ln 6.7, live ln 7, enc 0
  asm ln 19, prod ln 6.15, live ln 7, enc 1
  asm ln 20, prod ln 6.15, live ln 7, enc 2
  asm ln 23, prod ln 7.7, live ln 13, enc 3

#### Check after using before as reference

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 12, prod ln 2.16, live ln 3, enc 0
  i32 4
  (w32 0x4)
and
  assn asm ln 16, prod ln 2.16, live ln 3, enc 0
  i32 4
  (w32 0x4)
✅ Before `foo` (decl src ln 2) assn asm ln 16, prod ln 2.16, live ln 3, enc 0 symbolic value matches after assn asm ln 12, prod ln 2.16, live ln 3, enc 0

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 13, prod ln 3.14, live ln 4, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 18, prod ln 3.14, live ln 4, enc 1
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
✅ Before `foo` (decl src ln 2) assn asm ln 18, prod ln 3.14, live ln 4, enc 1 symbolic value matches after assn asm ln 13, prod ln 3.14, live ln 4, enc 1

❌ Before `foo` (decl src ln 2) assn asm ln 21, prod ln 4.15, live ln 5, enc 2 coordinates don't match after assn asm ln 15, prod ln 4.15, live ln 7, enc 2
Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 15, prod ln 4.15, live ln 7, enc 2
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 21, prod ln 4.15, live ln 5, enc 2
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
✅ Before `foo` (decl src ln 2) assn asm ln 21, prod ln 4.15, live ln 5, enc 2 symbolic value matches after assn asm ln 15, prod ln 4.15, live ln 7, enc 2

❌ After `foo` assns checked using before as reference
Assignments:         foo
  Reference:         3
  Test:              3
Matching:
  Matching Coords:   2
  Matching Value:    3
Consistency Errors:
  Mismatched Coords: 1
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

Checking equivalence of `read` (decl src ln 3) from
  assn asm ln 14, prod ln 3.14, live ln 4, enc 0
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c14
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 19, prod ln 3.14, live ln 4, enc 0
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
✅ Before `read` (decl src ln 3) assn asm ln 19, prod ln 3.14, live ln 4, enc 0 symbolic value matches after assn asm ln 14, prod ln 3.14, live ln 4, enc 0

✅ After `read` assns checked using before as reference
Assignments:         read
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

❌ Before `read1` (decl src ln 4) assn asm ln 22, prod ln 4.15, live ln 6, enc 0 coordinates don't match after assn asm ln 16, prod ln 4.15, live ln 7, enc 0
Checking equivalence of `read1` (decl src ln 4) from
  assn asm ln 16, prod ln 4.15, live ln 7, enc 0
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (ReadLSB w32 (w32 0x0) foo_1)
and
  assn asm ln 22, prod ln 4.15, live ln 6, enc 0
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
✅ Before `read1` (decl src ln 4) assn asm ln 22, prod ln 4.15, live ln 6, enc 0 symbolic value matches after assn asm ln 16, prod ln 4.15, live ln 7, enc 0

❌ After `read1` assns checked using before as reference
Assignments:         read1
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
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

Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 17, prod ln 6.7, live ln 7, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 24, prod ln 6.7, live ln 7, enc 0
  i32 0
  (w32 0x0)
✅ Before `result` (decl src ln 6) assn asm ln 24, prod ln 6.7, live ln 7, enc 0 symbolic value matches after assn asm ln 17, prod ln 6.7, live ln 7, enc 0

❌ Before `result` (decl src ln 6) assn asm ln 32, prod ln 8.20, live ln 9, enc 1 coordinates don't match after assn asm ln 19, prod ln 6.15, live ln 7, enc 1
Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 19, prod ln 6.15, live ln 7, enc 1
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
and
  assn asm ln 32, prod ln 8.20, live ln 9, enc 1
  %add = add nsw i32 %3, 2, l8 c20
  (Add w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (ReadLSB w32 (w32 0x0) foo_1)
              (Extract w32 0 (w64 0x2)))
     (Add w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) foo_1))))
Parsed query
(Eq (Add w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
              (Extract w32 0 (w64 0x2)))
     (Add w32 (w32 0x2) N0))
✅ Before `result` (decl src ln 6) assn asm ln 32, prod ln 8.20, live ln 9, enc 1 symbolic value matches after assn asm ln 19, prod ln 6.15, live ln 7, enc 1

❌ Before `result` (decl src ln 6) assn asm ln 38, prod ln 10.20, live ln 11, enc 2 coordinates don't match after assn asm ln 20, prod ln 6.15, live ln 7, enc 2
Checking equivalence of `result` (decl src ln 6) from
  assn asm ln 20, prod ln 6.15, live ln 7, enc 2
  %foo.0.foo.0.4 = load volatile i32, i32* %foo, !tbaa !19, l4 c15
  (Sub w32 (ReadLSB w32 (w32 0x0) foo_1)
          (Extract w32 0 (w64 0x2)))
and
  assn asm ln 38, prod ln 10.20, live ln 11, enc 2
  %sub = sub nsw i32 %4, 2, l10 c20
  (Add w32 (w32 0xFFFFFFFE)
          (ReadLSB w32 (w32 0x0) foo_1))
Query to parse
array foo_1[4] : w32 -> w8 = symbolic
array foo_1[4] : w32 -> w8 = symbolic
(query [] (Eq (Sub w32 (ReadLSB w32 (w32 0x0) foo_1)
              (Extract w32 0 (w64 0x2)))
     (Add w32 (w32 0xFFFFFFFE)
              (ReadLSB w32 (w32 0x0) foo_1))))
Parsed query
(Eq (Sub w32 N0:(ReadLSB w32 (w32 0x0) foo_1)
              (Extract w32 0 (w64 0x2)))
     (Add w32 (w32 0xFFFFFFFE) N0))
✅ Before `result` (decl src ln 6) assn asm ln 38, prod ln 10.20, live ln 11, enc 2 symbolic value matches after assn asm ln 20, prod ln 6.15, live ln 7, enc 2

❌ After encountered assn for `result` (decl src ln 6) at asm ln 23, prod ln 7.7, live ln 13, enc 3 not found in before

❌ After `result` assns checked using before as reference
Assignments:         result
  Reference:         3
  Test:              4
Matching:
  Matching Coords:   1
  Matching Value:    3
Consistency Errors:
  Mismatched Coords: 2
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

## Summary

Assignments:
  Reference:                 8
  Test:                      9 (112.50% of ref )
Matching:
  Matching Coords:           4 ( 50.00% of ref )
  Matching Value:            8 (100.00% of ref )
Consistency Errors:
  Mismatched Coords:         4 ( 50.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           0 (  0.00% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           1 ( 11.11% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          8 (100.00% of ref )
  Complete:                  8 (100.00% of ref )
  Within Time Limit:         8 (100.00% of ref )
  Within Fork Limit:         8 (100.00% of ref )
Test Execution:
  Function Covered:          9 (100.00% of test)
  Complete:                  9 (100.00% of test)
  Within Time Limit:         9 (100.00% of test)
  Within Fork Limit:         9 (100.00% of test)

❌ Some consistency checks failed
