; $(brew --prefix llvm)/bin/clang example.c -g -fno-discard-value-names -o example-O0.ll -S -emit-llvm -Xclang -disable-O0-optnone

; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !10 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %bob = alloca i32, align 4
  %tom = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %bob, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %tom, metadata !23, metadata !DIExpression()), !dbg !24
  %0 = load i32, i32* %argc.addr, align 4, !dbg !25
  %tobool = icmp ne i32 %0, 0, !dbg !25
  br i1 %tobool, label %if.then, label %if.else, !dbg !27

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %argc.addr, align 4, !dbg !28
  store i32 %1, i32* %bob, align 4, !dbg !30
  br label %if.end, !dbg !31

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %argc.addr, align 4, !dbg !32
  %add = add nsw i32 %2, 2, !dbg !34
  store i32 %add, i32* %bob, align 4, !dbg !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %argc.addr, align 4, !dbg !36
  %4 = load i32, i32* %bob, align 4, !dbg !37
  %add1 = add nsw i32 %3, %4, !dbg !38
  %add2 = add nsw i32 %add1, 1, !dbg !39
  store i32 %add2, i32* %tom, align 4, !dbg !40
  %5 = load i32, i32* %bob, align 4, !dbg !41
  %6 = load i32, i32* %tom, align 4, !dbg !42
  %add3 = add nsw i32 %5, %6, !dbg !43
  ret i32 %add3, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Homebrew clang version 13.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None, sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX11.sdk", sdk: "MacOSX11.sdk")
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/DWARF/variable-definition-within-scope")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Homebrew clang version 13.0.0"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1, type: !11, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!18 = !DILocation(line: 1, column: 14, scope: !10)
!19 = !DILocalVariable(name: "argv", arg: 2, scope: !10, file: !1, line: 1, type: !14)
!20 = !DILocation(line: 1, column: 26, scope: !10)
!21 = !DILocalVariable(name: "bob", scope: !10, file: !1, line: 2, type: !13)
!22 = !DILocation(line: 2, column: 7, scope: !10)
!23 = !DILocalVariable(name: "tom", scope: !10, file: !1, line: 3, type: !13)
!24 = !DILocation(line: 3, column: 7, scope: !10)
!25 = !DILocation(line: 4, column: 7, scope: !26)
!26 = distinct !DILexicalBlock(scope: !10, file: !1, line: 4, column: 7)
!27 = !DILocation(line: 4, column: 7, scope: !10)
!28 = !DILocation(line: 5, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !1, line: 4, column: 13)
!30 = !DILocation(line: 5, column: 9, scope: !29)
!31 = !DILocation(line: 6, column: 3, scope: !29)
!32 = !DILocation(line: 7, column: 11, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !1, line: 6, column: 10)
!34 = !DILocation(line: 7, column: 16, scope: !33)
!35 = !DILocation(line: 7, column: 9, scope: !33)
!36 = !DILocation(line: 9, column: 9, scope: !10)
!37 = !DILocation(line: 9, column: 16, scope: !10)
!38 = !DILocation(line: 9, column: 14, scope: !10)
!39 = !DILocation(line: 9, column: 20, scope: !10)
!40 = !DILocation(line: 9, column: 7, scope: !10)
!41 = !DILocation(line: 10, column: 10, scope: !10)
!42 = !DILocation(line: 10, column: 16, scope: !10)
!43 = !DILocation(line: 10, column: 14, scope: !10)
!44 = !DILocation(line: 10, column: 3, scope: !10)
