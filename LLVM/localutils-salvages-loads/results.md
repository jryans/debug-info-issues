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
+ mkdir -p klee-out-O2
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2/final.bc example-O2.ll
+ mkdir -p klee-out-O2-fixed
+ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2-fixed/final.bc example-O2-fixed.ll
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

✅ Before and after function names match

### Variables

Before variable `bar` (decl src ln 1)
Store to `bar` (decl src ln 1), asm ln 14
  arg 0
  Added assignment asm ln 14, prod ln 1.0, live ln 2, gen 0
Before variable `arg` (decl src ln 1)
Store to `arg` (decl src ln 1), asm ln 33
  %and = and i32 %6, %add, l4 c7, asm ln 32
  Added assignment asm ln 33, prod ln 4.7, live ln 6, gen 0
Store to `arg` (decl src ln 1), asm ln 16
  arg 1
  Added assignment asm ln 16, prod ln 1.0, live ln 2, gen 0
Before variable `more` (decl src ln 1)
Store to `more` (decl src ln 1), asm ln 18
  arg 2
  Added assignment asm ln 18, prod ln 1.0, live ln 2, gen 0
Before variable `redundant` (decl src ln 2)
Store to `redundant` (decl src ln 2), asm ln 23
  %1 = load i32, i32* %0, l2 c19, asm ln 22
  @dbg.declare without read users, removable
  Added assignment asm ln 23, prod ln 2.19, live ln 3, gen 0
Before variable `loaded` (decl src ln 3)
Store to `loaded` (decl src ln 3), asm ln 27
  %3 = load i32, i32* %2, l3 c16, asm ln 26
  Added assignment asm ln 27, prod ln 3.16, live ln 4, gen 0
Computing generations: `bar` (decl src ln 1)
  asm ln 14, prod ln 1.0, live ln 2, gen 0
Computing generations: `arg` (decl src ln 1)
  asm ln 16, prod ln 1.0, live ln 2, gen 0
  asm ln 33, prod ln 4.7, live ln 6, gen 1
Computing generations: `more` (decl src ln 1)
  asm ln 18, prod ln 1.0, live ln 2, gen 0
Computing generations: `redundant` (decl src ln 2)
  asm ln 23, prod ln 2.19, live ln 3, gen 0
Computing generations: `loaded` (decl src ln 3)
  asm ln 27, prod ln 3.16, live ln 4, gen 0

After variable `bar` (decl src ln 1)
@dbg.value mapping for `bar` (decl src ln 1), asm ln 9
Value produced for `bar` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.14, live ln 6, gen 0
After variable `arg` (decl src ln 1)
@dbg.value mapping for `arg` (decl src ln 1), asm ln 10
Value produced for `arg` (decl src ln 1), asm ln 10
  arg 1
  Added assignment asm ln 10, prod ln 1.23, live ln 6, gen 0
After variable `more` (decl src ln 1)
@dbg.value mapping for `more` (decl src ln 1), asm ln 11
Value produced for `more` (decl src ln 1), asm ln 11
  arg 2
  Added assignment asm ln 11, prod ln 1.32, live ln 6, gen 0
After variable `redundant` (decl src ln 2)
@dbg.value mapping for `redundant` (decl src ln 2), asm ln 12
Value produced for `redundant` (decl src ln 2), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 2.7, live ln 6, gen 0
After variable `loaded` (decl src ln 3)
@dbg.value mapping for `loaded` (decl src ln 3), asm ln 13
Value produced for `loaded` (decl src ln 3), asm ln 13
  arg 0
  Added assignment asm ln 13, prod ln 3.7, live ln 6, gen 0
After variable `arg` (decl src ln 1)
@dbg.value mapping for `arg` (decl src ln 1), asm ln 14
Value produced for `arg` (decl src ln 1), asm ln 14
  const i32 undef
  Added assignment asm ln 14, prod ln 1.23, live ln 6, gen 0
Computing generations: `bar` (decl src ln 1)
  asm ln 9, prod ln 1.14, live ln 6, gen 0
Computing generations: `arg` (decl src ln 1)
  asm ln 10, prod ln 1.23, live ln 6, gen 0
  asm ln 14, prod ln 1.23, live ln 6, gen 1
Computing generations: `more` (decl src ln 1)
  asm ln 11, prod ln 1.32, live ln 6, gen 0
Computing generations: `redundant` (decl src ln 2)
  asm ln 12, prod ln 2.7, live ln 6, gen 0
Computing generations: `loaded` (decl src ln 3)
  asm ln 13, prod ln 3.7, live ln 6, gen 0

✅ 5 before variables found, 5 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `bar`
  Concrete pointer resolves to bar.deref, offset 0x0
  Replaced concrete pointer with hash 0x859449D3931F90B3
  i32* %bar
  0x859449D3931F90B3
Collected value for `arg`
  i32 %arg
  (ReadLSB w32 0x0 arg)
Collected value for `more`
  i32 %more
  (ReadLSB w32 0x0 more)
Collected value for `redundant`
  %1 = load i32, i32* %0, l2 c19
  (ReadLSB w32 0x0 bar.deref)
Collected value for `loaded`
  %3 = load i32, i32* %2, l3 c16
  (ReadLSB w32 0x0 bar.deref)
Collected value for `arg`
  %and = and i32 %6, %add, l4 c7
  (And w32 (ReadLSB w32 0x0 arg)
          (Add w32 (ReadLSB w32 0x0 more)
                   (ReadLSB w32 0x0 bar.deref)))

#### After values

Collected value for `bar`
  Concrete pointer resolves to bar.deref, offset 0x0
  Replaced concrete pointer with hash 0x859449D3931F90B3
  i32* %bar
  0x859449D3931F90B3
Collected value for `arg`
  i32 %arg
  (ReadLSB w32 0x0 arg)
Collected value for `more`
  i32 %more
  (ReadLSB w32 0x0 more)
Collected value for `redundant`
  Concrete pointer resolves to bar.deref, offset 0x0
  Replaced concrete pointer with hash 0x859449D3931F90B3
  i32* %bar
  0x859449D3931F90B3
Collected value for `loaded`
  Concrete pointer resolves to bar.deref, offset 0x0
  Replaced concrete pointer with hash 0x859449D3931F90B3
  i32* %bar
  0x859449D3931F90B3
Collected value for `arg`
  i32 undef
  0x0

### Assignments

Filtering redundant before assignments: `arg` (decl src ln 1)

Filtering redundant after assignments: `arg` (decl src ln 1)

Computing generations: `bar` (decl src ln 1)
  asm ln 14, prod ln 1.0, live ln 2, gen 0
Computing generations: `arg` (decl src ln 1)
  asm ln 16, prod ln 1.0, live ln 2, gen 0
  asm ln 33, prod ln 4.7, live ln 6, gen 1
Computing generations: `more` (decl src ln 1)
  asm ln 18, prod ln 1.0, live ln 2, gen 0
Computing generations: `redundant` (decl src ln 2)
  asm ln 23, prod ln 2.19, live ln 3, gen 0
Computing generations: `loaded` (decl src ln 3)
  asm ln 27, prod ln 3.16, live ln 4, gen 0
Building live ranges: `bar` (decl src ln 1)
  asm ln 14, prod ln 1.0, live ln 2, gen 0
    live ln 2, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `arg` (decl src ln 1)
  asm ln 16, prod ln 1.0, live ln 2, gen 0
    live ln 2, gen 0 →
    live ln 6, gen 1
  asm ln 33, prod ln 4.7, live ln 6, gen 1
    live ln 6, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `more` (decl src ln 1)
  asm ln 18, prod ln 1.0, live ln 2, gen 0
    live ln 2, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `redundant` (decl src ln 2)
  asm ln 23, prod ln 2.19, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `loaded` (decl src ln 3)
  asm ln 27, prod ln 3.16, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln ∞, gen ∞

Computing generations: `bar` (decl src ln 1)
  asm ln 9, prod ln 1.14, live ln 6, gen 0
Computing generations: `arg` (decl src ln 1)
  asm ln 10, prod ln 1.23, live ln 6, gen 0
  asm ln 14, prod ln 1.23, live ln 6, gen 1
Computing generations: `more` (decl src ln 1)
  asm ln 11, prod ln 1.32, live ln 6, gen 0
Computing generations: `redundant` (decl src ln 2)
  asm ln 12, prod ln 2.7, live ln 6, gen 0
Computing generations: `loaded` (decl src ln 3)
  asm ln 13, prod ln 3.7, live ln 6, gen 0
Building live ranges: `bar` (decl src ln 1)
  asm ln 9, prod ln 1.14, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `arg` (decl src ln 1)
  asm ln 10, prod ln 1.23, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln 6, gen 1
Building live ranges: `more` (decl src ln 1)
  asm ln 11, prod ln 1.32, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `redundant` (decl src ln 2)
  asm ln 12, prod ln 2.7, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `loaded` (decl src ln 3)
  asm ln 13, prod ln 3.7, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞

❌ Live ranges for `bar` (decl src ln 1) not fully covered: live ln 2, gen 0 < live ln 6, gen 0
🔔 After live range for `arg` (decl src ln 1) terminates early
❌ Live ranges for `arg` (decl src ln 1) not fully covered: live ln 2, gen 0 < live ln 6, gen 0
❌ Live ranges for `more` (decl src ln 1) not fully covered: live ln 2, gen 0 < live ln 6, gen 0
❌ Live ranges for `redundant` (decl src ln 2) not fully covered: live ln 3, gen 0 < live ln 6, gen 0
❌ Live ranges for `loaded` (decl src ln 3) not fully covered: live ln 4, gen 0 < live ln 6, gen 0
❌ Before live range coverage
  Covered:   0
  Uncovered: 5
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

🔔 After `arg` (decl src ln 1) assn asm ln 10, prod ln 1.23, live ln 6, gen 0 coordinates don't match before assn asm ln 16, prod ln 1.0, live ln 2, gen 0
Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 16, prod ln 1.0, live ln 2, gen 0
  i32 %arg
  (ReadLSB w32 0x0 arg)
and
  assn asm ln 10, prod ln 1.23, live ln 6, gen 0
  i32 %arg
  (ReadLSB w32 0x0 arg)
Query to parse
array arg[4] : w32 -> w8 = symbolic
array arg[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 arg)
     (ReadLSB w32 0x0 arg)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 arg)
     N0)

❌ After live range for `arg` (decl src ln 1) at asm ln 33, prod ln 4.7, live ln 6, gen 1 not found

🔔 After `bar` (decl src ln 1) assn asm ln 9, prod ln 1.14, live ln 6, gen 0 coordinates don't match before assn asm ln 14, prod ln 1.0, live ln 2, gen 0
Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 14, prod ln 1.0, live ln 2, gen 0
  i32* %bar
  0x859449D3931F90B3
and
  assn asm ln 9, prod ln 1.14, live ln 6, gen 0
  i32* %bar
  0x859449D3931F90B3

🔔 After `loaded` (decl src ln 3) assn asm ln 13, prod ln 3.7, live ln 6, gen 0 coordinates don't match before assn asm ln 27, prod ln 3.16, live ln 4, gen 0
Pushed initial value onto stack: 0x859449D3931F90B3
Current opcode: 6
Unexpected expression opcode
UNREACHABLE executed at /Users/jryans/Projects/klee/tools/check-debug-info/Variable.cpp:347!
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x00000001066a1577 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 39
1  check-debug-info         0x00000001066a03b8 llvm::sys::RunSignalHandlers() + 248
2  check-debug-info         0x00000001066a1bc0 SignalHandler(int) + 288
3  libsystem_platform.dylib 0x00007ff819786c1d _sigtramp + 29
4  libsystem_platform.dylib 0x00007ff7bb32fe10 _sigtramp + 18446744072127943184
5  libsystem_c.dylib        0x00007ff8196a5ca5 abort + 123
6  check-debug-info         0x00000001065ed5a3 llvm::llvm_unreachable_internal(char const*, char const*, unsigned int) + 467
7  check-debug-info         0x0000000104c1769e Assignment::evaluate() + 7198
8  check-debug-info         0x0000000104bd8d34 checkValues(llvm::StringRef, llvm::SmallVector<std::__1::pair<Variable, Assignment*>, 1u> const&, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > > const&, bool, bool, llvm::StringRef, std::__1::map<Variable, llvm::IntervalMap<Location, Assignment*, 8u, llvm::IntervalMapHalfOpenInfo<Location> >, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::IntervalMap<Location, Assignment*, 8u, llvm::IntervalMapHalfOpenInfo<Location> > > > >&, bool, bool) + 2164
9  check-debug-info         0x0000000104bdb5de checkFunction(llvm::LLVMContext&, llvm::StringRef, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&) + 6814
10 check-debug-info         0x0000000104bdc91e main + 1742
11 dyld                     0x00007ff819429310 start + 2432
./check-issue.sh: line 6: 15794 Abort trap: 6           ${CHECK} ${O0_BC} ${O2_BC} ${CHECK_OPTS}
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

✅ Before and after function names match

### Variables

Before variable `bar` (decl src ln 1)
Store to `bar` (decl src ln 1), asm ln 14
  arg 0
  Added assignment asm ln 14, prod ln 1.0, live ln 2, gen 0
Before variable `arg` (decl src ln 1)
Store to `arg` (decl src ln 1), asm ln 33
  %and = and i32 %6, %add, l4 c7, asm ln 32
  Added assignment asm ln 33, prod ln 4.7, live ln 6, gen 0
Store to `arg` (decl src ln 1), asm ln 16
  arg 1
  Added assignment asm ln 16, prod ln 1.0, live ln 2, gen 0
Before variable `more` (decl src ln 1)
Store to `more` (decl src ln 1), asm ln 18
  arg 2
  Added assignment asm ln 18, prod ln 1.0, live ln 2, gen 0
Before variable `redundant` (decl src ln 2)
Store to `redundant` (decl src ln 2), asm ln 23
  %1 = load i32, i32* %0, l2 c19, asm ln 22
  @dbg.declare without read users, removable
  Added assignment asm ln 23, prod ln 2.19, live ln 3, gen 0
Before variable `loaded` (decl src ln 3)
Store to `loaded` (decl src ln 3), asm ln 27
  %3 = load i32, i32* %2, l3 c16, asm ln 26
  Added assignment asm ln 27, prod ln 3.16, live ln 4, gen 0
Computing generations: `bar` (decl src ln 1)
  asm ln 14, prod ln 1.0, live ln 2, gen 0
Computing generations: `arg` (decl src ln 1)
  asm ln 16, prod ln 1.0, live ln 2, gen 0
  asm ln 33, prod ln 4.7, live ln 6, gen 1
Computing generations: `more` (decl src ln 1)
  asm ln 18, prod ln 1.0, live ln 2, gen 0
Computing generations: `redundant` (decl src ln 2)
  asm ln 23, prod ln 2.19, live ln 3, gen 0
Computing generations: `loaded` (decl src ln 3)
  asm ln 27, prod ln 3.16, live ln 4, gen 0

After variable `bar` (decl src ln 1)
@dbg.value mapping for `bar` (decl src ln 1), asm ln 9
Value produced for `bar` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.0, live ln 6, gen 0
After variable `arg` (decl src ln 1)
@dbg.value mapping for `arg` (decl src ln 1), asm ln 10
Value produced for `arg` (decl src ln 1), asm ln 10
  arg 1
  Added assignment asm ln 10, prod ln 1.0, live ln 6, gen 0
After variable `more` (decl src ln 1)
@dbg.value mapping for `more` (decl src ln 1), asm ln 11
Value produced for `more` (decl src ln 1), asm ln 11
  arg 2
  Added assignment asm ln 11, prod ln 1.0, live ln 6, gen 0
After variable `redundant` (decl src ln 2)
After variable intrinsic with undef input, asm ln 12, ignoring undefined variable
  @dbg.value(i32 undef, !17)
After variable `arg` (decl src ln 1)
@dbg.value mapping for `arg` (decl src ln 1), asm ln 13
Value produced for `arg` (decl src ln 1), asm ln 13
  const i32 undef
🔔 Value produced for `arg` (decl src ln 1): missing produced ln, using decl ln
  Added assignment asm ln 13, prod ln 1.0, live ln 6, gen 0
Computing generations: `bar` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 6, gen 0
Computing generations: `arg` (decl src ln 1)
  asm ln 10, prod ln 1.0, live ln 6, gen 0
  asm ln 13, prod ln 1.0, live ln 6, gen 1
Computing generations: `more` (decl src ln 1)
  asm ln 11, prod ln 1.0, live ln 6, gen 0

🔔 5 before variables found, 4 after variables found, 1 mismatched

### Symbolic values

#### Before values

Collected value for `bar`
  Concrete pointer resolves to bar.deref, offset 0x0
  Replaced concrete pointer with hash 0x859449D3931F90B3
  i32* %bar
  0x859449D3931F90B3
Collected value for `arg`
  i32 %arg
  (ReadLSB w32 0x0 arg)
Collected value for `more`
  i32 %more
  (ReadLSB w32 0x0 more)
Collected value for `redundant`
  %1 = load i32, i32* %0, l2 c19
  (ReadLSB w32 0x0 bar.deref)
Collected value for `loaded`
  %3 = load i32, i32* %2, l3 c16
  (ReadLSB w32 0x0 bar.deref)
Collected value for `arg`
  %and = and i32 %6, %add, l4 c7
  (And w32 (ReadLSB w32 0x0 arg)
          (Add w32 (ReadLSB w32 0x0 more)
                   (ReadLSB w32 0x0 bar.deref)))

#### After values

Collected value for `bar`
  Concrete pointer resolves to bar.deref, offset 0x0
  Replaced concrete pointer with hash 0x859449D3931F90B3
  i32* %bar
  0x859449D3931F90B3
Collected value for `arg`
  i32 %arg
  (ReadLSB w32 0x0 arg)
Collected value for `more`
  i32 %more
  (ReadLSB w32 0x0 more)
Collected value for `arg`
  i32 undef
  0x0

### Assignments

Filtering redundant before assignments: `arg` (decl src ln 1)

Filtering redundant after assignments: `arg` (decl src ln 1)

Computing generations: `bar` (decl src ln 1)
  asm ln 14, prod ln 1.0, live ln 2, gen 0
Computing generations: `arg` (decl src ln 1)
  asm ln 16, prod ln 1.0, live ln 2, gen 0
  asm ln 33, prod ln 4.7, live ln 6, gen 1
Computing generations: `more` (decl src ln 1)
  asm ln 18, prod ln 1.0, live ln 2, gen 0
Computing generations: `redundant` (decl src ln 2)
  asm ln 23, prod ln 2.19, live ln 3, gen 0
Computing generations: `loaded` (decl src ln 3)
  asm ln 27, prod ln 3.16, live ln 4, gen 0
Building live ranges: `bar` (decl src ln 1)
  asm ln 14, prod ln 1.0, live ln 2, gen 0
    live ln 2, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `arg` (decl src ln 1)
  asm ln 16, prod ln 1.0, live ln 2, gen 0
    live ln 2, gen 0 →
    live ln 6, gen 1
  asm ln 33, prod ln 4.7, live ln 6, gen 1
    live ln 6, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `more` (decl src ln 1)
  asm ln 18, prod ln 1.0, live ln 2, gen 0
    live ln 2, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `redundant` (decl src ln 2)
  asm ln 23, prod ln 2.19, live ln 3, gen 0
    live ln 3, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `loaded` (decl src ln 3)
  asm ln 27, prod ln 3.16, live ln 4, gen 0
    live ln 4, gen 0 →
    live ln ∞, gen ∞

Computing generations: `bar` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 6, gen 0
Computing generations: `arg` (decl src ln 1)
  asm ln 10, prod ln 1.0, live ln 6, gen 0
  asm ln 13, prod ln 1.0, live ln 6, gen 1
Computing generations: `more` (decl src ln 1)
  asm ln 11, prod ln 1.0, live ln 6, gen 0
Building live ranges: `bar` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `arg` (decl src ln 1)
  asm ln 10, prod ln 1.0, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln 6, gen 1
Building live ranges: `more` (decl src ln 1)
  asm ln 11, prod ln 1.0, live ln 6, gen 0
    live ln 6, gen 0 →
    live ln ∞, gen ∞

❌ Live ranges for `bar` (decl src ln 1) not fully covered: live ln 2, gen 0 < live ln 6, gen 0
🔔 After live range for `arg` (decl src ln 1) terminates early
❌ Live ranges for `arg` (decl src ln 1) not fully covered: live ln 2, gen 0 < live ln 6, gen 0
❌ Live ranges for `more` (decl src ln 1) not fully covered: live ln 2, gen 0 < live ln 6, gen 0
🔔 After live ranges for (removable) `redundant` (decl src ln 2) not found
❌ After live ranges for `loaded` (decl src ln 3) not found
❌ Before live range coverage
  Covered:   0
  Uncovered: 4
  Undefined: 0
  Unused:    0
  Removable: 1

#### Check before against after

🔔 After `arg` (decl src ln 1) assn asm ln 10, prod ln 1.0, live ln 6, gen 0 coordinates don't match before assn asm ln 16, prod ln 1.0, live ln 2, gen 0
Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 16, prod ln 1.0, live ln 2, gen 0
  i32 %arg
  (ReadLSB w32 0x0 arg)
and
  assn asm ln 10, prod ln 1.0, live ln 6, gen 0
  i32 %arg
  (ReadLSB w32 0x0 arg)
Query to parse
array arg[4] : w32 -> w8 = symbolic
array arg[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 arg)
     (ReadLSB w32 0x0 arg)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 arg)
     N0)

❌ After live range for `arg` (decl src ln 1) at asm ln 33, prod ln 4.7, live ln 6, gen 1 not found

🔔 After `bar` (decl src ln 1) assn asm ln 9, prod ln 1.0, live ln 6, gen 0 coordinates don't match before assn asm ln 14, prod ln 1.0, live ln 2, gen 0
Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 14, prod ln 1.0, live ln 2, gen 0
  i32* %bar
  0x859449D3931F90B3
and
  assn asm ln 9, prod ln 1.0, live ln 6, gen 0
  i32* %bar
  0x859449D3931F90B3

❌ After live range for `loaded` (decl src ln 3) not found

🔔 After `more` (decl src ln 1) assn asm ln 11, prod ln 1.0, live ln 6, gen 0 coordinates don't match before assn asm ln 18, prod ln 1.0, live ln 2, gen 0
Checking equivalence of `more` (decl src ln 1) from
  assn asm ln 18, prod ln 1.0, live ln 2, gen 0
  i32 %more
  (ReadLSB w32 0x0 more)
and
  assn asm ln 11, prod ln 1.0, live ln 6, gen 0
  i32 %more
  (ReadLSB w32 0x0 more)
Query to parse
array more[4] : w32 -> w8 = symbolic
array more[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 more)
     (ReadLSB w32 0x0 more)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 more)
     N0)

🔔 After live ranges for (removable) `redundant` (decl src ln 2) not found

❌ Before symbolic values checked against after
  Matching:    3
  Mismatched:  2
  Unused:      0
  Unreachable: 0
  Removable:   1

#### Check after against before

🔔 Before `arg` (decl src ln 1) assn asm ln 16, prod ln 1.0, live ln 2, gen 0 coordinates don't match after assn asm ln 10, prod ln 1.0, live ln 6, gen 0
Checking equivalence of `arg` (decl src ln 1) from
  assn asm ln 10, prod ln 1.0, live ln 6, gen 0
  i32 %arg
  (ReadLSB w32 0x0 arg)
and
  assn asm ln 16, prod ln 1.0, live ln 2, gen 0
  i32 %arg
  (ReadLSB w32 0x0 arg)
Query to parse
array arg[4] : w32 -> w8 = symbolic
array arg[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 arg)
     (ReadLSB w32 0x0 arg)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 arg)
     N0)

Variable intrinsic with undef input
❌ After `arg` (decl src ln 1) assn asm ln 13, prod ln 1.0, live ln 6, gen 1 has no symbolic value from i32 undef

🔔 Before `bar` (decl src ln 1) assn asm ln 14, prod ln 1.0, live ln 2, gen 0 coordinates don't match after assn asm ln 9, prod ln 1.0, live ln 6, gen 0
Checking equivalence of `bar` (decl src ln 1) from
  assn asm ln 9, prod ln 1.0, live ln 6, gen 0
  i32* %bar
  0x859449D3931F90B3
and
  assn asm ln 14, prod ln 1.0, live ln 2, gen 0
  i32* %bar
  0x859449D3931F90B3

🔔 Before `more` (decl src ln 1) assn asm ln 18, prod ln 1.0, live ln 2, gen 0 coordinates don't match after assn asm ln 11, prod ln 1.0, live ln 6, gen 0
Checking equivalence of `more` (decl src ln 1) from
  assn asm ln 11, prod ln 1.0, live ln 6, gen 0
  i32 %more
  (ReadLSB w32 0x0 more)
and
  assn asm ln 18, prod ln 1.0, live ln 2, gen 0
  i32 %more
  (ReadLSB w32 0x0 more)
Query to parse
array more[4] : w32 -> w8 = symbolic
array more[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 more)
     (ReadLSB w32 0x0 more)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 more)
     N0)

❌ After symbolic values checked against before
  Matching:    3
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed