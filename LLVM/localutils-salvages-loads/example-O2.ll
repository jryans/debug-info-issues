; https://godbolt.org/z/qYj8dExve

; ModuleID = '/app/example.c'
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline norecurse nounwind uwtable writeonly
define dso_local i32 @foo(i32* nocapture %bar, i32 %arg, i32 returned %more) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32* %bar, metadata !14, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 %arg, metadata !15, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 %more, metadata !16, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32* %bar, metadata !17, metadata !DIExpression(DW_OP_deref)), !dbg !22
  call void @llvm.dbg.value(metadata i32* %bar, metadata !18, metadata !DIExpression(DW_OP_deref)), !dbg !23
  call void @llvm.dbg.value(metadata i32 undef, metadata !15, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %bar, align 4, !dbg !24, !tbaa !25
  ret i32 %more, !dbg !29
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final 356655)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final 356655)"}
!7 = distinct !DISubprogram(name: "foo", scope: !8, file: !8, line: 1, type: !9, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !{!14, !15, !16, !17, !18}
!14 = !DILocalVariable(name: "bar", arg: 1, scope: !7, file: !8, line: 1, type: !12)
!15 = !DILocalVariable(name: "arg", arg: 2, scope: !7, file: !8, line: 1, type: !11)
!16 = !DILocalVariable(name: "more", arg: 3, scope: !7, file: !8, line: 1, type: !11)
!17 = !DILocalVariable(name: "redundant", scope: !7, file: !8, line: 2, type: !11)
!18 = !DILocalVariable(name: "loaded", scope: !7, file: !8, line: 3, type: !11)
!19 = !DILocation(line: 1, column: 14, scope: !7)
!20 = !DILocation(line: 1, column: 23, scope: !7)
!21 = !DILocation(line: 1, column: 32, scope: !7)
!22 = !DILocation(line: 2, column: 7, scope: !7)
!23 = !DILocation(line: 3, column: 7, scope: !7)
!24 = !DILocation(line: 6, column: 8, scope: !7)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 8, column: 3, scope: !7)
