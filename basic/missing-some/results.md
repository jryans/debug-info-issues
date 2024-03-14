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
++ mkdir -p klee-out-O1
++ /Users/jryans/Projects/LLVM/llvm/builds/release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1/final.bc example-O1.ll
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

Load from declared address of `n` (decl src ln 3), asm ln 29
  %6 = load i32, i32* %n.addr, l6 c11, asm ln 29
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 29, prod ln 6.11, live ln 7, enc None
Load from declared address of `n` (decl src ln 3), asm ln 23
  %3 = load i32, i32* %n.addr, l5 c19, asm ln 23
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 23, prod ln 5.19, live ln 6, enc None
Load from declared address of `n` (decl src ln 3), asm ln 15
  %0 = load i32, i32* %n.addr, l4 c11, asm ln 15
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 15, prod ln 4.11, live ln 5, enc None
Store to declared address of `n` (decl src ln 3), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 3.0, live ln 4, enc None
Load from declared address of `x` (decl src ln 4), asm ln 32
  %7 = load i32, i32* %x, l7 c7, asm ln 32
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 32, prod ln 7.7, live ln 8, enc None
Store to declared address of `x` (decl src ln 4), asm ln 31
  %add2 = add nsw i32 %5, %6, l6 c9, asm ln 30
  Added assignment asm ln 31, prod ln 6.9, live ln 7, enc None
Load from declared address of `x` (decl src ln 4), asm ln 21
  %2 = load i32, i32* %x, l5 c11, asm ln 21
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 21, prod ln 5.11, live ln 6, enc None
Load from declared address of `x` (decl src ln 4), asm ln 18
  %1 = load i32, i32* %x, l4 c23, asm ln 18
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 18, prod ln 4.23, live ln 5, enc None
Store to declared address of `x` (decl src ln 4), asm ln 17
  %mul = mul nsw i32 %0, 2, l4 c13, asm ln 16
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 17, prod ln 4.13, live ln 5, enc None
Load from declared address of `y` (decl src ln 5), asm ln 35
  %8 = load i32, i32* %y, l8 c10, asm ln 35
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 35, prod ln 8.10, live ln 9, enc None
Store to declared address of `y` (decl src ln 5), asm ln 34
  %mul3 = mul nsw i32 %7, 2, l7 c9, asm ln 33
  Added assignment asm ln 34, prod ln 7.9, live ln 8, enc None
Load from declared address of `y` (decl src ln 5), asm ln 28
  %5 = load i32, i32* %y, l6 c7, asm ln 28
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 28, prod ln 6.7, live ln 7, enc None
Load from declared address of `y` (decl src ln 5), asm ln 26
  %4 = load i32, i32* %y, l5 c27, asm ln 26
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 26, prod ln 5.27, live ln 6, enc None
Store to declared address of `y` (decl src ln 5), asm ln 25
  %add1 = add nsw i32 %add, %3, l5 c17, asm ln 24
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25, prod ln 5.17, live ln 6, enc None

#### After variables

Value produced for `n` (decl src ln 3), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 3.0, live ln 4, enc None
Value produced for `x` (decl src ln 4), asm ln 11
  %mul = shl nsw i32 %n, 1, l4 c13, asm ln 10
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 11, prod ln 4.13, live ln 5, enc None
Value produced for `y` (decl src ln 5), asm ln 15
  %add1 = add i32 %add, %mul, l5 c17, asm ln 14
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 15, prod ln 5.17, live ln 6, enc None
Value produced for `y` (decl src ln 5), asm ln 19
  %mul3 = shl nsw i32 %add2, 1, l7 c9, asm ln 18
  Added assignment asm ln 19, prod ln 7.9, live ln 8, enc None

#### Summary

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  Assignment asm ln 12, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `n`
  Assignment asm ln 15, prod ln 4.11, live ln 5, enc 1
  %0 = load i32, i32* %n.addr, l4 c11
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `x`
  Assignment asm ln 17, prod ln 4.13, live ln 5, enc 0
  %mul = mul nsw i32 %0, 2, l4 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
Collected value for `x`
  Assignment asm ln 18, prod ln 4.23, live ln 5, enc 1
  %1 = load i32, i32* %x, l4 c23
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
Collected value for `x`
  Assignment asm ln 21, prod ln 5.11, live ln 6, enc 2
  %2 = load i32, i32* %x, l5 c11
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
Collected value for `n`
  Assignment asm ln 23, prod ln 5.19, live ln 6, enc 2
  %3 = load i32, i32* %n.addr, l5 c19
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `y`
  Assignment asm ln 25, prod ln 5.17, live ln 6, enc 0
  %add1 = add nsw i32 %add, %3, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) example.n))
                   N0))
Collected value for `y`
  Assignment asm ln 26, prod ln 5.27, live ln 6, enc 1
  %4 = load i32, i32* %y, l5 c27
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) example.n))
                   N0))
Collected value for `y`
  Assignment asm ln 28, prod ln 6.7, live ln 7, enc 2
  %5 = load i32, i32* %y, l6 c7
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) example.n))
                   N0))
Collected value for `n`
  Assignment asm ln 29, prod ln 6.11, live ln 7, enc 3
  %6 = load i32, i32* %n.addr, l6 c11
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `x`
  Assignment asm ln 31, prod ln 6.9, live ln 7, enc 3
  %add2 = add nsw i32 %5, %6, l6 c9
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                     N0:(ReadLSB w32 (w32 0x0) example.n))
                            N0)
                   N0))
Collected value for `x`
  Assignment asm ln 32, prod ln 7.7, live ln 8, enc 4
  %7 = load i32, i32* %x, l7 c7
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                     N0:(ReadLSB w32 (w32 0x0) example.n))
                            N0)
                   N0))
Collected value for `y`
  Assignment asm ln 34, prod ln 7.9, live ln 8, enc 3
  %mul3 = mul nsw i32 %7, 2, l7 c9
  (Mul w32 (w32 0x2)
          (Add w32 (w32 0x4)
                   (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                              N0:(ReadLSB w32 (w32 0x0) example.n))
                                     N0)
                            N0)))
Collected value for `y`
  Assignment asm ln 35, prod ln 8.10, live ln 9, enc 4
  %8 = load i32, i32* %y, l8 c10
  (Mul w32 (w32 0x2)
          (Add w32 (w32 0x4)
                   (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                              N0:(ReadLSB w32 (w32 0x0) example.n))
                                     N0)
                            N0)))

#### After values

Collected value for `n`
  Assignment asm ln 9, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `x`
  Assignment asm ln 11, prod ln 4.13, live ln 5, enc 0
  %mul = shl nsw i32 %n, 1, l4 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) example.n)
          (w32 0x1))
Collected value for `y`
  Assignment asm ln 15, prod ln 5.17, live ln 6, enc 0
  %add1 = add i32 %add, %mul, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 N0:(ReadLSB w32 (w32 0x0) example.n)
                   (Shl w32 N0 (w32 0x1))))
Collected value for `y`
  Assignment asm ln 19, prod ln 7.9, live ln 8, enc 1
  %mul3 = shl nsw i32 %add2, 1, l7 c9
  (Shl w32 (Add w32 (w32 0x4)
                   (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) example.n)
                                     (Shl w32 N0 (w32 0x1)))
                            N0))
          (w32 0x1))

### Assignments

#### Collation

Filtering redundant before assignments: `n` (decl src ln 3)

Checking equivalence of `n` (decl src ln 3) from
  assn asm ln 15, prod ln 4.11, live ln 5, enc 1
  %0 = load i32, i32* %n.addr, l4 c11
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 12, prod ln 3.0, live ln 4, enc 0
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
🔔 Removing: asm ln 15, prod ln 4.11, live ln 5, enc 1

Checking equivalence of `n` (decl src ln 3) from
  assn asm ln 23, prod ln 5.19, live ln 6, enc 2
  %3 = load i32, i32* %n.addr, l5 c19
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 12, prod ln 3.0, live ln 4, enc 0
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
🔔 Removing: asm ln 23, prod ln 5.19, live ln 6, enc 2

Checking equivalence of `n` (decl src ln 3) from
  assn asm ln 29, prod ln 6.11, live ln 7, enc 3
  %6 = load i32, i32* %n.addr, l6 c11
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 12, prod ln 3.0, live ln 4, enc 0
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
🔔 Removing: asm ln 29, prod ln 6.11, live ln 7, enc 3

Filtering redundant before assignments: `x` (decl src ln 4)

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 18, prod ln 4.23, live ln 5, enc 1
  %1 = load i32, i32* %x, l4 c23
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
and
  assn asm ln 17, prod ln 4.13, live ln 5, enc 0
  %mul = mul nsw i32 %0, 2, l4 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Mul w32 (w32 0x2)
                 (ReadLSB w32 (w32 0x0) example.n))
     N0))
Parsed query
(Eq N0:(Mul w32 (w32 0x2)
                 (ReadLSB w32 (w32 0x0) example.n))
     N0)
🔔 Removing: asm ln 18, prod ln 4.23, live ln 5, enc 1

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 21, prod ln 5.11, live ln 6, enc 2
  %2 = load i32, i32* %x, l5 c11
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
and
  assn asm ln 17, prod ln 4.13, live ln 5, enc 0
  %mul = mul nsw i32 %0, 2, l4 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Mul w32 (w32 0x2)
                 (ReadLSB w32 (w32 0x0) example.n))
     N0))
Parsed query
(Eq N0:(Mul w32 (w32 0x2)
                 (ReadLSB w32 (w32 0x0) example.n))
     N0)
🔔 Removing: asm ln 21, prod ln 5.11, live ln 6, enc 2

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 31, prod ln 6.9, live ln 7, enc 3
  %add2 = add nsw i32 %5, %6, l6 c9
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                     N0:(ReadLSB w32 (w32 0x0) example.n))
                            N0)
                   N0))
and
  assn asm ln 17, prod ln 4.13, live ln 5, enc 0
  %mul = mul nsw i32 %0, 2, l4 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x4)
              (Add w32 (Add w32 N0:(Mul w32 (w32 0x2)
                                            N1:(ReadLSB w32 (w32 0x0) example.n))
                                N1)
                       N1))
     N0))
Parsed query
(Eq (Add w32 (w32 0x4)
              (Add w32 (Add w32 N0:(Mul w32 (w32 0x2)
                                            N1:(ReadLSB w32 (w32 0x0) example.n))
                                N1)
                       N1))
     N0)

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 32, prod ln 7.7, live ln 8, enc 4
  %7 = load i32, i32* %x, l7 c7
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                     N0:(ReadLSB w32 (w32 0x0) example.n))
                            N0)
                   N0))
and
  assn asm ln 31, prod ln 6.9, live ln 7, enc 3
  %add2 = add nsw i32 %5, %6, l6 c9
  (Add w32 (w32 0x4)
          (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                     N0:(ReadLSB w32 (w32 0x0) example.n))
                            N0)
                   N0))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Add w32 (w32 0x4)
                 (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                            N1:(ReadLSB w32 (w32 0x0) example.n))
                                   N1)
                          N1))
     N0))
Parsed query
(Eq N0:(Add w32 (w32 0x4)
                 (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                            N1:(ReadLSB w32 (w32 0x0) example.n))
                                   N1)
                          N1))
     N0)
🔔 Removing: asm ln 32, prod ln 7.7, live ln 8, enc 4

Filtering redundant before assignments: `y` (decl src ln 5)

Checking equivalence of `y` (decl src ln 5) from
  assn asm ln 26, prod ln 5.27, live ln 6, enc 1
  %4 = load i32, i32* %y, l5 c27
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) example.n))
                   N0))
and
  assn asm ln 25, prod ln 5.17, live ln 6, enc 0
  %add1 = add nsw i32 %add, %3, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) example.n))
                   N0))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Add w32 (w32 0x4)
                 (Add w32 (Mul w32 (w32 0x2)
                                   N1:(ReadLSB w32 (w32 0x0) example.n))
                          N1))
     N0))
Parsed query
(Eq N0:(Add w32 (w32 0x4)
                 (Add w32 (Mul w32 (w32 0x2)
                                   N1:(ReadLSB w32 (w32 0x0) example.n))
                          N1))
     N0)
🔔 Removing: asm ln 26, prod ln 5.27, live ln 6, enc 1

Checking equivalence of `y` (decl src ln 5) from
  assn asm ln 28, prod ln 6.7, live ln 7, enc 2
  %5 = load i32, i32* %y, l6 c7
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) example.n))
                   N0))
and
  assn asm ln 25, prod ln 5.17, live ln 6, enc 0
  %add1 = add nsw i32 %add, %3, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) example.n))
                   N0))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Add w32 (w32 0x4)
                 (Add w32 (Mul w32 (w32 0x2)
                                   N1:(ReadLSB w32 (w32 0x0) example.n))
                          N1))
     N0))
Parsed query
(Eq N0:(Add w32 (w32 0x4)
                 (Add w32 (Mul w32 (w32 0x2)
                                   N1:(ReadLSB w32 (w32 0x0) example.n))
                          N1))
     N0)
🔔 Removing: asm ln 28, prod ln 6.7, live ln 7, enc 2

Checking equivalence of `y` (decl src ln 5) from
  assn asm ln 34, prod ln 7.9, live ln 8, enc 3
  %mul3 = mul nsw i32 %7, 2, l7 c9
  (Mul w32 (w32 0x2)
          (Add w32 (w32 0x4)
                   (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                              N0:(ReadLSB w32 (w32 0x0) example.n))
                                     N0)
                            N0)))
and
  assn asm ln 25, prod ln 5.17, live ln 6, enc 0
  %add1 = add nsw i32 %add, %3, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) example.n))
                   N0))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (w32 0x2)
              (Add w32 (w32 0x4)
                       (Add w32 N0:(Add w32 (Mul w32 (w32 0x2)
                                                     N1:(ReadLSB w32 (w32 0x0) example.n))
                                            N1)
                                N1)))
     (Add w32 (w32 0x4) N0)))
Parsed query
(Eq (Mul w32 (w32 0x2)
              (Add w32 (w32 0x4)
                       (Add w32 N0:(Add w32 (Mul w32 (w32 0x2)
                                                     N1:(ReadLSB w32 (w32 0x0) example.n))
                                            N1)
                                N1)))
     (Add w32 (w32 0x4) N0))

Checking equivalence of `y` (decl src ln 5) from
  assn asm ln 35, prod ln 8.10, live ln 9, enc 4
  %8 = load i32, i32* %y, l8 c10
  (Mul w32 (w32 0x2)
          (Add w32 (w32 0x4)
                   (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                              N0:(ReadLSB w32 (w32 0x0) example.n))
                                     N0)
                            N0)))
and
  assn asm ln 34, prod ln 7.9, live ln 8, enc 3
  %mul3 = mul nsw i32 %7, 2, l7 c9
  (Mul w32 (w32 0x2)
          (Add w32 (w32 0x4)
                   (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                              N0:(ReadLSB w32 (w32 0x0) example.n))
                                     N0)
                            N0)))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Mul w32 (w32 0x2)
                 (Add w32 (w32 0x4)
                          (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                                     N1:(ReadLSB w32 (w32 0x0) example.n))
                                            N1)
                                   N1)))
     N0))
Parsed query
(Eq N0:(Mul w32 (w32 0x2)
                 (Add w32 (w32 0x4)
                          (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                                     N1:(ReadLSB w32 (w32 0x0) example.n))
                                            N1)
                                   N1)))
     N0)
🔔 Removing: asm ln 35, prod ln 8.10, live ln 9, enc 4

Filtering redundant after assignments: `y` (decl src ln 5)

Checking equivalence of `y` (decl src ln 5) from
  assn asm ln 19, prod ln 7.9, live ln 8, enc 1
  %mul3 = shl nsw i32 %add2, 1, l7 c9
  (Shl w32 (Add w32 (w32 0x4)
                   (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) example.n)
                                     (Shl w32 N0 (w32 0x1)))
                            N0))
          (w32 0x1))
and
  assn asm ln 15, prod ln 5.17, live ln 6, enc 0
  %add1 = add i32 %add, %mul, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 N0:(ReadLSB w32 (w32 0x0) example.n)
                   (Shl w32 N0 (w32 0x1))))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (Add w32 (w32 0x4)
                       (Add w32 N0:(Add w32 N1:(ReadLSB w32 (w32 0x0) example.n)
                                            (Shl w32 N1 (w32 0x1)))
                                N1))
              (w32 0x1))
     (Add w32 (w32 0x4) N0)))
Parsed query
(Eq (Shl w32 (Add w32 (w32 0x4)
                       (Add w32 N0:(Add w32 N1:(ReadLSB w32 (w32 0x0) example.n)
                                            (Shl w32 N1 (w32 0x1)))
                                N1))
              (w32 0x1))
     (Add w32 (w32 0x4) N0))

Collating encountered before assignments: `n` (decl src ln 3)
  asm ln 12, prod ln 3.0, live ln 4, enc 0
Collating encountered before assignments: `x` (decl src ln 4)
  asm ln 17, prod ln 4.13, live ln 5, enc 0
  asm ln 31, prod ln 6.9, live ln 7, enc 1
Collating encountered before assignments: `y` (decl src ln 5)
  asm ln 25, prod ln 5.17, live ln 6, enc 0
  asm ln 34, prod ln 7.9, live ln 8, enc 1

Collating encountered after assignments: `n` (decl src ln 3)
  asm ln 9, prod ln 3.0, live ln 4, enc 0
Collating encountered after assignments: `x` (decl src ln 4)
  asm ln 11, prod ln 4.13, live ln 5, enc 0
Collating encountered after assignments: `y` (decl src ln 5)
  asm ln 15, prod ln 5.17, live ln 6, enc 0
  asm ln 19, prod ln 7.9, live ln 8, enc 1

#### Check after using before as reference

Checking equivalence of `n` (decl src ln 3) from
  assn asm ln 9, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 12, prod ln 3.0, live ln 4, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) example.n)
     (ReadLSB w32 (w32 0x0) example.n)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) example.n)
     N0)
✅ Before `n` (decl src ln 3) assn asm ln 12, prod ln 3.0, live ln 4, enc 0 symbolic value matches after assn asm ln 9, prod ln 3.0, live ln 4, enc 0

✅ After `n` assns checked using before as reference
Assignments:         n
  Reference:         1
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

❌ Before encountered assn for `x` (decl src ln 4) at asm ln 31, prod ln 6.9, live ln 7, enc 1 not found in after

Checking equivalence of `x` (decl src ln 4) from
  assn asm ln 11, prod ln 4.13, live ln 5, enc 0
  %mul = shl nsw i32 %n, 1, l4 c13
  (Shl w32 (ReadLSB w32 (w32 0x0) example.n)
          (w32 0x1))
and
  assn asm ln 17, prod ln 4.13, live ln 5, enc 0
  %mul = mul nsw i32 %0, 2, l4 c13
  (Mul w32 (w32 0x2)
          (ReadLSB w32 (w32 0x0) example.n))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (ReadLSB w32 (w32 0x0) example.n)
              (w32 0x1))
     (Mul w32 (w32 0x2)
              (ReadLSB w32 (w32 0x0) example.n))))
Parsed query
(Eq (Shl w32 N0:(ReadLSB w32 (w32 0x0) example.n)
              (w32 0x1))
     (Mul w32 (w32 0x2) N0))
✅ Before `x` (decl src ln 4) assn asm ln 17, prod ln 4.13, live ln 5, enc 0 symbolic value matches after assn asm ln 11, prod ln 4.13, live ln 5, enc 0

❌ After `x` assns checked using before as reference
Assignments:         x
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   1
  Matching Value:    1
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   1
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

Checking equivalence of `y` (decl src ln 5) from
  assn asm ln 15, prod ln 5.17, live ln 6, enc 0
  %add1 = add i32 %add, %mul, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 N0:(ReadLSB w32 (w32 0x0) example.n)
                   (Shl w32 N0 (w32 0x1))))
and
  assn asm ln 25, prod ln 5.17, live ln 6, enc 0
  %add1 = add nsw i32 %add, %3, l5 c17
  (Add w32 (w32 0x4)
          (Add w32 (Mul w32 (w32 0x2)
                            N0:(ReadLSB w32 (w32 0x0) example.n))
                   N0))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x4)
              (Add w32 N0:(ReadLSB w32 (w32 0x0) example.n)
                       (Shl w32 N0 (w32 0x1))))
     (Add w32 (w32 0x4)
              (Add w32 (Mul w32 (w32 0x2)
                                N1:(ReadLSB w32 (w32 0x0) example.n))
                       N1))))
Parsed query
(Eq (Add w32 (w32 0x4)
              (Add w32 N0:(ReadLSB w32 (w32 0x0) example.n)
                       (Shl w32 N0 (w32 0x1))))
     (Add w32 (w32 0x4)
              (Add w32 (Mul w32 (w32 0x2) N0) N0)))
✅ Before `y` (decl src ln 5) assn asm ln 25, prod ln 5.17, live ln 6, enc 0 symbolic value matches after assn asm ln 15, prod ln 5.17, live ln 6, enc 0

Checking equivalence of `y` (decl src ln 5) from
  assn asm ln 19, prod ln 7.9, live ln 8, enc 1
  %mul3 = shl nsw i32 %add2, 1, l7 c9
  (Shl w32 (Add w32 (w32 0x4)
                   (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) example.n)
                                     (Shl w32 N0 (w32 0x1)))
                            N0))
          (w32 0x1))
and
  assn asm ln 34, prod ln 7.9, live ln 8, enc 1
  %mul3 = mul nsw i32 %7, 2, l7 c9
  (Mul w32 (w32 0x2)
          (Add w32 (w32 0x4)
                   (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                              N0:(ReadLSB w32 (w32 0x0) example.n))
                                     N0)
                            N0)))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (Add w32 (w32 0x4)
                       (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) example.n)
                                         (Shl w32 N0 (w32 0x1)))
                                N0))
              (w32 0x1))
     (Mul w32 (w32 0x2)
              (Add w32 (w32 0x4)
                       (Add w32 (Add w32 (Mul w32 (w32 0x2)
                                                  N1:(ReadLSB w32 (w32 0x0) example.n))
                                         N1)
                                N1)))))
Parsed query
(Eq (Shl w32 (Add w32 (w32 0x4)
                       (Add w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) example.n)
                                         (Shl w32 N0 (w32 0x1)))
                                N0))
              (w32 0x1))
     (Mul w32 (w32 0x2)
              (Add w32 (w32 0x4)
                       (Add w32 (Add w32 (Mul w32 (w32 0x2) N0) N0)
                                N0))))
✅ Before `y` (decl src ln 5) assn asm ln 34, prod ln 7.9, live ln 8, enc 1 symbolic value matches after assn asm ln 19, prod ln 7.9, live ln 8, enc 1

✅ After `y` assns checked using before as reference
Assignments:         y
  Reference:         2
  Test:              2
Matching:
  Matching Coords:   2
  Matching Value:    2
Consistency Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
Availability Errors:
  Ref Not Encount.:  0
  Ref Not in Test:   0
  Test Not Encount.: 0
  Test Not in Ref:   0
Warnings:
  Unused:            0
  Removable:         0
  Unreachable:       0
Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

## Summary

Assignments:
  Reference:                 5
  Test:                      4 ( 80.00% of ref )
Matching:
  Matching Coords:           4 ( 80.00% of ref )
  Matching Value:            4 ( 80.00% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           1 ( 20.00% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Execution:
  Function Covered:          4 (100.00% of test)
  Complete:                  4 (100.00% of test)
  Within Time Limit:         4 (100.00% of test)
  Within Fork Limit:         4 (100.00% of test)

❌ Some consistency checks failed
