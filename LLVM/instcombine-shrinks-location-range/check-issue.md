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
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-before/final.bc klee-out-after/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Checking klee-out-before/final.bc and klee-out-after/final.bc for debug info consistency…

## Functions

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `foo`

✅ Before and after function names match

### Variable events

#### Before variables

Value produced for `h` (decl src ln 4), asm ln 10
  %gep = getelementptr i64, i64* %a, i64 1, asm ln 9
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 10, prod ln 5.3, live ln 6, enc None

#### After variables

Value produced for `h` (decl src ln 4), asm ln 10
  %gep = getelementptr i64, i64* %a, i64 1, asm ln 9
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 10, prod ln 5.3, live ln 6, enc None

#### Summary

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `a.c`
[0mCollected value for `h`
  Assignment asm ln 10, prod ln 5.3, live ln 6, enc 0
  Concrete pointer resolves to foo.a.deref, offset (w64 0x8)
  Created deref expr (ReadLSB w64 (w32 0x8) foo.a.deref)
  Replaced concrete pointer with hash (w64 0xD9C84865730624A3)
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xD9C84865730624A3)

#### After values

Collected value for `h`
  Assignment asm ln 10, prod ln 5.3, live ln 6, enc 0
  Concrete pointer resolves to foo.a.deref, offset (w64 0x8)
  Created deref expr (ReadLSB w64 (w32 0x8) foo.a.deref)
  Replaced concrete pointer with hash (w64 0xD9C84865730624A3)
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xD9C84865730624A3)

### Assignments

#### Collation

Collating encountered before assignments: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, enc 0

Collating encountered after assignments: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, enc 0

#### Check after using before as reference

Checking equivalence of `h` (decl src ln 4) from
  assn asm ln 10, prod ln 5.3, live ln 6, enc 0
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xD9C84865730624A3)
and
  assn asm ln 10, prod ln 5.3, live ln 6, enc 0
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xD9C84865730624A3)
✅ Before `h` (decl src ln 4) assn asm ln 10, prod ln 5.3, live ln 6, enc 0 symbolic value matches after assn asm ln 10, prod ln 5.3, live ln 6, enc 0

✅ After `h` assns checked using before as reference
Assignments:         h
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

## Function `bar`

✅ Before and after function names match

### Variable events

#### Before variables

Value produced for `k` (decl src ln 2), asm ln 18
  %gep = getelementptr i64, i64* %a, i64 %b, asm ln 17
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 18, prod ln 5.3, live ln 6, enc None

#### After variables

Value produced for `k` (decl src ln 2), asm ln 18
  %gep = getelementptr i64, i64* %a, i64 %b, asm ln 17
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 18, prod ln 5.3, live ln 6, enc None

#### Summary

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `k`
  Assignment asm ln 18, prod ln 5.3, live ln 6, enc 0
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x1178544E0)
          (Add w64 N0:(Mul w64 (w64 0x8)
                               (ReadLSB w64 (w32 0x0) bar.b))
                   N0))
[0;1;31mKLEE: ERROR: a.c:2: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all before program states

#### After values

Collected value for `k`
  Assignment asm ln 18, prod ln 5.3, live ln 6, enc 0
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x117854130)
          (Add w64 N0:(Mul w64 (w64 0x8)
                               (ReadLSB w64 (w32 0x0) bar.b))
                   N0))
[0;1;31mKLEE: ERROR: a.c:2: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all after program states

### Assignments

#### Collation

Collating encountered before assignments: `k` (decl src ln 2)
  asm ln 18, prod ln 5.3, live ln 6, enc 0

Collating encountered after assignments: `k` (decl src ln 2)
  asm ln 18, prod ln 5.3, live ln 6, enc 0

#### Check after using before as reference

Checking equivalence of `k` (decl src ln 2) from
  assn asm ln 18, prod ln 5.3, live ln 6, enc 0
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x117854130)
          (Add w64 N0:(Mul w64 (w64 0x8)
                               (ReadLSB w64 (w32 0x0) bar.b))
                   N0))
and
  assn asm ln 18, prod ln 5.3, live ln 6, enc 0
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x1178544E0)
          (Add w64 N0:(Mul w64 (w64 0x8)
                               (ReadLSB w64 (w32 0x0) bar.b))
                   N0))
Query to parse
array bar.b[8] : w32 -> w8 = symbolic
array bar.b[8] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0x117854130)
              (Add w64 N0:(Mul w64 (w64 0x8)
                                   (ReadLSB w64 (w32 0x0) bar.b))
                       N0))
     (Add w64 (w64 0x1178544E0)
              (Add w64 N1:(Mul w64 (w64 0x8)
                                   (ReadLSB w64 (w32 0x0) bar.b))
                       N1))))
Parsed query
(Eq (Add w64 (w64 0x117854130)
              N0:(Add w64 N1:(Mul w64 (w64 0x8)
                                      (ReadLSB w64 (w32 0x0) bar.b))
                          N1))
     (Add w64 (w64 0x1178544E0) N0))
❌ Before `k` (decl src ln 2) assn asm ln 18, prod ln 5.3, live ln 6, enc 0 symbolic value doesn't match after assn asm ln 18, prod ln 5.3, live ln 6, enc 0

❌ After `k` assns checked using before as reference
Assignments:         k
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  1
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
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

## Summary

Assignments:
  Reference:                 2
  Test:                      2 (100.00% of ref )
Matching:
  Matching Coords:           2 (100.00% of ref )
  Matching Value:            1 ( 50.00% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          1 ( 50.00% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           0 (  0.00% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          2 (100.00% of ref )
  Complete:                  1 ( 50.00% of ref )
  Within Time Limit:         2 (100.00% of ref )
  Within Fork Limit:         2 (100.00% of ref )
Test Execution:
  Function Covered:          2 (100.00% of test)
  Complete:                  1 ( 50.00% of test)
  Within Time Limit:         2 (100.00% of test)
  Within Fork Limit:         2 (100.00% of test)

❌ Some consistency checks failed
