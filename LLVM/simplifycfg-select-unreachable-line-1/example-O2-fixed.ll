; ModuleID = '/app/example.c' https://godbolt.org/z/hKx15YM9E
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @example() local_unnamed_addr #0 !dbg !7 {
entry:
  %foo = alloca i32, align 4
  %foo.0.sroa_cast7 = bitcast i32* %foo to i8*, !dbg !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %foo.0.sroa_cast7), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %foo, metadata !13, metadata !DIExpression()), !dbg !18
  store volatile i32 0, i32* %foo, align 4, !dbg !18, !tbaa !19
  %foo.0.foo.0. = load volatile i32, i32* %foo, align 4, !dbg !23, !tbaa !19
  call void @llvm.dbg.value(metadata i32 %foo.0.foo.0., metadata !15, metadata !DIExpression()), !dbg !24
  %foo.0.foo.0.5 = load volatile i32, i32* %foo, align 4, !dbg !25, !tbaa !19
  call void @llvm.dbg.value(metadata i32 %foo.0.foo.0.5, metadata !16, metadata !DIExpression()), !dbg !26
  %cmp = icmp sgt i32 %foo.0.foo.0., 3, !dbg !27
  %mul = shl nsw i32 %foo.0.foo.0.5, 1, !dbg !29
  %add = or i32 %mul, 1, !dbg !29
  %brains.0 = select i1 %cmp, i32 %add, i32 %foo.0.foo.0.5, !dbg !29
  call void @llvm.dbg.value(metadata i32 %brains.0, metadata !16, metadata !DIExpression()), !dbg !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %foo.0.sroa_cast7), !dbg !30
  ret i32 %brains.0, !dbg !31
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final 356655)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final 356655)"}
!7 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !9, scopeLine: 1, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !15, !16}
!13 = !DILocalVariable(name: "foo", scope: !7, file: !8, line: 2, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!15 = !DILocalVariable(name: "read1", scope: !7, file: !8, line: 3, type: !11)
!16 = !DILocalVariable(name: "brains", scope: !7, file: !8, line: 4, type: !11)
!17 = !DILocation(line: 2, column: 3, scope: !7)
!18 = !DILocation(line: 2, column: 16, scope: !7)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 3, column: 15, scope: !7)
!24 = !DILocation(line: 3, column: 7, scope: !7)
!25 = !DILocation(line: 4, column: 16, scope: !7)
!26 = !DILocation(line: 4, column: 7, scope: !7)
!27 = !DILocation(line: 6, column: 13, scope: !28)
!28 = distinct !DILexicalBlock(scope: !7, file: !8, line: 6, column: 7)
!29 = !DILocation(line: 6, column: 7, scope: !7)
!30 = !DILocation(line: 12, column: 1, scope: !7)
!31 = !DILocation(line: 11, column: 3, scope: !7)
