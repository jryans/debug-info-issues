; ModuleID = 'example-O0.ll'
source_filename = "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/LLVM/loopstrengthreduce-drops-dbg-value/example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @example(i32 %input) #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %input, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.value(metadata i32 %input, metadata !13, metadata !DIExpression()), !dbg !12
  br label %for.cond, !dbg !14

for.cond:                                         ; preds = %for.inc, %entry
  %current.0 = phi i32 [ %input, %entry ], [ %inc, %for.inc ], !dbg !16
  call void @llvm.dbg.value(metadata i32 %current.0, metadata !13, metadata !DIExpression()), !dbg !12
  %add = add nsw i32 %input, 10, !dbg !17
  %cmp = icmp slt i32 %current.0, %add, !dbg !19
  br i1 %cmp, label %for.body, label %for.end, !dbg !20

for.body:                                         ; preds = %for.cond
  %cmp1 = icmp slt i32 %current.0, 3, !dbg !21
  br i1 %cmp1, label %if.then, label %if.end, !dbg !24

if.then:                                          ; preds = %for.body
  br label %return, !dbg !25

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !26

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %current.0, 1, !dbg !27
  call void @llvm.dbg.value(metadata i32 %inc, metadata !13, metadata !DIExpression()), !dbg !12
  br label %for.cond, !dbg !28, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  br label %return, !dbg !31

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.end ], !dbg !12
  ret i32 %retval.0, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 11.0.0 (https://github.com/llvm/llvm-project.git 176249bd6732a8044d457092ed932768724a6f06)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/LLVM/loopstrengthreduce-drops-dbg-value")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 11.0.0 (https://github.com/llvm/llvm-project.git 176249bd6732a8044d457092ed932768724a6f06)"}
!7 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "input", arg: 1, scope: !7, file: !1, line: 1, type: !10)
!12 = !DILocation(line: 0, scope: !7)
!13 = !DILocalVariable(name: "current", scope: !7, file: !1, line: 2, type: !10)
!14 = !DILocation(line: 3, column: 8, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 3, column: 3)
!16 = !DILocation(line: 0, scope: !15)
!17 = !DILocation(line: 3, column: 31, scope: !18)
!18 = distinct !DILexicalBlock(scope: !15, file: !1, line: 3, column: 3)
!19 = !DILocation(line: 3, column: 24, scope: !18)
!20 = !DILocation(line: 3, column: 3, scope: !15)
!21 = !DILocation(line: 4, column: 13, scope: !22)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 4, column: 9)
!23 = distinct !DILexicalBlock(scope: !18, file: !1, line: 3, column: 44)
!24 = !DILocation(line: 4, column: 9, scope: !23)
!25 = !DILocation(line: 5, column: 7, scope: !22)
!26 = !DILocation(line: 6, column: 3, scope: !23)
!27 = !DILocation(line: 3, column: 37, scope: !18)
!28 = !DILocation(line: 3, column: 3, scope: !18)
!29 = distinct !{!29, !20, !30}
!30 = !DILocation(line: 6, column: 3, scope: !15)
!31 = !DILocation(line: 7, column: 3, scope: !7)
!32 = !DILocation(line: 8, column: 1, scope: !7)
