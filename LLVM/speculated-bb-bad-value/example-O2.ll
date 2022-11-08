; ~/Projects/LLVM/llvm/build-release-clang-lldb-7.0.0/bin/clang -g example.c -S -emit-llvm -O2 -mllvm -opt-bisect-limit=11 -o example-O2.ll

; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.17.0"

; Function Attrs: nounwind ssp uwtable
define i32 @example() local_unnamed_addr #0 !dbg !8 {
entry:
  %foo = alloca i32, align 4
  %foo.0..sroa_cast = bitcast i32* %foo to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %foo.0..sroa_cast), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %foo, metadata !13, metadata !DIExpression()), !dbg !19
  store volatile i32 4, i32* %foo, align 4, !dbg !19, !tbaa !20
  %foo.0. = load volatile i32, i32* %foo, align 4, !dbg !24, !tbaa !20
  call void @llvm.dbg.value(metadata i32 %foo.0., metadata !15, metadata !DIExpression()), !dbg !25
  %foo.0.4 = load volatile i32, i32* %foo, align 4, !dbg !26, !tbaa !20
  call void @llvm.dbg.value(metadata i32 %foo.0.4, metadata !16, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 0, metadata !17, metadata !DIExpression()), !dbg !28
  %cmp = icmp eq i32 %foo.0., 4, !dbg !29
  %add = add nsw i32 %foo.0.4, 2, !dbg !31
  call void @llvm.dbg.value(metadata i32 %add, metadata !17, metadata !DIExpression()), !dbg !28
  %sub = add nsw i32 %foo.0.4, -2, !dbg !33
  call void @llvm.dbg.value(metadata i32 %sub, metadata !17, metadata !DIExpression()), !dbg !28
  %result.0 = select i1 %cmp, i32 %add, i32 %sub, !dbg !35
  call void @llvm.dbg.value(metadata i32 %result.0, metadata !17, metadata !DIExpression()), !dbg !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %foo.0..sroa_cast), !dbg !36
  ret i32 %result.0, !dbg !37
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/LLVM/speculated-bb-bad-value")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 7.0.0 "}
!8 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 1, type: !9, isLocal: false, isDefinition: true, scopeLine: 1, isOptimized: true, unit: !0, retainedNodes: !12)
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !15, !16, !17}
!13 = !DILocalVariable(name: "foo", scope: !8, file: !1, line: 2, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!15 = !DILocalVariable(name: "read", scope: !8, file: !1, line: 3, type: !11)
!16 = !DILocalVariable(name: "read1", scope: !8, file: !1, line: 4, type: !11)
!17 = !DILocalVariable(name: "result", scope: !8, file: !1, line: 6, type: !11)
!18 = !DILocation(line: 2, column: 3, scope: !8)
!19 = !DILocation(line: 2, column: 16, scope: !8)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 3, column: 14, scope: !8)
!25 = !DILocation(line: 3, column: 7, scope: !8)
!26 = !DILocation(line: 4, column: 15, scope: !8)
!27 = !DILocation(line: 4, column: 7, scope: !8)
!28 = !DILocation(line: 6, column: 7, scope: !8)
!29 = !DILocation(line: 7, column: 12, scope: !30)
!30 = distinct !DILexicalBlock(scope: !8, file: !1, line: 7, column: 7)
!31 = !DILocation(line: 8, column: 20, scope: !32)
!32 = distinct !DILexicalBlock(scope: !30, file: !1, line: 7, column: 18)
!33 = !DILocation(line: 10, column: 20, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 10)
!35 = !DILocation(line: 7, column: 7, scope: !8)
!36 = !DILocation(line: 14, column: 1, scope: !8)
!37 = !DILocation(line: 13, column: 3, scope: !8)
