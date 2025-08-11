## Notes

These traces capture many of the key challenges involved in attempting to
compare call trees with inlining.

They were extracted from Clang 13 O0 vs. O1 traces from Git's
`t1007-hash-object` test. A few unrelated divergences were manually removed.

These traces feature the following attributes:

- Nested inlining
- Different number of inlined calls
- Different coordinates
- Misaligned tree due to function exit and re-entry
