; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx14.0.0"

%struct.S = type { i32, %struct.S* }

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example(i32 %n) #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %s = alloca %struct.S, align 8
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata %struct.S* %s, metadata !17, metadata !DIExpression()), !dbg !23
  %id = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 0, !dbg !24
  %0 = load i32, i32* %n.addr, align 4, !dbg !25
  store i32 %0, i32* %id, align 8, !dbg !24
  %next = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 1, !dbg !24
  store %struct.S* null, %struct.S** %next, align 8, !dbg !24
  call void @modify(%struct.S* %s), !dbg !26
  %next1 = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 1, !dbg !27
  %1 = load %struct.S*, %struct.S** %next1, align 8, !dbg !27
  %tobool = icmp ne %struct.S* %1, null, !dbg !29
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !30

land.lhs.true:                                    ; preds = %entry
  %next2 = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 1, !dbg !31
  %2 = load %struct.S*, %struct.S** %next2, align 8, !dbg !31
  %next3 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 1, !dbg !32
  %3 = load %struct.S*, %struct.S** %next3, align 8, !dbg !32
  %tobool4 = icmp ne %struct.S* %3, null, !dbg !33
  br i1 %tobool4, label %if.then, label %if.end, !dbg !34

if.then:                                          ; preds = %land.lhs.true
  %next5 = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 1, !dbg !35
  %4 = load %struct.S*, %struct.S** %next5, align 8, !dbg !35
  %next6 = getelementptr inbounds %struct.S, %struct.S* %4, i32 0, i32 1, !dbg !36
  %5 = load %struct.S*, %struct.S** %next6, align 8, !dbg !36
  %id7 = getelementptr inbounds %struct.S, %struct.S* %5, i32 0, i32 0, !dbg !37
  %6 = load i32, i32* %id7, align 8, !dbg !37
  store i32 %6, i32* %retval, align 4, !dbg !38
  br label %return, !dbg !38

if.end:                                           ; preds = %land.lhs.true, %entry
  %next8 = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 1, !dbg !39
  %7 = load %struct.S*, %struct.S** %next8, align 8, !dbg !39
  %tobool9 = icmp ne %struct.S* %7, null, !dbg !41
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !42

if.then10:                                        ; preds = %if.end
  %next11 = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 1, !dbg !43
  %8 = load %struct.S*, %struct.S** %next11, align 8, !dbg !43
  %id12 = getelementptr inbounds %struct.S, %struct.S* %8, i32 0, i32 0, !dbg !44
  %9 = load i32, i32* %id12, align 8, !dbg !44
  store i32 %9, i32* %retval, align 4, !dbg !45
  br label %return, !dbg !45

if.end13:                                         ; preds = %if.end
  %id14 = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 0, !dbg !46
  %10 = load i32, i32* %id14, align 8, !dbg !46
  store i32 %10, i32* %retval, align 4, !dbg !47
  br label %return, !dbg !47

return:                                           ; preds = %if.end13, %if.then10, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !48
  ret i32 %11, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @modify(%struct.S*) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

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
!8 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/basic/struct-recursive-arg")
!9 = !{}
!10 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!11 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 8, type: !12, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !8, line: 8, type: !14)
!16 = !DILocation(line: 8, column: 17, scope: !11)
!17 = !DILocalVariable(name: "s", scope: !11, file: !8, line: 10, type: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !8, line: 1, size: 128, elements: !19)
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !18, file: !8, line: 2, baseType: !14, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !18, file: !8, line: 3, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!23 = !DILocation(line: 10, column: 12, scope: !11)
!24 = !DILocation(line: 10, column: 16, scope: !11)
!25 = !DILocation(line: 10, column: 18, scope: !11)
!26 = !DILocation(line: 11, column: 3, scope: !11)
!27 = !DILocation(line: 12, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !11, file: !8, line: 12, column: 7)
!29 = !DILocation(line: 12, column: 7, scope: !28)
!30 = !DILocation(line: 12, column: 14, scope: !28)
!31 = !DILocation(line: 12, column: 19, scope: !28)
!32 = !DILocation(line: 12, column: 25, scope: !28)
!33 = !DILocation(line: 12, column: 17, scope: !28)
!34 = !DILocation(line: 12, column: 7, scope: !11)
!35 = !DILocation(line: 13, column: 14, scope: !28)
!36 = !DILocation(line: 13, column: 20, scope: !28)
!37 = !DILocation(line: 13, column: 26, scope: !28)
!38 = !DILocation(line: 13, column: 5, scope: !28)
!39 = !DILocation(line: 14, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !11, file: !8, line: 14, column: 7)
!41 = !DILocation(line: 14, column: 7, scope: !40)
!42 = !DILocation(line: 14, column: 7, scope: !11)
!43 = !DILocation(line: 15, column: 14, scope: !40)
!44 = !DILocation(line: 15, column: 20, scope: !40)
!45 = !DILocation(line: 15, column: 5, scope: !40)
!46 = !DILocation(line: 16, column: 12, scope: !11)
!47 = !DILocation(line: 16, column: 3, scope: !11)
!48 = !DILocation(line: 17, column: 1, scope: !11)
