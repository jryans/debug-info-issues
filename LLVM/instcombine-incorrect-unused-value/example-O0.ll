; ModuleID = '/app/example.c' https://godbolt.org/z/6sffhPEvq
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = common dso_local global i8 0, align 1, !dbg !0
@b = common dso_local global i8 0, align 1, !dbg !6

; Function Attrs: noinline nounwind uwtable
define dso_local void @example() #0 !dbg !14 {
entry:
  %c = alloca i32, align 4
  %l_1240 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %c, metadata !17, metadata !DIExpression()), !dbg !19
  %0 = load i8, i8* @a, align 1, !dbg !20
  %dec = add i8 %0, -1, !dbg !20
  store i8 %dec, i8* @a, align 1, !dbg !20
  %conv = sext i8 %dec to i32, !dbg !20
  store i32 %conv, i32* %c, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %l_1240, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 -8, i32* %l_1240, align 4, !dbg !22
  %1 = load i32, i32* %c, align 4, !dbg !23
  store i32 %1, i32* %l_1240, align 4, !dbg !24
  %2 = load i32, i32* %c, align 4, !dbg !25
  store i8 0, i8* @b, align 1, !dbg !26
  %cmp = icmp sgt i32 %2, 0, !dbg !27
  %conv1 = zext i1 %cmp to i32, !dbg !27
  ret void, !dbg !28
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.0 (tags/RELEASE_900/final 372344)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
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
!14 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 2, type: !15, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{null}
!17 = !DILocalVariable(name: "c", scope: !14, file: !8, line: 3, type: !18)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DILocation(line: 3, column: 7, scope: !14)
!20 = !DILocation(line: 3, column: 11, scope: !14)
!21 = !DILocalVariable(name: "l_1240", scope: !14, file: !8, line: 3, type: !18)
!22 = !DILocation(line: 3, column: 16, scope: !14)
!23 = !DILocation(line: 4, column: 12, scope: !14)
!24 = !DILocation(line: 4, column: 10, scope: !14)
!25 = !DILocation(line: 5, column: 3, scope: !14)
!26 = !DILocation(line: 5, column: 10, scope: !14)
!27 = !DILocation(line: 5, column: 5, scope: !14)
!28 = !DILocation(line: 6, column: 1, scope: !14)
