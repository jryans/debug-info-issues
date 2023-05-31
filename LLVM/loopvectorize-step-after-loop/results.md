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

Before variable `argc` (decl src ln 6)
Store to `argc` (decl src ln 6), asm ln 16
  arg 0
  Added assignment asm ln 16, prod ln 6.0, live ln 7, gen 0
Before variable `init` (decl src ln 6)
Store to `init` (decl src ln 6), asm ln 18
  arg 1
  @dbg.declare without read users, removable
  Added assignment asm ln 18, prod ln 6.0, live ln 7, gen 0
Before variable `bar` (decl src ln 6)
Store to `bar` (decl src ln 6), asm ln 20
  arg 2
  Added assignment asm ln 20, prod ln 6.0, live ln 7, gen 0
Before variable `tmp` (decl src ln 10)
Store to `tmp` (decl src ln 10), asm ln 56
  %add2 = add nsw i32 %8, %7, l14 c9, asm ln 55
🔔 Store to `tmp` (decl src ln 10): live ln too early, using produced ln + 1
  Added assignment asm ln 56, prod ln 14.9, live ln 15, gen 0
Store to `tmp` (decl src ln 10), asm ln 34
  %1 = load i32, i32* %argc.addr, l10 c13, asm ln 33
  Added assignment asm ln 34, prod ln 10.13, live ln 12, gen 0
Before variable `bees` (decl src ln 11)
Store to `bees` (decl src ln 11), asm ln 52
  %6 = load i32, i32* %arrayidx, l13 c12, asm ln 51
  Added assignment asm ln 52, prod ln 13.12, live ln 14, gen 0
Before variable `j` (decl src ln 12)
Store to `j` (decl src ln 12), asm ln 59
  %inc = add nsw i32 %9, 1, l12 c30, asm ln 58
🔔 Store to `j` (decl src ln 12): live ln too early, using produced ln + 1
  Added assignment asm ln 59, prod ln 12.30, live ln 13, gen 0
Store to `j` (decl src ln 12), asm ln 37
  const i32 0
🔔 Store to `j` (decl src ln 12): live ln too early, using produced ln + 1
  Added assignment asm ln 37, prod ln 12.12, live ln 13, gen 0
Computing generations: `argc` (decl src ln 6)
  asm ln 16, prod ln 6.0, live ln 7, gen 0
Computing generations: `init` (decl src ln 6)
  asm ln 18, prod ln 6.0, live ln 7, gen 0
Computing generations: `bar` (decl src ln 6)
  asm ln 20, prod ln 6.0, live ln 7, gen 0
Computing generations: `tmp` (decl src ln 10)
  asm ln 34, prod ln 10.13, live ln 12, gen 0
  asm ln 56, prod ln 14.9, live ln 15, gen 1
Computing generations: `bees` (decl src ln 11)
  asm ln 52, prod ln 13.12, live ln 14, gen 0
Computing generations: `j` (decl src ln 12)
  asm ln 37, prod ln 12.12, live ln 13, gen 0
  asm ln 59, prod ln 12.30, live ln 13, gen 1

After variable `argc` (decl src ln 6)
@dbg.value mapping for `argc` (decl src ln 6), asm ln 9
Value produced for `argc` (decl src ln 6), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 6.13, live ln 7, gen 0
After variable `init` (decl src ln 6)
@dbg.value mapping for `init` (decl src ln 6), asm ln 10
Value produced for `init` (decl src ln 6), asm ln 10
  arg 1
  Added assignment asm ln 10, prod ln 6.23, live ln 7, gen 0
After variable `bar` (decl src ln 6)
@dbg.value mapping for `bar` (decl src ln 6), asm ln 11
Value produced for `bar` (decl src ln 6), asm ln 11
  arg 2
  Added assignment asm ln 11, prod ln 6.34, live ln 7, gen 0
After variable `j` (decl src ln 12)
@dbg.value mapping for `j` (decl src ln 12), asm ln 16
Value produced for `j` (decl src ln 12), asm ln 16
  const i32 0
🔔 Value produced for `j` (decl src ln 12): live ln too early, using produced ln + 1
  Added assignment asm ln 16, prod ln 12.12, live ln 13, gen 0
After variable `tmp` (decl src ln 10)
@dbg.value mapping for `tmp` (decl src ln 10), asm ln 17
Value produced for `tmp` (decl src ln 10), asm ln 17
  arg 0
  Added assignment asm ln 17, prod ln 10.7, live ln 12, gen 0
After variable `bees` (decl src ln 11)
@dbg.value mapping for `bees` (decl src ln 11), asm ln 236
Value produced for `bees` (decl src ln 11), asm ln 236
  %24 = load i32, i32* %arrayidx, !tbaa !35, l13 c12, asm ln 235
  Added assignment asm ln 236, prod ln 13.12, live ln 14, gen 0
After variable `j` (decl src ln 12)
@dbg.value mapping for `j` (decl src ln 12), asm ln 239
Value produced for `j` (decl src ln 12), asm ln 239
  const i32 undef
🔔 Value produced for `j` (decl src ln 12): live ln too early, using produced ln + 1
  Added assignment asm ln 239, prod ln 12.12, live ln 13, gen 0
After variable `tmp` (decl src ln 10)
@dbg.value mapping for `tmp` (decl src ln 10), asm ln 240
Value produced for `tmp` (decl src ln 10), asm ln 240
  %add2 = add nsw i32 %24, %tmp.012, l14 c9, asm ln 237
🔔 Value produced for `tmp` (decl src ln 10): live ln too early, using produced ln + 1
  Added assignment asm ln 240, prod ln 14.9, live ln 15, gen 0
After variable `j` (decl src ln 12)
@dbg.value mapping for `j` (decl src ln 12), asm ln 232
Value produced for `j` (decl src ln 12), asm ln 232
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader20 ], asm ln 230
  Added assignment asm ln 232, prod ln 12.30, live ln 13, gen 0
After variable `tmp` (decl src ln 10)
@dbg.value mapping for `tmp` (decl src ln 10), asm ln 233
Value produced for `tmp` (decl src ln 10), asm ln 233
  %tmp.012 = phi i32 [ %add2, %for.body ], [ %tmp.012.ph, %for.body.preheader20 ], asm ln 231
🔔 Value produced for `tmp` (decl src ln 10): live ln too early, using produced ln + 1
  Added assignment asm ln 233, prod ln 14.9, live ln 15, gen 0
Computing generations: `argc` (decl src ln 6)
  asm ln 9, prod ln 6.13, live ln 7, gen 0
Computing generations: `init` (decl src ln 6)
  asm ln 10, prod ln 6.23, live ln 7, gen 0
Computing generations: `bar` (decl src ln 6)
  asm ln 11, prod ln 6.34, live ln 7, gen 0
Computing generations: `j` (decl src ln 12)
  asm ln 16, prod ln 12.12, live ln 13, gen 0
  asm ln 232, prod ln 12.30, live ln 13, gen 1
  asm ln 239, prod ln 12.12, live ln 13, gen 2
Computing generations: `tmp` (decl src ln 10)
  asm ln 17, prod ln 10.7, live ln 12, gen 0
  asm ln 233, prod ln 14.9, live ln 15, gen 1
  asm ln 240, prod ln 14.9, live ln 15, gen 2
Computing generations: `bees` (decl src ln 11)
  asm ln 236, prod ln 13.12, live ln 14, gen 0

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `argc`
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Collected value for `init`
  i32 %init
  (ReadLSB w32 (w32 0x0) init)
Collected value for `bar`
  Concrete pointer resolves to bar.deref, offset (w64 0x0)
  Replaced concrete pointer with hash (w64 0x859449D3931F90B3)
  i32* %bar
  (w64 0x859449D3931F90B3)
Collected value for `tmp`
  %1 = load i32, i32* %argc.addr, l10 c13
  (ReadLSB w32 (w32 0x0) argc)
Collected value for `j`
  i32 0
  (w32 0x0)
Collected value for `bees`
  %6 = load i32, i32* %arrayidx, l13 c12
  (ReadLSB w32 (w32 0x0) bar.deref)
Collected value for `tmp`
  %add2 = add nsw i32 %8, %7, l14 c9
  (Add w32 (ReadLSB w32 (w32 0x0) argc)
          (ReadLSB w32 (w32 0x0) bar.deref))
Collected value for `j`
  %inc = add nsw i32 %9, 1, l12 c30
  (w32 0x1)

#### After values

Collected value for `argc`
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Collected value for `init`
  i32 %init
  (ReadLSB w32 (w32 0x0) init)
Collected value for `bar`
  Concrete pointer resolves to bar.deref, offset (w64 0x0)
  Replaced concrete pointer with hash (w64 0x859449D3931F90B3)
  i32* %bar
  (w64 0x859449D3931F90B3)
Collected value for `j`
  i32 0
  (w32 0x0)
Collected value for `tmp`
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Collected value for `j`
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader20 ]
  Block: 1
  (w64 0x0)
Collected value for `tmp`
  %tmp.012 = phi i32 [ %add2, %for.body ], [ %tmp.012.ph, %for.body.preheader20 ]
  Block: 1
  (ReadLSB w32 (w32 0x0) argc)
Collected value for `bees`
  %24 = load i32, i32* %arrayidx, !tbaa !35, l13 c12
  (ReadLSB w32 (w32 0x0) bar.deref)
Collected value for `j`
  i32 undef
  (w32 0x0)
[0;1;31mKLEE: ERROR: example.c:13: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `tmp`
  %add2 = add nsw i32 %24, %tmp.012, l14 c9
  (Add w32 (ReadLSB w32 (w32 0x0) bar.deref)
          (ReadLSB w32 (w32 0x0) argc))
[0;1;31mKLEE: ERROR: example.c:13: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
❌ Unable to execute all after program states

### Assignments

Filtering redundant before assignments: `tmp` (decl src ln 10)

Filtering redundant before assignments: `j` (decl src ln 12)

Filtering redundant after assignments: `j` (decl src ln 12)

Checking equivalence of `j` (decl src ln 12) from
  assn asm ln 232, prod ln 12.30, live ln 13, gen 1
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader20 ]
  (w32 0x0)
and
  assn asm ln 16, prod ln 12.12, live ln 13, gen 0
  i32 0
  (w32 0x0)
Removing: asm ln 232, prod ln 12.30, live ln 13, gen 1

Filtering redundant after assignments: `tmp` (decl src ln 10)

Checking equivalence of `tmp` (decl src ln 10) from
  assn asm ln 233, prod ln 14.9, live ln 15, gen 1
  %tmp.012 = phi i32 [ %add2, %for.body ], [ %tmp.012.ph, %for.body.preheader20 ]
  (ReadLSB w32 (w32 0x0) argc)
and
  assn asm ln 17, prod ln 10.7, live ln 12, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Query to parse
array argc[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) argc)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) argc)
     N0)
Removing: asm ln 233, prod ln 14.9, live ln 15, gen 1

Computing generations: `argc` (decl src ln 6)
  asm ln 16, prod ln 6.0, live ln 7, gen 0
Computing generations: `init` (decl src ln 6)
  asm ln 18, prod ln 6.0, live ln 7, gen 0
Computing generations: `bar` (decl src ln 6)
  asm ln 20, prod ln 6.0, live ln 7, gen 0
Computing generations: `tmp` (decl src ln 10)
  asm ln 34, prod ln 10.13, live ln 12, gen 0
  asm ln 56, prod ln 14.9, live ln 15, gen 1
Computing generations: `bees` (decl src ln 11)
  asm ln 52, prod ln 13.12, live ln 14, gen 0
Computing generations: `j` (decl src ln 12)
  asm ln 37, prod ln 12.12, live ln 13, gen 0
  asm ln 59, prod ln 12.30, live ln 13, gen 1
Building live ranges: `argc` (decl src ln 6)
  asm ln 16, prod ln 6.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `init` (decl src ln 6)
  asm ln 18, prod ln 6.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `bar` (decl src ln 6)
  asm ln 20, prod ln 6.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `tmp` (decl src ln 10)
  asm ln 34, prod ln 10.13, live ln 12, gen 0
    live ln 12, gen 0 →
    live ln 15, gen 1
  asm ln 56, prod ln 14.9, live ln 15, gen 1
    live ln 15, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `bees` (decl src ln 11)
  asm ln 52, prod ln 13.12, live ln 14, gen 0
    live ln 14, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `j` (decl src ln 12)
  asm ln 37, prod ln 12.12, live ln 13, gen 0
    live ln 13, gen 0 →
    live ln 13, gen 1
  asm ln 59, prod ln 12.30, live ln 13, gen 1
    live ln 13, gen 1 →
    live ln ∞, gen ∞

Computing generations: `argc` (decl src ln 6)
  asm ln 9, prod ln 6.13, live ln 7, gen 0
Computing generations: `init` (decl src ln 6)
  asm ln 10, prod ln 6.23, live ln 7, gen 0
Computing generations: `bar` (decl src ln 6)
  asm ln 11, prod ln 6.34, live ln 7, gen 0
Computing generations: `j` (decl src ln 12)
  asm ln 16, prod ln 12.12, live ln 13, gen 0
  asm ln 239, prod ln 12.12, live ln 13, gen 1
Computing generations: `tmp` (decl src ln 10)
  asm ln 17, prod ln 10.7, live ln 12, gen 0
  asm ln 240, prod ln 14.9, live ln 15, gen 1
Computing generations: `bees` (decl src ln 11)
  asm ln 236, prod ln 13.12, live ln 14, gen 0
Building live ranges: `argc` (decl src ln 6)
  asm ln 9, prod ln 6.13, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `init` (decl src ln 6)
  asm ln 10, prod ln 6.23, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `bar` (decl src ln 6)
  asm ln 11, prod ln 6.34, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `j` (decl src ln 12)
  asm ln 16, prod ln 12.12, live ln 13, gen 0
    live ln 13, gen 0 →
    live ln 13, gen 1
Building live ranges: `tmp` (decl src ln 10)
  asm ln 17, prod ln 10.7, live ln 12, gen 0
    live ln 12, gen 0 →
    live ln 15, gen 1
  asm ln 240, prod ln 14.9, live ln 15, gen 1
    live ln 15, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `bees` (decl src ln 11)
  asm ln 236, prod ln 13.12, live ln 14, gen 0
    live ln 14, gen 0 →
    live ln ∞, gen ∞

🔔 After live range for `j` (decl src ln 12) terminates early
✅ Before live range coverage
  Covered:   6
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `argc` (decl src ln 6) from
  assn asm ln 16, prod ln 6.0, live ln 7, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
and
  assn asm ln 9, prod ln 6.13, live ln 7, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Query to parse
array argc[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) argc)
     (ReadLSB w32 (w32 0x0) argc)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) argc)
     N0)

Checking equivalence of `bar` (decl src ln 6) from
  assn asm ln 20, prod ln 6.0, live ln 7, gen 0
  i32* %bar
  (w64 0x859449D3931F90B3)
and
  assn asm ln 11, prod ln 6.34, live ln 7, gen 0
  i32* %bar
  (w64 0x859449D3931F90B3)

Checking equivalence of `bees` (decl src ln 11) from
  assn asm ln 52, prod ln 13.12, live ln 14, gen 0
  %6 = load i32, i32* %arrayidx, l13 c12
  (ReadLSB w32 (w32 0x0) bar.deref)
and
  assn asm ln 236, prod ln 13.12, live ln 14, gen 0
  %24 = load i32, i32* %arrayidx, !tbaa !35, l13 c12
  (ReadLSB w32 (w32 0x0) bar.deref)
Query to parse
array bar.deref[4] : w32 -> w8 = symbolic
array bar.deref[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) bar.deref)
     (ReadLSB w32 (w32 0x0) bar.deref)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) bar.deref)
     N0)

Checking equivalence of `init` (decl src ln 6) from
  assn asm ln 18, prod ln 6.0, live ln 7, gen 0
  i32 %init
  (ReadLSB w32 (w32 0x0) init)
and
  assn asm ln 10, prod ln 6.23, live ln 7, gen 0
  i32 %init
  (ReadLSB w32 (w32 0x0) init)
Query to parse
array init[4] : w32 -> w8 = symbolic
array init[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) init)
     (ReadLSB w32 (w32 0x0) init)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) init)
     N0)

Checking equivalence of `j` (decl src ln 12) from
  assn asm ln 37, prod ln 12.12, live ln 13, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 16, prod ln 12.12, live ln 13, gen 0
  i32 0
  (w32 0x0)

❌ After live range for `j` (decl src ln 12) at asm ln 59, prod ln 12.30, live ln 13, gen 1 not found

Checking equivalence of `tmp` (decl src ln 10) from
  assn asm ln 34, prod ln 10.13, live ln 12, gen 0
  %1 = load i32, i32* %argc.addr, l10 c13
  (ReadLSB w32 (w32 0x0) argc)
and
  assn asm ln 17, prod ln 10.7, live ln 12, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Query to parse
array argc[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) argc)
     (ReadLSB w32 (w32 0x0) argc)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) argc)
     N0)

Checking equivalence of `tmp` (decl src ln 10) from
  assn asm ln 56, prod ln 14.9, live ln 15, gen 1
  %add2 = add nsw i32 %8, %7, l14 c9
  (Add w32 (ReadLSB w32 (w32 0x0) argc)
          (ReadLSB w32 (w32 0x0) bar.deref))
and
  assn asm ln 240, prod ln 14.9, live ln 15, gen 1
  %add2 = add nsw i32 %24, %tmp.012, l14 c9
  (Add w32 (ReadLSB w32 (w32 0x0) bar.deref)
          (ReadLSB w32 (w32 0x0) argc))
Query to parse
array argc[4] : w32 -> w8 = symbolic
array bar.deref[4] : w32 -> w8 = symbolic
array bar.deref[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (ReadLSB w32 (w32 0x0) argc)
              (ReadLSB w32 (w32 0x0) bar.deref))
     (Add w32 (ReadLSB w32 (w32 0x0) bar.deref)
              (ReadLSB w32 (w32 0x0) argc))))
Parsed query
(Eq (Add w32 N0:(ReadLSB w32 (w32 0x0) argc)
              N1:(ReadLSB w32 (w32 0x0) bar.deref))
     (Add w32 N1 N0))

❌ Before symbolic values checked against after
  Matching:    7
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `argc` (decl src ln 6) from
  assn asm ln 9, prod ln 6.13, live ln 7, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
and
  assn asm ln 16, prod ln 6.0, live ln 7, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Query to parse
array argc[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) argc)
     (ReadLSB w32 (w32 0x0) argc)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) argc)
     N0)

Checking equivalence of `bar` (decl src ln 6) from
  assn asm ln 11, prod ln 6.34, live ln 7, gen 0
  i32* %bar
  (w64 0x859449D3931F90B3)
and
  assn asm ln 20, prod ln 6.0, live ln 7, gen 0
  i32* %bar
  (w64 0x859449D3931F90B3)

Checking equivalence of `bees` (decl src ln 11) from
  assn asm ln 236, prod ln 13.12, live ln 14, gen 0
  %24 = load i32, i32* %arrayidx, !tbaa !35, l13 c12
  (ReadLSB w32 (w32 0x0) bar.deref)
and
  assn asm ln 52, prod ln 13.12, live ln 14, gen 0
  %6 = load i32, i32* %arrayidx, l13 c12
  (ReadLSB w32 (w32 0x0) bar.deref)
Query to parse
array bar.deref[4] : w32 -> w8 = symbolic
array bar.deref[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) bar.deref)
     (ReadLSB w32 (w32 0x0) bar.deref)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) bar.deref)
     N0)

Checking equivalence of `init` (decl src ln 6) from
  assn asm ln 10, prod ln 6.23, live ln 7, gen 0
  i32 %init
  (ReadLSB w32 (w32 0x0) init)
and
  assn asm ln 18, prod ln 6.0, live ln 7, gen 0
  i32 %init
  (ReadLSB w32 (w32 0x0) init)
Query to parse
array init[4] : w32 -> w8 = symbolic
array init[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) init)
     (ReadLSB w32 (w32 0x0) init)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) init)
     N0)

Checking equivalence of `j` (decl src ln 12) from
  assn asm ln 16, prod ln 12.12, live ln 13, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 37, prod ln 12.12, live ln 13, gen 0
  i32 0
  (w32 0x0)

Variable intrinsic with undef input
❌ After `j` (decl src ln 12) assn asm ln 239, prod ln 12.12, live ln 13, gen 1 has no symbolic value from i32 undef

Checking equivalence of `tmp` (decl src ln 10) from
  assn asm ln 17, prod ln 10.7, live ln 12, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
and
  assn asm ln 34, prod ln 10.13, live ln 12, gen 0
  %1 = load i32, i32* %argc.addr, l10 c13
  (ReadLSB w32 (w32 0x0) argc)
Query to parse
array argc[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) argc)
     (ReadLSB w32 (w32 0x0) argc)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) argc)
     N0)

Checking equivalence of `tmp` (decl src ln 10) from
  assn asm ln 240, prod ln 14.9, live ln 15, gen 1
  %add2 = add nsw i32 %24, %tmp.012, l14 c9
  (Add w32 (ReadLSB w32 (w32 0x0) bar.deref)
          (ReadLSB w32 (w32 0x0) argc))
and
  assn asm ln 56, prod ln 14.9, live ln 15, gen 1
  %add2 = add nsw i32 %8, %7, l14 c9
  (Add w32 (ReadLSB w32 (w32 0x0) argc)
          (ReadLSB w32 (w32 0x0) bar.deref))
Query to parse
array bar.deref[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
array bar.deref[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (ReadLSB w32 (w32 0x0) bar.deref)
              (ReadLSB w32 (w32 0x0) argc))
     (Add w32 (ReadLSB w32 (w32 0x0) argc)
              (ReadLSB w32 (w32 0x0) bar.deref))))
Parsed query
(Eq (Add w32 N0:(ReadLSB w32 (w32 0x0) bar.deref)
              N1:(ReadLSB w32 (w32 0x0) argc))
     (Add w32 N1 N0))

❌ After symbolic values checked against before
  Matching:    7
  Mismatched:  1
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

✅ Before and after function names match

### Variables

Before variable `argc` (decl src ln 6)
Store to `argc` (decl src ln 6), asm ln 16
  arg 0
  Added assignment asm ln 16, prod ln 6.0, live ln 7, gen 0
Before variable `init` (decl src ln 6)
Store to `init` (decl src ln 6), asm ln 18
  arg 1
  @dbg.declare without read users, removable
  Added assignment asm ln 18, prod ln 6.0, live ln 7, gen 0
Before variable `bar` (decl src ln 6)
Store to `bar` (decl src ln 6), asm ln 20
  arg 2
  Added assignment asm ln 20, prod ln 6.0, live ln 7, gen 0
Before variable `tmp` (decl src ln 10)
Store to `tmp` (decl src ln 10), asm ln 56
  %add2 = add nsw i32 %8, %7, l14 c9, asm ln 55
🔔 Store to `tmp` (decl src ln 10): live ln too early, using produced ln + 1
  Added assignment asm ln 56, prod ln 14.9, live ln 15, gen 0
Store to `tmp` (decl src ln 10), asm ln 34
  %1 = load i32, i32* %argc.addr, l10 c13, asm ln 33
  Added assignment asm ln 34, prod ln 10.13, live ln 12, gen 0
Before variable `bees` (decl src ln 11)
Store to `bees` (decl src ln 11), asm ln 52
  %6 = load i32, i32* %arrayidx, l13 c12, asm ln 51
  Added assignment asm ln 52, prod ln 13.12, live ln 14, gen 0
Before variable `j` (decl src ln 12)
Store to `j` (decl src ln 12), asm ln 59
  %inc = add nsw i32 %9, 1, l12 c30, asm ln 58
🔔 Store to `j` (decl src ln 12): live ln too early, using produced ln + 1
  Added assignment asm ln 59, prod ln 12.30, live ln 13, gen 0
Store to `j` (decl src ln 12), asm ln 37
  const i32 0
🔔 Store to `j` (decl src ln 12): live ln too early, using produced ln + 1
  Added assignment asm ln 37, prod ln 12.12, live ln 13, gen 0
Computing generations: `argc` (decl src ln 6)
  asm ln 16, prod ln 6.0, live ln 7, gen 0
Computing generations: `init` (decl src ln 6)
  asm ln 18, prod ln 6.0, live ln 7, gen 0
Computing generations: `bar` (decl src ln 6)
  asm ln 20, prod ln 6.0, live ln 7, gen 0
Computing generations: `tmp` (decl src ln 10)
  asm ln 34, prod ln 10.13, live ln 12, gen 0
  asm ln 56, prod ln 14.9, live ln 15, gen 1
Computing generations: `bees` (decl src ln 11)
  asm ln 52, prod ln 13.12, live ln 14, gen 0
Computing generations: `j` (decl src ln 12)
  asm ln 37, prod ln 12.12, live ln 13, gen 0
  asm ln 59, prod ln 12.30, live ln 13, gen 1

After variable `argc` (decl src ln 6)
@dbg.value mapping for `argc` (decl src ln 6), asm ln 9
Value produced for `argc` (decl src ln 6), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 6.0, live ln 7, gen 0
After variable `init` (decl src ln 6)
@dbg.value mapping for `init` (decl src ln 6), asm ln 10
Value produced for `init` (decl src ln 6), asm ln 10
  arg 1
  Added assignment asm ln 10, prod ln 6.0, live ln 7, gen 0
After variable `bar` (decl src ln 6)
@dbg.value mapping for `bar` (decl src ln 6), asm ln 11
Value produced for `bar` (decl src ln 6), asm ln 11
  arg 2
  Added assignment asm ln 11, prod ln 6.0, live ln 7, gen 0
After variable `j` (decl src ln 12)
@dbg.value mapping for `j` (decl src ln 12), asm ln 16
Value produced for `j` (decl src ln 12), asm ln 16
  const i32 0
🔔 Value produced for `j` (decl src ln 12): live ln too early, using produced ln + 1
  Added assignment asm ln 16, prod ln 12.0, live ln 13, gen 0
After variable `tmp` (decl src ln 10)
@dbg.value mapping for `tmp` (decl src ln 10), asm ln 17
Value produced for `tmp` (decl src ln 10), asm ln 17
  arg 0
  Added assignment asm ln 17, prod ln 10.0, live ln 12, gen 0
After variable `bees` (decl src ln 11)
@dbg.value mapping for `bees` (decl src ln 11), asm ln 236
Value produced for `bees` (decl src ln 11), asm ln 236
  %24 = load i32, i32* %arrayidx, !tbaa !32, l13 c12, asm ln 235
  Added assignment asm ln 236, prod ln 13.12, live ln 14, gen 0
After variable `j` (decl src ln 12)
@dbg.value mapping for `j` (decl src ln 12), asm ln 239
Value produced for `j` (decl src ln 12), asm ln 239
  const i32 undef
🔔 Value produced for `j` (decl src ln 12): missing produced ln, using decl ln
🔔 Value produced for `j` (decl src ln 12): live ln too early, using produced ln + 1
  Added assignment asm ln 239, prod ln 12.0, live ln 13, gen 0
After variable `tmp` (decl src ln 10)
@dbg.value mapping for `tmp` (decl src ln 10), asm ln 240
Value produced for `tmp` (decl src ln 10), asm ln 240
  %add2 = add nsw i32 %24, %tmp.012, l14 c9, asm ln 237
🔔 Value produced for `tmp` (decl src ln 10): live ln too early, using produced ln + 1
  Added assignment asm ln 240, prod ln 14.9, live ln 15, gen 0
After variable `j` (decl src ln 12)
@dbg.value mapping for `j` (decl src ln 12), asm ln 232
Value produced for `j` (decl src ln 12), asm ln 232
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader20 ], asm ln 230
  Added assignment asm ln 232, prod ln 12.30, live ln 13, gen 0
After variable `tmp` (decl src ln 10)
@dbg.value mapping for `tmp` (decl src ln 10), asm ln 233
Value produced for `tmp` (decl src ln 10), asm ln 233
  %tmp.012 = phi i32 [ %add2, %for.body ], [ %tmp.012.ph, %for.body.preheader20 ], asm ln 231
🔔 Value produced for `tmp` (decl src ln 10): live ln too early, using produced ln + 1
  Added assignment asm ln 233, prod ln 14.9, live ln 15, gen 0
Computing generations: `argc` (decl src ln 6)
  asm ln 9, prod ln 6.0, live ln 7, gen 0
Computing generations: `init` (decl src ln 6)
  asm ln 10, prod ln 6.0, live ln 7, gen 0
Computing generations: `bar` (decl src ln 6)
  asm ln 11, prod ln 6.0, live ln 7, gen 0
Computing generations: `j` (decl src ln 12)
  asm ln 16, prod ln 12.0, live ln 13, gen 0
  asm ln 232, prod ln 12.30, live ln 13, gen 1
  asm ln 239, prod ln 12.0, live ln 13, gen 2
Computing generations: `tmp` (decl src ln 10)
  asm ln 17, prod ln 10.0, live ln 12, gen 0
  asm ln 233, prod ln 14.9, live ln 15, gen 1
  asm ln 240, prod ln 14.9, live ln 15, gen 2
Computing generations: `bees` (decl src ln 11)
  asm ln 236, prod ln 13.12, live ln 14, gen 0

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `argc`
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Collected value for `init`
  i32 %init
  (ReadLSB w32 (w32 0x0) init)
Collected value for `bar`
  Concrete pointer resolves to bar.deref, offset (w64 0x0)
  Replaced concrete pointer with hash (w64 0x859449D3931F90B3)
  i32* %bar
  (w64 0x859449D3931F90B3)
Collected value for `tmp`
  %1 = load i32, i32* %argc.addr, l10 c13
  (ReadLSB w32 (w32 0x0) argc)
Collected value for `j`
  i32 0
  (w32 0x0)
Collected value for `bees`
  %6 = load i32, i32* %arrayidx, l13 c12
  (ReadLSB w32 (w32 0x0) bar.deref)
Collected value for `tmp`
  %add2 = add nsw i32 %8, %7, l14 c9
  (Add w32 (ReadLSB w32 (w32 0x0) argc)
          (ReadLSB w32 (w32 0x0) bar.deref))
Collected value for `j`
  %inc = add nsw i32 %9, 1, l12 c30
  (w32 0x1)

#### After values

Collected value for `argc`
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Collected value for `init`
  i32 %init
  (ReadLSB w32 (w32 0x0) init)
Collected value for `bar`
  Concrete pointer resolves to bar.deref, offset (w64 0x0)
  Replaced concrete pointer with hash (w64 0x859449D3931F90B3)
  i32* %bar
  (w64 0x859449D3931F90B3)
Collected value for `j`
  i32 0
  (w32 0x0)
Collected value for `tmp`
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Collected value for `j`
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader20 ]
  Block: 1
  (w64 0x0)
Collected value for `tmp`
  %tmp.012 = phi i32 [ %add2, %for.body ], [ %tmp.012.ph, %for.body.preheader20 ]
  Block: 1
  (ReadLSB w32 (w32 0x0) argc)
Collected value for `bees`
  %24 = load i32, i32* %arrayidx, !tbaa !32, l13 c12
  (ReadLSB w32 (w32 0x0) bar.deref)
Collected value for `j`
  i32 undef
  (w32 0x0)
[0;1;31mKLEE: ERROR: example.c:13: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `tmp`
  %add2 = add nsw i32 %24, %tmp.012, l14 c9
  (Add w32 (ReadLSB w32 (w32 0x0) bar.deref)
          (ReadLSB w32 (w32 0x0) argc))
[0;1;31mKLEE: ERROR: example.c:13: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
❌ Unable to execute all after program states

### Assignments

Filtering redundant before assignments: `tmp` (decl src ln 10)

Filtering redundant before assignments: `j` (decl src ln 12)

Filtering redundant after assignments: `j` (decl src ln 12)

Checking equivalence of `j` (decl src ln 12) from
  assn asm ln 232, prod ln 12.30, live ln 13, gen 1
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader20 ]
  (w32 0x0)
and
  assn asm ln 16, prod ln 12.0, live ln 13, gen 0
  i32 0
  (w32 0x0)
Removing: asm ln 232, prod ln 12.30, live ln 13, gen 1

Filtering redundant after assignments: `tmp` (decl src ln 10)

Checking equivalence of `tmp` (decl src ln 10) from
  assn asm ln 233, prod ln 14.9, live ln 15, gen 1
  %tmp.012 = phi i32 [ %add2, %for.body ], [ %tmp.012.ph, %for.body.preheader20 ]
  (ReadLSB w32 (w32 0x0) argc)
and
  assn asm ln 17, prod ln 10.0, live ln 12, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Query to parse
array argc[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) argc)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) argc)
     N0)
Removing: asm ln 233, prod ln 14.9, live ln 15, gen 1

Computing generations: `argc` (decl src ln 6)
  asm ln 16, prod ln 6.0, live ln 7, gen 0
Computing generations: `init` (decl src ln 6)
  asm ln 18, prod ln 6.0, live ln 7, gen 0
Computing generations: `bar` (decl src ln 6)
  asm ln 20, prod ln 6.0, live ln 7, gen 0
Computing generations: `tmp` (decl src ln 10)
  asm ln 34, prod ln 10.13, live ln 12, gen 0
  asm ln 56, prod ln 14.9, live ln 15, gen 1
Computing generations: `bees` (decl src ln 11)
  asm ln 52, prod ln 13.12, live ln 14, gen 0
Computing generations: `j` (decl src ln 12)
  asm ln 37, prod ln 12.12, live ln 13, gen 0
  asm ln 59, prod ln 12.30, live ln 13, gen 1
Building live ranges: `argc` (decl src ln 6)
  asm ln 16, prod ln 6.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `init` (decl src ln 6)
  asm ln 18, prod ln 6.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `bar` (decl src ln 6)
  asm ln 20, prod ln 6.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `tmp` (decl src ln 10)
  asm ln 34, prod ln 10.13, live ln 12, gen 0
    live ln 12, gen 0 →
    live ln 15, gen 1
  asm ln 56, prod ln 14.9, live ln 15, gen 1
    live ln 15, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `bees` (decl src ln 11)
  asm ln 52, prod ln 13.12, live ln 14, gen 0
    live ln 14, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `j` (decl src ln 12)
  asm ln 37, prod ln 12.12, live ln 13, gen 0
    live ln 13, gen 0 →
    live ln 13, gen 1
  asm ln 59, prod ln 12.30, live ln 13, gen 1
    live ln 13, gen 1 →
    live ln ∞, gen ∞

Computing generations: `argc` (decl src ln 6)
  asm ln 9, prod ln 6.0, live ln 7, gen 0
Computing generations: `init` (decl src ln 6)
  asm ln 10, prod ln 6.0, live ln 7, gen 0
Computing generations: `bar` (decl src ln 6)
  asm ln 11, prod ln 6.0, live ln 7, gen 0
Computing generations: `j` (decl src ln 12)
  asm ln 16, prod ln 12.0, live ln 13, gen 0
  asm ln 239, prod ln 12.0, live ln 13, gen 1
Computing generations: `tmp` (decl src ln 10)
  asm ln 17, prod ln 10.0, live ln 12, gen 0
  asm ln 240, prod ln 14.9, live ln 15, gen 1
Computing generations: `bees` (decl src ln 11)
  asm ln 236, prod ln 13.12, live ln 14, gen 0
Building live ranges: `argc` (decl src ln 6)
  asm ln 9, prod ln 6.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `init` (decl src ln 6)
  asm ln 10, prod ln 6.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `bar` (decl src ln 6)
  asm ln 11, prod ln 6.0, live ln 7, gen 0
    live ln 7, gen 0 →
    live ln ∞, gen ∞
Building live ranges: `j` (decl src ln 12)
  asm ln 16, prod ln 12.0, live ln 13, gen 0
    live ln 13, gen 0 →
    live ln 13, gen 1
Building live ranges: `tmp` (decl src ln 10)
  asm ln 17, prod ln 10.0, live ln 12, gen 0
    live ln 12, gen 0 →
    live ln 15, gen 1
  asm ln 240, prod ln 14.9, live ln 15, gen 1
    live ln 15, gen 1 →
    live ln ∞, gen ∞
Building live ranges: `bees` (decl src ln 11)
  asm ln 236, prod ln 13.12, live ln 14, gen 0
    live ln 14, gen 0 →
    live ln ∞, gen ∞

🔔 After live range for `j` (decl src ln 12) terminates early
✅ Before live range coverage
  Covered:   6
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `argc` (decl src ln 6) from
  assn asm ln 16, prod ln 6.0, live ln 7, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
and
  assn asm ln 9, prod ln 6.0, live ln 7, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Query to parse
array argc[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) argc)
     (ReadLSB w32 (w32 0x0) argc)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) argc)
     N0)

Checking equivalence of `bar` (decl src ln 6) from
  assn asm ln 20, prod ln 6.0, live ln 7, gen 0
  i32* %bar
  (w64 0x859449D3931F90B3)
and
  assn asm ln 11, prod ln 6.0, live ln 7, gen 0
  i32* %bar
  (w64 0x859449D3931F90B3)

Checking equivalence of `bees` (decl src ln 11) from
  assn asm ln 52, prod ln 13.12, live ln 14, gen 0
  %6 = load i32, i32* %arrayidx, l13 c12
  (ReadLSB w32 (w32 0x0) bar.deref)
and
  assn asm ln 236, prod ln 13.12, live ln 14, gen 0
  %24 = load i32, i32* %arrayidx, !tbaa !32, l13 c12
  (ReadLSB w32 (w32 0x0) bar.deref)
Query to parse
array bar.deref[4] : w32 -> w8 = symbolic
array bar.deref[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) bar.deref)
     (ReadLSB w32 (w32 0x0) bar.deref)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) bar.deref)
     N0)

Checking equivalence of `init` (decl src ln 6) from
  assn asm ln 18, prod ln 6.0, live ln 7, gen 0
  i32 %init
  (ReadLSB w32 (w32 0x0) init)
and
  assn asm ln 10, prod ln 6.0, live ln 7, gen 0
  i32 %init
  (ReadLSB w32 (w32 0x0) init)
Query to parse
array init[4] : w32 -> w8 = symbolic
array init[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) init)
     (ReadLSB w32 (w32 0x0) init)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) init)
     N0)

Checking equivalence of `j` (decl src ln 12) from
  assn asm ln 37, prod ln 12.12, live ln 13, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 16, prod ln 12.0, live ln 13, gen 0
  i32 0
  (w32 0x0)

❌ After live range for `j` (decl src ln 12) at asm ln 59, prod ln 12.30, live ln 13, gen 1 not found

Checking equivalence of `tmp` (decl src ln 10) from
  assn asm ln 34, prod ln 10.13, live ln 12, gen 0
  %1 = load i32, i32* %argc.addr, l10 c13
  (ReadLSB w32 (w32 0x0) argc)
and
  assn asm ln 17, prod ln 10.0, live ln 12, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Query to parse
array argc[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) argc)
     (ReadLSB w32 (w32 0x0) argc)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) argc)
     N0)

Checking equivalence of `tmp` (decl src ln 10) from
  assn asm ln 56, prod ln 14.9, live ln 15, gen 1
  %add2 = add nsw i32 %8, %7, l14 c9
  (Add w32 (ReadLSB w32 (w32 0x0) argc)
          (ReadLSB w32 (w32 0x0) bar.deref))
and
  assn asm ln 240, prod ln 14.9, live ln 15, gen 1
  %add2 = add nsw i32 %24, %tmp.012, l14 c9
  (Add w32 (ReadLSB w32 (w32 0x0) bar.deref)
          (ReadLSB w32 (w32 0x0) argc))
Query to parse
array argc[4] : w32 -> w8 = symbolic
array bar.deref[4] : w32 -> w8 = symbolic
array bar.deref[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (ReadLSB w32 (w32 0x0) argc)
              (ReadLSB w32 (w32 0x0) bar.deref))
     (Add w32 (ReadLSB w32 (w32 0x0) bar.deref)
              (ReadLSB w32 (w32 0x0) argc))))
Parsed query
(Eq (Add w32 N0:(ReadLSB w32 (w32 0x0) argc)
              N1:(ReadLSB w32 (w32 0x0) bar.deref))
     (Add w32 N1 N0))

❌ Before symbolic values checked against after
  Matching:    7
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `argc` (decl src ln 6) from
  assn asm ln 9, prod ln 6.0, live ln 7, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
and
  assn asm ln 16, prod ln 6.0, live ln 7, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
Query to parse
array argc[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) argc)
     (ReadLSB w32 (w32 0x0) argc)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) argc)
     N0)

Checking equivalence of `bar` (decl src ln 6) from
  assn asm ln 11, prod ln 6.0, live ln 7, gen 0
  i32* %bar
  (w64 0x859449D3931F90B3)
and
  assn asm ln 20, prod ln 6.0, live ln 7, gen 0
  i32* %bar
  (w64 0x859449D3931F90B3)

Checking equivalence of `bees` (decl src ln 11) from
  assn asm ln 236, prod ln 13.12, live ln 14, gen 0
  %24 = load i32, i32* %arrayidx, !tbaa !32, l13 c12
  (ReadLSB w32 (w32 0x0) bar.deref)
and
  assn asm ln 52, prod ln 13.12, live ln 14, gen 0
  %6 = load i32, i32* %arrayidx, l13 c12
  (ReadLSB w32 (w32 0x0) bar.deref)
Query to parse
array bar.deref[4] : w32 -> w8 = symbolic
array bar.deref[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) bar.deref)
     (ReadLSB w32 (w32 0x0) bar.deref)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) bar.deref)
     N0)

Checking equivalence of `init` (decl src ln 6) from
  assn asm ln 10, prod ln 6.0, live ln 7, gen 0
  i32 %init
  (ReadLSB w32 (w32 0x0) init)
and
  assn asm ln 18, prod ln 6.0, live ln 7, gen 0
  i32 %init
  (ReadLSB w32 (w32 0x0) init)
Query to parse
array init[4] : w32 -> w8 = symbolic
array init[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) init)
     (ReadLSB w32 (w32 0x0) init)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) init)
     N0)

Checking equivalence of `j` (decl src ln 12) from
  assn asm ln 16, prod ln 12.0, live ln 13, gen 0
  i32 0
  (w32 0x0)
and
  assn asm ln 37, prod ln 12.12, live ln 13, gen 0
  i32 0
  (w32 0x0)

Variable intrinsic with undef input
❌ After `j` (decl src ln 12) assn asm ln 239, prod ln 12.0, live ln 13, gen 1 has no symbolic value from i32 undef

Checking equivalence of `tmp` (decl src ln 10) from
  assn asm ln 17, prod ln 10.0, live ln 12, gen 0
  i32 %argc
  (ReadLSB w32 (w32 0x0) argc)
and
  assn asm ln 34, prod ln 10.13, live ln 12, gen 0
  %1 = load i32, i32* %argc.addr, l10 c13
  (ReadLSB w32 (w32 0x0) argc)
Query to parse
array argc[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) argc)
     (ReadLSB w32 (w32 0x0) argc)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) argc)
     N0)

Checking equivalence of `tmp` (decl src ln 10) from
  assn asm ln 240, prod ln 14.9, live ln 15, gen 1
  %add2 = add nsw i32 %24, %tmp.012, l14 c9
  (Add w32 (ReadLSB w32 (w32 0x0) bar.deref)
          (ReadLSB w32 (w32 0x0) argc))
and
  assn asm ln 56, prod ln 14.9, live ln 15, gen 1
  %add2 = add nsw i32 %8, %7, l14 c9
  (Add w32 (ReadLSB w32 (w32 0x0) argc)
          (ReadLSB w32 (w32 0x0) bar.deref))
Query to parse
array bar.deref[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
array argc[4] : w32 -> w8 = symbolic
array bar.deref[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (ReadLSB w32 (w32 0x0) bar.deref)
              (ReadLSB w32 (w32 0x0) argc))
     (Add w32 (ReadLSB w32 (w32 0x0) argc)
              (ReadLSB w32 (w32 0x0) bar.deref))))
Parsed query
(Eq (Add w32 N0:(ReadLSB w32 (w32 0x0) bar.deref)
              N1:(ReadLSB w32 (w32 0x0) argc))
     (Add w32 N1 N0))

❌ After symbolic values checked against before
  Matching:    7
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
