; ModuleID = '/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023522-14177-yf5luj.j89r/example.c'
source_filename = "/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023522-14177-yf5luj.j89r/example.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.18.0"

@alpha = common local_unnamed_addr global i32 0, align 4, !dbg !0

; Function Attrs: nounwind ssp uwtable
define i32 @charlie() local_unnamed_addr #0 !dbg !12 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()), !dbg !17
  %call = tail call i32 @bravo() #3, !dbg !18
  ret i32 %call, !dbg !19
}

declare i32 @bravo() local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define i32 @echo(i64 %foxtrot.coerce) local_unnamed_addr #0 !dbg !20 {
entry:
  %foxtrot.sroa.0.0.extract.trunc = trunc i64 %foxtrot.coerce to i32
  call void @llvm.dbg.value(metadata i32 %foxtrot.sroa.0.0.extract.trunc, metadata !32, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !36
  %tobool = icmp eq i32 %foxtrot.sroa.0.0.extract.trunc, 0, !dbg !37
  %foxtrot.sroa.2.0.extract.shift = lshr i64 %foxtrot.coerce, 32, !dbg !38
  %foxtrot.sroa.2.0.extract.trunc = trunc i64 %foxtrot.sroa.2.0.extract.shift to i32, !dbg !38
  call void @llvm.dbg.value(metadata i32 0, metadata !16, metadata !DIExpression()) #3, !dbg !38
  %storemerge = select i1 %tobool, i32 %foxtrot.sroa.2.0.extract.trunc, i32 %foxtrot.sroa.0.0.extract.trunc, !dbg !38
  store i32 %storemerge, i32* @alpha, align 4, !dbg !39, !tbaa !40
  %call.i = tail call i32 @bravo() #3, !dbg !39
  %retval.0 = sub nsw i32 0, %call.i, !dbg !39
  ret i32 %retval.0, !dbg !44
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "alpha", scope: !2, file: !3, line: 6, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 8.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: GNU)
!3 = !DIFile(filename: "/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023522-14177-yf5luj.j89r/example.c", directory: "/private/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023522-14177-yf5luj.j89r")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{!"clang version 8.0.0 "}
!12 = distinct !DISubprogram(name: "charlie", scope: !3, file: !3, line: 9, type: !13, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !2, retainedNodes: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{!6}
!15 = !{!16}
!16 = !DILocalVariable(name: "delta", scope: !12, file: !3, line: 10, type: !6)
!17 = !DILocation(line: 10, column: 7, scope: !12)
!18 = !DILocation(line: 11, column: 10, scope: !12)
!19 = !DILocation(line: 11, column: 3, scope: !12)
!20 = distinct !DISubprogram(name: "echo", scope: !3, file: !3, line: 14, type: !21, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !2, retainedNodes: !31)
!21 = !DISubroutineType(types: !22)
!22 = !{!6, !23}
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "onion", file: !3, line: 1, size: 64, elements: !24)
!24 = !{!25, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "dd", scope: !23, file: !3, line: 2, baseType: !26, size: 64)
!26 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ii", scope: !23, file: !3, line: 3, baseType: !28, size: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 2)
!31 = !{!32, !33}
!32 = !DILocalVariable(name: "foxtrot", arg: 1, scope: !20, file: !3, line: 14, type: !23)
!33 = !DILocalVariable(name: "golf", scope: !34, file: !3, line: 17, type: !6)
!34 = distinct !DILexicalBlock(scope: !35, file: !3, line: 16, column: 14)
!35 = distinct !DILexicalBlock(scope: !20, file: !3, line: 16, column: 7)
!36 = !DILocation(line: 14, column: 22, scope: !20)
!37 = !DILocation(line: 16, column: 7, scope: !35)
!38 = !DILocation(line: 16, column: 7, scope: !20)
!39 = !DILocation(line: 0, scope: !20)
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 22, column: 1, scope: !20)
