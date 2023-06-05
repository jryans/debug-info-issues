; ModuleID = '/app/example.c' https://godbolt.org/z/fhh99hhdM
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alpha = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local i32 @charlie() local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !15, metadata !DIExpression()), !dbg !16
  %call = tail call i32 @bravo() #3, !dbg !17
  ret i32 %call, !dbg !18
}

declare dso_local i32 @bravo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @echo(i64 %foxtrot.coerce) local_unnamed_addr #0 !dbg !19 {
entry:
  %foxtrot.sroa.0.0.extract.trunc = trunc i64 %foxtrot.coerce to i32
  call void @llvm.dbg.value(metadata i32 %foxtrot.sroa.0.0.extract.trunc, metadata !31, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !35
  store i32 %foxtrot.sroa.0.0.extract.trunc, i32* @alpha, align 4, !dbg !36, !tbaa !37
  %tobool = icmp eq i32 %foxtrot.sroa.0.0.extract.trunc, 0, !dbg !41
  br i1 %tobool, label %if.end, label %return, !dbg !42

if.end:                                           ; preds = %entry
  %foxtrot.sroa.2.0.extract.shift = lshr i64 %foxtrot.coerce, 32
  %foxtrot.sroa.2.0.extract.trunc = trunc i64 %foxtrot.sroa.2.0.extract.shift to i32
  call void @llvm.dbg.value(metadata i32 %foxtrot.sroa.2.0.extract.trunc, metadata !31, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !35
  store i32 %foxtrot.sroa.2.0.extract.trunc, i32* @alpha, align 4, !dbg !43, !tbaa !37
  call void @llvm.dbg.value(metadata i32 0, metadata !15, metadata !DIExpression()) #3, !dbg !44
  br label %return, !dbg !46

return:                                           ; preds = %entry, %if.end
  %call.i = tail call i32 @bravo() #3, !dbg !47
  %retval.0 = sub nsw i32 0, %call.i, !dbg !48
  ret i32 %retval.0, !dbg !49
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "alpha", scope: !2, file: !3, line: 6, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final 342594)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/app/example.c", directory: "/app")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.0 (tags/RELEASE_700/final 342594)"}
!11 = distinct !DISubprogram(name: "charlie", scope: !3, file: !3, line: 9, type: !12, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !14)
!12 = !DISubroutineType(types: !13)
!13 = !{!6}
!14 = !{!15}
!15 = !DILocalVariable(name: "delta", scope: !11, file: !3, line: 10, type: !6)
!16 = !DILocation(line: 10, column: 7, scope: !11)
!17 = !DILocation(line: 11, column: 10, scope: !11)
!18 = !DILocation(line: 11, column: 3, scope: !11)
!19 = distinct !DISubprogram(name: "echo", scope: !3, file: !3, line: 14, type: !20, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !30)
!20 = !DISubroutineType(types: !21)
!21 = !{!6, !22}
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "onion", file: !3, line: 1, size: 64, elements: !23)
!23 = !{!24, !26}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !22, file: !3, line: 2, baseType: !25, size: 64)
!25 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ii", scope: !22, file: !3, line: 3, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 2)
!30 = !{!31, !32}
!31 = !DILocalVariable(name: "foxtrot", arg: 1, scope: !19, file: !3, line: 14, type: !22)
!32 = !DILocalVariable(name: "golf", scope: !33, file: !3, line: 17, type: !6)
!33 = distinct !DILexicalBlock(scope: !34, file: !3, line: 16, column: 14)
!34 = distinct !DILexicalBlock(scope: !19, file: !3, line: 16, column: 7)
!35 = !DILocation(line: 14, column: 22, scope: !19)
!36 = !DILocation(line: 15, column: 9, scope: !19)
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 16, column: 7, scope: !34)
!42 = !DILocation(line: 16, column: 7, scope: !19)
!43 = !DILocation(line: 20, column: 9, scope: !19)
!44 = !DILocation(line: 10, column: 7, scope: !11, inlinedAt: !45)
!45 = distinct !DILocation(line: 21, column: 11, scope: !19)
!46 = !DILocation(line: 21, column: 3, scope: !19)
!47 = !DILocation(line: 0, scope: !33)
!48 = !DILocation(line: 0, scope: !19)
!49 = !DILocation(line: 22, column: 1, scope: !19)
