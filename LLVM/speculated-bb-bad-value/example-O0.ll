; ModuleID = 'example.c' ~/Projects/LLVM/llvm/build-release-clang-lldb-7.0.0/bin/clang -g example.c -S -emit-llvm -Xclang -disable-O0-optnone -o example-O0.ll
source_filename = "example.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.17.0"

; Function Attrs: noinline nounwind ssp uwtable
define i32 @example() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %foo = alloca i32, align 4
  %read = alloca i32, align 4
  %read1 = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %foo, metadata !12, metadata !DIExpression()), !dbg !14
  store volatile i32 4, i32* %foo, align 4, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %read, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load volatile i32, i32* %foo, align 4, !dbg !17
  store i32 %0, i32* %read, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %read1, metadata !18, metadata !DIExpression()), !dbg !19
  %1 = load volatile i32, i32* %foo, align 4, !dbg !20
  store i32 %1, i32* %read1, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %result, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %result, align 4, !dbg !22
  %2 = load i32, i32* %read, align 4, !dbg !23
  %cmp = icmp eq i32 %2, 4, !dbg !25
  br i1 %cmp, label %if.then, label %if.else, !dbg !26

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %read1, align 4, !dbg !27
  %add = add nsw i32 %3, 2, !dbg !29
  store i32 %add, i32* %result, align 4, !dbg !30
  br label %if.end, !dbg !31

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %read1, align 4, !dbg !32
  %sub = sub nsw i32 %4, 2, !dbg !34
  store i32 %sub, i32* %result, align 4, !dbg !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %result, align 4, !dbg !36
  ret i32 %5, !dbg !37
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/LLVM/speculated-bb-bad-value")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 7.0.0 "}
!8 = distinct !DISubprogram(name: "example", scope: !1, file: !1, line: 1, type: !9, isLocal: false, isDefinition: true, scopeLine: 1, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "foo", scope: !8, file: !1, line: 2, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!14 = !DILocation(line: 2, column: 16, scope: !8)
!15 = !DILocalVariable(name: "read", scope: !8, file: !1, line: 3, type: !11)
!16 = !DILocation(line: 3, column: 7, scope: !8)
!17 = !DILocation(line: 3, column: 14, scope: !8)
!18 = !DILocalVariable(name: "read1", scope: !8, file: !1, line: 4, type: !11)
!19 = !DILocation(line: 4, column: 7, scope: !8)
!20 = !DILocation(line: 4, column: 15, scope: !8)
!21 = !DILocalVariable(name: "result", scope: !8, file: !1, line: 6, type: !11)
!22 = !DILocation(line: 6, column: 7, scope: !8)
!23 = !DILocation(line: 7, column: 7, scope: !24)
!24 = distinct !DILexicalBlock(scope: !8, file: !1, line: 7, column: 7)
!25 = !DILocation(line: 7, column: 12, scope: !24)
!26 = !DILocation(line: 7, column: 7, scope: !8)
!27 = !DILocation(line: 8, column: 14, scope: !28)
!28 = distinct !DILexicalBlock(scope: !24, file: !1, line: 7, column: 18)
!29 = !DILocation(line: 8, column: 20, scope: !28)
!30 = !DILocation(line: 8, column: 12, scope: !28)
!31 = !DILocation(line: 9, column: 3, scope: !28)
!32 = !DILocation(line: 10, column: 14, scope: !33)
!33 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 10)
!34 = !DILocation(line: 10, column: 20, scope: !33)
!35 = !DILocation(line: 10, column: 12, scope: !33)
!36 = !DILocation(line: 13, column: 10, scope: !8)
!37 = !DILocation(line: 13, column: 3, scope: !8)
