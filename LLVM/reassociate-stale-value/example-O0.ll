; ModuleID = '/app/example.c' https://godbolt.org/z/cEMf8o8hf
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @example() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %foo = alloca i32, align 4
  %read1 = alloca i32, align 4
  %read2 = alloca i32, align 4
  %cheese = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %foo, metadata !11, metadata !DIExpression()), !dbg !13
  store volatile i32 4, i32* %foo, align 4, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %read1, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = load volatile i32, i32* %foo, align 4, !dbg !16
  store i32 %0, i32* %read1, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %read2, metadata !17, metadata !DIExpression()), !dbg !18
  %1 = load volatile i32, i32* %foo, align 4, !dbg !19
  store i32 %1, i32* %read2, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %cheese, metadata !20, metadata !DIExpression()), !dbg !21
  %2 = load volatile i32, i32* %foo, align 4, !dbg !22
  store i32 %2, i32* %cheese, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %a, metadata !23, metadata !DIExpression()), !dbg !24
  %3 = load i32, i32* %read1, align 4, !dbg !25
  %4 = load i32, i32* %read2, align 4, !dbg !26
  %add = add nsw i32 %3, %4, !dbg !27
  store i32 %add, i32* %a, align 4, !dbg !24
  %5 = load i32, i32* %cheese, align 4, !dbg !28
  %6 = load i32, i32* %a, align 4, !dbg !29
  %add1 = add nsw i32 %6, %5, !dbg !29
  store i32 %add1, i32* %a, align 4, !dbg !29
  %7 = load volatile i32, i32* %foo, align 4, !dbg !30
  %cmp = icmp eq i32 %7, 4, !dbg !32
  br i1 %cmp, label %if.then, label %if.else, !dbg !33

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %read1, align 4, !dbg !34
  %9 = load i32, i32* %read2, align 4, !dbg !36
  %add2 = add nsw i32 %8, %9, !dbg !37
  store i32 %add2, i32* %cheese, align 4, !dbg !38
  %10 = load i32, i32* %cheese, align 4, !dbg !39
  %sub = sub nsw i32 %10, 12, !dbg !40
  %11 = load i32, i32* %a, align 4, !dbg !41
  %sub3 = sub nsw i32 %11, %sub, !dbg !41
  store i32 %sub3, i32* %a, align 4, !dbg !41
  %12 = load i32, i32* %a, align 4, !dbg !42
  %mul = mul nsw i32 %12, 20, !dbg !42
  store i32 %mul, i32* %a, align 4, !dbg !42
  %13 = load i32, i32* %a, align 4, !dbg !43
  %div = sdiv i32 %13, 3, !dbg !43
  store i32 %div, i32* %a, align 4, !dbg !43
  br label %if.end, !dbg !44

if.else:                                          ; preds = %entry
  store i32 0, i32* %a, align 4, !dbg !45
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %a, align 4, !dbg !47
  ret i32 %14, !dbg !48
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
!17 = !DILocalVariable(name: "read2", scope: !7, file: !1, line: 4, type: !10)
!18 = !DILocation(line: 4, column: 7, scope: !7)
!19 = !DILocation(line: 4, column: 15, scope: !7)
!20 = !DILocalVariable(name: "cheese", scope: !7, file: !1, line: 6, type: !10)
!21 = !DILocation(line: 6, column: 7, scope: !7)
!22 = !DILocation(line: 6, column: 16, scope: !7)
!23 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 7, type: !10)
!24 = !DILocation(line: 7, column: 7, scope: !7)
!25 = !DILocation(line: 7, column: 11, scope: !7)
!26 = !DILocation(line: 7, column: 19, scope: !7)
!27 = !DILocation(line: 7, column: 17, scope: !7)
!28 = !DILocation(line: 8, column: 8, scope: !7)
!29 = !DILocation(line: 8, column: 5, scope: !7)
!30 = !DILocation(line: 10, column: 7, scope: !31)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 7)
!32 = !DILocation(line: 10, column: 11, scope: !31)
!33 = !DILocation(line: 10, column: 7, scope: !7)
!34 = !DILocation(line: 11, column: 14, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 17)
!36 = !DILocation(line: 11, column: 22, scope: !35)
!37 = !DILocation(line: 11, column: 20, scope: !35)
!38 = !DILocation(line: 11, column: 12, scope: !35)
!39 = !DILocation(line: 12, column: 10, scope: !35)
!40 = !DILocation(line: 12, column: 17, scope: !35)
!41 = !DILocation(line: 12, column: 7, scope: !35)
!42 = !DILocation(line: 13, column: 7, scope: !35)
!43 = !DILocation(line: 14, column: 7, scope: !35)
!44 = !DILocation(line: 15, column: 3, scope: !35)
!45 = !DILocation(line: 16, column: 7, scope: !46)
!46 = distinct !DILexicalBlock(scope: !31, file: !1, line: 15, column: 10)
!47 = !DILocation(line: 19, column: 10, scope: !7)
!48 = !DILocation(line: 19, column: 3, scope: !7)
