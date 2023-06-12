^D++ dirname ./build.sh
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
+ mkdir -p klee-out-O0
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc -O0 -o example-O0.o --filetype obj example-O0.ll
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt -S -o example-O0-mem2reg.ll --mem2reg example-O0.ll
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc -O0 -o example-O0-mem2reg.o --filetype obj example-O0-mem2reg.ll
+ mkdir -p klee-out-O1
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1/final.bc example-O1.ll
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc -O0 -o example-O1.o --filetype obj example-O1.ll
+ mkdir -p klee-out-O1-fixed
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1-fixed/final.bc example-O1-fixed.ll
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc -O0 -o example-O1-fixed.o --filetype obj example-O1-fixed.ll
^D++ dirname ./check-issue.sh
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
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `foo`

✅ Before and after function names match

### Variables

Before variable `blah` (decl src ln 1)
Store to declared address of `blah` (decl src ln 1), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 1.0, live ln 3, gen 0
Before variable `bob` (decl src ln 2)
Store to declared address of `bob` (decl src ln 2), asm ln 38
  %inc = add nsw i32 %4, 1, l3 c37, asm ln 37
🔔 Store to declared address of `bob` (decl src ln 2): live ln too early, using produced ln + 1
  Added assignment asm ln 38, prod ln 3.37, live ln 4, gen 0
Store to declared address of `bob` (decl src ln 2), asm ln 16
  %0 = load i32, i32* %blah.addr, l3 c14, asm ln 15
🔔 Store to declared address of `bob` (decl src ln 2): live ln too early, using produced ln + 1
  Added assignment asm ln 16, prod ln 3.14, live ln 4, gen 0
Computing generations: `blah` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 3, gen 0
Computing generations: `bob` (decl src ln 2)
  asm ln 16, prod ln 3.14, live ln 4, gen 0
  asm ln 38, prod ln 3.37, live ln 4, gen 1

After variable `blah` (decl src ln 1)
Value produced for `blah` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.0, live ln 3, gen 0
After variable `bob` (decl src ln 2)
Value produced for `bob` (decl src ln 2), asm ln 10
  arg 0
  Added assignment asm ln 10, prod ln 2.0, live ln 3, gen 0
After variable `bob` (decl src ln 2)
Value produced for `bob` (decl src ln 2), asm ln 15
  const i32 undef
🔔 Value produced for `bob` (decl src ln 2): missing produced ln, using decl ln
  Added assignment asm ln 15, prod ln 2.0, live ln 3, gen 0
After variable `bob` (decl src ln 2)
Value produced for `bob` (decl src ln 2), asm ln 16
  const i32 undef
  Producers match last assignment, skipping
After variable `bob` (decl src ln 2)
Value produced for `bob` (decl src ln 2), asm ln 24
  const i32 undef
  Producers match last assignment, skipping
After variable `bob` (decl src ln 2)
Value produced for `bob` (decl src ln 2), asm ln 26
  const i32 undef
  Producers match last assignment, skipping
Computing generations: `blah` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 3, gen 0
Computing generations: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, gen 0
  asm ln 15, prod ln 2.0, live ln 3, gen 1

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `blah`
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Collected value for `bob`
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) blah)
Collected value for `bob`
  %inc = add nsw i32 %4, 1, l3 c37
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) blah))

#### After values

Collected value for `blah`
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Collected value for `bob`
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Collected value for `bob`
  i32 undef
  (w32 0x0)

### Assignments

Filtering redundant before assignments: `bob` (decl src ln 2)

Filtering redundant after assignments: `bob` (decl src ln 2)

Computing generations: `blah` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 3, gen 0
Computing generations: `bob` (decl src ln 2)
  asm ln 16, prod ln 3.14, live ln 4, gen 0
  asm ln 38, prod ln 3.37, live ln 4, gen 1
Building live ranges: `blah` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `bob` (decl src ln 2)
  asm ln 16, prod ln 3.14, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln 4, gen 1
  asm ln 38, prod ln 3.37, live ln 4, gen 1
    live ln 4, gen 1 →
    live ln ∞, gen ∞

Computing generations: `blah` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 3, gen 0
Computing generations: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, gen 0
  asm ln 15, prod ln 2.0, live ln 3, gen 1
Building live ranges: `blah` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln 3, gen 1

🔔 After live range for `bob` (decl src ln 2) terminates early
✅ Before live range coverage
  Covered:   2
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `blah` (decl src ln 1) from
  assn asm ln 12, prod ln 1.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
and
  assn asm ln 9, prod ln 1.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) blah)
     (ReadLSB w32 (w32 0x0) blah)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) blah)
     N0)
✅ After `blah` (decl src ln 1) assn asm ln 9, prod ln 1.0, live ln 3, gen 0 symbolic value matches before assn asm ln 12, prod ln 1.0, live ln 3, gen 0

❌ After live range for `bob` (decl src ln 2) at asm ln 16, prod ln 3.14, live ln 4, gen 0 not found

❌ After live range for `bob` (decl src ln 2) at asm ln 38, prod ln 3.37, live ln 4, gen 1 not found

❌ Before symbolic values checked against after
  Matching:    1
  Mismatched:  2
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `blah` (decl src ln 1) from
  assn asm ln 9, prod ln 1.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
and
  assn asm ln 12, prod ln 1.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) blah)
     (ReadLSB w32 (w32 0x0) blah)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) blah)
     N0)
✅ Before `blah` (decl src ln 1) assn asm ln 12, prod ln 1.0, live ln 3, gen 0 symbolic value matches after assn asm ln 9, prod ln 1.0, live ln 3, gen 0

🔔 Before `bob` (decl src ln 2) assn asm ln 16, prod ln 3.14, live ln 4, gen 0 coordinates don't match after assn asm ln 10, prod ln 2.0, live ln 3, gen 0
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 10, prod ln 2.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
and
  assn asm ln 16, prod ln 3.14, live ln 4, gen 0
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) blah)
     (ReadLSB w32 (w32 0x0) blah)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) blah)
     N0)
✅ Before `bob` (decl src ln 2) assn asm ln 16, prod ln 3.14, live ln 4, gen 0 symbolic value matches after assn asm ln 10, prod ln 2.0, live ln 3, gen 0

🔔 Before `bob` (decl src ln 2) assn asm ln 16, prod ln 3.14, live ln 4, gen 0 coordinates don't match after assn asm ln 15, prod ln 2.0, live ln 3, gen 1
Variable intrinsic with undef input
❌ After `bob` (decl src ln 2) assn asm ln 15, prod ln 2.0, live ln 3, gen 1 has no symbolic value from i32 undef

❌ After symbolic values checked against before
  Matching:    2
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
^D++ dirname ./check-fix.sh
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
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1-fixed/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O1-fixed/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `foo`

✅ Before and after function names match

### Variables

Before variable `blah` (decl src ln 1)
Store to declared address of `blah` (decl src ln 1), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 1.0, live ln 3, gen 0
Before variable `bob` (decl src ln 2)
Store to declared address of `bob` (decl src ln 2), asm ln 38
  %inc = add nsw i32 %4, 1, l3 c37, asm ln 37
🔔 Store to declared address of `bob` (decl src ln 2): live ln too early, using produced ln + 1
  Added assignment asm ln 38, prod ln 3.37, live ln 4, gen 0
Store to declared address of `bob` (decl src ln 2), asm ln 16
  %0 = load i32, i32* %blah.addr, l3 c14, asm ln 15
🔔 Store to declared address of `bob` (decl src ln 2): live ln too early, using produced ln + 1
  Added assignment asm ln 16, prod ln 3.14, live ln 4, gen 0
Computing generations: `blah` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 3, gen 0
Computing generations: `bob` (decl src ln 2)
  asm ln 16, prod ln 3.14, live ln 4, gen 0
  asm ln 38, prod ln 3.37, live ln 4, gen 1

After variable `blah` (decl src ln 1)
Value produced for `blah` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.0, live ln 3, gen 0
After variable `bob` (decl src ln 2)
Value produced for `bob` (decl src ln 2), asm ln 10
  arg 0
  Added assignment asm ln 10, prod ln 2.0, live ln 3, gen 0
After variable `bob` (decl src ln 2)
Value produced for `bob` (decl src ln 2), asm ln 15
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 23
🔔 Value produced for `bob` (decl src ln 2): live ln too early, using produced ln + 1
  Added assignment asm ln 15, prod ln 3.24, live ln 4, gen 0
After variable `bob` (decl src ln 2)
Value produced for `bob` (decl src ln 2), asm ln 16
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 23
🔔 Value produced for `bob` (decl src ln 2): live ln too early, using produced ln + 1
  Added assignment asm ln 16, prod ln 3.24, live ln 4, gen 0
After variable `bob` (decl src ln 2)
Value produced for `bob` (decl src ln 2), asm ln 24
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 23
  Added assignment asm ln 24, prod ln 3.24, live ln 4, gen 0
After variable `bob` (decl src ln 2)
Value produced for `bob` (decl src ln 2), asm ln 26
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 23
  Added assignment asm ln 26, prod ln 3.24, live ln 4, gen 0
Computing generations: `blah` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 3, gen 0
Computing generations: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, gen 0
  asm ln 24, prod ln 3.24, live ln 4, gen 1
  asm ln 26, prod ln 3.24, live ln 4, gen 2
  asm ln 15, prod ln 3.24, live ln 4, gen 3
  asm ln 16, prod ln 3.24, live ln 4, gen 4

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `blah`
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Collected value for `bob`
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) blah)
Collected value for `bob`
  %inc = add nsw i32 %4, 1, l3 c37
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) blah))

#### After values

Collected value for `blah`
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Collected value for `bob`
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Collected value for `bob`
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) blah))
Collected value for `bob`
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) blah))
Collected value for `bob`
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) blah))
Collected value for `bob`
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) blah))

### Assignments

Filtering redundant before assignments: `bob` (decl src ln 2)

Filtering redundant after assignments: `bob` (decl src ln 2)

Pushed initial value onto stack: (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) blah))
plus_uconst: (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) blah))
          (Extract w32 0 (w64 0x1)))
Result: (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) blah))
          (Extract w32 0 (w64 0x1)))
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 24, prod ln 3.24, live ln 4, gen 1
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) blah))
          (Extract w32 0 (w64 0x1)))
and
  assn asm ln 10, prod ln 2.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Add w32 (w32 0xFFFFFFFF)
                       N0:(ReadLSB w32 (w32 0x0) blah))
              (Extract w32 0 (w64 0x1)))
     N0))
Parsed query
(Eq (Add w32 (Add w32 (w32 0xFFFFFFFF)
                       N0:(ReadLSB w32 (w32 0x0) blah))
              (Extract w32 0 (w64 0x1)))
     N0)
Removing: asm ln 24, prod ln 3.24, live ln 4, gen 1

Pushed initial value onto stack: (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) blah))
plus_uconst: (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) blah))
          (Extract w32 0 (w64 0x1)))
plus_uconst: (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Result: (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 26, prod ln 3.24, live ln 4, gen 2
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
and
  assn asm ln 10, prod ln 2.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                N0:(ReadLSB w32 (w32 0x0) blah))
                       N1:(Extract w32 0 (w64 0x1)))
              N1)
     N0))
Parsed query
(Eq (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                N0:(ReadLSB w32 (w32 0x0) blah))
                       N1:(Extract w32 0 (w64 0x1)))
              N1)
     N0)

Pushed initial value onto stack: (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) blah))
plus_uconst: (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) blah))
          (Extract w32 0 (w64 0x2)))
Result: (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) blah))
          (Extract w32 0 (w64 0x2)))
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 15, prod ln 3.24, live ln 4, gen 3
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) blah))
          (Extract w32 0 (w64 0x2)))
and
  assn asm ln 26, prod ln 3.24, live ln 4, gen 2
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 N0:(Add w32 (w32 0xFFFFFFFF)
                          (ReadLSB w32 (w32 0x0) blah))
              (Extract w32 0 (w64 0x2)))
     (Add w32 (Add w32 N0 N1:(Extract w32 0 (w64 0x1)))
              N1)))
Parsed query
(Eq (Add w32 N0:(Add w32 (w32 0xFFFFFFFF)
                          (ReadLSB w32 (w32 0x0) blah))
              (Extract w32 0 (w64 0x2)))
     (Add w32 (Add w32 N0 N1:(Extract w32 0 (w64 0x1)))
              N1))
Removing: asm ln 15, prod ln 3.24, live ln 4, gen 3

Pushed initial value onto stack: (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) blah))
plus_uconst: (Add w32 (Add w32 (w32 0xFFFFFFFF)
                   (ReadLSB w32 (w32 0x0) blah))
          (Extract w32 0 (w64 0x1)))
plus_uconst: (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Result: (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 16, prod ln 3.24, live ln 4, gen 4
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
and
  assn asm ln 26, prod ln 3.24, live ln 4, gen 2
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                   (ReadLSB w32 (w32 0x0) blah))
                          N1:(Extract w32 0 (w64 0x1)))
                 N1)
     N0))
Parsed query
(Eq N0:(Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                   (ReadLSB w32 (w32 0x0) blah))
                          N1:(Extract w32 0 (w64 0x1)))
                 N1)
     N0)
Removing: asm ln 16, prod ln 3.24, live ln 4, gen 4

Computing generations: `blah` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 3, gen 0
Computing generations: `bob` (decl src ln 2)
  asm ln 16, prod ln 3.14, live ln 4, gen 0
  asm ln 38, prod ln 3.37, live ln 4, gen 1
Building live ranges: `blah` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `bob` (decl src ln 2)
  asm ln 16, prod ln 3.14, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln 4, gen 1
  asm ln 38, prod ln 3.37, live ln 4, gen 1
    live ln 4, gen 1 →
    live ln ∞, gen ∞

Computing generations: `blah` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 3, gen 0
Computing generations: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, gen 0
  asm ln 26, prod ln 3.24, live ln 4, gen 1
Building live ranges: `blah` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln 4, gen 1
  asm ln 26, prod ln 3.24, live ln 4, gen 1
    live ln 4, gen 1 →
    live ln ∞, gen ∞

✅ Before live range coverage
  Covered:   2
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `blah` (decl src ln 1) from
  assn asm ln 12, prod ln 1.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
and
  assn asm ln 9, prod ln 1.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) blah)
     (ReadLSB w32 (w32 0x0) blah)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) blah)
     N0)
✅ After `blah` (decl src ln 1) assn asm ln 9, prod ln 1.0, live ln 3, gen 0 symbolic value matches before assn asm ln 12, prod ln 1.0, live ln 3, gen 0

🔔 After `bob` (decl src ln 2) assn asm ln 10, prod ln 2.0, live ln 3, gen 0 coordinates don't match before assn asm ln 16, prod ln 3.14, live ln 4, gen 0
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 16, prod ln 3.14, live ln 4, gen 0
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) blah)
and
  assn asm ln 10, prod ln 2.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) blah)
     (ReadLSB w32 (w32 0x0) blah)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) blah)
     N0)
✅ After `bob` (decl src ln 2) assn asm ln 10, prod ln 2.0, live ln 3, gen 0 symbolic value matches before assn asm ln 16, prod ln 3.14, live ln 4, gen 0

Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 38, prod ln 3.37, live ln 4, gen 1
  %inc = add nsw i32 %4, 1, l3 c37
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) blah))
and
  assn asm ln 26, prod ln 3.24, live ln 4, gen 1
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) blah))
     (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                (ReadLSB w32 (w32 0x0) blah))
                       N0:(Extract w32 0 (w64 0x1)))
              N0)))
Parsed query
(Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) blah))
     (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF) N0) N1:(Extract w32 0 (w64 0x1)))
              N1))
✅ After `bob` (decl src ln 2) assn asm ln 26, prod ln 3.24, live ln 4, gen 1 symbolic value matches before assn asm ln 38, prod ln 3.37, live ln 4, gen 1

✅ Before symbolic values checked against after
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `blah` (decl src ln 1) from
  assn asm ln 9, prod ln 1.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
and
  assn asm ln 12, prod ln 1.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) blah)
     (ReadLSB w32 (w32 0x0) blah)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) blah)
     N0)
✅ Before `blah` (decl src ln 1) assn asm ln 12, prod ln 1.0, live ln 3, gen 0 symbolic value matches after assn asm ln 9, prod ln 1.0, live ln 3, gen 0

🔔 Before `bob` (decl src ln 2) assn asm ln 16, prod ln 3.14, live ln 4, gen 0 coordinates don't match after assn asm ln 10, prod ln 2.0, live ln 3, gen 0
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 10, prod ln 2.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 (w32 0x0) blah)
and
  assn asm ln 16, prod ln 3.14, live ln 4, gen 0
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 (w32 0x0) blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) blah)
     (ReadLSB w32 (w32 0x0) blah)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) blah)
     N0)
✅ Before `bob` (decl src ln 2) assn asm ln 16, prod ln 3.14, live ln 4, gen 0 symbolic value matches after assn asm ln 10, prod ln 2.0, live ln 3, gen 0

Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 26, prod ln 3.24, live ln 4, gen 1
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                            (ReadLSB w32 (w32 0x0) blah))
                   N0:(Extract w32 0 (w64 0x1)))
          N0)
and
  assn asm ln 38, prod ln 3.37, live ln 4, gen 1
  %inc = add nsw i32 %4, 1, l3 c37
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) blah))
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                (ReadLSB w32 (w32 0x0) blah))
                       N0:(Extract w32 0 (w64 0x1)))
              N0)
     (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) blah))))
Parsed query
(Eq (Add w32 (Add w32 (Add w32 (w32 0xFFFFFFFF)
                                N0:(ReadLSB w32 (w32 0x0) blah))
                       N1:(Extract w32 0 (w64 0x1)))
              N1)
     (Add w32 (w32 0x1) N0))
✅ Before `bob` (decl src ln 2) assn asm ln 38, prod ln 3.37, live ln 4, gen 1 symbolic value matches after assn asm ln 26, prod ln 3.24, live ln 4, gen 1

✅ After symbolic values checked against before
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

🎉 All consistency checks passed
