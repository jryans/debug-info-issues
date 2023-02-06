# Description

* Version
  * First tested 13.0.0
  * Occurs on main as well (0981ff8968bdfbd59d6db388db5ad1708b84ef05)
* Flags: `-fno-discard-value-names -fno-inline -g -O1`

The `Reassociate` pass rearranges the decrement of the `day` variable, but in
the process it drops the debug value info for this variable, and this leads to
the value becoming inaccessible when debugging.

## Versions

* Clang: version 17.0.0 (https://github.com/llvm/llvm-project.git 0981ff8968bdfbd59d6db388db5ad1708b84ef05)
* LLDB: version 17.0.0git (git@github.com:llvm/llvm-project.git revision 55e2cd16095d64e9afca6e109e40ed95d735dc7f)

## Program source

```c
#include <time.h>

time_t example(struct tm *tm) {
  int b[] = {9, 4};
  int c = tm->tm_year, d = tm->tm_mon;
  int day = tm->tm_mday;
  day--;
  return c + b[d] + day;
}

int main() {
	struct tm test = {};
	return example(&test);
}
```

## Debug session

```
$ clang example.c -g -fno-inline -fno-discard-value-names -O1 -o example
$ lldb -- example
(lldb) target create "example"
(lldb) b 8
Breakpoint 1: where = example`example + 11 at example.c:8:14, address = 0x0000000100003f5b
(lldb) r
Process 82154 launched
Process 82154 stopped
* thread #1, queue = 'com.apple.main-thread', stop reason = breakpoint 1.1
    frame #0: 0x000000010a795f5b example`example(tm=0x00007ff7b576bb10) at example.c:8:14 [opt]
   5      int c = tm->tm_year, d = tm->tm_mon;
   6      int day = tm->tm_mday;
   7      day--;
-> 8      return c + b[d] + day;
   9    }
   10  
   11   int main() {
Target 0: (example) stopped.
warning: example was compiled with optimization - stepping may behave oddly; variables may not be available.
(lldb) p day
error: Couldn't materialize: couldn't get the value of variable day: no location, value may have been optimized out
error: errored out in DoExecute, couldn't PrepareToExecuteJITExpression
```

## IR before `Reassociate`

```llvm
define dso_local i64 @example(ptr nocapture noundef readonly %tm) local_unnamed_addr {
entry:
  ...
  call void @llvm.dbg.value(metadata i32 %2, "day", metadata !DIExpression())
  %dec = add nsw i32 %2, -1
  call void @llvm.dbg.value(metadata i32 %dec, "day", metadata !DIExpression())
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i32], ptr @__const.example.b, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %add = add nsw i32 %0, %3
  %add1 = add nsw i32 %add, %dec
  %conv = sext i32 %add1 to i64
  ret i64 %conv
}
```

## IR after `Reassociate`

```llvm
define dso_local i64 @example(ptr nocapture noundef readonly %tm) local_unnamed_addr {
entry:
  ...
  call void @llvm.dbg.value(metadata i32 %2, "day", metadata !DIExpression())
  call void @llvm.dbg.value(metadata i32 poison, "day", metadata !DIExpression())
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i32], ptr @__const.example.b, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %0, -1
  %dec = add i32 %add, %2
  %add1 = add i32 %dec, %3
  %conv = sext i32 %add1 to i64
  ret i64 %conv
}
```

# Issue

* Filed as https://github.com/llvm/llvm-project/issues/60532
