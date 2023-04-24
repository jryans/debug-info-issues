; ModuleID = 'example-O0.ll'
source_filename = "/app/example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 %blah) #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %blah, metadata !12, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.value(metadata i32 %blah, metadata !14, metadata !DIExpression()), !dbg !13
  br label %for.cond, !dbg !15

for.cond:                                         ; preds = %for.inc, %entry
  %bob.0 = phi i32 [ %blah, %entry ], [ %inc, %for.inc ], !dbg !17
  call void @llvm.dbg.value(metadata i32 %bob.0, metadata !14, metadata !DIExpression()), !dbg !13
  %add = add nsw i32 %blah, 10, !dbg !18
  %cmp = icmp slt i32 %bob.0, %add, !dbg !20
  br i1 %cmp, label %for.body, label %for.end, !dbg !21

for.body:                                         ; preds = %for.cond
  %cmp1 = icmp slt i32 %bob.0, 3, !dbg !22
  br i1 %cmp1, label %if.then, label %if.end, !dbg !25

if.then:                                          ; preds = %for.body
  br label %return, !dbg !26

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !27

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %bob.0, 1, !dbg !28
  call void @llvm.dbg.value(metadata i32 %inc, metadata !14, metadata !DIExpression()), !dbg !13
  br label %for.cond, !dbg !29, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  br label %return, !dbg !32

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.end ], !dbg !13
  ret i32 %retval.0, !dbg !33
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
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 11.0.0 (https://github.com/llvm/llvm-project.git 176249bd6732a8044d457092ed932768724a6f06)"}
!7 = distinct !DISubprogram(name: "foo", scope: !8, file: !8, line: 1, type: !9, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "blah", arg: 1, scope: !7, file: !8, line: 1, type: !11)
!13 = !DILocation(line: 0, scope: !7)
!14 = !DILocalVariable(name: "bob", scope: !7, file: !8, line: 2, type: !11)
!15 = !DILocation(line: 3, column: 8, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !8, line: 3, column: 3)
!17 = !DILocation(line: 0, scope: !16)
!18 = !DILocation(line: 3, column: 31, scope: !19)
!19 = distinct !DILexicalBlock(scope: !16, file: !8, line: 3, column: 3)
!20 = !DILocation(line: 3, column: 24, scope: !19)
!21 = !DILocation(line: 3, column: 3, scope: !16)
!22 = !DILocation(line: 4, column: 13, scope: !23)
!23 = distinct !DILexicalBlock(scope: !24, file: !8, line: 4, column: 9)
!24 = distinct !DILexicalBlock(scope: !19, file: !8, line: 3, column: 44)
!25 = !DILocation(line: 4, column: 9, scope: !24)
!26 = !DILocation(line: 5, column: 7, scope: !23)
!27 = !DILocation(line: 6, column: 3, scope: !24)
!28 = !DILocation(line: 3, column: 37, scope: !19)
!29 = !DILocation(line: 3, column: 3, scope: !19)
!30 = distinct !{!30, !21, !31}
!31 = !DILocation(line: 6, column: 3, scope: !16)
!32 = !DILocation(line: 7, column: 3, scope: !7)
!33 = !DILocation(line: 8, column: 1, scope: !7)
