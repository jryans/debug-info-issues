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

#### Variables with single memory location

✅ Variable `s` uses only a single memory location (via `dbg.declare`), skipping further checks
Assignments:         s
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
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

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

Collating encountered before assignments: `n` (decl src ln 8)
  asm ln 14, prod ln 8.0, live ln 10, enc 0

Collating encountered after assignments: `n` (decl src ln 8)
  asm ln 12, prod ln 8.0, live ln 10, enc 0

#### Check after using before as reference

Checking equivalence of `n` (decl src ln 8) from
  assn asm ln 12, prod ln 8.0, live ln 10, enc 0
  i32 %n
  (ReadLSB w32 (w32 0x0) example.n)
and
  assn asm ln 14, prod ln 8.0, live ln 10, enc 0
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
✅ Before `n` (decl src ln 8) assn asm ln 14, prod ln 8.0, live ln 10, enc 0 symbolic value matches after assn asm ln 12, prod ln 8.0, live ln 10, enc 0

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
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

✅ After `s` assns checked using before as reference
Assignments:         s
  Reference:         0
  Test:              0
Matching:
  Matching Coords:   0
  Matching Value:    0
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
Reference Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true
Test Execution:
  Function Covered:  false
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

## Summary

Assignments:
  Reference:                 2
  Test:                      2 (100.00% of ref )
Matching:
  Matching Coords:           2 (100.00% of ref )
  Matching Value:            2 (100.00% of ref )
Consistency Errors:
  Mismatched Coords:         0 (  0.00% of ref )
  Mismatched Value:          0 (  0.00% of ref )
Availability Errors:
  Ref Not Encount.:          0 (  0.00% of ref )
  Ref Not in Test:           0 (  0.00% of ref )
  Test Not Encount.:         0 (  0.00% of test)
  Test Not in Ref:           0 (  0.00% of test)
Warnings:
  Unused:                    0 (  0.00% of ref )
  Removable:                 0 (  0.00% of ref )
  Unreachable:               0 (  0.00% of ref )
Reference Execution:
  Function Covered:          0 (  0.00% of ref )
  Complete:                  2 (100.00% of ref )
  Within Time Limit:         2 (100.00% of ref )
  Within Fork Limit:         2 (100.00% of ref )
Test Execution:
  Function Covered:          0 (  0.00% of test)
  Complete:                  2 (100.00% of test)
  Within Time Limit:         2 (100.00% of test)
  Within Fork Limit:         2 (100.00% of test)

🎉 All consistency checks passed
