; From Compiler Explorer's x86-64 clang 7.0.0 with `-fno-discard-value-names -O1
; -mllvm -print-after-all -mllvm -print-module-scope`
; https://godbolt.org/z/P1v9Pjfe7
; ModuleID = '<source>'
source_filename = "<source>"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @test(i32 %p) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 %p, metadata !12, metadata !DIExpression()), !dbg !14
  %add = add nsw i32 %p, 4, !dbg !15
  call void @llvm.dbg.value(metadata !2, metadata !13, metadata !DIExpression()), !dbg !16
  %conv = sext i32 %add to i64, !dbg !17
  %call = tail call i32 @foo(i64 %conv) #3, !dbg !18
  %tobool = icmp eq i32 %p, 0, !dbg !19
  br i1 %tobool, label %if.end, label %cleanup, !dbg !21

if.end:                                           ; preds = %entry
  tail call void @use(i32 %add) #3, !dbg !22
  ret void, !dbg !23

cleanup:                                          ; preds = %entry
  ret void, !dbg !23
}

declare dso_local i32 @foo(i64) local_unnamed_addr #1

declare dso_local void @use(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 (tags/RELEASE_700/final 342594)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "<source>", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (tags/RELEASE_700/final 342594)"}
!7 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 4, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13}
!12 = !DILocalVariable(name: "p", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 4, column: 15, scope: !7)
!15 = !DILocation(line: 5, column: 13, scope: !7)
!16 = !DILocation(line: 5, column: 7, scope: !7)
!17 = !DILocation(line: 6, column: 13, scope: !7)
!18 = !DILocation(line: 6, column: 9, scope: !7)
!19 = !DILocation(line: 7, column: 7, scope: !20)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 7)
!21 = !DILocation(line: 7, column: 7, scope: !7)
!22 = !DILocation(line: 9, column: 3, scope: !7)
!23 = !DILocation(line: 10, column: 1, scope: !7)
