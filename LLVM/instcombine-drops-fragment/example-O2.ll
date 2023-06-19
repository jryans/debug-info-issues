; ModuleID = '/app/example.c' https://godbolt.org/z/98fhnKdbc
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0

; Function Attrs: nofree noinline norecurse nounwind uwtable writeonly
define dso_local i64 @foo(i64 returned %eyelids.coerce) local_unnamed_addr #0 !dbg !12 {
entry:
  call void @llvm.dbg.value(metadata i64 %eyelids.coerce, metadata !20, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !22
  store i32 1, i32* @global, align 4, !dbg !23, !tbaa !24
  call void @llvm.dbg.value(metadata i32 undef, metadata !21, metadata !DIExpression()), !dbg !22
  ret i64 %eyelids.coerce, !dbg !28
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "global", scope: !2, file: !6, line: 6, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.0 (tags/RELEASE_900/final 372344)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "/app/example.c", directory: "/app")
!4 = !{}
!5 = !{!0}
!6 = !DIFile(filename: "example.c", directory: "/app")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 9.0.0 (tags/RELEASE_900/final 372344)"}
!12 = distinct !DISubprogram(name: "foo", scope: !6, file: !6, line: 8, type: !13, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15}
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bees", file: !6, line: 1, size: 64, elements: !16)
!16 = !{!17, !18}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !15, file: !6, line: 2, baseType: !7, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !15, file: !6, line: 3, baseType: !7, size: 32, offset: 32)
!19 = !{!20, !21}
!20 = !DILocalVariable(name: "eyelids", arg: 1, scope: !12, file: !6, line: 8, type: !15)
!21 = !DILocalVariable(name: "bar", scope: !12, file: !6, line: 10, type: !7)
!22 = !DILocation(line: 0, scope: !12)
!23 = !DILocation(line: 9, column: 10, scope: !12)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 12, column: 1, scope: !12)
