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

Load from declared address of `n` (decl src ln 8), asm ln 18
  %0 = load i32, i32* %n.addr, l10 c18, asm ln 18
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 18, prod ln 10.18, live ln 11, enc None
Store to declared address of `n` (decl src ln 8), asm ln 14
  arg 0
  Added assignment asm ln 14, prod ln 8.0, live ln 10, enc None
Store to declared address of `s` (decl src ln 10), asm ln 19
  %0 = load i32, i32* %n.addr, l10 c18, asm ln 18
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 19, prod ln 10.18, live ln 11, enc None
Store to declared address of `s` (decl src ln 10), asm ln 21
  const %struct.S* null
  Added assignment asm ln 21, prod ln 10.16, live ln 11, enc None
Load from declared address of `s` (decl src ln 10), asm ln 24
  %1 = load %struct.S*, %struct.S** %next1, l12 c9, asm ln 24
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 24, prod ln 12.9, live ln 13, enc None
Load from declared address of `s` (decl src ln 10), asm ln 30
  %2 = load %struct.S*, %struct.S** %next2, l12 c19, asm ln 30
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 30, prod ln 12.19, live ln 13, enc None
Load from declared address of `s` (decl src ln 10), asm ln 38
  %4 = load %struct.S*, %struct.S** %next5, l13 c14, asm ln 38
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 38, prod ln 13.14, live ln 14, enc None
Load from declared address of `s` (decl src ln 10), asm ln 48
  %7 = load %struct.S*, %struct.S** %next8, l14 c9, asm ln 48
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 48, prod ln 14.9, live ln 15, enc None
Load from declared address of `s` (decl src ln 10), asm ln 54
  %8 = load %struct.S*, %struct.S** %next11, l15 c14, asm ln 54
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 54, prod ln 15.14, live ln 16, enc None
Load from declared address of `s` (decl src ln 10), asm ln 62
  %10 = load i32, i32* %id14, l16 c12, asm ln 62
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 62, prod ln 16.12, live ln 17, enc None

#### After variables

Value produced for `n` (decl src ln 8), asm ln 12
  arg 0
  Added assignment asm ln 12, prod ln 8.0, live ln 10, enc None
Store to declared address of `s` (decl src ln 10), asm ln 16
  arg 0
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 16, prod ln 10.16, live ln 11, enc None
Load from declared address of `s` (decl src ln 10), asm ln 20
  %1 = load %struct.S.0*, %struct.S.0** %next, !tbaa !33, l12 c9, asm ln 20
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 20, prod ln 12.9, live ln 13, enc None
Store to declared address of `s` (decl src ln 10), asm ln 18
  const %struct.S.0* null
  Added assignment asm ln 18, prod ln 10.16, live ln 11, enc None
Load from declared address of `s` (decl src ln 10), asm ln 46
  %7 = load i32, i32* %6, !tbaa !27, l16 c12, asm ln 46
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 46, prod ln 16.12, live ln 17, enc None

#### Summary

✅ 2 before variables found, 2 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `n`
  Assignment asm ln 14, prod ln 8.0, live ln 10, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `n`
  Assignment asm ln 18, prod ln 10.18, live ln 11, enc 1
  %0 = load i32, i32* %n.addr, l10 c18
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `s`
  Assignment asm ln 19, prod ln 10.18, live ln 11, enc 0
  %0 = load i32, i32* %n.addr, l10 c18
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `s`
  Assignment asm ln 21, prod ln 10.16, live ln 11, enc 1
  %struct.S* null
  (w64 0x0)
Collected value for `s`
  Assignment asm ln 24, prod ln 12.9, live ln 13, enc 2
  Concrete pointer resolves to modify.arg0.deref.e1.deref, offset (w64 0x0)
  Created deref expr (Concat w128 (w8 0x0)
              (Concat w120 (w8 0x0)
                           (Concat w112 (w8 0x0)
                                        (Concat w104 (w8 0x0)
                                                     (Concat w96 (w8 0x0)
                                                                 (Concat w88 (w8 0x0)
                                                                             (Concat w80 (w8 0x0)
                                                                                         (Concat w72 (w8 0x0)
                                                                                                     (ReadLSB w64 (w32 0x0) modify.arg0.deref.e1.deref)))))))))
  Replaced concrete pointer with hash (w64 0xAB50A9CDBF39E85F)
  %1 = load %struct.S*, %struct.S** %next1, l12 c9
  (w64 0xAB50A9CDBF39E85F)
Collected value for `s`
  Assignment asm ln 30, prod ln 12.19, live ln 13, enc 3
  Concrete pointer resolves to modify.arg0.deref.e1.deref, offset (w64 0x0)
  Created deref expr (Concat w128 (w8 0x0)
              (Concat w120 (w8 0x0)
                           (Concat w112 (w8 0x0)
                                        (Concat w104 (w8 0x0)
                                                     (Concat w96 (w8 0x0)
                                                                 (Concat w88 (w8 0x0)
                                                                             (Concat w80 (w8 0x0)
                                                                                         (Concat w72 (w8 0x0)
                                                                                                     (ReadLSB w64 (w32 0x0) modify.arg0.deref.e1.deref)))))))))
  Replaced concrete pointer with hash (w64 0xAB50A9CDBF39E85F)
  %2 = load %struct.S*, %struct.S** %next2, l12 c19
  (w64 0xAB50A9CDBF39E85F)
Collected value for `s`
  Assignment asm ln 48, prod ln 14.9, live ln 15, enc 4
  Concrete pointer resolves to modify.arg0.deref.e1.deref, offset (w64 0x0)
  Created deref expr (Concat w128 (w8 0x0)
              (Concat w120 (w8 0x0)
                           (Concat w112 (w8 0x0)
                                        (Concat w104 (w8 0x0)
                                                     (Concat w96 (w8 0x0)
                                                                 (Concat w88 (w8 0x0)
                                                                             (Concat w80 (w8 0x0)
                                                                                         (Concat w72 (w8 0x0)
                                                                                                     (ReadLSB w64 (w32 0x0) modify.arg0.deref.e1.deref)))))))))
  Replaced concrete pointer with hash (w64 0xAB50A9CDBF39E85F)
  %7 = load %struct.S*, %struct.S** %next8, l14 c9
  (w64 0xAB50A9CDBF39E85F)
Collected value for `s`
  Assignment asm ln 54, prod ln 15.14, live ln 16, enc 5
  Concrete pointer resolves to modify.arg0.deref.e1.deref, offset (w64 0x0)
  Created deref expr (Concat w128 (w8 0x0)
              (Concat w120 (w8 0x0)
                           (Concat w112 (w8 0x0)
                                        (Concat w104 (w8 0x0)
                                                     (Concat w96 (w8 0x0)
                                                                 (Concat w88 (w8 0x0)
                                                                             (Concat w80 (w8 0x0)
                                                                                         (Concat w72 (w8 0x0)
                                                                                                     (ReadLSB w64 (w32 0x0) modify.arg0.deref.e1.deref)))))))))
  Replaced concrete pointer with hash (w64 0xAB50A9CDBF39E85F)
  %8 = load %struct.S*, %struct.S** %next11, l15 c14
  (w64 0xAB50A9CDBF39E85F)

🔔 Unable to execute all before instructions

#### After values

Collected value for `n`
  Assignment asm ln 12, prod ln 8.0, live ln 10, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `s`
  Assignment asm ln 16, prod ln 10.16, live ln 11, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
Collected value for `s`
  Assignment asm ln 18, prod ln 10.16, live ln 11, enc 1
  %struct.S.0* null
  (w64 0x0)
Collected value for `s`
  Assignment asm ln 20, prod ln 12.9, live ln 13, enc 2
  Concrete pointer resolves to modify.arg0.deref.e1.deref, offset (w64 0x0)
  Created deref expr (Concat w128 (w8 0x0)
              (Concat w120 (w8 0x0)
                           (Concat w112 (w8 0x0)
                                        (Concat w104 (w8 0x0)
                                                     (Concat w96 (w8 0x0)
                                                                 (Concat w88 (w8 0x0)
                                                                             (Concat w80 (w8 0x0)
                                                                                         (Concat w72 (w8 0x0)
                                                                                                     (ReadLSB w64 (w32 0x0) modify.arg0.deref.e1.deref)))))))))
  Replaced concrete pointer with hash (w64 0xAB50A9CDBF39E85F)
  %1 = load %struct.S.0*, %struct.S.0** %next, !tbaa !33, l12 c9
  (w64 0xAB50A9CDBF39E85F)

🔔 Unable to execute all after instructions

### Assignments

#### Collation

Filtering before assignments: `n` (decl src ln 8)

Checking equivalence of `n` (decl src ln 8) from
  assn asm ln 18, prod ln 10.18, live ln 11, enc 1
  %0 = load i32, i32* %n.addr, l10 c18
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 14, prod ln 8.0, live ln 10, enc 0
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
🔔 Removing: asm ln 18, prod ln 10.18, live ln 11, enc 1

Filtering before assignments: `s` (decl src ln 10)

Expected 1 symbolic value(s), got 0
Expected 1 symbolic value(s), got 0
Checking equivalence of `s` (decl src ln 10) from
  assn asm ln 62, prod ln 16.12, live ln 17, enc None
  %10 = load i32, i32* %id14, l16 c12
and
  assn asm ln 38, prod ln 13.14, live ln 14, enc None
  %4 = load %struct.S*, %struct.S** %next5, l13 c14
🔔 Removing: asm ln 62, prod ln 16.12, live ln 17, enc None

Expected 1 symbolic value(s), got 0
Checking equivalence of `s` (decl src ln 10) from
  assn asm ln 19, prod ln 10.18, live ln 11, enc 0
  %0 = load i32, i32* %n.addr, l10 c18
and
  assn asm ln 38, prod ln 13.14, live ln 14, enc None
  %4 = load %struct.S*, %struct.S** %next5, l13 c14

Checking equivalence of `s` (decl src ln 10) from
  assn asm ln 21, prod ln 10.16, live ln 11, enc 1
  %struct.S* null
  (w64 0x0)
and
  assn asm ln 19, prod ln 10.18, live ln 11, enc 0
  %0 = load i32, i32* %n.addr, l10 c18
  (ReadLSB w32 (w32 0x0) example.n)
Assertion failed: (testSymValue->getWidth() == refSymValue->getWidth() && "Bit widths don't match"), function checkEquivalence, file main.cpp, line 580.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.      Program arguments: /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O1/final.bc --debug-only=check-debug-info,values-collector,variable --debug-execution-trace --output-source --max-forks=4 --tsv
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x000000010ccffd9d llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 61
1  check-debug-info         0x000000010cd0029b PrintStackTraceSignalHandler(void*) + 27
2  check-debug-info         0x000000010ccfe333 llvm::sys::RunSignalHandlers() + 115
3  check-debug-info         0x000000010cd0153f SignalHandler(int) + 223
4  libsystem_platform.dylib 0x00007ff800bb3fdd _sigtramp + 29
5  libc++.1.dylib           0x00007ff800ac8a5a std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append(char const*, unsigned long) + 134
6  libsystem_c.dylib        0x00007ff800aaaa39 abort + 126
7  libsystem_c.dylib        0x00007ff800aa9d1c err + 0
8  check-debug-info         0x0000000109f9e352 checkEquivalence(Variable const&, Assignment&, Assignment&) + 1394
9  check-debug-info         0x0000000109f9f69c filterAssignments(llvm::StringRef, llvm::SmallSet<Variable, 8u, std::__1::less<Variable> > const&, std::__1::map<Variable, llvm::SmallVector<Assignment, 1u>, std::__1::less<Variable>, std::__1::allocator<std::__1::pair<Variable const, llvm::SmallVector<Assignment, 1u> > > >&, ExecutionValidity const&) + 860
10 check-debug-info         0x0000000109fa4ec9 checkFunction(llvm::SmallVector<ValuesCollector, 2u>&, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&, AssignmentStats&) + 3769
11 check-debug-info         0x0000000109fa6488 main + 2376
12 dyld                     0x00007ff8007f9366 start + 1942
./check.sh: line 6: 84668 Abort trap: 6           ${CHECK} ${O0_BC} ${O1_BC} ${CHECK_OPTS} "$@"
