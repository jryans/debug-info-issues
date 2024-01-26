; ModuleID = 'example.c' https://godbolt.org/z/WWjqxMcMW
source_filename = "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/LLVM/earlycse-salvages-loads/example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32* %bar, i32 %arg, i32 %more) #0 !dbg !7 {
entry:
  %bar.addr = alloca i32*, align 8
  %arg.addr = alloca i32, align 4
  %more.addr = alloca i32, align 4
  %redundant = alloca i32, align 4
  %loaded = alloca i32, align 4
  store i32* %bar, i32** %bar.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %bar.addr, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 %arg, i32* %arg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %arg.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %more, i32* %more.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %more.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %redundant, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = load i32*, i32** %bar.addr, align 8, !dbg !21
  %1 = load i32, i32* %0, align 4, !dbg !22
  store i32 %1, i32* %redundant, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %loaded, metadata !23, metadata !DIExpression()), !dbg !24
  %2 = load i32*, i32** %bar.addr, align 8, !dbg !25
  %3 = load i32, i32* %2, align 4, !dbg !26
  store i32 %3, i32* %loaded, align 4, !dbg !24
  %4 = load i32, i32* %more.addr, align 4, !dbg !27
  %5 = load i32, i32* %loaded, align 4, !dbg !28
  %add = add nsw i32 %4, %5, !dbg !29
  %6 = load i32, i32* %arg.addr, align 4, !dbg !30
  %and = and i32 %6, %add, !dbg !30
  store i32 %and, i32* %arg.addr, align 4, !dbg !30
  %7 = load i32*, i32** %bar.addr, align 8, !dbg !31
  store i32 0, i32* %7, align 4, !dbg !32
  %8 = load i32, i32* %more.addr, align 4, !dbg !33
  %9 = load i32*, i32** %bar.addr, align 8, !dbg !34
  %10 = load i32, i32* %9, align 4, !dbg !35
  %add1 = add nsw i32 %8, %10, !dbg !36
  ret i32 %add1, !dbg !37
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

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
!7 = distinct !DISubprogram(name: "foo", scope: !8, file: !8, line: 1, type: !9, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/LLVM/earlycse-salvages-loads")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !12, !11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !DILocalVariable(name: "bar", arg: 1, scope: !7, file: !8, line: 1, type: !12)
!14 = !DILocation(line: 1, column: 14, scope: !7)
!15 = !DILocalVariable(name: "arg", arg: 2, scope: !7, file: !8, line: 1, type: !11)
!16 = !DILocation(line: 1, column: 23, scope: !7)
!17 = !DILocalVariable(name: "more", arg: 3, scope: !7, file: !8, line: 1, type: !11)
!18 = !DILocation(line: 1, column: 32, scope: !7)
!19 = !DILocalVariable(name: "redundant", scope: !7, file: !8, line: 2, type: !11)
!20 = !DILocation(line: 2, column: 7, scope: !7)
!21 = !DILocation(line: 2, column: 20, scope: !7)
!22 = !DILocation(line: 2, column: 19, scope: !7)
!23 = !DILocalVariable(name: "loaded", scope: !7, file: !8, line: 3, type: !11)
!24 = !DILocation(line: 3, column: 7, scope: !7)
!25 = !DILocation(line: 3, column: 17, scope: !7)
!26 = !DILocation(line: 3, column: 16, scope: !7)
!27 = !DILocation(line: 4, column: 10, scope: !7)
!28 = !DILocation(line: 4, column: 17, scope: !7)
!29 = !DILocation(line: 4, column: 15, scope: !7)
!30 = !DILocation(line: 4, column: 7, scope: !7)
!31 = !DILocation(line: 6, column: 4, scope: !7)
!32 = !DILocation(line: 6, column: 8, scope: !7)
!33 = !DILocation(line: 8, column: 10, scope: !7)
!34 = !DILocation(line: 8, column: 18, scope: !7)
!35 = !DILocation(line: 8, column: 17, scope: !7)
!36 = !DILocation(line: 8, column: 15, scope: !7)
!37 = !DILocation(line: 8, column: 3, scope: !7)
