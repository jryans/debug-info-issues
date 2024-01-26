; ModuleID = 'example.c' https://godbolt.org/z/Ye6zMceWb
source_filename = "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/LLVM/loopstrengthreduce-drops-dbg-value/example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local i32 @foo(i32 %blah) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %blah, metadata !13, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.value(metadata i32 %blah, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = add i32 %blah, -1, !dbg !16
  br label %for.body, !dbg !16

for.cond:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !15
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !15
  %1 = add nsw i32 %blah, 9, !dbg !18
  %lsr.iv.next = add i32 %lsr.iv, 1, !dbg !18
  %cmp = icmp slt i32 %lsr.iv.next, %1, !dbg !18
  br i1 %cmp, label %for.body, label %cleanup, !dbg !16, !llvm.loop !20

for.body:                                         ; preds = %entry, %for.cond
  %lsr.iv = phi i32 [ %0, %entry ], [ %lsr.iv.next, %for.cond ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, metadata !DIExpression()), !dbg !15
  %cmp1 = icmp slt i32 %blah, 3, !dbg !23
  call void @llvm.dbg.value(metadata i32 undef, metadata !14, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !15
  br i1 %cmp1, label %cleanup, label %for.cond, !dbg !26

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ 0, %for.body ], [ 1, %for.cond ], !dbg !15
  ret i32 %retval.0, !dbg !27
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.0.0 (https://github.com/llvm/llvm-project.git 176249bd6732a8044d457092ed932768724a6f06)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/LLVM/loopstrengthreduce-drops-dbg-value")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 11.0.0 (https://github.com/llvm/llvm-project.git 176249bd6732a8044d457092ed932768724a6f06)"}
!7 = distinct !DISubprogram(name: "foo", scope: !8, file: !8, line: 1, type: !9, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/LLVM/loopstrengthreduce-drops-dbg-value")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "blah", arg: 1, scope: !7, file: !8, line: 1, type: !11)
!14 = !DILocalVariable(name: "bob", scope: !7, file: !8, line: 2, type: !11)
!15 = !DILocation(line: 0, scope: !7)
!16 = !DILocation(line: 3, column: 3, scope: !17)
!17 = distinct !DILexicalBlock(scope: !7, file: !8, line: 3, column: 3)
!18 = !DILocation(line: 3, column: 24, scope: !19)
!19 = distinct !DILexicalBlock(scope: !17, file: !8, line: 3, column: 3)
!20 = distinct !{!20, !16, !21, !22}
!21 = !DILocation(line: 6, column: 3, scope: !17)
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !DILocation(line: 4, column: 13, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !8, line: 4, column: 9)
!25 = distinct !DILexicalBlock(scope: !19, file: !8, line: 3, column: 44)
!26 = !DILocation(line: 4, column: 9, scope: !25)
!27 = !DILocation(line: 8, column: 1, scope: !7)
