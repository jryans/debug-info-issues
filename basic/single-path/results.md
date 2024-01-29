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
+++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace'
++ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variables

Before variable `n` (decl src ln 1)
Store to declared address of `n` (decl src ln 1), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 1.0, live ln 2, gen 0
Before variable `x` (decl src ln 2)
Store to declared address of `x` (decl src ln 2), asm ln 17
  %mul = mul nsw i32 %0, 2, l2 c13, asm ln 16
  Added assignment asm ln 17, prod ln 2.13, live ln 3, gen 0
Before variable `y` (decl src ln 3)
Store to declared address of `y` (decl src ln 3), asm ln 23
  %add1 = add nsw i32 %add, %2, l3 c17, asm ln 22
  Added assignment asm ln 23, prod ln 3.17, live ln 4, gen 0
Computing generations: `n` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 2, gen 0
Computing generations: `x` (decl src ln 2)
  asm ln 17, prod ln 2.13, live ln 3, gen 0
Computing generations: `y` (decl src ln 3)
  asm ln 23, prod ln 3.17, live ln 4, gen 0

After variable `n` (decl src ln 1)
Value produced for `n` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.0, live ln 2, gen 0
After variable `x` (decl src ln 2)
Value produced for `x` (decl src ln 2), asm ln 11
  %mul = shl nsw i32 %n, 1, l2 c13, asm ln 10
  Added assignment asm ln 11, prod ln 2.13, live ln 3, gen 0
After variable `y` (decl src ln 3)
Value produced for `y` (decl src ln 3), asm ln 14
  %add1 = add i32 %add, %mul, l3 c17, asm ln 13
  Added assignment asm ln 14, prod ln 3.17, live ln 4, gen 0
Computing generations: `n` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 2, gen 0
Computing generations: `x` (decl src ln 2)
  asm ln 11, prod ln 2.13, live ln 3, gen 0
Computing generations: `y` (decl src ln 3)
  asm ln 14, prod ln 3.17, live ln 4, gen 0

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `x`
  %mul = mul nsw i32 %0, 2, l2 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) n))
Collected value for `y`
  %add1 = add nsw i32 %add, %2, l3 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) n))
                   N0))

#### After values

Collected value for `n`
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
Collected value for `x`
  %mul = shl nsw i32 %n, 1, l2 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (w32 0x1))
Collected value for `y`
  %add1 = add i32 %add, %mul, l3 c17
  (Add w32 (w32 0x4)
          (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                   (Shl w32 N0 (w32 0x1))))

### Assignments

Computing generations: `n` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 2, gen 0
Computing generations: `x` (decl src ln 2)
  asm ln 17, prod ln 2.13, live ln 3, gen 0
Computing generations: `y` (decl src ln 3)
  asm ln 23, prod ln 3.17, live ln 4, gen 0
Building live ranges: `n` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 2, gen 0
    live ln 2, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `x` (decl src ln 2)
  asm ln 17, prod ln 2.13, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `y` (decl src ln 3)
  asm ln 23, prod ln 3.17, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln ∞, gen ∞

Computing generations: `n` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 2, gen 0
Computing generations: `x` (decl src ln 2)
  asm ln 11, prod ln 2.13, live ln 3, gen 0
Computing generations: `y` (decl src ln 3)
  asm ln 14, prod ln 3.17, live ln 4, gen 0
Building live ranges: `n` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 2, gen 0
    live ln 2, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `x` (decl src ln 2)
  asm ln 11, prod ln 2.13, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `y` (decl src ln 3)
  asm ln 14, prod ln 3.17, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln ∞, gen ∞

✅ Before live range coverage
  Covered:   3
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 12, prod ln 1.0, live ln 2, gen 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
and
  assn asm ln 9, prod ln 1.0, live ln 2, gen 0
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
✅ After `n` (decl src ln 1) assn asm ln 9, prod ln 1.0, live ln 2, gen 0 symbolic value matches before assn asm ln 12, prod ln 1.0, live ln 2, gen 0

Checking equivalence of `x` (decl src ln 2) from
  assn asm ln 17, prod ln 2.13, live ln 3, gen 0
  %mul = mul nsw i32 %0, 2, l2 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) n))
and
  assn asm ln 11, prod ln 2.13, live ln 3, gen 0
  %mul = shl nsw i32 %n, 1, l2 c13
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
✅ After `x` (decl src ln 2) assn asm ln 11, prod ln 2.13, live ln 3, gen 0 symbolic value matches before assn asm ln 17, prod ln 2.13, live ln 3, gen 0

Checking equivalence of `y` (decl src ln 3) from
  assn asm ln 23, prod ln 3.17, live ln 4, gen 0
  %add1 = add nsw i32 %add, %2, l3 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) n))
                   N0))
and
  assn asm ln 14, prod ln 3.17, live ln 4, gen 0
  %add1 = add i32 %add, %mul, l3 c17
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
✅ After `y` (decl src ln 3) assn asm ln 14, prod ln 3.17, live ln 4, gen 0 symbolic value matches before assn asm ln 23, prod ln 3.17, live ln 4, gen 0

✅ Before symbolic values checked against after
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 9, prod ln 1.0, live ln 2, gen 0
  i32 %n
  (ReadLSB w32 (w32 0x0) n)
and
  assn asm ln 12, prod ln 1.0, live ln 2, gen 0
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
✅ Before `n` (decl src ln 1) assn asm ln 12, prod ln 1.0, live ln 2, gen 0 symbolic value matches after assn asm ln 9, prod ln 1.0, live ln 2, gen 0

Checking equivalence of `x` (decl src ln 2) from
  assn asm ln 11, prod ln 2.13, live ln 3, gen 0
  %mul = shl nsw i32 %n, 1, l2 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) n)
          (w32 0x1))
and
  assn asm ln 17, prod ln 2.13, live ln 3, gen 0
  %mul = mul nsw i32 %0, 2, l2 c13
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
✅ Before `x` (decl src ln 2) assn asm ln 17, prod ln 2.13, live ln 3, gen 0 symbolic value matches after assn asm ln 11, prod ln 2.13, live ln 3, gen 0

Checking equivalence of `y` (decl src ln 3) from
  assn asm ln 14, prod ln 3.17, live ln 4, gen 0
  %add1 = add i32 %add, %mul, l3 c17
  (Add w32 (w32 0x4)
          (Add w32 N0:(ReadLSB w32 (w32 0x0) n)
                   (Shl w32 N0 (w32 0x1))))
and
  assn asm ln 23, prod ln 3.17, live ln 4, gen 0
  %add1 = add nsw i32 %add, %2, l3 c17
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
✅ Before `y` (decl src ln 3) assn asm ln 23, prod ln 3.17, live ln 4, gen 0 symbolic value matches after assn asm ln 14, prod ln 3.17, live ln 4, gen 0

✅ After symbolic values checked against before
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

🎉 All consistency checks passed
