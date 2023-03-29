; https://godbolt.org/z/6r6qs3Edh

; ModuleID = '/app/example.c'
source_filename = "/app/example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @example() local_unnamed_addr #0 !dbg !7 {
entry:
  %foo = alloca i32, align 4
  %foo.0.sroa_cast19 = bitcast i32* %foo to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %foo.0.sroa_cast19), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %foo, metadata !13, metadata !DIExpression()), !dbg !20
  store volatile i32 4, i32* %foo, align 4, !dbg !20, !tbaa !21
  %foo.0.foo.0. = load volatile i32, i32* %foo, align 4, !dbg !25, !tbaa !21
  call void @llvm.dbg.value(metadata i32 %foo.0.foo.0., metadata !15, metadata !DIExpression()), !dbg !26
  %foo.0.foo.0.15 = load volatile i32, i32* %foo, align 4, !dbg !27, !tbaa !21
  call void @llvm.dbg.value(metadata i32 %foo.0.foo.0.15, metadata !16, metadata !DIExpression()), !dbg !26
  %foo.0.foo.0.16 = load volatile i32, i32* %foo, align 4, !dbg !28, !tbaa !21
  call void @llvm.dbg.value(metadata i32 %foo.0.foo.0.16, metadata !17, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32 undef, metadata !18, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32 undef, metadata !18, metadata !DIExpression()), !dbg !26
  %foo.0.foo.0.17 = load volatile i32, i32* %foo, align 4, !dbg !29, !tbaa !21
  %cmp = icmp eq i32 %foo.0.foo.0.17, 4, !dbg !31
  br i1 %cmp, label %if.then, label %if.end, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 undef, metadata !18, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32 undef, metadata !17, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32 %foo.0.foo.0.16, metadata !18, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !26
  %0 = mul i32 %foo.0.foo.0.16, 20, !dbg !33
  %mul = add i32 %0, 240, !dbg !33
  call void @llvm.dbg.value(metadata i32 %mul, metadata !18, metadata !DIExpression()), !dbg !26
  %div = sdiv i32 %mul, 3, !dbg !35
  call void @llvm.dbg.value(metadata i32 %div, metadata !18, metadata !DIExpression()), !dbg !26
  br label %if.end, !dbg !36

if.end:                                           ; preds = %entry, %if.then
  %a.0 = phi i32 [ %div, %if.then ], [ 0, %entry ], !dbg !37
  call void @llvm.dbg.value(metadata i32 %a.0, metadata !18, metadata !DIExpression()), !dbg !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %foo.0.sroa_cast19), !dbg !38
  ret i32 %a.0, !dbg !39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 (https://github.com/llvm/llvm-project.git d32170dbd5b0d54436537b6b75beaf44324e0c28)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0 (https://github.com/llvm/llvm-project.git d32170dbd5b0d54436537b6b75beaf44324e0c28)"}
!7 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 1, type: !9, scopeLine: 1, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !15, !16, !17, !18}
!13 = !DILocalVariable(name: "foo", scope: !7, file: !8, line: 2, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!15 = !DILocalVariable(name: "read1", scope: !7, file: !8, line: 3, type: !11)
!16 = !DILocalVariable(name: "read2", scope: !7, file: !8, line: 4, type: !11)
!17 = !DILocalVariable(name: "cheese", scope: !7, file: !8, line: 6, type: !11)
!18 = !DILocalVariable(name: "a", scope: !7, file: !8, line: 7, type: !11)
!19 = !DILocation(line: 2, column: 3, scope: !7)
!20 = !DILocation(line: 2, column: 16, scope: !7)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 3, column: 15, scope: !7)
!26 = !DILocation(line: 0, scope: !7)
!27 = !DILocation(line: 4, column: 15, scope: !7)
!28 = !DILocation(line: 6, column: 16, scope: !7)
!29 = !DILocation(line: 10, column: 7, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !8, line: 10, column: 7)
!31 = !DILocation(line: 10, column: 11, scope: !30)
!32 = !DILocation(line: 10, column: 7, scope: !7)
!33 = !DILocation(line: 13, column: 7, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !8, line: 10, column: 17)
!35 = !DILocation(line: 14, column: 7, scope: !34)
!36 = !DILocation(line: 15, column: 3, scope: !34)
!37 = !DILocation(line: 0, scope: !30)
!38 = !DILocation(line: 20, column: 1, scope: !7)
!39 = !DILocation(line: 19, column: 3, scope: !7)
