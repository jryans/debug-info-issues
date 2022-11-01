; From Compiler Explorer's x86-64 clang 7.0.0 with `-fno-discard-value-names
; -Xclang -disable-O0-optnone`
; https://godbolt.org/z/9xxEcPGMs
; ModuleID = '/app/example.c'
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32 %p) #0 !dbg !7 {
entry:
  %p.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p.addr, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !14
  %0 = load i32, i32* %p.addr, align 4, !dbg !15
  %add = add nsw i32 %0, 4, !dbg !16
  store i32 %add, i32* %i, align 4, !dbg !14
  %1 = load i32, i32* %i, align 4, !dbg !17
  %conv = sext i32 %1 to i64, !dbg !17
  %call = call i32 @foo(i64 %conv), !dbg !18
  %2 = load i32, i32* %p.addr, align 4, !dbg !19
  %tobool = icmp ne i32 %2, 0, !dbg !19
  br i1 %tobool, label %if.then, label %if.end, !dbg !21

if.then:                                          ; preds = %entry
  br label %return, !dbg !22

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %i, align 4, !dbg !23
  call void @use(i32 %3), !dbg !24
  br label %return, !dbg !25

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !25
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @foo(i64) #2

declare dso_local void @use(i32) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 (tags/RELEASE_700/final 342594)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (tags/RELEASE_700/final 342594)"}
!7 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 4, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "p", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 15, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 7, scope: !7)
!15 = !DILocation(line: 5, column: 11, scope: !7)
!16 = !DILocation(line: 5, column: 13, scope: !7)
!17 = !DILocation(line: 6, column: 13, scope: !7)
!18 = !DILocation(line: 6, column: 9, scope: !7)
!19 = !DILocation(line: 7, column: 7, scope: !20)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 7)
!21 = !DILocation(line: 7, column: 7, scope: !7)
!22 = !DILocation(line: 8, column: 5, scope: !20)
!23 = !DILocation(line: 9, column: 7, scope: !7)
!24 = !DILocation(line: 9, column: 3, scope: !7)
!25 = !DILocation(line: 10, column: 1, scope: !7)
