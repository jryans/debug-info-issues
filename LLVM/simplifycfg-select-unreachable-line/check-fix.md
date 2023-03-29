++ dirname ./check-fix.sh
+ SCRIPT_DIR=.
+ source ./../vars.sh
++ set -eux
+++ dirname ./../vars.sh
++ SCRIPT_DIR=./..
++ source ./../../vars.sh
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
+++ CC_SYSROOT_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++ CC_COMMON_OPTS='-isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone'
+++ CC_IR_OPTS='-S -emit-llvm'
+++ CC_CG_IR_OPTS='-S -w -mllvm -print-after=codegenprepare -mllvm -print-module-scope'
+++ CC_O0_OPTS=
+++ CC_O1_OPTS=-O1
+++ CC_LINK_SYSROOT_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
+++ CC_LINK_OPTS='-Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk'
++++ llvm release-clang-lldb-13.0.0 opt
++++ local build=release-clang-lldb-13.0.0
++++ local program=opt
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
+++ OPT=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt
+++ OPT_CFG_OPTS='--passes=dot-cfg-only --disable-output'
++++ dirname ./../../vars.sh
+++ FILTER_DOT=./../../tools/filter-dot.js
++++ llvm release-clang-lldb-13.0.0 llc
++++ local build=release-clang-lldb-13.0.0
++++ local program=llc
++++ echo /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc
+++ LLC=/Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llc
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
++++ klee debug check-debug-info
++++ local build=debug
++++ local program=check-debug-info
++++ echo /Users/jryans/Projects/klee/build-debug/bin/check-debug-info
+++ CHECK=/Users/jryans/Projects/klee/build-debug/bin/check-debug-info
+++ CHECK_OPTS='--debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace'
+ /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2-fixed/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Checking klee-out-O0/final.bc and klee-out-O2-fixed/final.bc for debug info consistency…

## Functions

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variables

Before variable `foo` (decl src ln 2)
Store to `foo` (decl src ln 2), asm ln 13
  const i32 0
  Added assignment asm ln 13, prod ln 2.16, live ln 3, gen 0
Before variable `read1` (decl src ln 3)
Store to `read1` (decl src ln 3), asm ln 16
  %0 = load volatile i32, i32* %foo, l3 c15, asm ln 15
  Added assignment asm ln 16, prod ln 3.15, live ln 4, gen 0
Before variable `brains` (decl src ln 4)
Store to `brains` (decl src ln 4), asm ln 30
  %add = add nsw i32 %4, 1, l8 c12, asm ln 29
  Added assignment asm ln 30, prod ln 8.12, live ln 9, gen 0
Store to `brains` (decl src ln 4), asm ln 27
  %mul = mul nsw i32 %3, 2, l7 c12, asm ln 26
  Added assignment asm ln 27, prod ln 7.12, live ln 8, gen 0
Store to `brains` (decl src ln 4), asm ln 19
  %1 = load volatile i32, i32* %foo, l4 c16, asm ln 18
  Added assignment asm ln 19, prod ln 4.16, live ln 6, gen 0
Computing generations: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 3, gen 0
Computing generations: `read1` (decl src ln 3)
  asm ln 16, prod ln 3.15, live ln 4, gen 0
Computing generations: `brains` (decl src ln 4)
  asm ln 19, prod ln 4.16, live ln 6, gen 0
  asm ln 27, prod ln 7.12, live ln 8, gen 1
  asm ln 30, prod ln 8.12, live ln 9, gen 2

After variable `foo` (decl src ln 2)
Store to `foo` (decl src ln 2), asm ln 13
  const i32 0
  Added assignment asm ln 13, prod ln 2.16, live ln 3, gen 0
After variable `read1` (decl src ln 3)
@dbg.value mapping for `read1` (decl src ln 3), asm ln 15
Value produced for `read1` (decl src ln 3), asm ln 15
  %foo.0.foo.0. = load volatile i32, i32* %foo, !tbaa !19, l3 c15, asm ln 14
  Added assignment asm ln 15, prod ln 3.15, live ln 4, gen 0
After variable `brains` (decl src ln 4)
@dbg.value mapping for `brains` (decl src ln 4), asm ln 17
Value produced for `brains` (decl src ln 4), asm ln 17
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, !tbaa !19, l4 c16, asm ln 16
  Added assignment asm ln 17, prod ln 4.16, live ln 6, gen 0
After variable `brains` (decl src ln 4)
@dbg.value mapping for `brains` (decl src ln 4), asm ln 22
Value produced for `brains` (decl src ln 4), asm ln 22
  %brains.0 = select i1 %cmp, i32 %add, i32 %foo.0.foo.0.5, l6 c7, asm ln 21
  Added assignment asm ln 22, prod ln 6.7, live ln 12, gen 0
Computing generations: `foo` (decl src ln 2)
  asm ln 13, prod ln 2.16, live ln 3, gen 0
Computing generations: `read1` (decl src ln 3)
  asm ln 15, prod ln 3.15, live ln 4, gen 0
Computing generations: `brains` (decl src ln 4)
  asm ln 17, prod ln 4.16, live ln 6, gen 0
  asm ln 22, prod ln 6.7, live ln 12, gen 1

✅ 3 before variables found, 3 after variables found, 0 mismatched

### Symbolic values

#### Before values

[0;35mKLEE: WARNING: Unable to load source file `/app/example.c`
[0mCollected value for `foo`
  i32 0
  0x0
Collected value for `read1`
  %0 = load volatile i32, i32* %foo, l3 c15
  (ReadLSB w32 0x0 foo)
Collected value for `brains`
  %1 = load volatile i32, i32* %foo, l4 c16
  (ReadLSB w32 0x0 foo_1)
Collected value for `brains`
  %mul = mul nsw i32 %3, 2, l7 c12
  (Mul w32 0x2
          (ReadLSB w32 0x0 foo_1))
Collected value for `brains`
  %add = add nsw i32 %4, 1, l8 c12
  (Add w32 0x1
          (Mul w32 0x2
                   (ReadLSB w32 0x0 foo_1)))

#### After values

Assertion failed: (idx < size()), function operator[], file SmallVector.h, line 277.
PLEASE submit a bug report to https://bugs.llvm.org/ and include the crash backtrace.
Stack dump:
0.      Program arguments: /Users/jryans/Projects/klee/build-debug/bin/check-debug-info klee-out-O0/final.bc klee-out-O2-fixed/final.bc --debug-only=check-debug-info,independent-function,values-collector,variable --debug-execution-trace
Stack dump without symbol names (ensure you have llvm-symbolizer in your PATH or set the environment var `LLVM_SYMBOLIZER_PATH` to point to it):
0  check-debug-info         0x0000000108e10597 llvm::sys::PrintStackTrace(llvm::raw_ostream&, int) + 39
1  check-debug-info         0x0000000108e0f3d8 llvm::sys::RunSignalHandlers() + 248
2  check-debug-info         0x0000000108e10be0 SignalHandler(int) + 288
3  libsystem_platform.dylib 0x00007ff819786c1d _sigtramp + 29
4  libsystem_platform.dylib 0x000000010c36c510 _sigtramp + 18446603374653495568
5  libsystem_c.dylib        0x00007ff8196a5ca5 abort + 123
6  libsystem_c.dylib        0x00007ff8196a4fbe err + 0
7  check-debug-info         0x00000001073ae3a0 llvm::SmallVectorTemplateCommon<llvm::StringRef, void>::operator[](unsigned long) + 96
8  check-debug-info         0x00000001073ae1a2 klee::SourceInfo::SourceInfo(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, unsigned int, unsigned int) + 706
9  check-debug-info         0x00000001073ae5d1 klee::SourceInfo::SourceInfo(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, unsigned int, unsigned int) + 33
10 check-debug-info         0x00000001073ba6c6 klee::Executor::printTraceBeforeExecution(klee::ExecutionState&, klee::KInstruction*) + 966
11 check-debug-info         0x00000001073d2371 klee::Executor::run(klee::ExecutionState&) + 1793
12 check-debug-info         0x00000001073d715d klee::Executor::runFunction(llvm::Function*) + 205
13 check-debug-info         0x000000010737debd collectValues(llvm::StringRef, std::__1::unique_ptr<llvm::Module, std::__1::default_delete<llvm::Module> >, llvm::StringRef, llvm::StringRef, llvm::SmallVector<std::__1::pair<Variable, Assignment*>, 1u>&) + 1341
14 check-debug-info         0x0000000107349785 checkFunction(llvm::LLVMContext&, llvm::StringRef, llvm::StringRef, std::__1::vector<clang::tooling::Diagnostic, std::__1::allocator<clang::tooling::Diagnostic> > const&) + 3109
15 check-debug-info         0x000000010734b93e main + 1742
16 dyld                     0x00007ff819429310 start + 2432
./check-fix.sh: line 6: 40635 Abort trap: 6           ${CHECK} ${O0_BC} ${O2_FIXED_BC} ${CHECK_OPTS}
