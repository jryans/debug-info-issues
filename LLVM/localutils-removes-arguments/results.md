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
+ mkdir -p klee-out-O2
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2/final.bc example-O2.ll
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc -O0 -o example-O2.o --filetype obj example-O2.ll
+ mkdir -p klee-out-O2-fixed
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2-fixed/final.bc example-O2-fixed.ll
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc -O0 -o example-O2-fixed.o --filetype obj example-O2-fixed.ll
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
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O2/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `foo`

✅ Before and after function names match

### Variables

Before variable `nose` (decl src ln 6)
Before variable `more` (decl src ln 6)
Store to declared address of `more` (decl src ln 6), asm ln 30
  %add = add nsw i32 %3, 1, l9 c8, asm ln 29
  Added assignment asm ln 30, prod ln 9.8, live ln 10, gen 0
Store to declared address of `more` (decl src ln 6), asm ln 18
  arg 1
  Added assignment asm ln 18, prod ln 6.0, live ln 7, gen 0
Before variable `shoe` (decl src ln 7)
Store to declared address of `shoe` (decl src ln 7), asm ln 23
  %1 = load i32, i32* %a, l7 c19, asm ln 22
  @dbg.declare without read users, removable
  Added assignment asm ln 23, prod ln 7.19, live ln 8, gen 0
Before variable `boot` (decl src ln 8)
Store to declared address of `boot` (decl src ln 8), asm ln 27
  %2 = load i32, i32* %b, l8 c19, asm ln 26
  @dbg.declare without read users, removable
  Added assignment asm ln 27, prod ln 8.19, live ln 9, gen 0
Computing generations: `more` (decl src ln 6)
  asm ln 18, prod ln 6.0, live ln 7, gen 0
  asm ln 30, prod ln 9.8, live ln 10, gen 1
Computing generations: `shoe` (decl src ln 7)
  asm ln 23, prod ln 7.19, live ln 8, gen 0
Computing generations: `boot` (decl src ln 8)
  asm ln 27, prod ln 8.19, live ln 9, gen 0

After variable `nose` (decl src ln 6)
After variable intrinsic with undef input, asm ln 9, ignoring undefined variable
  @dbg.value(i32 undef, !17, !DIExpression(DW_OP_LLVM_fragment, 0, 32))
After variable `nose` (decl src ln 6)
After variable intrinsic with undef input, asm ln 10, ignoring undefined variable
  @dbg.value(i32 undef, !17, !DIExpression(DW_OP_LLVM_fragment, 32, 32))
After variable `more` (decl src ln 6)
Value produced for `more` (decl src ln 6), asm ln 11
  arg 1
  Added assignment asm ln 11, prod ln 6.0, live ln 9, gen 0
After variable `shoe` (decl src ln 7)
After variable intrinsic with undef input, asm ln 12, ignoring undefined variable
  @dbg.value(i32 undef, !19)
After variable `boot` (decl src ln 8)
After variable intrinsic with undef input, asm ln 13, ignoring undefined variable
  @dbg.value(i32 undef, !20)
After variable `more` (decl src ln 6)
Value produced for `more` (decl src ln 6), asm ln 15
  %add = add nsw i32 %more, 1, l9 c8, asm ln 14
  Added assignment asm ln 15, prod ln 9.8, live ln 10, gen 0
Computing generations: `more` (decl src ln 6)
  asm ln 11, prod ln 6.0, live ln 9, gen 0
  asm ln 15, prod ln 9.8, live ln 10, gen 1

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `more`
  i32 %more
  (ReadLSB w32 (w32 0x0) more)
Collected value for `shoe`
  %1 = load i32, i32* %a, l7 c19
  (ReadLSB w32 (w32 0x0) nose.coerce)
Collected value for `boot`
  %2 = load i32, i32* %b, l8 c19
  (ReadLSB w32 (w32 0x4) nose.coerce)
Collected value for `more`
  %add = add nsw i32 %3, 1, l9 c8
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) more))

#### After values

Collected value for `more`
  i32 %more
  (ReadLSB w32 (w32 0x0) more)
Collected value for `more`
  %add = add nsw i32 %more, 1, l9 c8
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) more))

### Assignments

Filtering redundant before assignments: `more` (decl src ln 6)

Filtering redundant after assignments: `more` (decl src ln 6)

Computing generations: `more` (decl src ln 6)
  asm ln 18, prod ln 6.0, live ln 7, gen 0
  asm ln 30, prod ln 9.8, live ln 10, gen 1
Computing generations: `shoe` (decl src ln 7)
  asm ln 23, prod ln 7.19, live ln 8, gen 0
Computing generations: `boot` (decl src ln 8)
  asm ln 27, prod ln 8.19, live ln 9, gen 0
Building live ranges: `more` (decl src ln 6)
  asm ln 18, prod ln 6.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln 10, gen 1
  asm ln 30, prod ln 9.8, live ln 10, gen 1
    live ln 10, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `shoe` (decl src ln 7)
  asm ln 23, prod ln 7.19, live ln 8, gen 0
    live ln 8, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `boot` (decl src ln 8)
  asm ln 27, prod ln 8.19, live ln 9, gen 0
    live ln 9, gen 0 →
    live ln ∞, gen ∞

Computing generations: `more` (decl src ln 6)
  asm ln 11, prod ln 6.0, live ln 9, gen 0
  asm ln 15, prod ln 9.8, live ln 10, gen 1
Building live ranges: `more` (decl src ln 6)
  asm ln 11, prod ln 6.0, live ln 9, gen 0
    live ln 9, gen 0 →
    live ln 10, gen 1
  asm ln 15, prod ln 9.8, live ln 10, gen 1
    live ln 10, gen 1 →
    live ln ∞, gen ∞

🔔 Before live ranges for `nose` (decl src ln 6) not found (variable likely undefined)
❌ Live ranges for `more` (decl src ln 6) not fully covered: live ln 7, gen 0 < live ln 9, gen 0
🔔 After live ranges for (removable) `shoe` (decl src ln 7) not found
🔔 After live ranges for (removable) `boot` (decl src ln 8) not found
❌ Before live range coverage
  Covered:   0
  Uncovered: 1
  Undefined: 1
  Unused:    0
  Removable: 2

#### Check before against after

🔔 After live ranges for (removable) `boot` (decl src ln 8) not found

🔔 After `more` (decl src ln 6) assn asm ln 11, prod ln 6.0, live ln 9, gen 0 coordinates don't match before assn asm ln 18, prod ln 6.0, live ln 7, gen 0
Checking equivalence of `more` (decl src ln 6) from
  assn asm ln 18, prod ln 6.0, live ln 7, gen 0
  i32 %more
  (ReadLSB w32 (w32 0x0) more)
and
  assn asm ln 11, prod ln 6.0, live ln 9, gen 0
  i32 %more
  (ReadLSB w32 (w32 0x0) more)
Query to parse
array more[4] : w32 -> w8 = symbolic
array more[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) more)
     (ReadLSB w32 (w32 0x0) more)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) more)
     N0)
✅ After `more` (decl src ln 6) assn asm ln 11, prod ln 6.0, live ln 9, gen 0 symbolic value matches before assn asm ln 18, prod ln 6.0, live ln 7, gen 0

Checking equivalence of `more` (decl src ln 6) from
  assn asm ln 30, prod ln 9.8, live ln 10, gen 1
  %add = add nsw i32 %3, 1, l9 c8
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) more))
and
  assn asm ln 15, prod ln 9.8, live ln 10, gen 1
  %add = add nsw i32 %more, 1, l9 c8
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) more))
Query to parse
array more[4] : w32 -> w8 = symbolic
array more[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) more))
     (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) more))))
Parsed query
(Eq N0:(Add w32 (w32 0x1)
                 (ReadLSB w32 (w32 0x0) more))
     N0)
✅ After `more` (decl src ln 6) assn asm ln 15, prod ln 9.8, live ln 10, gen 1 symbolic value matches before assn asm ln 30, prod ln 9.8, live ln 10, gen 1

🔔 After live ranges for (removable) `shoe` (decl src ln 7) not found

✅ Before symbolic values checked against after
  Matching:    2
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   2

#### Check after against before

🔔 Before `more` (decl src ln 6) assn asm ln 18, prod ln 6.0, live ln 7, gen 0 coordinates don't match after assn asm ln 11, prod ln 6.0, live ln 9, gen 0
Checking equivalence of `more` (decl src ln 6) from
  assn asm ln 11, prod ln 6.0, live ln 9, gen 0
  i32 %more
  (ReadLSB w32 (w32 0x0) more)
and
  assn asm ln 18, prod ln 6.0, live ln 7, gen 0
  i32 %more
  (ReadLSB w32 (w32 0x0) more)
Query to parse
array more[4] : w32 -> w8 = symbolic
array more[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) more)
     (ReadLSB w32 (w32 0x0) more)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) more)
     N0)
✅ Before `more` (decl src ln 6) assn asm ln 18, prod ln 6.0, live ln 7, gen 0 symbolic value matches after assn asm ln 11, prod ln 6.0, live ln 9, gen 0

Checking equivalence of `more` (decl src ln 6) from
  assn asm ln 15, prod ln 9.8, live ln 10, gen 1
  %add = add nsw i32 %more, 1, l9 c8
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) more))
and
  assn asm ln 30, prod ln 9.8, live ln 10, gen 1
  %add = add nsw i32 %3, 1, l9 c8
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) more))
Query to parse
array more[4] : w32 -> w8 = symbolic
array more[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) more))
     (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) more))))
Parsed query
(Eq N0:(Add w32 (w32 0x1)
                 (ReadLSB w32 (w32 0x0) more))
     N0)
✅ Before `more` (decl src ln 6) assn asm ln 30, prod ln 9.8, live ln 10, gen 1 symbolic value matches after assn asm ln 15, prod ln 9.8, live ln 10, gen 1

✅ After symbolic values checked against before
  Matching:    2
  Mismatched:  0
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
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2-fixed/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O2-fixed/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `foo`

✅ Before and after function names match

### Variables

Before variable `nose` (decl src ln 6)
Before variable `more` (decl src ln 6)
Store to declared address of `more` (decl src ln 6), asm ln 30
  %add = add nsw i32 %3, 1, l9 c8, asm ln 29
  Added assignment asm ln 30, prod ln 9.8, live ln 10, gen 0
Store to declared address of `more` (decl src ln 6), asm ln 18
  arg 1
  Added assignment asm ln 18, prod ln 6.0, live ln 7, gen 0
Before variable `shoe` (decl src ln 7)
Store to declared address of `shoe` (decl src ln 7), asm ln 23
  %1 = load i32, i32* %a, l7 c19, asm ln 22
  @dbg.declare without read users, removable
  Added assignment asm ln 23, prod ln 7.19, live ln 8, gen 0
Before variable `boot` (decl src ln 8)
Store to declared address of `boot` (decl src ln 8), asm ln 27
  %2 = load i32, i32* %b, l8 c19, asm ln 26
  @dbg.declare without read users, removable
  Added assignment asm ln 27, prod ln 8.19, live ln 9, gen 0
Computing generations: `more` (decl src ln 6)
  asm ln 18, prod ln 6.0, live ln 7, gen 0
  asm ln 30, prod ln 9.8, live ln 10, gen 1
Computing generations: `shoe` (decl src ln 7)
  asm ln 23, prod ln 7.19, live ln 8, gen 0
Computing generations: `boot` (decl src ln 8)
  asm ln 27, prod ln 8.19, live ln 9, gen 0

After variable `nose` (decl src ln 6)
Value produced for `nose` (decl src ln 6), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 6.0, live ln 9, gen 0
After variable `nose` (decl src ln 6)
Value produced for `nose` (decl src ln 6), asm ln 10
  arg 0
  Producers match last assignment, skipping
After variable `more` (decl src ln 6)
Value produced for `more` (decl src ln 6), asm ln 11
  arg 1
  Added assignment asm ln 11, prod ln 6.0, live ln 9, gen 0
After variable `shoe` (decl src ln 7)
Value produced for `shoe` (decl src ln 7), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 7.0, live ln 9, gen 0
After variable `boot` (decl src ln 8)
Value produced for `boot` (decl src ln 8), asm ln 13
  arg 0
  Added assignment asm ln 13, prod ln 8.0, live ln 9, gen 0
After variable `more` (decl src ln 6)
Value produced for `more` (decl src ln 6), asm ln 15
  %add = add nsw i32 %more, 1, l9 c8, asm ln 14
  Added assignment asm ln 15, prod ln 9.8, live ln 10, gen 0
Computing generations: `nose` (decl src ln 6)
  asm ln 9, prod ln 6.0, live ln 9, gen 0
Computing generations: `more` (decl src ln 6)
  asm ln 11, prod ln 6.0, live ln 9, gen 0
  asm ln 15, prod ln 9.8, live ln 10, gen 1
Computing generations: `shoe` (decl src ln 7)
  asm ln 12, prod ln 7.0, live ln 9, gen 0
Computing generations: `boot` (decl src ln 8)
  asm ln 13, prod ln 8.0, live ln 9, gen 0

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `more`
  i32 %more
  (ReadLSB w32 (w32 0x0) more)
Collected value for `shoe`
  %1 = load i32, i32* %a, l7 c19
  (ReadLSB w32 (w32 0x0) nose.coerce)
Collected value for `boot`
  %2 = load i32, i32* %b, l8 c19
  (ReadLSB w32 (w32 0x4) nose.coerce)
Collected value for `more`
  %add = add nsw i32 %3, 1, l9 c8
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) more))

#### After values

Collected value for `nose`
  i64 %nose.coerce
  (ReadLSB w64 (w32 0x0) nose.coerce)
Collected value for `more`
  i32 %more
  (ReadLSB w32 (w32 0x0) more)
Collected value for `shoe`
  i64 %nose.coerce
  (ReadLSB w64 (w32 0x0) nose.coerce)
Collected value for `boot`
  i64 %nose.coerce
  (ReadLSB w64 (w32 0x0) nose.coerce)
Collected value for `more`
  %add = add nsw i32 %more, 1, l9 c8
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) more))

### Assignments

Filtering redundant before assignments: `more` (decl src ln 6)

Filtering redundant after assignments: `more` (decl src ln 6)

Computing generations: `more` (decl src ln 6)
  asm ln 18, prod ln 6.0, live ln 7, gen 0
  asm ln 30, prod ln 9.8, live ln 10, gen 1
Computing generations: `shoe` (decl src ln 7)
  asm ln 23, prod ln 7.19, live ln 8, gen 0
Computing generations: `boot` (decl src ln 8)
  asm ln 27, prod ln 8.19, live ln 9, gen 0
Building live ranges: `more` (decl src ln 6)
  asm ln 18, prod ln 6.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln 10, gen 1
  asm ln 30, prod ln 9.8, live ln 10, gen 1
    live ln 10, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `shoe` (decl src ln 7)
  asm ln 23, prod ln 7.19, live ln 8, gen 0
    live ln 8, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `boot` (decl src ln 8)
  asm ln 27, prod ln 8.19, live ln 9, gen 0
    live ln 9, gen 0 →
    live ln ∞, gen ∞

Computing generations: `nose` (decl src ln 6)
  asm ln 9, prod ln 6.0, live ln 9, gen 0
Computing generations: `more` (decl src ln 6)
  asm ln 11, prod ln 6.0, live ln 9, gen 0
  asm ln 15, prod ln 9.8, live ln 10, gen 1
Computing generations: `shoe` (decl src ln 7)
  asm ln 12, prod ln 7.0, live ln 9, gen 0
Computing generations: `boot` (decl src ln 8)
  asm ln 13, prod ln 8.0, live ln 9, gen 0
Building live ranges: `nose` (decl src ln 6)
  asm ln 9, prod ln 6.0, live ln 9, gen 0
    live ln 9, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `more` (decl src ln 6)
  asm ln 11, prod ln 6.0, live ln 9, gen 0
    live ln 9, gen 0 →
    live ln 10, gen 1
  asm ln 15, prod ln 9.8, live ln 10, gen 1
    live ln 10, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `shoe` (decl src ln 7)
  asm ln 12, prod ln 7.0, live ln 9, gen 0
    live ln 9, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `boot` (decl src ln 8)
  asm ln 13, prod ln 8.0, live ln 9, gen 0
    live ln 9, gen 0 →
    live ln ∞, gen ∞

🔔 Before live ranges for `nose` (decl src ln 6) not found (variable likely undefined)
❌ Live ranges for `more` (decl src ln 6) not fully covered: live ln 7, gen 0 < live ln 9, gen 0
❌ Live ranges for `shoe` (decl src ln 7) not fully covered: live ln 8, gen 0 < live ln 9, gen 0
❌ Before live range coverage
  Covered:   1
  Uncovered: 2
  Undefined: 1
  Unused:    0
  Removable: 0

#### Check before against after

Pushed initial value onto stack: (ReadLSB w64 (w32 0x0) nose.coerce)
constu/s: (w64 0x20)
shr: (LShr w64 (ReadLSB w64 (w32 0x0) nose.coerce)
           (w64 0x20))
convert: already 64 bit(s), skipping
convert: (Extract w32 0 (LShr w64 (ReadLSB w64 (w32 0x0) nose.coerce)
                          (w64 0x20)))
Result: (Extract w32 0 (LShr w64 (ReadLSB w64 (w32 0x0) nose.coerce)
                          (w64 0x20)))
Checking equivalence of `boot` (decl src ln 8) from
  assn asm ln 27, prod ln 8.19, live ln 9, gen 0
  %2 = load i32, i32* %b, l8 c19
  (ReadLSB w32 (w32 0x4) nose.coerce)
and
  assn asm ln 13, prod ln 8.0, live ln 9, gen 0
  i64 %nose.coerce
  (Extract w32 0 (LShr w64 (ReadLSB w64 (w32 0x0) nose.coerce)
                          (w64 0x20)))
Query to parse
array nose.coerce[8] : w32 -> w8 = symbolic
array nose.coerce[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x4) nose.coerce)
     (Extract w32 0 (LShr w64 (ReadLSB w64 (w32 0x0) nose.coerce)
                              (w64 0x20)))))
Parsed query
(Eq (ReadLSB w32 (w32 0x4) nose.coerce)
     (Extract w32 0 (LShr w64 (ReadLSB w64 (w32 0x0) nose.coerce)
                              (w64 0x20))))
✅ After `boot` (decl src ln 8) assn asm ln 13, prod ln 8.0, live ln 9, gen 0 symbolic value matches before assn asm ln 27, prod ln 8.19, live ln 9, gen 0

🔔 After `more` (decl src ln 6) assn asm ln 11, prod ln 6.0, live ln 9, gen 0 coordinates don't match before assn asm ln 18, prod ln 6.0, live ln 7, gen 0
Checking equivalence of `more` (decl src ln 6) from
  assn asm ln 18, prod ln 6.0, live ln 7, gen 0
  i32 %more
  (ReadLSB w32 (w32 0x0) more)
and
  assn asm ln 11, prod ln 6.0, live ln 9, gen 0
  i32 %more
  (ReadLSB w32 (w32 0x0) more)
Query to parse
array more[4] : w32 -> w8 = symbolic
array more[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) more)
     (ReadLSB w32 (w32 0x0) more)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) more)
     N0)
✅ After `more` (decl src ln 6) assn asm ln 11, prod ln 6.0, live ln 9, gen 0 symbolic value matches before assn asm ln 18, prod ln 6.0, live ln 7, gen 0

Checking equivalence of `more` (decl src ln 6) from
  assn asm ln 30, prod ln 9.8, live ln 10, gen 1
  %add = add nsw i32 %3, 1, l9 c8
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) more))
and
  assn asm ln 15, prod ln 9.8, live ln 10, gen 1
  %add = add nsw i32 %more, 1, l9 c8
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) more))
Query to parse
array more[4] : w32 -> w8 = symbolic
array more[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) more))
     (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) more))))
Parsed query
(Eq N0:(Add w32 (w32 0x1)
                 (ReadLSB w32 (w32 0x0) more))
     N0)
✅ After `more` (decl src ln 6) assn asm ln 15, prod ln 9.8, live ln 10, gen 1 symbolic value matches before assn asm ln 30, prod ln 9.8, live ln 10, gen 1

🔔 After `shoe` (decl src ln 7) assn asm ln 12, prod ln 7.0, live ln 9, gen 0 coordinates don't match before assn asm ln 23, prod ln 7.19, live ln 8, gen 0
Pushed initial value onto stack: (ReadLSB w64 (w32 0x0) nose.coerce)
convert: already 64 bit(s), skipping
convert: (Extract w32 0 (ReadLSB w64 (w32 0x0) nose.coerce))
Result: (Extract w32 0 (ReadLSB w64 (w32 0x0) nose.coerce))
Checking equivalence of `shoe` (decl src ln 7) from
  assn asm ln 23, prod ln 7.19, live ln 8, gen 0
  %1 = load i32, i32* %a, l7 c19
  (ReadLSB w32 (w32 0x0) nose.coerce)
and
  assn asm ln 12, prod ln 7.0, live ln 9, gen 0
  i64 %nose.coerce
  (Extract w32 0 (ReadLSB w64 (w32 0x0) nose.coerce))
Query to parse
array nose.coerce[8] : w32 -> w8 = symbolic
array nose.coerce[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) nose.coerce)
     (Extract w32 0 (ReadLSB w64 (w32 0x0) nose.coerce))))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) nose.coerce)
     (Extract w32 0 (ReadLSB w64 (w32 0x0) nose.coerce)))
✅ After `shoe` (decl src ln 7) assn asm ln 12, prod ln 7.0, live ln 9, gen 0 symbolic value matches before assn asm ln 23, prod ln 7.19, live ln 8, gen 0

✅ Before symbolic values checked against after
  Matching:    4
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `boot` (decl src ln 8) from
  assn asm ln 13, prod ln 8.0, live ln 9, gen 0
  i64 %nose.coerce
  (Extract w32 0 (LShr w64 (ReadLSB w64 (w32 0x0) nose.coerce)
                          (w64 0x20)))
and
  assn asm ln 27, prod ln 8.19, live ln 9, gen 0
  %2 = load i32, i32* %b, l8 c19
  (ReadLSB w32 (w32 0x4) nose.coerce)
Query to parse
array nose.coerce[8] : w32 -> w8 = symbolic
array nose.coerce[8] : w32 -> w8 = symbolic
(query [] (Eq (Extract w32 0 (LShr w64 (ReadLSB w64 (w32 0x0) nose.coerce)
                              (w64 0x20)))
     (ReadLSB w32 (w32 0x4) nose.coerce)))
Parsed query
(Eq (Extract w32 0 (LShr w64 (ReadLSB w64 (w32 0x0) nose.coerce)
                              (w64 0x20)))
     (ReadLSB w32 (w32 0x4) nose.coerce))
✅ Before `boot` (decl src ln 8) assn asm ln 27, prod ln 8.19, live ln 9, gen 0 symbolic value matches after assn asm ln 13, prod ln 8.0, live ln 9, gen 0

🔔 Before `more` (decl src ln 6) assn asm ln 18, prod ln 6.0, live ln 7, gen 0 coordinates don't match after assn asm ln 11, prod ln 6.0, live ln 9, gen 0
Checking equivalence of `more` (decl src ln 6) from
  assn asm ln 11, prod ln 6.0, live ln 9, gen 0
  i32 %more
  (ReadLSB w32 (w32 0x0) more)
and
  assn asm ln 18, prod ln 6.0, live ln 7, gen 0
  i32 %more
  (ReadLSB w32 (w32 0x0) more)
Query to parse
array more[4] : w32 -> w8 = symbolic
array more[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) more)
     (ReadLSB w32 (w32 0x0) more)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) more)
     N0)
✅ Before `more` (decl src ln 6) assn asm ln 18, prod ln 6.0, live ln 7, gen 0 symbolic value matches after assn asm ln 11, prod ln 6.0, live ln 9, gen 0

Checking equivalence of `more` (decl src ln 6) from
  assn asm ln 15, prod ln 9.8, live ln 10, gen 1
  %add = add nsw i32 %more, 1, l9 c8
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) more))
and
  assn asm ln 30, prod ln 9.8, live ln 10, gen 1
  %add = add nsw i32 %3, 1, l9 c8
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) more))
Query to parse
array more[4] : w32 -> w8 = symbolic
array more[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) more))
     (Add w32 (w32 0x1)
              (ReadLSB w32 (w32 0x0) more))))
Parsed query
(Eq N0:(Add w32 (w32 0x1)
                 (ReadLSB w32 (w32 0x0) more))
     N0)
✅ Before `more` (decl src ln 6) assn asm ln 30, prod ln 9.8, live ln 10, gen 1 symbolic value matches after assn asm ln 15, prod ln 9.8, live ln 10, gen 1

❌ Before live range for `nose` (decl src ln 6) not found

🔔 Before `shoe` (decl src ln 7) assn asm ln 23, prod ln 7.19, live ln 8, gen 0 coordinates don't match after assn asm ln 12, prod ln 7.0, live ln 9, gen 0
Checking equivalence of `shoe` (decl src ln 7) from
  assn asm ln 12, prod ln 7.0, live ln 9, gen 0
  i64 %nose.coerce
  (Extract w32 0 (ReadLSB w64 (w32 0x0) nose.coerce))
and
  assn asm ln 23, prod ln 7.19, live ln 8, gen 0
  %1 = load i32, i32* %a, l7 c19
  (ReadLSB w32 (w32 0x0) nose.coerce)
Query to parse
array nose.coerce[8] : w32 -> w8 = symbolic
array nose.coerce[8] : w32 -> w8 = symbolic
(query [] (Eq (Extract w32 0 (ReadLSB w64 (w32 0x0) nose.coerce))
     (ReadLSB w32 (w32 0x0) nose.coerce)))
Parsed query
(Eq (Extract w32 0 (ReadLSB w64 (w32 0x0) nose.coerce))
     N0:(ReadLSB w32 (w32 0x0) nose.coerce))
✅ Before `shoe` (decl src ln 7) assn asm ln 23, prod ln 7.19, live ln 8, gen 0 symbolic value matches after assn asm ln 12, prod ln 7.0, live ln 9, gen 0

❌ After symbolic values checked against before
  Matching:    4
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
