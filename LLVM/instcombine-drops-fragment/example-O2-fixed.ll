; ModuleID = '/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023519-21021-14nu2y.hnai8/example.c' http://localhost:10240/z/v4aMcn
source_filename = "/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023519-21021-14nu2y.hnai8/example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.18.0"

@global = local_unnamed_addr global i32 0, align 4, !dbg !0

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable writeonly
define i64 @foo(i64 returned %eyelids.coerce) local_unnamed_addr #0 !dbg !13 {
entry:
  call void @llvm.dbg.value(metadata i64 %eyelids.coerce, metadata !21, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !23
  call void @llvm.dbg.value(metadata i32 undef, metadata !21, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !23
  store i32 1, i32* @global, align 4, !dbg !24, !tbaa !25
  call void @llvm.dbg.value(metadata i32 undef, metadata !22, metadata !DIExpression()), !dbg !23
  ret i64 %eyelids.coerce, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind ssp uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "global", scope: !2, file: !6, line: 6, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2de23c8364babb49fe39d81048cd304a5ac2934e)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023519-21021-14nu2y.hnai8/example.c", directory: "/private/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023519-21021-14nu2y.hnai8")
!4 = !{}
!5 = !{!0}
!6 = !DIFile(filename: "/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023519-21021-14nu2y.hnai8/example.c", directory: "")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2de23c8364babb49fe39d81048cd304a5ac2934e)"}
!13 = distinct !DISubprogram(name: "foo", scope: !6, file: !6, line: 8, type: !14, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !20)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16}
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bees", file: !6, line: 1, size: 64, elements: !17)
!17 = !{!18, !19}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !16, file: !6, line: 2, baseType: !7, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !16, file: !6, line: 3, baseType: !7, size: 32, offset: 32)
!20 = !{!21, !22}
!21 = !DILocalVariable(name: "eyelids", arg: 1, scope: !13, file: !6, line: 8, type: !16)
!22 = !DILocalVariable(name: "bar", scope: !13, file: !6, line: 10, type: !7)
!23 = !DILocation(line: 0, scope: !13)
!24 = !DILocation(line: 9, column: 10, scope: !13)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 12, column: 1, scope: !13)
