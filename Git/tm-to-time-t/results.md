+ source ../vars.sh
++ set -eux
+++ dirname ../vars.sh
++ SCRIPT_DIR=..
++ source ../../vars.sh
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
+++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
+++ CC_IR_OPTS='-S -emit-llvm'
+++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
+++ CC_O0_OPTS=
+++ CC_O1_OPTS=-O1
+++ CC_LINK_OPTS='-D CONCRETE -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
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
++++ klee debug debug-info-check
++++ local build=debug
++++ local program=debug-info-check
++++ echo /Users/jryans/Projects/klee/build-debug/bin/debug-info-check
+++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/debug-info-check
+++ CHECK_OPTS='--debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace'
+ [[ ! -s example.c ]]
+ ./build.sh
+++ dirname ./build.sh
++ SCRIPT_DIR=.
++ source ./../vars.sh
+++ set -eux
++++ dirname ./../vars.sh
+++ SCRIPT_DIR=./..
+++ source ./../../vars.sh
++++ set -eux
+++++ csmith release csmith
+++++ local build=release
+++++ local program=csmith
+++++ echo /Users/jryans/Projects/csmith/build-release/src/csmith
++++ CSMITH=/Users/jryans/Projects/csmith/build-release/src/csmith
++++ SRC_FILE=example.c
+++++ llvm release-clang-lldb-13.0.0 clang-tidy
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang-tidy
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
+++++ llvm release-clang-lldb-13.0.0 clang
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang
++++ CLANG=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang
+++++ llvm release-clang-lldb-13.0.0 llvm-as
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llvm-as
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as
++++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as
++++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_OPTS='-D CONCRETE -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ klee debug print-module
+++++ local build=debug
+++++ local program=print-module
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/print-module
++++ PRINT_MODULE=/Users/jryans/Projects/klee/build-debug/bin/print-module
+++++ klee release klee
+++++ local build=release
+++++ local program=klee
+++++ echo /Users/jryans/Projects/klee/build-release/bin/klee
++++ KLEE=/Users/jryans/Projects/klee/build-release/bin/klee
++++ KLEE_COMMON_OPTS='--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4'
++++ O0_BC=klee-out-O0/final.bc
++++ O1_BC=klee-out-O1/final.bc
++++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
++++ O2_BC=klee-out-O2/final.bc
++++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
+++++ klee debug debug-info-check
+++++ local build=debug
+++++ local program=debug-info-check
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/debug-info-check
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/debug-info-check
++++ CHECK_OPTS='--debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace'
++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
++ mkdir -p klee-out-O1
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope -O1 -o /dev/null
++ filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
++ local input_ir=example-O1-cg-raw.ll
++ local output_ir=example-O1-cg.ll
++ grep -v '^+'
++ sed '2,/IR Dump/!d'
++ grep -v 'IR Dump'
++ rm example-O1-cg-raw.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1/final.bc example-O1-cg.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -O1 -D CONCRETE -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -o example-O1
+ ./check.sh
+++ dirname ./check.sh
++ SCRIPT_DIR=.
++ source ./../vars.sh
+++ set -eux
++++ dirname ./../vars.sh
+++ SCRIPT_DIR=./..
+++ source ./../../vars.sh
++++ set -eux
+++++ csmith release csmith
+++++ local build=release
+++++ local program=csmith
+++++ echo /Users/jryans/Projects/csmith/build-release/src/csmith
++++ CSMITH=/Users/jryans/Projects/csmith/build-release/src/csmith
++++ SRC_FILE=example.c
+++++ llvm release-clang-lldb-13.0.0 clang-tidy
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang-tidy
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
+++++ llvm release-clang-lldb-13.0.0 clang
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang
++++ CLANG=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang
+++++ llvm release-clang-lldb-13.0.0 llvm-as
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llvm-as
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as
++++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as
++++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_OPTS='-D CONCRETE -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ klee debug print-module
+++++ local build=debug
+++++ local program=print-module
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/print-module
++++ PRINT_MODULE=/Users/jryans/Projects/klee/build-debug/bin/print-module
+++++ klee release klee
+++++ local build=release
+++++ local program=klee
+++++ echo /Users/jryans/Projects/klee/build-release/bin/klee
++++ KLEE=/Users/jryans/Projects/klee/build-release/bin/klee
++++ KLEE_COMMON_OPTS='--output-module --use-query-log=all:kquery,solver:kquery --debug-execution-trace --max-forks=4'
++++ O0_BC=klee-out-O0/final.bc
++++ O1_BC=klee-out-O1/final.bc
++++ O1_FIXED_BC=klee-out-O1-fixed/final.bc
++++ O2_BC=klee-out-O2/final.bc
++++ O2_FIXED_BC=klee-out-O2-fixed/final.bc
+++++ klee debug debug-info-check
+++++ local build=debug
+++++ local program=debug-info-check
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/debug-info-check
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/debug-info-check
++++ CHECK_OPTS='--debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace'
++ /Users/jryans/Projects/klee/build-debug/bin/debug-info-check klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `tm_to_time_t`

✅ Before and after function names match

### Variables

Before variable `tm` (decl src ln 3)
Store to `tm` (decl src ln 3), asm ln 18
  arg 0
  Added assignment starting at src ln 3, col 0
Before variable `year` (decl src ln 8)
Store to `year` (decl src ln 8), asm ln 25
  %sub = sub nsw i32 %1, 70, l8 c25, asm ln 24
  Added assignment starting at src ln 8, col 25
Before variable `month` (decl src ln 9)
Store to `month` (decl src ln 9), asm ln 30
  %3 = load i32, i32* %tm_mon, l9 c18, asm ln 29
  Added assignment starting at src ln 9, col 18
Before variable `day` (decl src ln 10)
Store to `day` (decl src ln 10), asm ln 78
  %dec = add nsw i32 %12, -1, l17 c6, asm ln 77
  Added assignment starting at src ln 17, col 6
Store to `day` (decl src ln 10), asm ln 35
  %5 = load i32, i32* %tm_mday, l10 c16, asm ln 34
  Added assignment starting at src ln 10, col 16

After variable `tm` (decl src ln 3)
@dbg.value mapping for `tm` (decl src ln 3), asm ln 13
Value produced for `tm` (decl src ln 3), asm ln 13
  arg 0
  Added assignment starting at src ln 3, col 0
After variable `year` (decl src ln 8)
@dbg.value mapping for `year` (decl src ln 8), asm ln 16
Value produced for `year` (decl src ln 8), asm ln 16
  %0 = load i32, i32* %tm_year, !tbaa !52, l8 c17, asm ln 15
  Added assignment starting at src ln 8, col 17
After variable `month` (decl src ln 9)
@dbg.value mapping for `month` (decl src ln 9), asm ln 20
Value produced for `month` (decl src ln 9), asm ln 20
  %1 = load i32, i32* %tm_mon, !tbaa !60, l9 c18, asm ln 18
  Added assignment starting at src ln 9, col 18
After variable `day` (decl src ln 10)
After variable intrinsic with undef input, asm ln 21, ignoring undefined variable
  @dbg.value(i32 undef, !37)
After variable `day` (decl src ln 10)
@dbg.value mapping for `day` (decl src ln 10), asm ln 32
Value produced for `day` (decl src ln 10), asm ln 32
  %5 = load i32, i32* %tm_mday, !tbaa !65, l10 c16, asm ln 31
  Added assignment starting at src ln 10, col 16
After variable `day` (decl src ln 10)
@dbg.value mapping for `day` (decl src ln 10), asm ln 38
Value produced for `day` (decl src ln 10), asm ln 38
  const i32 undef
❌ Value produced for `day` (decl src ln 10): missing line info

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Assignments

❌ Live ranges for `year` (decl src ln 8) don't match: [8.25,∞) vs. [8.17,∞)
❌ Before live range coverage
  Covered:   3
  Uncovered: 1
  Undefined: 0
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

warning: linking module flags 'SDK Version': IDs have conflicting values ('[2 x i32] [i32 13, i32 0]' from memset64_Debug+Asserts.bc with '[2 x i32] [i32 13, i32 1]' from klee-out-O0/final.bc)
Collected value for `tm`
  Concrete pointer resolves to tm.deref, offset 0x0
  Replaced concrete pointer with hash 0x3A21E742A608B2F9
  %struct.tm.1* %tm
  0x3A21E742A608B2F9
Collected value for `year`
  %sub = sub nsw i32 %1, 70, l8 c25
  (Add w32 0xFFFFFFBA
          (ReadLSB w32 0x14 tm.deref))
Collected value for `month`
  %3 = load i32, i32* %tm_mon, l9 c18
  (ReadLSB w32 0x10 tm.deref)
Collected value for `day`
  %5 = load i32, i32* %tm_mday, l10 c16
  (ReadLSB w32 0xC tm.deref)
Collected value for `day`
  %dec = add nsw i32 %12, -1, l17 c6
  (Add w32 0xFFFFFFFF
          (ReadLSB w32 0xC tm.deref))

#### After values

warning: linking module flags 'SDK Version': IDs have conflicting values ('[2 x i32] [i32 13, i32 0]' from memset64_Debug+Asserts.bc with '[2 x i32] [i32 13, i32 1]' from klee-out-O1/final.bc)
Collected value for `tm`
  Concrete pointer resolves to tm.deref, offset 0x0
  Replaced concrete pointer with hash 0x3A21E742A608B2F9
  %struct.tm.2* %tm
  0x3A21E742A608B2F9
Collected value for `year`
  %0 = load i32, i32* %tm_year, !tbaa !54, l8 c17
  (ReadLSB w32 0x14 tm.deref)
Collected value for `month`
  %1 = load i32, i32* %tm_mon, !tbaa !62, l9 c18
  (ReadLSB w32 0x10 tm.deref)
Collected value for `day`
  %5 = load i32, i32* %tm_mday, !tbaa !67, l10 c16
  (ReadLSB w32 0xC tm.deref)

#### Check before against after

Checking equivalence of `day` (decl src ln 10) from
assn 0, src ln 10, col 16
%5 = load i32, i32* %tm_mday, l10 c16
(ReadLSB w32 0xC tm.deref)
and
assn 0, src ln 10, col 16
%5 = load i32, i32* %tm_mday, !tbaa !67, l10 c16
(ReadLSB w32 0xC tm.deref)
Query to parse
array tm.deref[56] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0xC tm.deref)
     (ReadLSB w32 0xC tm.deref)))
Parsed query
(Eq N0:(ReadLSB w32 0xC tm.deref)
     N0)
🔔 After `day` (decl src ln 10) assn 0, src ln 10, col 16 coordinates don't match before assn 1, src ln 17, col 6
Checking equivalence of `day` (decl src ln 10) from
assn 1, src ln 17, col 6
%dec = add nsw i32 %12, -1, l17 c6
(Add w32 0xFFFFFFFF
          (ReadLSB w32 0xC tm.deref))
and
assn 0, src ln 10, col 16
%5 = load i32, i32* %tm_mday, !tbaa !67, l10 c16
(ReadLSB w32 0xC tm.deref)
Query to parse
array tm.deref[56] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 0xFFFFFFFF
              (ReadLSB w32 0xC tm.deref))
     (ReadLSB w32 0xC tm.deref)))
Parsed query
(Eq (Add w32 0xFFFFFFFF
              N0:(ReadLSB w32 0xC tm.deref))
     N0)
❌ After `day` (decl src ln 10) assn 0, src ln 10, col 16 symbolic value doesn't match before assn 1, src ln 17, col 6
(Eq (Add w32 0xFFFFFFFF
              N0:(ReadLSB w32 0xC tm.deref))
     N0)
Checking equivalence of `month` (decl src ln 9) from
assn 0, src ln 9, col 18
%3 = load i32, i32* %tm_mon, l9 c18
(ReadLSB w32 0x10 tm.deref)
and
assn 0, src ln 9, col 18
%1 = load i32, i32* %tm_mon, !tbaa !62, l9 c18
(ReadLSB w32 0x10 tm.deref)
Query to parse
array tm.deref[56] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x10 tm.deref)
     (ReadLSB w32 0x10 tm.deref)))
Parsed query
(Eq N0:(ReadLSB w32 0x10 tm.deref)
     N0)
Checking equivalence of `tm` (decl src ln 3) from
assn 0, src ln 3, col 0
%struct.tm.1* %tm
0x3A21E742A608B2F9
and
assn 0, src ln 3, col 0
%struct.tm.2* %tm
0x3A21E742A608B2F9
🔔 After `year` (decl src ln 8) assn 0, src ln 8, col 17 coordinates don't match before assn 0, src ln 8, col 25
Pushed initial value onto stack: (ReadLSB w32 0x14 tm.deref)
constu/s: 0x46
minus: (Sub w32 (ReadLSB w32 0x14 tm.deref)
          0x46)
Result: (Sub w32 (ReadLSB w32 0x14 tm.deref)
          0x46)
Checking equivalence of `year` (decl src ln 8) from
assn 0, src ln 8, col 25
%sub = sub nsw i32 %1, 70, l8 c25
(Add w32 0xFFFFFFBA
          (ReadLSB w32 0x14 tm.deref))
and
assn 0, src ln 8, col 17
%0 = load i32, i32* %tm_year, !tbaa !54, l8 c17
(Sub w32 (ReadLSB w32 0x14 tm.deref)
          0x46)
Query to parse
array tm.deref[56] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 0xFFFFFFBA
              (ReadLSB w32 0x14 tm.deref))
     (Sub w32 (ReadLSB w32 0x14 tm.deref)
              0x46)))
Parsed query
(Eq (Add w32 0xFFFFFFBA
              N0:(ReadLSB w32 0x14 tm.deref))
     (Sub w32 N0 0x46))
❌ Before symbolic values checked against after
  Matching:    4
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `day` (decl src ln 10) from
assn 0, src ln 10, col 16
%5 = load i32, i32* %tm_mday, !tbaa !67, l10 c16
(ReadLSB w32 0xC tm.deref)
and
assn 0, src ln 10, col 16
%5 = load i32, i32* %tm_mday, l10 c16
(ReadLSB w32 0xC tm.deref)
Query to parse
array tm.deref[56] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0xC tm.deref)
     (ReadLSB w32 0xC tm.deref)))
Parsed query
(Eq N0:(ReadLSB w32 0xC tm.deref)
     N0)
Checking equivalence of `month` (decl src ln 9) from
assn 0, src ln 9, col 18
%1 = load i32, i32* %tm_mon, !tbaa !62, l9 c18
(ReadLSB w32 0x10 tm.deref)
and
assn 0, src ln 9, col 18
%3 = load i32, i32* %tm_mon, l9 c18
(ReadLSB w32 0x10 tm.deref)
Query to parse
array tm.deref[56] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x10 tm.deref)
     (ReadLSB w32 0x10 tm.deref)))
Parsed query
(Eq N0:(ReadLSB w32 0x10 tm.deref)
     N0)
Checking equivalence of `tm` (decl src ln 3) from
assn 0, src ln 3, col 0
%struct.tm.2* %tm
0x3A21E742A608B2F9
and
assn 0, src ln 3, col 0
%struct.tm.1* %tm
0x3A21E742A608B2F9
🔔 Before `year` (decl src ln 8) assn 0, src ln 8, col 25 coordinates don't match after assn 0, src ln 8, col 17
Checking equivalence of `year` (decl src ln 8) from
assn 0, src ln 8, col 17
%0 = load i32, i32* %tm_year, !tbaa !54, l8 c17
(Sub w32 (ReadLSB w32 0x14 tm.deref)
          0x46)
and
assn 0, src ln 8, col 25
%sub = sub nsw i32 %1, 70, l8 c25
(Add w32 0xFFFFFFBA
          (ReadLSB w32 0x14 tm.deref))
Query to parse
array tm.deref[56] : w32 -> w8 = symbolic
(query [] (Eq (Sub w32 (ReadLSB w32 0x14 tm.deref)
              0x46)
     (Add w32 0xFFFFFFBA
              (ReadLSB w32 0x14 tm.deref))))
Parsed query
(Eq (Sub w32 N0:(ReadLSB w32 0x14 tm.deref)
              0x46)
     (Add w32 0xFFFFFFBA N0))
✅ After symbolic values checked against before
  Matching:    4
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed