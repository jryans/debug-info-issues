++ dirname ./build.sh
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
+ mkdir -p klee-out-O0
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
+ mkdir -p klee-out-O2
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2/final.bc example-O2.ll
+ mkdir -p klee-out-O2-fixed
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2-fixed/final.bc example-O2-fixed.ll
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

Load from declared address of `c` (decl src ln 3), asm ln 24
  %2 = load i32, i32* %c, l5 c3, asm ln 24
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24, prod ln 5.3, live ln 6, enc None
Load from declared address of `c` (decl src ln 3), asm ln 22
  %1 = load i32, i32* %c, l4 c12, asm ln 22
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 22, prod ln 4.12, live ln 5, enc None
Store to declared address of `c` (decl src ln 3), asm ln 19
  %conv = sext i8 %dec to i32, l3 c11, asm ln 18
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 19, prod ln 3.11, live ln 4, enc None
Store to declared address of `l_1240` (decl src ln 3), asm ln 23
  %1 = load i32, i32* %c, l4 c12, asm ln 22
  @dbg.declare without read users, removable
  Added assignment asm ln 23, prod ln 4.12, live ln 5, enc None
Store to declared address of `l_1240` (decl src ln 3), asm ln 21
  const i32 -8
  @dbg.declare without read users, removable
  Added assignment asm ln 21, prod ln 3.16, live ln 4, enc None

#### After variables

Value produced for `l_1240` (decl src ln 3), asm ln 15
  const i32 -8
  Added assignment asm ln 15, prod ln 3.0, live ln 5, enc None

#### Summary

❌ 2 before variables found, 1 after variables found, 1 mismatched

### Symbolic values

#### Before values

Collected value for `c`
  Assignment asm ln 19, prod ln 3.11, live ln 4, enc 0
  %conv = sext i8 %dec to i32, l3 c11
  (w32 0xFFFFFFFF)
Collected value for `l_1240`
  Assignment asm ln 21, prod ln 3.16, live ln 4, enc 0
  i32 -8
  (w32 0xFFFFFFF8)
Collected value for `c`
  Assignment asm ln 22, prod ln 4.12, live ln 5, enc 1
  %1 = load i32, i32* %c, l4 c12
  (w32 0xFFFFFFFF)
Collected value for `l_1240`
  Assignment asm ln 23, prod ln 4.12, live ln 5, enc 1
  %1 = load i32, i32* %c, l4 c12
  (w32 0xFFFFFFFF)
Collected value for `c`
  Assignment asm ln 24, prod ln 5.3, live ln 6, enc 2
  %2 = load i32, i32* %c, l5 c3
  (w32 0xFFFFFFFF)

#### After values

Collected value for `l_1240`
  Assignment asm ln 15, prod ln 3.0, live ln 5, enc 0
  i32 -8
  (w32 0xFFFFFFF8)

### Assignments

#### Collation

Filtering before assignments: `c` (decl src ln 3)

Checking equivalence of `c` (decl src ln 3) from
  assn asm ln 22, prod ln 4.12, live ln 5, enc 1
  %1 = load i32, i32* %c, l4 c12
  (w32 0xFFFFFFFF)
and
  assn asm ln 19, prod ln 3.11, live ln 4, enc 0
  %conv = sext i8 %dec to i32, l3 c11
  (w32 0xFFFFFFFF)
🔔 Removing: asm ln 22, prod ln 4.12, live ln 5, enc 1

Checking equivalence of `c` (decl src ln 3) from
  assn asm ln 24, prod ln 5.3, live ln 6, enc 2
  %2 = load i32, i32* %c, l5 c3
  (w32 0xFFFFFFFF)
and
  assn asm ln 19, prod ln 3.11, live ln 4, enc 0
  %conv = sext i8 %dec to i32, l3 c11
  (w32 0xFFFFFFFF)
🔔 Removing: asm ln 24, prod ln 5.3, live ln 6, enc 2

Filtering before assignments: `l_1240` (decl src ln 3)

Checking equivalence of `l_1240` (decl src ln 3) from
  assn asm ln 23, prod ln 4.12, live ln 5, enc 1
  %1 = load i32, i32* %c, l4 c12
  (w32 0xFFFFFFFF)
and
  assn asm ln 21, prod ln 3.16, live ln 4, enc 0
  i32 -8
  (w32 0xFFFFFFF8)

Collating encountered before assignments: `c` (decl src ln 3)
  asm ln 19, prod ln 3.11, live ln 4, enc 0
Collating encountered before assignments: `l_1240` (decl src ln 3)
  asm ln 21, prod ln 3.16, live ln 4, enc 0
  asm ln 23, prod ln 4.12, live ln 5, enc 1

Collating encountered after assignments: `l_1240` (decl src ln 3)
  asm ln 15, prod ln 3.0, live ln 5, enc 0

#### Check after using before as reference

❌ Before encountered assns for `c` (decl src ln 3) not found in after
Assignments:         c
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

❌ Before encountered assn for `l_1240` (decl src ln 3) at asm ln 23, prod ln 4.12, live ln 5, enc 1 not found in after

❌ Before `l_1240` (decl src ln 3) assn asm ln 21, prod ln 3.16, live ln 4, enc 0 coordinates don't match after assn asm ln 15, prod ln 3.0, live ln 5, enc 0
Checking equivalence of `l_1240` (decl src ln 3) from
  assn asm ln 15, prod ln 3.0, live ln 5, enc 0
  i32 -8
  (w32 0xFFFFFFF8)
and
  assn asm ln 21, prod ln 3.16, live ln 4, enc 0
  i32 -8
  (w32 0xFFFFFFF8)
✅ Before `l_1240` (decl src ln 3) assn asm ln 21, prod ln 3.16, live ln 4, enc 0 symbolic value matches after assn asm ln 15, prod ln 3.0, live ln 5, enc 0

❌ After `l_1240` assns checked using before as reference
Assignments:         l_1240
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

## Summary

Assignments:
  Reference:                 3
  Test:                      1 ( 33.33% of ref )
Matching:
  Matching Coords:           0 (  0.00% of ref )
  Matching Value:            1 ( 33.33% of ref )
Consistency Errors:
  Mismatched Coords:         1 ( 33.33% of ref )
  Mismatched Value:          0 (  0.00% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           2 ( 66.67% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          2 ( 66.67% of ref )
  Complete:                  2 ( 66.67% of ref )
  Within Time Limit:         2 ( 66.67% of ref )
  Within Fork Limit:         2 ( 66.67% of ref )
Test Execution:
  Function Covered:          1 (100.00% of test)
  Complete:                  1 (100.00% of test)
  Within Time Limit:         1 (100.00% of test)
  Within Fork Limit:         1 (100.00% of test)

❌ Some consistency checks failed
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
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2-fixed/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Checking klee-out-O0/final.bc and klee-out-O2-fixed/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `c` (decl src ln 3), asm ln 24
  %2 = load i32, i32* %c, l5 c3, asm ln 24
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24, prod ln 5.3, live ln 6, enc None
Load from declared address of `c` (decl src ln 3), asm ln 22
  %1 = load i32, i32* %c, l4 c12, asm ln 22
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 22, prod ln 4.12, live ln 5, enc None
Store to declared address of `c` (decl src ln 3), asm ln 19
  %conv = sext i8 %dec to i32, l3 c11, asm ln 18
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 19, prod ln 3.11, live ln 4, enc None
Store to declared address of `l_1240` (decl src ln 3), asm ln 23
  %1 = load i32, i32* %c, l4 c12, asm ln 22
  @dbg.declare without read users, removable
  Added assignment asm ln 23, prod ln 4.12, live ln 5, enc None
Store to declared address of `l_1240` (decl src ln 3), asm ln 21
  const i32 -8
  @dbg.declare without read users, removable
  Added assignment asm ln 21, prod ln 3.16, live ln 4, enc None

#### After variables

After variable intrinsic with undef input, asm ln 15, ignoring undefined variable
  @dbg.value(i32 undef, !19)
Value produced for `l_1240` (decl src ln 3), asm ln 16
  const i32 -8
  Added assignment asm ln 16, prod ln 3.0, live ln 5, enc None
Value produced for `l_1240` (decl src ln 3), asm ln 17
  const i32 undef
  🔔 Missing produced ln, using decl ln
  Added assignment asm ln 17, prod ln 3.0, live ln 5, enc None

#### Summary

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `c`
  Assignment asm ln 19, prod ln 3.11, live ln 4, enc 0
  %conv = sext i8 %dec to i32, l3 c11
  (w32 0xFFFFFFFF)
Collected value for `l_1240`
  Assignment asm ln 21, prod ln 3.16, live ln 4, enc 0
  i32 -8
  (w32 0xFFFFFFF8)
Collected value for `c`
  Assignment asm ln 22, prod ln 4.12, live ln 5, enc 1
  %1 = load i32, i32* %c, l4 c12
  (w32 0xFFFFFFFF)
Collected value for `l_1240`
  Assignment asm ln 23, prod ln 4.12, live ln 5, enc 1
  %1 = load i32, i32* %c, l4 c12
  (w32 0xFFFFFFFF)
Collected value for `c`
  Assignment asm ln 24, prod ln 5.3, live ln 6, enc 2
  %2 = load i32, i32* %c, l5 c3
  (w32 0xFFFFFFFF)

#### After values

[0;35mKLEE: WARNING: Unable to load source file `/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023520-15766-grjhv8.ioqyl/example.c`
[0mCollected value for `l_1240`
  Assignment asm ln 16, prod ln 3.0, live ln 5, enc 0
  i32 -8
  (w32 0xFFFFFFF8)
Collected value for `l_1240`
  Assignment asm ln 17, prod ln 3.0, live ln 5, enc 1
  i32 undef
  (w32 0x0)

### Assignments

#### Collation

Filtering before assignments: `c` (decl src ln 3)

Checking equivalence of `c` (decl src ln 3) from
  assn asm ln 22, prod ln 4.12, live ln 5, enc 1
  %1 = load i32, i32* %c, l4 c12
  (w32 0xFFFFFFFF)
and
  assn asm ln 19, prod ln 3.11, live ln 4, enc 0
  %conv = sext i8 %dec to i32, l3 c11
  (w32 0xFFFFFFFF)
🔔 Removing: asm ln 22, prod ln 4.12, live ln 5, enc 1

Checking equivalence of `c` (decl src ln 3) from
  assn asm ln 24, prod ln 5.3, live ln 6, enc 2
  %2 = load i32, i32* %c, l5 c3
  (w32 0xFFFFFFFF)
and
  assn asm ln 19, prod ln 3.11, live ln 4, enc 0
  %conv = sext i8 %dec to i32, l3 c11
  (w32 0xFFFFFFFF)
🔔 Removing: asm ln 24, prod ln 5.3, live ln 6, enc 2

Filtering before assignments: `l_1240` (decl src ln 3)

Checking equivalence of `l_1240` (decl src ln 3) from
  assn asm ln 23, prod ln 4.12, live ln 5, enc 1
  %1 = load i32, i32* %c, l4 c12
  (w32 0xFFFFFFFF)
and
  assn asm ln 21, prod ln 3.16, live ln 4, enc 0
  i32 -8
  (w32 0xFFFFFFF8)

Filtering after assignments: `l_1240` (decl src ln 3)

Variable intrinsic with undef input
Checking equivalence of `l_1240` (decl src ln 3) from
  assn asm ln 17, prod ln 3.0, live ln 5, enc 1
  i32 undef
and
  assn asm ln 16, prod ln 3.0, live ln 5, enc 0
  i32 -8

Collating encountered before assignments: `c` (decl src ln 3)
  asm ln 19, prod ln 3.11, live ln 4, enc 0
Collating encountered before assignments: `l_1240` (decl src ln 3)
  asm ln 21, prod ln 3.16, live ln 4, enc 0
  asm ln 23, prod ln 4.12, live ln 5, enc 1

Collating encountered after assignments: `l_1240` (decl src ln 3)
  asm ln 16, prod ln 3.0, live ln 5, enc 0
  asm ln 17, prod ln 3.0, live ln 5, enc 1

#### Check after using before as reference

❌ Before encountered assn for `c` (decl src ln 3) at asm ln 19, prod ln 3.11, live ln 4, enc 0 not found in after

❌ After `c` assns checked using before as reference
Assignments:         c
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

❌ Before `l_1240` (decl src ln 3) assn asm ln 21, prod ln 3.16, live ln 4, enc 0 coordinates don't match after assn asm ln 16, prod ln 3.0, live ln 5, enc 0
Checking equivalence of `l_1240` (decl src ln 3) from
  assn asm ln 16, prod ln 3.0, live ln 5, enc 0
  i32 -8
  (w32 0xFFFFFFF8)
and
  assn asm ln 21, prod ln 3.16, live ln 4, enc 0
  i32 -8
  (w32 0xFFFFFFF8)
✅ Before `l_1240` (decl src ln 3) assn asm ln 21, prod ln 3.16, live ln 4, enc 0 symbolic value matches after assn asm ln 16, prod ln 3.0, live ln 5, enc 0

Variable intrinsic with undef input
Checking equivalence of `l_1240` (decl src ln 3) from
  assn asm ln 17, prod ln 3.0, live ln 5, enc 1
  i32 undef
and
  assn asm ln 23, prod ln 4.12, live ln 5, enc 1
  %1 = load i32, i32* %c, l4 c12
❌ Before `l_1240` (decl src ln 3) assn asm ln 23, prod ln 4.12, live ln 5, enc 1 symbolic value doesn't match after assn asm ln 17, prod ln 3.0, live ln 5, enc 1

❌ After `l_1240` assns checked using before as reference
Assignments:         l_1240
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 1
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
  Reference:                 3
  Test:                      2 ( 66.67% of ref )
Matching:
  Matching Coords:           1 ( 33.33% of ref )
  Matching Value:            1 ( 33.33% of ref )
Consistency Errors:
  Mismatched Coords:         1 ( 33.33% of ref )
  Mismatched Value:          1 ( 33.33% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           1 ( 33.33% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          3 (100.00% of ref )
  Complete:                  3 (100.00% of ref )
  Within Time Limit:         3 (100.00% of ref )
  Within Fork Limit:         3 (100.00% of ref )
Test Execution:
  Function Covered:          2 (100.00% of test)
  Complete:                  2 (100.00% of test)
  Within Time Limit:         2 (100.00% of test)
  Within Fork Limit:         2 (100.00% of test)

❌ Some consistency checks failed
