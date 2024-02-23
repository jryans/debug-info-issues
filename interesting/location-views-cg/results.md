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
+++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-forks=4 --tsv'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-forks=4 --tsv'
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
++++ CHECK_OPTS='--debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-forks=4 --tsv'
++ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --max-forks=4 --tsv
Checking klee-out-O0/final.bc and klee-out-O1/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variables

Before variable `a` (decl src ln 1)
Store to declared address of `a` (decl src ln 1), asm ln 15
  arg 0
  Added assignment asm ln 15, prod ln 1.0, live ln 2, enc None
Before variable `b` (decl src ln 1)
Store to declared address of `b` (decl src ln 1), asm ln 17
  arg 1
  Added assignment asm ln 17, prod ln 1.0, live ln 2, enc None
Before variable `c` (decl src ln 1)
Store to declared address of `c` (decl src ln 1), asm ln 19
  arg 2
  Added assignment asm ln 19, prod ln 1.0, live ln 2, enc None
Before variable `d` (decl src ln 1)
Store to declared address of `d` (decl src ln 1), asm ln 21
  arg 3
  Added assignment asm ln 21, prod ln 1.0, live ln 2, enc None
Before variable `x` (decl src ln 2)
Store to declared address of `x` (decl src ln 2), asm ln 36
  %sub = sub nsw i32 %5, %4, l4 c5, asm ln 35
  Added assignment asm ln 36, prod ln 4.5, live ln 5, enc None
Store to declared address of `x` (decl src ln 2), asm ln 27
  %add = add nsw i32 %0, %1, l2 c13, asm ln 26
  Added assignment asm ln 27, prod ln 2.13, live ln 3, enc None
Before variable `y` (decl src ln 3)
Store to declared address of `y` (decl src ln 3), asm ln 40
  %add1 = add nsw i32 %7, %6, l5 c5, asm ln 39
  Added assignment asm ln 40, prod ln 5.5, live ln 6, enc None
Store to declared address of `y` (decl src ln 3), asm ln 32
  %mul = mul nsw i32 %2, %3, l3 c13, asm ln 31
  Added assignment asm ln 32, prod ln 3.13, live ln 4, enc None

After variable `a` (decl src ln 1)
Value produced for `a` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.0, live ln 2, enc None
After variable `b` (decl src ln 1)
Value produced for `b` (decl src ln 1), asm ln 10
  arg 1
  Added assignment asm ln 10, prod ln 1.0, live ln 2, enc None
After variable `c` (decl src ln 1)
Value produced for `c` (decl src ln 1), asm ln 11
  arg 2
  Added assignment asm ln 11, prod ln 1.0, live ln 2, enc None
After variable `d` (decl src ln 1)
Value produced for `d` (decl src ln 1), asm ln 12
  arg 3
  Added assignment asm ln 12, prod ln 1.0, live ln 2, enc None
After variable `x` (decl src ln 2)
Value produced for `x` (decl src ln 2), asm ln 14
  %add = add nsw i32 %b, %a, l2 c13, asm ln 13
  Added assignment asm ln 14, prod ln 2.13, live ln 3, enc None
After variable `y` (decl src ln 3)
Value produced for `y` (decl src ln 3), asm ln 16
  %mul = mul nsw i32 %d, %c, l3 c13, asm ln 15
  Added assignment asm ln 16, prod ln 3.13, live ln 4, enc None
After variable `x` (decl src ln 2)
Value produced for `x` (decl src ln 2), asm ln 18
  %sub = sub i32 %add, %mul, l4 c5, asm ln 17
  Added assignment asm ln 18, prod ln 4.5, live ln 5, enc None
After variable `y` (decl src ln 3)
Value produced for `y` (decl src ln 3), asm ln 20
  %add1 = shl nsw i32 %mul, 1, l5 c5, asm ln 19
  Added assignment asm ln 20, prod ln 5.5, live ln 6, enc None

✅ 6 before variables found, 6 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `a`
  i32 %a
  (ReadLSB w32 (w32 0x0) a)
Collected value for `b`
  i32 %b
  (ReadLSB w32 (w32 0x0) b)
Collected value for `c`
  i32 %c
  (ReadLSB w32 (w32 0x0) c)
Collected value for `d`
  i32 %d
  (ReadLSB w32 (w32 0x0) d)
Collected value for `x`
  %add = add nsw i32 %0, %1, l2 c13
  (Add w32 (ReadLSB w32 (w32 0x0) a)
          (ReadLSB w32 (w32 0x0) b))
Collected value for `y`
  %mul = mul nsw i32 %2, %3, l3 c13
  (Mul w32 (ReadLSB w32 (w32 0x0) c)
          (ReadLSB w32 (w32 0x0) d))
Collected value for `x`
  %sub = sub nsw i32 %5, %4, l4 c5
  (Sub w32 (Add w32 (ReadLSB w32 (w32 0x0) a)
                   (ReadLSB w32 (w32 0x0) b))
          (Mul w32 (ReadLSB w32 (w32 0x0) c)
                   (ReadLSB w32 (w32 0x0) d)))
Collected value for `y`
  %add1 = add nsw i32 %7, %6, l5 c5
  (Add w32 N0:(Mul w32 (ReadLSB w32 (w32 0x0) c)
                      (ReadLSB w32 (w32 0x0) d))
          N0)

#### After values

Collected value for `a`
  i32 %a
  (ReadLSB w32 (w32 0x0) a)
Collected value for `b`
  i32 %b
  (ReadLSB w32 (w32 0x0) b)
Collected value for `c`
  i32 %c
  (ReadLSB w32 (w32 0x0) c)
Collected value for `d`
  i32 %d
  (ReadLSB w32 (w32 0x0) d)
Collected value for `x`
  %add = add nsw i32 %b, %a, l2 c13
  (Add w32 (ReadLSB w32 (w32 0x0) b)
          (ReadLSB w32 (w32 0x0) a))
Collected value for `y`
  %mul = mul nsw i32 %d, %c, l3 c13
  (Mul w32 (ReadLSB w32 (w32 0x0) d)
          (ReadLSB w32 (w32 0x0) c))
Collected value for `x`
  %sub = sub i32 %add, %mul, l4 c5
  (Sub w32 (Add w32 (ReadLSB w32 (w32 0x0) b)
                   (ReadLSB w32 (w32 0x0) a))
          (Mul w32 (ReadLSB w32 (w32 0x0) d)
                   (ReadLSB w32 (w32 0x0) c)))
Collected value for `y`
  %add1 = shl nsw i32 %mul, 1, l5 c5
  (Shl w32 (Mul w32 (ReadLSB w32 (w32 0x0) d)
                   (ReadLSB w32 (w32 0x0) c))
          (w32 0x1))

### Assignments

Filtering redundant before assignments: `x` (decl src ln 2)

Checking equivalence of `x` (decl src ln 2) from
  assn asm ln 36, prod ln 4.5, live ln 5, enc 1
  %sub = sub nsw i32 %5, %4, l4 c5
  (Sub w32 (Add w32 (ReadLSB w32 (w32 0x0) a)
                   (ReadLSB w32 (w32 0x0) b))
          (Mul w32 (ReadLSB w32 (w32 0x0) c)
                   (ReadLSB w32 (w32 0x0) d)))
and
  assn asm ln 27, prod ln 2.13, live ln 3, enc 0
  %add = add nsw i32 %0, %1, l2 c13
  (Add w32 (ReadLSB w32 (w32 0x0) a)
          (ReadLSB w32 (w32 0x0) b))
Query to parse
array a[4] : w32 -> w8 = symbolic
array b[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
array a[4] : w32 -> w8 = symbolic
array b[4] : w32 -> w8 = symbolic
(query [] (Eq (Sub w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) a)
                          (ReadLSB w32 (w32 0x0) b))
              (Mul w32 (ReadLSB w32 (w32 0x0) c)
                       (ReadLSB w32 (w32 0x0) d)))
     N0))
Parsed query
(Eq (Sub w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) a)
                          (ReadLSB w32 (w32 0x0) b))
              (Mul w32 (ReadLSB w32 (w32 0x0) c)
                       (ReadLSB w32 (w32 0x0) d)))
     N0)

Filtering redundant before assignments: `y` (decl src ln 3)

Checking equivalence of `y` (decl src ln 3) from
  assn asm ln 40, prod ln 5.5, live ln 6, enc 1
  %add1 = add nsw i32 %7, %6, l5 c5
  (Add w32 N0:(Mul w32 (ReadLSB w32 (w32 0x0) c)
                      (ReadLSB w32 (w32 0x0) d))
          N0)
and
  assn asm ln 32, prod ln 3.13, live ln 4, enc 0
  %mul = mul nsw i32 %2, %3, l3 c13
  (Mul w32 (ReadLSB w32 (w32 0x0) c)
          (ReadLSB w32 (w32 0x0) d))
Query to parse
array c[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 N0:(Mul w32 (ReadLSB w32 (w32 0x0) c)
                          (ReadLSB w32 (w32 0x0) d))
              N0)
     N0))
Parsed query
(Eq (Add w32 N0:(Mul w32 (ReadLSB w32 (w32 0x0) c)
                          (ReadLSB w32 (w32 0x0) d))
              N0)
     N0)

Filtering redundant after assignments: `x` (decl src ln 2)

Checking equivalence of `x` (decl src ln 2) from
  assn asm ln 18, prod ln 4.5, live ln 5, enc 1
  %sub = sub i32 %add, %mul, l4 c5
  (Sub w32 (Add w32 (ReadLSB w32 (w32 0x0) b)
                   (ReadLSB w32 (w32 0x0) a))
          (Mul w32 (ReadLSB w32 (w32 0x0) d)
                   (ReadLSB w32 (w32 0x0) c)))
and
  assn asm ln 14, prod ln 2.13, live ln 3, enc 0
  %add = add nsw i32 %b, %a, l2 c13
  (Add w32 (ReadLSB w32 (w32 0x0) b)
          (ReadLSB w32 (w32 0x0) a))
Query to parse
array b[4] : w32 -> w8 = symbolic
array a[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
array b[4] : w32 -> w8 = symbolic
array a[4] : w32 -> w8 = symbolic
(query [] (Eq (Sub w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) b)
                          (ReadLSB w32 (w32 0x0) a))
              (Mul w32 (ReadLSB w32 (w32 0x0) d)
                       (ReadLSB w32 (w32 0x0) c)))
     N0))
Parsed query
(Eq (Sub w32 N0:(Add w32 (ReadLSB w32 (w32 0x0) b)
                          (ReadLSB w32 (w32 0x0) a))
              (Mul w32 (ReadLSB w32 (w32 0x0) d)
                       (ReadLSB w32 (w32 0x0) c)))
     N0)

Filtering redundant after assignments: `y` (decl src ln 3)

Checking equivalence of `y` (decl src ln 3) from
  assn asm ln 20, prod ln 5.5, live ln 6, enc 1
  %add1 = shl nsw i32 %mul, 1, l5 c5
  (Shl w32 (Mul w32 (ReadLSB w32 (w32 0x0) d)
                   (ReadLSB w32 (w32 0x0) c))
          (w32 0x1))
and
  assn asm ln 16, prod ln 3.13, live ln 4, enc 0
  %mul = mul nsw i32 %d, %c, l3 c13
  (Mul w32 (ReadLSB w32 (w32 0x0) d)
          (ReadLSB w32 (w32 0x0) c))
Query to parse
array d[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 N0:(Mul w32 (ReadLSB w32 (w32 0x0) d)
                          (ReadLSB w32 (w32 0x0) c))
              (w32 0x1))
     N0))
Parsed query
(Eq (Shl w32 N0:(Mul w32 (ReadLSB w32 (w32 0x0) d)
                          (ReadLSB w32 (w32 0x0) c))
              (w32 0x1))
     N0)

Collating encountered before assignments: `a` (decl src ln 1)
  asm ln 15, prod ln 1.0, live ln 2, enc 0
Collating encountered before assignments: `b` (decl src ln 1)
  asm ln 17, prod ln 1.0, live ln 2, enc 0
Collating encountered before assignments: `c` (decl src ln 1)
  asm ln 19, prod ln 1.0, live ln 2, enc 0
Collating encountered before assignments: `d` (decl src ln 1)
  asm ln 21, prod ln 1.0, live ln 2, enc 0
Collating encountered before assignments: `x` (decl src ln 2)
  asm ln 27, prod ln 2.13, live ln 3, enc 0
  asm ln 36, prod ln 4.5, live ln 5, enc 1
Collating encountered before assignments: `y` (decl src ln 3)
  asm ln 32, prod ln 3.13, live ln 4, enc 0
  asm ln 40, prod ln 5.5, live ln 6, enc 1

Collating encountered after assignments: `a` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 2, enc 0
Collating encountered after assignments: `b` (decl src ln 1)
  asm ln 10, prod ln 1.0, live ln 2, enc 0
Collating encountered after assignments: `c` (decl src ln 1)
  asm ln 11, prod ln 1.0, live ln 2, enc 0
Collating encountered after assignments: `d` (decl src ln 1)
  asm ln 12, prod ln 1.0, live ln 2, enc 0
Collating encountered after assignments: `x` (decl src ln 2)
  asm ln 14, prod ln 2.13, live ln 3, enc 0
  asm ln 18, prod ln 4.5, live ln 5, enc 1
Collating encountered after assignments: `y` (decl src ln 3)
  asm ln 16, prod ln 3.13, live ln 4, enc 0
  asm ln 20, prod ln 5.5, live ln 6, enc 1

#### Check before using after as reference

Checking equivalence of `a` (decl src ln 1) from
  assn asm ln 15, prod ln 1.0, live ln 2, enc 0
  i32 %a
  (ReadLSB w32 (w32 0x0) a)
and
  assn asm ln 9, prod ln 1.0, live ln 2, enc 0
  i32 %a
  (ReadLSB w32 (w32 0x0) a)
Query to parse
array a[4] : w32 -> w8 = symbolic
array a[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) a)
     (ReadLSB w32 (w32 0x0) a)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) a)
     N0)
✅ After `a` (decl src ln 1) assn asm ln 9, prod ln 1.0, live ln 2, enc 0 symbolic value matches before assn asm ln 15, prod ln 1.0, live ln 2, enc 0

✅ Before `a` assns checked using after as reference
Variable:            a
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `b` (decl src ln 1) from
  assn asm ln 17, prod ln 1.0, live ln 2, enc 0
  i32 %b
  (ReadLSB w32 (w32 0x0) b)
and
  assn asm ln 10, prod ln 1.0, live ln 2, enc 0
  i32 %b
  (ReadLSB w32 (w32 0x0) b)
Query to parse
array b[4] : w32 -> w8 = symbolic
array b[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) b)
     (ReadLSB w32 (w32 0x0) b)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) b)
     N0)
✅ After `b` (decl src ln 1) assn asm ln 10, prod ln 1.0, live ln 2, enc 0 symbolic value matches before assn asm ln 17, prod ln 1.0, live ln 2, enc 0

✅ Before `b` assns checked using after as reference
Variable:            b
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `c` (decl src ln 1) from
  assn asm ln 19, prod ln 1.0, live ln 2, enc 0
  i32 %c
  (ReadLSB w32 (w32 0x0) c)
and
  assn asm ln 11, prod ln 1.0, live ln 2, enc 0
  i32 %c
  (ReadLSB w32 (w32 0x0) c)
Query to parse
array c[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) c)
     (ReadLSB w32 (w32 0x0) c)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) c)
     N0)
✅ After `c` (decl src ln 1) assn asm ln 11, prod ln 1.0, live ln 2, enc 0 symbolic value matches before assn asm ln 19, prod ln 1.0, live ln 2, enc 0

✅ Before `c` assns checked using after as reference
Variable:            c
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `d` (decl src ln 1) from
  assn asm ln 21, prod ln 1.0, live ln 2, enc 0
  i32 %d
  (ReadLSB w32 (w32 0x0) d)
and
  assn asm ln 12, prod ln 1.0, live ln 2, enc 0
  i32 %d
  (ReadLSB w32 (w32 0x0) d)
Query to parse
array d[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) d)
     (ReadLSB w32 (w32 0x0) d)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) d)
     N0)
✅ After `d` (decl src ln 1) assn asm ln 12, prod ln 1.0, live ln 2, enc 0 symbolic value matches before assn asm ln 21, prod ln 1.0, live ln 2, enc 0

✅ Before `d` assns checked using after as reference
Variable:            d
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `x` (decl src ln 2) from
  assn asm ln 27, prod ln 2.13, live ln 3, enc 0
  %add = add nsw i32 %0, %1, l2 c13
  (Add w32 (ReadLSB w32 (w32 0x0) a)
          (ReadLSB w32 (w32 0x0) b))
and
  assn asm ln 14, prod ln 2.13, live ln 3, enc 0
  %add = add nsw i32 %b, %a, l2 c13
  (Add w32 (ReadLSB w32 (w32 0x0) b)
          (ReadLSB w32 (w32 0x0) a))
Query to parse
array a[4] : w32 -> w8 = symbolic
array b[4] : w32 -> w8 = symbolic
array b[4] : w32 -> w8 = symbolic
array a[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (ReadLSB w32 (w32 0x0) a)
              (ReadLSB w32 (w32 0x0) b))
     (Add w32 (ReadLSB w32 (w32 0x0) b)
              (ReadLSB w32 (w32 0x0) a))))
Parsed query
(Eq (Add w32 N0:(ReadLSB w32 (w32 0x0) a)
              N1:(ReadLSB w32 (w32 0x0) b))
     (Add w32 N1 N0))
✅ After `x` (decl src ln 2) assn asm ln 14, prod ln 2.13, live ln 3, enc 0 symbolic value matches before assn asm ln 27, prod ln 2.13, live ln 3, enc 0

Checking equivalence of `x` (decl src ln 2) from
  assn asm ln 36, prod ln 4.5, live ln 5, enc 1
  %sub = sub nsw i32 %5, %4, l4 c5
  (Sub w32 (Add w32 (ReadLSB w32 (w32 0x0) a)
                   (ReadLSB w32 (w32 0x0) b))
          (Mul w32 (ReadLSB w32 (w32 0x0) c)
                   (ReadLSB w32 (w32 0x0) d)))
and
  assn asm ln 18, prod ln 4.5, live ln 5, enc 1
  %sub = sub i32 %add, %mul, l4 c5
  (Sub w32 (Add w32 (ReadLSB w32 (w32 0x0) b)
                   (ReadLSB w32 (w32 0x0) a))
          (Mul w32 (ReadLSB w32 (w32 0x0) d)
                   (ReadLSB w32 (w32 0x0) c)))
Query to parse
array a[4] : w32 -> w8 = symbolic
array b[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
array b[4] : w32 -> w8 = symbolic
array a[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
(query [] (Eq (Sub w32 (Add w32 (ReadLSB w32 (w32 0x0) a)
                       (ReadLSB w32 (w32 0x0) b))
              (Mul w32 (ReadLSB w32 (w32 0x0) c)
                       (ReadLSB w32 (w32 0x0) d)))
     (Sub w32 (Add w32 (ReadLSB w32 (w32 0x0) b)
                       (ReadLSB w32 (w32 0x0) a))
              (Mul w32 (ReadLSB w32 (w32 0x0) d)
                       (ReadLSB w32 (w32 0x0) c)))))
Parsed query
(Eq (Sub w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) a)
                       N1:(ReadLSB w32 (w32 0x0) b))
              (Mul w32 N2:(ReadLSB w32 (w32 0x0) c)
                       N3:(ReadLSB w32 (w32 0x0) d)))
     (Sub w32 (Add w32 N1 N0) (Mul w32 N3 N2)))
✅ After `x` (decl src ln 2) assn asm ln 18, prod ln 4.5, live ln 5, enc 1 symbolic value matches before assn asm ln 36, prod ln 4.5, live ln 5, enc 1

✅ Before `x` assns checked using after as reference
Variable:            x
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

Checking equivalence of `y` (decl src ln 3) from
  assn asm ln 32, prod ln 3.13, live ln 4, enc 0
  %mul = mul nsw i32 %2, %3, l3 c13
  (Mul w32 (ReadLSB w32 (w32 0x0) c)
          (ReadLSB w32 (w32 0x0) d))
and
  assn asm ln 16, prod ln 3.13, live ln 4, enc 0
  %mul = mul nsw i32 %d, %c, l3 c13
  (Mul w32 (ReadLSB w32 (w32 0x0) d)
          (ReadLSB w32 (w32 0x0) c))
Query to parse
array c[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (ReadLSB w32 (w32 0x0) c)
              (ReadLSB w32 (w32 0x0) d))
     (Mul w32 (ReadLSB w32 (w32 0x0) d)
              (ReadLSB w32 (w32 0x0) c))))
Parsed query
(Eq (Mul w32 N0:(ReadLSB w32 (w32 0x0) c)
              N1:(ReadLSB w32 (w32 0x0) d))
     (Mul w32 N1 N0))
✅ After `y` (decl src ln 3) assn asm ln 16, prod ln 3.13, live ln 4, enc 0 symbolic value matches before assn asm ln 32, prod ln 3.13, live ln 4, enc 0

Checking equivalence of `y` (decl src ln 3) from
  assn asm ln 40, prod ln 5.5, live ln 6, enc 1
  %add1 = add nsw i32 %7, %6, l5 c5
  (Add w32 N0:(Mul w32 (ReadLSB w32 (w32 0x0) c)
                      (ReadLSB w32 (w32 0x0) d))
          N0)
and
  assn asm ln 20, prod ln 5.5, live ln 6, enc 1
  %add1 = shl nsw i32 %mul, 1, l5 c5
  (Shl w32 (Mul w32 (ReadLSB w32 (w32 0x0) d)
                   (ReadLSB w32 (w32 0x0) c))
          (w32 0x1))
Query to parse
array c[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 N0:(Mul w32 (ReadLSB w32 (w32 0x0) c)
                          (ReadLSB w32 (w32 0x0) d))
              N0)
     (Shl w32 (Mul w32 (ReadLSB w32 (w32 0x0) d)
                       (ReadLSB w32 (w32 0x0) c))
              (w32 0x1))))
Parsed query
(Eq (Add w32 N0:(Mul w32 N1:(ReadLSB w32 (w32 0x0) c)
                          N2:(ReadLSB w32 (w32 0x0) d))
              N0)
     (Shl w32 (Mul w32 N2 N1) (w32 0x1)))
✅ After `y` (decl src ln 3) assn asm ln 20, prod ln 5.5, live ln 6, enc 1 symbolic value matches before assn asm ln 40, prod ln 5.5, live ln 6, enc 1

✅ Before `y` assns checked using after as reference
Variable:            y
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

#### Check after using before as reference

Checking equivalence of `a` (decl src ln 1) from
  assn asm ln 9, prod ln 1.0, live ln 2, enc 0
  i32 %a
  (ReadLSB w32 (w32 0x0) a)
and
  assn asm ln 15, prod ln 1.0, live ln 2, enc 0
  i32 %a
  (ReadLSB w32 (w32 0x0) a)
Query to parse
array a[4] : w32 -> w8 = symbolic
array a[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) a)
     (ReadLSB w32 (w32 0x0) a)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) a)
     N0)
✅ Before `a` (decl src ln 1) assn asm ln 15, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 9, prod ln 1.0, live ln 2, enc 0

✅ After `a` assns checked using before as reference
Variable:            a
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `b` (decl src ln 1) from
  assn asm ln 10, prod ln 1.0, live ln 2, enc 0
  i32 %b
  (ReadLSB w32 (w32 0x0) b)
and
  assn asm ln 17, prod ln 1.0, live ln 2, enc 0
  i32 %b
  (ReadLSB w32 (w32 0x0) b)
Query to parse
array b[4] : w32 -> w8 = symbolic
array b[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) b)
     (ReadLSB w32 (w32 0x0) b)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) b)
     N0)
✅ Before `b` (decl src ln 1) assn asm ln 17, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 10, prod ln 1.0, live ln 2, enc 0

✅ After `b` assns checked using before as reference
Variable:            b
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `c` (decl src ln 1) from
  assn asm ln 11, prod ln 1.0, live ln 2, enc 0
  i32 %c
  (ReadLSB w32 (w32 0x0) c)
and
  assn asm ln 19, prod ln 1.0, live ln 2, enc 0
  i32 %c
  (ReadLSB w32 (w32 0x0) c)
Query to parse
array c[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) c)
     (ReadLSB w32 (w32 0x0) c)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) c)
     N0)
✅ Before `c` (decl src ln 1) assn asm ln 19, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 11, prod ln 1.0, live ln 2, enc 0

✅ After `c` assns checked using before as reference
Variable:            c
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `d` (decl src ln 1) from
  assn asm ln 12, prod ln 1.0, live ln 2, enc 0
  i32 %d
  (ReadLSB w32 (w32 0x0) d)
and
  assn asm ln 21, prod ln 1.0, live ln 2, enc 0
  i32 %d
  (ReadLSB w32 (w32 0x0) d)
Query to parse
array d[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 (w32 0x0) d)
     (ReadLSB w32 (w32 0x0) d)))
Parsed query
(Eq N0:(ReadLSB w32 (w32 0x0) d)
     N0)
✅ Before `d` (decl src ln 1) assn asm ln 21, prod ln 1.0, live ln 2, enc 0 symbolic value matches after assn asm ln 12, prod ln 1.0, live ln 2, enc 0

✅ After `d` assns checked using before as reference
Variable:            d
  Assignments:       1
  Matching Coords:   1
  Matching Value:    1
Errors:
  Mismatched Coords: 0
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `x` (decl src ln 2) from
  assn asm ln 14, prod ln 2.13, live ln 3, enc 0
  %add = add nsw i32 %b, %a, l2 c13
  (Add w32 (ReadLSB w32 (w32 0x0) b)
          (ReadLSB w32 (w32 0x0) a))
and
  assn asm ln 27, prod ln 2.13, live ln 3, enc 0
  %add = add nsw i32 %0, %1, l2 c13
  (Add w32 (ReadLSB w32 (w32 0x0) a)
          (ReadLSB w32 (w32 0x0) b))
Query to parse
array b[4] : w32 -> w8 = symbolic
array a[4] : w32 -> w8 = symbolic
array a[4] : w32 -> w8 = symbolic
array b[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (ReadLSB w32 (w32 0x0) b)
              (ReadLSB w32 (w32 0x0) a))
     (Add w32 (ReadLSB w32 (w32 0x0) a)
              (ReadLSB w32 (w32 0x0) b))))
Parsed query
(Eq (Add w32 N0:(ReadLSB w32 (w32 0x0) b)
              N1:(ReadLSB w32 (w32 0x0) a))
     (Add w32 N1 N0))
✅ Before `x` (decl src ln 2) assn asm ln 27, prod ln 2.13, live ln 3, enc 0 symbolic value matches after assn asm ln 14, prod ln 2.13, live ln 3, enc 0

Checking equivalence of `x` (decl src ln 2) from
  assn asm ln 18, prod ln 4.5, live ln 5, enc 1
  %sub = sub i32 %add, %mul, l4 c5
  (Sub w32 (Add w32 (ReadLSB w32 (w32 0x0) b)
                   (ReadLSB w32 (w32 0x0) a))
          (Mul w32 (ReadLSB w32 (w32 0x0) d)
                   (ReadLSB w32 (w32 0x0) c)))
and
  assn asm ln 36, prod ln 4.5, live ln 5, enc 1
  %sub = sub nsw i32 %5, %4, l4 c5
  (Sub w32 (Add w32 (ReadLSB w32 (w32 0x0) a)
                   (ReadLSB w32 (w32 0x0) b))
          (Mul w32 (ReadLSB w32 (w32 0x0) c)
                   (ReadLSB w32 (w32 0x0) d)))
Query to parse
array b[4] : w32 -> w8 = symbolic
array a[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
array a[4] : w32 -> w8 = symbolic
array b[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
(query [] (Eq (Sub w32 (Add w32 (ReadLSB w32 (w32 0x0) b)
                       (ReadLSB w32 (w32 0x0) a))
              (Mul w32 (ReadLSB w32 (w32 0x0) d)
                       (ReadLSB w32 (w32 0x0) c)))
     (Sub w32 (Add w32 (ReadLSB w32 (w32 0x0) a)
                       (ReadLSB w32 (w32 0x0) b))
              (Mul w32 (ReadLSB w32 (w32 0x0) c)
                       (ReadLSB w32 (w32 0x0) d)))))
Parsed query
(Eq (Sub w32 (Add w32 N0:(ReadLSB w32 (w32 0x0) b)
                       N1:(ReadLSB w32 (w32 0x0) a))
              (Mul w32 N2:(ReadLSB w32 (w32 0x0) d)
                       N3:(ReadLSB w32 (w32 0x0) c)))
     (Sub w32 (Add w32 N1 N0) (Mul w32 N3 N2)))
✅ Before `x` (decl src ln 2) assn asm ln 36, prod ln 4.5, live ln 5, enc 1 symbolic value matches after assn asm ln 18, prod ln 4.5, live ln 5, enc 1

✅ After `x` assns checked using before as reference
Variable:            x
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

Checking equivalence of `y` (decl src ln 3) from
  assn asm ln 16, prod ln 3.13, live ln 4, enc 0
  %mul = mul nsw i32 %d, %c, l3 c13
  (Mul w32 (ReadLSB w32 (w32 0x0) d)
          (ReadLSB w32 (w32 0x0) c))
and
  assn asm ln 32, prod ln 3.13, live ln 4, enc 0
  %mul = mul nsw i32 %2, %3, l3 c13
  (Mul w32 (ReadLSB w32 (w32 0x0) c)
          (ReadLSB w32 (w32 0x0) d))
Query to parse
array d[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 (ReadLSB w32 (w32 0x0) d)
              (ReadLSB w32 (w32 0x0) c))
     (Mul w32 (ReadLSB w32 (w32 0x0) c)
              (ReadLSB w32 (w32 0x0) d))))
Parsed query
(Eq (Mul w32 N0:(ReadLSB w32 (w32 0x0) d)
              N1:(ReadLSB w32 (w32 0x0) c))
     (Mul w32 N1 N0))
✅ Before `y` (decl src ln 3) assn asm ln 32, prod ln 3.13, live ln 4, enc 0 symbolic value matches after assn asm ln 16, prod ln 3.13, live ln 4, enc 0

Checking equivalence of `y` (decl src ln 3) from
  assn asm ln 20, prod ln 5.5, live ln 6, enc 1
  %add1 = shl nsw i32 %mul, 1, l5 c5
  (Shl w32 (Mul w32 (ReadLSB w32 (w32 0x0) d)
                   (ReadLSB w32 (w32 0x0) c))
          (w32 0x1))
and
  assn asm ln 40, prod ln 5.5, live ln 6, enc 1
  %add1 = add nsw i32 %7, %6, l5 c5
  (Add w32 N0:(Mul w32 (ReadLSB w32 (w32 0x0) c)
                      (ReadLSB w32 (w32 0x0) d))
          N0)
Query to parse
array d[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
array c[4] : w32 -> w8 = symbolic
array d[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (Mul w32 (ReadLSB w32 (w32 0x0) d)
                       (ReadLSB w32 (w32 0x0) c))
              (w32 0x1))
     (Add w32 N0:(Mul w32 (ReadLSB w32 (w32 0x0) c)
                          (ReadLSB w32 (w32 0x0) d))
              N0)))
Parsed query
(Eq (Shl w32 (Mul w32 N0:(ReadLSB w32 (w32 0x0) d)
                       N1:(ReadLSB w32 (w32 0x0) c))
              (w32 0x1))
     (Add w32 N2:(Mul w32 N1 N0) N2))
✅ Before `y` (decl src ln 3) assn asm ln 40, prod ln 5.5, live ln 6, enc 1 symbolic value matches after assn asm ln 20, prod ln 5.5, live ln 6, enc 1

✅ After `y` assns checked using before as reference
Variable:            y
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

## Summary

🎉 All consistency checks passed
