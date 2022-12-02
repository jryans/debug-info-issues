# Issue

The bulk of this program does some questionable calculations with array indices.
When we reach lines 50 - 51...

```c
        arr_5[i_0][i_1] = ((/* implicit */ unsigned short)(~(
            min((arr_4[i_0][i_1]), (arr_4[i_0 - 1][i_1])))));
```

...both array indices are set to crazy values that are far outside the array
bounds. KLEE easily discovers this and stops executing this portion of the
program.
