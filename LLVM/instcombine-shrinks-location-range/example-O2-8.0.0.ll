; ModuleID = '/app/example.cpp'
source_filename = "/app/example.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.trains = type { i32, i32, i32, i32 }

$_ZN6trainsC2Ev = comdat any

; Function Attrs: alwaysinline uwtable
define dso_local nonnull %class.trains* @_Z5allocv() local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !253 {
entry:
  %foo = alloca i32, align 4
  %foo.0.sroa_cast4 = bitcast i32* %foo to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %foo.0.sroa_cast4), !dbg !275
  call void @llvm.dbg.declare(metadata i32* %foo, metadata !273, metadata !DIExpression()), !dbg !276
  store volatile i32 0, i32* %foo, align 4, !dbg !276, !tbaa !277
  %call = tail call i8* @_Znwm(i64 16) #7, !dbg !281
  %0 = bitcast i8* %call to %class.trains*, !dbg !281
  tail call void @_ZN6trainsC2Ev(%class.trains* nonnull %0), !dbg !282
  call void @llvm.dbg.value(metadata %class.trains* %0, metadata !274, metadata !DIExpression()), !dbg !283
  %foo.0.foo.0. = load volatile i32, i32* %foo, align 4, !dbg !284, !tbaa !277
  %cmp = icmp eq i32 %foo.0.foo.0., 0, !dbg !286
  br i1 %cmp, label %if.end, label %if.then, !dbg !287

if.then:                                          ; preds = %entry
  tail call void @abort() #8, !dbg !288
  unreachable, !dbg !288

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %foo.0.sroa_cast4), !dbg !289
  ret %class.trains* %0, !dbg !290
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nobuiltin
declare dso_local noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #3

; Function Attrs: noinline norecurse nounwind uwtable
define linkonce_odr dso_local void @_ZN6trainsC2Ev(%class.trains* %this) unnamed_addr #4 comdat align 2 !dbg !291 {
entry:
  call void @llvm.dbg.value(metadata %class.trains* %this, metadata !293, metadata !DIExpression()), !dbg !294
  %foo = getelementptr inbounds %class.trains, %class.trains* %this, i64 0, i32 0, !dbg !295
  store i32 1, i32* %foo, align 4, !dbg !297, !tbaa !298
  %bar = getelementptr inbounds %class.trains, %class.trains* %this, i64 0, i32 1, !dbg !300
  store i32 2, i32* %bar, align 4, !dbg !301, !tbaa !302
  %baz = getelementptr inbounds %class.trains, %class.trains* %this, i64 0, i32 2, !dbg !303
  store volatile i32 3, i32* %baz, align 4, !dbg !304, !tbaa !305
  %qux = getelementptr inbounds %class.trains, %class.trains* %this, i64 0, i32 3, !dbg !306
  store volatile i32 4, i32* %qux, align 4, !dbg !307, !tbaa !308
  ret void, !dbg !309
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
declare dso_local void @abort() local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() local_unnamed_addr #6 personality i32 (...)* @__gxx_personality_v0 !dbg !310 {
entry:
  %quux.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %quux.i, metadata !315, metadata !DIExpression()), !dbg !319
  %foo.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %foo.i, metadata !273, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 0, metadata !312, metadata !DIExpression()), !dbg !324
  %foo.i.0.sroa_cast = bitcast i32* %foo.i to i8*, !dbg !325
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %foo.i.0.sroa_cast), !dbg !325
  store volatile i32 0, i32* %foo.i, align 4, !dbg !322, !tbaa !277
  %call.i = tail call i8* @_Znwm(i64 16) #7, !dbg !326
  %0 = bitcast i8* %call.i to %class.trains*, !dbg !326
  tail call void @_ZN6trainsC2Ev(%class.trains* nonnull %0), !dbg !327
  call void @llvm.dbg.value(metadata %class.trains* %0, metadata !274, metadata !DIExpression()), !dbg !328
  %foo.i.0.foo.0.foo.0..i = load volatile i32, i32* %foo.i, align 4, !dbg !329, !tbaa !277
  %cmp.i = icmp eq i32 %foo.i.0.foo.0.foo.0..i, 0, !dbg !330
  br i1 %cmp.i, label %if.then, label %if.then.i, !dbg !331

if.then.i:                                        ; preds = %entry
  tail call void @abort() #8, !dbg !332
  unreachable, !dbg !332

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %foo.i.0.sroa_cast), !dbg !333
  call void @llvm.dbg.value(metadata %class.trains* %0, metadata !313, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata %class.trains* %0, metadata !318, metadata !DIExpression()) #9, !dbg !335
  %quux.i.0.sroa_cast = bitcast i32* %quux.i to i8*, !dbg !336
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %quux.i.0.sroa_cast), !dbg !336
  %foo.i5 = bitcast i8* %call.i to i32*, !dbg !337
  %1 = load i32, i32* %foo.i5, align 4, !dbg !337, !tbaa !298
  %bar.i = getelementptr inbounds i8, i8* %call.i, i64 4, !dbg !338
  %2 = bitcast i8* %bar.i to i32*, !dbg !338
  %3 = load i32, i32* %2, align 4, !dbg !338, !tbaa !302
  %add.i = add nsw i32 %3, %1, !dbg !339
  store volatile i32 %add.i, i32* %quux.i, align 4, !dbg !319, !tbaa !277
  %quux.i.0.quux.0.quux.0..i = load volatile i32, i32* %quux.i, align 4, !dbg !340, !tbaa !277
  %cmp.i6 = icmp sgt i32 %quux.i.0.quux.0.quux.0..i, 0, !dbg !342
  br i1 %cmp.i6, label %if.then.i7, label %if.else.i, !dbg !343

if.then.i7:                                       ; preds = %if.then
  %baz.i = getelementptr inbounds i8, i8* %call.i, i64 8, !dbg !344
  %4 = bitcast i8* %baz.i to i32*, !dbg !344
  %5 = load volatile i32, i32* %4, align 4, !dbg !344, !tbaa !305
  %qux.i = getelementptr inbounds i8, i8* %call.i, i64 12, !dbg !345
  %6 = bitcast i8* %qux.i to i32*, !dbg !345
  %7 = load volatile i32, i32* %6, align 4, !dbg !345, !tbaa !308
  %or.i = or i32 %7, %5, !dbg !346
  %and.i = and i32 %or.i, 11184810, !dbg !347
  %rem.i = urem i32 %and.i, 199, !dbg !348
  br label %if.end, !dbg !349

if.else.i:                                        ; preds = %if.then
  %quux.i.0.quux.0.quux.0.7.i = load volatile i32, i32* %quux.i, align 4, !dbg !350, !tbaa !277
  %cmp2.i = icmp sgt i32 %quux.i.0.quux.0.quux.0.7.i, 10000, !dbg !353
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i, !dbg !354

if.then3.i:                                       ; preds = %if.else.i
  tail call void @abort() #8, !dbg !355
  unreachable, !dbg !355

if.end.i:                                         ; preds = %if.else.i
  %mul.i = mul nsw i32 %3, %1, !dbg !356
  %rem6.i = srem i32 %mul.i, 200, !dbg !357
  br label %if.end, !dbg !358

if.end:                                           ; preds = %if.end.i, %if.then.i7
  %retval.0.i = phi i32 [ %rem.i, %if.then.i7 ], [ %rem6.i, %if.end.i ], !dbg !359
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %quux.i.0.sroa_cast), !dbg !360
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !312, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !312, metadata !DIExpression()), !dbg !324
  ret i32 %retval.0.i, !dbg !361
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { alwaysinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { builtin }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!249, !250, !251}
!llvm.ident = !{!252}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final 356655)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, imports: !3, nameTableKind: None)
!1 = !DIFile(filename: "/app/example.cpp", directory: "/app")
!2 = !{}
!3 = !{!4, !12, !16, !23, !27, !32, !34, !42, !46, !50, !64, !68, !72, !76, !80, !85, !89, !93, !97, !101, !109, !113, !117, !119, !123, !127, !132, !138, !142, !146, !148, !156, !160, !168, !170, !174, !178, !182, !186, !191, !196, !201, !202, !203, !204, !206, !207, !208, !209, !210, !211, !212, !214, !215, !216, !217, !218, !219, !220, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!4 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !6, file: !11, line: 52)
!5 = !DINamespace(name: "std", scope: null)
!6 = !DISubprogram(name: "abs", scope: !7, file: !7, line: 840, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIFile(filename: "/opt/compiler-explorer/gcc-8.3.0/lib/gcc/x86_64-linux-gnu/8.3.0/../../../../include/c++/8.3.0/bits/std_abs.h", directory: "")
!12 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !13, file: !15, line: 127)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !7, line: 62, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!15 = !DIFile(filename: "/opt/compiler-explorer/gcc-8.3.0/lib/gcc/x86_64-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cstdlib", directory: "")
!16 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !17, file: !15, line: 128)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !7, line: 70, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 66, size: 128, flags: DIFlagTypePassByValue | DIFlagTrivial, elements: !19, identifier: "_ZTS6ldiv_t")
!19 = !{!20, !22}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !18, file: !7, line: 68, baseType: !21, size: 64)
!21 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !18, file: !7, line: 69, baseType: !21, size: 64, offset: 64)
!23 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !24, file: !15, line: 130)
!24 = !DISubprogram(name: "abort", scope: !7, file: !7, line: 591, type: !25, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!25 = !DISubroutineType(types: !26)
!26 = !{null}
!27 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !28, file: !15, line: 134)
!28 = !DISubprogram(name: "atexit", scope: !7, file: !7, line: 595, type: !29, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!29 = !DISubroutineType(types: !30)
!30 = !{!10, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!32 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !33, file: !15, line: 137)
!33 = !DISubprogram(name: "at_quick_exit", scope: !7, file: !7, line: 600, type: !29, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!34 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !35, file: !15, line: 140)
!35 = !DISubprogram(name: "atof", scope: !7, file: !7, line: 101, type: !36, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !39}
!38 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !43, file: !15, line: 141)
!43 = !DISubprogram(name: "atoi", scope: !7, file: !7, line: 104, type: !44, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!44 = !DISubroutineType(types: !45)
!45 = !{!10, !39}
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !47, file: !15, line: 142)
!47 = !DISubprogram(name: "atol", scope: !7, file: !7, line: 107, type: !48, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!48 = !DISubroutineType(types: !49)
!49 = !{!21, !39}
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !51, file: !15, line: 143)
!51 = !DISubprogram(name: "bsearch", scope: !7, file: !7, line: 820, type: !52, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !55, !55, !57, !57, !60}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 62, baseType: !59)
!58 = !DIFile(filename: "/opt/compiler-explorer/clang-8.0.0/lib/clang/8.0.0/include/stddef.h", directory: "")
!59 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !7, line: 808, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!10, !55, !55}
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !65, file: !15, line: 144)
!65 = !DISubprogram(name: "calloc", scope: !7, file: !7, line: 542, type: !66, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!66 = !DISubroutineType(types: !67)
!67 = !{!54, !57, !57}
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !69, file: !15, line: 145)
!69 = !DISubprogram(name: "div", scope: !7, file: !7, line: 852, type: !70, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!70 = !DISubroutineType(types: !71)
!71 = !{!13, !10, !10}
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !73, file: !15, line: 146)
!73 = !DISubprogram(name: "exit", scope: !7, file: !7, line: 617, type: !74, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !10}
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !77, file: !15, line: 147)
!77 = !DISubprogram(name: "free", scope: !7, file: !7, line: 565, type: !78, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !54}
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !81, file: !15, line: 148)
!81 = !DISubprogram(name: "getenv", scope: !7, file: !7, line: 634, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !39}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !86, file: !15, line: 149)
!86 = !DISubprogram(name: "labs", scope: !7, file: !7, line: 841, type: !87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!87 = !DISubroutineType(types: !88)
!88 = !{!21, !21}
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !90, file: !15, line: 150)
!90 = !DISubprogram(name: "ldiv", scope: !7, file: !7, line: 854, type: !91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!91 = !DISubroutineType(types: !92)
!92 = !{!17, !21, !21}
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !94, file: !15, line: 151)
!94 = !DISubprogram(name: "malloc", scope: !7, file: !7, line: 539, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!95 = !DISubroutineType(types: !96)
!96 = !{!54, !57}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !98, file: !15, line: 153)
!98 = !DISubprogram(name: "mblen", scope: !7, file: !7, line: 922, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!99 = !DISubroutineType(types: !100)
!100 = !{!10, !39, !57}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !102, file: !15, line: 154)
!102 = !DISubprogram(name: "mbstowcs", scope: !7, file: !7, line: 933, type: !103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DISubroutineType(types: !104)
!104 = !{!57, !105, !108, !57}
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !110, file: !15, line: 155)
!110 = !DISubprogram(name: "mbtowc", scope: !7, file: !7, line: 925, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!111 = !DISubroutineType(types: !112)
!112 = !{!10, !105, !108, !57}
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !114, file: !15, line: 157)
!114 = !DISubprogram(name: "qsort", scope: !7, file: !7, line: 830, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !54, !57, !57, !60}
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !118, file: !15, line: 160)
!118 = !DISubprogram(name: "quick_exit", scope: !7, file: !7, line: 623, type: !74, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !120, file: !15, line: 163)
!120 = !DISubprogram(name: "rand", scope: !7, file: !7, line: 453, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DISubroutineType(types: !122)
!122 = !{!10}
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !124, file: !15, line: 164)
!124 = !DISubprogram(name: "realloc", scope: !7, file: !7, line: 550, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!125 = !DISubroutineType(types: !126)
!126 = !{!54, !54, !57}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !128, file: !15, line: 165)
!128 = !DISubprogram(name: "srand", scope: !7, file: !7, line: 455, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !131}
!131 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !133, file: !15, line: 166)
!133 = !DISubprogram(name: "strtod", scope: !7, file: !7, line: 117, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubroutineType(types: !135)
!135 = !{!38, !108, !136}
!136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !139, file: !15, line: 167)
!139 = !DISubprogram(name: "strtol", scope: !7, file: !7, line: 176, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!140 = !DISubroutineType(types: !141)
!141 = !{!21, !108, !136, !10}
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !143, file: !15, line: 168)
!143 = !DISubprogram(name: "strtoul", scope: !7, file: !7, line: 180, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!144 = !DISubroutineType(types: !145)
!145 = !{!59, !108, !136, !10}
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !147, file: !15, line: 169)
!147 = !DISubprogram(name: "system", scope: !7, file: !7, line: 784, type: !44, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !149, file: !15, line: 171)
!149 = !DISubprogram(name: "wcstombs", scope: !7, file: !7, line: 936, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!150 = !DISubroutineType(types: !151)
!151 = !{!57, !152, !153, !57}
!152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !157, file: !15, line: 172)
!157 = !DISubprogram(name: "wctomb", scope: !7, file: !7, line: 929, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!158 = !DISubroutineType(types: !159)
!159 = !{!10, !84, !107}
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !162, file: !15, line: 200)
!161 = !DINamespace(name: "__gnu_cxx", scope: null)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !7, line: 80, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 76, size: 128, flags: DIFlagTypePassByValue | DIFlagTrivial, elements: !164, identifier: "_ZTS7lldiv_t")
!164 = !{!165, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !163, file: !7, line: 78, baseType: !166, size: 64)
!166 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !163, file: !7, line: 79, baseType: !166, size: 64, offset: 64)
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !169, file: !15, line: 206)
!169 = !DISubprogram(name: "_Exit", scope: !7, file: !7, line: 629, type: !74, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !171, file: !15, line: 210)
!171 = !DISubprogram(name: "llabs", scope: !7, file: !7, line: 844, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!172 = !DISubroutineType(types: !173)
!173 = !{!166, !166}
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !175, file: !15, line: 216)
!175 = !DISubprogram(name: "lldiv", scope: !7, file: !7, line: 858, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!176 = !DISubroutineType(types: !177)
!177 = !{!162, !166, !166}
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !179, file: !15, line: 227)
!179 = !DISubprogram(name: "atoll", scope: !7, file: !7, line: 112, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!180 = !DISubroutineType(types: !181)
!181 = !{!166, !39}
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !183, file: !15, line: 228)
!183 = !DISubprogram(name: "strtoll", scope: !7, file: !7, line: 200, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!184 = !DISubroutineType(types: !185)
!185 = !{!166, !108, !136, !10}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !187, file: !15, line: 229)
!187 = !DISubprogram(name: "strtoull", scope: !7, file: !7, line: 205, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !108, !136, !10}
!190 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !192, file: !15, line: 231)
!192 = !DISubprogram(name: "strtof", scope: !7, file: !7, line: 123, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubroutineType(types: !194)
!194 = !{!195, !108, !136}
!195 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !161, entity: !197, file: !15, line: 232)
!197 = !DISubprogram(name: "strtold", scope: !7, file: !7, line: 126, type: !198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!198 = !DISubroutineType(types: !199)
!199 = !{!200, !108, !136}
!200 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !162, file: !15, line: 240)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !169, file: !15, line: 242)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !171, file: !15, line: 244)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !205, file: !15, line: 245)
!205 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !161, file: !15, line: 213, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !175, file: !15, line: 246)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !179, file: !15, line: 248)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !192, file: !15, line: 249)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !183, file: !15, line: 250)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !187, file: !15, line: 251)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !5, entity: !197, file: !15, line: 252)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !24, file: !213, line: 38)
!213 = !DIFile(filename: "/opt/compiler-explorer/gcc-8.3.0/lib/gcc/x86_64-linux-gnu/8.3.0/../../../../include/c++/8.3.0/stdlib.h", directory: "")
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !28, file: !213, line: 39)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !73, file: !213, line: 40)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !33, file: !213, line: 43)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !118, file: !213, line: 46)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !13, file: !213, line: 51)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !17, file: !213, line: 52)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !221, file: !213, line: 54)
!221 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !5, file: !11, line: 102, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !224}
!224 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !35, file: !213, line: 55)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !43, file: !213, line: 56)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !47, file: !213, line: 57)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !51, file: !213, line: 58)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !65, file: !213, line: 59)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !205, file: !213, line: 60)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !77, file: !213, line: 61)
!232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !81, file: !213, line: 62)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !86, file: !213, line: 63)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !90, file: !213, line: 64)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !94, file: !213, line: 65)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !98, file: !213, line: 67)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !102, file: !213, line: 68)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !110, file: !213, line: 69)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !114, file: !213, line: 71)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !120, file: !213, line: 72)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !124, file: !213, line: 73)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !128, file: !213, line: 74)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !133, file: !213, line: 75)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !139, file: !213, line: 76)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !143, file: !213, line: 77)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !147, file: !213, line: 78)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !149, file: !213, line: 80)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !157, file: !213, line: 81)
!249 = !{i32 2, !"Dwarf Version", i32 4}
!250 = !{i32 2, !"Debug Info Version", i32 3}
!251 = !{i32 1, !"wchar_size", i32 4}
!252 = !{!"clang version 8.0.0 (tags/RELEASE_800/final 356655)"}
!253 = distinct !DISubprogram(name: "alloc", linkageName: "_Z5allocv", scope: !254, file: !254, line: 28, type: !255, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !272)
!254 = !DIFile(filename: "example.cpp", directory: "/app")
!255 = !DISubroutineType(types: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "trains", file: !254, line: 3, size: 128, flags: DIFlagTypePassByValue, elements: !259, identifier: "_ZTS6trains")
!259 = !{!260, !261, !262, !264, !265, !269}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !258, file: !254, line: 5, baseType: !10, size: 32, flags: DIFlagPublic)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "bar", scope: !258, file: !254, line: 6, baseType: !10, size: 32, offset: 32, flags: DIFlagPublic)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "baz", scope: !258, file: !254, line: 7, baseType: !263, size: 32, offset: 64, flags: DIFlagPublic)
!263 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !10)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "qux", scope: !258, file: !254, line: 8, baseType: !263, size: 32, offset: 96, flags: DIFlagPublic)
!265 = !DISubprogram(name: "trains", scope: !258, file: !254, line: 9, type: !266, scopeLine: 9, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!269 = !DISubprogram(name: "something", linkageName: "_ZN6trains9somethingEv", scope: !258, file: !254, line: 16, type: !270, scopeLine: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!270 = !DISubroutineType(types: !271)
!271 = !{!10, !268}
!272 = !{!273, !274}
!273 = !DILocalVariable(name: "foo", scope: !253, file: !254, line: 29, type: !263)
!274 = !DILocalVariable(name: "p", scope: !253, file: !254, line: 30, type: !257)
!275 = !DILocation(line: 29, column: 3, scope: !253)
!276 = !DILocation(line: 29, column: 16, scope: !253)
!277 = !{!278, !278, i64 0}
!278 = !{!"int", !279, i64 0}
!279 = !{!"omnipotent char", !280, i64 0}
!280 = !{!"Simple C++ TBAA"}
!281 = !DILocation(line: 30, column: 13, scope: !253)
!282 = !DILocation(line: 30, column: 17, scope: !253)
!283 = !DILocation(line: 30, column: 9, scope: !253)
!284 = !DILocation(line: 31, column: 7, scope: !285)
!285 = distinct !DILexicalBlock(scope: !253, file: !254, line: 31, column: 7)
!286 = !DILocation(line: 31, column: 11, scope: !285)
!287 = !DILocation(line: 31, column: 7, scope: !253)
!288 = !DILocation(line: 32, column: 5, scope: !285)
!289 = !DILocation(line: 34, column: 1, scope: !253)
!290 = !DILocation(line: 33, column: 3, scope: !253)
!291 = distinct !DISubprogram(name: "trains", linkageName: "_ZN6trainsC2Ev", scope: !258, file: !254, line: 9, type: !266, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !265, retainedNodes: !292)
!292 = !{!293}
!293 = !DILocalVariable(name: "this", arg: 1, scope: !291, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!294 = !DILocation(line: 0, scope: !291)
!295 = !DILocation(line: 10, column: 5, scope: !296)
!296 = distinct !DILexicalBlock(scope: !291, file: !254, line: 9, column: 12)
!297 = !DILocation(line: 10, column: 9, scope: !296)
!298 = !{!299, !278, i64 0}
!299 = !{!"_ZTS6trains", !278, i64 0, !278, i64 4, !278, i64 8, !278, i64 12}
!300 = !DILocation(line: 11, column: 5, scope: !296)
!301 = !DILocation(line: 11, column: 9, scope: !296)
!302 = !{!299, !278, i64 4}
!303 = !DILocation(line: 12, column: 5, scope: !296)
!304 = !DILocation(line: 12, column: 9, scope: !296)
!305 = !{!299, !278, i64 8}
!306 = !DILocation(line: 13, column: 5, scope: !296)
!307 = !DILocation(line: 13, column: 9, scope: !296)
!308 = !{!299, !278, i64 12}
!309 = !DILocation(line: 14, column: 3, scope: !291)
!310 = distinct !DISubprogram(name: "main", scope: !254, file: !254, line: 36, type: !121, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !311)
!311 = !{!312, !313}
!312 = !DILocalVariable(name: "toreturn", scope: !310, file: !254, line: 37, type: !10)
!313 = !DILocalVariable(name: "xyzzy", scope: !314, file: !254, line: 38, type: !257)
!314 = distinct !DILexicalBlock(scope: !310, file: !254, line: 38, column: 12)
!315 = !DILocalVariable(name: "quux", scope: !316, file: !254, line: 17, type: !263)
!316 = distinct !DISubprogram(name: "something", linkageName: "_ZN6trains9somethingEv", scope: !258, file: !254, line: 16, type: !270, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !269, retainedNodes: !317)
!317 = !{!318, !315}
!318 = !DILocalVariable(name: "this", arg: 1, scope: !316, type: !257, flags: DIFlagArtificial | DIFlagObjectPointer)
!319 = !DILocation(line: 17, column: 18, scope: !316, inlinedAt: !320)
!320 = distinct !DILocation(line: 39, column: 23, scope: !321)
!321 = distinct !DILexicalBlock(scope: !314, file: !254, line: 38, column: 29)
!322 = !DILocation(line: 29, column: 16, scope: !253, inlinedAt: !323)
!323 = distinct !DILocation(line: 38, column: 20, scope: !314)
!324 = !DILocation(line: 37, column: 7, scope: !310)
!325 = !DILocation(line: 29, column: 3, scope: !253, inlinedAt: !323)
!326 = !DILocation(line: 30, column: 13, scope: !253, inlinedAt: !323)
!327 = !DILocation(line: 30, column: 17, scope: !253, inlinedAt: !323)
!328 = !DILocation(line: 30, column: 9, scope: !253, inlinedAt: !323)
!329 = !DILocation(line: 31, column: 7, scope: !285, inlinedAt: !323)
!330 = !DILocation(line: 31, column: 11, scope: !285, inlinedAt: !323)
!331 = !DILocation(line: 31, column: 7, scope: !253, inlinedAt: !323)
!332 = !DILocation(line: 32, column: 5, scope: !285, inlinedAt: !323)
!333 = !DILocation(line: 34, column: 1, scope: !253, inlinedAt: !323)
!334 = !DILocation(line: 38, column: 12, scope: !314)
!335 = !DILocation(line: 0, scope: !316, inlinedAt: !320)
!336 = !DILocation(line: 17, column: 5, scope: !316, inlinedAt: !320)
!337 = !DILocation(line: 17, column: 25, scope: !316, inlinedAt: !320)
!338 = !DILocation(line: 17, column: 31, scope: !316, inlinedAt: !320)
!339 = !DILocation(line: 17, column: 29, scope: !316, inlinedAt: !320)
!340 = !DILocation(line: 18, column: 9, scope: !341, inlinedAt: !320)
!341 = distinct !DILexicalBlock(scope: !316, file: !254, line: 18, column: 9)
!342 = !DILocation(line: 18, column: 14, scope: !341, inlinedAt: !320)
!343 = !DILocation(line: 18, column: 9, scope: !316, inlinedAt: !320)
!344 = !DILocation(line: 19, column: 16, scope: !341, inlinedAt: !320)
!345 = !DILocation(line: 19, column: 22, scope: !341, inlinedAt: !320)
!346 = !DILocation(line: 19, column: 20, scope: !341, inlinedAt: !320)
!347 = !DILocation(line: 19, column: 27, scope: !341, inlinedAt: !320)
!348 = !DILocation(line: 19, column: 39, scope: !341, inlinedAt: !320)
!349 = !DILocation(line: 19, column: 7, scope: !341, inlinedAt: !320)
!350 = !DILocation(line: 21, column: 11, scope: !351, inlinedAt: !320)
!351 = distinct !DILexicalBlock(scope: !352, file: !254, line: 21, column: 11)
!352 = distinct !DILexicalBlock(scope: !341, file: !254, line: 20, column: 10)
!353 = !DILocation(line: 21, column: 16, scope: !351, inlinedAt: !320)
!354 = !DILocation(line: 21, column: 11, scope: !352, inlinedAt: !320)
!355 = !DILocation(line: 22, column: 9, scope: !351, inlinedAt: !320)
!356 = !DILocation(line: 23, column: 19, scope: !352, inlinedAt: !320)
!357 = !DILocation(line: 23, column: 26, scope: !352, inlinedAt: !320)
!358 = !DILocation(line: 23, column: 7, scope: !352, inlinedAt: !320)
!359 = !DILocation(line: 0, scope: !341, inlinedAt: !320)
!360 = !DILocation(line: 25, column: 3, scope: !316, inlinedAt: !320)
!361 = !DILocation(line: 41, column: 3, scope: !310)
