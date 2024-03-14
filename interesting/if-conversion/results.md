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

Load from declared address of `n` (decl src ln 1), asm ln 25
  %2 = load i32, i32* %n.addr, l6 c9, asm ln 25
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 25, prod ln 6.9, live ln 7, enc None
Load from declared address of `n` (decl src ln 1), asm ln 19
  %1 = load i32, i32* %n.addr, l4 c9, asm ln 19
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 19, prod ln 4.9, live ln 5, enc None
Load from declared address of `n` (decl src ln 1), asm ln 14
  %0 = load i32, i32* %n.addr, l3 c7, asm ln 14
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 14, prod ln 3.7, live ln 4, enc None
Store to declared address of `n` (decl src ln 1), asm ln 11
  arg 0
  Added assignment asm ln 11, prod ln 1.0, live ln 3, enc None
Load from declared address of `r` (decl src ln 2), asm ln 31
  %3 = load i32, i32* %r, l8 c10, asm ln 31
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 31, prod ln 8.10, live ln 9, enc None
Store to declared address of `r` (decl src ln 2), asm ln 27
  %sub = sub nsw i32 %2, 1, l6 c11, asm ln 26
  🔔 Missing live ln, using produced ln + 1
  Added assignment asm ln 27, prod ln 6.11, live ln 7, enc None
Store to declared address of `r` (decl src ln 2), asm ln 21
  %add = add nsw i32 %1, 1, l4 c11, asm ln 20
  Added assignment asm ln 21, prod ln 4.11, live ln 5, enc None

#### After variables

Value produced for `n` (decl src ln 1), asm ln 9
  arg 0
  Added assignment asm ln 9, prod ln 1.0, live ln 3, enc None
Value produced for `r` (decl src ln 2), asm ln 13
  %r.0 = select i1 %tobool.not, i32 -1, i32 %add, l3 c7, asm ln 12
  Added assignment asm ln 13, prod ln 3.7, live ln 8, enc None

#### Summary

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  Assignment asm ln 11, prod ln 1.0, live ln 3, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `n`
  Assignment asm ln 14, prod ln 3.7, live ln 4, enc 1
  %0 = load i32, i32* %n.addr, l3 c7
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `n`
  Assignment asm ln 19, prod ln 4.9, live ln 5, enc 2
  %1 = load i32, i32* %n.addr, l4 c9
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `n`
  Assignment asm ln 25, prod ln 6.9, live ln 7, enc 3
  %2 = load i32, i32* %n.addr, l6 c9
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `r`
  Assignment asm ln 27, prod ln 6.11, live ln 7, enc 0
  %sub = sub nsw i32 %2, 1, l6 c11
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) example.n))
Collected value for `r`
  Assignment asm ln 21, prod ln 4.11, live ln 5, enc 1
  %add = add nsw i32 %1, 1, l4 c11
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) example.n))
Collected value for `r`
  Assignment asm ln 31, prod ln 8.10, live ln 9, enc 2
  %3 = load i32, i32* %r, l8 c10
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) example.n))

#### After values

Collected value for `n`
  Assignment asm ln 9, prod ln 1.0, live ln 3, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `r`
  Assignment asm ln 13, prod ln 3.7, live ln 8, enc 0
  %r.0 = select i1 %tobool.not, i32 -1, i32 %add, l3 c7
  (Select w32 (Eq (w32 0x0)
                 N0:(ReadLSB w32 (w32 0x0) example.n))
             (w32 0xFFFFFFFF)
             (Add w32 (w32 0x1) N0))

### Assignments

#### Collation

Filtering redundant before assignments: `n` (decl src ln 1)

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 14, prod ln 3.7, live ln 4, enc 1
  %0 = load i32, i32* %n.addr, l3 c7
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 11, prod ln 1.0, live ln 3, enc 0
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
🔔 Removing: asm ln 14, prod ln 3.7, live ln 4, enc 1

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 19, prod ln 4.9, live ln 5, enc 2
  %1 = load i32, i32* %n.addr, l4 c9
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 11, prod ln 1.0, live ln 3, enc 0
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
🔔 Removing: asm ln 19, prod ln 4.9, live ln 5, enc 2

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 25, prod ln 6.9, live ln 7, enc 3
  %2 = load i32, i32* %n.addr, l6 c9
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 11, prod ln 1.0, live ln 3, enc 0
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
🔔 Removing: asm ln 25, prod ln 6.9, live ln 7, enc 3

Filtering redundant before assignments: `r` (decl src ln 2)

Checking equivalence of `r` (decl src ln 2) from
  assn asm ln 21, prod ln 4.11, live ln 5, enc 1
  %add = add nsw i32 %1, 1, l4 c11
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) example.n))
and
  assn asm ln 27, prod ln 6.11, live ln 7, enc 0
  %sub = sub nsw i32 %2, 1, l6 c11
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) example.n))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) example.n))
     (Add w32 (w32 0xFFFFFFFF) N0)))
Parsed query
(Eq (Add w32 (w32 0x1)
              N0:(ReadLSB w32 (w32 0x0) example.n))
     (Add w32 (w32 0xFFFFFFFF) N0))

Checking equivalence of `r` (decl src ln 2) from
  assn asm ln 31, prod ln 8.10, live ln 9, enc 2
  %3 = load i32, i32* %r, l8 c10
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) example.n))
and
  assn asm ln 21, prod ln 4.11, live ln 5, enc 1
  %add = add nsw i32 %1, 1, l4 c11
  (Add w32 (w32 0x1)
          (ReadLSB w32 (w32 0x0) example.n))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq N0:(Add w32 (w32 0x1)
                 (ReadLSB w32 (w32 0x0) example.n))
     N0))
Parsed query
(Eq N0:(Add w32 (w32 0x1)
                 (ReadLSB w32 (w32 0x0) example.n))
     N0)
🔔 Removing: asm ln 31, prod ln 8.10, live ln 9, enc 2

Collating encountered before assignments: `n` (decl src ln 1)
  asm ln 11, prod ln 1.0, live ln 3, enc 0
Collating encountered before assignments: `r` (decl src ln 2)
  asm ln 27, prod ln 6.11, live ln 7, enc 0
  asm ln 21, prod ln 4.11, live ln 5, enc 1

Collating encountered after assignments: `n` (decl src ln 1)
  asm ln 9, prod ln 1.0, live ln 3, enc 0
Collating encountered after assignments: `r` (decl src ln 2)
  asm ln 13, prod ln 3.7, live ln 8, enc 0

#### Check after using before as reference

Checking equivalence of `n` (decl src ln 1) from
  assn asm ln 9, prod ln 1.0, live ln 3, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 11, prod ln 1.0, live ln 3, enc 0
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
✅ Before `n` (decl src ln 1) assn asm ln 11, prod ln 1.0, live ln 3, enc 0 symbolic value matches after assn asm ln 9, prod ln 1.0, live ln 3, enc 0

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

❌ Before encountered assn for `r` (decl src ln 2) at asm ln 21, prod ln 4.11, live ln 5, enc 1 not found in after

❌ Before `r` (decl src ln 2) assn asm ln 27, prod ln 6.11, live ln 7, enc 0 coordinates don't match after assn asm ln 13, prod ln 3.7, live ln 8, enc 0
Checking equivalence of `r` (decl src ln 2) from
  assn asm ln 13, prod ln 3.7, live ln 8, enc 0
  %r.0 = select i1 %tobool.not, i32 -1, i32 %add, l3 c7
  (Select w32 (Eq (w32 0x0)
                 N0:(ReadLSB w32 (w32 0x0) example.n))
             (w32 0xFFFFFFFF)
             (Add w32 (w32 0x1) N0))
and
  assn asm ln 27, prod ln 6.11, live ln 7, enc 0
  %sub = sub nsw i32 %2, 1, l6 c11
  (Add w32 (w32 0xFFFFFFFF)
          (ReadLSB w32 (w32 0x0) example.n))
Query to parse
array example.n[4] : w32 -> w8 = symbolic
array example.n[4] : w32 -> w8 = symbolic
(query [] (Eq (Select w32 (Eq (w32 0x0)
                     N0:(ReadLSB w32 (w32 0x0) example.n))
                 (w32 0xFFFFFFFF)
                 (Add w32 (w32 0x1) N0))
     (Add w32 (w32 0xFFFFFFFF)
              (ReadLSB w32 (w32 0x0) example.n))))
Parsed query
(Eq (Select w32 (Eq (w32 0x0)
                     N0:(ReadLSB w32 (w32 0x0) example.n))
                 (w32 0xFFFFFFFF)
                 (Add w32 (w32 0x1) N0))
     (Add w32 (w32 0xFFFFFFFF) N0))
❌ Before `r` (decl src ln 2) assn asm ln 27, prod ln 6.11, live ln 7, enc 0 symbolic value doesn't match after assn asm ln 13, prod ln 3.7, live ln 8, enc 0

❌ After `r` assns checked using before as reference
Assignments:         r
  Reference:         2
  Test:              1
Matching:
  Matching Coords:   0
  Matching Value:    0
Consistency Errors:
  Mismatched Coords: 1
  Mismatched Value:  1
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

## Summary

Assignments:
  Reference:                 3
  Test:                      2 ( 66.67% of ref )
Matching:
  Matching Coords:           1 ( 33.33% of ref )
  Matching Value:            1 ( 33.33% of ref )
Consistency Errors:
  Mismatched Coords:         1 ( 33.33% of ref )
  Mismatched Value:          1 ( 33.33% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           1 ( 33.33% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Execution:
  Function Covered:          2 (100.00% of test)
  Complete:                  2 (100.00% of test)
  Within Time Limit:         2 (100.00% of test)
  Within Fork Limit:         2 (100.00% of test)

❌ Some consistency checks failed
