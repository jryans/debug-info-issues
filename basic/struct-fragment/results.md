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

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `n` (decl src ln 8), asm ln 33
  %5 = load i32, i32* %n.addr, l12 c13, asm ln 33
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 33, prod ln 12.13, live ln 13, enc None
Load from declared address of `n` (decl src ln 8), asm ln 29
  %4 = load i32, i32* %n.addr, l11 c13, asm ln 29
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 29, prod ln 11.13, live ln 12, enc None
Load from declared address of `n` (decl src ln 8), asm ln 20
  %1 = load i32, i32* %n.addr, l9 c21, asm ln 20
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 20, prod ln 9.21, live ln 10, enc None
Load from declared address of `n` (decl src ln 8), asm ln 17
  %0 = load i32, i32* %n.addr, l9 c18, asm ln 17
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 17, prod ln 9.18, live ln 10, enc None
Store to declared address of `n` (decl src ln 8), asm ln 13
  arg 0
  Added assignment asm ln 13, prod ln 8.0, live ln 9, enc None
Store to declared address of `s` (decl src ln 9), asm ln 18
  %0 = load i32, i32* %n.addr, l9 c18, asm ln 17
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 18, prod ln 9.18, live ln 10, enc None
Store to declared address of `s` (decl src ln 9), asm ln 22
  %add = add nsw i32 %1, 1, l9 c23, asm ln 21
  Added assignment asm ln 22, prod ln 9.23, live ln 10, enc None
Load from declared address of `s` (decl src ln 9), asm ln 24
  %2 = load i32, i32* %a1, l10 c10, asm ln 24
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24, prod ln 10.10, live ln 11, enc None
Load from declared address of `s` (decl src ln 9), asm ln 27
  %3 = load i32, i32* %b2, l10 c21, asm ln 27
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 27, prod ln 10.21, live ln 11, enc None
Store to declared address of `s` (decl src ln 9), asm ln 32
  %mul = mul nsw i32 2, %4, l11 c11, asm ln 30
  Added assignment asm ln 32, prod ln 11.11, live ln 12, enc None
Store to declared address of `s` (decl src ln 9), asm ln 37
  %add5 = add nsw i32 %mul4, 1, l12 c15, asm ln 35
  Added assignment asm ln 37, prod ln 12.15, live ln 13, enc None
Load from declared address of `s` (decl src ln 9), asm ln 39
  %6 = load i32, i32* %a7, l13 c12, asm ln 39
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 39, prod ln 13.12, live ln 14, enc None

#### After variables

Value produced for `n` (decl src ln 8), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 8.0, live ln 9, enc None
Value produced for `s` (decl src ln 9), asm ln 10
  arg 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 10, prod ln 9.0, live ln 10, enc None
Value produced for `s` (decl src ln 9), asm ln 12
  %add = add nsw i32 %n, 1, l9 c23, asm ln 11
  Added assignment asm ln 12, prod ln 9.23, live ln 10, enc None
Value produced for `s` (decl src ln 9), asm ln 16
  %mul = shl nsw i32 %n, 1, l11 c11, asm ln 15
  Added assignment asm ln 16, prod ln 11.11, live ln 13, enc None
Value produced for `s` (decl src ln 9), asm ln 17
  %mul = shl nsw i32 %n, 1, l11 c11, asm ln 15
  Added assignment asm ln 17, prod ln 11.11, live ln 13, enc None

#### Summary

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  Assignment asm ln 13, prod ln 8.0, live ln 9, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `n`
  Assignment asm ln 17, prod ln 9.18, live ln 10, enc 1
  %0 = load i32, i32* %n.addr, l9 c18
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `s`
  Assignment asm ln 18, prod ln 9.18, live ln 10, enc 0
  %0 = load i32, i32* %n.addr, l9 c18
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `n`
  Assignment asm ln 20, prod ln 9.21, live ln 10, enc 2
  %1 = load i32, i32* %n.addr, l9 c21
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `s`
  Assignment asm ln 22, prod ln 9.23, live ln 10, enc 1
  %add = add nsw i32 %1, 1, l9 c23
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) example.n))
Collected value for `s`
  Assignment asm ln 24, prod ln 10.10, live ln 11, enc 2
  %2 = load i32, i32* %a1, l10 c10
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `s`
  Assignment asm ln 27, prod ln 10.21, live ln 11, enc 3
  %3 = load i32, i32* %b2, l10 c21
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) example.n))
Collected value for `n`
  Assignment asm ln 29, prod ln 11.13, live ln 12, enc 3
  %4 = load i32, i32* %n.addr, l11 c13
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `s`
  Assignment asm ln 32, prod ln 11.11, live ln 12, enc 4
  %mul = mul nsw i32 2, %4, l11 c11
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
Collected value for `n`
  Assignment asm ln 33, prod ln 12.13, live ln 13, enc 4
  %5 = load i32, i32* %n.addr, l12 c13
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `s`
  Assignment asm ln 37, prod ln 12.15, live ln 13, enc 5
  %add5 = add nsw i32 %mul4, 1, l12 c15
  (Add w32 (w32 0x1)
          (Mul w32 (w32 0x2)
                   (ReadLSB w32 (w32 0x0) example.n)))
Collected value for `s`
  Assignment asm ln 39, prod ln 13.12, live ln 14, enc 6
  %6 = load i32, i32* %a7, l13 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))

#### After values

Collected value for `n`
  Assignment asm ln 9, prod ln 8.0, live ln 9, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `s`
  Assignment asm ln 10, prod ln 9.0, live ln 10, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `s`
  Assignment asm ln 12, prod ln 9.23, live ln 10, enc 1
  %add = add nsw i32 %n, 1, l9 c23
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) example.n))
Collected value for `s`
  Assignment asm ln 16, prod ln 11.11, live ln 13, enc 2
  %mul = shl nsw i32 %n, 1, l11 c11
  (Shl w32 (ReadLSB w32 (w32 0x0) example.n)
          (w32 0x1))
Collected value for `s`
  Assignment asm ln 17, prod ln 11.11, live ln 13, enc 3
  %mul = shl nsw i32 %n, 1, l11 c11
  (Shl w32 (ReadLSB w32 (w32 0x0) example.n)
          (w32 0x1))

### Assignments

#### Collation

Filtering before assignments: `n` (decl src ln 8)

Checking equivalence of `n` (decl src ln 8) from
  assn asm ln 17, prod ln 9.18, live ln 10, enc 1
  %0 = load i32, i32* %n.addr, l9 c18
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 13, prod ln 8.0, live ln 9, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0)
🔔 Removing: asm ln 17, prod ln 9.18, live ln 10, enc 1

Checking equivalence of `n` (decl src ln 8) from
  assn asm ln 20, prod ln 9.21, live ln 10, enc 2
  %1 = load i32, i32* %n.addr, l9 c21
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 13, prod ln 8.0, live ln 9, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0)
🔔 Removing: asm ln 20, prod ln 9.21, live ln 10, enc 2

Checking equivalence of `n` (decl src ln 8) from
  assn asm ln 29, prod ln 11.13, live ln 12, enc 3
  %4 = load i32, i32* %n.addr, l11 c13
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 13, prod ln 8.0, live ln 9, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0)
🔔 Removing: asm ln 29, prod ln 11.13, live ln 12, enc 3

Checking equivalence of `n` (decl src ln 8) from
  assn asm ln 33, prod ln 12.13, live ln 13, enc 4
  %5 = load i32, i32* %n.addr, l12 c13
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 13, prod ln 8.0, live ln 9, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0)
🔔 Removing: asm ln 33, prod ln 12.13, live ln 13, enc 4

Filtering before assignments: `s` (decl src ln 9)

Checking equivalence of `s` (decl src ln 9) from
  assn asm ln 22, prod ln 9.23, live ln 10, enc 1
  %add = add nsw i32 %1, 1, l9 c23
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) example.n))
and
  assn asm ln 18, prod ln 9.18, live ln 10, enc 0
  %0 = load i32, i32* %n.addr, l9 c18
  (ReadLSB w32 (w32 0x0) example.n)
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) example.n))
     N0))
Parsed query
(Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) example.n))
     N0)

Checking equivalence of `s` (decl src ln 9) from
  assn asm ln 24, prod ln 10.10, live ln 11, enc 2
  %2 = load i32, i32* %a1, l10 c10
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 22, prod ln 9.23, live ln 10, enc 1
  %add = add nsw i32 %1, 1, l9 c23
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) example.n))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     (Add w32 (w32 0x1) N0)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     (Add w32 (w32 0x1) N0))

Checking equivalence of `s` (decl src ln 9) from
  assn asm ln 27, prod ln 10.21, live ln 11, enc 3
  %3 = load i32, i32* %b2, l10 c21
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) example.n))
and
  assn asm ln 24, prod ln 10.10, live ln 11, enc 2
  %2 = load i32, i32* %a1, l10 c10
  (ReadLSB w32 (w32 0x0) example.n)
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) example.n))
     N0))
Parsed query
(Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) example.n))
     N0)

Checking equivalence of `s` (decl src ln 9) from
  assn asm ln 32, prod ln 11.11, live ln 12, enc 4
  %mul = mul nsw i32 2, %4, l11 c11
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
and
  assn asm ln 27, prod ln 10.21, live ln 11, enc 3
  %3 = load i32, i32* %b2, l10 c21
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) example.n))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (w32 0x2)
              N0:(ReadLSB w32 (w32 0x0) example.n))
     (Add w32 (w32 0x1) N0)))
Parsed query
(Eq (Mul w32 (w32 0x2)
              N0:(ReadLSB w32 (w32 0x0) example.n))
     (Add w32 (w32 0x1) N0))

Checking equivalence of `s` (decl src ln 9) from
  assn asm ln 37, prod ln 12.15, live ln 13, enc 5
  %add5 = add nsw i32 %mul4, 1, l12 c15
  (Add w32 (w32 0x1)
          (Mul w32 (w32 0x2)
                   (ReadLSB w32 (w32 0x0) example.n)))
and
  assn asm ln 32, prod ln 11.11, live ln 12, enc 4
  %mul = mul nsw i32 2, %4, l11 c11
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              N0:(Mul w32 (w32 0x2)
                          (ReadLSB w32 (w32 0x0) example.n)))
     N0))
Parsed query
(Eq (Add w32 (w32 0x1)
              N0:(Mul w32 (w32 0x2)
                          (ReadLSB w32 (w32 0x0) example.n)))
     N0)

Checking equivalence of `s` (decl src ln 9) from
  assn asm ln 39, prod ln 13.12, live ln 14, enc 6
  %6 = load i32, i32* %a7, l13 c12
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
and
  assn asm ln 37, prod ln 12.15, live ln 13, enc 5
  %add5 = add nsw i32 %mul4, 1, l12 c15
  (Add w32 (w32 0x1)
          (Mul w32 (w32 0x2)
                   (ReadLSB w32 (w32 0x0) example.n)))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Mul w32 (w32 0x2)
                 (ReadLSB w32 (w32 0x0) example.n))
     (Add w32 (w32 0x1) N0)))
Parsed query
(Eq N0:(Mul w32 (w32 0x2)
                 (ReadLSB w32 (w32 0x0) example.n))
     (Add w32 (w32 0x1) N0))

Filtering after assignments: `s` (decl src ln 9)

Pushed initial value onto stack: (ReadLSB w32 (w32 0x0) example.n)
Current opcode: 4096
Unexpected expression opcode
UNREACHABLE executed at /Users/jryans/Projects/klee/tools/check-debug-info/Variable.cpp:375!
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.	Program arguments: /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x0000000103673d9d llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 61
1  check-debug-info         0x000000010367429b PrintStackTraceSignalHandler(void*) + 27
2  check-debug-info         0x0000000103672333 llvm::sys::RunSignalHandlers() + 115
3  check-debug-info         0x000000010367553f SignalHandler(int) + 223
4  libsystem_platform.dylib 0x00007ff800bb3fdd _sigtramp + 29
5  check-debug-info         0x0000000100a7ea4d unsigned long const& std::__1::min[abi:v15006]<unsigned long>(unsigned long const&, unsigned long const&) + 29
6  libsystem_c.dylib        0x00007ff800aaaa39 abort + 126
7  check-debug-info         0x000000010354a220 llvm::install_out_of_memory_new_handler() + 0
8  check-debug-info         0x00000001009583f4 Assignment::evaluate() + 7348
9  check-debug-info         0x0000000100911f62 checkEquivalence(Variable const&, Assignment&, Assignment&) + 386
10 check-debug-info         0x000000010091369c filterAssignments(llvm::StringRef, llvm::SmallSet<Variable, 8u, std::__1::less<Variable> > const&, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > >&, ExecutionValidity const&) + 860
11 check-debug-info         0x0000000100918f24 checkFunction(llvm::SmallVector<ValuesCollector, 2u>&, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, AssignmentStats&) + 3860
12 check-debug-info         0x000000010091a488 main + 2376
13 dyld                     0x00007ff8007f9366 start + 1942
./check.sh: line 6: 62525 Abort trap: 6           ${CHECK} ${O0_BC} ${O1_BC} ${CHECK_OPTS} "$@"
