; ModuleID = '/app/example.c' https://godbolt.org/z/PjjqaETx1
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = common dso_local global i32 0, align 4, !dbg !0
@x = common dso_local local_unnamed_addr global i32* null, align 8, !dbg !6

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local i32 @baz(i32 %p, i32 %q) local_unnamed_addr #0 !dbg !16 {
entry:
  call void @llvm.dbg.value(metadata i32 %p, metadata !20, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %q, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %p, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load volatile i32, i32* @g, align 4, !dbg !24, !tbaa !25
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.epilog.sink.split
  ], !dbg !29

sw.bb:                                            ; preds = %entry
  %1 = load i32*, i32** @x, align 8, !dbg !30, !tbaa !32
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 1, !dbg !30
  store volatile i32 %p, i32* %arrayidx, align 4, !dbg !34, !tbaa !25
  br label %sw.epilog.sink.split, !dbg !35

sw.bb1:                                           ; preds = %entry
  %2 = load i32*, i32** @x, align 8, !dbg !36, !tbaa !32
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !36
  br label %sw.epilog.sink.split, !dbg !37

sw.epilog.sink.split:                             ; preds = %entry, %sw.bb, %sw.bb1
  %g.sink11 = phi i32* [ %arrayidx2, %sw.bb1 ], [ @g, %sw.bb ], [ @g, %entry ]
  %.sink10 = phi i32 [ %p, %sw.bb1 ], [ %p, %sw.bb ], [ 1, %entry ]
  %3 = load volatile i32, i32* %g.sink11, align 4, !dbg !38, !tbaa !25
  %inc = add nsw i32 %3, %.sink10, !dbg !38
  store volatile i32 %inc, i32* %g.sink11, align 4, !dbg !38, !tbaa !25
  br label %sw.epilog, !dbg !39

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry
  %add5 = add nsw i32 %q, 4, !dbg !39
  ret i32 %add5, !dbg !40
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !8, line: 1, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.0 (tags/RELEASE_900/final 372344)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "/app/example.c", directory: "/app")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !8, line: 1, type: !9, isLocal: false, isDefinition: true)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 9.0.0 (tags/RELEASE_900/final 372344)"}
!16 = distinct !DISubprogram(name: "baz", scope: !8, file: !8, line: 3, type: !17, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!11, !11, !11}
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(name: "p", arg: 1, scope: !16, file: !8, line: 3, type: !11)
!21 = !DILocalVariable(name: "q", arg: 2, scope: !16, file: !8, line: 3, type: !11)
!22 = !DILocalVariable(name: "local", scope: !16, file: !8, line: 4, type: !11)
!23 = !DILocation(line: 0, scope: !16)
!24 = !DILocation(line: 7, column: 11, scope: !16)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 7, column: 3, scope: !16)
!30 = !DILocation(line: 9, column: 5, scope: !31)
!31 = distinct !DILexicalBlock(scope: !16, file: !8, line: 7, column: 14)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !27, i64 0}
!34 = !DILocation(line: 9, column: 10, scope: !31)
!35 = !DILocation(line: 11, column: 5, scope: !31)
!36 = !DILocation(line: 13, column: 5, scope: !31)
!37 = !DILocation(line: 14, column: 5, scope: !31)
!38 = !DILocation(line: 0, scope: !31)
!39 = !DILocation(line: 21, column: 12, scope: !16)
!40 = !DILocation(line: 21, column: 3, scope: !16)
