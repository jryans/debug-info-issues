; ModuleID = 'example-O0.ll'
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @example() #0 !dbg !7 {
entry:
  %foo = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %foo, metadata !11, metadata !DIExpression()), !dbg !13
  store volatile i32 4, i32* %foo, align 4, !dbg !13
  %0 = load volatile i32, i32* %foo, align 4, !dbg !14
  call void @llvm.dbg.value(metadata i32 %0, metadata !15, metadata !DIExpression()), !dbg !16
  %1 = load volatile i32, i32* %foo, align 4, !dbg !17
  call void @llvm.dbg.value(metadata i32 %1, metadata !18, metadata !DIExpression()), !dbg !16
  %2 = load volatile i32, i32* %foo, align 4, !dbg !19
  call void @llvm.dbg.value(metadata i32 %2, metadata !20, metadata !DIExpression()), !dbg !16
  %add = add nsw i32 %0, %1, !dbg !21
  call void @llvm.dbg.value(metadata i32 %add, metadata !22, metadata !DIExpression()), !dbg !16
  %add1 = add nsw i32 %add, %2, !dbg !23
  call void @llvm.dbg.value(metadata i32 %add1, metadata !22, metadata !DIExpression()), !dbg !16
  %3 = load volatile i32, i32* %foo, align 4, !dbg !24
  %cmp = icmp eq i32 %3, 4, !dbg !26
  br i1 %cmp, label %if.then, label %if.else, !dbg !27

if.then:                                          ; preds = %entry
  %add2 = add nsw i32 %0, %1, !dbg !28
  call void @llvm.dbg.value(metadata i32 %add2, metadata !20, metadata !DIExpression()), !dbg !16
  %sub = sub nsw i32 %add2, 12, !dbg !30
  %sub3 = sub nsw i32 %add1, %sub, !dbg !31
  call void @llvm.dbg.value(metadata i32 %sub3, metadata !22, metadata !DIExpression()), !dbg !16
  %mul = mul nsw i32 %sub3, 20, !dbg !32
  call void @llvm.dbg.value(metadata i32 %mul, metadata !22, metadata !DIExpression()), !dbg !16
  %div = sdiv i32 %mul, 3, !dbg !33
  call void @llvm.dbg.value(metadata i32 %div, metadata !22, metadata !DIExpression()), !dbg !16
  br label %if.end, !dbg !34

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !22, metadata !DIExpression()), !dbg !16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %if.else ], !dbg !35
  call void @llvm.dbg.value(metadata i32 %a.0, metadata !22, metadata !DIExpression()), !dbg !16
  ret i32 %a.0, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
!7 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "foo", scope: !7, file: !1, line: 2, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !10)
!13 = !DILocation(line: 2, column: 16, scope: !7)
!14 = !DILocation(line: 3, column: 15, scope: !7)
!15 = !DILocalVariable(name: "read1", scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocation(line: 0, scope: !7)
!17 = !DILocation(line: 4, column: 15, scope: !7)
!18 = !DILocalVariable(name: "read2", scope: !7, file: !1, line: 4, type: !10)
!19 = !DILocation(line: 6, column: 16, scope: !7)
!20 = !DILocalVariable(name: "cheese", scope: !7, file: !1, line: 6, type: !10)
!21 = !DILocation(line: 7, column: 17, scope: !7)
!22 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 7, type: !10)
!23 = !DILocation(line: 8, column: 5, scope: !7)
!24 = !DILocation(line: 10, column: 7, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 7)
!26 = !DILocation(line: 10, column: 11, scope: !25)
!27 = !DILocation(line: 10, column: 7, scope: !7)
!28 = !DILocation(line: 11, column: 20, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 10, column: 17)
!30 = !DILocation(line: 12, column: 17, scope: !29)
!31 = !DILocation(line: 12, column: 7, scope: !29)
!32 = !DILocation(line: 13, column: 7, scope: !29)
!33 = !DILocation(line: 14, column: 7, scope: !29)
!34 = !DILocation(line: 15, column: 3, scope: !29)
!35 = !DILocation(line: 0, scope: !25)
!36 = !DILocation(line: 19, column: 3, scope: !7)
