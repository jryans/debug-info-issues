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

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `charlie`

✅ Before and after function names match

### Variable events

#### Before variables

Store to declared address of `delta` (decl src ln 10), asm ln 15
  const i32 0
  @dbg.declare without read users, removable
  Added assignment asm ln 15, prod ln 10.7, live ln 11, enc None

#### After variables

#### Summary

❌ 1 before variables found, 0 after variables found, 1 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `delta`
  Assignment asm ln 15, prod ln 10.7, live ln 11, enc 0
  i32 0
  (w32 0x0)

#### After values


### Assignments

#### Collation

Collating encountered before assignments: `delta` (decl src ln 10)
  asm ln 15, prod ln 10.7, live ln 11, enc 0


#### Check after using before as reference

🔔 Before encountered assns for (removable) `delta` (decl src ln 10) not found in after
Assignments:         delta
  Reference:         1
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
  Removable:         1
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

## Function `echo`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `golf` (decl src ln 17), asm ln 47
  %3 = load i32, i32* %golf, l18 c13, asm ln 47
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 47, prod ln 18.13, live ln 19, enc None
Store to declared address of `golf` (decl src ln 17), asm ln 46
  %call = call i32 @bravo(), l17 c16, asm ln 45
  Added assignment asm ln 46, prod ln 17.16, live ln 18, enc None

#### After variables

#### Summary

❌ 2 before variables found, 0 after variables found, 2 mismatched

### Symbolic values

#### Before values

Collected value for `golf`
  Assignment asm ln 46, prod ln 17.16, live ln 18, enc 0
  %call = call i32 @bravo(), l17 c16
  (ReadLSB w32 (w32 0x0) bravo.return)
Collected value for `golf`
  Assignment asm ln 47, prod ln 18.13, live ln 19, enc 1
  %3 = load i32, i32* %golf, l18 c13
  (ReadLSB w32 (w32 0x0) bravo.return)

#### After values


### Assignments

#### Collation

Filtering before assignments: `golf` (decl src ln 17)

Checking equivalence of `golf` (decl src ln 17) from
  assn asm ln 47, prod ln 18.13, live ln 19, enc 1
  %3 = load i32, i32* %golf, l18 c13
  (ReadLSB w32 (w32 0x0) bravo.return)
and
  assn asm ln 46, prod ln 17.16, live ln 18, enc 0
  %call = call i32 @bravo(), l17 c16
  (ReadLSB w32 (w32 0x0) bravo.return)
Query to parse
array bravo.return[4] : w32 -> w8 = symbolic
array bravo.return[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) bravo.return)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) bravo.return)
     N0)
🔔 Removing: asm ln 47, prod ln 18.13, live ln 19, enc 1

Collating encountered before assignments: `golf` (decl src ln 17)
  asm ln 46, prod ln 17.16, live ln 18, enc 0


#### Check after using before as reference

🔔 Before encountered assns for (removable) `foxtrot` (decl src ln 14) not found in after
Assignments:         foxtrot
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

❌ Before encountered assns for `golf` (decl src ln 17) not found in after
Assignments:         golf
  Reference:         1
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
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

## Summary

Assignments:
  Reference:                 2
  Test:                      0 (  0.00% of ref )
Matching:
  Matching Coords:           0 (  0.00% of ref )
  Matching Value:            0 (  0.00% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           1 ( 50.00% of ref )
  Test Not Encount.:         0 (   nan% of test)
  Test Not in Ref:           0 (   nan% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 1 ( 50.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          0 (  0.00% of ref )
  Complete:                  0 (  0.00% of ref )
  Within Time Limit:         0 (  0.00% of ref )
  Within Fork Limit:         0 (  0.00% of ref )
Test Execution:
  Function Covered:          0 (   nan% of test)
  Complete:                  0 (   nan% of test)
  Within Time Limit:         0 (   nan% of test)
  Within Fork Limit:         0 (   nan% of test)

❌ Some consistency checks failed
