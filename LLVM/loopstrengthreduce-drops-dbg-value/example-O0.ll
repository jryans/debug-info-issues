; ModuleID = '/app/example.c' https://godbolt.org/z/K7sao9Ec5
source_filename = "/app/example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 %blah) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %blah.addr = alloca i32, align 4
  %bob = alloca i32, align 4
  store i32 %blah, i32* %blah.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %blah.addr, metadata !12, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %bob, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = load i32, i32* %blah.addr, align 4, !dbg !16
  store i32 %0, i32* %bob, align 4, !dbg !18
  br label %for.cond, !dbg !19

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %bob, align 4, !dbg !20
  %2 = load i32, i32* %blah.addr, align 4, !dbg !22
  %add = add nsw i32 %2, 10, !dbg !23
  %cmp = icmp slt i32 %1, %add, !dbg !24
  br i1 %cmp, label %for.body, label %for.end, !dbg !25

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %bob, align 4, !dbg !26
  %cmp1 = icmp slt i32 %3, 3, !dbg !29
  br i1 %cmp1, label %if.then, label %if.end, !dbg !30

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4, !dbg !31
  br label %return, !dbg !31

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !32

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %bob, align 4, !dbg !33
  %inc = add nsw i32 %4, 1, !dbg !33
  store i32 %inc, i32* %bob, align 4, !dbg !33
  br label %for.cond, !dbg !34, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4, !dbg !37
  br label %return, !dbg !37

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !38
  ret i32 %5, !dbg !38
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

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
!13 = !DILocation(line: 1, column: 13, scope: !7)
!14 = !DILocalVariable(name: "bob", scope: !7, file: !8, line: 2, type: !11)
!15 = !DILocation(line: 2, column: 7, scope: !7)
!16 = !DILocation(line: 3, column: 14, scope: !17)
!17 = distinct !DILexicalBlock(scope: !7, file: !8, line: 3, column: 3)
!18 = !DILocation(line: 3, column: 12, scope: !17)
!19 = !DILocation(line: 3, column: 8, scope: !17)
!20 = !DILocation(line: 3, column: 20, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !8, line: 3, column: 3)
!22 = !DILocation(line: 3, column: 26, scope: !21)
!23 = !DILocation(line: 3, column: 31, scope: !21)
!24 = !DILocation(line: 3, column: 24, scope: !21)
!25 = !DILocation(line: 3, column: 3, scope: !17)
!26 = !DILocation(line: 4, column: 9, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !8, line: 4, column: 9)
!28 = distinct !DILexicalBlock(scope: !21, file: !8, line: 3, column: 44)
!29 = !DILocation(line: 4, column: 13, scope: !27)
!30 = !DILocation(line: 4, column: 9, scope: !28)
!31 = !DILocation(line: 5, column: 7, scope: !27)
!32 = !DILocation(line: 6, column: 3, scope: !28)
!33 = !DILocation(line: 3, column: 37, scope: !21)
!34 = !DILocation(line: 3, column: 3, scope: !21)
!35 = distinct !{!35, !25, !36}
!36 = !DILocation(line: 6, column: 3, scope: !17)
!37 = !DILocation(line: 7, column: 3, scope: !7)
!38 = !DILocation(line: 8, column: 1, scope: !7)
