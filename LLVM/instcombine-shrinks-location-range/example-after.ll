; ModuleID = '/app/example.ll' https://godbolt.org/z/71ec8fGab
source_filename = "/app/example.ll"

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #0

define i64 @foo(i64* %a) !dbg !6 {
entry:
  br label %sink1

sink1:                                            ; preds = %entry
  %gep = getelementptr i64, i64* %a, i64 1
  call void @llvm.dbg.value(metadata i64* %gep, metadata !11, metadata !DIExpression()), !dbg !12
  %0 = load i64, i64* %gep, align 4, !dbg !12
  ret i64 %0, !dbg !12
}

define i64 @bar(i64* %a, i64 %b) !dbg !13 {
entry:
  br label %sink2

sink2:                                            ; preds = %entry
  %gep = getelementptr i64, i64* %a, i64 %b
  call void @llvm.dbg.value(metadata i64* %gep, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i64, i64* %gep, align 4
  ret i64 %0
}

attributes #0 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "a.c", directory: ".")
!2 = !{i64 2, !"Dwarf Version", i64 4}
!3 = !{i64 2, !"Debug Info Version", i64 3}
!4 = !{i32 7, !"PIC Level", i64 2}
!5 = !{!"clang"}
!6 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 2, type: !7, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !10)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !9}
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{}
!11 = !DILocalVariable(name: "h", scope: !6, file: !1, line: 4, type: !9)
!12 = !DILocation(line: 5, column: 3, scope: !6)
!13 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 2, type: !14, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !10)
!14 = !DISubroutineType(types: !15)
!15 = !{!9, !9, !9}
!16 = !DILocalVariable(name: "k", scope: !13, file: !1, line: 2, type: !9)
!17 = !DILocation(line: 5, column: 3, scope: !13)
