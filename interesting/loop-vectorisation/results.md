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
+++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --tsv'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --tsv'
++ mkdir -p klee-out-O0
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O2 -o example-O2.ll
++ mkdir -p klee-out-O2
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope -O2 -o /dev/null
++ filter_cg_ir example-O2-cg-raw.ll example-O2-cg.ll
++ local input_ir=example-O2-cg-raw.ll
++ local output_ir=example-O2-cg.ll
++ grep -v '^+'
++ sed '2,/IR Dump/!d'
++ grep -v 'IR Dump'
++ rm example-O2-cg-raw.ll
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O2/final.bc example-O2-cg.ll
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
++++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --tsv'
++ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace --tsv
Checking klee-out-O0/final.bc and klee-out-O2/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variables

Before variable `x` (decl src ln 1)
Store to declared address of `x` (decl src ln 1), asm ln 13
  arg 0
  Added assignment asm ln 13, prod ln 1.0, live ln 2, enc None
Before variable `len` (decl src ln 1)
Store to declared address of `len` (decl src ln 1), asm ln 15
  arg 1
  Added assignment asm ln 15, prod ln 1.0, live ln 2, enc None
Before variable `r` (decl src ln 2)
Store to declared address of `r` (decl src ln 2), asm ln 37
  %add = add nsw i32 %5, %4, l5 c7, asm ln 36
🔔 Store to declared address of `r` (decl src ln 2): live ln too early, using produced ln + 1
  Added assignment asm ln 37, prod ln 5.7, live ln 6, enc None
Store to declared address of `r` (decl src ln 2), asm ln 18
  const i32 0
  Added assignment asm ln 18, prod ln 2.7, live ln 4, enc None
Before variable `i` (decl src ln 4)
Store to declared address of `i` (decl src ln 4), asm ln 40
  %inc = add nsw i32 %6, 1, l4 c29, asm ln 39
🔔 Store to declared address of `i` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 40, prod ln 4.29, live ln 5, enc None
Store to declared address of `i` (decl src ln 4), asm ln 20
  const i32 0
🔔 Store to declared address of `i` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 20, prod ln 4.12, live ln 5, enc None

After variable `x` (decl src ln 1)
Value produced for `x` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.0, live ln 4, enc None
After variable `len` (decl src ln 1)
Value produced for `len` (decl src ln 1), asm ln 10
  arg 1
  Added assignment asm ln 10, prod ln 1.0, live ln 4, enc None
After variable `r` (decl src ln 2)
Value produced for `r` (decl src ln 2), asm ln 11
  const i32 0
  Added assignment asm ln 11, prod ln 2.0, live ln 4, enc None
After variable `i` (decl src ln 4)
Value produced for `i` (decl src ln 4), asm ln 12
  const i32 0
🔔 Value produced for `i` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 12, prod ln 4.0, live ln 5, enc None
After variable `r` (decl src ln 2)
Value produced for `r` (decl src ln 2), asm ln 70
  %add = add nsw i32 %1, %r.07, l5 c7, asm ln 69
🔔 Value produced for `r` (decl src ln 2): live ln too early, using produced ln + 1
  Added assignment asm ln 70, prod ln 5.7, live ln 6, enc None
After variable `i` (decl src ln 4)
Value produced for `i` (decl src ln 4), asm ln 72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l4 c29, asm ln 71
🔔 Value produced for `i` (decl src ln 4): live ln too early, using produced ln + 1
  Added assignment asm ln 72, prod ln 4.29, live ln 5, enc None
After variable `i` (decl src ln 4)
Value produced for `i` (decl src ln 4), asm ln 65
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader9 ], asm ln 63
  Added assignment asm ln 65, prod ln 4.29, live ln 5, enc None
After variable `r` (decl src ln 2)
Value produced for `r` (decl src ln 2), asm ln 66
  %r.07 = phi i32 [ %add, %for.body ], [ %r.07.ph, %for.body.preheader9 ], asm ln 64
🔔 Value produced for `r` (decl src ln 2): live ln too early, using produced ln + 1
  Added assignment asm ln 66, prod ln 5.7, live ln 6, enc None

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `x`
  Concrete pointer resolves to x.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) x.deref)
  Replaced concrete pointer with hash (w64 0x6FD665A2244C9062)
  i32* %x
  (w64 0x6FD665A2244C9062)
Collected value for `len`
  i32 %len
  (ReadLSB w32 (w32 0x0) len)
Collected value for `r`
  i32 0
  (w32 0x0)
Collected value for `i`
  i32 0
  (w32 0x0)
Collected value for `r`
  %add = add nsw i32 %5, %4, l5 c7
  (ReadLSB w32 (w32 0x0) x.deref)
Collected value for `i`
  %inc = add nsw i32 %6, 1, l4 c29
  (w32 0x1)
[0;1;31mKLEE: ERROR: example.c:5: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all before program states

#### After values

Collected value for `x`
  Concrete pointer resolves to x.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) x.deref)
  Replaced concrete pointer with hash (w64 0x6FD665A2244C9062)
  i32* %x
  (w64 0x6FD665A2244C9062)
Collected value for `len`
  i32 %len
  (ReadLSB w32 (w32 0x0) len)
Collected value for `r`
  i32 0
  (w32 0x0)
Collected value for `i`
  i32 0
  (w32 0x0)
Collected value for `i`
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader9 ]
  Block: 1
  (w64 0x0)
[0;1;31mKLEE: ERROR: example.c:5: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `r`
  %r.07 = phi i32 [ %add, %for.body ], [ %r.07.ph, %for.body.preheader9 ]
  Block: 1
  (w32 0x0)
Collected value for `r`
  %add = add nsw i32 %1, %r.07, l5 c7
  (ReadLSB w32 (w32 0x0) x.deref)
Collected value for `i`
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l4 c29
  (w64 0x1)
[0;1;31mKLEE: ERROR: example.c:5: memory error: out of bound pointer
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
🔔 Unable to execute all after program states

🔔 Unable to execute all after instructions

### Assignments

Filtering redundant before assignments: `r` (decl src ln 2)

Checking equivalence of `r` (decl src ln 2) from
  assn asm ln 37, prod ln 5.7, live ln 6, enc 1
  %add = add nsw i32 %5, %4, l5 c7
  (ReadLSB w32 (w32 0x0) x.deref)
and
  assn asm ln 18, prod ln 2.7, live ln 4, enc 0
  i32 0
  (w32 0x0)
Query to parse
array x.deref[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) x.deref)
     (w32 0x0)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) x.deref)
     (w32 0x0))

Filtering redundant before assignments: `i` (decl src ln 4)

Checking equivalence of `i` (decl src ln 4) from
  assn asm ln 40, prod ln 4.29, live ln 5, enc 1
  %inc = add nsw i32 %6, 1, l4 c29
  (w32 0x1)
and
  assn asm ln 20, prod ln 4.12, live ln 5, enc 0
  i32 0
  (w32 0x0)

Filtering redundant after assignments: `r` (decl src ln 2)

Checking equivalence of `r` (decl src ln 2) from
  assn asm ln 66, prod ln 5.7, live ln 6, enc 1
  %r.07 = phi i32 [ %add, %for.body ], [ %r.07.ph, %for.body.preheader9 ]
  (w32 0x0)
and
  assn asm ln 11, prod ln 2.0, live ln 4, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 66, prod ln 5.7, live ln 6, enc 1

Checking equivalence of `r` (decl src ln 2) from
  assn asm ln 70, prod ln 5.7, live ln 6, enc 2
  %add = add nsw i32 %1, %r.07, l5 c7
  (ReadLSB w32 (w32 0x0) x.deref)
and
  assn asm ln 11, prod ln 2.0, live ln 4, enc 0
  i32 0
  (w32 0x0)
Query to parse
array x.deref[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) x.deref)
     (w32 0x0)))
Parsed query
(Eq (ReadLSB w32 (w32 0x0) x.deref)
     (w32 0x0))

Filtering redundant after assignments: `i` (decl src ln 4)

Checking equivalence of `i` (decl src ln 4) from
  assn asm ln 65, prod ln 4.29, live ln 5, enc 1
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader9 ]
  (w32 0x0)
and
  assn asm ln 12, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
🔔 Removing: asm ln 65, prod ln 4.29, live ln 5, enc 1

Checking equivalence of `i` (decl src ln 4) from
  assn asm ln 72, prod ln 4.29, live ln 5, enc 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l4 c29
  (w32 0x1)
and
  assn asm ln 12, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)

Collating encountered assignments: `x` (decl src ln 1)
  asm ln 13, prod ln 1.0, live ln 2, enc 0
Collating encountered assignments: `len` (decl src ln 1)
  asm ln 15, prod ln 1.0, live ln 2, enc 0
Collating encountered assignments: `r` (decl src ln 2)
  asm ln 18, prod ln 2.7, live ln 4, enc 0
  asm ln 37, prod ln 5.7, live ln 6, enc 1
Collating encountered assignments: `i` (decl src ln 4)
  asm ln 20, prod ln 4.12, live ln 5, enc 0
  asm ln 40, prod ln 4.29, live ln 5, enc 1

Collating encountered assignments: `x` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 4, enc 0
Collating encountered assignments: `len` (decl src ln 1)
  asm ln 10, prod ln 1.0, live ln 4, enc 0
Collating encountered assignments: `r` (decl src ln 2)
  asm ln 11, prod ln 2.0, live ln 4, enc 0
  asm ln 70, prod ln 5.7, live ln 6, enc 1
Collating encountered assignments: `i` (decl src ln 4)
  asm ln 12, prod ln 4.0, live ln 5, enc 0
  asm ln 72, prod ln 4.29, live ln 5, enc 1


#### Check before using after as reference

Checking equivalence of `i` (decl src ln 4) from
  assn asm ln 20, prod ln 4.12, live ln 5, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 12, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
✅ After `i` (decl src ln 4) assn asm ln 12, prod ln 4.0, live ln 5, enc 0 symbolic value matches before assn asm ln 20, prod ln 4.12, live ln 5, enc 0

Checking equivalence of `i` (decl src ln 4) from
  assn asm ln 40, prod ln 4.29, live ln 5, enc 1
  %inc = add nsw i32 %6, 1, l4 c29
  (w32 0x1)
and
  assn asm ln 72, prod ln 4.29, live ln 5, enc 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l4 c29
  (w32 0x1)
✅ After `i` (decl src ln 4) assn asm ln 72, prod ln 4.29, live ln 5, enc 1 symbolic value matches before assn asm ln 40, prod ln 4.29, live ln 5, enc 1

✅ Before `i` assns checked using after as reference
Variable:            i
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

❌ After `len` (decl src ln 1) assn asm ln 10, prod ln 1.0, live ln 4, enc 0 coordinates don't match before assn asm ln 15, prod ln 1.0, live ln 2, enc 0
Checking equivalence of `len` (decl src ln 1) from
  assn asm ln 15, prod ln 1.0, live ln 2, enc 0
  i32 %len
  (ReadLSB w32 (w32 0x0) len)
and
  assn asm ln 10, prod ln 1.0, live ln 4, enc 0
  i32 %len
  (ReadLSB w32 (w32 0x0) len)
Query to parse
array len[4] : w32 -> w8 = symbolic
array len[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) len)
     (ReadLSB w32 (w32 0x0) len)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) len)
     N0)
✅ After `len` (decl src ln 1) assn asm ln 10, prod ln 1.0, live ln 4, enc 0 symbolic value matches before assn asm ln 15, prod ln 1.0, live ln 2, enc 0

❌ Before `len` assns checked using after as reference
Variable:            len
  Assignments:       1
  Matching Coords:   0
  Matching Value:    1
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `r` (decl src ln 2) from
  assn asm ln 18, prod ln 2.7, live ln 4, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 11, prod ln 2.0, live ln 4, enc 0
  i32 0
  (w32 0x0)
✅ After `r` (decl src ln 2) assn asm ln 11, prod ln 2.0, live ln 4, enc 0 symbolic value matches before assn asm ln 18, prod ln 2.7, live ln 4, enc 0

Checking equivalence of `r` (decl src ln 2) from
  assn asm ln 37, prod ln 5.7, live ln 6, enc 1
  %add = add nsw i32 %5, %4, l5 c7
  (ReadLSB w32 (w32 0x0) x.deref)
and
  assn asm ln 70, prod ln 5.7, live ln 6, enc 1
  %add = add nsw i32 %1, %r.07, l5 c7
  (ReadLSB w32 (w32 0x0) x.deref)
Query to parse
array x.deref[8] : w32 -> w8 = symbolic
array x.deref[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) x.deref)
     (ReadLSB w32 (w32 0x0) x.deref)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) x.deref)
     N0)
✅ After `r` (decl src ln 2) assn asm ln 70, prod ln 5.7, live ln 6, enc 1 symbolic value matches before assn asm ln 37, prod ln 5.7, live ln 6, enc 1

✅ Before `r` assns checked using after as reference
Variable:            r
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

❌ After `x` (decl src ln 1) assn asm ln 9, prod ln 1.0, live ln 4, enc 0 coordinates don't match before assn asm ln 13, prod ln 1.0, live ln 2, enc 0
Checking equivalence of `x` (decl src ln 1) from
  assn asm ln 13, prod ln 1.0, live ln 2, enc 0
  i32* %x
  (w64 0x6FD665A2244C9062)
and
  assn asm ln 9, prod ln 1.0, live ln 4, enc 0
  i32* %x
  (w64 0x6FD665A2244C9062)
✅ After `x` (decl src ln 1) assn asm ln 9, prod ln 1.0, live ln 4, enc 0 symbolic value matches before assn asm ln 13, prod ln 1.0, live ln 2, enc 0

❌ Before `x` assns checked using after as reference
Variable:            x
  Assignments:       1
  Matching Coords:   0
  Matching Value:    1
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

#### Check after using before as reference

Checking equivalence of `i` (decl src ln 4) from
  assn asm ln 12, prod ln 4.0, live ln 5, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 20, prod ln 4.12, live ln 5, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 4) assn asm ln 20, prod ln 4.12, live ln 5, enc 0 symbolic value matches after assn asm ln 12, prod ln 4.0, live ln 5, enc 0

Checking equivalence of `i` (decl src ln 4) from
  assn asm ln 72, prod ln 4.29, live ln 5, enc 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l4 c29
  (w32 0x1)
and
  assn asm ln 40, prod ln 4.29, live ln 5, enc 1
  %inc = add nsw i32 %6, 1, l4 c29
  (w32 0x1)
✅ Before `i` (decl src ln 4) assn asm ln 40, prod ln 4.29, live ln 5, enc 1 symbolic value matches after assn asm ln 72, prod ln 4.29, live ln 5, enc 1

✅ After `i` assns checked using before as reference
Variable:            i
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

❌ Before `len` (decl src ln 1) assn asm ln 15, prod ln 1.0, live ln 2, enc 0 coordinates don't match after assn asm ln 10, prod ln 1.0, live ln 4, enc 0
Checking equivalence of `len` (decl src ln 1) from
  assn asm ln 10, prod ln 1.0, live ln 4, enc 0
  i32 %len
  (ReadLSB w32 (w32 0x0) len)
and
  assn asm ln 15, prod ln 1.0, live ln 2, enc 0
  i32 %len
  (ReadLSB w32 (w32 0x0) len)
Query to parse
array len[4] : w32 -> w8 = symbolic
array len[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) len)
     (ReadLSB w32 (w32 0x0) len)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) len)
     N0)
✅ Before `len` (decl src ln 1) assn asm ln 15, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 10, prod ln 1.0, live ln 4, enc 0

❌ After `len` assns checked using before as reference
Variable:            len
  Assignments:       1
  Matching Coords:   0
  Matching Value:    1
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `r` (decl src ln 2) from
  assn asm ln 11, prod ln 2.0, live ln 4, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 18, prod ln 2.7, live ln 4, enc 0
  i32 0
  (w32 0x0)
✅ Before `r` (decl src ln 2) assn asm ln 18, prod ln 2.7, live ln 4, enc 0 symbolic value matches after assn asm ln 11, prod ln 2.0, live ln 4, enc 0

Checking equivalence of `r` (decl src ln 2) from
  assn asm ln 70, prod ln 5.7, live ln 6, enc 1
  %add = add nsw i32 %1, %r.07, l5 c7
  (ReadLSB w32 (w32 0x0) x.deref)
and
  assn asm ln 37, prod ln 5.7, live ln 6, enc 1
  %add = add nsw i32 %5, %4, l5 c7
  (ReadLSB w32 (w32 0x0) x.deref)
Query to parse
array x.deref[8] : w32 -> w8 = symbolic
array x.deref[8] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) x.deref)
     (ReadLSB w32 (w32 0x0) x.deref)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) x.deref)
     N0)
✅ Before `r` (decl src ln 2) assn asm ln 37, prod ln 5.7, live ln 6, enc 1 symbolic value matches after assn asm ln 70, prod ln 5.7, live ln 6, enc 1

✅ After `r` assns checked using before as reference
Variable:            r
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

❌ Before `x` (decl src ln 1) assn asm ln 13, prod ln 1.0, live ln 2, enc 0 coordinates don't match after assn asm ln 9, prod ln 1.0, live ln 4, enc 0
Checking equivalence of `x` (decl src ln 1) from
  assn asm ln 9, prod ln 1.0, live ln 4, enc 0
  i32* %x
  (w64 0x6FD665A2244C9062)
and
  assn asm ln 13, prod ln 1.0, live ln 2, enc 0
  i32* %x
  (w64 0x6FD665A2244C9062)
✅ Before `x` (decl src ln 1) assn asm ln 13, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 9, prod ln 1.0, live ln 4, enc 0

❌ After `x` assns checked using before as reference
Variable:            x
  Assignments:       1
  Matching Coords:   0
  Matching Value:    1
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

## Summary

❌ Some consistency checks failed
