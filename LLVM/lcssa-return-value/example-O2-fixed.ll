; ModuleID = '/app/example.c' https://godbolt.org/z/dscbeTsqK
source_filename = "/app/example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind readnone uwtable
define dso_local i32 @example() local_unnamed_addr #0 !dbg !7 {
entry:
  %foo = alloca [192 x i32], align 16
  %bar = alloca [192 x i32], align 16
  %0 = bitcast [192 x i32]* %foo to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 768, i8* nonnull %0) #3, !dbg !24
  call void @llvm.dbg.declare(metadata [192 x i32]* %foo, metadata !13, metadata !DIExpression()), !dbg !25
  %1 = bitcast [192 x i32]* %bar to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 768, i8* nonnull %1) #3, !dbg !26
  call void @llvm.dbg.declare(metadata [192 x i32]* %bar, metadata !17, metadata !DIExpression()), !dbg !27
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %0, i8 0, i64 768, i1 false), !dbg !28
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %1, i8 1, i64 768, i1 false), !dbg !29
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !30
  br label %vector.body, !dbg !31

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next.1, %vector.body ], !dbg !32
  %2 = getelementptr inbounds [192 x i32], [192 x i32]* %bar, i64 0, i64 %index, !dbg !34
  %3 = bitcast i32* %2 to <4 x i32>*, !dbg !34
  %wide.load = load <4 x i32>, <4 x i32>* %3, align 16, !dbg !34, !tbaa !35
  %4 = getelementptr inbounds i32, i32* %2, i64 4, !dbg !34
  %5 = bitcast i32* %4 to <4 x i32>*, !dbg !34
  %wide.load30 = load <4 x i32>, <4 x i32>* %5, align 16, !dbg !34, !tbaa !35
  %6 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 %index, !dbg !39
  %7 = bitcast i32* %6 to <4 x i32>*, !dbg !40
  %wide.load31 = load <4 x i32>, <4 x i32>* %7, align 16, !dbg !40, !tbaa !35
  %8 = getelementptr inbounds i32, i32* %6, i64 4, !dbg !40
  %9 = bitcast i32* %8 to <4 x i32>*, !dbg !40
  %wide.load32 = load <4 x i32>, <4 x i32>* %9, align 16, !dbg !40, !tbaa !35
  %10 = add nsw <4 x i32> %wide.load31, %wide.load, !dbg !40
  %11 = add nsw <4 x i32> %wide.load32, %wide.load30, !dbg !40
  %12 = bitcast i32* %6 to <4 x i32>*, !dbg !40
  store <4 x i32> %10, <4 x i32>* %12, align 16, !dbg !40, !tbaa !35
  %13 = bitcast i32* %8 to <4 x i32>*, !dbg !40
  store <4 x i32> %11, <4 x i32>* %13, align 16, !dbg !40, !tbaa !35
  %index.next = or i64 %index, 8, !dbg !32
  %14 = getelementptr inbounds [192 x i32], [192 x i32]* %bar, i64 0, i64 %index.next, !dbg !34
  %15 = bitcast i32* %14 to <4 x i32>*, !dbg !34
  %wide.load.1 = load <4 x i32>, <4 x i32>* %15, align 16, !dbg !34, !tbaa !35
  %16 = getelementptr inbounds i32, i32* %14, i64 4, !dbg !34
  %17 = bitcast i32* %16 to <4 x i32>*, !dbg !34
  %wide.load30.1 = load <4 x i32>, <4 x i32>* %17, align 16, !dbg !34, !tbaa !35
  %18 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 %index.next, !dbg !39
  %19 = bitcast i32* %18 to <4 x i32>*, !dbg !40
  %wide.load31.1 = load <4 x i32>, <4 x i32>* %19, align 16, !dbg !40, !tbaa !35
  %20 = getelementptr inbounds i32, i32* %18, i64 4, !dbg !40
  %21 = bitcast i32* %20 to <4 x i32>*, !dbg !40
  %wide.load32.1 = load <4 x i32>, <4 x i32>* %21, align 16, !dbg !40, !tbaa !35
  %22 = add nsw <4 x i32> %wide.load31.1, %wide.load.1, !dbg !40
  %23 = add nsw <4 x i32> %wide.load32.1, %wide.load30.1, !dbg !40
  %24 = bitcast i32* %18 to <4 x i32>*, !dbg !40
  store <4 x i32> %22, <4 x i32>* %24, align 16, !dbg !40, !tbaa !35
  %25 = bitcast i32* %20 to <4 x i32>*, !dbg !40
  store <4 x i32> %23, <4 x i32>* %25, align 16, !dbg !40, !tbaa !35
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !32
  %26 = icmp eq i64 %index.next.1, 192, !dbg !32
  br i1 %26, label %vector.body33, label %vector.body, !dbg !32, !llvm.loop !41

vector.body33:                                    ; preds = %vector.body
  %27 = bitcast [192 x i32]* %foo to <4 x i32>*, !dbg !44
  %wide.load46 = load <4 x i32>, <4 x i32>* %27, align 16, !dbg !44, !tbaa !35
  %28 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 4, !dbg !44
  %29 = bitcast i32* %28 to <4 x i32>*, !dbg !44
  %wide.load47 = load <4 x i32>, <4 x i32>* %29, align 16, !dbg !44, !tbaa !35
  %30 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 8, !dbg !44
  %31 = bitcast i32* %30 to <4 x i32>*, !dbg !44
  %wide.load46.1 = load <4 x i32>, <4 x i32>* %31, align 16, !dbg !44, !tbaa !35
  %32 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 12, !dbg !44
  %33 = bitcast i32* %32 to <4 x i32>*, !dbg !44
  %wide.load47.1 = load <4 x i32>, <4 x i32>* %33, align 16, !dbg !44, !tbaa !35
  %34 = add <4 x i32> %wide.load46.1, %wide.load46, !dbg !46
  %35 = add <4 x i32> %wide.load47.1, %wide.load47, !dbg !46
  %36 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 16, !dbg !44
  %37 = bitcast i32* %36 to <4 x i32>*, !dbg !44
  %wide.load46.2 = load <4 x i32>, <4 x i32>* %37, align 16, !dbg !44, !tbaa !35
  %38 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 20, !dbg !44
  %39 = bitcast i32* %38 to <4 x i32>*, !dbg !44
  %wide.load47.2 = load <4 x i32>, <4 x i32>* %39, align 16, !dbg !44, !tbaa !35
  %40 = add <4 x i32> %wide.load46.2, %34, !dbg !46
  %41 = add <4 x i32> %wide.load47.2, %35, !dbg !46
  %42 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 24, !dbg !44
  %43 = bitcast i32* %42 to <4 x i32>*, !dbg !44
  %wide.load46.3 = load <4 x i32>, <4 x i32>* %43, align 16, !dbg !44, !tbaa !35
  %44 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 28, !dbg !44
  %45 = bitcast i32* %44 to <4 x i32>*, !dbg !44
  %wide.load47.3 = load <4 x i32>, <4 x i32>* %45, align 16, !dbg !44, !tbaa !35
  %46 = add <4 x i32> %wide.load46.3, %40, !dbg !46
  %47 = add <4 x i32> %wide.load47.3, %41, !dbg !46
  %48 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 32, !dbg !44
  %49 = bitcast i32* %48 to <4 x i32>*, !dbg !44
  %wide.load46.4 = load <4 x i32>, <4 x i32>* %49, align 16, !dbg !44, !tbaa !35
  %50 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 36, !dbg !44
  %51 = bitcast i32* %50 to <4 x i32>*, !dbg !44
  %wide.load47.4 = load <4 x i32>, <4 x i32>* %51, align 16, !dbg !44, !tbaa !35
  %52 = add <4 x i32> %wide.load46.4, %46, !dbg !46
  %53 = add <4 x i32> %wide.load47.4, %47, !dbg !46
  %54 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 40, !dbg !44
  %55 = bitcast i32* %54 to <4 x i32>*, !dbg !44
  %wide.load46.5 = load <4 x i32>, <4 x i32>* %55, align 16, !dbg !44, !tbaa !35
  %56 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 44, !dbg !44
  %57 = bitcast i32* %56 to <4 x i32>*, !dbg !44
  %wide.load47.5 = load <4 x i32>, <4 x i32>* %57, align 16, !dbg !44, !tbaa !35
  %58 = add <4 x i32> %wide.load46.5, %52, !dbg !46
  %59 = add <4 x i32> %wide.load47.5, %53, !dbg !46
  %60 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 48, !dbg !44
  %61 = bitcast i32* %60 to <4 x i32>*, !dbg !44
  %wide.load46.6 = load <4 x i32>, <4 x i32>* %61, align 16, !dbg !44, !tbaa !35
  %62 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 52, !dbg !44
  %63 = bitcast i32* %62 to <4 x i32>*, !dbg !44
  %wide.load47.6 = load <4 x i32>, <4 x i32>* %63, align 16, !dbg !44, !tbaa !35
  %64 = add <4 x i32> %wide.load46.6, %58, !dbg !46
  %65 = add <4 x i32> %wide.load47.6, %59, !dbg !46
  %66 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 56, !dbg !44
  %67 = bitcast i32* %66 to <4 x i32>*, !dbg !44
  %wide.load46.7 = load <4 x i32>, <4 x i32>* %67, align 16, !dbg !44, !tbaa !35
  %68 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 60, !dbg !44
  %69 = bitcast i32* %68 to <4 x i32>*, !dbg !44
  %wide.load47.7 = load <4 x i32>, <4 x i32>* %69, align 16, !dbg !44, !tbaa !35
  %70 = add <4 x i32> %wide.load46.7, %64, !dbg !46
  %71 = add <4 x i32> %wide.load47.7, %65, !dbg !46
  %72 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 64, !dbg !44
  %73 = bitcast i32* %72 to <4 x i32>*, !dbg !44
  %wide.load46.8 = load <4 x i32>, <4 x i32>* %73, align 16, !dbg !44, !tbaa !35
  %74 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 68, !dbg !44
  %75 = bitcast i32* %74 to <4 x i32>*, !dbg !44
  %wide.load47.8 = load <4 x i32>, <4 x i32>* %75, align 16, !dbg !44, !tbaa !35
  %76 = add <4 x i32> %wide.load46.8, %70, !dbg !46
  %77 = add <4 x i32> %wide.load47.8, %71, !dbg !46
  %78 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 72, !dbg !44
  %79 = bitcast i32* %78 to <4 x i32>*, !dbg !44
  %wide.load46.9 = load <4 x i32>, <4 x i32>* %79, align 16, !dbg !44, !tbaa !35
  %80 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 76, !dbg !44
  %81 = bitcast i32* %80 to <4 x i32>*, !dbg !44
  %wide.load47.9 = load <4 x i32>, <4 x i32>* %81, align 16, !dbg !44, !tbaa !35
  %82 = add <4 x i32> %wide.load46.9, %76, !dbg !46
  %83 = add <4 x i32> %wide.load47.9, %77, !dbg !46
  %84 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 80, !dbg !44
  %85 = bitcast i32* %84 to <4 x i32>*, !dbg !44
  %wide.load46.10 = load <4 x i32>, <4 x i32>* %85, align 16, !dbg !44, !tbaa !35
  %86 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 84, !dbg !44
  %87 = bitcast i32* %86 to <4 x i32>*, !dbg !44
  %wide.load47.10 = load <4 x i32>, <4 x i32>* %87, align 16, !dbg !44, !tbaa !35
  %88 = add <4 x i32> %wide.load46.10, %82, !dbg !46
  %89 = add <4 x i32> %wide.load47.10, %83, !dbg !46
  %90 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 88, !dbg !44
  %91 = bitcast i32* %90 to <4 x i32>*, !dbg !44
  %wide.load46.11 = load <4 x i32>, <4 x i32>* %91, align 16, !dbg !44, !tbaa !35
  %92 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 92, !dbg !44
  %93 = bitcast i32* %92 to <4 x i32>*, !dbg !44
  %wide.load47.11 = load <4 x i32>, <4 x i32>* %93, align 16, !dbg !44, !tbaa !35
  %94 = add <4 x i32> %wide.load46.11, %88, !dbg !46
  %95 = add <4 x i32> %wide.load47.11, %89, !dbg !46
  %96 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 96, !dbg !44
  %97 = bitcast i32* %96 to <4 x i32>*, !dbg !44
  %wide.load46.12 = load <4 x i32>, <4 x i32>* %97, align 16, !dbg !44, !tbaa !35
  %98 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 100, !dbg !44
  %99 = bitcast i32* %98 to <4 x i32>*, !dbg !44
  %wide.load47.12 = load <4 x i32>, <4 x i32>* %99, align 16, !dbg !44, !tbaa !35
  %100 = add <4 x i32> %wide.load46.12, %94, !dbg !46
  %101 = add <4 x i32> %wide.load47.12, %95, !dbg !46
  %102 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 104, !dbg !44
  %103 = bitcast i32* %102 to <4 x i32>*, !dbg !44
  %wide.load46.13 = load <4 x i32>, <4 x i32>* %103, align 16, !dbg !44, !tbaa !35
  %104 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 108, !dbg !44
  %105 = bitcast i32* %104 to <4 x i32>*, !dbg !44
  %wide.load47.13 = load <4 x i32>, <4 x i32>* %105, align 16, !dbg !44, !tbaa !35
  %106 = add <4 x i32> %wide.load46.13, %100, !dbg !46
  %107 = add <4 x i32> %wide.load47.13, %101, !dbg !46
  %108 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 112, !dbg !44
  %109 = bitcast i32* %108 to <4 x i32>*, !dbg !44
  %wide.load46.14 = load <4 x i32>, <4 x i32>* %109, align 16, !dbg !44, !tbaa !35
  %110 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 116, !dbg !44
  %111 = bitcast i32* %110 to <4 x i32>*, !dbg !44
  %wide.load47.14 = load <4 x i32>, <4 x i32>* %111, align 16, !dbg !44, !tbaa !35
  %112 = add <4 x i32> %wide.load46.14, %106, !dbg !46
  %113 = add <4 x i32> %wide.load47.14, %107, !dbg !46
  %114 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 120, !dbg !44
  %115 = bitcast i32* %114 to <4 x i32>*, !dbg !44
  %wide.load46.15 = load <4 x i32>, <4 x i32>* %115, align 16, !dbg !44, !tbaa !35
  %116 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 124, !dbg !44
  %117 = bitcast i32* %116 to <4 x i32>*, !dbg !44
  %wide.load47.15 = load <4 x i32>, <4 x i32>* %117, align 16, !dbg !44, !tbaa !35
  %118 = add <4 x i32> %wide.load46.15, %112, !dbg !46
  %119 = add <4 x i32> %wide.load47.15, %113, !dbg !46
  %120 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 128, !dbg !44
  %121 = bitcast i32* %120 to <4 x i32>*, !dbg !44
  %wide.load46.16 = load <4 x i32>, <4 x i32>* %121, align 16, !dbg !44, !tbaa !35
  %122 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 132, !dbg !44
  %123 = bitcast i32* %122 to <4 x i32>*, !dbg !44
  %wide.load47.16 = load <4 x i32>, <4 x i32>* %123, align 16, !dbg !44, !tbaa !35
  %124 = add <4 x i32> %wide.load46.16, %118, !dbg !46
  %125 = add <4 x i32> %wide.load47.16, %119, !dbg !46
  %126 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 136, !dbg !44
  %127 = bitcast i32* %126 to <4 x i32>*, !dbg !44
  %wide.load46.17 = load <4 x i32>, <4 x i32>* %127, align 16, !dbg !44, !tbaa !35
  %128 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 140, !dbg !44
  %129 = bitcast i32* %128 to <4 x i32>*, !dbg !44
  %wide.load47.17 = load <4 x i32>, <4 x i32>* %129, align 16, !dbg !44, !tbaa !35
  %130 = add <4 x i32> %wide.load46.17, %124, !dbg !46
  %131 = add <4 x i32> %wide.load47.17, %125, !dbg !46
  %132 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 144, !dbg !44
  %133 = bitcast i32* %132 to <4 x i32>*, !dbg !44
  %wide.load46.18 = load <4 x i32>, <4 x i32>* %133, align 16, !dbg !44, !tbaa !35
  %134 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 148, !dbg !44
  %135 = bitcast i32* %134 to <4 x i32>*, !dbg !44
  %wide.load47.18 = load <4 x i32>, <4 x i32>* %135, align 16, !dbg !44, !tbaa !35
  %136 = add <4 x i32> %wide.load46.18, %130, !dbg !46
  %137 = add <4 x i32> %wide.load47.18, %131, !dbg !46
  %138 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 152, !dbg !44
  %139 = bitcast i32* %138 to <4 x i32>*, !dbg !44
  %wide.load46.19 = load <4 x i32>, <4 x i32>* %139, align 16, !dbg !44, !tbaa !35
  %140 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 156, !dbg !44
  %141 = bitcast i32* %140 to <4 x i32>*, !dbg !44
  %wide.load47.19 = load <4 x i32>, <4 x i32>* %141, align 16, !dbg !44, !tbaa !35
  %142 = add <4 x i32> %wide.load46.19, %136, !dbg !46
  %143 = add <4 x i32> %wide.load47.19, %137, !dbg !46
  %144 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 160, !dbg !44
  %145 = bitcast i32* %144 to <4 x i32>*, !dbg !44
  %wide.load46.20 = load <4 x i32>, <4 x i32>* %145, align 16, !dbg !44, !tbaa !35
  %146 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 164, !dbg !44
  %147 = bitcast i32* %146 to <4 x i32>*, !dbg !44
  %wide.load47.20 = load <4 x i32>, <4 x i32>* %147, align 16, !dbg !44, !tbaa !35
  %148 = add <4 x i32> %wide.load46.20, %142, !dbg !46
  %149 = add <4 x i32> %wide.load47.20, %143, !dbg !46
  %150 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 168, !dbg !44
  %151 = bitcast i32* %150 to <4 x i32>*, !dbg !44
  %wide.load46.21 = load <4 x i32>, <4 x i32>* %151, align 16, !dbg !44, !tbaa !35
  %152 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 172, !dbg !44
  %153 = bitcast i32* %152 to <4 x i32>*, !dbg !44
  %wide.load47.21 = load <4 x i32>, <4 x i32>* %153, align 16, !dbg !44, !tbaa !35
  %154 = add <4 x i32> %wide.load46.21, %148, !dbg !46
  %155 = add <4 x i32> %wide.load47.21, %149, !dbg !46
  %156 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 176, !dbg !44
  %157 = bitcast i32* %156 to <4 x i32>*, !dbg !44
  %wide.load46.22 = load <4 x i32>, <4 x i32>* %157, align 16, !dbg !44, !tbaa !35
  %158 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 180, !dbg !44
  %159 = bitcast i32* %158 to <4 x i32>*, !dbg !44
  %wide.load47.22 = load <4 x i32>, <4 x i32>* %159, align 16, !dbg !44, !tbaa !35
  %160 = add <4 x i32> %wide.load46.22, %154, !dbg !46
  %161 = add <4 x i32> %wide.load47.22, %155, !dbg !46
  %162 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 184, !dbg !44
  %163 = bitcast i32* %162 to <4 x i32>*, !dbg !44
  %wide.load46.23 = load <4 x i32>, <4 x i32>* %163, align 16, !dbg !44, !tbaa !35
  %164 = getelementptr inbounds [192 x i32], [192 x i32]* %foo, i64 0, i64 188, !dbg !44
  %165 = bitcast i32* %164 to <4 x i32>*, !dbg !44
  %wide.load47.23 = load <4 x i32>, <4 x i32>* %165, align 16, !dbg !44, !tbaa !35
  %166 = add <4 x i32> %wide.load46.23, %160, !dbg !46
  %167 = add <4 x i32> %wide.load47.23, %161, !dbg !46
  %bin.rdx = add <4 x i32> %167, %166, !dbg !46
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !46
  %bin.rdx48 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !46
  %rdx.shuf49 = shufflevector <4 x i32> %bin.rdx48, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !46
  %bin.rdx50 = add <4 x i32> %bin.rdx48, %rdx.shuf49, !dbg !46
  %168 = extractelement <4 x i32> %bin.rdx50, i32 0, !dbg !46
  call void @llvm.dbg.value(metadata i32 %168, metadata !20, metadata !DIExpression()), !dbg !47
  call void @llvm.lifetime.end.p0i8(i64 768, i8* nonnull %1) #3, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 768, i8* nonnull %0) #3, !dbg !48
  ret i32 %168, !dbg !49
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final 356655)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "/app/example.c", directory: "/app")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final 356655)"}
!7 = distinct !DISubprogram(name: "example", scope: !8, file: !8, line: 5, type: !9, scopeLine: 5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "example.c", directory: "/app")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !17, !18, !20, !22}
!13 = !DILocalVariable(name: "foo", scope: !7, file: !8, line: 6, type: !14)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 6144, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 192)
!17 = !DILocalVariable(name: "bar", scope: !7, file: !8, line: 7, type: !14)
!18 = !DILocalVariable(name: "i", scope: !19, file: !8, line: 12, type: !11)
!19 = distinct !DILexicalBlock(scope: !7, file: !8, line: 12, column: 3)
!20 = !DILocalVariable(name: "sum", scope: !7, file: !8, line: 15, type: !21)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "j", scope: !23, file: !8, line: 16, type: !11)
!23 = distinct !DILexicalBlock(scope: !7, file: !8, line: 16, column: 3)
!24 = !DILocation(line: 6, column: 3, scope: !7)
!25 = !DILocation(line: 6, column: 7, scope: !7)
!26 = !DILocation(line: 7, column: 3, scope: !7)
!27 = !DILocation(line: 7, column: 7, scope: !7)
!28 = !DILocation(line: 9, column: 3, scope: !7)
!29 = !DILocation(line: 10, column: 3, scope: !7)
!30 = !DILocation(line: 12, column: 12, scope: !19)
!31 = !DILocation(line: 12, column: 3, scope: !19)
!32 = !DILocation(line: 12, column: 31, scope: !33)
!33 = distinct !DILexicalBlock(scope: !19, file: !8, line: 12, column: 3)
!34 = !DILocation(line: 13, column: 15, scope: !33)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 13, column: 5, scope: !33)
!40 = !DILocation(line: 13, column: 12, scope: !33)
!41 = distinct !{!41, !31, !42, !43}
!42 = !DILocation(line: 13, column: 20, scope: !19)
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !DILocation(line: 17, column: 12, scope: !45)
!45 = distinct !DILexicalBlock(scope: !23, file: !8, line: 16, column: 3)
!46 = !DILocation(line: 17, column: 9, scope: !45)
!47 = !DILocation(line: 15, column: 16, scope: !7)
!48 = !DILocation(line: 20, column: 1, scope: !7)
!49 = !DILocation(line: 19, column: 3, scope: !7)
