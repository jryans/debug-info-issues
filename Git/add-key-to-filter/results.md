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
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -o example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O0/final.bc example-O0.ll
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -o example-O1.ll
++ mkdir -p klee-out-O1
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope -O1 -o /dev/null
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
++ /Users/jryans/Projects/klee/build-debug/bin/debug-info-check klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=debug-info-check,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 2 before defined functions(s), 2 after defined functions(s)

## Function `add_key_to_filter`

✅ Before and after function names match

### Variables

Before variable `key` (decl src ln 53)
Store to `key` (decl src ln 53), asm ln 24
  arg 0
  Added assignment asm ln 24, prod ln 53.0, live ln 56, gen 0
Before variable `filter` (decl src ln 53)
Store to `filter` (decl src ln 53), asm ln 26
  arg 1
  Added assignment asm ln 26, prod ln 53.0, live ln 56, gen 0
Before variable `settings` (decl src ln 54)
Store to `settings` (decl src ln 54), asm ln 28
  arg 2
  Added assignment asm ln 28, prod ln 54.0, live ln 56, gen 0
Before variable `i` (decl src ln 55)
Store to `i` (decl src ln 55), asm ln 84
  %inc = add nsw i32 %16, 1, l58 c42, asm ln 83
  Added assignment asm ln 84, prod ln 58.42, live ln 58, gen 0
Store to `i` (decl src ln 55), asm ln 37
  const i32 0
  Added assignment asm ln 37, prod ln 58.10, live ln 58, gen 0
Before variable `mod` (decl src ln 56)
Store to `mod` (decl src ln 56), asm ln 36
  %mul = mul i64 %1, 8, l56 c30, asm ln 35
  Added assignment asm ln 36, prod ln 56.30, live ln 58, gen 0
Before variable `hash_mod` (decl src ln 59)
Store to `hash_mod` (decl src ln 59), asm ln 60
  %rem = urem i64 %conv, %9, l59 c40, asm ln 59
  Added assignment asm ln 60, prod ln 59.40, live ln 60, gen 0
Before variable `block_pos` (decl src ln 60)
Store to `block_pos` (decl src ln 60), asm ln 64
  %div = udiv i64 %10, 8, l60 c35, asm ln 63
  Added assignment asm ln 64, prod ln 60.35, live ln 62, gen 0
Computing generations: `key` (decl src ln 53)
  asm ln 24, prod ln 53.0, live ln 56, gen 0
Computing generations: `filter` (decl src ln 53)
  asm ln 26, prod ln 53.0, live ln 56, gen 0
Computing generations: `settings` (decl src ln 54)
  asm ln 28, prod ln 54.0, live ln 56, gen 0
Computing generations: `i` (decl src ln 55)
  asm ln 37, prod ln 58.10, live ln 58, gen 0
  asm ln 84, prod ln 58.42, live ln 58, gen 1
Computing generations: `mod` (decl src ln 56)
  asm ln 36, prod ln 56.30, live ln 58, gen 0
Computing generations: `hash_mod` (decl src ln 59)
  asm ln 60, prod ln 59.40, live ln 60, gen 0
Computing generations: `block_pos` (decl src ln 60)
  asm ln 64, prod ln 60.35, live ln 62, gen 0

After variable `key` (decl src ln 53)
@dbg.value mapping for `key` (decl src ln 53), asm ln 17
Value produced for `key` (decl src ln 53), asm ln 17
  arg 0
  Added assignment asm ln 17, prod ln 53.0, live ln 56, gen 0
After variable `filter` (decl src ln 53)
@dbg.value mapping for `filter` (decl src ln 53), asm ln 18
Value produced for `filter` (decl src ln 53), asm ln 18
  arg 1
  Added assignment asm ln 18, prod ln 53.0, live ln 56, gen 0
After variable `settings` (decl src ln 54)
@dbg.value mapping for `settings` (decl src ln 54), asm ln 19
Value produced for `settings` (decl src ln 54), asm ln 19
  arg 2
  Added assignment asm ln 19, prod ln 54.0, live ln 56, gen 0
After variable `mod` (decl src ln 56)
@dbg.value mapping for `mod` (decl src ln 56), asm ln 23
Value produced for `mod` (decl src ln 56), asm ln 23
  %mul = shl i64 %0, 3, l56 c30, asm ln 22
  Added assignment asm ln 23, prod ln 56.30, live ln 58, gen 0
After variable `i` (decl src ln 55)
@dbg.value mapping for `i` (decl src ln 55), asm ln 24
Value produced for `i` (decl src ln 55), asm ln 24
  const i32 0
  Added assignment asm ln 24, prod ln 55.0, live ln 58, gen 0
After variable `i` (decl src ln 55)
@dbg.value mapping for `i` (decl src ln 55), asm ln 26
Value produced for `i` (decl src ln 55), asm ln 26
  const i32 0
  Producers match last assignment, skipping
After variable `hash_mod` (decl src ln 59)
@dbg.value mapping for `hash_mod` (decl src ln 59), asm ln 44
Value produced for `hash_mod` (decl src ln 59), asm ln 44
  %rem = urem i64 %conv, %mul, l59 c40, asm ln 43
  Added assignment asm ln 44, prod ln 59.40, live ln 60, gen 0
After variable `block_pos` (decl src ln 60)
@dbg.value mapping for `block_pos` (decl src ln 60), asm ln 46
Value produced for `block_pos` (decl src ln 60), asm ln 46
  %div = lshr i64 %rem, 3, l60 c35, asm ln 45
  Added assignment asm ln 46, prod ln 60.35, live ln 62, gen 0
After variable `i` (decl src ln 55)
@dbg.value mapping for `i` (decl src ln 55), asm ln 55
Value produced for `i` (decl src ln 55), asm ln 55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l58 c42, asm ln 54
  Added assignment asm ln 55, prod ln 58.42, live ln 58, gen 0
After variable `i` (decl src ln 55)
@dbg.value mapping for `i` (decl src ln 55), asm ln 38
Value produced for `i` (decl src ln 55), asm ln 38
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ], asm ln 35
  Added assignment asm ln 38, prod ln 58.42, live ln 59, gen 0
Computing generations: `key` (decl src ln 53)
  asm ln 17, prod ln 53.0, live ln 56, gen 0
Computing generations: `filter` (decl src ln 53)
  asm ln 18, prod ln 53.0, live ln 56, gen 0
Computing generations: `settings` (decl src ln 54)
  asm ln 19, prod ln 54.0, live ln 56, gen 0
Computing generations: `mod` (decl src ln 56)
  asm ln 23, prod ln 56.30, live ln 58, gen 0
Computing generations: `i` (decl src ln 55)
  asm ln 24, prod ln 55.0, live ln 58, gen 0
  asm ln 38, prod ln 58.42, live ln 59, gen 1
  asm ln 55, prod ln 58.42, live ln 58, gen 2
Computing generations: `hash_mod` (decl src ln 59)
  asm ln 44, prod ln 59.40, live ln 60, gen 0
Computing generations: `block_pos` (decl src ln 60)
  asm ln 46, prod ln 60.35, live ln 62, gen 0

✅ 7 before variables found, 7 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `key`
  Concrete pointer resolves to key.deref, offset 0x0
  Replaced concrete pointer with hash 0x5A648A95DF382683
  %struct.bloom_key.3* %key
  0x5A648A95DF382683
Collected value for `filter`
  Concrete pointer resolves to filter.deref, offset 0x0
  Replaced concrete pointer with hash 0xE6F1B410FC4C542C
  %struct.bloom_filter.4* %filter
  0xE6F1B410FC4C542C
Collected value for `settings`
  Concrete pointer resolves to settings.deref, offset 0x0
  Replaced concrete pointer with hash 0x448200A330922F9A
  %struct.bloom_filter_settings.5* %settings
  0x448200A330922F9A
Collected value for `mod`
  %mul = mul i64 %1, 8, l56 c30
  (Mul w64 0x8
          (ReadLSB w64 0x8 filter.deref))
Collected value for `i`
  i32 0
  0x0
[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;1;31mKLEE: ERROR: example.c:59: divide by zero
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `hash_mod`
  %rem = urem i64 %conv, %9, !klee.check.div !80, l59 c40
  (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
           (Mul w64 0x8
                    (ReadLSB w64 0x8 filter.deref)))
Collected value for `block_pos`
  %div = udiv i64 %10, 8, l60 c35
  (UDiv w64 (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
                     (Mul w64 0x8
                              (ReadLSB w64 0x8 filter.deref)))
           0x8)
[0;1;35mKLEE: WARNING ONCE: skipping fork (max-forks reached)
[0m[0;1;31mKLEE: ERROR: example.c:62: memory error: object read only
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `i`
  %inc = add nsw i32 %16, 1, l58 c42
  0x1

❌ Unable to execute all before program states

#### After values

Collected value for `key`
  Concrete pointer resolves to key.deref, offset 0x0
  Replaced concrete pointer with hash 0x5A648A95DF382683
  %struct.bloom_key.6* %key
  0x5A648A95DF382683
Collected value for `filter`
  Concrete pointer resolves to filter.deref, offset 0x0
  Replaced concrete pointer with hash 0xE6F1B410FC4C542C
  %struct.bloom_filter.7* %filter
  0xE6F1B410FC4C542C
Collected value for `settings`
  Concrete pointer resolves to settings.deref, offset 0x0
  Replaced concrete pointer with hash 0x448200A330922F9A
  %struct.bloom_filter_settings.8* %settings
  0x448200A330922F9A
Collected value for `mod`
  %mul = shl i64 %0, 3, l56 c30
  (Shl w64 (ReadLSB w64 0x8 filter.deref)
          0x3)
Collected value for `i`
  i32 0
  0x0
Collected value for `i`
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  Block: 1
  0x0
[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0mCollected value for `hash_mod`
  %rem = urem i64 %conv, %mul, !klee.check.div !82, l59 c40
  (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
           (Shl w64 (ReadLSB w64 0x8 filter.deref)
                    0x3))
Collected value for `block_pos`
  %div = lshr i64 %rem, 3, l60 c35
  (LShr w64 (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
                     (Shl w64 (ReadLSB w64 0x8 filter.deref)
                              0x3))
           0x3)
[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_div_zero_check.c`
[0m[0;1;31mKLEE: ERROR: example.c:59: divide by zero
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0mCollected value for `i`
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l58 c42
  0x1

❌ Unable to execute all after program states

### Assignments

Filtering redundant before assignments: `i` (decl src ln 55)

Filtering redundant after assignments: `i` (decl src ln 55)

Checking equivalence of `i` (decl src ln 55) from
  assn asm ln 38, prod ln 58.42, live ln 59, gen 1
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  0x0
and
  assn asm ln 24, prod ln 55.0, live ln 58, gen 0
  i32 0
  0x0
Removing: asm ln 38, prod ln 58.42, live ln 59, gen 1

Computing generations: `key` (decl src ln 53)
  asm ln 24, prod ln 53.0, live ln 56, gen 0
Computing generations: `filter` (decl src ln 53)
  asm ln 26, prod ln 53.0, live ln 56, gen 0
Computing generations: `settings` (decl src ln 54)
  asm ln 28, prod ln 54.0, live ln 56, gen 0
Computing generations: `i` (decl src ln 55)
  asm ln 37, prod ln 58.10, live ln 58, gen 0
  asm ln 84, prod ln 58.42, live ln 58, gen 1
Computing generations: `mod` (decl src ln 56)
  asm ln 36, prod ln 56.30, live ln 58, gen 0
Computing generations: `hash_mod` (decl src ln 59)
  asm ln 60, prod ln 59.40, live ln 60, gen 0
Computing generations: `block_pos` (decl src ln 60)
  asm ln 64, prod ln 60.35, live ln 62, gen 0
Building live ranges: `key` (decl src ln 53)
  asm ln 24, prod ln 53.0, live ln 56, gen 0
    prod ln 53, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `filter` (decl src ln 53)
  asm ln 26, prod ln 53.0, live ln 56, gen 0
    prod ln 53, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `settings` (decl src ln 54)
  asm ln 28, prod ln 54.0, live ln 56, gen 0
    prod ln 54, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `i` (decl src ln 55)
  asm ln 37, prod ln 58.10, live ln 58, gen 0
    prod ln 58, gen 0 →
    prod ln 58, gen 1
  asm ln 84, prod ln 58.42, live ln 58, gen 1
    prod ln 58, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `mod` (decl src ln 56)
  asm ln 36, prod ln 56.30, live ln 58, gen 0
    prod ln 56, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `hash_mod` (decl src ln 59)
  asm ln 60, prod ln 59.40, live ln 60, gen 0
    prod ln 59, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `block_pos` (decl src ln 60)
  asm ln 64, prod ln 60.35, live ln 62, gen 0
    prod ln 60, gen 0 →
    prod ln ∞, gen ∞

Computing generations: `key` (decl src ln 53)
  asm ln 17, prod ln 53.0, live ln 56, gen 0
Computing generations: `filter` (decl src ln 53)
  asm ln 18, prod ln 53.0, live ln 56, gen 0
Computing generations: `settings` (decl src ln 54)
  asm ln 19, prod ln 54.0, live ln 56, gen 0
Computing generations: `mod` (decl src ln 56)
  asm ln 23, prod ln 56.30, live ln 58, gen 0
Computing generations: `i` (decl src ln 55)
  asm ln 24, prod ln 55.0, live ln 58, gen 0
  asm ln 55, prod ln 58.42, live ln 58, gen 1
Computing generations: `hash_mod` (decl src ln 59)
  asm ln 44, prod ln 59.40, live ln 60, gen 0
Computing generations: `block_pos` (decl src ln 60)
  asm ln 46, prod ln 60.35, live ln 62, gen 0
Building live ranges: `key` (decl src ln 53)
  asm ln 17, prod ln 53.0, live ln 56, gen 0
    prod ln 53, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `filter` (decl src ln 53)
  asm ln 18, prod ln 53.0, live ln 56, gen 0
    prod ln 53, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `settings` (decl src ln 54)
  asm ln 19, prod ln 54.0, live ln 56, gen 0
    prod ln 54, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `mod` (decl src ln 56)
  asm ln 23, prod ln 56.30, live ln 58, gen 0
    prod ln 56, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `i` (decl src ln 55)
  asm ln 24, prod ln 55.0, live ln 58, gen 0
    prod ln 55, gen 0 →
    prod ln 58, gen 1
  asm ln 55, prod ln 58.42, live ln 58, gen 1
    prod ln 58, gen 1 →
    prod ln ∞, gen ∞
Building live ranges: `hash_mod` (decl src ln 59)
  asm ln 44, prod ln 59.40, live ln 60, gen 0
    prod ln 59, gen 0 →
    prod ln ∞, gen ∞
Building live ranges: `block_pos` (decl src ln 60)
  asm ln 46, prod ln 60.35, live ln 62, gen 0
    prod ln 60, gen 0 →
    prod ln ∞, gen ∞

✅ Before live range coverage
  Covered:   7
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `block_pos` (decl src ln 60) from
  assn asm ln 64, prod ln 60.35, live ln 62, gen 0
  %div = udiv i64 %10, 8, l60 c35
  (UDiv w64 (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
                     (Mul w64 0x8
                              (ReadLSB w64 0x8 filter.deref)))
           0x8)
and
  assn asm ln 46, prod ln 60.35, live ln 62, gen 0
  %div = lshr i64 %rem, 3, l60 c35
  (LShr w64 (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
                     (Shl w64 (ReadLSB w64 0x8 filter.deref)
                              0x3))
           0x3)
Query to parse
array key.deref.e0.deref[4] : w32 -> w8 = symbolic
array filter.deref[16] : w32 -> w8 = symbolic
array key.deref.e0.deref[4] : w32 -> w8 = symbolic
array filter.deref[16] : w32 -> w8 = symbolic
(query [] (Eq (UDiv w64 (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
                         (Mul w64 0x8
                                  (ReadLSB w64 0x8 filter.deref)))
               0x8)
     (LShr w64 (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
                         (Shl w64 (ReadLSB w64 0x8 filter.deref)
                                  0x3))
               0x3)))
Parsed query
(Eq (UDiv w64 (URem w64 N0:(ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
                         (Mul w64 0x8
                                  N1:(ReadLSB w64 0x8 filter.deref)))
               0x8)
     (LShr w64 (URem w64 N0 (Shl w64 N1 0x3))
               0x3))

Checking equivalence of `filter` (decl src ln 53) from
  assn asm ln 26, prod ln 53.0, live ln 56, gen 0
  %struct.bloom_filter.4* %filter
  0xE6F1B410FC4C542C
and
  assn asm ln 18, prod ln 53.0, live ln 56, gen 0
  %struct.bloom_filter.7* %filter
  0xE6F1B410FC4C542C

Checking equivalence of `hash_mod` (decl src ln 59) from
  assn asm ln 60, prod ln 59.40, live ln 60, gen 0
  %rem = urem i64 %conv, %9, !klee.check.div !80, l59 c40
  (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
           (Mul w64 0x8
                    (ReadLSB w64 0x8 filter.deref)))
and
  assn asm ln 44, prod ln 59.40, live ln 60, gen 0
  %rem = urem i64 %conv, %mul, !klee.check.div !82, l59 c40
  (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
           (Shl w64 (ReadLSB w64 0x8 filter.deref)
                    0x3))
Query to parse
array key.deref.e0.deref[4] : w32 -> w8 = symbolic
array filter.deref[16] : w32 -> w8 = symbolic
array key.deref.e0.deref[4] : w32 -> w8 = symbolic
array filter.deref[16] : w32 -> w8 = symbolic
(query [] (Eq (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
               (Mul w64 0x8
                        (ReadLSB w64 0x8 filter.deref)))
     (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
               (Shl w64 (ReadLSB w64 0x8 filter.deref)
                        0x3))))
Parsed query
(Eq (URem w64 N0:(ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
               (Mul w64 0x8
                        N1:(ReadLSB w64 0x8 filter.deref)))
     (URem w64 N0 (Shl w64 N1 0x3)))

Checking equivalence of `i` (decl src ln 55) from
  assn asm ln 37, prod ln 58.10, live ln 58, gen 0
  i32 0
  0x0
and
  assn asm ln 24, prod ln 55.0, live ln 58, gen 0
  i32 0
  0x0

Checking equivalence of `i` (decl src ln 55) from
  assn asm ln 84, prod ln 58.42, live ln 58, gen 1
  %inc = add nsw i32 %16, 1, l58 c42
  0x1
and
  assn asm ln 55, prod ln 58.42, live ln 58, gen 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l58 c42
  0x1

Checking equivalence of `key` (decl src ln 53) from
  assn asm ln 24, prod ln 53.0, live ln 56, gen 0
  %struct.bloom_key.3* %key
  0x5A648A95DF382683
and
  assn asm ln 17, prod ln 53.0, live ln 56, gen 0
  %struct.bloom_key.6* %key
  0x5A648A95DF382683

Checking equivalence of `mod` (decl src ln 56) from
  assn asm ln 36, prod ln 56.30, live ln 58, gen 0
  %mul = mul i64 %1, 8, l56 c30
  (Mul w64 0x8
          (ReadLSB w64 0x8 filter.deref))
and
  assn asm ln 23, prod ln 56.30, live ln 58, gen 0
  %mul = shl i64 %0, 3, l56 c30
  (Shl w64 (ReadLSB w64 0x8 filter.deref)
          0x3)
Query to parse
array filter.deref[16] : w32 -> w8 = symbolic
array filter.deref[16] : w32 -> w8 = symbolic
(query [] (Eq (Mul w64 0x8
              (ReadLSB w64 0x8 filter.deref))
     (Shl w64 (ReadLSB w64 0x8 filter.deref)
              0x3)))
Parsed query
(Eq (Mul w64 0x8
              N0:(ReadLSB w64 0x8 filter.deref))
     (Shl w64 N0 0x3))

Checking equivalence of `settings` (decl src ln 54) from
  assn asm ln 28, prod ln 54.0, live ln 56, gen 0
  %struct.bloom_filter_settings.5* %settings
  0x448200A330922F9A
and
  assn asm ln 19, prod ln 54.0, live ln 56, gen 0
  %struct.bloom_filter_settings.8* %settings
  0x448200A330922F9A

✅ Before symbolic values checked against after
  Matching:    8
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `block_pos` (decl src ln 60) from
  assn asm ln 46, prod ln 60.35, live ln 62, gen 0
  %div = lshr i64 %rem, 3, l60 c35
  (LShr w64 (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
                     (Shl w64 (ReadLSB w64 0x8 filter.deref)
                              0x3))
           0x3)
and
  assn asm ln 64, prod ln 60.35, live ln 62, gen 0
  %div = udiv i64 %10, 8, l60 c35
  (UDiv w64 (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
                     (Mul w64 0x8
                              (ReadLSB w64 0x8 filter.deref)))
           0x8)
Query to parse
array key.deref.e0.deref[4] : w32 -> w8 = symbolic
array filter.deref[16] : w32 -> w8 = symbolic
array key.deref.e0.deref[4] : w32 -> w8 = symbolic
array filter.deref[16] : w32 -> w8 = symbolic
(query [] (Eq (LShr w64 (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
                         (Shl w64 (ReadLSB w64 0x8 filter.deref)
                                  0x3))
               0x3)
     (UDiv w64 (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
                         (Mul w64 0x8
                                  (ReadLSB w64 0x8 filter.deref)))
               0x8)))
Parsed query
(Eq (LShr w64 (URem w64 N0:(ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
                         (Shl w64 N1:(ReadLSB w64 0x8 filter.deref)
                                  0x3))
               0x3)
     (UDiv w64 (URem w64 N0 (Mul w64 0x8 N1))
               0x8))

Checking equivalence of `filter` (decl src ln 53) from
  assn asm ln 18, prod ln 53.0, live ln 56, gen 0
  %struct.bloom_filter.7* %filter
  0xE6F1B410FC4C542C
and
  assn asm ln 26, prod ln 53.0, live ln 56, gen 0
  %struct.bloom_filter.4* %filter
  0xE6F1B410FC4C542C

Checking equivalence of `hash_mod` (decl src ln 59) from
  assn asm ln 44, prod ln 59.40, live ln 60, gen 0
  %rem = urem i64 %conv, %mul, !klee.check.div !82, l59 c40
  (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
           (Shl w64 (ReadLSB w64 0x8 filter.deref)
                    0x3))
and
  assn asm ln 60, prod ln 59.40, live ln 60, gen 0
  %rem = urem i64 %conv, %9, !klee.check.div !80, l59 c40
  (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
           (Mul w64 0x8
                    (ReadLSB w64 0x8 filter.deref)))
Query to parse
array key.deref.e0.deref[4] : w32 -> w8 = symbolic
array filter.deref[16] : w32 -> w8 = symbolic
array key.deref.e0.deref[4] : w32 -> w8 = symbolic
array filter.deref[16] : w32 -> w8 = symbolic
(query [] (Eq (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
               (Shl w64 (ReadLSB w64 0x8 filter.deref)
                        0x3))
     (URem w64 (ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
               (Mul w64 0x8
                        (ReadLSB w64 0x8 filter.deref)))))
Parsed query
(Eq (URem w64 N0:(ZExt w64 (ReadLSB w32 0x0 key.deref.e0.deref))
               (Shl w64 N1:(ReadLSB w64 0x8 filter.deref)
                        0x3))
     (URem w64 N0 (Mul w64 0x8 N1)))

Checking equivalence of `i` (decl src ln 55) from
  assn asm ln 24, prod ln 55.0, live ln 58, gen 0
  i32 0
  0x0
and
  assn asm ln 37, prod ln 58.10, live ln 58, gen 0
  i32 0
  0x0

Checking equivalence of `i` (decl src ln 55) from
  assn asm ln 55, prod ln 58.42, live ln 58, gen 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, l58 c42
  0x1
and
  assn asm ln 84, prod ln 58.42, live ln 58, gen 1
  %inc = add nsw i32 %16, 1, l58 c42
  0x1

Checking equivalence of `key` (decl src ln 53) from
  assn asm ln 17, prod ln 53.0, live ln 56, gen 0
  %struct.bloom_key.6* %key
  0x5A648A95DF382683
and
  assn asm ln 24, prod ln 53.0, live ln 56, gen 0
  %struct.bloom_key.3* %key
  0x5A648A95DF382683

Checking equivalence of `mod` (decl src ln 56) from
  assn asm ln 23, prod ln 56.30, live ln 58, gen 0
  %mul = shl i64 %0, 3, l56 c30
  (Shl w64 (ReadLSB w64 0x8 filter.deref)
          0x3)
and
  assn asm ln 36, prod ln 56.30, live ln 58, gen 0
  %mul = mul i64 %1, 8, l56 c30
  (Mul w64 0x8
          (ReadLSB w64 0x8 filter.deref))
Query to parse
array filter.deref[16] : w32 -> w8 = symbolic
array filter.deref[16] : w32 -> w8 = symbolic
(query [] (Eq (Shl w64 (ReadLSB w64 0x8 filter.deref)
              0x3)
     (Mul w64 0x8
              (ReadLSB w64 0x8 filter.deref))))
Parsed query
(Eq (Shl w64 N0:(ReadLSB w64 0x8 filter.deref)
              0x3)
     (Mul w64 0x8 N0))

Checking equivalence of `settings` (decl src ln 54) from
  assn asm ln 19, prod ln 54.0, live ln 56, gen 0
  %struct.bloom_filter_settings.8* %settings
  0x448200A330922F9A
and
  assn asm ln 28, prod ln 54.0, live ln 56, gen 0
  %struct.bloom_filter_settings.5* %settings
  0x448200A330922F9A

✅ After symbolic values checked against before
  Matching:    8
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Function `get_bitmask`

✅ Before and after function names match

### Variables

Before variable `pos` (decl src ln 49)
Store to `pos` (decl src ln 49), asm ln 98
  arg 0
  Added assignment asm ln 98, prod ln 49.0, live ln 50, gen 0
Computing generations: `pos` (decl src ln 49)
  asm ln 98, prod ln 49.0, live ln 50, gen 0

After variable `pos` (decl src ln 49)
@dbg.value mapping for `pos` (decl src ln 49), asm ln 77
Value produced for `pos` (decl src ln 49), asm ln 77
  arg 0
  Added assignment asm ln 77, prod ln 49.0, live ln 50, gen 0
Computing generations: `pos` (decl src ln 49)
  asm ln 77, prod ln 49.0, live ln 50, gen 0

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `pos`
  i32 %pos
  (ReadLSB w32 0x0 pos)
[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_overshift_check.c`
[0m
#### After values

Collected value for `pos`
  i32 %pos
  (ReadLSB w32 0x0 pos)
[0;35mKLEE: WARNING: Unable to load source file `runtime/Intrinsic/klee_overshift_check.c`
[0m
### Assignments

Computing generations: `pos` (decl src ln 49)
  asm ln 98, prod ln 49.0, live ln 50, gen 0
Building live ranges: `pos` (decl src ln 49)
  asm ln 98, prod ln 49.0, live ln 50, gen 0
    prod ln 49, gen 0 →
    prod ln ∞, gen ∞

Computing generations: `pos` (decl src ln 49)
  asm ln 77, prod ln 49.0, live ln 50, gen 0
Building live ranges: `pos` (decl src ln 49)
  asm ln 77, prod ln 49.0, live ln 50, gen 0
    prod ln 49, gen 0 →
    prod ln ∞, gen ∞

✅ Before live range coverage
  Covered:   1
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

#### Check before against after

Checking equivalence of `pos` (decl src ln 49) from
  assn asm ln 98, prod ln 49.0, live ln 50, gen 0
  i32 %pos
  (ReadLSB w32 0x0 pos)
and
  assn asm ln 77, prod ln 49.0, live ln 50, gen 0
  i32 %pos
  (ReadLSB w32 0x0 pos)
Query to parse
array pos[4] : w32 -> w8 = symbolic
array pos[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 pos)
     (ReadLSB w32 0x0 pos)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 pos)
     N0)

✅ Before symbolic values checked against after
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

Checking equivalence of `pos` (decl src ln 49) from
  assn asm ln 77, prod ln 49.0, live ln 50, gen 0
  i32 %pos
  (ReadLSB w32 0x0 pos)
and
  assn asm ln 98, prod ln 49.0, live ln 50, gen 0
  i32 %pos
  (ReadLSB w32 0x0 pos)
Query to parse
array pos[4] : w32 -> w8 = symbolic
array pos[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 pos)
     (ReadLSB w32 0x0 pos)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 pos)
     N0)

✅ After symbolic values checked against before
  Matching:    1
  Mismatched:  0
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
