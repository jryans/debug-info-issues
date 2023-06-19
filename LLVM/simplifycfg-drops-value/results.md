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
+ mkdir -p klee-out-O2
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2/final.bc example-O2.ll
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

## Function `baz`

✅ Before and after function names match

### Variables

Before variable `p` (decl src ln 3)
Store to declared address of `p` (decl src ln 3), asm ln 15
  arg 0
  Added assignment asm ln 15, prod ln 3.0, live ln 6, gen 0
Before variable `q` (decl src ln 3)
Store to declared address of `q` (decl src ln 3), asm ln 17
  arg 1
  Added assignment asm ln 17, prod ln 3.0, live ln 6, gen 0
Before variable `local` (decl src ln 4)
Store to declared address of `local` (decl src ln 4), asm ln 51
  %9 = load i32, i32* %q.addr, l16 c13, asm ln 50
  Added assignment asm ln 51, prod ln 16.13, live ln 17, gen 0
Store to declared address of `local` (decl src ln 4), asm ln 21
  %0 = load i32, i32* %p.addr, l6 c11, asm ln 20
  Added assignment asm ln 21, prod ln 6.11, live ln 7, gen 0
Computing generations: `p` (decl src ln 3)
  asm ln 15, prod ln 3.0, live ln 6, gen 0
Computing generations: `q` (decl src ln 3)
  asm ln 17, prod ln 3.0, live ln 6, gen 0
Computing generations: `local` (decl src ln 4)
  asm ln 21, prod ln 6.11, live ln 7, gen 0
  asm ln 51, prod ln 16.13, live ln 17, gen 1

After variable `p` (decl src ln 3)
Value produced for `p` (decl src ln 3), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 3.0, live ln 7, gen 0
After variable `q` (decl src ln 3)
Value produced for `q` (decl src ln 3), asm ln 13
  arg 1
  Added assignment asm ln 13, prod ln 3.0, live ln 7, gen 0
After variable `local` (decl src ln 4)
Value produced for `local` (decl src ln 4), asm ln 14
  arg 0
  Added assignment asm ln 14, prod ln 4.0, live ln 7, gen 0
Computing generations: `p` (decl src ln 3)
  asm ln 12, prod ln 3.0, live ln 7, gen 0
Computing generations: `q` (decl src ln 3)
  asm ln 13, prod ln 3.0, live ln 7, gen 0
Computing generations: `local` (decl src ln 4)
  asm ln 14, prod ln 4.0, live ln 7, gen 0

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `p`
  i32 %p
  (ReadLSB w32 (w32 0x0) p)
Collected value for `q`
  i32 %q
  (ReadLSB w32 (w32 0x0) q)
Collected value for `local`
  %0 = load i32, i32* %p.addr, l6 c11
  (ReadLSB w32 (w32 0x0) p)
Collected value for `local`
  %9 = load i32, i32* %q.addr, l16 c13
  (ReadLSB w32 (w32 0x0) q)
[0;1;31mKLEE: ERROR: example.c:9: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:13: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
❌ Unable to execute all before program states

#### After values

Collected value for `p`
  i32 %p
  (ReadLSB w32 (w32 0x0) p)
Collected value for `q`
  i32 %q
  (ReadLSB w32 (w32 0x0) q)
Collected value for `local`
  i32 %p
  (ReadLSB w32 (w32 0x0) p)
[0;1;31mKLEE: ERROR: example.c:9: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m[0;1;31mKLEE: ERROR: example.c:7: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
❌ Unable to execute all after program states

### Assignments

Filtering redundant before assignments: `local` (decl src ln 4)

Computing generations: `p` (decl src ln 3)
  asm ln 15, prod ln 3.0, live ln 6, gen 0
Computing generations: `q` (decl src ln 3)
  asm ln 17, prod ln 3.0, live ln 6, gen 0
Computing generations: `local` (decl src ln 4)
  asm ln 21, prod ln 6.11, live ln 7, gen 0
  asm ln 51, prod ln 16.13, live ln 17, gen 1
Building live ranges: `p` (decl src ln 3)
  asm ln 15, prod ln 3.0, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `q` (decl src ln 3)
  asm ln 17, prod ln 3.0, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `local` (decl src ln 4)
  asm ln 21, prod ln 6.11, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln 17, gen 1
  asm ln 51, prod ln 16.13, live ln 17, gen 1
    live ln 17, gen 1 →
    live ln ∞, gen ∞

Computing generations: `p` (decl src ln 3)
  asm ln 12, prod ln 3.0, live ln 7, gen 0
Computing generations: `q` (decl src ln 3)
  asm ln 13, prod ln 3.0, live ln 7, gen 0
Computing generations: `local` (decl src ln 4)
  asm ln 14, prod ln 4.0, live ln 7, gen 0
Building live ranges: `p` (decl src ln 3)
  asm ln 12, prod ln 3.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `q` (decl src ln 3)
  asm ln 13, prod ln 3.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `local` (decl src ln 4)
  asm ln 14, prod ln 4.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞

After frag: [0, 32)
❌ Live ranges for `p` (decl src ln 3) not fully covered: live ln 6, gen 0 < live ln 7, gen 0
After frag: [0, 32)
❌ Live ranges for `q` (decl src ln 3) not fully covered: live ln 6, gen 0 < live ln 7, gen 0
After frag: [0, 32)
❌ Before live range coverage
  Covered:   1
  Uncovered: 2
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `local` (decl src ln 4) from
  assn asm ln 21, prod ln 6.11, live ln 7, gen 0
  %0 = load i32, i32* %p.addr, l6 c11
  (ReadLSB w32 (w32 0x0) p)
and
  assn asm ln 14, prod ln 4.0, live ln 7, gen 0
  i32 %p
  (ReadLSB w32 (w32 0x0) p)
Query to parse
array p[4] : w32 -> w8 = symbolic
array p[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) p)
     (ReadLSB w32 (w32 0x0) p)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) p)
     N0)
✅ After `local` (decl src ln 4) assn asm ln 14, prod ln 4.0, live ln 7, gen 0 symbolic value matches before assn asm ln 21, prod ln 6.11, live ln 7, gen 0

🔔 After `local` (decl src ln 4) assn asm ln 14, prod ln 4.0, live ln 7, gen 0 coordinates don't match before assn asm ln 51, prod ln 16.13, live ln 17, gen 1
Checking equivalence of `local` (decl src ln 4) from
  assn asm ln 51, prod ln 16.13, live ln 17, gen 1
  %9 = load i32, i32* %q.addr, l16 c13
  (ReadLSB w32 (w32 0x0) q)
and
  assn asm ln 14, prod ln 4.0, live ln 7, gen 0
  i32 %p
  (ReadLSB w32 (w32 0x0) p)
Query to parse
array q[4] : w32 -> w8 = symbolic
array p[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) q)
     (ReadLSB w32 (w32 0x0) p)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) q)
     (ReadLSB w32 (w32 0x0) p))
❌ After `local` (decl src ln 4) assn asm ln 14, prod ln 4.0, live ln 7, gen 0 symbolic value doesn't match before assn asm ln 51, prod ln 16.13, live ln 17, gen 1

🔔 After `p` (decl src ln 3) assn asm ln 12, prod ln 3.0, live ln 7, gen 0 coordinates don't match before assn asm ln 15, prod ln 3.0, live ln 6, gen 0
Checking equivalence of `p` (decl src ln 3) from
  assn asm ln 15, prod ln 3.0, live ln 6, gen 0
  i32 %p
  (ReadLSB w32 (w32 0x0) p)
and
  assn asm ln 12, prod ln 3.0, live ln 7, gen 0
  i32 %p
  (ReadLSB w32 (w32 0x0) p)
Query to parse
array p[4] : w32 -> w8 = symbolic
array p[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) p)
     (ReadLSB w32 (w32 0x0) p)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) p)
     N0)
✅ After `p` (decl src ln 3) assn asm ln 12, prod ln 3.0, live ln 7, gen 0 symbolic value matches before assn asm ln 15, prod ln 3.0, live ln 6, gen 0

🔔 After `q` (decl src ln 3) assn asm ln 13, prod ln 3.0, live ln 7, gen 0 coordinates don't match before assn asm ln 17, prod ln 3.0, live ln 6, gen 0
Checking equivalence of `q` (decl src ln 3) from
  assn asm ln 17, prod ln 3.0, live ln 6, gen 0
  i32 %q
  (ReadLSB w32 (w32 0x0) q)
and
  assn asm ln 13, prod ln 3.0, live ln 7, gen 0
  i32 %q
  (ReadLSB w32 (w32 0x0) q)
Query to parse
array q[4] : w32 -> w8 = symbolic
array q[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) q)
     (ReadLSB w32 (w32 0x0) q)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) q)
     N0)
✅ After `q` (decl src ln 3) assn asm ln 13, prod ln 3.0, live ln 7, gen 0 symbolic value matches before assn asm ln 17, prod ln 3.0, live ln 6, gen 0

❌ Before symbolic values checked against after
  Matching:    3
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `local` (decl src ln 4) from
  assn asm ln 14, prod ln 4.0, live ln 7, gen 0
  i32 %p
  (ReadLSB w32 (w32 0x0) p)
and
  assn asm ln 21, prod ln 6.11, live ln 7, gen 0
  %0 = load i32, i32* %p.addr, l6 c11
  (ReadLSB w32 (w32 0x0) p)
Query to parse
array p[4] : w32 -> w8 = symbolic
array p[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) p)
     (ReadLSB w32 (w32 0x0) p)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) p)
     N0)
✅ Before `local` (decl src ln 4) assn asm ln 21, prod ln 6.11, live ln 7, gen 0 symbolic value matches after assn asm ln 14, prod ln 4.0, live ln 7, gen 0

🔔 Before `p` (decl src ln 3) assn asm ln 15, prod ln 3.0, live ln 6, gen 0 coordinates don't match after assn asm ln 12, prod ln 3.0, live ln 7, gen 0
Checking equivalence of `p` (decl src ln 3) from
  assn asm ln 12, prod ln 3.0, live ln 7, gen 0
  i32 %p
  (ReadLSB w32 (w32 0x0) p)
and
  assn asm ln 15, prod ln 3.0, live ln 6, gen 0
  i32 %p
  (ReadLSB w32 (w32 0x0) p)
Query to parse
array p[4] : w32 -> w8 = symbolic
array p[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) p)
     (ReadLSB w32 (w32 0x0) p)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) p)
     N0)
✅ Before `p` (decl src ln 3) assn asm ln 15, prod ln 3.0, live ln 6, gen 0 symbolic value matches after assn asm ln 12, prod ln 3.0, live ln 7, gen 0

🔔 Before `q` (decl src ln 3) assn asm ln 17, prod ln 3.0, live ln 6, gen 0 coordinates don't match after assn asm ln 13, prod ln 3.0, live ln 7, gen 0
Checking equivalence of `q` (decl src ln 3) from
  assn asm ln 13, prod ln 3.0, live ln 7, gen 0
  i32 %q
  (ReadLSB w32 (w32 0x0) q)
and
  assn asm ln 17, prod ln 3.0, live ln 6, gen 0
  i32 %q
  (ReadLSB w32 (w32 0x0) q)
Query to parse
array q[4] : w32 -> w8 = symbolic
array q[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) q)
     (ReadLSB w32 (w32 0x0) q)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) q)
     N0)
✅ Before `q` (decl src ln 3) assn asm ln 17, prod ln 3.0, live ln 6, gen 0 symbolic value matches after assn asm ln 13, prod ln 3.0, live ln 7, gen 0

✅ After symbolic values checked against before
  Matching:    3
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
