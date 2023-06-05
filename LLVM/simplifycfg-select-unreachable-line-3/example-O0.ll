; ModuleID = '/app/example.c' https://godbolt.org/z/WjMjhh1Ka
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.onion = type { double }

@alpha = common dso_local global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @charlie() #0 !dbg !11 {
entry:
  %delta = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %delta, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 0, i32* %delta, align 4, !dbg !15
  %call = call i32 @bravo(), !dbg !16
  ret i32 %call, !dbg !17
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @bravo() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @echo(i64 %foxtrot.coerce) #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %foxtrot = alloca %union.onion, align 8
  %golf = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %union.onion, %union.onion* %foxtrot, i32 0, i32 0
  %0 = bitcast double* %coerce.dive to i64*
  store i64 %foxtrot.coerce, i64* %0, align 8
  call void @llvm.dbg.declare(metadata %union.onion* %foxtrot, metadata !29, metadata !DIExpression()), !dbg !30
  %ii = bitcast %union.onion* %foxtrot to [2 x i32]*, !dbg !31
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %ii, i64 0, i64 0, !dbg !32
  %1 = load i32, i32* %arrayidx, align 8, !dbg !32
  store i32 %1, i32* @alpha, align 4, !dbg !33
  %2 = load i32, i32* @alpha, align 4, !dbg !34
  %tobool = icmp ne i32 %2, 0, !dbg !34
  br i1 %tobool, label %if.then, label %if.end, !dbg !36

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %golf, metadata !37, metadata !DIExpression()), !dbg !39
  %call = call i32 @bravo(), !dbg !40
  store i32 %call, i32* %golf, align 4, !dbg !39
  %3 = load i32, i32* %golf, align 4, !dbg !41
  %sub = sub nsw i32 0, %3, !dbg !42
  store i32 %sub, i32* %retval, align 4, !dbg !43
  br label %return, !dbg !43

if.end:                                           ; preds = %entry
  %ii1 = bitcast %union.onion* %foxtrot to [2 x i32]*, !dbg !44
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %ii1, i64 0, i64 1, !dbg !45
  %4 = load i32, i32* %arrayidx2, align 4, !dbg !45
  store i32 %4, i32* @alpha, align 4, !dbg !46
  %call3 = call i32 @charlie(), !dbg !47
  %sub4 = sub nsw i32 0, %call3, !dbg !48
  store i32 %sub4, i32* %retval, align 4, !dbg !49
  br label %return, !dbg !49

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !50
  ret i32 %5, !dbg !50
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "alpha", scope: !2, file: !3, line: 6, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final 342594)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/app/example.c", directory: "/app")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.0 (tags/RELEASE_700/final 342594)"}
!11 = distinct !DISubprogram(name: "charlie", scope: !3, file: !3, line: 9, type: !12, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: false, unit: !2, retainedNodes: !4)
!12 = !DISubroutineType(types: !13)
!13 = !{!6}
!14 = !DILocalVariable(name: "delta", scope: !11, file: !3, line: 10, type: !6)
!15 = !DILocation(line: 10, column: 7, scope: !11)
!16 = !DILocation(line: 11, column: 10, scope: !11)
!17 = !DILocation(line: 11, column: 3, scope: !11)
!18 = distinct !DISubprogram(name: "echo", scope: !3, file: !3, line: 14, type: !19, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: false, unit: !2, retainedNodes: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{!6, !21}
!21 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "onion", file: !3, line: 1, size: 64, elements: !22)
!22 = !{!23, !25}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !21, file: !3, line: 2, baseType: !24, size: 64)
!24 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ii", scope: !21, file: !3, line: 3, baseType: !26, size: 64)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 2)
!29 = !DILocalVariable(name: "foxtrot", arg: 1, scope: !18, file: !3, line: 14, type: !21)
!30 = !DILocation(line: 14, column: 22, scope: !18)
!31 = !DILocation(line: 15, column: 19, scope: !18)
!32 = !DILocation(line: 15, column: 11, scope: !18)
!33 = !DILocation(line: 15, column: 9, scope: !18)
!34 = !DILocation(line: 16, column: 7, scope: !35)
!35 = distinct !DILexicalBlock(scope: !18, file: !3, line: 16, column: 7)
!36 = !DILocation(line: 16, column: 7, scope: !18)
!37 = !DILocalVariable(name: "golf", scope: !38, file: !3, line: 17, type: !6)
!38 = distinct !DILexicalBlock(scope: !35, file: !3, line: 16, column: 14)
!39 = !DILocation(line: 17, column: 9, scope: !38)
!40 = !DILocation(line: 17, column: 16, scope: !38)
!41 = !DILocation(line: 18, column: 13, scope: !38)
!42 = !DILocation(line: 18, column: 12, scope: !38)
!43 = !DILocation(line: 18, column: 5, scope: !38)
!44 = !DILocation(line: 20, column: 19, scope: !18)
!45 = !DILocation(line: 20, column: 11, scope: !18)
!46 = !DILocation(line: 20, column: 9, scope: !18)
!47 = !DILocation(line: 21, column: 11, scope: !18)
!48 = !DILocation(line: 21, column: 10, scope: !18)
!49 = !DILocation(line: 21, column: 3, scope: !18)
!50 = !DILocation(line: 22, column: 1, scope: !18)
