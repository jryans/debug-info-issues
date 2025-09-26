; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_fft_offsets_lut = dso_local global [21845 x i16] zeroinitializer, align 16, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.dbg.declare(metadata ptr %n, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 0, ptr %n, align 4, !dbg !25
  call void @fft_lut_init(ptr noundef @ff_fft_offsets_lut, i32 noundef 0, i32 noundef 16, ptr noundef %n), !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal void @fft_lut_init(ptr noundef %table, i32 noundef %off, i32 noundef %size, ptr noundef %index) #0 !dbg !28 {
entry:
  %table.addr = alloca ptr, align 8
  %off.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %index.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 %off, ptr %off.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !37, metadata !DIExpression()), !dbg !38
  store ptr %index, ptr %index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !39, metadata !DIExpression()), !dbg !40
  %0 = load i32, ptr %size.addr, align 4, !dbg !41
  %cmp = icmp slt i32 %0, 16, !dbg !43
  br i1 %cmp, label %if.then, label %if.else, !dbg !44

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %off.addr, align 4, !dbg !45
  %shr = ashr i32 %1, 2, !dbg !47
  %conv = trunc i32 %shr to i16, !dbg !45
  %2 = load ptr, ptr %table.addr, align 8, !dbg !48
  %3 = load ptr, ptr %index.addr, align 8, !dbg !49
  %4 = load i32, ptr %3, align 4, !dbg !50
  %idxprom = sext i32 %4 to i64, !dbg !48
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom, !dbg !48
  store i16 %conv, ptr %arrayidx, align 2, !dbg !51
  %5 = load ptr, ptr %index.addr, align 8, !dbg !52
  %6 = load i32, ptr %5, align 4, !dbg !53
  %inc = add nsw i32 %6, 1, !dbg !53
  store i32 %inc, ptr %5, align 4, !dbg !53
  br label %if.end, !dbg !54

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %table.addr, align 8, !dbg !55
  %8 = load i32, ptr %off.addr, align 4, !dbg !57
  %9 = load i32, ptr %size.addr, align 4, !dbg !58
  %shr1 = ashr i32 %9, 1, !dbg !59
  %10 = load ptr, ptr %index.addr, align 8, !dbg !60
  call void @fft_lut_init(ptr noundef %7, i32 noundef %8, i32 noundef %shr1, ptr noundef %10), !dbg !61
  %11 = load ptr, ptr %table.addr, align 8, !dbg !62
  %12 = load i32, ptr %off.addr, align 4, !dbg !63
  %13 = load i32, ptr %size.addr, align 4, !dbg !64
  %shr2 = ashr i32 %13, 1, !dbg !65
  %add = add nsw i32 %12, %shr2, !dbg !66
  %14 = load i32, ptr %size.addr, align 4, !dbg !67
  %shr3 = ashr i32 %14, 2, !dbg !68
  %15 = load ptr, ptr %index.addr, align 8, !dbg !69
  call void @fft_lut_init(ptr noundef %11, i32 noundef %add, i32 noundef %shr3, ptr noundef %15), !dbg !70
  %16 = load ptr, ptr %table.addr, align 8, !dbg !71
  %17 = load i32, ptr %off.addr, align 4, !dbg !72
  %18 = load i32, ptr %size.addr, align 4, !dbg !73
  %shr4 = ashr i32 %18, 2, !dbg !74
  %mul = mul nsw i32 3, %shr4, !dbg !75
  %add5 = add nsw i32 %17, %mul, !dbg !76
  %19 = load i32, ptr %size.addr, align 4, !dbg !77
  %shr6 = ashr i32 %19, 2, !dbg !78
  %20 = load ptr, ptr %index.addr, align 8, !dbg !79
  call void @fft_lut_init(ptr noundef %16, i32 noundef %add5, i32 noundef %shr6, ptr noundef %20), !dbg !80
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !81
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ff_fft_offsets_lut", scope: !2, file: !3, line: 3, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.1.0rc (git@github.com:llvm/llvm-project.git 461274b81d8641eab64d494accddc81d7db8a09e)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "example.c", directory: "/home/jryans/Projects/Debug Info/Issues/interesting/lut-recursive", checksumkind: CSK_MD5, checksum: "1dc73fd8074065ae7146d1716718129f")
!4 = !{!0}
!5 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 349520, elements: !11)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 25, baseType: !8)
!7 = !DIFile(filename: "/nix/store/81awch8mhqanda1vy0c09bflgra4cxh0-glibc-2.40-66-dev/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !9, line: 40, baseType: !10)
!9 = !DIFile(filename: "/nix/store/81awch8mhqanda1vy0c09bflgra4cxh0-glibc-2.40-66-dev/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!10 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!11 = !{!12}
!12 = !DISubrange(count: 21845)
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 18.1.0rc (git@github.com:llvm/llvm-project.git 461274b81d8641eab64d494accddc81d7db8a09e)"}
!19 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 16, type: !20, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!20 = !DISubroutineType(types: !21)
!21 = !{!22}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{}
!24 = !DILocalVariable(name: "n", scope: !19, file: !3, line: 17, type: !22)
!25 = !DILocation(line: 17, column: 7, scope: !19)
!26 = !DILocation(line: 18, column: 3, scope: !19)
!27 = !DILocation(line: 19, column: 3, scope: !19)
!28 = distinct !DISubprogram(name: "fft_lut_init", scope: !3, file: !3, line: 5, type: !29, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !23)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !22, !22, !32}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!33 = !DILocalVariable(name: "table", arg: 1, scope: !28, file: !3, line: 5, type: !31)
!34 = !DILocation(line: 5, column: 36, scope: !28)
!35 = !DILocalVariable(name: "off", arg: 2, scope: !28, file: !3, line: 5, type: !22)
!36 = !DILocation(line: 5, column: 47, scope: !28)
!37 = !DILocalVariable(name: "size", arg: 3, scope: !28, file: !3, line: 5, type: !22)
!38 = !DILocation(line: 5, column: 56, scope: !28)
!39 = !DILocalVariable(name: "index", arg: 4, scope: !28, file: !3, line: 5, type: !32)
!40 = !DILocation(line: 5, column: 67, scope: !28)
!41 = !DILocation(line: 6, column: 7, scope: !42)
!42 = distinct !DILexicalBlock(scope: !28, file: !3, line: 6, column: 7)
!43 = !DILocation(line: 6, column: 12, scope: !42)
!44 = !DILocation(line: 6, column: 7, scope: !28)
!45 = !DILocation(line: 7, column: 21, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !3, line: 6, column: 18)
!47 = !DILocation(line: 7, column: 25, scope: !46)
!48 = !DILocation(line: 7, column: 5, scope: !46)
!49 = !DILocation(line: 7, column: 12, scope: !46)
!50 = !DILocation(line: 7, column: 11, scope: !46)
!51 = !DILocation(line: 7, column: 19, scope: !46)
!52 = !DILocation(line: 8, column: 7, scope: !46)
!53 = !DILocation(line: 8, column: 13, scope: !46)
!54 = !DILocation(line: 9, column: 3, scope: !46)
!55 = !DILocation(line: 10, column: 18, scope: !56)
!56 = distinct !DILexicalBlock(scope: !42, file: !3, line: 9, column: 10)
!57 = !DILocation(line: 10, column: 25, scope: !56)
!58 = !DILocation(line: 10, column: 30, scope: !56)
!59 = !DILocation(line: 10, column: 35, scope: !56)
!60 = !DILocation(line: 10, column: 41, scope: !56)
!61 = !DILocation(line: 10, column: 5, scope: !56)
!62 = !DILocation(line: 11, column: 18, scope: !56)
!63 = !DILocation(line: 11, column: 25, scope: !56)
!64 = !DILocation(line: 11, column: 32, scope: !56)
!65 = !DILocation(line: 11, column: 37, scope: !56)
!66 = !DILocation(line: 11, column: 29, scope: !56)
!67 = !DILocation(line: 11, column: 44, scope: !56)
!68 = !DILocation(line: 11, column: 49, scope: !56)
!69 = !DILocation(line: 11, column: 55, scope: !56)
!70 = !DILocation(line: 11, column: 5, scope: !56)
!71 = !DILocation(line: 12, column: 18, scope: !56)
!72 = !DILocation(line: 12, column: 25, scope: !56)
!73 = !DILocation(line: 12, column: 36, scope: !56)
!74 = !DILocation(line: 12, column: 41, scope: !56)
!75 = !DILocation(line: 12, column: 33, scope: !56)
!76 = !DILocation(line: 12, column: 29, scope: !56)
!77 = !DILocation(line: 12, column: 48, scope: !56)
!78 = !DILocation(line: 12, column: 53, scope: !56)
!79 = !DILocation(line: 12, column: 59, scope: !56)
!80 = !DILocation(line: 12, column: 5, scope: !56)
!81 = !DILocation(line: 14, column: 1, scope: !28)
