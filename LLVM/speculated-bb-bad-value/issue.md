# Issue

[[DebugInfo@O2][Dexter] Speculated BB presents illegal variable value to debugger](https://github.com/llvm/llvm-project/issues/38111)

# Description

Speculating a basic block into a select IR insn causes an illegal variable value
to be presented to the debugger. Taking the code below, compiled -O2 -g for
x86_64 with trunk, on the line "if (read == 4)" both gdb and lldb report that
the value of "result" is two, where it should be zero.

The value two isn't calculated in the execution of this program, and when
compiled with -O0 "result" is correctly reported zero on that line. More
interestingly, the illegal value doesn't actually seem to be read from a
speculated instruction, "result" is reported as two from the moment the volatile
loads are done.

I get the impression that something DWARFy is going wrong, as the DW_AT_location
expression for "result" looks way more complicated that it needs to be.

# Reproduction

...

# Issue resolution

At the time of the issue (2018), LLVM didn't have a way to express debug values
involving multiple SSA locations, such as this case with speculation via a
`select` instruction, so the only choice back then was to drop the debug info.

```diff
   // Move all 'aggressive' instructions, which are defined in the
   // conditional parts of the if's up to the dominating block.
   if (IfBlock1) {
     for (auto &I : *IfBlock1) {
       I.dropUnknownNonDebugMetadata();
+      dropDebugUsers(I);
     }
     DomBlock->getInstList().splice(InsertPt->getIterator(),
                                    IfBlock1->getInstList(), IfBlock1->begin(),
                                    IfBlock1->getTerminator()->getIterator());
   }
   if (IfBlock2) {
     for (auto &I : *IfBlock2) {
       I.dropUnknownNonDebugMetadata();
+      dropDebugUsers(I);
     }
     DomBlock->getInstList().splice(InsertPt->getIterator(),
                                    IfBlock2->getInstList(), IfBlock2->begin(),
                                    IfBlock2->getTerminator()->getIterator());
   }
```

# Commentary

* Adds common utils
* Debug info lost
* Blocked on insufficient expressiveness in LLVM IR

An somewhat interesting case in terms of our desire to find what's wrong in
debug info handling... Our (future) tooling would presumably mark this pass as
removing debug info, but that was also the only correct option without a larger
rework of LLVM debug metadata.
