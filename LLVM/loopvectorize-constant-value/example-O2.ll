; ModuleID = '/app/example.c' https://godbolt.org/z/7Y1haq3aG
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind readnone uwtable
define dso_local i32 @example() local_unnamed_addr #0 !dbg !7 {
entry:
  %foo = alloca [192 x i32], align 16
  %bar = alloca [192 x i32], align 16
  %0 = bitcast [192 x i32]* %foo to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 768, i8* nonnull %0) #3, !dbg !24
  call void @llvm.dbg.declare(metadata [192 x i32]* %foo, metadata !13, metadata !DIExpression()), !dbg !25
  %1 = bitcast [192 x i32]* %bar to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 768, i8* nonnull %1) #3, !dbg !26
  call void @llvm.dbg.declare(metadata [192 x i32]* %bar, metadata !17, metadata !DIExpression()), !dbg !27
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 768, i1 false), !dbg !28
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 1, i64 768, i1 false), !dbg !29
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !30
  br label %vector.body, !dbg !31

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.1, %vector.body ], !dbg !32
  %2 = getelementptr inbounds [192 x i32], [192 x i32]* %bar, i64 0, i64 %index, !dbg !34
  %3 = bitcast i32* %2 to <4 x i32>*, !dbg !34
  %wide.load = load <4 x i32>, <4 x i32>* %3, align 16, !dbg !34, !tbaa !35
  %4 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !34
  %5 = bitcast i32* %4 to <4 x i32>*, !dbg !34
  %wide.load27 = load <4 x i32>, <4 x i32>* %5, align 16, !dbg !34, !tbaa !35
  %6 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 %index, !dbg !39
  %7 = bitcast i32* %6 to <4 x i32>*, !dbg !40
  %wide.load28 = load <4 x i32>, <4 x i32>* %7, align 16, !dbg !40, !tbaa !35
  %8 = getelementptr inbounds i32, i32* %6, i64 4, !dbg !40
  %9 = bitcast i32* %8 to <4 x i32>*, !dbg !40
  %wide.load29 = load <4 x i32>, <4 x i32>* %9, align 16, !dbg !40, !tbaa !35
  %10 = add nsw <4 x i32> %wide.load28, %wide.load, !dbg !40
  %11 = add nsw <4 x i32> %wide.load29, %wide.load27, !dbg !40
  %12 = bitcast i32* %6 to <4 x i32>*, !dbg !40
  store <4 x i32> %10, <4 x i32>* %12, align 16, !dbg !40, !tbaa !35
  %13 = bitcast i32* %8 to <4 x i32>*, !dbg !40
  store <4 x i32> %11, <4 x i32>* %13, align 16, !dbg !40, !tbaa !35
  %index.next = or i64 %index, 8, !dbg !32
  %14 = getelementptr inbounds [192 x i32], [192 x i32]* %bar, i64 0, i64 %index.next, !dbg !34
  %15 = bitcast i32* %14 to <4 x i32>*, !dbg !34
  %wide.load.1 = load <4 x i32>, <4 x i32>* %15, align 16, !dbg !34, !tbaa !35
  %16 = getelementptr inbounds i32, i32* %14, i64 4, !dbg !34
  %17 = bitcast i32* %16 to <4 x i32>*, !dbg !34
  %wide.load27.1 = load <4 x i32>, <4 x i32>* %17, align 16, !dbg !34, !tbaa !35
  %18 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 %index.next, !dbg !39
  %19 = bitcast i32* %18 to <4 x i32>*, !dbg !40
  %wide.load28.1 = load <4 x i32>, <4 x i32>* %19, align 16, !dbg !40, !tbaa !35
  %20 = getelementptr inbounds i32, i32* %18, i64 4, !dbg !40
  %21 = bitcast i32* %20 to <4 x i32>*, !dbg !40
  %wide.load29.1 = load <4 x i32>, <4 x i32>* %21, align 16, !dbg !40, !tbaa !35
  %22 = add nsw <4 x i32> %wide.load28.1, %wide.load.1, !dbg !40
  %23 = add nsw <4 x i32> %wide.load29.1, %wide.load27.1, !dbg !40
  %24 = bitcast i32* %18 to <4 x i32>*, !dbg !40
  store <4 x i32> %22, <4 x i32>* %24, align 16, !dbg !40, !tbaa !35
  %25 = bitcast i32* %20 to <4 x i32>*, !dbg !40
  store <4 x i32> %23, <4 x i32>* %25, align 16, !dbg !40, !tbaa !35
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !32
  %26 = icmp eq i64 %index.next.1, 192, !dbg !32
  br i1 %26, label %for.cond.cleanup6, label %vector.body, !dbg !32, !llvm.loop !41

for.cond.cleanup6:                                ; preds = %vector.body
  call void @llvm.dbg.value(metadata i32 0, metadata !20, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.value(metadata i32 0, metadata !20, metadata !DIExpression()), !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 768, i8* nonnull %1) #3, !dbg !45
  call void @llvm.lifetime.end.p0i8(i64 768, i8* nonnull %0) #3, !dbg !45
  ret i32 0, !dbg !46
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }

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
!7 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 5, type: !9, scopeLine: 5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !17, !18, !20, !22}
!13 = !DILocalVariable(name: "foo", scope: !7, file: !8, line: 6, type: !14)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 6144, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 192)
!17 = !DILocalVariable(name: "bar", scope: !7, file: !8, line: 7, type: !14)
!18 = !DILocalVariable(name: "i", scope: !19, file: !8, line: 12, type: !11)
!19 = distinct !DILexicalBlock(scope: !7, file: !8, line: 12, column: 3)
!20 = !DILocalVariable(name: "sum", scope: !7, file: !8, line: 15, type: !21)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "j", scope: !23, file: !8, line: 16, type: !11)
!23 = distinct !DILexicalBlock(scope: !7, file: !8, line: 16, column: 3)
!24 = !DILocation(line: 6, column: 3, scope: !7)
!25 = !DILocation(line: 6, column: 7, scope: !7)
!26 = !DILocation(line: 7, column: 3, scope: !7)
!27 = !DILocation(line: 7, column: 7, scope: !7)
!28 = !DILocation(line: 9, column: 3, scope: !7)
!29 = !DILocation(line: 10, column: 3, scope: !7)
!30 = !DILocation(line: 12, column: 12, scope: !19)
!31 = !DILocation(line: 12, column: 3, scope: !19)
!32 = !DILocation(line: 12, column: 31, scope: !33)
!33 = distinct !DILexicalBlock(scope: !19, file: !8, line: 12, column: 3)
!34 = !DILocation(line: 13, column: 15, scope: !33)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 13, column: 5, scope: !33)
!40 = !DILocation(line: 13, column: 12, scope: !33)
!41 = distinct !{!41, !31, !42, !43}
!42 = !DILocation(line: 13, column: 20, scope: !19)
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !DILocation(line: 15, column: 16, scope: !7)
!45 = !DILocation(line: 20, column: 1, scope: !7)
!46 = !DILocation(line: 19, column: 3, scope: !7)
