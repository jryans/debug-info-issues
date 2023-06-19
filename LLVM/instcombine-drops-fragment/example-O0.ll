; ModuleID = '/app/example.c' https://godbolt.org/z/aKdf34sbx
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bees = type { i32, i32 }

@global = dso_local global i32 0, align 4, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(i64 %eyelids.coerce) #0 !dbg !12 {
entry:
  %retval = alloca %struct.bees, align 4
  %eyelids = alloca %struct.bees, align 4
  %bar = alloca i32, align 4
  %0 = bitcast %struct.bees* %eyelids to i64*
  store i64 %eyelids.coerce, i64* %0, align 4
  call void @llvm.dbg.declare(metadata %struct.bees* %eyelids, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 1, i32* @global, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %bar, metadata !22, metadata !DIExpression()), !dbg !23
  %a = getelementptr inbounds %struct.bees, %struct.bees* %eyelids, i32 0, i32 0, !dbg !24
  %1 = load i32, i32* %a, align 4, !dbg !24
  %b = getelementptr inbounds %struct.bees, %struct.bees* %eyelids, i32 0, i32 1, !dbg !25
  %2 = load i32, i32* %b, align 4, !dbg !25
  %add = add nsw i32 %1, %2, !dbg !26
  store i32 %add, i32* %bar, align 4, !dbg !23
  %3 = bitcast %struct.bees* %retval to i8*, !dbg !27
  %4 = bitcast %struct.bees* %eyelids to i8*, !dbg !27
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 8, i1 false), !dbg !27
  %5 = bitcast %struct.bees* %retval to i64*, !dbg !28
  %6 = load i64, i64* %5, align 4, !dbg !28
  ret i64 %6, !dbg !28
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "global", scope: !2, file: !6, line: 6, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.0 (tags/RELEASE_900/final 372344)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "/app/example.c", directory: "/app")
!4 = !{}
!5 = !{!0}
!6 = !DIFile(filename: "example.c", directory: "/app")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 9.0.0 (tags/RELEASE_900/final 372344)"}
!12 = distinct !DISubprogram(name: "foo", scope: !6, file: !6, line: 8, type: !13, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15}
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bees", file: !6, line: 1, size: 64, elements: !16)
!16 = !{!17, !18}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !15, file: !6, line: 2, baseType: !7, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !15, file: !6, line: 3, baseType: !7, size: 32, offset: 32)
!19 = !DILocalVariable(name: "eyelids", arg: 1, scope: !12, file: !6, line: 8, type: !15)
!20 = !DILocation(line: 8, column: 29, scope: !12)
!21 = !DILocation(line: 9, column: 10, scope: !12)
!22 = !DILocalVariable(name: "bar", scope: !12, file: !6, line: 10, type: !7)
!23 = !DILocation(line: 10, column: 7, scope: !12)
!24 = !DILocation(line: 10, column: 21, scope: !12)
!25 = !DILocation(line: 10, column: 33, scope: !12)
!26 = !DILocation(line: 10, column: 23, scope: !12)
!27 = !DILocation(line: 11, column: 10, scope: !12)
!28 = !DILocation(line: 11, column: 3, scope: !12)
