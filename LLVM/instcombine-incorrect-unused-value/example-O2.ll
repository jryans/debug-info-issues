; ModuleID = '/app/example.c' https://godbolt.org/z/8x87jMxfG
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = common dso_local local_unnamed_addr global i8 0, align 1, !dbg !0
@b = common dso_local local_unnamed_addr global i8 0, align 1, !dbg !6

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local void @example() local_unnamed_addr #0 !dbg !14 {
entry:
  %0 = load i8, i8* @a, align 1, !dbg !21, !tbaa !22
  %dec = add i8 %0, -1, !dbg !21
  store i8 %dec, i8* @a, align 1, !dbg !21, !tbaa !22
  call void @llvm.dbg.value(metadata i32 -8, metadata !20, metadata !DIExpression()), !dbg !25
  store i8 0, i8* @b, align 1, !dbg !26, !tbaa !22
  ret void, !dbg !27
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.0 (tags/RELEASE_900/final 372344)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "/app/example.c", directory: "/app")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 1, type: !9, isLocal: false, isDefinition: true)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 9.0.0 (tags/RELEASE_900/final 372344)"}
!14 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 2, type: !15, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{null}
!17 = !{!18, !20}
!18 = !DILocalVariable(name: "c", scope: !14, file: !8, line: 3, type: !19)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DILocalVariable(name: "l_1240", scope: !14, file: !8, line: 3, type: !19)
!21 = !DILocation(line: 3, column: 11, scope: !14)
!22 = !{!23, !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 0, scope: !14)
!26 = !DILocation(line: 5, column: 10, scope: !14)
!27 = !DILocation(line: 6, column: 1, scope: !14)
