; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.S = type { i32, i32 }

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) #0 !dbg !11 {
entry:
  %n.addr = alloca i32, align 4
  %s = alloca %struct.S, align 4
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata %struct.S* %s, metadata !17, metadata !DIExpression()), !dbg !22
  %a = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 0, !dbg !23
  %0 = load i32, i32* %n.addr, align 4, !dbg !24
  store i32 %0, i32* %a, align 4, !dbg !23
  %b = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 1, !dbg !23
  %1 = load i32, i32* %n.addr, align 4, !dbg !25
  %add = add nsw i32 %1, 1, !dbg !26
  store i32 %add, i32* %b, align 4, !dbg !23
  %a1 = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 0, !dbg !27
  %2 = load i32, i32* %a1, align 4, !dbg !27
  %b2 = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 1, !dbg !28
  %3 = load i32, i32* %b2, align 4, !dbg !28
  %add3 = add nsw i32 %2, %3, !dbg !29
  ret i32 %add3, !dbg !30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!10}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/struct-stack")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 6, type: !12, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 6, type: !14)
!16 = !DILocation(line: 6, column: 17, scope: !11)
!17 = !DILocalVariable(name: "s", scope: !11, file: !8, line: 8, type: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !8, line: 1, size: 64, elements: !19)
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !18, file: !8, line: 2, baseType: !14, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !18, file: !8, line: 3, baseType: !14, size: 32, offset: 32)
!22 = !DILocation(line: 8, column: 12, scope: !11)
!23 = !DILocation(line: 8, column: 16, scope: !11)
!24 = !DILocation(line: 8, column: 18, scope: !11)
!25 = !DILocation(line: 8, column: 21, scope: !11)
!26 = !DILocation(line: 8, column: 23, scope: !11)
!27 = !DILocation(line: 9, column: 12, scope: !11)
!28 = !DILocation(line: 9, column: 18, scope: !11)
!29 = !DILocation(line: 9, column: 14, scope: !11)
!30 = !DILocation(line: 9, column: 3, scope: !11)
