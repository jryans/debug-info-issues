# Description

* Version
  * First tested 13.0.0
  * Occurs on main as well (20f650b231e324bdee619a57efef87c7b5d56b36)
* Flags: `-fno-discard-value-names -fno-inline -g -O1`

The `InstCombine` pass removes debug value info for `is_annotated` towards the
end of the function, and this is then propagated throughout the whole function.

## Versions

* Clang: version 17.0.0 (https://github.com/llvm/llvm-project.git 20f650b231e324bdee619a57efef87c7b5d56b36)
* LLDB: version 17.0.0git (git@github.com:llvm/llvm-project.git revision 55e2cd16095d64e9afca6e109e40ed95d735dc7f)

## Compiler Explorer

* [Optimisation pipeline view using x86-64 Clang trunk (may change over time)](https://godbolt.org/z/Wh73d6Mzn)

## Program source

```c
int get_name_prio;
int b(void);
int main(void) {
  int is_annotated;
  if (b())
    is_annotated = 0;
  else
    is_annotated = 4;
  if (is_annotated)
    get_name_prio = 2;
  return 0;
}
```

## Debug info view

```
$ clang -fno-discard-value-names -fno-inline -g -O1 -c -o example-O1.o
$ llvm-dwarfdump -n is_annotated example-O1.o
0x00000067: DW_TAG_variable
              DW_AT_name        ("is_annotated")
              DW_AT_decl_line   (4)
              DW_AT_type        (0x00000047 "int")
```

Location for `is_annotated` is missing throughout the function.

## IR before `InstCombine`

```llvm
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = call i32 @b()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, "is_annotated", metadata !DIExpression())
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 4, "is_annotated", metadata !DIExpression())
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %is_annotated.0 = phi i32 [ 0, %if.then ], [ 4, %if.else ]
  call void @llvm.dbg.value(metadata i32 %is_annotated.0, "is_annotated", metadata !DIExpression())
  %tobool1 = icmp ne i32 %is_annotated.0, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 2, ptr @get_name_prio, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret i32 0
}
```

## IR after `InstCombine`

```llvm
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = call i32 @b() #3
  %tobool.not.not = icmp eq i32 %call, 0
  br i1 %tobool.not.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, "is_annotated", metadata !DIExpression())
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 4, "is_annotated", metadata !DIExpression())
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.value(metadata i32 poison, "is_annotated", metadata !DIExpression())
  br i1 %tobool.not.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 2, ptr @get_name_prio, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret i32 0
}
```

## IR diff before and after `InstCombine`

```diff
@@ -1,8 +1,8 @@
 define dso_local i32 @main() local_unnamed_addr #0 {
 entry:
-  %call = call i32 @b()
-  %tobool = icmp ne i32 %call, 0
-  br i1 %tobool, label %if.then, label %if.else
+  %call = call i32 @b() #3
+  %tobool.not.not = icmp eq i32 %call, 0
+  br i1 %tobool.not.not, label %if.else, label %if.then

 if.then:                                          ; preds = %entry
   call void @llvm.dbg.value(metadata i32 0, "is_annotated", metadata !DIExpression())
@@ -13,10 +13,8 @@
   br label %if.end

 if.end:                                           ; preds = %if.else, %if.then
-  %is_annotated.0 = phi i32 [ 0, %if.then ], [ 4, %if.else ]
-  call void @llvm.dbg.value(metadata i32 %is_annotated.0, "is_annotated", metadata !DIExpression())
-  %tobool1 = icmp ne i32 %is_annotated.0, 0
-  br i1 %tobool1, label %if.then2, label %if.end3
+  call void @llvm.dbg.value(metadata i32 poison, "is_annotated", metadata !DIExpression())
+  br i1 %tobool.not.not, label %if.then2, label %if.end3

 if.then2:                                         ; preds = %if.end
   store i32 2, ptr @get_name_prio, align 4
```

# Issue

* Filed as https://github.com/llvm/llvm-project/issues/61153
