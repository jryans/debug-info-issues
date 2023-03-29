; https://godbolt.org/z/hzWbM6s5e

; ModuleID = '/app/example.c'
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @example() local_unnamed_addr #0 !dbg !7 {
entry:
  %foo = alloca i32, align 4
  %foo.0.sroa_cast19 = bitcast i32* %foo to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %foo.0.sroa_cast19), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %foo, metadata !12, metadata !DIExpression()), !dbg !19
  store volatile i32 4, i32* %foo, align 4, !dbg !19, !tbaa !20
  %foo.0.foo.0. = load volatile i32, i32* %foo, align 4, !dbg !24, !tbaa !20
  call void @llvm.dbg.value(metadata i32 %foo.0.foo.0., metadata !14, metadata !DIExpression()), !dbg !25
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, align 4, !dbg !26, !tbaa !20
  call void @llvm.dbg.value(metadata i32 %foo.0.foo.0.15, metadata !15, metadata !DIExpression()), !dbg !27
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, align 4, !dbg !28, !tbaa !20
  call void @llvm.dbg.value(metadata i32 %foo.0.foo.0.16, metadata !16, metadata !DIExpression()), !dbg !29
  %foo.0.foo.0.17 = load volatile i32, i32* %foo, align 4, !dbg !30, !tbaa !20
  %cmp = icmp eq i32 %foo.0.foo.0.17, 4, !dbg !32
  br i1 %cmp, label %if.then, label %if.end, !dbg !33

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %foo.0.foo.0.16, metadata !17, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !34
  %0 = mul i32 %foo.0.foo.0.16, 20, !dbg !35
  %mul = add i32 %0, 240, !dbg !35
  call void @llvm.dbg.value(metadata i32 %mul, metadata !17, metadata !DIExpression()), !dbg !34
  %div = sdiv i32 %mul, 3, !dbg !37
  call void @llvm.dbg.value(metadata i32 %div, metadata !17, metadata !DIExpression()), !dbg !34
  br label %if.end, !dbg !38

if.end:                                           ; preds = %entry, %if.then
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ], !dbg !39
  call void @llvm.dbg.value(metadata i32 %a.0, metadata !17, metadata !DIExpression()), !dbg !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %foo.0.sroa_cast19), !dbg !41
  ret i32 %a.0, !dbg !42
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 (tags/RELEASE_700/final 342594)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.0 (tags/RELEASE_700/final 342594)"}
!7 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 1, type: !8, isLocal: false, isDefinition: true, scopeLine: 1, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !14, !15, !16, !17}
!12 = !DILocalVariable(name: "foo", scope: !7, file: !1, line: 2, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !10)
!14 = !DILocalVariable(name: "read1", scope: !7, file: !1, line: 3, type: !10)
!15 = !DILocalVariable(name: "read2", scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocalVariable(name: "cheese", scope: !7, file: !1, line: 6, type: !10)
!17 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 7, type: !10)
!18 = !DILocation(line: 2, column: 3, scope: !7)
!19 = !DILocation(line: 2, column: 16, scope: !7)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 3, column: 15, scope: !7)
!25 = !DILocation(line: 3, column: 7, scope: !7)
!26 = !DILocation(line: 4, column: 15, scope: !7)
!27 = !DILocation(line: 4, column: 7, scope: !7)
!28 = !DILocation(line: 6, column: 16, scope: !7)
!29 = !DILocation(line: 6, column: 7, scope: !7)
!30 = !DILocation(line: 10, column: 7, scope: !31)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 7)
!32 = !DILocation(line: 10, column: 11, scope: !31)
!33 = !DILocation(line: 10, column: 7, scope: !7)
!34 = !DILocation(line: 7, column: 7, scope: !7)
!35 = !DILocation(line: 13, column: 7, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 17)
!37 = !DILocation(line: 14, column: 7, scope: !36)
!38 = !DILocation(line: 15, column: 3, scope: !36)
!39 = !DILocation(line: 0, scope: !40)
!40 = distinct !DILexicalBlock(scope: !31, file: !1, line: 15, column: 10)
!41 = !DILocation(line: 20, column: 1, scope: !7)
!42 = !DILocation(line: 19, column: 3, scope: !7)
