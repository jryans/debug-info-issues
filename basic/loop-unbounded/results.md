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
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=example example-O0.ll
Writing '.example.dot'...
++ mv .example.dot example-O0.dot
++ ./../../tools/filter-dot.js example-O0.dot
++ mkdir -p klee-out-O1-partial-good
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -mllvm -opt-bisect-limit=47 -o example-O1-partial-good.ll
BISECT: running pass (1) Annotation2MetadataPass on [module]
BISECT: running pass (2) ForceFunctionAttrsPass on [module]
BISECT: running pass (3) InferFunctionAttrsPass on [module]
BISECT: running pass (4) LowerExpectIntrinsicPass on example
BISECT: running pass (5) SimplifyCFGPass on example
BISECT: running pass (6) SROA on example
BISECT: running pass (7) EarlyCSEPass on example
BISECT: running pass (8) LowerExpectIntrinsicPass on main
BISECT: running pass (9) SimplifyCFGPass on main
BISECT: running pass (10) SROA on main
BISECT: running pass (11) EarlyCSEPass on main
BISECT: running pass (12) OpenMPOptPass on [module]
BISECT: running pass (13) IPSCCPPass on [module]
BISECT: running pass (14) CalledValuePropagationPass on [module]
BISECT: running pass (15) GlobalOptPass on [module]
BISECT: running pass (16) PromotePass on example
BISECT: running pass (17) PromotePass on main
BISECT: running pass (18) DeadArgumentEliminationPass on [module]
BISECT: running pass (19) InstCombinePass on example
BISECT: running pass (20) SimplifyCFGPass on example
BISECT: running pass (21) InstCombinePass on main
BISECT: running pass (22) SimplifyCFGPass on main
BISECT: running pass (23) InvalidateAnalysisPass<llvm::AAManager> on example
BISECT: running pass (24) InvalidateAnalysisPass<llvm::AAManager> on main
BISECT: running pass (25) InlinerPass on (example)
BISECT: running pass (26) InlinerPass on (example)
BISECT: running pass (27) PostOrderFunctionAttrsPass on (example)
BISECT: running pass (28) SROA on example
BISECT: running pass (29) EarlyCSEPass on example
BISECT: running pass (30) SimplifyCFGPass on example
BISECT: running pass (31) InstCombinePass on example
BISECT: running pass (32) LibCallsShrinkWrapPass on example
BISECT: running pass (33) SimplifyCFGPass on example
BISECT: running pass (34) ReassociatePass on example
BISECT: running pass (35) LoopSimplifyPass on example
BISECT: running pass (36) LCSSAPass on example
BISECT: running pass (37) LoopInstSimplifyPass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (38) LoopSimplifyCFGPass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (39) LICMPass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (40) LoopRotatePass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (41) LICMPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: running pass (42) SimpleLoopUnswitchPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: running pass (43) SimplifyCFGPass on example
BISECT: running pass (44) InstCombinePass on example
BISECT: running pass (45) LoopSimplifyPass on example
BISECT: running pass (46) LCSSAPass on example
BISECT: running pass (47) LoopIdiomRecognizePass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (48) IndVarSimplifyPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (49) LoopDeletionPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (50) LoopFullUnrollPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (51) SROA on example
BISECT: NOT running pass (52) MemCpyOptPass on example
BISECT: NOT running pass (53) SCCPPass on example
BISECT: NOT running pass (54) BDCEPass on example
BISECT: NOT running pass (55) InstCombinePass on example
BISECT: NOT running pass (56) ADCEPass on example
BISECT: NOT running pass (57) SimplifyCFGPass on example
BISECT: NOT running pass (58) InstCombinePass on example
BISECT: NOT running pass (59) InlinerPass on (main)
BISECT: NOT running pass (60) InlinerPass on (main)
BISECT: NOT running pass (61) PostOrderFunctionAttrsPass on (main)
BISECT: NOT running pass (62) SROA on main
BISECT: NOT running pass (63) EarlyCSEPass on main
BISECT: NOT running pass (64) SimplifyCFGPass on main
BISECT: NOT running pass (65) InstCombinePass on main
BISECT: NOT running pass (66) LibCallsShrinkWrapPass on main
BISECT: NOT running pass (67) SimplifyCFGPass on main
BISECT: NOT running pass (68) ReassociatePass on main
BISECT: NOT running pass (69) LoopSimplifyPass on main
BISECT: NOT running pass (70) LCSSAPass on main
BISECT: NOT running pass (71) SimplifyCFGPass on main
BISECT: NOT running pass (72) InstCombinePass on main
BISECT: NOT running pass (73) LoopSimplifyPass on main
BISECT: NOT running pass (74) LCSSAPass on main
BISECT: NOT running pass (75) SROA on main
BISECT: NOT running pass (76) MemCpyOptPass on main
BISECT: NOT running pass (77) SCCPPass on main
BISECT: NOT running pass (78) BDCEPass on main
BISECT: NOT running pass (79) InstCombinePass on main
BISECT: NOT running pass (80) ADCEPass on main
BISECT: NOT running pass (81) SimplifyCFGPass on main
BISECT: NOT running pass (82) InstCombinePass on main
BISECT: NOT running pass (83) GlobalOptPass on [module]
BISECT: NOT running pass (84) GlobalDCEPass on [module]
BISECT: NOT running pass (85) EliminateAvailableExternallyPass on [module]
BISECT: NOT running pass (86) ReversePostOrderFunctionAttrsPass on [module]
BISECT: NOT running pass (87) Float2IntPass on example
BISECT: NOT running pass (88) LowerConstantIntrinsicsPass on example
BISECT: NOT running pass (89) LoopSimplifyPass on example
BISECT: NOT running pass (90) LCSSAPass on example
BISECT: NOT running pass (91) LoopRotatePass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (92) LoopDistributePass on example
BISECT: NOT running pass (93) InjectTLIMappings on example
BISECT: NOT running pass (94) LoopVectorizePass on example
BISECT: NOT running pass (95) LoopLoadEliminationPass on example
BISECT: NOT running pass (96) InstCombinePass on example
BISECT: NOT running pass (97) SimplifyCFGPass on example
BISECT: NOT running pass (98) VectorCombinePass on example
BISECT: NOT running pass (99) InstCombinePass on example
BISECT: NOT running pass (100) LoopUnrollPass on example
BISECT: NOT running pass (101) WarnMissedTransformationsPass on example
BISECT: NOT running pass (102) InstCombinePass on example
BISECT: NOT running pass (103) LoopSimplifyPass on example
BISECT: NOT running pass (104) LCSSAPass on example
BISECT: NOT running pass (105) LICMPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (106) AlignmentFromAssumptionsPass on example
BISECT: NOT running pass (107) LoopSinkPass on example
BISECT: NOT running pass (108) InstSimplifyPass on example
BISECT: NOT running pass (109) DivRemPairsPass on example
BISECT: NOT running pass (110) SimplifyCFGPass on example
BISECT: NOT running pass (111) Float2IntPass on main
BISECT: NOT running pass (112) LowerConstantIntrinsicsPass on main
BISECT: NOT running pass (113) LoopSimplifyPass on main
BISECT: NOT running pass (114) LCSSAPass on main
BISECT: NOT running pass (115) LoopDistributePass on main
BISECT: NOT running pass (116) InjectTLIMappings on main
BISECT: NOT running pass (117) LoopVectorizePass on main
BISECT: NOT running pass (118) LoopLoadEliminationPass on main
BISECT: NOT running pass (119) InstCombinePass on main
BISECT: NOT running pass (120) SimplifyCFGPass on main
BISECT: NOT running pass (121) VectorCombinePass on main
BISECT: NOT running pass (122) InstCombinePass on main
BISECT: NOT running pass (123) LoopUnrollPass on main
BISECT: NOT running pass (124) WarnMissedTransformationsPass on main
BISECT: NOT running pass (125) InstCombinePass on main
BISECT: NOT running pass (126) LoopSimplifyPass on main
BISECT: NOT running pass (127) LCSSAPass on main
BISECT: NOT running pass (128) AlignmentFromAssumptionsPass on main
BISECT: NOT running pass (129) LoopSinkPass on main
BISECT: NOT running pass (130) InstSimplifyPass on main
BISECT: NOT running pass (131) DivRemPairsPass on main
BISECT: NOT running pass (132) SimplifyCFGPass on main
BISECT: NOT running pass (133) CGProfilePass on [module]
BISECT: NOT running pass (134) GlobalDCEPass on [module]
BISECT: NOT running pass (135) ConstantMergePass on [module]
BISECT: NOT running pass (136) RelLookupTableConverterPass on [module]
BISECT: NOT running pass (137) AnnotationRemarksPass on example
BISECT: NOT running pass (138) AnnotationRemarksPass on main
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1-partial-good/final.bc example-O1-partial-good.ll
++ mkdir -p klee-out-O1-partial-bad
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/clang example.c -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -I /Users/jryans/Projects/klee/include -g -fno-inline -fno-discard-value-names -Xclang -disable-O0-optnone -S -emit-llvm -O1 -mllvm -opt-bisect-limit=48 -o example-O1-partial-bad.ll
BISECT: running pass (1) Annotation2MetadataPass on [module]
BISECT: running pass (2) ForceFunctionAttrsPass on [module]
BISECT: running pass (3) InferFunctionAttrsPass on [module]
BISECT: running pass (4) LowerExpectIntrinsicPass on example
BISECT: running pass (5) SimplifyCFGPass on example
BISECT: running pass (6) SROA on example
BISECT: running pass (7) EarlyCSEPass on example
BISECT: running pass (8) LowerExpectIntrinsicPass on main
BISECT: running pass (9) SimplifyCFGPass on main
BISECT: running pass (10) SROA on main
BISECT: running pass (11) EarlyCSEPass on main
BISECT: running pass (12) OpenMPOptPass on [module]
BISECT: running pass (13) IPSCCPPass on [module]
BISECT: running pass (14) CalledValuePropagationPass on [module]
BISECT: running pass (15) GlobalOptPass on [module]
BISECT: running pass (16) PromotePass on example
BISECT: running pass (17) PromotePass on main
BISECT: running pass (18) DeadArgumentEliminationPass on [module]
BISECT: running pass (19) InstCombinePass on example
BISECT: running pass (20) SimplifyCFGPass on example
BISECT: running pass (21) InstCombinePass on main
BISECT: running pass (22) SimplifyCFGPass on main
BISECT: running pass (23) InvalidateAnalysisPass<llvm::AAManager> on example
BISECT: running pass (24) InvalidateAnalysisPass<llvm::AAManager> on main
BISECT: running pass (25) InlinerPass on (example)
BISECT: running pass (26) InlinerPass on (example)
BISECT: running pass (27) PostOrderFunctionAttrsPass on (example)
BISECT: running pass (28) SROA on example
BISECT: running pass (29) EarlyCSEPass on example
BISECT: running pass (30) SimplifyCFGPass on example
BISECT: running pass (31) InstCombinePass on example
BISECT: running pass (32) LibCallsShrinkWrapPass on example
BISECT: running pass (33) SimplifyCFGPass on example
BISECT: running pass (34) ReassociatePass on example
BISECT: running pass (35) LoopSimplifyPass on example
BISECT: running pass (36) LCSSAPass on example
BISECT: running pass (37) LoopInstSimplifyPass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (38) LoopSimplifyCFGPass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (39) LICMPass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (40) LoopRotatePass on Parallel Loop at depth 1 containing: %for.cond<header><exiting>,%for.body<latch>
BISECT: running pass (41) LICMPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: running pass (42) SimpleLoopUnswitchPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: running pass (43) SimplifyCFGPass on example
BISECT: running pass (44) InstCombinePass on example
BISECT: running pass (45) LoopSimplifyPass on example
BISECT: running pass (46) LCSSAPass on example
BISECT: running pass (47) LoopIdiomRecognizePass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: running pass (48) IndVarSimplifyPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (49) LoopDeletionPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (50) LoopFullUnrollPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (51) SROA on example
BISECT: NOT running pass (52) MemCpyOptPass on example
BISECT: NOT running pass (53) SCCPPass on example
BISECT: NOT running pass (54) BDCEPass on example
BISECT: NOT running pass (55) InstCombinePass on example
BISECT: NOT running pass (56) ADCEPass on example
BISECT: NOT running pass (57) SimplifyCFGPass on example
BISECT: NOT running pass (58) InstCombinePass on example
BISECT: NOT running pass (59) InlinerPass on (main)
BISECT: NOT running pass (60) InlinerPass on (main)
BISECT: NOT running pass (61) PostOrderFunctionAttrsPass on (main)
BISECT: NOT running pass (62) SROA on main
BISECT: NOT running pass (63) EarlyCSEPass on main
BISECT: NOT running pass (64) SimplifyCFGPass on main
BISECT: NOT running pass (65) InstCombinePass on main
BISECT: NOT running pass (66) LibCallsShrinkWrapPass on main
BISECT: NOT running pass (67) SimplifyCFGPass on main
BISECT: NOT running pass (68) ReassociatePass on main
BISECT: NOT running pass (69) LoopSimplifyPass on main
BISECT: NOT running pass (70) LCSSAPass on main
BISECT: NOT running pass (71) SimplifyCFGPass on main
BISECT: NOT running pass (72) InstCombinePass on main
BISECT: NOT running pass (73) LoopSimplifyPass on main
BISECT: NOT running pass (74) LCSSAPass on main
BISECT: NOT running pass (75) SROA on main
BISECT: NOT running pass (76) MemCpyOptPass on main
BISECT: NOT running pass (77) SCCPPass on main
BISECT: NOT running pass (78) BDCEPass on main
BISECT: NOT running pass (79) InstCombinePass on main
BISECT: NOT running pass (80) ADCEPass on main
BISECT: NOT running pass (81) SimplifyCFGPass on main
BISECT: NOT running pass (82) InstCombinePass on main
BISECT: NOT running pass (83) GlobalOptPass on [module]
BISECT: NOT running pass (84) GlobalDCEPass on [module]
BISECT: NOT running pass (85) EliminateAvailableExternallyPass on [module]
BISECT: NOT running pass (86) ReversePostOrderFunctionAttrsPass on [module]
BISECT: NOT running pass (87) Float2IntPass on example
BISECT: NOT running pass (88) LowerConstantIntrinsicsPass on example
BISECT: NOT running pass (89) LoopSimplifyPass on example
BISECT: NOT running pass (90) LCSSAPass on example
BISECT: NOT running pass (91) LoopRotatePass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (92) LoopDistributePass on example
BISECT: NOT running pass (93) InjectTLIMappings on example
BISECT: NOT running pass (94) LoopVectorizePass on example
BISECT: NOT running pass (95) LoopLoadEliminationPass on example
BISECT: NOT running pass (96) InstCombinePass on example
BISECT: NOT running pass (97) SimplifyCFGPass on example
BISECT: NOT running pass (98) VectorCombinePass on example
BISECT: NOT running pass (99) InstCombinePass on example
BISECT: NOT running pass (100) LoopUnrollPass on example
BISECT: NOT running pass (101) WarnMissedTransformationsPass on example
BISECT: NOT running pass (102) InstCombinePass on example
BISECT: NOT running pass (103) LoopSimplifyPass on example
BISECT: NOT running pass (104) LCSSAPass on example
BISECT: NOT running pass (105) LICMPass on Parallel Loop at depth 1 containing: %for.body<header><latch><exiting>
BISECT: NOT running pass (106) AlignmentFromAssumptionsPass on example
BISECT: NOT running pass (107) LoopSinkPass on example
BISECT: NOT running pass (108) InstSimplifyPass on example
BISECT: NOT running pass (109) DivRemPairsPass on example
BISECT: NOT running pass (110) SimplifyCFGPass on example
BISECT: NOT running pass (111) Float2IntPass on main
BISECT: NOT running pass (112) LowerConstantIntrinsicsPass on main
BISECT: NOT running pass (113) LoopSimplifyPass on main
BISECT: NOT running pass (114) LCSSAPass on main
BISECT: NOT running pass (115) LoopDistributePass on main
BISECT: NOT running pass (116) InjectTLIMappings on main
BISECT: NOT running pass (117) LoopVectorizePass on main
BISECT: NOT running pass (118) LoopLoadEliminationPass on main
BISECT: NOT running pass (119) InstCombinePass on main
BISECT: NOT running pass (120) SimplifyCFGPass on main
BISECT: NOT running pass (121) VectorCombinePass on main
BISECT: NOT running pass (122) InstCombinePass on main
BISECT: NOT running pass (123) LoopUnrollPass on main
BISECT: NOT running pass (124) WarnMissedTransformationsPass on main
BISECT: NOT running pass (125) InstCombinePass on main
BISECT: NOT running pass (126) LoopSimplifyPass on main
BISECT: NOT running pass (127) LCSSAPass on main
BISECT: NOT running pass (128) AlignmentFromAssumptionsPass on main
BISECT: NOT running pass (129) LoopSinkPass on main
BISECT: NOT running pass (130) InstSimplifyPass on main
BISECT: NOT running pass (131) DivRemPairsPass on main
BISECT: NOT running pass (132) SimplifyCFGPass on main
BISECT: NOT running pass (133) CGProfilePass on [module]
BISECT: NOT running pass (134) GlobalDCEPass on [module]
BISECT: NOT running pass (135) ConstantMergePass on [module]
BISECT: NOT running pass (136) RelLookupTableConverterPass on [module]
BISECT: NOT running pass (137) AnnotationRemarksPass on example
BISECT: NOT running pass (138) AnnotationRemarksPass on main
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/llvm-as -o klee-out-O1-partial-bad/final.bc example-O1-partial-bad.ll
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
++ /Users/jryans/Projects/LLVM/llvm/build-release-clang-lldb-13.0.0/bin/opt --passes=dot-cfg-only --disable-output --cfg-func-name=example example-O1-cg.ll
Writing '.example.dot'...
++ mv .example.dot example-O1-cg.dot
++ ./../../tools/filter-dot.js example-O1-cg.dot
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

✅ 1 before defined functions(s), 1 after defined functions(s)

## Function `example`

✅ Before and after function names match

### Variables

Before variable `n` (decl src ln 1)
Store to `n` (decl src ln 1), asm ln 15
  arg 0
  Added assignment starting at src ln 1, col 0
Before variable `x` (decl src ln 2)
Store to `x` (decl src ln 2), asm ln 20
  %mul = mul nsw i32 %0, 2, l2 c13, asm ln 19
  Added assignment starting at src ln 2, col 13
Before variable `y` (decl src ln 3)
Store to `y` (decl src ln 3), asm ln 40
  %add2 = add nsw i32 %5, %add1, l5 c7, asm ln 39
  Added assignment starting at src ln 5, col 7
Store to `y` (decl src ln 3), asm ln 22
  const i32 0
  Added assignment starting at src ln 3, col 7
Before variable `i` (decl src ln 4)
Store to `i` (decl src ln 4), asm ln 46
  %inc = add i32 %6, 1, l4 c36, asm ln 45
  Added assignment starting at src ln 4, col 36
Store to `i` (decl src ln 4), asm ln 24
  const i32 0
  Added assignment starting at src ln 4, col 21

After variable `n` (decl src ln 1)
@dbg.value mapping for `n` (decl src ln 1), asm ln 11
Value produced for `n` (decl src ln 1), asm ln 11
  arg 0
  Added assignment starting at src ln 1, col 0
After variable `x` (decl src ln 2)
@dbg.value mapping for `x` (decl src ln 2), asm ln 12
Value produced for `x` (decl src ln 2), asm ln 12
  arg 0
  Added assignment starting at src ln 2, col 0
After variable `y` (decl src ln 3)
@dbg.value mapping for `y` (decl src ln 3), asm ln 13
Value produced for `y` (decl src ln 3), asm ln 13
  const i32 0
  Added assignment starting at src ln 3, col 0
After variable `i` (decl src ln 4)
@dbg.value mapping for `i` (decl src ln 4), asm ln 14
Value produced for `i` (decl src ln 4), asm ln 14
  const i32 0
  Added assignment starting at src ln 4, col 0
After variable `i` (decl src ln 4)
@dbg.value mapping for `i` (decl src ln 4), asm ln 15
Value produced for `i` (decl src ln 4), asm ln 15
  const i32 0
  Value is same as last assignment, skipping
After variable `y` (decl src ln 3)
@dbg.value mapping for `y` (decl src ln 3), asm ln 16
Value produced for `y` (decl src ln 3), asm ln 16
  const i32 0
  Value is same as last assignment, skipping
After variable `x` (decl src ln 2)
@dbg.value mapping for `x` (decl src ln 2), asm ln 21
Value produced for `x` (decl src ln 2), asm ln 21
  arg 0
  Value is same as last assignment, skipping
After variable `x` (decl src ln 2)
@dbg.value mapping for `x` (decl src ln 2), asm ln 25
Value produced for `x` (decl src ln 2), asm ln 25
  %mul = shl nsw i32 %n, 1, l2 c13, asm ln 24
  Added assignment starting at src ln 2, col 13
After variable `i` (decl src ln 4)
@dbg.value mapping for `i` (decl src ln 4), asm ln 30
Value produced for `i` (decl src ln 4), asm ln 30
  const i32 undef
❌ Value produced for `i` (decl src ln 4): missing line info
After variable `y` (decl src ln 3)
@dbg.value mapping for `y` (decl src ln 3), asm ln 31
Value produced for `y` (decl src ln 3), asm ln 31
  const i32 undef
❌ Value produced for `y` (decl src ln 3): missing line info
After variable `y` (decl src ln 3)
@dbg.value mapping for `y` (decl src ln 3), asm ln 32
Value produced for `y` (decl src ln 3), asm ln 32
  const i32 undef
❌ Value produced for `y` (decl src ln 3): missing line info
After variable `i` (decl src ln 4)
@dbg.value mapping for `i` (decl src ln 4), asm ln 33
Value produced for `i` (decl src ln 4), asm ln 33
  const i32 undef
❌ Value produced for `i` (decl src ln 4): missing line info
🔔 Multiple assignments to variable `x` (decl src ln 2) in source range from ln 2, col 0 to ln 2, col 13

✅ 4 before variables found, 4 after variables found, 0 mismatched

### Assignments

✅ Before live range coverage
  Covered:   4
  Uncovered: 0
  Undefined: 0
  Unused:    0
  Removable: 0

### Symbolic values

#### Before values

Collected value for `n`
  i32 %n
  (ReadLSB w32 0x0 n)
Collected value for `x`
  %mul = mul nsw i32 %0, 2, l2 c13
  (Mul w32 0x2
          (ReadLSB w32 0x0 n))
Collected value for `y`
  i32 0
  0x0
Collected value for `i`
  i32 0
  0x0
Collected value for `y`
  %add2 = add nsw i32 %5, %add1, l5 c7
  (Add w32 0x4
          (Add w32 (Mul w32 0x2
                            N0:(ReadLSB w32 0x0 n))
                   N0))
Collected value for `i`
  %inc = add i32 %6, 1, l4 c36
  0x1

#### After values

Collected value for `n`
  i32 %n
  (ReadLSB w32 0x0 n)
Collected value for `x`
  i32 %n
  (ReadLSB w32 0x0 n)
Collected value for `y`
  i32 0
  0x0
Collected value for `i`
  i32 0
  0x0
Collected value for `x`
  %mul = shl nsw i32 %n, 1, l2 c13
  (Shl w32 (ReadLSB w32 0x0 n)
          0x1)

#### Check before against after

Checking equivalence of `i` (decl src ln 4) from
assn 0, src ln 4, col 21
i32 0
0x0
and
assn 0, src ln 4, col 0
i32 0
0x0
🔔 After `i` (decl src ln 4) assn 0, src ln 4, col 0 coordinates don't match before assn 1, src ln 4, col 36
Checking equivalence of `i` (decl src ln 4) from
assn 1, src ln 4, col 36
%inc = add i32 %6, 1, l4 c36
0x1
and
assn 0, src ln 4, col 0
i32 0
0x0
❌ After `i` (decl src ln 4) assn 0, src ln 4, col 0 symbolic value doesn't match before assn 1, src ln 4, col 36
Checking equivalence of `n` (decl src ln 1) from
assn 0, src ln 1, col 0
i32 %n
(ReadLSB w32 0x0 n)
and
assn 0, src ln 1, col 0
i32 %n
(ReadLSB w32 0x0 n)
Query to parse
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 n)
     (ReadLSB w32 0x0 n)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 n)
     N0)
🔔 After `x` (decl src ln 2) assn 1, src ln 2, col 13 coordinates don't match before assn 0, src ln 2, col 13
Checking equivalence of `x` (decl src ln 2) from
assn 0, src ln 2, col 13
%mul = mul nsw i32 %0, 2, l2 c13
(Mul w32 0x2
          (ReadLSB w32 0x0 n))
and
assn 1, src ln 2, col 13
%mul = shl nsw i32 %n, 1, l2 c13
(Shl w32 (ReadLSB w32 0x0 n)
          0x1)
Query to parse
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Mul w32 0x2
              (ReadLSB w32 0x0 n))
     (Shl w32 (ReadLSB w32 0x0 n)
              0x1)))
Parsed query
(Eq (Mul w32 0x2
              N0:(ReadLSB w32 0x0 n))
     (Shl w32 N0 0x1))
Checking equivalence of `y` (decl src ln 3) from
assn 0, src ln 3, col 7
i32 0
0x0
and
assn 0, src ln 3, col 0
i32 0
0x0
🔔 After `y` (decl src ln 3) assn 0, src ln 3, col 0 coordinates don't match before assn 1, src ln 5, col 7
Checking equivalence of `y` (decl src ln 3) from
assn 1, src ln 5, col 7
%add2 = add nsw i32 %5, %add1, l5 c7
(Add w32 0x4
          (Add w32 (Mul w32 0x2
                            N0:(ReadLSB w32 0x0 n))
                   N0))
and
assn 0, src ln 3, col 0
i32 0
0x0
Query to parse
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Add w32 0x4
              (Add w32 (Mul w32 0x2
                                N0:(ReadLSB w32 0x0 n))
                       N0))
     0x0))
Parsed query
(Eq (Add w32 0x4
              (Add w32 (Mul w32 0x2
                                N0:(ReadLSB w32 0x0 n))
                       N0))
     0x0)
❌ After `y` (decl src ln 3) assn 0, src ln 3, col 0 symbolic value doesn't match before assn 1, src ln 5, col 7
(Eq (Add w32 0x4
              (Add w32 (Mul w32 0x2
                                N0:(ReadLSB w32 0x0 n))
                       N0))
     0x0)
❌ Before symbolic values checked against after
  Matching:    4
  Mismatched:  2
  Unused:      0
  Unreachable: 0
  Removable:   0

#### Check after against before

🔔 Before `i` (decl src ln 4) assn 1, src ln 4, col 36 coordinates don't match after assn 0, src ln 4, col 0
Checking equivalence of `i` (decl src ln 4) from
assn 0, src ln 4, col 0
i32 0
0x0
and
assn 1, src ln 4, col 36
%inc = add i32 %6, 1, l4 c36
0x1
❌ Before `i` (decl src ln 4) assn 1, src ln 4, col 36 symbolic value doesn't match after assn 0, src ln 4, col 0
Checking equivalence of `n` (decl src ln 1) from
assn 0, src ln 1, col 0
i32 %n
(ReadLSB w32 0x0 n)
and
assn 0, src ln 1, col 0
i32 %n
(ReadLSB w32 0x0 n)
Query to parse
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (ReadLSB w32 0x0 n)
     (ReadLSB w32 0x0 n)))
Parsed query
(Eq N0:(ReadLSB w32 0x0 n)
     N0)
Pushed initial value onto stack: (ReadLSB w32 0x0 n)
constu/s: 0x1
shl: (Shl w32 (ReadLSB w32 0x0 n)
          0x1)
Result: (Shl w32 (ReadLSB w32 0x0 n)
          0x1)
Checking equivalence of `x` (decl src ln 2) from
assn 0, src ln 2, col 0
i32 %n
(Shl w32 (ReadLSB w32 0x0 n)
          0x1)
and
assn 0, src ln 2, col 13
%mul = mul nsw i32 %0, 2, l2 c13
(Mul w32 0x2
          (ReadLSB w32 0x0 n))
Query to parse
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (ReadLSB w32 0x0 n)
              0x1)
     (Mul w32 0x2
              (ReadLSB w32 0x0 n))))
Parsed query
(Eq (Shl w32 N0:(ReadLSB w32 0x0 n)
              0x1)
     (Mul w32 0x2 N0))
🔔 Before `x` (decl src ln 2) assn 0, src ln 2, col 13 coordinates don't match after assn 1, src ln 2, col 13
Checking equivalence of `x` (decl src ln 2) from
assn 1, src ln 2, col 13
%mul = shl nsw i32 %n, 1, l2 c13
(Shl w32 (ReadLSB w32 0x0 n)
          0x1)
and
assn 0, src ln 2, col 13
%mul = mul nsw i32 %0, 2, l2 c13
(Mul w32 0x2
          (ReadLSB w32 0x0 n))
Query to parse
array n[4] : w32 -> w8 = symbolic
(query [] (Eq (Shl w32 (ReadLSB w32 0x0 n)
              0x1)
     (Mul w32 0x2
              (ReadLSB w32 0x0 n))))
Parsed query
(Eq (Shl w32 N0:(ReadLSB w32 0x0 n)
              0x1)
     (Mul w32 0x2 N0))
Checking equivalence of `y` (decl src ln 3) from
assn 0, src ln 3, col 0
i32 0
0x0
and
assn 0, src ln 3, col 7
i32 0
0x0
❌ After symbolic values checked against before
  Matching:    4
  Mismatched:  1
  Unused:      0
  Unreachable: 0
  Removable:   0

## Summary

❌ Some consistency checks failed
