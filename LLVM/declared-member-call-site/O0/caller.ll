; ModuleID = '../caller.cpp'
source_filename = "../caller.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %s = alloca %struct.S, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata ptr %s, metadata !20, metadata !DIExpression()), !dbg !28
  call void @llvm.memset.p0.i64(ptr align 4 %s, i8 0, i64 4, i1 false), !dbg !28
  call void @llvm.dbg.declare(metadata ptr %a, metadata !29, metadata !DIExpression()), !dbg !30
  %0 = load i32, ptr %argc.addr, align 4, !dbg !31
  %call = call noundef i32 @_ZN1S6memberEi(ptr noundef nonnull align 4 dereferenceable(4) %s, i32 noundef %0), !dbg !32
  store i32 %call, ptr %a, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata ptr %b, metadata !33, metadata !DIExpression()), !dbg !34
  %1 = load i32, ptr %argc.addr, align 4, !dbg !35
  %call1 = call noundef i32 @_Z9nonmemberi(i32 noundef %1), !dbg !36
  store i32 %call1, ptr %b, align 4, !dbg !34
  %2 = load i32, ptr %a, align 4, !dbg !37
  %3 = load i32, ptr %b, align 4, !dbg !38
  %add = add nsw i32 %2, %3, !dbg !39
  ret i32 %add, !dbg !40
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local noundef i32 @_ZN1S6memberEi(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3

declare dso_local noundef i32 @_Z9nonmemberi(i32 noundef) #3

attributes #0 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 18.1.0rc (git@github.com:llvm/llvm-project.git 461274b81d8641eab64d494accddc81d7db8a09e)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../caller.cpp", directory: "/home/jryans/Projects/Debug Info/Issues/LLVM/declared-member-call-site/O0", checksumkind: CSK_MD5, checksum: "78528cf120834b61d35d4848f796a377")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"clang version 18.1.0rc (git@github.com:llvm/llvm-project.git 461274b81d8641eab64d494accddc81d7db8a09e)"}
!8 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !9, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{}
!16 = !DILocalVariable(name: "argc", arg: 1, scope: !8, file: !1, line: 8, type: !11)
!17 = !DILocation(line: 8, column: 14, scope: !8)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !8, file: !1, line: 8, type: !12)
!19 = !DILocation(line: 8, column: 27, scope: !8)
!20 = !DILocalVariable(name: "s", scope: !8, file: !1, line: 9, type: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !1, line: 3, size: 32, flags: DIFlagTypePassByValue, elements: !22, identifier: "_ZTS1S")
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !21, file: !1, line: 4, baseType: !11, size: 32)
!24 = !DISubprogram(name: "member", linkageName: "_ZN1S6memberEi", scope: !21, file: !1, line: 5, type: !25, scopeLine: 5, flags: DIFlagPrototyped, spFlags: 0)
!25 = !DISubroutineType(types: !26)
!26 = !{!11, !27, !11}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!28 = !DILocation(line: 9, column: 12, scope: !8)
!29 = !DILocalVariable(name: "a", scope: !8, file: !1, line: 10, type: !11)
!30 = !DILocation(line: 10, column: 7, scope: !8)
!31 = !DILocation(line: 10, column: 20, scope: !8)
!32 = !DILocation(line: 10, column: 13, scope: !8)
!33 = !DILocalVariable(name: "b", scope: !8, file: !1, line: 11, type: !11)
!34 = !DILocation(line: 11, column: 7, scope: !8)
!35 = !DILocation(line: 11, column: 21, scope: !8)
!36 = !DILocation(line: 11, column: 11, scope: !8)
!37 = !DILocation(line: 12, column: 10, scope: !8)
!38 = !DILocation(line: 12, column: 14, scope: !8)
!39 = !DILocation(line: 12, column: 12, scope: !8)
!40 = !DILocation(line: 12, column: 3, scope: !8)
