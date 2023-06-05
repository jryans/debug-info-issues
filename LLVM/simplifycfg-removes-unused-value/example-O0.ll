; ModuleID = '/app/example.c' https://godbolt.org/z/vaxce3c5v
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @example() #0 !dbg !7 {
entry:
  %foo = alloca i32, align 4
  %beards = alloca i32, align 4
  %birds = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %foo, metadata !11, metadata !DIExpression()), !dbg !13
  store volatile i32 4, i32* %foo, align 4, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %beards, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 0, i32* %beards, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %birds, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 0, i32* %birds, align 4, !dbg !17
  %0 = load volatile i32, i32* %foo, align 4, !dbg !18
  %cmp = icmp eq i32 %0, 4, !dbg !20
  br i1 %cmp, label %if.then, label %if.else, !dbg !21

if.then:                                          ; preds = %entry
  store i32 8, i32* %beards, align 4, !dbg !22
  store i32 3, i32* %birds, align 4, !dbg !24
  br label %if.end, !dbg !25

if.else:                                          ; preds = %entry
  store i32 4, i32* %beards, align 4, !dbg !26
  store i32 6, i32* %birds, align 4, !dbg !28
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %beards, align 4, !dbg !29
  ret i32 %1, !dbg !30
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

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
!7 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 1, type: !8, isLocal: false, isDefinition: true, scopeLine: 1, isOptimized: false, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "foo", scope: !7, file: !1, line: 2, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !10)
!13 = !DILocation(line: 2, column: 16, scope: !7)
!14 = !DILocalVariable(name: "beards", scope: !7, file: !1, line: 4, type: !10)
!15 = !DILocation(line: 4, column: 7, scope: !7)
!16 = !DILocalVariable(name: "birds", scope: !7, file: !1, line: 5, type: !10)
!17 = !DILocation(line: 5, column: 7, scope: !7)
!18 = !DILocation(line: 7, column: 7, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 7)
!20 = !DILocation(line: 7, column: 11, scope: !19)
!21 = !DILocation(line: 7, column: 7, scope: !7)
!22 = !DILocation(line: 8, column: 12, scope: !23)
!23 = distinct !DILexicalBlock(scope: !19, file: !1, line: 7, column: 17)
!24 = !DILocation(line: 9, column: 11, scope: !23)
!25 = !DILocation(line: 10, column: 3, scope: !23)
!26 = !DILocation(line: 11, column: 12, scope: !27)
!27 = distinct !DILexicalBlock(scope: !19, file: !1, line: 10, column: 10)
!28 = !DILocation(line: 12, column: 11, scope: !27)
!29 = !DILocation(line: 15, column: 10, scope: !7)
!30 = !DILocation(line: 15, column: 3, scope: !7)
