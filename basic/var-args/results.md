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

## Function `bug_va`

✅ Before and after function names match

### Variable events

#### Before variables

Load from declared address of `prefix` (decl src ln 9), asm ln 22
  %1 = load i8*, i8** %prefix.addr, l12 c3, asm ln 22
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 22, prod ln 12.3, live ln 13, enc None
Load from declared address of `prefix` (decl src ln 9), asm ln 16
  %0 = load i8*, i8** %prefix.addr, l11 c19, asm ln 16
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 16, prod ln 11.19, live ln 12, enc None
Store to declared address of `prefix` (decl src ln 9), asm ln 14
  arg 0
  Added assignment asm ln 14, prod ln 9.0, live ln 11, enc None

#### After variables

Value produced for `prefix` (decl src ln 9), asm ln 14
  arg 0
  Added assignment asm ln 14, prod ln 9.0, live ln 11, enc None
Load from deref'd address of `prefix` (decl src ln 9), asm ln 22
  %0 = load i8*, i8** %prefix.addr, !tbaa !20, l12 c3, asm ln 22
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 22, prod ln 12.3, live ln 13, enc None
Store to deref'd address of `prefix` (decl src ln 9), asm ln 15
  arg 0
  Added assignment asm ln 15, prod ln 9.0, live ln 11, enc None
Value produced for `prefix` (decl src ln 9), asm ln 23
  %0 = load i8*, i8** %prefix.addr, !tbaa !20, l12 c3, asm ln 22
  🔔 Live ln too early, using produced ln + 1
  Added assignment asm ln 23, prod ln 12.3, live ln 13, enc None

#### Summary

✅ 1 before variables found, 1 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `prefix`
  Assignment asm ln 14, prod ln 9.0, live ln 11, enc 0
  Concrete pointer resolves to prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) prefix.deref)
  Replaced concrete pointer with hash (w64 0x3E8C4480EDC2A01A)
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
Collected value for `prefix`
  Assignment asm ln 16, prod ln 11.19, live ln 12, enc 1
  Concrete pointer resolves to prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) prefix.deref)
  Replaced concrete pointer with hash (w64 0x3E8C4480EDC2A01A)
  %0 = load i8*, i8** %prefix.addr, l11 c19
  (w64 0x3E8C4480EDC2A01A)
Collected value for `prefix`
  Assignment asm ln 22, prod ln 12.3, live ln 13, enc 2
  Concrete pointer resolves to skip_prefix.arg2.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.arg2.deref.deref)
  Replaced concrete pointer with hash (w64 0x455DD1BD2C0CCCD8)
  %1 = load i8*, i8** %prefix.addr, l12 c3
  (w64 0x455DD1BD2C0CCCD8)
[0;1;31mKLEE: ERROR: example.c:12: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
#### After values

Collected value for `prefix`
  Assignment asm ln 14, prod ln 9.0, live ln 11, enc 0
  Concrete pointer resolves to prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) prefix.deref)
  Replaced concrete pointer with hash (w64 0x3E8C4480EDC2A01A)
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
Collected value for `prefix`
  Assignment asm ln 15, prod ln 9.0, live ln 11, enc 1
  Concrete pointer resolves to prefix.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) prefix.deref)
  Replaced concrete pointer with hash (w64 0x3E8C4480EDC2A01A)
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
Collected value for `prefix`
  Assignment asm ln 22, prod ln 12.3, live ln 13, enc 2
  Concrete pointer resolves to skip_prefix.arg2.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.arg2.deref.deref)
  Replaced concrete pointer with hash (w64 0x455DD1BD2C0CCCD8)
  %0 = load i8*, i8** %prefix.addr, !tbaa !20, l12 c3
  (w64 0x455DD1BD2C0CCCD8)
Collected value for `prefix`
  Assignment asm ln 23, prod ln 12.3, live ln 13, enc 3
  Concrete pointer resolves to skip_prefix.arg2.deref.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) skip_prefix.arg2.deref.deref)
  Replaced concrete pointer with hash (w64 0x455DD1BD2C0CCCD8)
  %0 = load i8*, i8** %prefix.addr, !tbaa !20, l12 c3
  (w64 0x455DD1BD2C0CCCD8)
[0;1;31mKLEE: ERROR: example.c:12: reached "unreachable" instruction
[0m[0;1;37mKLEE: NOTE: now ignoring this error at this location
[0m
### Assignments

#### Collation

Filtering redundant before assignments: `prefix` (decl src ln 9)

Checking equivalence of `prefix` (decl src ln 9) from
  assn asm ln 16, prod ln 11.19, live ln 12, enc 1
  %0 = load i8*, i8** %prefix.addr, l11 c19
  (w64 0x3E8C4480EDC2A01A)
and
  assn asm ln 14, prod ln 9.0, live ln 11, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
🔔 Removing: asm ln 16, prod ln 11.19, live ln 12, enc 1

Checking equivalence of `prefix` (decl src ln 9) from
  assn asm ln 22, prod ln 12.3, live ln 13, enc 2
  %1 = load i8*, i8** %prefix.addr, l12 c3
  (w64 0x455DD1BD2C0CCCD8)
and
  assn asm ln 14, prod ln 9.0, live ln 11, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)

Filtering redundant after assignments: `prefix` (decl src ln 9)

Checking equivalence of `prefix` (decl src ln 9) from
  assn asm ln 15, prod ln 9.0, live ln 11, enc 1
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
and
  assn asm ln 14, prod ln 9.0, live ln 11, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
🔔 Removing: asm ln 15, prod ln 9.0, live ln 11, enc 1

Checking equivalence of `prefix` (decl src ln 9) from
  assn asm ln 22, prod ln 12.3, live ln 13, enc 2
  %0 = load i8*, i8** %prefix.addr, !tbaa !20, l12 c3
  (w64 0x455DD1BD2C0CCCD8)
and
  assn asm ln 14, prod ln 9.0, live ln 11, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)

Checking equivalence of `prefix` (decl src ln 9) from
  assn asm ln 23, prod ln 12.3, live ln 13, enc 3
  %0 = load i8*, i8** %prefix.addr, !tbaa !20, l12 c3
  (w64 0x455DD1BD2C0CCCD8)
and
  assn asm ln 22, prod ln 12.3, live ln 13, enc 2
  %0 = load i8*, i8** %prefix.addr, !tbaa !20, l12 c3
  (w64 0x455DD1BD2C0CCCD8)
🔔 Removing: asm ln 23, prod ln 12.3, live ln 13, enc 3

Collating encountered before assignments: `prefix` (decl src ln 9)
  asm ln 14, prod ln 9.0, live ln 11, enc 0
  asm ln 22, prod ln 12.3, live ln 13, enc 1

Collating encountered after assignments: `prefix` (decl src ln 9)
  asm ln 14, prod ln 9.0, live ln 11, enc 0
  asm ln 22, prod ln 12.3, live ln 13, enc 1

#### Check before using after as reference

Checking equivalence of `prefix` (decl src ln 9) from
  assn asm ln 14, prod ln 9.0, live ln 11, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
and
  assn asm ln 14, prod ln 9.0, live ln 11, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
✅ After `prefix` (decl src ln 9) assn asm ln 14, prod ln 9.0, live ln 11, enc 0 symbolic value matches before assn asm ln 14, prod ln 9.0, live ln 11, enc 0

Checking equivalence of `prefix` (decl src ln 9) from
  assn asm ln 22, prod ln 12.3, live ln 13, enc 1
  %1 = load i8*, i8** %prefix.addr, l12 c3
  (w64 0x455DD1BD2C0CCCD8)
and
  assn asm ln 22, prod ln 12.3, live ln 13, enc 1
  %0 = load i8*, i8** %prefix.addr, !tbaa !20, l12 c3
  (w64 0x455DD1BD2C0CCCD8)
✅ After `prefix` (decl src ln 9) assn asm ln 22, prod ln 12.3, live ln 13, enc 1 symbolic value matches before assn asm ln 22, prod ln 12.3, live ln 13, enc 1

✅ Before `prefix` assns checked using after as reference
Variable:            prefix
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
Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

#### Check after using before as reference

Checking equivalence of `prefix` (decl src ln 9) from
  assn asm ln 14, prod ln 9.0, live ln 11, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
and
  assn asm ln 14, prod ln 9.0, live ln 11, enc 0
  i8* %prefix
  (w64 0x3E8C4480EDC2A01A)
✅ Before `prefix` (decl src ln 9) assn asm ln 14, prod ln 9.0, live ln 11, enc 0 symbolic value matches after assn asm ln 14, prod ln 9.0, live ln 11, enc 0

Checking equivalence of `prefix` (decl src ln 9) from
  assn asm ln 22, prod ln 12.3, live ln 13, enc 1
  %0 = load i8*, i8** %prefix.addr, !tbaa !20, l12 c3
  (w64 0x455DD1BD2C0CCCD8)
and
  assn asm ln 22, prod ln 12.3, live ln 13, enc 1
  %1 = load i8*, i8** %prefix.addr, l12 c3
  (w64 0x455DD1BD2C0CCCD8)
✅ Before `prefix` (decl src ln 9) assn asm ln 22, prod ln 12.3, live ln 13, enc 1 symbolic value matches after assn asm ln 22, prod ln 12.3, live ln 13, enc 1

✅ After `prefix` assns checked using before as reference
Variable:            prefix
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
Execution:
  Function Covered:  true
  Complete:          true
  Within Time Limit: true
  Within Fork Limit: true

## Summary

🎉 All consistency checks passed
