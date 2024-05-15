; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.s002 = type { i32 }

@__func__.ex004PointerSingleElementInstances = private unnamed_addr constant [35 x i8] c"ex004PointerSingleElementInstances\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"example.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex001Int(i32 %i) #0 !dbg !13 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, i32* %i.addr, align 4, !dbg !19
  ret i32 %0, !dbg !20
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex002Struct(i32 %s.coerce) #0 !dbg !21 {
entry:
  %s = alloca %struct.s002, align 4
  %coerce.dive = getelementptr inbounds %struct.s002, %struct.s002* %s, i32 0, i32 0
  store i32 %s.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct.s002* %s, metadata !27, metadata !DIExpression()), !dbg !28
  %i = getelementptr inbounds %struct.s002, %struct.s002* %s, i32 0, i32 0, !dbg !29
  %0 = load i32, i32* %i, align 4, !dbg !29
  ret i32 %0, !dbg !30
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex003PointerSingleElementValue(i32* %a) #0 !dbg !31 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = load i32*, i32** %a.addr, align 8, !dbg !37
  %1 = load i32, i32* %0, align 4, !dbg !38
  ret i32 %1, !dbg !39
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex004PointerSingleElementInstances(i32* %a, i32* %b) #0 !dbg !40 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !43, metadata !DIExpression()), !dbg !44
  store i32* %b, i32** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !45, metadata !DIExpression()), !dbg !46
  %0 = load i32*, i32** %a.addr, align 8, !dbg !47
  %cmp = icmp eq i32* %0, null, !dbg !49
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !50

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %b.addr, align 8, !dbg !51
  %cmp1 = icmp eq i32* %1, null, !dbg !52
  br i1 %cmp1, label %if.then, label %if.end, !dbg !53

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !54
  br label %return, !dbg !54

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32*, i32** %a.addr, align 8, !dbg !56
  %3 = load i32*, i32** %b.addr, align 8, !dbg !58
  %cmp2 = icmp ne i32* %2, %3, !dbg !59
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !60

if.then3:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !61
  br label %return, !dbg !61

if.end4:                                          ; preds = %if.end
  %4 = load i32*, i32** %a.addr, align 8, !dbg !63
  %5 = load i32*, i32** %b.addr, align 8, !dbg !65
  %cmp5 = icmp eq i32* %4, %5, !dbg !66
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !67

if.then6:                                         ; preds = %if.end4
  store i32 3, i32* %retval, align 4, !dbg !68
  br label %return, !dbg !68

if.end7:                                          ; preds = %if.end4
  call void @__assert_rtn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.ex004PointerSingleElementInstances, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !70
  unreachable, !dbg !70

return:                                           ; preds = %if.then6, %if.then3, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !71
  ret i32 %6, !dbg !71
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex005PointerMultipleElementValues(i32* %a) #0 !dbg !72 {
entry:
  %a.addr = alloca i32*, align 8
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !73, metadata !DIExpression()), !dbg !74
  %0 = load i32*, i32** %a.addr, align 8, !dbg !75
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !75
  %1 = load i32, i32* %arrayidx, align 4, !dbg !75
  %2 = load i32*, i32** %a.addr, align 8, !dbg !76
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !76
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !76
  %add = add nsw i32 %1, %3, !dbg !77
  %4 = load i32*, i32** %a.addr, align 8, !dbg !78
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 2, !dbg !78
  %5 = load i32, i32* %arrayidx2, align 4, !dbg !78
  %add3 = add nsw i32 %add, %5, !dbg !79
  %6 = load i32*, i32** %a.addr, align 8, !dbg !80
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 3, !dbg !80
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !80
  %add5 = add nsw i32 %add3, %7, !dbg !81
  ret i32 %add5, !dbg !82
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @ex006PointerFunction(i32 (...)* %f) #0 !dbg !83 {
entry:
  %f.addr = alloca i32 (...)*, align 8
  store i32 (...)* %f, i32 (...)** %f.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (...)** %f.addr, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load i32 (...)*, i32 (...)** %f.addr, align 8, !dbg !91
  %call = call i32 (...) %0(), !dbg !91
  ret i32 %call, !dbg !92
}

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.dbg.cu = !{!7}
!llvm.ident = !{!12}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 4]}
!1 = !{i32 7, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 7, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/types")
!9 = !{}
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!13 = distinct !DISubprogram(name: "ex001Int", scope: !8, file: !8, line: 5, type: !14, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocalVariable(name: "i", arg: 1, scope: !13, file: !8, line: 5, type: !16)
!18 = !DILocation(line: 5, column: 18, scope: !13)
!19 = !DILocation(line: 6, column: 10, scope: !13)
!20 = !DILocation(line: 6, column: 3, scope: !13)
!21 = distinct !DISubprogram(name: "ex002Struct", scope: !8, file: !8, line: 15, type: !22, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!22 = !DISubroutineType(types: !23)
!23 = !{!16, !24}
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s002", file: !8, line: 9, size: 32, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !24, file: !8, line: 10, baseType: !16, size: 32)
!27 = !DILocalVariable(name: "s", arg: 1, scope: !21, file: !8, line: 15, type: !24)
!28 = !DILocation(line: 15, column: 29, scope: !21)
!29 = !DILocation(line: 16, column: 12, scope: !21)
!30 = !DILocation(line: 16, column: 3, scope: !21)
!31 = distinct !DISubprogram(name: "ex003PointerSingleElementValue", scope: !8, file: !8, line: 19, type: !32, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!32 = !DISubroutineType(types: !33)
!33 = !{!16, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!35 = !DILocalVariable(name: "a", arg: 1, scope: !31, file: !8, line: 19, type: !34)
!36 = !DILocation(line: 19, column: 41, scope: !31)
!37 = !DILocation(line: 20, column: 11, scope: !31)
!38 = !DILocation(line: 20, column: 10, scope: !31)
!39 = !DILocation(line: 20, column: 3, scope: !31)
!40 = distinct !DISubprogram(name: "ex004PointerSingleElementInstances", scope: !8, file: !8, line: 23, type: !41, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!41 = !DISubroutineType(types: !42)
!42 = !{!16, !34, !34}
!43 = !DILocalVariable(name: "a", arg: 1, scope: !40, file: !8, line: 23, type: !34)
!44 = !DILocation(line: 23, column: 45, scope: !40)
!45 = !DILocalVariable(name: "b", arg: 2, scope: !40, file: !8, line: 23, type: !34)
!46 = !DILocation(line: 23, column: 53, scope: !40)
!47 = !DILocation(line: 24, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !40, file: !8, line: 24, column: 7)
!49 = !DILocation(line: 24, column: 9, scope: !48)
!50 = !DILocation(line: 24, column: 17, scope: !48)
!51 = !DILocation(line: 24, column: 20, scope: !48)
!52 = !DILocation(line: 24, column: 22, scope: !48)
!53 = !DILocation(line: 24, column: 7, scope: !40)
!54 = !DILocation(line: 26, column: 5, scope: !55)
!55 = distinct !DILexicalBlock(scope: !48, file: !8, line: 24, column: 31)
!56 = !DILocation(line: 28, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !40, file: !8, line: 28, column: 7)
!58 = !DILocation(line: 28, column: 12, scope: !57)
!59 = !DILocation(line: 28, column: 9, scope: !57)
!60 = !DILocation(line: 28, column: 7, scope: !40)
!61 = !DILocation(line: 29, column: 5, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !8, line: 28, column: 15)
!63 = !DILocation(line: 31, column: 7, scope: !64)
!64 = distinct !DILexicalBlock(scope: !40, file: !8, line: 31, column: 7)
!65 = !DILocation(line: 31, column: 12, scope: !64)
!66 = !DILocation(line: 31, column: 9, scope: !64)
!67 = !DILocation(line: 31, column: 7, scope: !40)
!68 = !DILocation(line: 33, column: 5, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !8, line: 31, column: 15)
!70 = !DILocation(line: 35, column: 3, scope: !40)
!71 = !DILocation(line: 36, column: 1, scope: !40)
!72 = distinct !DISubprogram(name: "ex005PointerMultipleElementValues", scope: !8, file: !8, line: 38, type: !32, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!73 = !DILocalVariable(name: "a", arg: 1, scope: !72, file: !8, line: 38, type: !34)
!74 = !DILocation(line: 38, column: 44, scope: !72)
!75 = !DILocation(line: 40, column: 10, scope: !72)
!76 = !DILocation(line: 40, column: 17, scope: !72)
!77 = !DILocation(line: 40, column: 15, scope: !72)
!78 = !DILocation(line: 40, column: 24, scope: !72)
!79 = !DILocation(line: 40, column: 22, scope: !72)
!80 = !DILocation(line: 40, column: 31, scope: !72)
!81 = !DILocation(line: 40, column: 29, scope: !72)
!82 = !DILocation(line: 40, column: 3, scope: !72)
!83 = distinct !DISubprogram(name: "ex006PointerFunction", scope: !8, file: !8, line: 43, type: !84, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!84 = !DISubroutineType(types: !85)
!85 = !{!16, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!16, null}
!89 = !DILocalVariable(name: "f", arg: 1, scope: !83, file: !8, line: 43, type: !86)
!90 = !DILocation(line: 43, column: 32, scope: !83)
!91 = !DILocation(line: 44, column: 10, scope: !83)
!92 = !DILocation(line: 44, column: 3, scope: !83)
