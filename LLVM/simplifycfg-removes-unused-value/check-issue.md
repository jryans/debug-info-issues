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

Load from declared address of `foo` (decl src ln 2), asm ln 18
  %0 = load volatile i32, i32* %foo, l7 c7, asm ln 18
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 18, prod ln 7.7, live ln 8, enc None
Store to declared address of `foo` (decl src ln 2), asm ln 13
  const i32 4
  Added assignment asm ln 13, prod ln 2.16, live ln 4, enc None
Load from declared address of `beards` (decl src ln 4), asm ln 33
  %1 = load i32, i32* %beards, l15 c10, asm ln 33
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 33, prod ln 15.10, live ln 16, enc None
Store to declared address of `beards` (decl src ln 4), asm ln 28
  const i32 4
  Added assignment asm ln 28, prod ln 11.12, live ln 12, enc None
Store to declared address of `beards` (decl src ln 4), asm ln 23
  const i32 8
  Added assignment asm ln 23, prod ln 8.12, live ln 9, enc None
Store to declared address of `beards` (decl src ln 4), asm ln 15
  const i32 0
  Added assignment asm ln 15, prod ln 4.7, live ln 5, enc None
Store to declared address of `birds` (decl src ln 5), asm ln 29
  const i32 6
  🔔 Missing live ln, using produced ln + 1
  @dbg.declare without read users, removable
  Added assignment asm ln 29, prod ln 12.11, live ln 13, enc None
Store to declared address of `birds` (decl src ln 5), asm ln 24
  const i32 3
  @dbg.declare without read users, removable
  Added assignment asm ln 24, prod ln 9.11, live ln 10, enc None
Store to declared address of `birds` (decl src ln 5), asm ln 17
  const i32 0
  @dbg.declare without read users, removable
  Added assignment asm ln 17, prod ln 5.7, live ln 7, enc None

#### After variables

Load from declared address of `foo` (decl src ln 2), asm ln 15
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l7 c7, asm ln 15
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 15, prod ln 7.7, live ln 8, enc None
Store to declared address of `foo` (decl src ln 2), asm ln 12
  const i32 4
  Added assignment asm ln 12, prod ln 2.16, live ln 7, enc None
Value produced for `beards` (decl src ln 4), asm ln 13
  const i32 0
  Added assignment asm ln 13, prod ln 4.7, live ln 7, enc None
Value produced for `birds` (decl src ln 5), asm ln 14
  const i32 0
  Added assignment asm ln 14, prod ln 5.7, live ln 7, enc None
Value produced for `beards` (decl src ln 4), asm ln 18
  %. = select i1 %cmp, i32 8, i32 4, l10 c3, asm ln 17
  Added assignment asm ln 18, prod ln 10.7, live ln 15, enc None

#### Summary

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `foo`
  Assignment asm ln 13, prod ln 2.16, live ln 4, enc 0
  i32 4
  (w32 0x4)
Collected value for `beards`
  Assignment asm ln 15, prod ln 4.7, live ln 5, enc 0
  i32 0
  (w32 0x0)
Collected value for `birds`
  Assignment asm ln 17, prod ln 5.7, live ln 7, enc 0
  i32 0
  (w32 0x0)
Collected value for `foo`
  Assignment asm ln 18, prod ln 7.7, live ln 8, enc 1
  %0 = load volatile i32, i32* %foo, l7 c7
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `beards`
  Assignment asm ln 28, prod ln 11.12, live ln 12, enc 1
  i32 4
  (w32 0x4)
Collected value for `beards`
  Assignment asm ln 23, prod ln 8.12, live ln 9, enc 2
  i32 8
  (w32 0x8)
Collected value for `birds`
  Assignment asm ln 29, prod ln 12.11, live ln 13, enc 1
  i32 6
  (w32 0x6)
Collected value for `birds`
  Assignment asm ln 24, prod ln 9.11, live ln 10, enc 2
  i32 3
  (w32 0x3)
Collected value for `beards`
  Assignment asm ln 33, prod ln 15.10, live ln 16, enc 3
  %1 = load i32, i32* %beards, l15 c10
  (w32 0x8)

#### After values

Collected value for `foo`
  Assignment asm ln 12, prod ln 2.16, live ln 7, enc 0
  i32 4
  (w32 0x4)
Collected value for `beards`
  Assignment asm ln 13, prod ln 4.7, live ln 7, enc 0
  i32 0
  (w32 0x0)
Collected value for `birds`
  Assignment asm ln 14, prod ln 5.7, live ln 7, enc 0
  i32 0
  (w32 0x0)
Collected value for `foo`
  Assignment asm ln 15, prod ln 7.7, live ln 8, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l7 c7
  (ReadLSB w32 (w32 0x0) foo)
Collected value for `beards`
  Assignment asm ln 18, prod ln 10.7, live ln 15, enc 1
  %. = select i1 %cmp, i32 8, i32 4, l10 c3
  (Select w32 (Eq (w32 0x4)
                 (ReadLSB w32 (w32 0x0) foo))
             (w32 0x8)
             (w32 0x4))

### Assignments

#### Collation

Filtering before assignments: `foo` (decl src ln 2)

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 18, prod ln 7.7, live ln 8, enc 1
  %0 = load volatile i32, i32* %foo, l7 c7
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 13, prod ln 2.16, live ln 4, enc 0
  i32 4
  (w32 0x4)
Query to parse
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x4)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x4))

Filtering before assignments: `beards` (decl src ln 4)

Checking equivalence of `beards` (decl src ln 4) from
  assn asm ln 28, prod ln 11.12, live ln 12, enc 1
  i32 4
  (w32 0x4)
and
  assn asm ln 15, prod ln 4.7, live ln 5, enc 0
  i32 0
  (w32 0x0)

Checking equivalence of `beards` (decl src ln 4) from
  assn asm ln 23, prod ln 8.12, live ln 9, enc 2
  i32 8
  (w32 0x8)
and
  assn asm ln 28, prod ln 11.12, live ln 12, enc 1
  i32 4
  (w32 0x4)

Checking equivalence of `beards` (decl src ln 4) from
  assn asm ln 33, prod ln 15.10, live ln 16, enc 3
  %1 = load i32, i32* %beards, l15 c10
  (w32 0x8)
and
  assn asm ln 23, prod ln 8.12, live ln 9, enc 2
  i32 8
  (w32 0x8)
🔔 Removing: asm ln 33, prod ln 15.10, live ln 16, enc 3

Filtering before assignments: `birds` (decl src ln 5)

Checking equivalence of `birds` (decl src ln 5) from
  assn asm ln 29, prod ln 12.11, live ln 13, enc 1
  i32 6
  (w32 0x6)
and
  assn asm ln 17, prod ln 5.7, live ln 7, enc 0
  i32 0
  (w32 0x0)

Checking equivalence of `birds` (decl src ln 5) from
  assn asm ln 24, prod ln 9.11, live ln 10, enc 2
  i32 3
  (w32 0x3)
and
  assn asm ln 29, prod ln 12.11, live ln 13, enc 1
  i32 6
  (w32 0x6)

Filtering after assignments: `foo` (decl src ln 2)

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 15, prod ln 7.7, live ln 8, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l7 c7
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 12, prod ln 2.16, live ln 7, enc 0
  i32 4
  (w32 0x4)
Query to parse
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x4)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) foo)
     (w32 0x4))

Filtering after assignments: `beards` (decl src ln 4)

Checking equivalence of `beards` (decl src ln 4) from
  assn asm ln 18, prod ln 10.7, live ln 15, enc 1
  %. = select i1 %cmp, i32 8, i32 4, l10 c3
  (Select w32 (Eq (w32 0x4)
                 (ReadLSB w32 (w32 0x0) foo))
             (w32 0x8)
             (w32 0x4))
and
  assn asm ln 13, prod ln 4.7, live ln 7, enc 0
  i32 0
  (w32 0x0)
Query to parse
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (Select w32 (Eq (w32 0x4)
                     (ReadLSB w32 (w32 0x0) foo))
                 (w32 0x8)
                 (w32 0x4))
     (w32 0x0)))
Parsed query
(Eq (Select w32 (Eq (w32 0x4)
                     (ReadLSB w32 (w32 0x0) foo))
                 (w32 0x8)
                 (w32 0x4))
     (w32 0x0))

Collating encountered before assignments: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 4, enc 0
  asm ln 18, prod ln 7.7, live ln 8, enc 1
Collating encountered before assignments: `beards` (decl src ln 4)
  asm ln 15, prod ln 4.7, live ln 5, enc 0
  asm ln 28, prod ln 11.12, live ln 12, enc 1
  asm ln 23, prod ln 8.12, live ln 9, enc 2
Collating encountered before assignments: `birds` (decl src ln 5)
  asm ln 17, prod ln 5.7, live ln 7, enc 0
  asm ln 29, prod ln 12.11, live ln 13, enc 1
  asm ln 24, prod ln 9.11, live ln 10, enc 2

Collating encountered after assignments: `foo` (decl src ln 2)
  asm ln 12, prod ln 2.16, live ln 7, enc 0
  asm ln 15, prod ln 7.7, live ln 8, enc 1
Collating encountered after assignments: `beards` (decl src ln 4)
  asm ln 13, prod ln 4.7, live ln 7, enc 0
  asm ln 18, prod ln 10.7, live ln 15, enc 1
Collating encountered after assignments: `birds` (decl src ln 5)
  asm ln 14, prod ln 5.7, live ln 7, enc 0

#### Check after using before as reference

❌ Before encountered assn for `beards` (decl src ln 4) at asm ln 23, prod ln 8.12, live ln 9, enc 2 not found in after

❌ Before `beards` (decl src ln 4) assn asm ln 15, prod ln 4.7, live ln 5, enc 0 coordinates don't match after assn asm ln 13, prod ln 4.7, live ln 7, enc 0
Checking equivalence of `beards` (decl src ln 4) from
  assn asm ln 13, prod ln 4.7, live ln 7, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 15, prod ln 4.7, live ln 5, enc 0
  i32 0
  (w32 0x0)
✅ Before `beards` (decl src ln 4) assn asm ln 15, prod ln 4.7, live ln 5, enc 0 symbolic value matches after assn asm ln 13, prod ln 4.7, live ln 7, enc 0

❌ Before `beards` (decl src ln 4) assn asm ln 28, prod ln 11.12, live ln 12, enc 1 coordinates don't match after assn asm ln 18, prod ln 10.7, live ln 15, enc 1
Checking equivalence of `beards` (decl src ln 4) from
  assn asm ln 18, prod ln 10.7, live ln 15, enc 1
  %. = select i1 %cmp, i32 8, i32 4, l10 c3
  (Select w32 (Eq (w32 0x4)
                 (ReadLSB w32 (w32 0x0) foo))
             (w32 0x8)
             (w32 0x4))
and
  assn asm ln 28, prod ln 11.12, live ln 12, enc 1
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
❌ Before `beards` (decl src ln 4) assn asm ln 28, prod ln 11.12, live ln 12, enc 1 symbolic value doesn't match after assn asm ln 18, prod ln 10.7, live ln 15, enc 1

❌ After `beards` assns checked using before as reference
Assignments:         beards
  Reference:         3
  Test:              2
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 2
  Mismatched Value:  1
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

❌ Before encountered assn for `birds` (decl src ln 5) at asm ln 29, prod ln 12.11, live ln 13, enc 1 not found in after

❌ Before encountered assn for `birds` (decl src ln 5) at asm ln 24, prod ln 9.11, live ln 10, enc 2 not found in after

Checking equivalence of `birds` (decl src ln 5) from
  assn asm ln 14, prod ln 5.7, live ln 7, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 17, prod ln 5.7, live ln 7, enc 0
  i32 0
  (w32 0x0)
✅ Before `birds` (decl src ln 5) assn asm ln 17, prod ln 5.7, live ln 7, enc 0 symbolic value matches after assn asm ln 14, prod ln 5.7, live ln 7, enc 0

❌ After `birds` assns checked using before as reference
Assignments:         birds
  Reference:         3
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
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

❌ Before `foo` (decl src ln 2) assn asm ln 13, prod ln 2.16, live ln 4, enc 0 coordinates don't match after assn asm ln 12, prod ln 2.16, live ln 7, enc 0
Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 12, prod ln 2.16, live ln 7, enc 0
  i32 4
  (w32 0x4)
and
  assn asm ln 13, prod ln 2.16, live ln 4, enc 0
  i32 4
  (w32 0x4)
✅ Before `foo` (decl src ln 2) assn asm ln 13, prod ln 2.16, live ln 4, enc 0 symbolic value matches after assn asm ln 12, prod ln 2.16, live ln 7, enc 0

Checking equivalence of `foo` (decl src ln 2) from
  assn asm ln 15, prod ln 7.7, live ln 8, enc 1
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !18, l7 c7
  (ReadLSB w32 (w32 0x0) foo)
and
  assn asm ln 18, prod ln 7.7, live ln 8, enc 1
  %0 = load volatile i32, i32* %foo, l7 c7
  (ReadLSB w32 (w32 0x0) foo)
Query to parse
array foo[4] : w32 -> w8 = symbolic
array foo[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) foo)
     (ReadLSB w32 (w32 0x0) foo)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) foo)
     N0)
✅ Before `foo` (decl src ln 2) assn asm ln 18, prod ln 7.7, live ln 8, enc 1 symbolic value matches after assn asm ln 15, prod ln 7.7, live ln 8, enc 1

❌ After `foo` assns checked using before as reference
Assignments:         foo
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    2
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

## Summary

Assignments:
  Reference:                 8
  Test:                      5 ( 62.50% of ref )
Matching:
  Matching Coords:           2 ( 25.00% of ref )
  Matching Value:            4 ( 50.00% of ref )
Consistency Errors:
  Mismatched Coords:         3 ( 37.50% of ref )
  Mismatched Value:          1 ( 12.50% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           3 ( 37.50% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
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
  Function Covered:          5 (100.00% of test)
  Complete:                  5 (100.00% of test)
  Within Time Limit:         5 (100.00% of test)
  Within Fork Limit:         5 (100.00% of test)

❌ Some consistency checks failed
