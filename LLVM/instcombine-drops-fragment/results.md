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
+ mkdir -p klee-out-O2
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2/final.bc example-O2.ll
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc -O0 -o example-O2.o --filetype obj example-O2.ll
+ mkdir -p klee-out-O2-fixed
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2-fixed/final.bc example-O2-fixed.ll
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc -O0 -o example-O2-fixed.o --filetype obj example-O2-fixed.ll
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

warning: Linking two modules of different data layouts: 'memcpy64_Debug+Asserts.bc' is 'e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128' whereas 'klee-out-O0/final.bc' is 'e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128'

warning: Linking two modules of different target triples: 'memcpy64_Debug+Asserts.bc' is 'x86_64-apple-macosx13.0.0' whereas 'klee-out-O0/final.bc' is 'x86_64-unknown-linux-gnu'

✅ Before and after function names match

### Variables

Before variable `eyelids` (decl src ln 8)
Store to declared address of `eyelids` (decl src ln 8), asm ln 17
  arg 0
  Added assignment asm ln 17, prod ln 8.0, live ln 9, gen 0
Before variable `bar` (decl src ln 10)
Store to declared address of `bar` (decl src ln 10), asm ln 26
  %add = add nsw i32 %1, %2, l10 c23, asm ln 25
  @dbg.declare without read users, removable
  Added assignment asm ln 26, prod ln 10.23, live ln 11, gen 0
Computing generations: `eyelids` (decl src ln 8)
  asm ln 17, prod ln 8.0, live ln 9, gen 0
Computing generations: `bar` (decl src ln 10)
  asm ln 26, prod ln 10.23, live ln 11, gen 0

After variable `eyelids` (decl src ln 8)
Value produced for `eyelids` (decl src ln 8), asm ln 11
  arg 0
  Added assignment asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)
After variable `bar` (decl src ln 10)
After variable intrinsic with undef input, asm ln 13, ignoring undefined variable
  @dbg.value(i32 undef, !21)
Computing generations: `eyelids` (decl src ln 8)
  asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `eyelids`
  i64 %eyelids.coerce
  (ReadLSB w64 (w32 0x0) eyelids.coerce)
Collected value for `bar`
  %add = add nsw i32 %1, %2, l10 c23
  (Add w32 (ReadLSB w32 (w32 0x0) eyelids.coerce)
          (ReadLSB w32 (w32 0x4) eyelids.coerce))

#### After values

Collected value for `eyelids`
  i64 %eyelids.coerce
  (ReadLSB w64 (w32 0x0) eyelids.coerce)

### Assignments

Computing generations: `eyelids` (decl src ln 8)
  asm ln 17, prod ln 8.0, live ln 9, gen 0
Computing generations: `bar` (decl src ln 10)
  asm ln 26, prod ln 10.23, live ln 11, gen 0
Building live ranges: `eyelids` (decl src ln 8)
  asm ln 17, prod ln 8.0, live ln 9, gen 0
    live ln 9, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `bar` (decl src ln 10)
  asm ln 26, prod ln 10.23, live ln 11, gen 0
    live ln 11, gen 0 →
    live ln ∞, gen ∞

Computing generations: `eyelids` (decl src ln 8)
  asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)
Building live ranges: `eyelids` (decl src ln 8)
  asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)
    live ln 9, gen 0 →
    live ln ∞, gen ∞

After frag: [0, 32)
❌ Fragments for `eyelids` (decl src ln 8) not fully covered: 64 != 32
🔔 After live ranges for (removable) `bar` (decl src ln 10) not found
❌ Before live range coverage
  Covered:   0
  Uncovered: 1
  Undefined: 0
  Unused:    0
  Removable: 1

#### Check before against after

🔔 After live ranges for (removable) `bar` (decl src ln 10) not found

Pushed initial value onto stack: (ReadLSB w64 (w32 0x0) eyelids.coerce)
Result: (ReadLSB w64 (w32 0x0) eyelids.coerce)
Checking equivalence of `eyelids` (decl src ln 8) from
  assn asm ln 17, prod ln 8.0, live ln 9, gen 0
  i64 %eyelids.coerce
  (ReadLSB w64 (w32 0x0) eyelids.coerce)
and
  assn asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)
  i64 %eyelids.coerce
  (ReadLSB w64 (w32 0x0) eyelids.coerce)
Query to parse
array eyelids.coerce[8] : w32 -> w8 = symbolic
array eyelids.coerce[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) eyelids.coerce)
     (ReadLSB w64 (w32 0x0) eyelids.coerce)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) eyelids.coerce)
     N0)
✅ After `eyelids` (decl src ln 8) assn asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32) symbolic value matches before assn asm ln 17, prod ln 8.0, live ln 9, gen 0

✅ Before symbolic values checked against after
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   1

#### Check after against before

Checking equivalence of `eyelids` (decl src ln 8) from
  assn asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)
  i64 %eyelids.coerce
  (ReadLSB w64 (w32 0x0) eyelids.coerce)
and
  assn asm ln 17, prod ln 8.0, live ln 9, gen 0
  i64 %eyelids.coerce
  (ReadLSB w64 (w32 0x0) eyelids.coerce)
Query to parse
array eyelids.coerce[8] : w32 -> w8 = symbolic
array eyelids.coerce[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) eyelids.coerce)
     (ReadLSB w64 (w32 0x0) eyelids.coerce)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) eyelids.coerce)
     N0)
✅ Before `eyelids` (decl src ln 8) assn asm ln 17, prod ln 8.0, live ln 9, gen 0 symbolic value matches after assn asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)

✅ After symbolic values checked against before
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

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

warning: Linking two modules of different data layouts: 'memcpy64_Debug+Asserts.bc' is 'e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128' whereas 'klee-out-O0/final.bc' is 'e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128'

warning: Linking two modules of different target triples: 'memcpy64_Debug+Asserts.bc' is 'x86_64-apple-macosx13.0.0' whereas 'klee-out-O0/final.bc' is 'x86_64-unknown-linux-gnu'

✅ Before and after function names match

### Variables

Before variable `eyelids` (decl src ln 8)
Store to declared address of `eyelids` (decl src ln 8), asm ln 17
  arg 0
  Added assignment asm ln 17, prod ln 8.0, live ln 9, gen 0
Before variable `bar` (decl src ln 10)
Store to declared address of `bar` (decl src ln 10), asm ln 26
  %add = add nsw i32 %1, %2, l10 c23, asm ln 25
  @dbg.declare without read users, removable
  Added assignment asm ln 26, prod ln 10.23, live ln 11, gen 0
Computing generations: `eyelids` (decl src ln 8)
  asm ln 17, prod ln 8.0, live ln 9, gen 0
Computing generations: `bar` (decl src ln 10)
  asm ln 26, prod ln 10.23, live ln 11, gen 0

After variable `eyelids` (decl src ln 8)
Value produced for `eyelids` (decl src ln 8), asm ln 11
  arg 0
  Added assignment asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)
After variable `eyelids` (decl src ln 8)
Value produced for `eyelids` (decl src ln 8), asm ln 12
  const i32 undef
🔔 Value produced for `eyelids` (decl src ln 8): missing produced ln, using decl ln
  Added assignment asm ln 12, prod ln 8.0, live ln 9, gen 0, frag [32, 64)
After variable `bar` (decl src ln 10)
After variable intrinsic with undef input, asm ln 14, ignoring undefined variable
  @dbg.value(i32 undef, !22)
Computing generations: `eyelids` (decl src ln 8)
  asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)
  asm ln 12, prod ln 8.0, live ln 9, gen 1, frag [32, 64)

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `eyelids`
  i64 %eyelids.coerce
  (ReadLSB w64 (w32 0x0) eyelids.coerce)
Collected value for `bar`
  %add = add nsw i32 %1, %2, l10 c23
  (Add w32 (ReadLSB w32 (w32 0x0) eyelids.coerce)
          (ReadLSB w32 (w32 0x4) eyelids.coerce))

#### After values

Collected value for `eyelids`
  i64 %eyelids.coerce
  (ReadLSB w64 (w32 0x0) eyelids.coerce)
Collected value for `eyelids`
  i32 undef
  (w32 0x0)
[0;35mKLEE: WARNING: Unable to load source file `/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023519-21021-14nu2y.hnai8/example.c`
[0m
### Assignments

Filtering redundant after assignments: `eyelids` (decl src ln 8)

Computing generations: `eyelids` (decl src ln 8)
  asm ln 17, prod ln 8.0, live ln 9, gen 0
Computing generations: `bar` (decl src ln 10)
  asm ln 26, prod ln 10.23, live ln 11, gen 0
Building live ranges: `eyelids` (decl src ln 8)
  asm ln 17, prod ln 8.0, live ln 9, gen 0
    live ln 9, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `bar` (decl src ln 10)
  asm ln 26, prod ln 10.23, live ln 11, gen 0
    live ln 11, gen 0 →
    live ln ∞, gen ∞

Computing generations: `eyelids` (decl src ln 8)
  asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)
  asm ln 12, prod ln 8.0, live ln 9, gen 1, frag [32, 64)
Building live ranges: `eyelids` (decl src ln 8)
  asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)
    live ln 9, gen 0 →
    live ln 9, gen 1

After frag: [0, 32)
❌ Fragments for `eyelids` (decl src ln 8) not fully covered: 64 != 32
🔔 After live ranges for (removable) `bar` (decl src ln 10) not found
❌ Before live range coverage
  Covered:   0
  Uncovered: 1
  Undefined: 0
  Unused:    0
  Removable: 1

#### Check before against after

🔔 After live ranges for (removable) `bar` (decl src ln 10) not found

Pushed initial value onto stack: (ReadLSB w64 (w32 0x0) eyelids.coerce)
Result: (ReadLSB w64 (w32 0x0) eyelids.coerce)
Checking equivalence of `eyelids` (decl src ln 8) from
  assn asm ln 17, prod ln 8.0, live ln 9, gen 0
  i64 %eyelids.coerce
  (ReadLSB w64 (w32 0x0) eyelids.coerce)
and
  assn asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)
  i64 %eyelids.coerce
  (ReadLSB w64 (w32 0x0) eyelids.coerce)
Query to parse
array eyelids.coerce[8] : w32 -> w8 = symbolic
array eyelids.coerce[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) eyelids.coerce)
     (ReadLSB w64 (w32 0x0) eyelids.coerce)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) eyelids.coerce)
     N0)
✅ After `eyelids` (decl src ln 8) assn asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32) symbolic value matches before assn asm ln 17, prod ln 8.0, live ln 9, gen 0

✅ Before symbolic values checked against after
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   1

#### Check after against before

Checking equivalence of `eyelids` (decl src ln 8) from
  assn asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)
  i64 %eyelids.coerce
  (ReadLSB w64 (w32 0x0) eyelids.coerce)
and
  assn asm ln 17, prod ln 8.0, live ln 9, gen 0
  i64 %eyelids.coerce
  (ReadLSB w64 (w32 0x0) eyelids.coerce)
Query to parse
array eyelids.coerce[8] : w32 -> w8 = symbolic
array eyelids.coerce[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w64 (w32 0x0) eyelids.coerce)
     (ReadLSB w64 (w32 0x0) eyelids.coerce)))
Parsed query
(Eq N0:(ReadLSB w64 (w32 0x0) eyelids.coerce)
     N0)
✅ Before `eyelids` (decl src ln 8) assn asm ln 17, prod ln 8.0, live ln 9, gen 0 symbolic value matches after assn asm ln 11, prod ln 8.0, live ln 9, gen 0, frag [0, 32)

🔔 Before `eyelids` (decl src ln 8) assn asm ln 17, prod ln 8.0, live ln 9, gen 0 coordinates don't match after assn asm ln 12, prod ln 8.0, live ln 9, gen 1, frag [32, 64)
Variable intrinsic with undef input
❌ After `eyelids` (decl src ln 8) assn asm ln 12, prod ln 8.0, live ln 9, gen 1, frag [32, 64) has no symbolic value from i32 undef

❌ After symbolic values checked against before
  Matching:    1
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
