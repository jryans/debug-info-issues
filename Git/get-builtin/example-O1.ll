; ModuleID = 'example.c'
source_filename = "example.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.cmd_struct = type { i8*, i32 (i32, i8**, i8*)*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"cmd1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cmd2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cmd3\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cmd4\00", align 1
@commands = global [4 x %struct.cmd_struct] [%struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (i32, i8**, i8*)* null, i32 0 }], align 16, !dbg !0

; Function Attrs: nofree noinline nounwind readonly ssp uwtable
define %struct.cmd_struct* @get_builtin(i8* nocapture readonly %s) local_unnamed_addr #0 !dbg !31 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !36, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata i32 0, metadata !37, metadata !DIExpression()), !dbg !42
  br label %for.body, !dbg !43

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !44
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !37, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !37, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !42
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !45
  br i1 %exitcond.not, label %cleanup1, label %for.body, !dbg !43, !llvm.loop !46

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %retval.08 = phi %struct.cmd_struct* [ undef, %entry ], [ %add.ptr.retval.0, %for.cond ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !37, metadata !DIExpression()), !dbg !42
  %add.ptr = getelementptr inbounds [4 x %struct.cmd_struct], [4 x %struct.cmd_struct]* @commands, i64 0, i64 %indvars.iv, !dbg !50
  call void @llvm.dbg.value(metadata %struct.cmd_struct* %add.ptr, metadata !38, metadata !DIExpression()), !dbg !51
  %cmd = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %add.ptr, i64 0, i32 0, !dbg !52
  %0 = load i8*, i8** %cmd, align 8, !dbg !52, !tbaa !54
  %call = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %s, i8* noundef nonnull dereferenceable(1) %0), !dbg !60
  %tobool.not = icmp eq i32 %call, 0, !dbg !60
  %add.ptr.retval.0 = select i1 %tobool.not, %struct.cmd_struct* %add.ptr, %struct.cmd_struct* %retval.08, !dbg !61
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !37, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !42
  br i1 %tobool.not, label %cleanup1, label %for.cond

cleanup1:                                         ; preds = %for.cond, %for.body
  %retval.2 = phi %struct.cmd_struct* [ %add.ptr.retval.0, %for.body ], [ null, %for.cond ]
  ret %struct.cmd_struct* %retval.2, !dbg !62
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree noinline nounwind readonly ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "commands", scope: !2, file: !3, line: 9, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "example.c", directory: "/Users/jryans/Projects/Malleable/Experiments/Debug Info/Issues/Git/get-builtin")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 768, elements: !21)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmd_struct", file: !3, line: 3, size: 192, elements: !8)
!8 = !{!9, !13, !19}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !7, file: !3, line: 4, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !7, file: !3, line: 5, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !18, !10}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "option", scope: !7, file: !3, line: 6, baseType: !20, size: 32, offset: 128)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !{!22}
!22 = !DISubrange(count: 4)
!23 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 2]}
!24 = !{i32 7, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!31 = distinct !DISubprogram(name: "get_builtin", scope: !3, file: !3, line: 16, type: !32, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !35)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !10}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!35 = !{!36, !37, !38}
!36 = !DILocalVariable(name: "s", arg: 1, scope: !31, file: !3, line: 16, type: !10)
!37 = !DILocalVariable(name: "i", scope: !31, file: !3, line: 18, type: !17)
!38 = !DILocalVariable(name: "p", scope: !39, file: !3, line: 20, type: !34)
!39 = distinct !DILexicalBlock(scope: !40, file: !3, line: 19, column: 27)
!40 = distinct !DILexicalBlock(scope: !41, file: !3, line: 19, column: 3)
!41 = distinct !DILexicalBlock(scope: !31, file: !3, line: 19, column: 3)
!42 = !DILocation(line: 0, scope: !31)
!43 = !DILocation(line: 19, column: 3, scope: !41)
!44 = !DILocation(line: 19, column: 23, scope: !40)
!45 = !DILocation(line: 19, column: 17, scope: !40)
!46 = distinct !{!46, !43, !47, !48, !49}
!47 = !DILocation(line: 23, column: 3, scope: !41)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !DILocation(line: 20, column: 37, scope: !39)
!51 = !DILocation(line: 0, scope: !39)
!52 = !DILocation(line: 21, column: 23, scope: !53)
!53 = distinct !DILexicalBlock(scope: !39, file: !3, line: 21, column: 9)
!54 = !{!55, !56, i64 0}
!55 = !{!"cmd_struct", !56, i64 0, !56, i64 8, !59, i64 16}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!"int", !57, i64 0}
!60 = !DILocation(line: 21, column: 10, scope: !53)
!61 = !DILocation(line: 0, scope: !40)
!62 = !DILocation(line: 25, column: 1, scope: !31)
