; ModuleID = '/app/example.c' https://godbolt.org/z/avb5b3fP3
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @example() #0 !dbg !7 {
entry:
  %foo = alloca i32, align 4
  %read1 = alloca i32, align 4
  %brains = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %foo, metadata !11, metadata !DIExpression()), !dbg !13
  store volatile i32 0, i32* %foo, align 4, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %read1, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = load volatile i32, i32* %foo, align 4, !dbg !16
  store i32 %0, i32* %read1, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %brains, metadata !17, metadata !DIExpression()), !dbg !18
  %1 = load volatile i32, i32* %foo, align 4, !dbg !19
  store i32 %1, i32* %brains, align 4, !dbg !18
  %2 = load i32, i32* %read1, align 4, !dbg !20
  %cmp = icmp sgt i32 %2, 3, !dbg !22
  br i1 %cmp, label %if.then, label %if.end, !dbg !23

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %brains, align 4, !dbg !24
  %mul = mul nsw i32 %3, 2, !dbg !24
  store i32 %mul, i32* %brains, align 4, !dbg !24
  %4 = load i32, i32* %brains, align 4, !dbg !26
  %add = add nsw i32 %4, 1, !dbg !26
  store i32 %add, i32* %brains, align 4, !dbg !26
  br label %if.end, !dbg !27

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %brains, align 4, !dbg !28
  ret i32 %5, !dbg !29
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 (tags/RELEASE_700/final 342594)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (tags/RELEASE_700/final 342594)"}
!7 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 1, type: !8, isLocal: false, isDefinition: true, scopeLine: 1, isOptimized: false, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "foo", scope: !7, file: !1, line: 2, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !10)
!13 = !DILocation(line: 2, column: 16, scope: !7)
!14 = !DILocalVariable(name: "read1", scope: !7, file: !1, line: 3, type: !10)
!15 = !DILocation(line: 3, column: 7, scope: !7)
!16 = !DILocation(line: 3, column: 15, scope: !7)
!17 = !DILocalVariable(name: "brains", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 7, scope: !7)
!19 = !DILocation(line: 4, column: 16, scope: !7)
!20 = !DILocation(line: 6, column: 7, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 7)
!22 = !DILocation(line: 6, column: 13, scope: !21)
!23 = !DILocation(line: 6, column: 7, scope: !7)
!24 = !DILocation(line: 7, column: 12, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 6, column: 18)
!26 = !DILocation(line: 8, column: 12, scope: !25)
!27 = !DILocation(line: 9, column: 3, scope: !25)
!28 = !DILocation(line: 11, column: 10, scope: !7)
!29 = !DILocation(line: 11, column: 3, scope: !7)
