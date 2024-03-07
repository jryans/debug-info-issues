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

## Function `get_builtin`

✅ Before and after function names match

### Variables

Before variable `s` (decl src ln 16)
Store to declared address of `s` (decl src ln 16), asm ln 21
  arg 0
  Added assignment asm ln 21, prod ln 16.0, live ln 19, enc None
Before variable `i` (decl src ln 18)
Store to declared address of `i` (decl src ln 18), asm ln 54
  %inc = add nsw i32 %6, 1, l19 c23, asm ln 53
🔔 Store to declared address of `i` (decl src ln 18): live ln too early, using produced ln + 1
  Added assignment asm ln 54, prod ln 19.23, live ln 20, enc None
Store to declared address of `i` (decl src ln 18), asm ln 24
  const i32 0
🔔 Store to declared address of `i` (decl src ln 18): live ln too early, using produced ln + 1
  Added assignment asm ln 24, prod ln 19.10, live ln 20, enc None
Before variable `p` (decl src ln 20)
Store to declared address of `p` (decl src ln 20), asm ln 37
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([4 x %struct.cmd_struct], [4 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l20 c37, asm ln 36
  Added assignment asm ln 37, prod ln 20.37, live ln 21, enc None

After variable `s` (decl src ln 16)
Value produced for `s` (decl src ln 16), asm ln 17
  arg 0
  Added assignment asm ln 17, prod ln 16.0, live ln 19, enc None
After variable `i` (decl src ln 18)
Value produced for `i` (decl src ln 18), asm ln 18
  const i32 0
  Added assignment asm ln 18, prod ln 18.0, live ln 19, enc None
After variable `i` (decl src ln 18)
Value produced for `i` (decl src ln 18), asm ln 22
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 29
🔔 Value produced for `i` (decl src ln 18): live ln too early, using produced ln + 1
  Added assignment asm ln 22, prod ln 19.17, live ln 20, enc None
After variable `i` (decl src ln 18)
Value produced for `i` (decl src ln 18), asm ln 23
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 29
🔔 Value produced for `i` (decl src ln 18): live ln too early, using produced ln + 1
  Added assignment asm ln 23, prod ln 19.17, live ln 20, enc None
After variable `i` (decl src ln 18)
Value produced for `i` (decl src ln 18), asm ln 31
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 29
  Added assignment asm ln 31, prod ln 19.17, live ln 21, enc None
After variable `p` (decl src ln 20)
Value produced for `p` (decl src ln 20), asm ln 32
  [ %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 29, global commands ]
  Added assignment asm ln 32, prod ln 19.17, live ln 21, enc None
After variable `i` (decl src ln 18)
Value produced for `i` (decl src ln 18), asm ln 40
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ], asm ln 29
🔔 Value produced for `i` (decl src ln 18): missing live ln, using produced ln + 1
  Added assignment asm ln 40, prod ln 19.17, live ln 20, enc None

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

Collected value for `s`
  Concrete pointer resolves to s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) s.deref)
  Replaced concrete pointer with hash (w64 0x100699262794627A)
  i8* %s
  (w64 0x100699262794627A)
Collected value for `i`
  i32 0
  (w32 0x0)
Collected value for `p`
  Concrete pointer resolves to commands, offset (w64 0x0)
  Created deref expr (w64 0x1104CE200)
  Replaced concrete pointer with hash (w64 0xBB8485E41BDF13D5)
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([4 x %struct.cmd_struct], [4 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l20 c37
  (w64 0xBB8485E41BDF13D5)
Collected value for `i`
  %inc = add nsw i32 %6, 1, l19 c23
  (w32 0x1)

#### After values

Collected value for `s`
  Concrete pointer resolves to s.deref, offset (w64 0x0)
  Created deref expr (ReadLSB w64 (w32 0x0) s.deref)
  Replaced concrete pointer with hash (w64 0x100699262794627A)
  i8* %s
  (w64 0x100699262794627A)
Collected value for `i`
  i32 0
  (w32 0x0)
Collected value for `i`
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (w64 0x0)
Collected value for `p`
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (w64 0x0)
Collected value for `p`
  Concrete pointer resolves to commands, offset (w64 0x0)
  Created deref expr (w64 0x1104CE1F0)
  Replaced concrete pointer with hash (w64 0xBB8485E41BDF13D5)
  @commands = global [4 x %struct.cmd_struct.0] [%struct.cmd_struct.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }], align 16, !dbg !0
  (w64 0xBB8485E41BDF13D5)
Collected value for `i`
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (w64 0x0)
Collected value for `i`
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (w64 0x0)
Collected value for `i`
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  Block: 0
  (w64 0x0)

### Assignments

Filtering redundant before assignments: `i` (decl src ln 18)

Checking equivalence of `i` (decl src ln 18) from
  assn asm ln 54, prod ln 19.23, live ln 20, enc 1
  %inc = add nsw i32 %6, 1, l19 c23
  (w32 0x1)
and
  assn asm ln 24, prod ln 19.10, live ln 20, enc 0
  i32 0
  (w32 0x0)

Filtering redundant after assignments: `i` (decl src ln 18)

Pushed initial value onto stack: (w64 0x0)
constu/s: (w64 0x18)
div: (SDiv w64 (w64 0x0) (w64 0x18))
Result: (Extract w32 0 (SDiv w64 (w64 0x0) (w64 0x18)))
Checking equivalence of `i` (decl src ln 18) from
  assn asm ln 31, prod ln 19.17, live ln 21, enc 1
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Extract w32 0 (SDiv w64 (w64 0x0) (w64 0x18)))
and
  assn asm ln 18, prod ln 18.0, live ln 19, enc 0
  i32 0
  (w32 0x0)
Query to parse
(query [] (Eq (Extract w32 0 (SDiv w64 (w64 0x0) (w64 0x18)))
     (w32 0x0)))
Parsed query
(Eq (Extract w32 0 (SDiv w64 (w64 0x0) (w64 0x18)))
     (w32 0x0))
🔔 Removing: asm ln 31, prod ln 19.17, live ln 21, enc 1

Pushed initial value onto stack: (w64 0x0)
constu/s: (w64 0x18)
div: (SDiv w64 (w64 0x0) (w64 0x18))
plus_uconst: (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1))
Result: (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
Checking equivalence of `i` (decl src ln 18) from
  assn asm ln 40, prod ln 19.17, live ln 20, enc 2
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
and
  assn asm ln 18, prod ln 18.0, live ln 19, enc 0
  i32 0
  (w32 0x0)
Query to parse
(query [] (Eq (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
     (w32 0x0)))
Parsed query
(Eq (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
     (w32 0x0))

Pushed initial value onto stack: (w64 0x0)
constu/s: (w64 0x18)
div: (SDiv w64 (w64 0x0) (w64 0x18))
constu/s: (w64 0x1)
plus: (Add w64 (w64 0x1) (SDiv w64 (w64 0x0) (w64 0x18)))
Result: (Extract w32 0 (Add w64 (w64 0x1) (SDiv w64 (w64 0x0) (w64 0x18))))
Checking equivalence of `i` (decl src ln 18) from
  assn asm ln 22, prod ln 19.17, live ln 20, enc 3
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Extract w32 0 (Add w64 (w64 0x1) (SDiv w64 (w64 0x0) (w64 0x18))))
and
  assn asm ln 40, prod ln 19.17, live ln 20, enc 2
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
Query to parse
(query [] (Eq (Extract w32 0 (Add w64 (w64 0x1) N0:(SDiv w64 (w64 0x0) (w64 0x18))))
     (Extract w32 0 (Add w64 N0 (w64 0x1)))))
Parsed query
(Eq (Extract w32 0 (Add w64 (w64 0x1) N0:(SDiv w64 (w64 0x0) (w64 0x18))))
     (Extract w32 0 (Add w64 N0 (w64 0x1))))
🔔 Removing: asm ln 22, prod ln 19.17, live ln 20, enc 3

Pushed initial value onto stack: (w64 0x0)
constu/s: (w64 0x18)
div: (SDiv w64 (w64 0x0) (w64 0x18))
plus_uconst: (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1))
Result: (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
Checking equivalence of `i` (decl src ln 18) from
  assn asm ln 23, prod ln 19.17, live ln 20, enc 4
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
and
  assn asm ln 40, prod ln 19.17, live ln 20, enc 2
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
Query to parse
(query [] (Eq N0:(Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
     N0))
Parsed query
(Eq N0:(Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
     N0)
🔔 Removing: asm ln 23, prod ln 19.17, live ln 20, enc 4

Collating encountered before assignments: `s` (decl src ln 16)
  asm ln 21, prod ln 16.0, live ln 19, enc 0
Collating encountered before assignments: `i` (decl src ln 18)
  asm ln 24, prod ln 19.10, live ln 20, enc 0
  asm ln 54, prod ln 19.23, live ln 20, enc 1
Collating encountered before assignments: `p` (decl src ln 20)
  asm ln 37, prod ln 20.37, live ln 21, enc 0

Collating encountered after assignments: `s` (decl src ln 16)
  asm ln 17, prod ln 16.0, live ln 19, enc 0
Collating encountered after assignments: `i` (decl src ln 18)
  asm ln 18, prod ln 18.0, live ln 19, enc 0
  asm ln 40, prod ln 19.17, live ln 20, enc 1
Collating encountered after assignments: `p` (decl src ln 20)
  asm ln 32, prod ln 19.17, live ln 21, enc 0

#### Check before using after as reference

❌ After `i` (decl src ln 18) assn asm ln 18, prod ln 18.0, live ln 19, enc 0 coordinates don't match before assn asm ln 24, prod ln 19.10, live ln 20, enc 0
Checking equivalence of `i` (decl src ln 18) from
  assn asm ln 24, prod ln 19.10, live ln 20, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 18, prod ln 18.0, live ln 19, enc 0
  i32 0
  (w32 0x0)
✅ After `i` (decl src ln 18) assn asm ln 18, prod ln 18.0, live ln 19, enc 0 symbolic value matches before assn asm ln 24, prod ln 19.10, live ln 20, enc 0

Checking equivalence of `i` (decl src ln 18) from
  assn asm ln 54, prod ln 19.23, live ln 20, enc 1
  %inc = add nsw i32 %6, 1, l19 c23
  (w32 0x1)
and
  assn asm ln 40, prod ln 19.17, live ln 20, enc 1
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
Query to parse
(query [] (Eq (w32 0x1)
     (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))))
Parsed query
(Eq (w32 0x1)
     (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1))))
✅ After `i` (decl src ln 18) assn asm ln 40, prod ln 19.17, live ln 20, enc 1 symbolic value matches before assn asm ln 54, prod ln 19.23, live ln 20, enc 1

❌ Before `i` assns checked using after as reference
Variable:            i
  Assignments:       2
  Matching Coords:   1
  Matching Value:    2
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

LLVM_arg: (w64 0x0)
constu/s: (w64 0x18)
div: (SDiv w64 (w64 0x0) (w64 0x18))
constu/s: (w64 0x18)
mul: (Mul w64 (w64 0x18) (SDiv w64 (w64 0x0) (w64 0x18)))
LLVM_arg: (w64 0xBB8485E41BDF13D5)
plus: (Add w64 (w64 0xBB8485E41BDF13D5)
          (Mul w64 (w64 0x18) (SDiv w64 (w64 0x0) (w64 0x18))))
Result: (Add w64 (w64 0xBB8485E41BDF13D5)
          (Mul w64 (w64 0x18) (SDiv w64 (w64 0x0) (w64 0x18))))
Checking equivalence of `p` (decl src ln 20) from
  assn asm ln 37, prod ln 20.37, live ln 21, enc 0
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([4 x %struct.cmd_struct], [4 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l20 c37
  (w64 0xBB8485E41BDF13D5)
and
  assn asm ln 32, prod ln 19.17, live ln 21, enc 0
  [ %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ], @commands = global [4 x %struct.cmd_struct.0] [%struct.cmd_struct.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }], align 16, !dbg !0 ]
  (Add w64 (w64 0xBB8485E41BDF13D5)
          (Mul w64 (w64 0x18) (SDiv w64 (w64 0x0) (w64 0x18))))
Query to parse
(query [] (Eq (w64 0xBB8485E41BDF13D5)
     (Add w64 (w64 0xBB8485E41BDF13D5)
              (Mul w64 (w64 0x18) (SDiv w64 (w64 0x0) (w64 0x18))))))
Parsed query
(Eq (w64 0xBB8485E41BDF13D5)
     (Add w64 (w64 0xBB8485E41BDF13D5)
              (Mul w64 (w64 0x18) (SDiv w64 (w64 0x0) (w64 0x18)))))
✅ After `p` (decl src ln 20) assn asm ln 32, prod ln 19.17, live ln 21, enc 0 symbolic value matches before assn asm ln 37, prod ln 20.37, live ln 21, enc 0

✅ Before `p` assns checked using after as reference
Variable:            p
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

Checking equivalence of `s` (decl src ln 16) from
  assn asm ln 21, prod ln 16.0, live ln 19, enc 0
  i8* %s
  (w64 0x100699262794627A)
and
  assn asm ln 17, prod ln 16.0, live ln 19, enc 0
  i8* %s
  (w64 0x100699262794627A)
✅ After `s` (decl src ln 16) assn asm ln 17, prod ln 16.0, live ln 19, enc 0 symbolic value matches before assn asm ln 21, prod ln 16.0, live ln 19, enc 0

✅ Before `s` assns checked using after as reference
Variable:            s
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

#### Check after using before as reference

❌ Before `i` (decl src ln 18) assn asm ln 24, prod ln 19.10, live ln 20, enc 0 coordinates don't match after assn asm ln 18, prod ln 18.0, live ln 19, enc 0
Checking equivalence of `i` (decl src ln 18) from
  assn asm ln 18, prod ln 18.0, live ln 19, enc 0
  i32 0
  (w32 0x0)
and
  assn asm ln 24, prod ln 19.10, live ln 20, enc 0
  i32 0
  (w32 0x0)
✅ Before `i` (decl src ln 18) assn asm ln 24, prod ln 19.10, live ln 20, enc 0 symbolic value matches after assn asm ln 18, prod ln 18.0, live ln 19, enc 0

Checking equivalence of `i` (decl src ln 18) from
  assn asm ln 40, prod ln 19.17, live ln 20, enc 1
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ]
  (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
and
  assn asm ln 54, prod ln 19.23, live ln 20, enc 1
  %inc = add nsw i32 %6, 1, l19 c23
  (w32 0x1)
Query to parse
(query [] (Eq (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
     (w32 0x1)))
Parsed query
(Eq (Extract w32 0 (Add w64 (SDiv w64 (w64 0x0) (w64 0x18)) (w64 0x1)))
     (w32 0x1))
✅ Before `i` (decl src ln 18) assn asm ln 54, prod ln 19.23, live ln 20, enc 1 symbolic value matches after assn asm ln 40, prod ln 19.17, live ln 20, enc 1

❌ After `i` assns checked using before as reference
Variable:            i
  Assignments:       2
  Matching Coords:   1
  Matching Value:    2
Errors:
  Mismatched Coords: 1
  Mismatched Value:  0
  Not Encountered:   0
  Missing:           0
Warnings:
  Unused:            0
  Unreachable:       0
  Removable:         0

Checking equivalence of `p` (decl src ln 20) from
  assn asm ln 32, prod ln 19.17, live ln 21, enc 0
  [ %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.cond ], @commands = global [4 x %struct.cmd_struct.0] [%struct.cmd_struct.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct.0 { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }], align 16, !dbg !0 ]
  (Add w64 (w64 0xBB8485E41BDF13D5)
          (Mul w64 (w64 0x18) (SDiv w64 (w64 0x0) (w64 0x18))))
and
  assn asm ln 37, prod ln 20.37, live ln 21, enc 0
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([4 x %struct.cmd_struct], [4 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, l20 c37
  (w64 0xBB8485E41BDF13D5)
Query to parse
(query [] (Eq (Add w64 (w64 0xBB8485E41BDF13D5)
              (Mul w64 (w64 0x18) (SDiv w64 (w64 0x0) (w64 0x18))))
     (w64 0xBB8485E41BDF13D5)))
Parsed query
(Eq (Add w64 (w64 0xBB8485E41BDF13D5)
              (Mul w64 (w64 0x18) (SDiv w64 (w64 0x0) (w64 0x18))))
     (w64 0xBB8485E41BDF13D5))
✅ Before `p` (decl src ln 20) assn asm ln 37, prod ln 20.37, live ln 21, enc 0 symbolic value matches after assn asm ln 32, prod ln 19.17, live ln 21, enc 0

✅ After `p` assns checked using before as reference
Variable:            p
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

Checking equivalence of `s` (decl src ln 16) from
  assn asm ln 17, prod ln 16.0, live ln 19, enc 0
  i8* %s
  (w64 0x100699262794627A)
and
  assn asm ln 21, prod ln 16.0, live ln 19, enc 0
  i8* %s
  (w64 0x100699262794627A)
✅ Before `s` (decl src ln 16) assn asm ln 21, prod ln 16.0, live ln 19, enc 0 symbolic value matches after assn asm ln 17, prod ln 16.0, live ln 19, enc 0

✅ After `s` assns checked using before as reference
Variable:            s
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

## Summary

❌ Some consistency checks failed
