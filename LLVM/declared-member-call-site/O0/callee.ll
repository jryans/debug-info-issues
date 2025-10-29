; ModuleID = '../callee.cpp'
source_filename = "../callee.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z9nonmemberi(i32 noundef %n) #0 !dbg !8 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !13, metadata !DIExpression()), !dbg !14
  %0 = load i32, ptr %n.addr, align 4, !dbg !15
  %1 = load i32, ptr %n.addr, align 4, !dbg !16
  %add = add nsw i32 %0, %1, !dbg !17
  ret i32 %add, !dbg !18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_ZN1S6memberEi(ptr noundef nonnull align 4 dereferenceable(4) %this, i32 noundef %n) #0 align 2 !dbg !19 {
entry:
  %this.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %this.addr, metadata !27, metadata !DIExpression()), !dbg !29
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !30, metadata !DIExpression()), !dbg !31
  %this1 = load ptr, ptr %this.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = load i32, ptr %n.addr, align 4, !dbg !34
  %x = getelementptr inbounds %struct.S, ptr %this1, i32 0, i32 0, !dbg !35
  %1 = load i32, ptr %x, align 4, !dbg !35
  %add = add nsw i32 %0, %1, !dbg !36
  store i32 %add, ptr %result, align 4, !dbg !33
  %2 = load i32, ptr %result, align 4, !dbg !37
  %call = call noundef i32 @_Z9nonmemberi(i32 noundef %2), !dbg !38
  store i32 %call, ptr %result, align 4, !dbg !39
  %3 = load i32, ptr %result, align 4, !dbg !40
  ret i32 %3, !dbg !41
}

attributes #0 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 18.1.0rc (git@github.com:llvm/llvm-project.git 461274b81d8641eab64d494accddc81d7db8a09e)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../callee.cpp", directory: "/home/jryans/Projects/Debug Info/Issues/LLVM/declared-member-call-site/O0", checksumkind: CSK_MD5, checksum: "12b563c057dfdfe7f0a7c1c9874f3213")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 18.1.0rc (git@github.com:llvm/llvm-project.git 461274b81d8641eab64d494accddc81d7db8a09e)"}
!8 = distinct !DISubprogram(name: "nonmember", linkageName: "_Z9nonmemberi", scope: !1, file: !1, line: 1, type: !9, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !12)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{}
!13 = !DILocalVariable(name: "n", arg: 1, scope: !8, file: !1, line: 1, type: !11)
!14 = !DILocation(line: 1, column: 19, scope: !8)
!15 = !DILocation(line: 1, column: 31, scope: !8)
!16 = !DILocation(line: 1, column: 35, scope: !8)
!17 = !DILocation(line: 1, column: 33, scope: !8)
!18 = !DILocation(line: 1, column: 24, scope: !8)
!19 = distinct !DISubprogram(name: "member", linkageName: "_ZN1S6memberEi", scope: !20, file: !1, line: 8, type: !24, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, declaration: !23, retainedNodes: !12)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !1, line: 3, size: 32, flags: DIFlagTypePassByValue, elements: !21, identifier: "_ZTS1S")
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !20, file: !1, line: 4, baseType: !11, size: 32)
!23 = !DISubprogram(name: "member", linkageName: "_ZN1S6memberEi", scope: !20, file: !1, line: 5, type: !24, scopeLine: 5, flags: DIFlagPrototyped, spFlags: 0)
!24 = !DISubroutineType(types: !25)
!25 = !{!11, !26, !11}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!27 = !DILocalVariable(name: "this", arg: 1, scope: !19, type: !28, flags: DIFlagArtificial | DIFlagObjectPointer)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!29 = !DILocation(line: 0, scope: !19)
!30 = !DILocalVariable(name: "n", arg: 2, scope: !19, file: !1, line: 8, type: !11)
!31 = !DILocation(line: 8, column: 19, scope: !19)
!32 = !DILocalVariable(name: "result", scope: !19, file: !1, line: 9, type: !11)
!33 = !DILocation(line: 9, column: 7, scope: !19)
!34 = !DILocation(line: 9, column: 16, scope: !19)
!35 = !DILocation(line: 9, column: 20, scope: !19)
!36 = !DILocation(line: 9, column: 18, scope: !19)
!37 = !DILocation(line: 10, column: 22, scope: !19)
!38 = !DILocation(line: 10, column: 12, scope: !19)
!39 = !DILocation(line: 10, column: 10, scope: !19)
!40 = !DILocation(line: 11, column: 10, scope: !19)
!41 = !DILocation(line: 11, column: 3, scope: !19)
