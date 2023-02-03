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
+++ CC_COMMON_OPTS='-I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
+++ CC_IR_OPTS='-S -emit-llvm'
+++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
+++ CC_O0_OPTS=
+++ CC_O1_OPTS=-O1
+++ CC_LINK_OPTS='-D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
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
++++ CC_COMMON_OPTS='-I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_OPTS='-D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
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
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -S -emit-llvm -o example-O0.ll
clang-13: [0;1;35mwarning: [0m[1m-Xlinker -syslibroot: 'linker' input unused [-Wunused-command-line-argument][0m
clang-13: [0;1;35mwarning: [0m[1m/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk: 'linker' input unused [-Wunused-command-line-argument][0m
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -S -emit-llvm -O1 -o example-O1.ll
clang-13: [0;1;35mwarning: [0m[1m-Xlinker -syslibroot: 'linker' input unused [-Wunused-command-line-argument][0m
clang-13: [0;1;35mwarning: [0m[1m/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk: 'linker' input unused [-Wunused-command-line-argument][0m
++ mkdir -p klee-out-O1
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope -O1 -o /dev/null
++ filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
++ local input_ir=example-O1-cg-raw.ll
++ local output_ir=example-O1-cg.ll
++ grep -v '^+'
++ sed '2,/IR Dump/!d'
++ grep -v 'IR Dump'
++ rm example-O1-cg-raw.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1/final.bc example-O1-cg.ll
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
++++ CC_COMMON_OPTS='-I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_LINK_OPTS='-D CONCRETE -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
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

Before variable `tm` (decl src line 3)
Store to `tm` (decl src line 3), asm line 18
  arg 0
  Added assignment starting at src line 3, column 0
Before variable `year` (decl src line 8)
Store to `year` (decl src line 8), asm line 25
  %sub = sub nsw i32 %1, 70, l8 c25, asm line 24
  Added assignment starting at src line 8, column 25
Before variable `month` (decl src line 9)
Store to `month` (decl src line 9), asm line 30
  %3 = load i32, i32* %tm_mon, l9 c18, asm line 29
  Added assignment starting at src line 9, column 18
Before variable `day` (decl src line 10)
Store to `day` (decl src line 10), asm line 78
  %dec = add nsw i32 %12, -1, l17 c6, asm line 77
  Added assignment starting at src line 17, column 6
Store to `day` (decl src line 10), asm line 35
  %5 = load i32, i32* %tm_mday, l10 c16, asm line 34
  Added assignment starting at src line 10, column 16

After variable `tm` (decl src line 3)
@dbg.value mapping for `tm` (decl src line 3), asm line 13
Value produced for `tm` (decl src line 3), asm line 13
  arg 0
  Added assignment starting at src line 3, column 0
After variable `year` (decl src line 8)
@dbg.value mapping for `year` (decl src line 8), asm line 16
Value produced for `year` (decl src line 8), asm line 16
  %0 = load i32, i32* %tm_year, !tbaa !52, l8 c17, asm line 15
  Added assignment starting at src line 8, column 17
After variable `month` (decl src line 9)
@dbg.value mapping for `month` (decl src line 9), asm line 20
Value produced for `month` (decl src line 9), asm line 20
  %1 = load i32, i32* %tm_mon, !tbaa !60, l9 c18, asm line 18
  Added assignment starting at src line 9, column 18
After variable `day` (decl src line 10)
After variable intrinsic with undef input, asm line 21, ignoring undefined variable
  @dbg.value(i32 undef, !37)
After variable `day` (decl src line 10)
@dbg.value mapping for `day` (decl src line 10), asm line 32
Value produced for `day` (decl src line 10), asm line 32
  %5 = load i32, i32* %tm_mday, !tbaa !65, l10 c16, asm line 31
  Added assignment starting at src line 10, column 16
After variable `day` (decl src line 10)
@dbg.value mapping for `day` (decl src line 10), asm line 38
Value produced for `day` (decl src line 10), asm line 38
  const i32 undef
❌ Value produced for `day` (decl src line 10): missing line info

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Assignments

❌ Live ranges for `year` (decl src line 8) don't match: [8.25,∞) vs. [8.17,∞)
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

Checking equivalence of `day` (decl src line 10) from
assn 0, src line 10, column 16
%5 = load i32, i32* %tm_mday, l10 c16
(ReadLSB w32 0xC tm.deref)
and
assn 0, src line 10, column 16
%5 = load i32, i32* %tm_mday, !tbaa !67, l10 c16
(ReadLSB w32 0xC tm.deref)
Query to parse
array tm.deref[56] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0xC tm.deref)
     (ReadLSB w32 0xC tm.deref)))
Parsed query
(Eq N0:(ReadLSB w32 0xC tm.deref)
     N0)
🔔 After assn 0, src line 10, column 16 doesn't match before assn 1, src line 17, column 6
Checking equivalence of `day` (decl src line 10) from
assn 1, src line 17, column 6
%dec = add nsw i32 %12, -1, l17 c6
(Add w32 0xFFFFFFFF
          (ReadLSB w32 0xC tm.deref))
and
assn 0, src line 10, column 16
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
❌ Symbolic values don't match:
(Eq (Add w32 0xFFFFFFFF
              N0:(ReadLSB w32 0xC tm.deref))
     N0)
Checking equivalence of `month` (decl src line 9) from
assn 0, src line 9, column 18
%3 = load i32, i32* %tm_mon, l9 c18
(ReadLSB w32 0x10 tm.deref)
and
assn 0, src line 9, column 18
%1 = load i32, i32* %tm_mon, !tbaa !62, l9 c18
(ReadLSB w32 0x10 tm.deref)
Query to parse
array tm.deref[56] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x10 tm.deref)
     (ReadLSB w32 0x10 tm.deref)))
Parsed query
(Eq N0:(ReadLSB w32 0x10 tm.deref)
     N0)
Checking equivalence of `tm` (decl src line 3) from
assn 0, src line 3, column 0
%struct.tm.1* %tm
0x3A21E742A608B2F9
and
assn 0, src line 3, column 0
%struct.tm.2* %tm
0x3A21E742A608B2F9
🔔 After assn 0, src line 8, column 17 doesn't match before assn 0, src line 8, column 25
Pushed initial value onto stack: (ReadLSB w32 0x14 tm.deref)
constu/s: 0x46
minus: (Sub w32 (ReadLSB w32 0x14 tm.deref)
          (Extract w32 0 0x46))
Result: (Sub w32 (ReadLSB w32 0x14 tm.deref)
          (Extract w32 0 0x46))
Checking equivalence of `year` (decl src line 8) from
assn 0, src line 8, column 25
%sub = sub nsw i32 %1, 70, l8 c25
(Add w32 0xFFFFFFBA
          (ReadLSB w32 0x14 tm.deref))
and
assn 0, src line 8, column 17
%0 = load i32, i32* %tm_year, !tbaa !54, l8 c17
(Sub w32 (ReadLSB w32 0x14 tm.deref)
          (Extract w32 0 0x46))
Query to parse
array tm.deref[56] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 0xFFFFFFBA
              (ReadLSB w32 0x14 tm.deref))
     (Sub w32 (ReadLSB w32 0x14 tm.deref)
              (Extract w32 0 0x46))))
:5:29: error: cannot infer type of number.
              (Extract w32 0 0x46))))
                             ~~~~
[0;1;31mKLEE: ERROR: Unable to parse query
[0m