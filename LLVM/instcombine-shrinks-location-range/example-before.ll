; RUN: opt  %s -instcombine -S | FileCheck %s

; Test sinking of dbg.values when instcombine sinks associated instructions.

declare void @llvm.dbg.value(metadata, metadata, metadata)

; This GEP is sunk, but can be folded into a DIExpression. Check that it
; gets folded. The dbg.value should be duplicated in the block its sunk
; into, to maximise liveness.
;
; CHECK-LABEL: define i64 @foo(i64*
; CHECK:       call void @llvm.dbg.value(metadata i64* %a, metadata !{{[0-9]+}},
; CHECK-SAME:  metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value))
; CHECK-NEXT:  br label %sink1

define i64 @foo(i64 *%a) !dbg !7 {
entry:
  %gep = getelementptr i64, i64 *%a, i64 1
  call void @llvm.dbg.value(metadata i64 *%gep, metadata !16, metadata !12), !dbg !15
  br label %sink1

sink1:
; CHECK-LABEL: sink1:
; CHECK:       call void @llvm.dbg.value(metadata i64* %gep,
; CHECK-SAME:                    metadata !{{[0-9]+}}, metadata !DIExpression())
; CHECK-NEXT:  load
  %0 = load i64, i64* %gep, align 4, !dbg !15
  ret i64 %0, !dbg !15
}

; In this example the GEP cannot (yet) be salvaged. Check that not only is the
; dbg.value sunk, but an undef dbg.value is left to terminate any earlier
; value range.

; CHECK-LABEL: define i64 @bar(
; CHECK:       call void @llvm.dbg.value(metadata i64* undef,
; CHECK-NEXT:  br label %sink2

define i64 @bar(i64 *%a, i64 %b) !dbg !70 {
entry:
  %gep = getelementptr i64, i64 *%a, i64 %b
  call void @llvm.dbg.value(metadata i64* %gep, metadata !73, metadata !12), !dbg !74
  br label %sink2

sink2:
; CHECK-LABEL: sink2:
; CHECK:       call void @llvm.dbg.value(metadata i64* %gep,
; CHECK-SAME:                    metadata !{{[0-9]+}}, metadata !DIExpression())
; CHECK-NEXT:  load
; CHECK-NEXT:  ret
  %0 = load i64, i64* %gep
  ret i64 %0
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "a.c", directory: ".")
!2 = !{}
!3 = !{i64 2, !"Dwarf Version", i64 4}
!4 = !{i64 2, !"Debug Info Version", i64 3}
!5 = !{i64 1, !"PIC Level", i64 2}
!6 = !{!"clang"}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 2, type: !8, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 2, type: !10)
!12 = !DIExpression()
!15 = !DILocation(line: 5, column: 3, scope: !7)
!16 = !DILocalVariable(name: "h", scope: !7, file: !1, line: 4, type: !10)
!70 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 2, type: !71, isLocal: false, isDefinition: true, scopeLine: 3, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!71 = !DISubroutineType(types: !72)
!72 = !{!10, !10, !10}
!73 = !DILocalVariable(name: "k", scope: !70, file: !1, line: 2, type: !10)
!74 = !DILocation(line: 5, column: 3, scope: !70)
