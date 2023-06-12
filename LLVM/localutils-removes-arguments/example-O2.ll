; ModuleID = '/app/example.c' https://godbolt.org/z/vbn18b9Yh
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline norecurse nounwind readnone uwtable
define dso_local i32 @foo(i64 %nose.coerce, i32 %more) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 undef, metadata !17, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !21
  call void @llvm.dbg.value(metadata i32 undef, metadata !17, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !21
  call void @llvm.dbg.value(metadata i32 %more, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 undef, metadata !19, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 undef, metadata !20, metadata !DIExpression()), !dbg !21
  %add = add nsw i32 %more, 1, !dbg !22
  call void @llvm.dbg.value(metadata i32 %add, metadata !18, metadata !DIExpression()), !dbg !21
  ret i32 %add, !dbg !23
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (tags/RELEASE_900/final 372344)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 9.0.0 (tags/RELEASE_900/final 372344)"}
!7 = distinct !DISubprogram(name: "foo", scope: !8, file: !8, line: 6, type: !9, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chin", file: !8, line: 1, size: 64, elements: !13)
!13 = !{!14, !15}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !12, file: !8, line: 2, baseType: !11, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !12, file: !8, line: 3, baseType: !11, size: 32, offset: 32)
!16 = !{!17, !18, !19, !20}
!17 = !DILocalVariable(name: "nose", arg: 1, scope: !7, file: !8, line: 6, type: !12)
!18 = !DILocalVariable(name: "more", arg: 2, scope: !7, file: !8, line: 6, type: !11)
!19 = !DILocalVariable(name: "shoe", scope: !7, file: !8, line: 7, type: !11)
!20 = !DILocalVariable(name: "boot", scope: !7, file: !8, line: 8, type: !11)
!21 = !DILocation(line: 0, scope: !7)
!22 = !DILocation(line: 9, column: 8, scope: !7)
!23 = !DILocation(line: 10, column: 3, scope: !7)
