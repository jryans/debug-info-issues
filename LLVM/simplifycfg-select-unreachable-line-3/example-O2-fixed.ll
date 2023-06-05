; ModuleID = '/app/example.c' https://godbolt.org/z/4173bz7K5
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alpha = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local i32 @charlie() local_unnamed_addr #0 !dbg !12 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()), !dbg !17
  %call = tail call i32 @bravo() #3, !dbg !18
  ret i32 %call, !dbg !19
}

declare dso_local i32 @bravo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @echo(i64 %foxtrot.coerce) local_unnamed_addr #0 !dbg !20 {
entry:
  %foxtrot.sroa.0.0.extract.trunc = trunc i64 %foxtrot.coerce to i32
  call void @llvm.dbg.value(metadata i32 %foxtrot.sroa.0.0.extract.trunc, metadata !32, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !36
  store i32 %foxtrot.sroa.0.0.extract.trunc, i32* @alpha, align 4, !dbg !37, !tbaa !38
  %tobool = icmp eq i32 %foxtrot.sroa.0.0.extract.trunc, 0, !dbg !42
  br i1 %tobool, label %if.end, label %return, !dbg !43

if.end:                                           ; preds = %entry
  %foxtrot.sroa.2.0.extract.shift = lshr i64 %foxtrot.coerce, 32
  %foxtrot.sroa.2.0.extract.trunc = trunc i64 %foxtrot.sroa.2.0.extract.shift to i32
  call void @llvm.dbg.value(metadata i32 %foxtrot.sroa.2.0.extract.trunc, metadata !32, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !36
  store i32 %foxtrot.sroa.2.0.extract.trunc, i32* @alpha, align 4, !dbg !44, !tbaa !38
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()) #3, !dbg !45
  br label %return, !dbg !47

return:                                           ; preds = %entry, %if.end
  %call.i = tail call i32 @bravo() #3, !dbg !48
  %retval.0 = sub nsw i32 0, %call.i, !dbg !48
  ret i32 %retval.0, !dbg !49
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "alpha", scope: !2, file: !6, line: 6, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 8.0.0 (tags/RELEASE_800/final 356655)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "/app/example.c", directory: "/app")
!4 = !{}
!5 = !{!0}
!6 = !DIFile(filename: "example.c", directory: "/app")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 8.0.0 (tags/RELEASE_800/final 356655)"}
!12 = distinct !DISubprogram(name: "charlie", scope: !6, file: !6, line: 9, type: !13, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{!7}
!15 = !{!16}
!16 = !DILocalVariable(name: "delta", scope: !12, file: !6, line: 10, type: !7)
!17 = !DILocation(line: 10, column: 7, scope: !12)
!18 = !DILocation(line: 11, column: 10, scope: !12)
!19 = !DILocation(line: 11, column: 3, scope: !12)
!20 = distinct !DISubprogram(name: "echo", scope: !6, file: !6, line: 14, type: !21, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!21 = !DISubroutineType(types: !22)
!22 = !{!7, !23}
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "onion", file: !6, line: 1, size: 64, elements: !24)
!24 = !{!25, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !23, file: !6, line: 2, baseType: !26, size: 64)
!26 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ii", scope: !23, file: !6, line: 3, baseType: !28, size: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 2)
!31 = !{!32, !33}
!32 = !DILocalVariable(name: "foxtrot", arg: 1, scope: !20, file: !6, line: 14, type: !23)
!33 = !DILocalVariable(name: "golf", scope: !34, file: !6, line: 17, type: !7)
!34 = distinct !DILexicalBlock(scope: !35, file: !6, line: 16, column: 14)
!35 = distinct !DILexicalBlock(scope: !20, file: !6, line: 16, column: 7)
!36 = !DILocation(line: 14, column: 22, scope: !20)
!37 = !DILocation(line: 15, column: 9, scope: !20)
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 16, column: 7, scope: !35)
!43 = !DILocation(line: 16, column: 7, scope: !20)
!44 = !DILocation(line: 20, column: 9, scope: !20)
!45 = !DILocation(line: 10, column: 7, scope: !12, inlinedAt: !46)
!46 = distinct !DILocation(line: 21, column: 11, scope: !20)
!47 = !DILocation(line: 21, column: 3, scope: !20)
!48 = !DILocation(line: 0, scope: !20)
!49 = !DILocation(line: 22, column: 1, scope: !20)
