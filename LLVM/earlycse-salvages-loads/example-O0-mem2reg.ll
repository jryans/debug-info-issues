; ModuleID = 'example-O0.ll'
source_filename = "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/LLVM/earlycse-salvages-loads/example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32* %bar, i32 %arg, i32 %more) #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32* %bar, metadata !12, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.value(metadata i32 %arg, metadata !14, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.value(metadata i32 %more, metadata !15, metadata !DIExpression()), !dbg !13
  %0 = load i32, i32* %bar, align 4, !dbg !16
  call void @llvm.dbg.value(metadata i32 %0, metadata !17, metadata !DIExpression()), !dbg !13
  %1 = load i32, i32* %bar, align 4, !dbg !18
  call void @llvm.dbg.value(metadata i32 %1, metadata !19, metadata !DIExpression()), !dbg !13
  %add = add nsw i32 %more, %1, !dbg !20
  %and = and i32 %arg, %add, !dbg !21
  call void @llvm.dbg.value(metadata i32 %and, metadata !14, metadata !DIExpression()), !dbg !13
  store i32 0, i32* %bar, align 4, !dbg !22
  %2 = load i32, i32* %bar, align 4, !dbg !23
  %add1 = add nsw i32 %more, %2, !dbg !24
  ret i32 %add1, !dbg !25
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
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/LLVM/earlycse-salvages-loads")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final 356655)"}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!12 = !DILocalVariable(name: "bar", arg: 1, scope: !7, file: !1, line: 1, type: !11)
!13 = !DILocation(line: 0, scope: !7)
!14 = !DILocalVariable(name: "arg", arg: 2, scope: !7, file: !1, line: 1, type: !10)
!15 = !DILocalVariable(name: "more", arg: 3, scope: !7, file: !1, line: 1, type: !10)
!16 = !DILocation(line: 2, column: 19, scope: !7)
!17 = !DILocalVariable(name: "redundant", scope: !7, file: !1, line: 2, type: !10)
!18 = !DILocation(line: 3, column: 16, scope: !7)
!19 = !DILocalVariable(name: "loaded", scope: !7, file: !1, line: 3, type: !10)
!20 = !DILocation(line: 4, column: 15, scope: !7)
!21 = !DILocation(line: 4, column: 7, scope: !7)
!22 = !DILocation(line: 6, column: 8, scope: !7)
!23 = !DILocation(line: 8, column: 17, scope: !7)
!24 = !DILocation(line: 8, column: 15, scope: !7)
!25 = !DILocation(line: 8, column: 3, scope: !7)
