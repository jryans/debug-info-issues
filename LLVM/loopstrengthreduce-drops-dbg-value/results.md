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
++++ llvm release-clang-lldb-13.0.0 opt
++++ local build=release-clang-lldb-13.0.0
++++ local program=opt
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
+++ OPT=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
+++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
++++ dirname ../../vars.sh
+++ FILTER_DOT=../../tools/filter-dot.js
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
+++++ llvm release-clang-lldb-13.0.0 opt
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=opt
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
++++ OPT=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
++++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
+++++ dirname ./../../vars.sh
++++ FILTER_DOT=./../../tools/filter-dot.js
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
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ mkdir -p klee-out-O1
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1/final.bc example-O1-cg.ll
++ mkdir -p klee-out-O1-fixed
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1-fixed/final.bc example-O1-cg-fixed.ll
+ ./check-fix.sh
+++ dirname ./check-fix.sh
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
+++++ llvm release-clang-lldb-13.0.0 opt
+++++ local build=release-clang-lldb-13.0.0
+++++ local program=opt
+++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
++++ OPT=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
++++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
+++++ dirname ./../../vars.sh
++++ FILTER_DOT=./../../tools/filter-dot.js
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
++ /Users/jryans/Projects/klee/build-debug/bin/debug-info-check klee-out-O0/final.bc klee-out-O1-fixed/final.bc --debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O1-fixed/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `foo`

✅ Before and after function names match

### Variables

Before variable `blah` (decl src ln 1)
Store to `blah` (decl src ln 1), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 1.0, live ln 3, gen 0
Before variable `bob` (decl src ln 2)
Store to `bob` (decl src ln 2), asm ln 41
  %inc = add nsw i32 %4, 1, l3 c37, asm ln 40
  Added assignment asm ln 41, prod ln 3.37, live ln 3, gen 0
Store to `bob` (decl src ln 2), asm ln 16
  %0 = load i32, i32* %blah.addr, l3 c14, asm ln 15
  Added assignment asm ln 16, prod ln 3.14, live ln 3, gen 0
Computing generations: `blah` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 3, gen 0
Computing generations: `bob` (decl src ln 2)
  asm ln 16, prod ln 3.14, live ln 3, gen 0
  asm ln 41, prod ln 3.37, live ln 3, gen 1
Building live ranges: `blah` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 3, gen 0
    prod ln 1, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `bob` (decl src ln 2)
  asm ln 16, prod ln 3.14, live ln 3, gen 0
    prod ln 3, gen 0 →
    prod ln 3, gen 1
  asm ln 41, prod ln 3.37, live ln 3, gen 1
    prod ln 3, gen 1 →
    prod ln ∞, gen ∞

After variable `blah` (decl src ln 1)
@dbg.value mapping for `blah` (decl src ln 1), asm ln 9
Value produced for `blah` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.0, live ln 3, gen 0
After variable `bob` (decl src ln 2)
@dbg.value mapping for `bob` (decl src ln 2), asm ln 10
Value produced for `bob` (decl src ln 2), asm ln 10
  arg 0
  Added assignment asm ln 10, prod ln 2.0, live ln 3, gen 0
After variable `bob` (decl src ln 2)
@dbg.value mapping for `bob` (decl src ln 2), asm ln 15
Value produced for `bob` (decl src ln 2), asm ln 15
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 23
  Phi-based assignment in prologue, skipping
After variable `bob` (decl src ln 2)
@dbg.value mapping for `bob` (decl src ln 2), asm ln 16
Value produced for `bob` (decl src ln 2), asm ln 16
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 23
  Phi-based assignment in prologue, skipping
After variable `bob` (decl src ln 2)
@dbg.value mapping for `bob` (decl src ln 2), asm ln 24
Value produced for `bob` (decl src ln 2), asm ln 24
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 23
  Phi-based assignment in prologue, skipping
After variable `bob` (decl src ln 2)
@dbg.value mapping for `bob` (decl src ln 2), asm ln 26
Value produced for `bob` (decl src ln 2), asm ln 26
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 23
  Added assignment asm ln 26, prod ln 3.24, live ln 4, gen 0
Computing generations: `blah` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 3, gen 0
Computing generations: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, gen 0
  asm ln 26, prod ln 3.24, live ln 4, gen 1
Building live ranges: `blah` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 3, gen 0
    prod ln 1, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `bob` (decl src ln 2)
  asm ln 10, prod ln 2.0, live ln 3, gen 0
    prod ln 2, gen 0 →
    prod ln 3, gen 1
  asm ln 26, prod ln 3.24, live ln 4, gen 1
    prod ln 3, gen 1 →
    prod ln ∞, gen ∞

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Assignments

✅ Before live range coverage
  Covered:   2
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

Collected value for `blah`
  i32 %blah
  (ReadLSB w32 0x0 blah)
Collected value for `bob`
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 0x0 blah)
Collected value for `bob`
  %inc = add nsw i32 %4, 1, l3 c37
  (Add w32 0x1
          (ReadLSB w32 0x0 blah))

#### After values

Collected value for `blah`
  i32 %blah
  (ReadLSB w32 0x0 blah)
Collected value for `bob`
  i32 %blah
  (ReadLSB w32 0x0 blah)
Collected value for `bob`
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (Add w32 0xFFFFFFFF
          (ReadLSB w32 0x0 blah))

#### Check before against after

Checking equivalence of `blah` (decl src ln 1) from
  assn asm ln 12, prod ln 1.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 0x0 blah)
and
  assn asm ln 9, prod ln 1.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 0x0 blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 blah)
     (ReadLSB w32 0x0 blah)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 blah)
     N0)

Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 16, prod ln 3.14, live ln 3, gen 0
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 0x0 blah)
and
  assn asm ln 10, prod ln 2.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 0x0 blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 blah)
     (ReadLSB w32 0x0 blah)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 blah)
     N0)

🔔 After `bob` (decl src ln 2) assn asm ln 26, prod ln 3.24, live ln 4, gen 1 coordinates don't match before assn asm ln 41, prod ln 3.37, live ln 3, gen 1
Pushed initial value onto stack: (Add w32 0xFFFFFFFF
          (ReadLSB w32 0x0 blah))
plus_uconst: (Add w32 (Add w32 0xFFFFFFFF
                   (ReadLSB w32 0x0 blah))
          0x1)
plus_uconst: (Add w32 (Add w32 (Add w32 0xFFFFFFFF
                            (ReadLSB w32 0x0 blah))
                   0x1)
          0x1)
Result: (Add w32 (Add w32 (Add w32 0xFFFFFFFF
                            (ReadLSB w32 0x0 blah))
                   0x1)
          0x1)
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 41, prod ln 3.37, live ln 3, gen 1
  %inc = add nsw i32 %4, 1, l3 c37
  (Add w32 0x1
          (ReadLSB w32 0x0 blah))
and
  assn asm ln 26, prod ln 3.24, live ln 4, gen 1
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 0xFFFFFFFF
                            (ReadLSB w32 0x0 blah))
                   0x1)
          0x1)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 0x1
              (ReadLSB w32 0x0 blah))
     (Add w32 (Add w32 (Add w32 0xFFFFFFFF
                                (ReadLSB w32 0x0 blah))
                       0x1)
              0x1)))
Parsed query
(Eq (Add w32 0x1
              N0:(ReadLSB w32 0x0 blah))
     (Add w32 (Add w32 (Add w32 0xFFFFFFFF N0) 0x1)
              0x1))

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
  (ReadLSB w32 0x0 blah)
and
  assn asm ln 12, prod ln 1.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 0x0 blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 blah)
     (ReadLSB w32 0x0 blah)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 blah)
     N0)

Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 10, prod ln 2.0, live ln 3, gen 0
  i32 %blah
  (ReadLSB w32 0x0 blah)
and
  assn asm ln 16, prod ln 3.14, live ln 3, gen 0
  %0 = load i32, i32* %blah.addr, l3 c14
  (ReadLSB w32 0x0 blah)
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 blah)
     (ReadLSB w32 0x0 blah)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 blah)
     N0)

🔔 Before `bob` (decl src ln 2) assn asm ln 41, prod ln 3.37, live ln 3, gen 1 coordinates don't match after assn asm ln 26, prod ln 3.24, live ln 4, gen 1
Checking equivalence of `bob` (decl src ln 2) from
  assn asm ln 26, prod ln 3.24, live ln 4, gen 1
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Add w32 (Add w32 (Add w32 0xFFFFFFFF
                            (ReadLSB w32 0x0 blah))
                   0x1)
          0x1)
and
  assn asm ln 41, prod ln 3.37, live ln 3, gen 1
  %inc = add nsw i32 %4, 1, l3 c37
  (Add w32 0x1
          (ReadLSB w32 0x0 blah))
Query to parse
array blah[4] : w32 -> w8 = symbolic
array blah[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (Add w32 (Add w32 0xFFFFFFFF
                                (ReadLSB w32 0x0 blah))
                       0x1)
              0x1)
     (Add w32 0x1
              (ReadLSB w32 0x0 blah))))
Parsed query
(Eq (Add w32 (Add w32 (Add w32 0xFFFFFFFF
                                N0:(ReadLSB w32 0x0 blah))
                       0x1)
              0x1)
     (Add w32 0x1 N0))

✅ After symbolic values checked against before
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

🎉 All consistency checks passed
