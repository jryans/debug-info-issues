; ModuleID = '/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023520-15766-grjhv8.ioqyl/example.c' http://localhost:10240/z/5hnoPG
source_filename = "/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023520-15766-grjhv8.ioqyl/example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.18.0"

@a = common local_unnamed_addr global i8 0, align 1, !dbg !0
@b = common local_unnamed_addr global i8 0, align 1, !dbg !6

; Function Attrs: nofree noinline norecurse nounwind ssp uwtable
define void @example() local_unnamed_addr #0 !dbg !15 {
entry:
  %0 = load i8, i8* @a, align 1, !dbg !22, !tbaa !23
  %dec = add i8 %0, -1, !dbg !22
  store i8 %dec, i8* @a, align 1, !dbg !22, !tbaa !23
  call void @llvm.dbg.value(metadata i32 undef, metadata !19, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32 -8, metadata !21, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32 undef, metadata !21, metadata !DIExpression()), !dbg !26
  store i8 0, i8* @b, align 1, !dbg !27, !tbaa !23
  ret void, !dbg !28
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 1, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2de23c8364babb49fe39d81048cd304a5ac2934e)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023520-15766-grjhv8.ioqyl/example.c", directory: "/private/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023520-15766-grjhv8.ioqyl")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 1, type: !9, isLocal: false, isDefinition: true)
!8 = !DIFile(filename: "/var/folders/j6/jhbppx_x1050lwg8bmjxkt240000gp/T/compiler-explorer-compiler2023520-15766-grjhv8.ioqyl/example.c", directory: "")
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{!"clang version 10.0.0 (git@github.com:llvm/llvm-project.git 2de23c8364babb49fe39d81048cd304a5ac2934e)"}
!15 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 2, type: !16, scopeLine: 2, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !{!19, !21}
!19 = !DILocalVariable(name: "c", scope: !15, file: !8, line: 3, type: !20)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocalVariable(name: "l_1240", scope: !15, file: !8, line: 3, type: !20)
!22 = !DILocation(line: 3, column: 11, scope: !15)
!23 = !{!24, !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 0, scope: !15)
!27 = !DILocation(line: 5, column: 10, scope: !15)
!28 = !DILocation(line: 6, column: 1, scope: !15)
