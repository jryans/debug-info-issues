; ModuleID = '/app/example.c' https://godbolt.org/z/3fWzjcKfc
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = common dso_local global i32 0, align 4, !dbg !0
@x = common dso_local global i32* null, align 8, !dbg !6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz(i32 %p, i32 %q) #0 !dbg !16 {
entry:
  %p.addr = alloca i32, align 4
  %q.addr = alloca i32, align 4
  %local = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %p.addr, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %q, i32* %q.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %q.addr, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %local, metadata !23, metadata !DIExpression()), !dbg !24
  %0 = load i32, i32* %p.addr, align 4, !dbg !25
  store i32 %0, i32* %local, align 4, !dbg !26
  %1 = load volatile i32, i32* @g, align 4, !dbg !27
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb4
  ], !dbg !28

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* %local, align 4, !dbg !29
  %3 = load i32*, i32** @x, align 8, !dbg !31
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 1, !dbg !31
  store volatile i32 %2, i32* %arrayidx, align 4, !dbg !32
  %4 = load i32, i32* %p.addr, align 4, !dbg !33
  %5 = load volatile i32, i32* @g, align 4, !dbg !34
  %add = add nsw i32 %5, %4, !dbg !34
  store volatile i32 %add, i32* @g, align 4, !dbg !34
  br label %sw.epilog, !dbg !35

sw.bb1:                                           ; preds = %entry
  %6 = load i32, i32* %p.addr, align 4, !dbg !36
  %7 = load i32*, i32** @x, align 8, !dbg !37
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !37
  %8 = load volatile i32, i32* %arrayidx2, align 4, !dbg !38
  %add3 = add nsw i32 %8, %6, !dbg !38
  store volatile i32 %add3, i32* %arrayidx2, align 4, !dbg !38
  br label %sw.epilog, !dbg !39

sw.bb4:                                           ; preds = %entry
  %9 = load i32, i32* %q.addr, align 4, !dbg !40
  store i32 %9, i32* %local, align 4, !dbg !41
  %10 = load volatile i32, i32* @g, align 4, !dbg !42
  %inc = add nsw i32 %10, 1, !dbg !42
  store volatile i32 %inc, i32* @g, align 4, !dbg !42
  br label %sw.epilog, !dbg !43

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb1, %sw.bb
  %11 = load i32, i32* %q.addr, align 4, !dbg !44
  %add5 = add nsw i32 4, %11, !dbg !45
  ret i32 %add5, !dbg !46
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g", scope: !2, file: !8, line: 1, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.0 (tags/RELEASE_900/final 372344)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "/app/example.c", directory: "/app")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !8, line: 1, type: !9, isLocal: false, isDefinition: true)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 9.0.0 (tags/RELEASE_900/final 372344)"}
!16 = distinct !DISubprogram(name: "baz", scope: !8, file: !8, line: 3, type: !17, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{!11, !11, !11}
!19 = !DILocalVariable(name: "p", arg: 1, scope: !16, file: !8, line: 3, type: !11)
!20 = !DILocation(line: 3, column: 13, scope: !16)
!21 = !DILocalVariable(name: "q", arg: 2, scope: !16, file: !8, line: 3, type: !11)
!22 = !DILocation(line: 3, column: 20, scope: !16)
!23 = !DILocalVariable(name: "local", scope: !16, file: !8, line: 4, type: !11)
!24 = !DILocation(line: 4, column: 7, scope: !16)
!25 = !DILocation(line: 6, column: 11, scope: !16)
!26 = !DILocation(line: 6, column: 9, scope: !16)
!27 = !DILocation(line: 7, column: 11, scope: !16)
!28 = !DILocation(line: 7, column: 3, scope: !16)
!29 = !DILocation(line: 9, column: 12, scope: !30)
!30 = distinct !DILexicalBlock(scope: !16, file: !8, line: 7, column: 14)
!31 = !DILocation(line: 9, column: 5, scope: !30)
!32 = !DILocation(line: 9, column: 10, scope: !30)
!33 = !DILocation(line: 10, column: 10, scope: !30)
!34 = !DILocation(line: 10, column: 7, scope: !30)
!35 = !DILocation(line: 11, column: 5, scope: !30)
!36 = !DILocation(line: 13, column: 13, scope: !30)
!37 = !DILocation(line: 13, column: 5, scope: !30)
!38 = !DILocation(line: 13, column: 10, scope: !30)
!39 = !DILocation(line: 14, column: 5, scope: !30)
!40 = !DILocation(line: 16, column: 13, scope: !30)
!41 = !DILocation(line: 16, column: 11, scope: !30)
!42 = !DILocation(line: 17, column: 6, scope: !30)
!43 = !DILocation(line: 18, column: 5, scope: !30)
!44 = !DILocation(line: 21, column: 14, scope: !16)
!45 = !DILocation(line: 21, column: 12, scope: !16)
!46 = !DILocation(line: 21, column: 3, scope: !16)
