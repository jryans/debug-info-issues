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
++++ dirname ../../vars.sh
+++ FILTER_DOT=../../tools/filter-dot.js
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
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --search=random-path --tsv'
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
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
+++++ llvm release-clang-lldb-13.0.0 clang
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
++++ CLANG=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
+++++ llvm release-clang-lldb-13.0.0 llvm-as
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llvm-as
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_O2_OPTS=-O2
++++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ llvm release-clang-lldb-13.0.0 opt
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=opt
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
+++++ dirname ./../../vars.sh
++++ FILTER_DOT=./../../tools/filter-dot.js
+++++ llvm release-clang-lldb-13.0.0 llc
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llc
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
++++ LLC=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
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
++++ BEFORE_BC=klee-out-before/final.bc
++++ AFTER_BC=klee-out-after/final.bc
++++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
+++++ klee debug check-debug-info
+++++ local build=debug
+++++ local program=check-debug-info
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --search=random-path --tsv'
++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
++ mkdir -p klee-out-O1
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope -O1 -o /dev/null
++ filter_cg_ir example-O1-cg-raw.ll example-O1-cg.ll
++ local input_ir=example-O1-cg-raw.ll
++ local output_ir=example-O1-cg.ll
++ grep -v '^+'
++ sed '2,/IR Dump/!d'
++ grep -v 'IR Dump'
++ rm example-O1-cg-raw.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1/final.bc example-O1-cg.ll
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
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ CLANG_TIDY=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang-tidy
++++ DIAGNOSTICS_FILE=diagnostics.yaml
++++ CLANG_TIDY_OPTS='--checks=clang-diagnostic-*,clang-analyzer-*,misc-* --export-fixes=diagnostics.yaml'
+++++ llvm release-clang-lldb-13.0.0 clang
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=clang
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
++++ CLANG=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang
+++++ llvm release-clang-lldb-13.0.0 llvm-as
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llvm-as
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ LLVM_AS=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as
++++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
++++ CC_IR_OPTS='-S -emit-llvm'
++++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
++++ CC_O0_OPTS=
++++ CC_O1_OPTS=-O1
++++ CC_O2_OPTS=-O2
++++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++++ llvm release-clang-lldb-13.0.0 opt
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=opt
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/opt
++++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
+++++ dirname ./../../vars.sh
++++ FILTER_DOT=./../../tools/filter-dot.js
+++++ llvm release-clang-lldb-13.0.0 llc
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=llc
+++++ echo /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
++++ LLC=/Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llc
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
++++ BEFORE_BC=klee-out-before/final.bc
++++ AFTER_BC=klee-out-after/final.bc
++++ AFTER_FIXED_BC=klee-out-after-fixed/final.bc
+++++ klee debug check-debug-info
+++++ local build=debug
+++++ local program=check-debug-info
+++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --search=random-path --tsv'
++ rm -rf ./klee-out-O0/debug-info-values ./klee-out-O1/debug-info-values
++ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --search=random-path --tsv
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 6 before defined functions(s), 6 after defined functions(s)

## Function `ex001Int`

✅ Before and after function names match

### Variable assignments

#### Before variables

Store to declared address of `i` (decl src ln 5), asm ln 16
  arg 0
  store i32 %i, i32* %i.addr, asm ln 16
  Added assignment asm ln 16, prod ln 5.0, live ln 6, enc None

#### After variables

Value produced for `i` (decl src ln 5), asm ln 9
  arg 0
  @dbg.value(i32 %i, !18), asm ln 9
  Added assignment asm ln 9, prod ln 5.0, live ln 6, enc None

#### Summary

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `i`
  Assignment asm ln 16, prod ln 5.0, live ln 6, enc 0
  i32 %i
  (ReadLSB w32 (w32 0x0) ex001Int.i)

#### After values

Collected value for `i`
  Assignment asm ln 9, prod ln 5.0, live ln 6, enc 0
  i32 %i
  (ReadLSB w32 (w32 0x0) ex001Int.i)

### Assignment consistency

#### Variables with single memory location

#### Collation

Collating encountered before assignments: `i` (decl src ln 5)
  asm ln 16, prod ln 5.0, live ln 6, enc 0

Collating encountered after assignments: `i` (decl src ln 5)
  asm ln 9, prod ln 5.0, live ln 6, enc 0

#### Check after using before as reference

Checking equivalence of `i` (decl src ln 5) from
  assn asm ln 9, prod ln 5.0, live ln 6, enc 0
  i32 %i
  (ReadLSB w32 (w32 0x0) ex001Int.i)
and
  assn asm ln 16, prod ln 5.0, live ln 6, enc 0
  i32 %i
  (ReadLSB w32 (w32 0x0) ex001Int.i)
Query to parse
array ex001Int.i[4] : w32 -> w8 = symbolic
array ex001Int.i[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) ex001Int.i)
     (ReadLSB w32 (w32 0x0) ex001Int.i)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) ex001Int.i)
     N0)
✅ Before `i` (decl src ln 5) assn asm ln 16, prod ln 5.0, live ln 6, enc 0 symbolic value matches after assn asm ln 9, prod ln 5.0, live ln 6, enc 0

✅ After `i` assns checked using before as reference
Assignments:         i
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

### Summary

Assignments:
  Reference:                 1
  Test:                      1 (100.00% of ref )
Matching:
  Matching Coords:           1 (100.00% of ref )
  Matching Value:            1 (100.00% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
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
  Function Covered:          1 (100.00% of ref )
  Complete:                  1 (100.00% of ref )
  Within Time Limit:         1 (100.00% of ref )
  Within Fork Limit:         1 (100.00% of ref )
Test Execution:
  Function Covered:          1 (100.00% of test)
  Complete:                  1 (100.00% of test)
  Within Time Limit:         1 (100.00% of test)
  Within Fork Limit:         1 (100.00% of test)

## Function `ex002Struct`

✅ Before and after function names match

### Variable assignments

#### Before variables

Store to declared address of `s` (decl src ln 15), asm ln 30
  arg 0
  store i32 %s.coerce, i32* %coerce.dive, asm ln 30
  Added assignment asm ln 30, prod ln 15.0, live ln 16, enc None

#### After variables

Value produced for `s` (decl src ln 15), asm ln 16
  arg 0
  @dbg.value(i32 %s.coerce, !28), asm ln 16
  Added assignment asm ln 16, prod ln 15.0, live ln 16, enc None

#### Summary

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `s`
  Assignment asm ln 30, prod ln 15.0, live ln 16, enc 0
  i32 %s.coerce
  (ReadLSB w32 (w32 0x0) ex002Struct.s.coerce)

#### After values

Collected value for `s`
  Assignment asm ln 16, prod ln 15.0, live ln 16, enc 0
  i32 %s.coerce
  (ReadLSB w32 (w32 0x0) ex002Struct.s.coerce)

### Assignment consistency

#### Variables with single memory location

#### Collation

Collating encountered before assignments: `s` (decl src ln 15)
  asm ln 30, prod ln 15.0, live ln 16, enc 0

Collating encountered after assignments: `s` (decl src ln 15)
  asm ln 16, prod ln 15.0, live ln 16, enc 0

#### Check after using before as reference

Checking equivalence of `s` (decl src ln 15) from
  assn asm ln 16, prod ln 15.0, live ln 16, enc 0
  i32 %s.coerce
  (ReadLSB w32 (w32 0x0) ex002Struct.s.coerce)
and
  assn asm ln 30, prod ln 15.0, live ln 16, enc 0
  i32 %s.coerce
  (ReadLSB w32 (w32 0x0) ex002Struct.s.coerce)
Query to parse
array ex002Struct.s.coerce[4] : w32 -> w8 = symbolic
array ex002Struct.s.coerce[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) ex002Struct.s.coerce)
     (ReadLSB w32 (w32 0x0) ex002Struct.s.coerce)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) ex002Struct.s.coerce)
     N0)
✅ Before `s` (decl src ln 15) assn asm ln 30, prod ln 15.0, live ln 16, enc 0 symbolic value matches after assn asm ln 16, prod ln 15.0, live ln 16, enc 0

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
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

### Summary

Assignments:
  Reference:                 1
  Test:                      1 (100.00% of ref )
Matching:
  Matching Coords:           1 (100.00% of ref )
  Matching Value:            1 (100.00% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
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
  Function Covered:          1 (100.00% of ref )
  Complete:                  1 (100.00% of ref )
  Within Time Limit:         1 (100.00% of ref )
  Within Fork Limit:         1 (100.00% of ref )
Test Execution:
  Function Covered:          1 (100.00% of test)
  Complete:                  1 (100.00% of test)
  Within Time Limit:         1 (100.00% of test)
  Within Fork Limit:         1 (100.00% of test)

## Function `ex003PointerSingleElementValue`

✅ Before and after function names match

### Variable assignments

#### Before variables

Store to declared address of `a` (decl src ln 19), asm ln 41
  arg 0
  store i32* %a, i32** %a.addr, asm ln 41
  Added assignment asm ln 41, prod ln 19.0, live ln 20, enc None

#### After variables

Value produced for `a` (decl src ln 19), asm ln 23
  arg 0
  @dbg.value(i32* %a, !36), asm ln 23
  Added assignment asm ln 23, prod ln 19.0, live ln 20, enc None

#### Summary

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `a`
  Assignment asm ln 41, prod ln 19.0, live ln 20, enc 0
  Concrete pointer resolves to ex003PointerSingleElementValue.a.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) ex003PointerSingleElementValue.a.deref)
  Replaced concrete pointer with hash (w64 0xDD11EA268080B83A)
  i32* %a
  (w64 0xDD11EA268080B83A)

#### After values

Collected value for `a`
  Assignment asm ln 23, prod ln 19.0, live ln 20, enc 0
  Concrete pointer resolves to ex003PointerSingleElementValue.a.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) ex003PointerSingleElementValue.a.deref)
  Replaced concrete pointer with hash (w64 0xDD11EA268080B83A)
  i32* %a
  (w64 0xDD11EA268080B83A)

### Assignment consistency

#### Variables with single memory location

#### Collation

Collating encountered before assignments: `a` (decl src ln 19)
  asm ln 41, prod ln 19.0, live ln 20, enc 0

Collating encountered after assignments: `a` (decl src ln 19)
  asm ln 23, prod ln 19.0, live ln 20, enc 0

#### Check after using before as reference

Checking equivalence of `a` (decl src ln 19) from
  assn asm ln 23, prod ln 19.0, live ln 20, enc 0
  i32* %a
  (w64 0xDD11EA268080B83A)
and
  assn asm ln 41, prod ln 19.0, live ln 20, enc 0
  i32* %a
  (w64 0xDD11EA268080B83A)
✅ Before `a` (decl src ln 19) assn asm ln 41, prod ln 19.0, live ln 20, enc 0 symbolic value matches after assn asm ln 23, prod ln 19.0, live ln 20, enc 0

✅ After `a` assns checked using before as reference
Assignments:         a
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

### Summary

Assignments:
  Reference:                 1
  Test:                      1 (100.00% of ref )
Matching:
  Matching Coords:           1 (100.00% of ref )
  Matching Value:            1 (100.00% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
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
  Function Covered:          1 (100.00% of ref )
  Complete:                  1 (100.00% of ref )
  Within Time Limit:         1 (100.00% of ref )
  Within Fork Limit:         1 (100.00% of ref )
Test Execution:
  Function Covered:          1 (100.00% of test)
  Complete:                  1 (100.00% of test)
  Within Time Limit:         1 (100.00% of test)
  Within Fork Limit:         1 (100.00% of test)

## Function `ex004PointerSingleElementInstances`

✅ Before and after function names match

### Variable assignments

#### Before variables

Store to declared address of `a` (decl src ln 23), asm ln 54
  arg 0
  store i32* %a, i32** %a.addr, asm ln 54
  Added assignment asm ln 54, prod ln 23.0, live ln 24, enc None
Store to declared address of `b` (decl src ln 23), asm ln 56
  arg 1
  store i32* %b, i32** %b.addr, asm ln 56
  Added assignment asm ln 56, prod ln 23.0, live ln 24, enc None

#### After variables

Value produced for `a` (decl src ln 23), asm ln 31
  arg 0
  @dbg.value(i32* %a, !48), asm ln 31
  Added assignment asm ln 31, prod ln 23.0, live ln 24, enc None
Value produced for `b` (decl src ln 23), asm ln 32
  arg 1
  @dbg.value(i32* %b, !49), asm ln 32
  Added assignment asm ln 32, prod ln 23.0, live ln 24, enc None

#### Summary

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `a`
  Assignment asm ln 54, prod ln 23.0, live ln 24, enc 0
  Concrete pointer resolves to ex004PointerSingleElementInstances.a.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) ex004PointerSingleElementInstances.a.deref)
  Replaced concrete pointer with hash (w64 0x22E3EB52726046A3)
  i32* %a
  (w64 0x22E3EB52726046A3)
Collected value for `b`
  Assignment asm ln 56, prod ln 23.0, live ln 24, enc 0
  Concrete pointer resolves to ex004PointerSingleElementInstances.b.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) ex004PointerSingleElementInstances.b.deref)
  Replaced concrete pointer with hash (w64 0xD5CB5B89BF7C2E7D)
  i32* %b
  (w64 0xD5CB5B89BF7C2E7D)

🔔 Unable to execute all before instructions

#### After values

Collected value for `a`
  Assignment asm ln 31, prod ln 23.0, live ln 24, enc 0
  Concrete pointer resolves to ex004PointerSingleElementInstances.a.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) ex004PointerSingleElementInstances.a.deref)
  Replaced concrete pointer with hash (w64 0x22E3EB52726046A3)
  i32* %a
  (w64 0x22E3EB52726046A3)
Collected value for `b`
  Assignment asm ln 32, prod ln 23.0, live ln 24, enc 0
  Concrete pointer resolves to ex004PointerSingleElementInstances.b.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) ex004PointerSingleElementInstances.b.deref)
  Replaced concrete pointer with hash (w64 0xD5CB5B89BF7C2E7D)
  i32* %b
  (w64 0xD5CB5B89BF7C2E7D)

### Assignment consistency

#### Variables with single memory location

#### Collation

Collating encountered before assignments: `a` (decl src ln 23)
  asm ln 54, prod ln 23.0, live ln 24, enc 0
Collating encountered before assignments: `b` (decl src ln 23)
  asm ln 56, prod ln 23.0, live ln 24, enc 0

Collating encountered after assignments: `a` (decl src ln 23)
  asm ln 31, prod ln 23.0, live ln 24, enc 0
Collating encountered after assignments: `b` (decl src ln 23)
  asm ln 32, prod ln 23.0, live ln 24, enc 0

#### Check after using before as reference

Checking equivalence of `a` (decl src ln 23) from
  assn asm ln 31, prod ln 23.0, live ln 24, enc 0
  i32* %a
  (w64 0x22E3EB52726046A3)
and
  assn asm ln 54, prod ln 23.0, live ln 24, enc 0
  i32* %a
  (w64 0x22E3EB52726046A3)
✅ Before `a` (decl src ln 23) assn asm ln 54, prod ln 23.0, live ln 24, enc 0 symbolic value matches after assn asm ln 31, prod ln 23.0, live ln 24, enc 0

✅ After `a` assns checked using before as reference
Assignments:         a
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
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `b` (decl src ln 23) from
  assn asm ln 32, prod ln 23.0, live ln 24, enc 0
  i32* %b
  (w64 0xD5CB5B89BF7C2E7D)
and
  assn asm ln 56, prod ln 23.0, live ln 24, enc 0
  i32* %b
  (w64 0xD5CB5B89BF7C2E7D)
✅ Before `b` (decl src ln 23) assn asm ln 56, prod ln 23.0, live ln 24, enc 0 symbolic value matches after assn asm ln 32, prod ln 23.0, live ln 24, enc 0

✅ After `b` assns checked using before as reference
Assignments:         b
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
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

### Summary

Assignments:
  Reference:                 2
  Test:                      2 (100.00% of ref )
Matching:
  Matching Coords:           2 (100.00% of ref )
  Matching Value:            2 (100.00% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
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
  Function Covered:          0 (  0.00% of ref )
  Complete:                  2 (100.00% of ref )
  Within Time Limit:         2 (100.00% of ref )
  Within Fork Limit:         2 (100.00% of ref )
Test Execution:
  Function Covered:          2 (100.00% of test)
  Complete:                  2 (100.00% of test)
  Within Time Limit:         2 (100.00% of test)
  Within Fork Limit:         2 (100.00% of test)

## Function `ex005PointerMultipleElementValues`

✅ Before and after function names match

### Variable assignments

#### Before variables

Store to declared address of `a` (decl src ln 38), asm ln 105
  arg 0
  store i32* %a, i32** %a.addr, asm ln 105
  Added assignment asm ln 105, prod ln 38.0, live ln 40, enc None

#### After variables

Value produced for `a` (decl src ln 38), asm ln 45
  arg 0
  @dbg.value(i32* %a, !57), asm ln 45
  Added assignment asm ln 45, prod ln 38.0, live ln 40, enc None

#### Summary

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `a`
  Assignment asm ln 105, prod ln 38.0, live ln 40, enc 0
  Concrete pointer resolves to ex005PointerMultipleElementValues.a.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) ex005PointerMultipleElementValues.a.deref)
  Replaced concrete pointer with hash (w64 0xD6181BB96841765E)
  i32* %a
  (w64 0xD6181BB96841765E)
[0;1;31mKLEE: ERROR: example.c:40: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all before instructions

🔔 Unable to execute all before program states

#### After values

Collected value for `a`
  Assignment asm ln 45, prod ln 38.0, live ln 40, enc 0
  Concrete pointer resolves to ex005PointerMultipleElementValues.a.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) ex005PointerMultipleElementValues.a.deref)
  Replaced concrete pointer with hash (w64 0xD6181BB96841765E)
  i32* %a
  (w64 0xD6181BB96841765E)
[0;1;31mKLEE: ERROR: example.c:40: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all after instructions

🔔 Unable to execute all after program states

### Assignment consistency

#### Variables with single memory location

#### Collation

Collating encountered before assignments: `a` (decl src ln 38)
  asm ln 105, prod ln 38.0, live ln 40, enc 0

Collating encountered after assignments: `a` (decl src ln 38)
  asm ln 45, prod ln 38.0, live ln 40, enc 0

#### Check after using before as reference

Checking equivalence of `a` (decl src ln 38) from
  assn asm ln 45, prod ln 38.0, live ln 40, enc 0
  i32* %a
  (w64 0xD6181BB96841765E)
and
  assn asm ln 105, prod ln 38.0, live ln 40, enc 0
  i32* %a
  (w64 0xD6181BB96841765E)
✅ Before `a` (decl src ln 38) assn asm ln 105, prod ln 38.0, live ln 40, enc 0 symbolic value matches after assn asm ln 45, prod ln 38.0, live ln 40, enc 0

✅ After `a` assns checked using before as reference
Assignments:         a
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
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          false
  Within Time Limit: true
  Within Fork Limit: true

### Summary

Assignments:
  Reference:                 1
  Test:                      1 (100.00% of ref )
Matching:
  Matching Coords:           1 (100.00% of ref )
  Matching Value:            1 (100.00% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
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
  Function Covered:          0 (  0.00% of ref )
  Complete:                  0 (  0.00% of ref )
  Within Time Limit:         1 (100.00% of ref )
  Within Fork Limit:         1 (100.00% of ref )
Test Execution:
  Function Covered:          0 (  0.00% of test)
  Complete:                  0 (  0.00% of test)
  Within Time Limit:         1 (100.00% of test)
  Within Fork Limit:         1 (100.00% of test)

## Function `ex006PointerFunction`

✅ Before and after function names match

### Variable assignments

#### Before variables

Store to declared address of `f` (decl src ln 43), asm ln 129
  arg 0
  store i32 (...)* %f, i32 (...)** %f.addr, asm ln 129
  Added assignment asm ln 129, prod ln 43.0, live ln 44, enc None

#### After variables

Value produced for `f` (decl src ln 43), asm ln 62
  arg 0
  @dbg.value(i32 (...)* %f, !74), asm ln 62
  Added assignment asm ln 62, prod ln 43.0, live ln 44, enc None

#### Summary

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `f`
  Assignment asm ln 129, prod ln 43.0, live ln 44, enc 0
  Concrete pointer resolves to ex006PointerFunction.f.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) ex006PointerFunction.f.deref)
  Replaced concrete pointer with hash (w64 0xCFA0497F673FFBB6)
  i32 (...)* %f
  (w64 0xCFA0497F673FFBB6)

#### After values

Collected value for `f`
  Assignment asm ln 62, prod ln 43.0, live ln 44, enc 0
  Concrete pointer resolves to ex006PointerFunction.f.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) ex006PointerFunction.f.deref)
  Replaced concrete pointer with hash (w64 0xCFA0497F673FFBB6)
  i32 (...)* %f
  (w64 0xCFA0497F673FFBB6)

### Assignment consistency

#### Variables with single memory location

#### Collation

Collating encountered before assignments: `f` (decl src ln 43)
  asm ln 129, prod ln 43.0, live ln 44, enc 0

Collating encountered after assignments: `f` (decl src ln 43)
  asm ln 62, prod ln 43.0, live ln 44, enc 0

#### Check after using before as reference

Checking equivalence of `f` (decl src ln 43) from
  assn asm ln 62, prod ln 43.0, live ln 44, enc 0
  i32 (...)* %f
  (w64 0xCFA0497F673FFBB6)
and
  assn asm ln 129, prod ln 43.0, live ln 44, enc 0
  i32 (...)* %f
  (w64 0xCFA0497F673FFBB6)
✅ Before `f` (decl src ln 43) assn asm ln 129, prod ln 43.0, live ln 44, enc 0 symbolic value matches after assn asm ln 62, prod ln 43.0, live ln 44, enc 0

✅ After `f` assns checked using before as reference
Assignments:         f
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

### Summary

Assignments:
  Reference:                 1
  Test:                      1 (100.00% of ref )
Matching:
  Matching Coords:           1 (100.00% of ref )
  Matching Value:            1 (100.00% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
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
  Function Covered:          1 (100.00% of ref )
  Complete:                  1 (100.00% of ref )
  Within Time Limit:         1 (100.00% of ref )
  Within Fork Limit:         1 (100.00% of ref )
Test Execution:
  Function Covered:          1 (100.00% of test)
  Complete:                  1 (100.00% of test)
  Within Time Limit:         1 (100.00% of test)
  Within Fork Limit:         1 (100.00% of test)

## Summary

Assignments:
  Reference:                 7
  Test:                      7 (100.00% of ref )
Matching:
  Matching Coords:           7 (100.00% of ref )
  Matching Value:            7 (100.00% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
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
  Function Covered:          4 ( 57.14% of ref )
  Complete:                  6 ( 85.71% of ref )
  Within Time Limit:         7 (100.00% of ref )
  Within Fork Limit:         7 (100.00% of ref )
Test Execution:
  Function Covered:          6 ( 85.71% of test)
  Complete:                  6 ( 85.71% of test)
  Within Time Limit:         7 (100.00% of test)
  Within Fork Limit:         7 (100.00% of test)

🎉 All consistency checks passed
++ for i in './klee-out-O0/debug-info-values/*'
++ '[' -d ./klee-out-O0/debug-info-values/ex001Int ']'
++ ./check-coverage.js ./klee-out-O0/debug-info-values/ex001Int
./klee-out-O0/debug-info-values/ex001Int
Coverage for ex001Int
All lines covered
++ for i in './klee-out-O0/debug-info-values/*'
++ '[' -d ./klee-out-O0/debug-info-values/ex002Struct ']'
++ ./check-coverage.js ./klee-out-O0/debug-info-values/ex002Struct
./klee-out-O0/debug-info-values/ex002Struct
Coverage for ex002Struct
All lines covered
++ for i in './klee-out-O0/debug-info-values/*'
++ '[' -d ./klee-out-O0/debug-info-values/ex003PointerSingleElementValue ']'
++ ./check-coverage.js ./klee-out-O0/debug-info-values/ex003PointerSingleElementValue
./klee-out-O0/debug-info-values/ex003PointerSingleElementValue
Coverage for ex003PointerSingleElementValue
All lines covered
++ for i in './klee-out-O0/debug-info-values/*'
++ '[' -d ./klee-out-O0/debug-info-values/ex004PointerSingleElementInstances ']'
++ ./check-coverage.js ./klee-out-O0/debug-info-values/ex004PointerSingleElementInstances
./klee-out-O0/debug-info-values/ex004PointerSingleElementInstances
Coverage for ex004PointerSingleElementInstances
Asm line 66, src line 26 not covered
Asm line 67, src line 26 not covered
Asm line 80, src line 31 not covered
Asm line 81, src line 31 not covered
Asm line 82, src line 31 not covered
Asm line 83, src line 31 not covered
Asm line 86, src line 33 not covered
Asm line 87, src line 33 not covered
Asm line 90, src line 35 not covered
Asm line 91, src line 35 not covered
++ for i in './klee-out-O0/debug-info-values/*'
++ '[' -d ./klee-out-O0/debug-info-values/ex005PointerMultipleElementValues ']'
++ ./check-coverage.js ./klee-out-O0/debug-info-values/ex005PointerMultipleElementValues
./klee-out-O0/debug-info-values/ex005PointerMultipleElementValues
Coverage for ex005PointerMultipleElementValues
Asm line 117, src line 40 not covered
Asm line 118, src line 40 not covered
Asm line 119, src line 40 not covered
Asm line 120, src line 40 not covered
Asm line 121, src line 40 not covered
Asm line 122, src line 40 not covered
++ for i in './klee-out-O0/debug-info-values/*'
++ '[' -d ./klee-out-O0/debug-info-values/ex006PointerFunction ']'
++ ./check-coverage.js ./klee-out-O0/debug-info-values/ex006PointerFunction
./klee-out-O0/debug-info-values/ex006PointerFunction
Coverage for ex006PointerFunction
All lines covered
