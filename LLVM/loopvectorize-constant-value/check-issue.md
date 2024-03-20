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
Load from declared address of `sum` (decl src ln 15), asm ln 72
  %15 = load i32, i32* %sum, l19 c10, asm ln 72
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 72, prod ln 19.10, live ln 20, enc None
Store to declared address of `sum` (decl src ln 15), asm ln 65
  %add9 = add i32 %13, %12, l17 c9, asm ln 64
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 65, prod ln 17.9, live ln 18, enc None
Load from declared address of `sum` (decl src ln 15), asm ln 63
  %13 = load i32, i32* %sum, l17 c9, asm ln 63
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 63, prod ln 17.9, live ln 18, enc None
Store to declared address of `sum` (decl src ln 15), asm ln 49
  const i32 0
  Added assignment asm ln 49, prod ln 15.16, live ln 16, enc None
Store to declared address of `j` (decl src ln 16), asm ln 68
  %inc11 = add nsw i32 %14, 1, l16 c27, asm ln 67
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 68, prod ln 16.27, live ln 17, enc None
Load from declared address of `j` (decl src ln 16), asm ln 66
  %14 = load i32, i32* %j, l16 c27, asm ln 66
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 66, prod ln 16.27, live ln 17, enc None
Load from declared address of `j` (decl src ln 16), asm ln 59
  %11 = load i32, i32* %j, l17 c16, asm ln 59
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 59, prod ln 17.16, live ln 18, enc None
Load from declared address of `j` (decl src ln 16), asm ln 54
  %10 = load i32, i32* %j, l16 c15, asm ln 54
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 54, prod ln 16.15, live ln 17, enc None

#### After variables

Value produced for `i` (decl src ln 12), asm ln 17
  const i32 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 17, prod ln 12.12, live ln 13, enc None
Value produced for `sum` (decl src ln 15), asm ln 124
  const i32 0
  Added assignment asm ln 124, prod ln 15.16, live ln 19, enc None
Value produced for `sum` (decl src ln 15), asm ln 125
  const i32 0
  Added assignment asm ln 125, prod ln 15.16, live ln 19, enc None

#### Summary

❌ 5 before variables found, 4 after variables found, 1 mismatched

### Symbolic values

#### Before values

Collected value for `i`
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
  Assignment asm ln 54, prod ln 16.15, live ln 17, enc 0
  %10 = load i32, i32* %j, l16 c15
  (w32 0xABABABAB)
Collected value for `j`
  Assignment asm ln 59, prod ln 17.16, live ln 18, enc 1
  %11 = load i32, i32* %j, l17 c16
  (w32 0xABABABAB)
[0;1;31mKLEE: ERROR: example.c:17: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

Collected value for `i`
  Assignment asm ln 17, prod ln 12.12, live ln 13, enc 0
  i32 0
  (w32 0x0)
Collected value for `sum`
  Assignment asm ln 124, prod ln 15.16, live ln 19, enc 0
  i32 0
  (w32 0x0)
Collected value for `sum`
  Assignment asm ln 125, prod ln 15.16, live ln 19, enc 1
  i32 0
  (w32 0x0)

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

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `sum` (decl src ln 15) from
  assn asm ln 65, prod ln 17.9, live ln 18, enc None
  %add9 = add i32 %13, %12, l17 c9
and
  assn asm ln 72, prod ln 19.10, live ln 20, enc None
  %15 = load i32, i32* %sum, l19 c10
🔔 Removing: asm ln 65, prod ln 17.9, live ln 18, enc None

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `sum` (decl src ln 15) from
  assn asm ln 63, prod ln 17.9, live ln 18, enc None
  %13 = load i32, i32* %sum, l17 c9
and
  assn asm ln 72, prod ln 19.10, live ln 20, enc None
  %15 = load i32, i32* %sum, l19 c10
🔔 Removing: asm ln 63, prod ln 17.9, live ln 18, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `sum` (decl src ln 15) from
  assn asm ln 49, prod ln 15.16, live ln 16, enc 0
  i32 0
and
  assn asm ln 72, prod ln 19.10, live ln 20, enc None
  %15 = load i32, i32* %sum, l19 c10

Filtering before assignments: `j` (decl src ln 16)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `j` (decl src ln 16) from
  assn asm ln 66, prod ln 16.27, live ln 17, enc None
  %14 = load i32, i32* %j, l16 c27
and
  assn asm ln 68, prod ln 16.27, live ln 17, enc None
  %inc11 = add nsw i32 %14, 1, l16 c27
🔔 Removing: asm ln 66, prod ln 16.27, live ln 17, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `j` (decl src ln 16) from
  assn asm ln 54, prod ln 16.15, live ln 17, enc 0
  %10 = load i32, i32* %j, l16 c15
and
  assn asm ln 68, prod ln 16.27, live ln 17, enc None
  %inc11 = add nsw i32 %14, 1, l16 c27

Checking equivalence of `j` (decl src ln 16) from
  assn asm ln 59, prod ln 17.16, live ln 18, enc 1
  %11 = load i32, i32* %j, l17 c16
  (w32 0xABABABAB)
and
  assn asm ln 54, prod ln 16.15, live ln 17, enc 0
  %10 = load i32, i32* %j, l16 c15
  (w32 0xABABABAB)
🔔 Removing: asm ln 59, prod ln 17.16, live ln 18, enc 1

Filtering after assignments: `sum` (decl src ln 15)

Checking equivalence of `sum` (decl src ln 15) from
  assn asm ln 125, prod ln 15.16, live ln 19, enc 1
  i32 0
  (w32 0x0)
and
  assn asm ln 124, prod ln 15.16, live ln 19, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 125, prod ln 15.16, live ln 19, enc 1

Collating encountered before assignments: `i` (decl src ln 12)
  asm ln 23, prod ln 12.12, live ln 13, enc 0
  asm ln 44, prod ln 12.31, live ln 13, enc 1
Collating encountered before assignments: `sum` (decl src ln 15)
❌ Assignment asm ln 72, prod ln 19.10, live ln 20, enc None for `sum` (decl src ln 15) was not encountered during execution
  asm ln 49, prod ln 15.16, live ln 16, enc 0
Collating encountered before assignments: `j` (decl src ln 16)
❌ Assignment asm ln 68, prod ln 16.27, live ln 17, enc None for `j` (decl src ln 16) was not encountered during execution
  asm ln 54, prod ln 16.15, live ln 17, enc 0

Collating encountered after assignments: `i` (decl src ln 12)
  asm ln 17, prod ln 12.12, live ln 13, enc 0
Collating encountered after assignments: `sum` (decl src ln 15)
  asm ln 124, prod ln 15.16, live ln 19, enc 0

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
  Function Covered:  false
  Complete:          false
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
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

✅ After `foo` assns checked using before as reference
Assignments:         foo
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
  Function Covered:  false
  Complete:          false
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
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

❌ Before assn asm ln 72, prod ln 19.10, live ln 20, enc None for `sum` (decl src ln 15) was not encountered during execution

❌ Before `sum` (decl src ln 15) assn asm ln 49, prod ln 15.16, live ln 16, enc 0 coordinates don't match after assn asm ln 124, prod ln 15.16, live ln 19, enc 0
Checking equivalence of `sum` (decl src ln 15) from
  assn asm ln 124, prod ln 15.16, live ln 19, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 49, prod ln 15.16, live ln 16, enc 0
  i32 0
  (w32 0x0)
✅ Before `sum` (decl src ln 15) assn asm ln 49, prod ln 15.16, live ln 16, enc 0 symbolic value matches after assn asm ln 124, prod ln 15.16, live ln 19, enc 0

❌ After `sum` assns checked using before as reference
Assignments:         sum
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  1
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Reference Execution:
  Function Covered:  false
  Complete:          false
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

Load from declared address of `dst` (decl src ln 12), asm ln 117
  %4 = load i8*, i8** %dst.addr, l16 c10, asm ln 117
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 117, prod ln 16.10, live ln 17, enc None
Load from declared address of `dst` (decl src ln 12), asm ln 96
  %0 = load i8*, i8** %dst.addr, l13 c13, asm ln 96
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 96, prod ln 13.13, live ln 14, enc None
Store to declared address of `dst` (decl src ln 12), asm ln 89
  arg 0
  Added assignment asm ln 89, prod ln 12.0, live ln 13, enc None
Load from declared address of `s` (decl src ln 12), asm ln 108
  %2 = load i32, i32* %s.addr, l15 c12, asm ln 108
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 108, prod ln 15.12, live ln 16, enc None
Store to declared address of `s` (decl src ln 12), asm ln 91
  arg 1
  Added assignment asm ln 91, prod ln 12.0, live ln 13, enc None
Store to declared address of `count` (decl src ln 12), asm ln 103
  %dec = add i64 %1, -1, l14 c15, asm ln 102
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 103, prod ln 14.15, live ln 15, enc None
Load from declared address of `count` (decl src ln 12), asm ln 101
  %1 = load i64, i64* %count.addr, l14 c15, asm ln 101
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 101, prod ln 14.15, live ln 15, enc None
Store to declared address of `count` (decl src ln 12), asm ln 93
  arg 2
  Added assignment asm ln 93, prod ln 12.0, live ln 13, enc None
Store to declared address of `a` (decl src ln 13), asm ln 112
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7, asm ln 111
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 112, prod ln 15.7, live ln 16, enc None
Load from declared address of `a` (decl src ln 13), asm ln 110
  %3 = load i8*, i8** %a, l15 c7, asm ln 110
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 110, prod ln 15.7, live ln 16, enc None
Store to declared address of `a` (decl src ln 13), asm ln 97
  %0 = load i8*, i8** %dst.addr, l13 c13, asm ln 96
  Added assignment asm ln 97, prod ln 13.13, live ln 14, enc None

#### After variables

Load from declared address of `dst` (decl src ln 12), asm ln 179
  %4 = load i8*, i8** %dst.addr, l16 c10, asm ln 179
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 179, prod ln 16.10, live ln 17, enc None
Load from declared address of `dst` (decl src ln 12), asm ln 158
  %0 = load i8*, i8** %dst.addr, l13 c13, asm ln 158
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 158, prod ln 13.13, live ln 14, enc None
Store to declared address of `dst` (decl src ln 12), asm ln 151
  arg 0
  Added assignment asm ln 151, prod ln 12.0, live ln 13, enc None
Load from declared address of `s` (decl src ln 12), asm ln 170
  %2 = load i32, i32* %s.addr, l15 c12, asm ln 170
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 170, prod ln 15.12, live ln 16, enc None
Store to declared address of `s` (decl src ln 12), asm ln 153
  arg 1
  Added assignment asm ln 153, prod ln 12.0, live ln 13, enc None
Store to declared address of `count` (decl src ln 12), asm ln 165
  %dec = add i64 %1, -1, l14 c15, asm ln 164
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 165, prod ln 14.15, live ln 15, enc None
Load from declared address of `count` (decl src ln 12), asm ln 163
  %1 = load i64, i64* %count.addr, l14 c15, asm ln 163
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 163, prod ln 14.15, live ln 15, enc None
Store to declared address of `count` (decl src ln 12), asm ln 155
  arg 2
  Added assignment asm ln 155, prod ln 12.0, live ln 13, enc None
Store to declared address of `a` (decl src ln 13), asm ln 174
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7, asm ln 173
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 174, prod ln 15.7, live ln 16, enc None
Load from declared address of `a` (decl src ln 13), asm ln 172
  %3 = load i8*, i8** %a, l15 c7, asm ln 172
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 172, prod ln 15.7, live ln 16, enc None
Store to declared address of `a` (decl src ln 13), asm ln 159
  %0 = load i8*, i8** %dst.addr, l13 c13, asm ln 158
  Added assignment asm ln 159, prod ln 13.13, live ln 14, enc None

#### Summary

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `runtime/Freestanding/memset.c`
[0mCollected value for `dst`
  Assignment asm ln 89, prod ln 12.0, live ln 13, enc 0
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
Collected value for `s`
  Assignment asm ln 91, prod ln 12.0, live ln 13, enc 0
  i32 %s
  (ReadLSB w32 (w32 0x0) memset.s)
Collected value for `count`
  Assignment asm ln 93, prod ln 12.0, live ln 13, enc 0
  i64 %count
  (ReadLSB w64 (w32 0x0) memset.count)
Collected value for `dst`
  Assignment asm ln 96, prod ln 13.13, live ln 14, enc 1
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
Collected value for `a`
  Assignment asm ln 97, prod ln 13.13, live ln 14, enc 0
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
Collected value for `count`
  Assignment asm ln 101, prod ln 14.15, live ln 15, enc 1
  %1 = load i64, i64* %count.addr, l14 c15
  (ReadLSB w64 (w32 0x0) memset.count)
Collected value for `count`
  Assignment asm ln 103, prod ln 14.15, live ln 15, enc 2
  %dec = add i64 %1, -1, l14 c15
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memset.count))
Collected value for `s`
  Assignment asm ln 108, prod ln 15.12, live ln 16, enc 1
  %2 = load i32, i32* %s.addr, l15 c12
  (ReadLSB w32 (w32 0x0) memset.s)
Collected value for `dst`
  Assignment asm ln 117, prod ln 16.10, live ln 17, enc 2
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %4 = load i8*, i8** %dst.addr, l16 c10
  (w64 0x81E3D7BD4621BBAC)
Collected value for `a`
  Assignment asm ln 110, prod ln 15.7, live ln 16, enc 1
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %3 = load i8*, i8** %a, l15 c7
  (w64 0x81E3D7BD4621BBAC)
Collected value for `a`
  Assignment asm ln 112, prod ln 15.7, live ln 16, enc 2
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
  Assignment asm ln 151, prod ln 12.0, live ln 13, enc 0
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
Collected value for `s`
  Assignment asm ln 153, prod ln 12.0, live ln 13, enc 0
  i32 %s
  (ReadLSB w32 (w32 0x0) memset.s)
Collected value for `count`
  Assignment asm ln 155, prod ln 12.0, live ln 13, enc 0
  i64 %count
  (ReadLSB w64 (w32 0x0) memset.count)
Collected value for `dst`
  Assignment asm ln 158, prod ln 13.13, live ln 14, enc 1
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
Collected value for `a`
  Assignment asm ln 159, prod ln 13.13, live ln 14, enc 0
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
Collected value for `count`
  Assignment asm ln 163, prod ln 14.15, live ln 15, enc 1
  %1 = load i64, i64* %count.addr, l14 c15
  (ReadLSB w64 (w32 0x0) memset.count)
Collected value for `count`
  Assignment asm ln 165, prod ln 14.15, live ln 15, enc 2
  %dec = add i64 %1, -1, l14 c15
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memset.count))
Collected value for `s`
  Assignment asm ln 170, prod ln 15.12, live ln 16, enc 1
  %2 = load i32, i32* %s.addr, l15 c12
  (ReadLSB w32 (w32 0x0) memset.s)
Collected value for `dst`
  Assignment asm ln 179, prod ln 16.10, live ln 17, enc 2
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %4 = load i8*, i8** %dst.addr, l16 c10
  (w64 0x81E3D7BD4621BBAC)
Collected value for `a`
  Assignment asm ln 172, prod ln 15.7, live ln 16, enc 1
  Concrete pointer resolves to memset.dst.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) memset.dst.deref)
  Replaced concrete pointer with hash (w64 0x81E3D7BD4621BBAC)
  %3 = load i8*, i8** %a, l15 c7
  (w64 0x81E3D7BD4621BBAC)
Collected value for `a`
  Assignment asm ln 174, prod ln 15.7, live ln 16, enc 2
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
  assn asm ln 96, prod ln 13.13, live ln 14, enc 1
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 89, prod ln 12.0, live ln 13, enc 0
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
🔔 Removing: asm ln 96, prod ln 13.13, live ln 14, enc 1

Checking equivalence of `dst` (decl src ln 12) from
  assn asm ln 117, prod ln 16.10, live ln 17, enc 2
  %4 = load i8*, i8** %dst.addr, l16 c10
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 89, prod ln 12.0, live ln 13, enc 0
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
🔔 Removing: asm ln 117, prod ln 16.10, live ln 17, enc 2

Filtering before assignments: `s` (decl src ln 12)

Checking equivalence of `s` (decl src ln 12) from
  assn asm ln 108, prod ln 15.12, live ln 16, enc 1
  %2 = load i32, i32* %s.addr, l15 c12
  (ReadLSB w32 (w32 0x0) memset.s)
and
  assn asm ln 91, prod ln 12.0, live ln 13, enc 0
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
🔔 Removing: asm ln 108, prod ln 15.12, live ln 16, enc 1

Filtering before assignments: `count` (decl src ln 12)

Checking equivalence of `count` (decl src ln 12) from
  assn asm ln 101, prod ln 14.15, live ln 15, enc 1
  %1 = load i64, i64* %count.addr, l14 c15
  (ReadLSB w64 (w32 0x0) memset.count)
and
  assn asm ln 93, prod ln 12.0, live ln 13, enc 0
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
🔔 Removing: asm ln 101, prod ln 14.15, live ln 15, enc 1

Checking equivalence of `count` (decl src ln 12) from
  assn asm ln 103, prod ln 14.15, live ln 15, enc 2
  %dec = add i64 %1, -1, l14 c15
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memset.count))
and
  assn asm ln 93, prod ln 12.0, live ln 13, enc 0
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
  assn asm ln 110, prod ln 15.7, live ln 16, enc 1
  %3 = load i8*, i8** %a, l15 c7
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 97, prod ln 13.13, live ln 14, enc 0
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
🔔 Removing: asm ln 110, prod ln 15.7, live ln 16, enc 1

Checking equivalence of `a` (decl src ln 13) from
  assn asm ln 112, prod ln 15.7, live ln 16, enc 2
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7
  (w64 0x6AC9DD0D98FEBCE6)
and
  assn asm ln 97, prod ln 13.13, live ln 14, enc 0
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)

Filtering after assignments: `dst` (decl src ln 12)

Checking equivalence of `dst` (decl src ln 12) from
  assn asm ln 158, prod ln 13.13, live ln 14, enc 1
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 151, prod ln 12.0, live ln 13, enc 0
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
🔔 Removing: asm ln 158, prod ln 13.13, live ln 14, enc 1

Checking equivalence of `dst` (decl src ln 12) from
  assn asm ln 179, prod ln 16.10, live ln 17, enc 2
  %4 = load i8*, i8** %dst.addr, l16 c10
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 151, prod ln 12.0, live ln 13, enc 0
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
🔔 Removing: asm ln 179, prod ln 16.10, live ln 17, enc 2

Filtering after assignments: `s` (decl src ln 12)

Checking equivalence of `s` (decl src ln 12) from
  assn asm ln 170, prod ln 15.12, live ln 16, enc 1
  %2 = load i32, i32* %s.addr, l15 c12
  (ReadLSB w32 (w32 0x0) memset.s)
and
  assn asm ln 153, prod ln 12.0, live ln 13, enc 0
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
🔔 Removing: asm ln 170, prod ln 15.12, live ln 16, enc 1

Filtering after assignments: `count` (decl src ln 12)

Checking equivalence of `count` (decl src ln 12) from
  assn asm ln 163, prod ln 14.15, live ln 15, enc 1
  %1 = load i64, i64* %count.addr, l14 c15
  (ReadLSB w64 (w32 0x0) memset.count)
and
  assn asm ln 155, prod ln 12.0, live ln 13, enc 0
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
🔔 Removing: asm ln 163, prod ln 14.15, live ln 15, enc 1

Checking equivalence of `count` (decl src ln 12) from
  assn asm ln 165, prod ln 14.15, live ln 15, enc 2
  %dec = add i64 %1, -1, l14 c15
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memset.count))
and
  assn asm ln 155, prod ln 12.0, live ln 13, enc 0
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
  assn asm ln 172, prod ln 15.7, live ln 16, enc 1
  %3 = load i8*, i8** %a, l15 c7
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 159, prod ln 13.13, live ln 14, enc 0
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
🔔 Removing: asm ln 172, prod ln 15.7, live ln 16, enc 1

Checking equivalence of `a` (decl src ln 13) from
  assn asm ln 174, prod ln 15.7, live ln 16, enc 2
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7
  (w64 0x6AC9DD0D98FEBCE6)
and
  assn asm ln 159, prod ln 13.13, live ln 14, enc 0
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)

Collating encountered before assignments: `dst` (decl src ln 12)
  asm ln 89, prod ln 12.0, live ln 13, enc 0
Collating encountered before assignments: `s` (decl src ln 12)
  asm ln 91, prod ln 12.0, live ln 13, enc 0
Collating encountered before assignments: `count` (decl src ln 12)
  asm ln 93, prod ln 12.0, live ln 13, enc 0
  asm ln 103, prod ln 14.15, live ln 15, enc 1
Collating encountered before assignments: `a` (decl src ln 13)
  asm ln 97, prod ln 13.13, live ln 14, enc 0
  asm ln 112, prod ln 15.7, live ln 16, enc 1

Collating encountered after assignments: `dst` (decl src ln 12)
  asm ln 151, prod ln 12.0, live ln 13, enc 0
Collating encountered after assignments: `s` (decl src ln 12)
  asm ln 153, prod ln 12.0, live ln 13, enc 0
Collating encountered after assignments: `count` (decl src ln 12)
  asm ln 155, prod ln 12.0, live ln 13, enc 0
  asm ln 165, prod ln 14.15, live ln 15, enc 1
Collating encountered after assignments: `a` (decl src ln 13)
  asm ln 159, prod ln 13.13, live ln 14, enc 0
  asm ln 174, prod ln 15.7, live ln 16, enc 1

#### Check after using before as reference

Checking equivalence of `a` (decl src ln 13) from
  assn asm ln 159, prod ln 13.13, live ln 14, enc 0
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 97, prod ln 13.13, live ln 14, enc 0
  %0 = load i8*, i8** %dst.addr, l13 c13
  (w64 0x81E3D7BD4621BBAC)
✅ Before `a` (decl src ln 13) assn asm ln 97, prod ln 13.13, live ln 14, enc 0 symbolic value matches after assn asm ln 159, prod ln 13.13, live ln 14, enc 0

Checking equivalence of `a` (decl src ln 13) from
  assn asm ln 174, prod ln 15.7, live ln 16, enc 1
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7
  (w64 0x6AC9DD0D98FEBCE6)
and
  assn asm ln 112, prod ln 15.7, live ln 16, enc 1
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1, l15 c7
  (w64 0x6AC9DD0D98FEBCE6)
✅ Before `a` (decl src ln 13) assn asm ln 112, prod ln 15.7, live ln 16, enc 1 symbolic value matches after assn asm ln 174, prod ln 15.7, live ln 16, enc 1

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
  assn asm ln 155, prod ln 12.0, live ln 13, enc 0
  i64 %count
  (ReadLSB w64 (w32 0x0) memset.count)
and
  assn asm ln 93, prod ln 12.0, live ln 13, enc 0
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
✅ Before `count` (decl src ln 12) assn asm ln 93, prod ln 12.0, live ln 13, enc 0 symbolic value matches after assn asm ln 155, prod ln 12.0, live ln 13, enc 0

Checking equivalence of `count` (decl src ln 12) from
  assn asm ln 165, prod ln 14.15, live ln 15, enc 1
  %dec = add i64 %1, -1, l14 c15
  (Add w64 (w64 0xFFFFFFFFFFFFFFFF)
          (ReadLSB w64 (w32 0x0) memset.count))
and
  assn asm ln 103, prod ln 14.15, live ln 15, enc 1
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
✅ Before `count` (decl src ln 12) assn asm ln 103, prod ln 14.15, live ln 15, enc 1 symbolic value matches after assn asm ln 165, prod ln 14.15, live ln 15, enc 1

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
  assn asm ln 151, prod ln 12.0, live ln 13, enc 0
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
and
  assn asm ln 89, prod ln 12.0, live ln 13, enc 0
  i8* %dst
  (w64 0x81E3D7BD4621BBAC)
✅ Before `dst` (decl src ln 12) assn asm ln 89, prod ln 12.0, live ln 13, enc 0 symbolic value matches after assn asm ln 151, prod ln 12.0, live ln 13, enc 0

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
  assn asm ln 153, prod ln 12.0, live ln 13, enc 0
  i32 %s
  (ReadLSB w32 (w32 0x0) memset.s)
and
  assn asm ln 91, prod ln 12.0, live ln 13, enc 0
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
✅ Before `s` (decl src ln 12) assn asm ln 91, prod ln 12.0, live ln 13, enc 0 symbolic value matches after assn asm ln 153, prod ln 12.0, live ln 13, enc 0

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
  Reference:                12
  Test:                      8 ( 66.67% of ref )
Matching:
  Matching Coords:           7 ( 58.33% of ref )
  Matching Value:            8 ( 66.67% of ref )
Consistency Errors:
  Mismatched Coords:         1 (  8.33% of ref )
  Mismatched Value:          0 (  0.00% of ref )
Availability Errors:
  Ref Not Encount.:          1 (  8.33% of ref )
  Ref Not in Test:           3 ( 25.00% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          6 ( 50.00% of ref )
  Complete:                  0 (  0.00% of ref )
  Within Time Limit:        10 ( 83.33% of ref )
  Within Fork Limit:         4 ( 33.33% of ref )
Test Execution:
  Function Covered:          8 (100.00% of test)
  Complete:                  2 ( 25.00% of test)
  Within Time Limit:         8 (100.00% of test)
  Within Fork Limit:         2 ( 25.00% of test)

❌ Some consistency checks failed
