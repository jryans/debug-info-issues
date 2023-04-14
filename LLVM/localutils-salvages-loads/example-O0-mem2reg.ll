; ModuleID = 'example-O0.ll'
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32* %bar, i32 %arg, i32 %more) #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32* %bar, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.value(metadata i32 %arg, metadata !15, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.value(metadata i32 %more, metadata !16, metadata !DIExpression()), !dbg !14
  %0 = load i32, i32* %bar, align 4, !dbg !17
  call void @llvm.dbg.value(metadata i32 %0, metadata !18, metadata !DIExpression()), !dbg !14
  %1 = load i32, i32* %bar, align 4, !dbg !19
  call void @llvm.dbg.value(metadata i32 %1, metadata !20, metadata !DIExpression()), !dbg !14
  %add = add nsw i32 %more, %1, !dbg !21
  %and = and i32 %arg, %add, !dbg !22
  call void @llvm.dbg.value(metadata i32 %and, metadata !15, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %bar, align 4, !dbg !23
  %2 = load i32, i32* %bar, align 4, !dbg !24
  %add1 = add nsw i32 %more, %2, !dbg !25
  ret i32 %add1, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final 356655)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final 356655)"}
!7 = distinct !DISubprogram(name: "foo", scope: !8, file: !8, line: 1, type: !9, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !DILocalVariable(name: "bar", arg: 1, scope: !7, file: !8, line: 1, type: !12)
!14 = !DILocation(line: 0, scope: !7)
!15 = !DILocalVariable(name: "arg", arg: 2, scope: !7, file: !8, line: 1, type: !11)
!16 = !DILocalVariable(name: "more", arg: 3, scope: !7, file: !8, line: 1, type: !11)
!17 = !DILocation(line: 2, column: 19, scope: !7)
!18 = !DILocalVariable(name: "redundant", scope: !7, file: !8, line: 2, type: !11)
!19 = !DILocation(line: 3, column: 16, scope: !7)
!20 = !DILocalVariable(name: "loaded", scope: !7, file: !8, line: 3, type: !11)
!21 = !DILocation(line: 4, column: 15, scope: !7)
!22 = !DILocation(line: 4, column: 7, scope: !7)
!23 = !DILocation(line: 6, column: 8, scope: !7)
!24 = !DILocation(line: 8, column: 17, scope: !7)
!25 = !DILocation(line: 8, column: 15, scope: !7)
!26 = !DILocation(line: 8, column: 3, scope: !7)
