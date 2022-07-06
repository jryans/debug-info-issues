; $(brew --prefix llvm)/bin/clang example.c -g -Xlinker -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -S -emit-llvm -o example.ll -O1 -mllvm -opt-bisect-limit=10 -fno-discard-value-names

; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !18, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i8** %argv, metadata !19, metadata !DIExpression()), !dbg !22
  %tobool = icmp ne i32 %argc, 0, !dbg !23
  br i1 %tobool, label %if.then, label %if.else, !dbg !25

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %argc, metadata !20, metadata !DIExpression()), !dbg !22
  br label %if.end, !dbg !26

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 2, metadata !20, metadata !DIExpression()), !dbg !22
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bob.0 = phi i32 [ %argc, %if.then ], [ 2, %if.else ], !dbg !28
  call void @llvm.dbg.value(metadata i32 %bob.0, metadata !20, metadata !DIExpression()), !dbg !22
  %add1 = add nsw i32 %argc, %bob.0, !dbg !29
  %add2 = add nsw i32 %add1, 1, !dbg !30
  call void @llvm.dbg.value(metadata i32 %add2, metadata !21, metadata !DIExpression()), !dbg !22
  %add3 = add nsw i32 %bob.0, %add2, !dbg !31
  ret i32 %add3, !dbg !32
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 13.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/DWARF/variable-definition-within-scope")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Homebrew clang version 13.0.0"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18, !19, !20, !21}
!18 = !DILocalVariable(name: "argc", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!19 = !DILocalVariable(name: "argv", arg: 2, scope: !10, file: !1, line: 1, type: !14)
!20 = !DILocalVariable(name: "bob", scope: !10, file: !1, line: 2, type: !13)
!21 = !DILocalVariable(name: "tom", scope: !10, file: !1, line: 3, type: !13)
!22 = !DILocation(line: 0, scope: !10)
!23 = !DILocation(line: 4, column: 7, scope: !24)
!24 = distinct !DILexicalBlock(scope: !10, file: !1, line: 4, column: 7)
!25 = !DILocation(line: 4, column: 7, scope: !10)
!26 = !DILocation(line: 6, column: 3, scope: !27)
!27 = distinct !DILexicalBlock(scope: !24, file: !1, line: 4, column: 13)
!28 = !DILocation(line: 0, scope: !24)
!29 = !DILocation(line: 9, column: 14, scope: !10)
!30 = !DILocation(line: 9, column: 20, scope: !10)
!31 = !DILocation(line: 10, column: 14, scope: !10)
!32 = !DILocation(line: 10, column: 3, scope: !10)
