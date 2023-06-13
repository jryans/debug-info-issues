; ModuleID = 'example-O0.ll'
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chin = type { i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i64 %nose.coerce, i32 %more) #0 !dbg !7 {
entry:
  %nose = alloca %struct.chin, align 4
  %0 = bitcast %struct.chin* %nose to i64*
  store i64 %nose.coerce, i64* %0, align 4
  call void @llvm.dbg.declare(metadata %struct.chin* %nose, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i32 %more, metadata !18, metadata !DIExpression()), !dbg !19
  %a = getelementptr inbounds %struct.chin, %struct.chin* %nose, i32 0, i32 0, !dbg !20
  %1 = load i32, i32* %a, align 4, !dbg !20
  call void @llvm.dbg.value(metadata i32 %1, metadata !21, metadata !DIExpression()), !dbg !19
  %b = getelementptr inbounds %struct.chin, %struct.chin* %nose, i32 0, i32 1, !dbg !22
  %2 = load i32, i32* %b, align 4, !dbg !22
  call void @llvm.dbg.value(metadata i32 %2, metadata !23, metadata !DIExpression()), !dbg !19
  %add = add nsw i32 %more, 1, !dbg !24
  call void @llvm.dbg.value(metadata i32 %add, metadata !18, metadata !DIExpression()), !dbg !19
  ret i32 %add, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (tags/RELEASE_900/final 372344)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 9.0.0 (tags/RELEASE_900/final 372344)"}
!7 = distinct !DISubprogram(name: "foo", scope: !8, file: !8, line: 6, type: !9, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chin", file: !8, line: 1, size: 64, elements: !13)
!13 = !{!14, !15}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !12, file: !8, line: 2, baseType: !11, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !12, file: !8, line: 3, baseType: !11, size: 32, offset: 32)
!16 = !DILocalVariable(name: "nose", arg: 1, scope: !7, file: !8, line: 6, type: !12)
!17 = !DILocation(line: 6, column: 21, scope: !7)
!18 = !DILocalVariable(name: "more", arg: 2, scope: !7, file: !8, line: 6, type: !11)
!19 = !DILocation(line: 0, scope: !7)
!20 = !DILocation(line: 7, column: 19, scope: !7)
!21 = !DILocalVariable(name: "shoe", scope: !7, file: !8, line: 7, type: !11)
!22 = !DILocation(line: 8, column: 19, scope: !7)
!23 = !DILocalVariable(name: "boot", scope: !7, file: !8, line: 8, type: !11)
!24 = !DILocation(line: 9, column: 8, scope: !7)
!25 = !DILocation(line: 10, column: 3, scope: !7)
