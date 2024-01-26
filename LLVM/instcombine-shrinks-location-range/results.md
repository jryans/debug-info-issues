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
+++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace'
+ mkdir -p klee-out-before
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-before/final.bc example-before.ll
+ mkdir -p klee-out-after
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-after/final.bc example-after.ll
+ mkdir -p klee-out-after-fixed
+ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-after-fixed/final.bc example-after-fixed.ll
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
+++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace'
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-before/final.bc klee-out-after/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-before/final.bc and klee-out-after/final.bc for debug info consistency…

## Functions

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `foo`

✅ Before and after function names match

### Variables

Before variable `h` (decl src ln 4)
Value produced for `h` (decl src ln 4), asm ln 10
  %gep = getelementptr i64, i64* %a, i64 1, asm ln 9
🔔 Value produced for `h` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 10, prod ln 5.3, live ln 6, gen 0
Computing generations: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, gen 0

After variable `h` (decl src ln 4)
Value produced for `h` (decl src ln 4), asm ln 10
  %gep = getelementptr i64, i64* %a, i64 1, asm ln 9
🔔 Value produced for `h` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 10, prod ln 5.3, live ln 6, gen 0
Computing generations: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, gen 0

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `a.c`
[0mCollected value for `h`
  Concrete pointer resolves to a.deref, offset (w64 0x8)
  Created deref expr (ReadLSB w64 (w32 0x8) a.deref)
  Replaced concrete pointer with hash (w64 0xFCFCC8561BD370D6)
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xFCFCC8561BD370D6)

#### After values

Collected value for `h`
  Concrete pointer resolves to a.deref, offset (w64 0x8)
  Created deref expr (ReadLSB w64 (w32 0x8) a.deref)
  Replaced concrete pointer with hash (w64 0xFCFCC8561BD370D6)
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xFCFCC8561BD370D6)

### Assignments

Computing generations: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, gen 0
Building live ranges: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞

Computing generations: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, gen 0
Building live ranges: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞

✅ Before live range coverage
  Covered:   1
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `h` (decl src ln 4) from
  assn asm ln 10, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xFCFCC8561BD370D6)
and
  assn asm ln 10, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xFCFCC8561BD370D6)
✅ After `h` (decl src ln 4) assn asm ln 10, prod ln 5.3, live ln 6, gen 0 symbolic value matches before assn asm ln 10, prod ln 5.3, live ln 6, gen 0

✅ Before symbolic values checked against after
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `h` (decl src ln 4) from
  assn asm ln 10, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xFCFCC8561BD370D6)
and
  assn asm ln 10, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xFCFCC8561BD370D6)
✅ Before `h` (decl src ln 4) assn asm ln 10, prod ln 5.3, live ln 6, gen 0 symbolic value matches after assn asm ln 10, prod ln 5.3, live ln 6, gen 0

✅ After symbolic values checked against before
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Function `bar`

✅ Before and after function names match

### Variables

Before variable `k` (decl src ln 2)
Value produced for `k` (decl src ln 2), asm ln 18
  %gep = getelementptr i64, i64* %a, i64 %b, asm ln 17
🔔 Value produced for `k` (decl src ln 2): missing live ln, using produced ln + 1
  Added assignment asm ln 18, prod ln 5.3, live ln 6, gen 0
Computing generations: `k` (decl src ln 2)
  asm ln 18, prod ln 5.3, live ln 6, gen 0

After variable `k` (decl src ln 2)
Value produced for `k` (decl src ln 2), asm ln 18
  %gep = getelementptr i64, i64* %a, i64 %b, asm ln 17
🔔 Value produced for `k` (decl src ln 2): missing live ln, using produced ln + 1
  Added assignment asm ln 18, prod ln 5.3, live ln 6, gen 0
Computing generations: `k` (decl src ln 2)
  asm ln 18, prod ln 5.3, live ln 6, gen 0

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `k`
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x10DBF2680)
          (Mul w64 (w64 0x8)
                   (ReadLSB w64 (w32 0x0) b)))
[0;1;31mKLEE: ERROR: a.c:2: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
❌ Unable to execute all before program states

#### After values

Collected value for `k`
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x10DBF29D0)
          (Mul w64 (w64 0x8)
                   (ReadLSB w64 (w32 0x0) b)))
[0;1;31mKLEE: ERROR: a.c:2: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
❌ Unable to execute all after program states

### Assignments

Computing generations: `k` (decl src ln 2)
  asm ln 18, prod ln 5.3, live ln 6, gen 0
Building live ranges: `k` (decl src ln 2)
  asm ln 18, prod ln 5.3, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞

Computing generations: `k` (decl src ln 2)
  asm ln 18, prod ln 5.3, live ln 6, gen 0
Building live ranges: `k` (decl src ln 2)
  asm ln 18, prod ln 5.3, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞

✅ Before live range coverage
  Covered:   1
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `k` (decl src ln 2) from
  assn asm ln 18, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x10DBF2680)
          (Mul w64 (w64 0x8)
                   (ReadLSB w64 (w32 0x0) b)))
and
  assn asm ln 18, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x10DBF29D0)
          (Mul w64 (w64 0x8)
                   (ReadLSB w64 (w32 0x0) b)))
Query to parse
array b[8] : w32 -> w8 = symbolic
array b[8] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0x10DBF2680)
              (Mul w64 (w64 0x8)
                       (ReadLSB w64 (w32 0x0) b)))
     (Add w64 (w64 0x10DBF29D0)
              (Mul w64 (w64 0x8)
                       (ReadLSB w64 (w32 0x0) b)))))
Parsed query
(Eq (Add w64 (w64 0x10DBF2680)
              N0:(Mul w64 (w64 0x8)
                          (ReadLSB w64 (w32 0x0) b)))
     (Add w64 (w64 0x10DBF29D0) N0))
❌ After `k` (decl src ln 2) assn asm ln 18, prod ln 5.3, live ln 6, gen 0 symbolic value doesn't match before assn asm ln 18, prod ln 5.3, live ln 6, gen 0

❌ Before symbolic values checked against after
  Matching:    0
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `k` (decl src ln 2) from
  assn asm ln 18, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x10DBF29D0)
          (Mul w64 (w64 0x8)
                   (ReadLSB w64 (w32 0x0) b)))
and
  assn asm ln 18, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x10DBF2680)
          (Mul w64 (w64 0x8)
                   (ReadLSB w64 (w32 0x0) b)))
Query to parse
array b[8] : w32 -> w8 = symbolic
array b[8] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0x10DBF29D0)
              (Mul w64 (w64 0x8)
                       (ReadLSB w64 (w32 0x0) b)))
     (Add w64 (w64 0x10DBF2680)
              (Mul w64 (w64 0x8)
                       (ReadLSB w64 (w32 0x0) b)))))
Parsed query
(Eq (Add w64 (w64 0x10DBF29D0)
              N0:(Mul w64 (w64 0x8)
                          (ReadLSB w64 (w32 0x0) b)))
     (Add w64 (w64 0x10DBF2680) N0))
❌ Before `k` (decl src ln 2) assn asm ln 18, prod ln 5.3, live ln 6, gen 0 symbolic value doesn't match after assn asm ln 18, prod ln 5.3, live ln 6, gen 0

❌ After symbolic values checked against before
  Matching:    0
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
+++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace'
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-before/final.bc klee-out-after-fixed/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-before/final.bc and klee-out-after-fixed/final.bc for debug info consistency…

## Functions

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `foo`

✅ Before and after function names match

### Variables

Before variable `h` (decl src ln 4)
Value produced for `h` (decl src ln 4), asm ln 10
  %gep = getelementptr i64, i64* %a, i64 1, asm ln 9
🔔 Value produced for `h` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 10, prod ln 5.3, live ln 6, gen 0
Computing generations: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, gen 0

After variable `h` (decl src ln 4)
Value produced for `h` (decl src ln 4), asm ln 9
  arg 0
🔔 Value produced for `h` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 9, prod ln 5.3, live ln 6, gen 0
After variable `h` (decl src ln 4)
Value produced for `h` (decl src ln 4), asm ln 11
  %gep = getelementptr i64, i64* %a, i64 1, asm ln 10
🔔 Value produced for `h` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 11, prod ln 5.3, live ln 6, gen 0
Computing generations: `h` (decl src ln 4)
  asm ln 9, prod ln 5.3, live ln 6, gen 0
  asm ln 11, prod ln 5.3, live ln 6, gen 1

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `a.c`
[0mCollected value for `h`
  Concrete pointer resolves to a.deref, offset (w64 0x8)
  Created deref expr (ReadLSB w64 (w32 0x8) a.deref)
  Replaced concrete pointer with hash (w64 0xFCFCC8561BD370D6)
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xFCFCC8561BD370D6)

#### After values

Collected value for `h`
  Concrete pointer resolves to a.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) a.deref)
  Replaced concrete pointer with hash (w64 0x977FECA2A8C97DE7)
  i64* %a
  (w64 0x977FECA2A8C97DE7)
Collected value for `h`
  Concrete pointer resolves to a.deref, offset (w64 0x8)
  Created deref expr (ReadLSB w64 (w32 0x8) a.deref)
  Replaced concrete pointer with hash (w64 0xFCFCC8561BD370D6)
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xFCFCC8561BD370D6)

### Assignments

Filtering redundant after assignments: `h` (decl src ln 4)

Computing generations: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, gen 0
Building live ranges: `h` (decl src ln 4)
  asm ln 10, prod ln 5.3, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞

Computing generations: `h` (decl src ln 4)
  asm ln 9, prod ln 5.3, live ln 6, gen 0
  asm ln 11, prod ln 5.3, live ln 6, gen 1
Building live ranges: `h` (decl src ln 4)
  asm ln 9, prod ln 5.3, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln 6, gen 1
  asm ln 11, prod ln 5.3, live ln 6, gen 1
    live ln 6, gen 1 →
    live ln ∞, gen ∞

✅ Before live range coverage
  Covered:   1
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Pushed initial value onto stack: (w64 0x977FECA2A8C97DE7)
plus_uconst: (Add w64 (w64 0x977FECA2A8C97DE7) (w64 0x8))
Result: (Add w64 (w64 0x977FECA2A8C97DE7) (w64 0x8))
Checking equivalence of `h` (decl src ln 4) from
  assn asm ln 10, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xFCFCC8561BD370D6)
and
  assn asm ln 9, prod ln 5.3, live ln 6, gen 0
  i64* %a
  (Add w64 (w64 0x977FECA2A8C97DE7) (w64 0x8))
Query to parse
(query [] (Eq (w64 0xFCFCC8561BD370D6) (Add w64 (w64 0x977FECA2A8C97DE7) (w64 0x8))))
Parsed query
(Eq (w64 0xFCFCC8561BD370D6) (Add w64 (w64 0x977FECA2A8C97DE7) (w64 0x8)))
❌ After `h` (decl src ln 4) assn asm ln 9, prod ln 5.3, live ln 6, gen 0 symbolic value doesn't match before assn asm ln 10, prod ln 5.3, live ln 6, gen 0

❌ Before symbolic values checked against after
  Matching:    0
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `h` (decl src ln 4) from
  assn asm ln 9, prod ln 5.3, live ln 6, gen 0
  i64* %a
  (Add w64 (w64 0x977FECA2A8C97DE7) (w64 0x8))
and
  assn asm ln 10, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xFCFCC8561BD370D6)
Query to parse
(query [] (Eq (Add w64 (w64 0x977FECA2A8C97DE7) (w64 0x8)) (w64 0xFCFCC8561BD370D6)))
Parsed query
(Eq (Add w64 (w64 0x977FECA2A8C97DE7) (w64 0x8)) (w64 0xFCFCC8561BD370D6))
❌ Before `h` (decl src ln 4) assn asm ln 10, prod ln 5.3, live ln 6, gen 0 symbolic value doesn't match after assn asm ln 9, prod ln 5.3, live ln 6, gen 0

🔔 Before `h` (decl src ln 4) assn asm ln 10, prod ln 5.3, live ln 6, gen 0 coordinates don't match after assn asm ln 11, prod ln 5.3, live ln 6, gen 1
Checking equivalence of `h` (decl src ln 4) from
  assn asm ln 11, prod ln 5.3, live ln 6, gen 1
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xFCFCC8561BD370D6)
and
  assn asm ln 10, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 1
  (w64 0xFCFCC8561BD370D6)
✅ Before `h` (decl src ln 4) assn asm ln 10, prod ln 5.3, live ln 6, gen 0 symbolic value matches after assn asm ln 11, prod ln 5.3, live ln 6, gen 1

❌ After symbolic values checked against before
  Matching:    1
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Function `bar`

✅ Before and after function names match

### Variables

Before variable `k` (decl src ln 2)
Value produced for `k` (decl src ln 2), asm ln 18
  %gep = getelementptr i64, i64* %a, i64 %b, asm ln 17
🔔 Value produced for `k` (decl src ln 2): missing live ln, using produced ln + 1
  Added assignment asm ln 18, prod ln 5.3, live ln 6, gen 0
Computing generations: `k` (decl src ln 2)
  asm ln 18, prod ln 5.3, live ln 6, gen 0

After variable `k` (decl src ln 2)
After variable intrinsic with undef input, asm ln 18, ignoring undefined variable
  @dbg.value(i64* undef, !16), l5 c3
After variable `k` (decl src ln 2)
Value produced for `k` (decl src ln 2), asm ln 20
  %gep = getelementptr i64, i64* %a, i64 %b, asm ln 19
🔔 Value produced for `k` (decl src ln 2): missing live ln, using produced ln + 1
  Added assignment asm ln 20, prod ln 5.3, live ln 6, gen 0
Computing generations: `k` (decl src ln 2)
  asm ln 20, prod ln 5.3, live ln 6, gen 0

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `k`
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x11676A710)
          (Mul w64 (w64 0x8)
                   (ReadLSB w64 (w32 0x0) b)))
[0;1;31mKLEE: ERROR: a.c:2: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
❌ Unable to execute all before program states

#### After values

Collected value for `k`
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x11676A970)
          (Mul w64 (w64 0x8)
                   (ReadLSB w64 (w32 0x0) b)))
[0;1;31mKLEE: ERROR: a.c:2: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
❌ Unable to execute all after program states

### Assignments

Computing generations: `k` (decl src ln 2)
  asm ln 18, prod ln 5.3, live ln 6, gen 0
Building live ranges: `k` (decl src ln 2)
  asm ln 18, prod ln 5.3, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞

Computing generations: `k` (decl src ln 2)
  asm ln 20, prod ln 5.3, live ln 6, gen 0
Building live ranges: `k` (decl src ln 2)
  asm ln 20, prod ln 5.3, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞

✅ Before live range coverage
  Covered:   1
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `k` (decl src ln 2) from
  assn asm ln 18, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x11676A710)
          (Mul w64 (w64 0x8)
                   (ReadLSB w64 (w32 0x0) b)))
and
  assn asm ln 20, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x11676A970)
          (Mul w64 (w64 0x8)
                   (ReadLSB w64 (w32 0x0) b)))
Query to parse
array b[8] : w32 -> w8 = symbolic
array b[8] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0x11676A710)
              (Mul w64 (w64 0x8)
                       (ReadLSB w64 (w32 0x0) b)))
     (Add w64 (w64 0x11676A970)
              (Mul w64 (w64 0x8)
                       (ReadLSB w64 (w32 0x0) b)))))
Parsed query
(Eq (Add w64 (w64 0x11676A710)
              N0:(Mul w64 (w64 0x8)
                          (ReadLSB w64 (w32 0x0) b)))
     (Add w64 (w64 0x11676A970) N0))
❌ After `k` (decl src ln 2) assn asm ln 20, prod ln 5.3, live ln 6, gen 0 symbolic value doesn't match before assn asm ln 18, prod ln 5.3, live ln 6, gen 0

❌ Before symbolic values checked against after
  Matching:    0
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `k` (decl src ln 2) from
  assn asm ln 20, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x11676A970)
          (Mul w64 (w64 0x8)
                   (ReadLSB w64 (w32 0x0) b)))
and
  assn asm ln 18, prod ln 5.3, live ln 6, gen 0
  %gep = getelementptr i64, i64* %a, i64 %b
  (Add w64 (w64 0x11676A710)
          (Mul w64 (w64 0x8)
                   (ReadLSB w64 (w32 0x0) b)))
Query to parse
array b[8] : w32 -> w8 = symbolic
array b[8] : w32 -> w8 = symbolic
(query [] (Eq (Add w64 (w64 0x11676A970)
              (Mul w64 (w64 0x8)
                       (ReadLSB w64 (w32 0x0) b)))
     (Add w64 (w64 0x11676A710)
              (Mul w64 (w64 0x8)
                       (ReadLSB w64 (w32 0x0) b)))))
Parsed query
(Eq (Add w64 (w64 0x11676A970)
              N0:(Mul w64 (w64 0x8)
                          (ReadLSB w64 (w32 0x0) b)))
     (Add w64 (w64 0x11676A710) N0))
❌ Before `k` (decl src ln 2) assn asm ln 18, prod ln 5.3, live ln 6, gen 0 symbolic value doesn't match after assn asm ln 20, prod ln 5.3, live ln 6, gen 0

❌ After symbolic values checked against before
  Matching:    0
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
