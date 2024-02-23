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
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv'
++ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `example1`

✅ Before and after function names match

### Variables

Before variable `n` (decl src ln 3)
Store to declared address of `n` (decl src ln 3), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 3.0, live ln 4, enc None
Before variable `x` (decl src ln 4)
Store to declared address of `x` (decl src ln 4), asm ln 17
  %mul = mul nsw i32 %0, 2, l4 c13, asm ln 16
  Added assignment asm ln 17, prod ln 4.13, live ln 5, enc None
Before variable `y` (decl src ln 5)
Store to declared address of `y` (decl src ln 5), asm ln 23
  %add1 = add nsw i32 %add, %2, l5 c17, asm ln 22
  Added assignment asm ln 23, prod ln 5.17, live ln 6, enc None

After variable `n` (decl src ln 3)
Value produced for `n` (decl src ln 3), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 3.0, live ln 4, enc None
After variable `x` (decl src ln 4)
Value produced for `x` (decl src ln 4), asm ln 11
  %mul = shl nsw i32 %n, 1, l4 c13, asm ln 10
  Added assignment asm ln 11, prod ln 4.13, live ln 5, enc None
After variable `y` (decl src ln 5)
Value produced for `y` (decl src ln 5), asm ln 14
  %add1 = add i32 %add, %mul, l5 c17, asm ln 13
  Added assignment asm ln 14, prod ln 5.17, live ln 6, enc None

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `x`
  %mul = mul nsw i32 %0, 2, l4 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) n))
Collected value for `y`
  %add1 = add nsw i32 %add, %2, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) n))
                   N0))

#### After values

Collected value for `n`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `x`
  %mul = shl nsw i32 %n, 1, l4 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (w32 0x1))
Collected value for `y`
  %add1 = add i32 %add, %mul, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                   (Shl w32 N0 (w32 0x1))))

### Assignments

Collating encountered before assignments: `n` (decl src ln 3)
  asm ln 12, prod ln 3.0, live ln 4, enc 0
Collating encountered before assignments: `x` (decl src ln 4)
  asm ln 17, prod ln 4.13, live ln 5, enc 0
Collating encountered before assignments: `y` (decl src ln 5)
  asm ln 23, prod ln 5.17, live ln 6, enc 0

Collating encountered after assignments: `n` (decl src ln 3)
  asm ln 9, prod ln 3.0, live ln 4, enc 0
Collating encountered after assignments: `x` (decl src ln 4)
  asm ln 11, prod ln 4.13, live ln 5, enc 0
Collating encountered after assignments: `y` (decl src ln 5)
  asm ln 14, prod ln 5.17, live ln 6, enc 0

#### Check before using after as reference

Checking equivalence of `n` (decl src ln 3) from
  assn asm ln 12, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
and
  assn asm ln 9, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) n)
     (ReadLSB w32 (w32 0x0) n)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) n)
     N0)
✅ After `n` (decl src ln 3) assn asm ln 9, prod ln 3.0, live ln 4, enc 0 symbolic value matches before assn asm ln 12, prod ln 3.0, live ln 4, enc 0

✅ Before `n` assns checked using after as reference
Variable:            n
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 17, prod ln 4.13, live ln 5, enc 0
  %mul = mul nsw i32 %0, 2, l4 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) n))
and
  assn asm ln 11, prod ln 4.13, live ln 5, enc 0
  %mul = shl nsw i32 %n, 1, l4 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (w32 0x1))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) n))
     (Shl w32 (ReadLSB w32 (w32 0x0) n)
              (w32 0x1))))
Parsed query
(Eq (Mul w32 (w32 0x2)
              N0:(ReadLSB w32 (w32 0x0) n))
     (Shl w32 N0 (w32 0x1)))
✅ After `x` (decl src ln 4) assn asm ln 11, prod ln 4.13, live ln 5, enc 0 symbolic value matches before assn asm ln 17, prod ln 4.13, live ln 5, enc 0

✅ Before `x` assns checked using after as reference
Variable:            x
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `y` (decl src ln 5) from
  assn asm ln 23, prod ln 5.17, live ln 6, enc 0
  %add1 = add nsw i32 %add, %2, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) n))
                   N0))
and
  assn asm ln 14, prod ln 5.17, live ln 6, enc 0
  %add1 = add i32 %add, %mul, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                   (Shl w32 N0 (w32 0x1))))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x4)
              (Add w32 (Mul w32 (w32 0x2)
                                N0:(ReadLSB w32 (w32 0x0) n))
                       N0))
     (Add w32 (w32 0x4)
              (Add w32 N1:(ReadLSB w32 (w32 0x0) n)
                       (Shl w32 N1 (w32 0x1))))))
Parsed query
(Eq (Add w32 (w32 0x4)
              (Add w32 (Mul w32 (w32 0x2)
                                N0:(ReadLSB w32 (w32 0x0) n))
                       N0))
     (Add w32 (w32 0x4)
              (Add w32 N0 (Shl w32 N0 (w32 0x1)))))
✅ After `y` (decl src ln 5) assn asm ln 14, prod ln 5.17, live ln 6, enc 0 symbolic value matches before assn asm ln 23, prod ln 5.17, live ln 6, enc 0

✅ Before `y` assns checked using after as reference
Variable:            y
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

#### Check after using before as reference

Checking equivalence of `n` (decl src ln 3) from
  assn asm ln 9, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
and
  assn asm ln 12, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) n)
     (ReadLSB w32 (w32 0x0) n)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) n)
     N0)
✅ Before `n` (decl src ln 3) assn asm ln 12, prod ln 3.0, live ln 4, enc 0 symbolic value matches after assn asm ln 9, prod ln 3.0, live ln 4, enc 0

✅ After `n` assns checked using before as reference
Variable:            n
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 11, prod ln 4.13, live ln 5, enc 0
  %mul = shl nsw i32 %n, 1, l4 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (w32 0x1))
and
  assn asm ln 17, prod ln 4.13, live ln 5, enc 0
  %mul = mul nsw i32 %0, 2, l4 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) n))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (ReadLSB w32 (w32 0x0) n)
              (w32 0x1))
     (Mul w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) n))))
Parsed query
(Eq (Shl w32 N0:(ReadLSB w32 (w32 0x0) n)
              (w32 0x1))
     (Mul w32 (w32 0x2) N0))
✅ Before `x` (decl src ln 4) assn asm ln 17, prod ln 4.13, live ln 5, enc 0 symbolic value matches after assn asm ln 11, prod ln 4.13, live ln 5, enc 0

✅ After `x` assns checked using before as reference
Variable:            x
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `y` (decl src ln 5) from
  assn asm ln 14, prod ln 5.17, live ln 6, enc 0
  %add1 = add i32 %add, %mul, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                   (Shl w32 N0 (w32 0x1))))
and
  assn asm ln 23, prod ln 5.17, live ln 6, enc 0
  %add1 = add nsw i32 %add, %2, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) n))
                   N0))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x4)
              (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                       (Shl w32 N0 (w32 0x1))))
     (Add w32 (w32 0x4)
              (Add w32 (Mul w32 (w32 0x2)
                                N1:(ReadLSB w32 (w32 0x0) n))
                       N1))))
Parsed query
(Eq (Add w32 (w32 0x4)
              (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                       (Shl w32 N0 (w32 0x1))))
     (Add w32 (w32 0x4)
              (Add w32 (Mul w32 (w32 0x2) N0) N0)))
✅ Before `y` (decl src ln 5) assn asm ln 23, prod ln 5.17, live ln 6, enc 0 symbolic value matches after assn asm ln 14, prod ln 5.17, live ln 6, enc 0

✅ After `y` assns checked using before as reference
Variable:            y
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

## Function `example2`

✅ Before and after function names match

### Variables

Before variable `n` (decl src ln 9)
Store to declared address of `n` (decl src ln 9), asm ln 37
  arg 0
  Added assignment asm ln 37, prod ln 9.0, live ln 10, enc None
Before variable `x` (decl src ln 10)
Store to declared address of `x` (decl src ln 10), asm ln 56
  %add2 = add nsw i32 %5, %6, l12 c9, asm ln 55
  Added assignment asm ln 56, prod ln 12.9, live ln 13, enc None
Store to declared address of `x` (decl src ln 10), asm ln 42
  %mul = mul nsw i32 %0, 2, l10 c13, asm ln 41
🔔 Store to declared address of `x` (decl src ln 10): live ln too early, using produced ln + 1
  Added assignment asm ln 42, prod ln 10.13, live ln 11, enc None
Before variable `y` (decl src ln 11)
Store to declared address of `y` (decl src ln 11), asm ln 59
  %mul3 = mul nsw i32 %7, 2, l13 c9, asm ln 58
  Added assignment asm ln 59, prod ln 13.9, live ln 14, enc None
Store to declared address of `y` (decl src ln 11), asm ln 50
  %add1 = add nsw i32 %add, %3, l11 c17, asm ln 49
🔔 Store to declared address of `y` (decl src ln 11): live ln too early, using produced ln + 1
  Added assignment asm ln 50, prod ln 11.17, live ln 12, enc None

After variable `n` (decl src ln 9)
Value produced for `n` (decl src ln 9), asm ln 21
  arg 0
  Added assignment asm ln 21, prod ln 9.0, live ln 10, enc None
After variable `x` (decl src ln 10)
Value produced for `x` (decl src ln 10), asm ln 23
  %mul = shl nsw i32 %n, 1, l10 c13, asm ln 22
🔔 Value produced for `x` (decl src ln 10): live ln too early, using produced ln + 1
  Added assignment asm ln 23, prod ln 10.13, live ln 11, enc None
After variable `y` (decl src ln 11)
Value produced for `y` (decl src ln 11), asm ln 27
  %add1 = add i32 %add, %mul, l11 c17, asm ln 26
🔔 Value produced for `y` (decl src ln 11): live ln too early, using produced ln + 1
  Added assignment asm ln 27, prod ln 11.17, live ln 12, enc None
After variable `x` (decl src ln 10)
Value produced for `x` (decl src ln 10), asm ln 30
  %add2 = add nsw i32 %add1, %n, l12 c9, asm ln 29
  Added assignment asm ln 30, prod ln 12.9, live ln 13, enc None
After variable `y` (decl src ln 11)
Value produced for `y` (decl src ln 11), asm ln 32
  %mul3 = shl nsw i32 %add2, 1, l13 c9, asm ln 31
  Added assignment asm ln 32, prod ln 13.9, live ln 14, enc None

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `x`
  %mul = mul nsw i32 %0, 2, l10 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) n))
Collected value for `y`
  %add1 = add nsw i32 %add, %3, l11 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) n))
                   N0))
Collected value for `x`
  %add2 = add nsw i32 %5, %6, l12 c9
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                     N0:(ReadLSB w32 (w32 0x0) n))
                            N0)
                   N0))
Collected value for `y`
  %mul3 = mul nsw i32 %7, 2, l13 c9
  (Mul w32 (w32 0x2)
          (Add w32 (w32 0x4)
                   (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                              N0:(ReadLSB w32 (w32 0x0) n))
                                     N0)
                            N0)))

#### After values

Collected value for `n`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `x`
  %mul = shl nsw i32 %n, 1, l10 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (w32 0x1))
Collected value for `y`
  %add1 = add i32 %add, %mul, l11 c17
  (Add w32 (w32 0x4)
          (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                   (Shl w32 N0 (w32 0x1))))
Collected value for `x`
  %add2 = add nsw i32 %add1, %n, l12 c9
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                            (Shl w32 N0 (w32 0x1)))
                   N0))
Collected value for `y`
  %mul3 = shl nsw i32 %add2, 1, l13 c9
  (Shl w32 (Add w32 (w32 0x4)
                   (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                                     (Shl w32 N0 (w32 0x1)))
                            N0))
          (w32 0x1))

### Assignments

Filtering redundant before assignments: `x` (decl src ln 10)

Checking equivalence of `x` (decl src ln 10) from
  assn asm ln 56, prod ln 12.9, live ln 13, enc 1
  %add2 = add nsw i32 %5, %6, l12 c9
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                     N0:(ReadLSB w32 (w32 0x0) n))
                            N0)
                   N0))
and
  assn asm ln 42, prod ln 10.13, live ln 11, enc 0
  %mul = mul nsw i32 %0, 2, l10 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) n))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x4)
              (Add w32 (Add w32 N0:(Mul w32 (w32 0x2)
                                            N1:(ReadLSB w32 (w32 0x0) n))
                                N1)
                       N1))
     N0))
Parsed query
(Eq (Add w32 (w32 0x4)
              (Add w32 (Add w32 N0:(Mul w32 (w32 0x2)
                                            N1:(ReadLSB w32 (w32 0x0) n))
                                N1)
                       N1))
     N0)

Filtering redundant before assignments: `y` (decl src ln 11)

Checking equivalence of `y` (decl src ln 11) from
  assn asm ln 59, prod ln 13.9, live ln 14, enc 1
  %mul3 = mul nsw i32 %7, 2, l13 c9
  (Mul w32 (w32 0x2)
          (Add w32 (w32 0x4)
                   (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                              N0:(ReadLSB w32 (w32 0x0) n))
                                     N0)
                            N0)))
and
  assn asm ln 50, prod ln 11.17, live ln 12, enc 0
  %add1 = add nsw i32 %add, %3, l11 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) n))
                   N0))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (w32 0x2)
              (Add w32 (w32 0x4)
                       (Add w32 N0:(Add w32 (Mul w32 (w32 0x2)
                                                     N1:(ReadLSB w32 (w32 0x0) n))
                                            N1)
                                N1)))
     (Add w32 (w32 0x4) N0)))
Parsed query
(Eq (Mul w32 (w32 0x2)
              (Add w32 (w32 0x4)
                       (Add w32 N0:(Add w32 (Mul w32 (w32 0x2)
                                                     N1:(ReadLSB w32 (w32 0x0) n))
                                            N1)
                                N1)))
     (Add w32 (w32 0x4) N0))

Filtering redundant after assignments: `x` (decl src ln 10)

Checking equivalence of `x` (decl src ln 10) from
  assn asm ln 30, prod ln 12.9, live ln 13, enc 1
  %add2 = add nsw i32 %add1, %n, l12 c9
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                            (Shl w32 N0 (w32 0x1)))
                   N0))
and
  assn asm ln 23, prod ln 10.13, live ln 11, enc 0
  %mul = shl nsw i32 %n, 1, l10 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (w32 0x1))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x4)
              (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                                N1:(Shl w32 N0 (w32 0x1)))
                       N0))
     N1))
Parsed query
(Eq (Add w32 (w32 0x4)
              (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                                N1:(Shl w32 N0 (w32 0x1)))
                       N0))
     N1)

Filtering redundant after assignments: `y` (decl src ln 11)

Checking equivalence of `y` (decl src ln 11) from
  assn asm ln 32, prod ln 13.9, live ln 14, enc 1
  %mul3 = shl nsw i32 %add2, 1, l13 c9
  (Shl w32 (Add w32 (w32 0x4)
                   (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                                     (Shl w32 N0 (w32 0x1)))
                            N0))
          (w32 0x1))
and
  assn asm ln 27, prod ln 11.17, live ln 12, enc 0
  %add1 = add i32 %add, %mul, l11 c17
  (Add w32 (w32 0x4)
          (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                   (Shl w32 N0 (w32 0x1))))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (Add w32 (w32 0x4)
                       (Add w32 N0:(Add w32 N1:(ReadLSB w32 (w32 0x0) n)
                                            (Shl w32 N1 (w32 0x1)))
                                N1))
              (w32 0x1))
     (Add w32 (w32 0x4) N0)))
Parsed query
(Eq (Shl w32 (Add w32 (w32 0x4)
                       (Add w32 N0:(Add w32 N1:(ReadLSB w32 (w32 0x0) n)
                                            (Shl w32 N1 (w32 0x1)))
                                N1))
              (w32 0x1))
     (Add w32 (w32 0x4) N0))

Collating encountered before assignments: `n` (decl src ln 9)
  asm ln 37, prod ln 9.0, live ln 10, enc 0
Collating encountered before assignments: `x` (decl src ln 10)
  asm ln 42, prod ln 10.13, live ln 11, enc 0
  asm ln 56, prod ln 12.9, live ln 13, enc 1
Collating encountered before assignments: `y` (decl src ln 11)
  asm ln 50, prod ln 11.17, live ln 12, enc 0
  asm ln 59, prod ln 13.9, live ln 14, enc 1

Collating encountered after assignments: `n` (decl src ln 9)
  asm ln 21, prod ln 9.0, live ln 10, enc 0
Collating encountered after assignments: `x` (decl src ln 10)
  asm ln 23, prod ln 10.13, live ln 11, enc 0
  asm ln 30, prod ln 12.9, live ln 13, enc 1
Collating encountered after assignments: `y` (decl src ln 11)
  asm ln 27, prod ln 11.17, live ln 12, enc 0
  asm ln 32, prod ln 13.9, live ln 14, enc 1

#### Check before using after as reference

Checking equivalence of `n` (decl src ln 9) from
  assn asm ln 37, prod ln 9.0, live ln 10, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
and
  assn asm ln 21, prod ln 9.0, live ln 10, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) n)
     (ReadLSB w32 (w32 0x0) n)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) n)
     N0)
✅ After `n` (decl src ln 9) assn asm ln 21, prod ln 9.0, live ln 10, enc 0 symbolic value matches before assn asm ln 37, prod ln 9.0, live ln 10, enc 0

✅ Before `n` assns checked using after as reference
Variable:            n
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `x` (decl src ln 10) from
  assn asm ln 42, prod ln 10.13, live ln 11, enc 0
  %mul = mul nsw i32 %0, 2, l10 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) n))
and
  assn asm ln 23, prod ln 10.13, live ln 11, enc 0
  %mul = shl nsw i32 %n, 1, l10 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (w32 0x1))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) n))
     (Shl w32 (ReadLSB w32 (w32 0x0) n)
              (w32 0x1))))
Parsed query
(Eq (Mul w32 (w32 0x2)
              N0:(ReadLSB w32 (w32 0x0) n))
     (Shl w32 N0 (w32 0x1)))
✅ After `x` (decl src ln 10) assn asm ln 23, prod ln 10.13, live ln 11, enc 0 symbolic value matches before assn asm ln 42, prod ln 10.13, live ln 11, enc 0

Checking equivalence of `x` (decl src ln 10) from
  assn asm ln 56, prod ln 12.9, live ln 13, enc 1
  %add2 = add nsw i32 %5, %6, l12 c9
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                     N0:(ReadLSB w32 (w32 0x0) n))
                            N0)
                   N0))
and
  assn asm ln 30, prod ln 12.9, live ln 13, enc 1
  %add2 = add nsw i32 %add1, %n, l12 c9
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                            (Shl w32 N0 (w32 0x1)))
                   N0))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x4)
              (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                         N0:(ReadLSB w32 (w32 0x0) n))
                                N0)
                       N0))
     (Add w32 (w32 0x4)
              (Add w32 (Add w32 N1:(ReadLSB w32 (w32 0x0) n)
                                (Shl w32 N1 (w32 0x1)))
                       N1))))
Parsed query
(Eq (Add w32 (w32 0x4)
              (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                         N0:(ReadLSB w32 (w32 0x0) n))
                                N0)
                       N0))
     (Add w32 (w32 0x4)
              (Add w32 (Add w32 N0 (Shl w32 N0 (w32 0x1)))
                       N0)))
✅ After `x` (decl src ln 10) assn asm ln 30, prod ln 12.9, live ln 13, enc 1 symbolic value matches before assn asm ln 56, prod ln 12.9, live ln 13, enc 1

✅ Before `x` assns checked using after as reference
Variable:            x
  Assignments:       2
  Matching Coords:   2
  Matching Value:    2
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `y` (decl src ln 11) from
  assn asm ln 50, prod ln 11.17, live ln 12, enc 0
  %add1 = add nsw i32 %add, %3, l11 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) n))
                   N0))
and
  assn asm ln 27, prod ln 11.17, live ln 12, enc 0
  %add1 = add i32 %add, %mul, l11 c17
  (Add w32 (w32 0x4)
          (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                   (Shl w32 N0 (w32 0x1))))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x4)
              (Add w32 (Mul w32 (w32 0x2)
                                N0:(ReadLSB w32 (w32 0x0) n))
                       N0))
     (Add w32 (w32 0x4)
              (Add w32 N1:(ReadLSB w32 (w32 0x0) n)
                       (Shl w32 N1 (w32 0x1))))))
Parsed query
(Eq (Add w32 (w32 0x4)
              (Add w32 (Mul w32 (w32 0x2)
                                N0:(ReadLSB w32 (w32 0x0) n))
                       N0))
     (Add w32 (w32 0x4)
              (Add w32 N0 (Shl w32 N0 (w32 0x1)))))
✅ After `y` (decl src ln 11) assn asm ln 27, prod ln 11.17, live ln 12, enc 0 symbolic value matches before assn asm ln 50, prod ln 11.17, live ln 12, enc 0

Checking equivalence of `y` (decl src ln 11) from
  assn asm ln 59, prod ln 13.9, live ln 14, enc 1
  %mul3 = mul nsw i32 %7, 2, l13 c9
  (Mul w32 (w32 0x2)
          (Add w32 (w32 0x4)
                   (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                              N0:(ReadLSB w32 (w32 0x0) n))
                                     N0)
                            N0)))
and
  assn asm ln 32, prod ln 13.9, live ln 14, enc 1
  %mul3 = shl nsw i32 %add2, 1, l13 c9
  (Shl w32 (Add w32 (w32 0x4)
                   (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                                     (Shl w32 N0 (w32 0x1)))
                            N0))
          (w32 0x1))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (w32 0x2)
              (Add w32 (w32 0x4)
                       (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                                  N0:(ReadLSB w32 (w32 0x0) n))
                                         N0)
                                N0)))
     (Shl w32 (Add w32 (w32 0x4)
                       (Add w32 (Add w32 N1:(ReadLSB w32 (w32 0x0) n)
                                         (Shl w32 N1 (w32 0x1)))
                                N1))
              (w32 0x1))))
Parsed query
(Eq (Mul w32 (w32 0x2)
              (Add w32 (w32 0x4)
                       (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                                  N0:(ReadLSB w32 (w32 0x0) n))
                                         N0)
                                N0)))
     (Shl w32 (Add w32 (w32 0x4)
                       (Add w32 (Add w32 N0 (Shl w32 N0 (w32 0x1)))
                                N0))
              (w32 0x1)))
✅ After `y` (decl src ln 11) assn asm ln 32, prod ln 13.9, live ln 14, enc 1 symbolic value matches before assn asm ln 59, prod ln 13.9, live ln 14, enc 1

✅ Before `y` assns checked using after as reference
Variable:            y
  Assignments:       2
  Matching Coords:   2
  Matching Value:    2
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

#### Check after using before as reference

Checking equivalence of `n` (decl src ln 9) from
  assn asm ln 21, prod ln 9.0, live ln 10, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
and
  assn asm ln 37, prod ln 9.0, live ln 10, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) n)
     (ReadLSB w32 (w32 0x0) n)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) n)
     N0)
✅ Before `n` (decl src ln 9) assn asm ln 37, prod ln 9.0, live ln 10, enc 0 symbolic value matches after assn asm ln 21, prod ln 9.0, live ln 10, enc 0

✅ After `n` assns checked using before as reference
Variable:            n
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `x` (decl src ln 10) from
  assn asm ln 23, prod ln 10.13, live ln 11, enc 0
  %mul = shl nsw i32 %n, 1, l10 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (w32 0x1))
and
  assn asm ln 42, prod ln 10.13, live ln 11, enc 0
  %mul = mul nsw i32 %0, 2, l10 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) n))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (ReadLSB w32 (w32 0x0) n)
              (w32 0x1))
     (Mul w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) n))))
Parsed query
(Eq (Shl w32 N0:(ReadLSB w32 (w32 0x0) n)
              (w32 0x1))
     (Mul w32 (w32 0x2) N0))
✅ Before `x` (decl src ln 10) assn asm ln 42, prod ln 10.13, live ln 11, enc 0 symbolic value matches after assn asm ln 23, prod ln 10.13, live ln 11, enc 0

Checking equivalence of `x` (decl src ln 10) from
  assn asm ln 30, prod ln 12.9, live ln 13, enc 1
  %add2 = add nsw i32 %add1, %n, l12 c9
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                            (Shl w32 N0 (w32 0x1)))
                   N0))
and
  assn asm ln 56, prod ln 12.9, live ln 13, enc 1
  %add2 = add nsw i32 %5, %6, l12 c9
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                     N0:(ReadLSB w32 (w32 0x0) n))
                            N0)
                   N0))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x4)
              (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                                (Shl w32 N0 (w32 0x1)))
                       N0))
     (Add w32 (w32 0x4)
              (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                         N1:(ReadLSB w32 (w32 0x0) n))
                                N1)
                       N1))))
Parsed query
(Eq (Add w32 (w32 0x4)
              (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                                (Shl w32 N0 (w32 0x1)))
                       N0))
     (Add w32 (w32 0x4)
              (Add w32 (Add w32 (Mul w32 (w32 0x2) N0) N0)
                       N0)))
✅ Before `x` (decl src ln 10) assn asm ln 56, prod ln 12.9, live ln 13, enc 1 symbolic value matches after assn asm ln 30, prod ln 12.9, live ln 13, enc 1

✅ After `x` assns checked using before as reference
Variable:            x
  Assignments:       2
  Matching Coords:   2
  Matching Value:    2
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `y` (decl src ln 11) from
  assn asm ln 27, prod ln 11.17, live ln 12, enc 0
  %add1 = add i32 %add, %mul, l11 c17
  (Add w32 (w32 0x4)
          (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                   (Shl w32 N0 (w32 0x1))))
and
  assn asm ln 50, prod ln 11.17, live ln 12, enc 0
  %add1 = add nsw i32 %add, %3, l11 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) n))
                   N0))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x4)
              (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                       (Shl w32 N0 (w32 0x1))))
     (Add w32 (w32 0x4)
              (Add w32 (Mul w32 (w32 0x2)
                                N1:(ReadLSB w32 (w32 0x0) n))
                       N1))))
Parsed query
(Eq (Add w32 (w32 0x4)
              (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                       (Shl w32 N0 (w32 0x1))))
     (Add w32 (w32 0x4)
              (Add w32 (Mul w32 (w32 0x2) N0) N0)))
✅ Before `y` (decl src ln 11) assn asm ln 50, prod ln 11.17, live ln 12, enc 0 symbolic value matches after assn asm ln 27, prod ln 11.17, live ln 12, enc 0

Checking equivalence of `y` (decl src ln 11) from
  assn asm ln 32, prod ln 13.9, live ln 14, enc 1
  %mul3 = shl nsw i32 %add2, 1, l13 c9
  (Shl w32 (Add w32 (w32 0x4)
                   (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                                     (Shl w32 N0 (w32 0x1)))
                            N0))
          (w32 0x1))
and
  assn asm ln 59, prod ln 13.9, live ln 14, enc 1
  %mul3 = mul nsw i32 %7, 2, l13 c9
  (Mul w32 (w32 0x2)
          (Add w32 (w32 0x4)
                   (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                              N0:(ReadLSB w32 (w32 0x0) n))
                                     N0)
                            N0)))
Query to parse
array n[4] : w32 -> w8 = symbolic
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (Add w32 (w32 0x4)
                       (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                                         (Shl w32 N0 (w32 0x1)))
                                N0))
              (w32 0x1))
     (Mul w32 (w32 0x2)
              (Add w32 (w32 0x4)
                       (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                                  N1:(ReadLSB w32 (w32 0x0) n))
                                         N1)
                                N1)))))
Parsed query
(Eq (Shl w32 (Add w32 (w32 0x4)
                       (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                                         (Shl w32 N0 (w32 0x1)))
                                N0))
              (w32 0x1))
     (Mul w32 (w32 0x2)
              (Add w32 (w32 0x4)
                       (Add w32 (Add w32 (Mul w32 (w32 0x2) N0) N0)
                                N0))))
✅ Before `y` (decl src ln 11) assn asm ln 59, prod ln 13.9, live ln 14, enc 1 symbolic value matches after assn asm ln 32, prod ln 13.9, live ln 14, enc 1

✅ After `y` assns checked using before as reference
Variable:            y
  Assignments:       2
  Matching Coords:   2
  Matching Value:    2
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

## Summary

🎉 All consistency checks passed
