; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: nofree noinline norecurse nosync nounwind readnone ssp uwtable
define i32 @example(i32 %n) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !16, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 0, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !21
  %cmp6 = icmp sgt i32 %n, 0, !dbg !22
  br i1 %cmp6, label %for.cond.cleanup.loopexit, label %for.cond.cleanup, !dbg !24

for.cond.cleanup.loopexit:                        ; preds = %entry
  %0 = add i32 %n, -1, !dbg !24
  %1 = zext i32 %0 to i33, !dbg !24
  %2 = add i32 %n, -2, !dbg !24
  %3 = zext i32 %2 to i33, !dbg !24
  %4 = mul i33 %1, %3, !dbg !24
  %5 = lshr i33 %4, 1, !dbg !24
  %6 = trunc i33 %5 to i32, !dbg !24
  %7 = add i32 %6, %n, !dbg !24
  call void @llvm.dbg.value(metadata i32 undef, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 undef, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 undef, metadata !17, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !20
  %8 = add i32 %7, -1, !dbg !24
  br label %for.cond.cleanup, !dbg !25

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  %r.0.lcssa = phi i32 [ 0, %entry ], [ %8, %for.cond.cleanup.loopexit ], !dbg !20
  ret i32 %r.0.lcssa, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nosync nounwind readnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/interesting/arithmetic-progression")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 1, type: !14)
!17 = !DILocalVariable(name: "r", scope: !11, file: !8, line: 2, type: !14)
!18 = !DILocalVariable(name: "i", scope: !19, file: !8, line: 3, type: !14)
!19 = distinct !DILexicalBlock(scope: !11, file: !8, line: 3, column: 3)
!20 = !DILocation(line: 0, scope: !11)
!21 = !DILocation(line: 0, scope: !19)
!22 = !DILocation(line: 3, column: 21, scope: !23)
!23 = distinct !DILexicalBlock(scope: !19, file: !8, line: 3, column: 3)
!24 = !DILocation(line: 3, column: 3, scope: !19)
!25 = !DILocation(line: 6, column: 3, scope: !11)
