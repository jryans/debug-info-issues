; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_fft_offsets_lut = dso_local local_unnamed_addr global [21845 x i16] zeroinitializer, align 16, !dbg !0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 !dbg !19 {
entry:
  tail call void @llvm.dbg.value(metadata i32 0, metadata !24, metadata !DIExpression()), !dbg !25
  tail call void @llvm.dbg.value(metadata ptr @ff_fft_offsets_lut, metadata !26, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata i32 0, metadata !33, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata i32 16, metadata !34, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !35, metadata !DIExpression()), !dbg !36
  tail call void @llvm.dbg.value(metadata ptr @ff_fft_offsets_lut, metadata !26, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata i32 0, metadata !33, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata i32 8, metadata !34, metadata !DIExpression()), !dbg !38
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !35, metadata !DIExpression()), !dbg !38
  store i16 0, ptr @ff_fft_offsets_lut, align 16, !dbg !42, !tbaa !44
  tail call void @llvm.dbg.value(metadata i32 1, metadata !24, metadata !DIExpression()), !dbg !25
  tail call void @llvm.dbg.value(metadata ptr @ff_fft_offsets_lut, metadata !26, metadata !DIExpression()), !dbg !48
  tail call void @llvm.dbg.value(metadata i32 8, metadata !33, metadata !DIExpression()), !dbg !48
  tail call void @llvm.dbg.value(metadata i32 4, metadata !34, metadata !DIExpression()), !dbg !48
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !35, metadata !DIExpression()), !dbg !48
  store i16 2, ptr getelementptr inbounds ([21845 x i16], ptr @ff_fft_offsets_lut, i64 0, i64 1), align 2, !dbg !50, !tbaa !44
  tail call void @llvm.dbg.value(metadata i32 2, metadata !24, metadata !DIExpression()), !dbg !25
  tail call void @llvm.dbg.value(metadata ptr @ff_fft_offsets_lut, metadata !26, metadata !DIExpression()), !dbg !51
  tail call void @llvm.dbg.value(metadata i32 12, metadata !33, metadata !DIExpression()), !dbg !51
  tail call void @llvm.dbg.value(metadata i32 4, metadata !34, metadata !DIExpression()), !dbg !51
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !35, metadata !DIExpression()), !dbg !51
  store i16 3, ptr getelementptr inbounds ([21845 x i16], ptr @ff_fft_offsets_lut, i64 0, i64 2), align 4, !dbg !53, !tbaa !44
  tail call void @llvm.dbg.value(metadata i32 0, metadata !24, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !25
  ret i32 0, !dbg !54
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ff_fft_offsets_lut", scope: !2, file: !3, line: 3, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.1.0rc (git@github.com:llvm/llvm-project.git 461274b81d8641eab64d494accddc81d7db8a09e)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "example.c", directory: "/home/jryans/Projects/Debug Info/Issues/interesting/lut-recursive", checksumkind: CSK_MD5, checksum: "1dc73fd8074065ae7146d1716718129f")
!4 = !{!0}
!5 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 349520, elements: !11)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 25, baseType: !8)
!7 = !DIFile(filename: "/nix/store/81awch8mhqanda1vy0c09bflgra4cxh0-glibc-2.40-66-dev/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 40, baseType: !10)
!9 = !DIFile(filename: "/nix/store/81awch8mhqanda1vy0c09bflgra4cxh0-glibc-2.40-66-dev/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!10 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!11 = !{!12}
!12 = !DISubrange(count: 21845)
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!18 = !{!"clang version 18.1.0rc (git@github.com:llvm/llvm-project.git 461274b81d8641eab64d494accddc81d7db8a09e)"}
!19 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 16, type: !20, scopeLine: 16, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!20 = !DISubroutineType(types: !21)
!21 = !{!22}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{!24}
!24 = !DILocalVariable(name: "n", scope: !19, file: !3, line: 17, type: !22)
!25 = !DILocation(line: 0, scope: !19)
!26 = !DILocalVariable(name: "table", arg: 1, scope: !27, file: !3, line: 5, type: !30)
!27 = distinct !DISubprogram(name: "fft_lut_init", scope: !3, file: !3, line: 5, type: !28, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !32)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !22, !22, !31}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!32 = !{!26, !33, !34, !35}
!33 = !DILocalVariable(name: "off", arg: 2, scope: !27, file: !3, line: 5, type: !22)
!34 = !DILocalVariable(name: "size", arg: 3, scope: !27, file: !3, line: 5, type: !22)
!35 = !DILocalVariable(name: "index", arg: 4, scope: !27, file: !3, line: 5, type: !31)
!36 = !DILocation(line: 0, scope: !27, inlinedAt: !37)
!37 = distinct !DILocation(line: 18, column: 3, scope: !19)
!38 = !DILocation(line: 0, scope: !27, inlinedAt: !39)
!39 = distinct !DILocation(line: 10, column: 5, scope: !40, inlinedAt: !37)
!40 = distinct !DILexicalBlock(scope: !41, file: !3, line: 9, column: 10)
!41 = distinct !DILexicalBlock(scope: !27, file: !3, line: 6, column: 7)
!42 = !DILocation(line: 7, column: 19, scope: !43, inlinedAt: !39)
!43 = distinct !DILexicalBlock(scope: !41, file: !3, line: 6, column: 18)
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !DILocation(line: 0, scope: !27, inlinedAt: !49)
!49 = distinct !DILocation(line: 11, column: 5, scope: !40, inlinedAt: !37)
!50 = !DILocation(line: 7, column: 19, scope: !43, inlinedAt: !49)
!51 = !DILocation(line: 0, scope: !27, inlinedAt: !52)
!52 = distinct !DILocation(line: 12, column: 5, scope: !40, inlinedAt: !37)
!53 = !DILocation(line: 7, column: 19, scope: !43, inlinedAt: !52)
!54 = !DILocation(line: 19, column: 3, scope: !19)
