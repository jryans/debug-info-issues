/*
yarpgen version 2.0 (build fc8851a on 2022:11:14)
Seed: 2290102668
Invocation: /Users/jryans/Projects/yarpgen/build-release/yarpgen --std=c
*/
unsigned long long int var_15 = 10299272222575018247ULL;
unsigned short arr_5 [25] [10] ;
unsigned char arr_6 [25] [10] ;
signed char arr_7 [25] [10] ;
#define max(a, b)                                                              \
  ({                                                                           \
    __typeof__(a) _a = (a);                                                    \
    __typeof__(b) _b = (b);                                                    \
    _a > _b ? _a : _b;                                                         \
  })
#define min(a, b)                                                              \
  ({                                                                           \
    __typeof__(a) _a = (a);                                                    \
    __typeof__(b) _b = (b);                                                    \
    _a < _b ? _a : _b;                                                         \
  })
void test(long long int var_0, short var_1, short var_8, _Bool var_9,
          unsigned long long int var_11, unsigned long long int var_12,
          short var_13, unsigned short arr_0[25],
          unsigned long long int arr_4[25][10]) {
  /* LoopNest 2 */
  for (unsigned char i_0 =
           ((((/* implicit */ int)((/* implicit */ unsigned char)var_11))) -
            (184)) /*1*/;
       i_0 < ((((/* implicit */ int)((
                  /* implicit */
                  unsigned char)((((/* implicit */ _Bool)max(
                                     (((/* implicit */ unsigned char)var_9)),
                                     (((unsigned char)var_8)))))
                                     ? (((/* implicit */ unsigned long long int)
                                             var_0))
                                     : (var_12))))) -
              (203)) /*21*/;
       i_0 += (unsigned char)4 /*4*/) {
    for (signed char i_1 =
             ((((/* implicit */ int)((/* implicit */ signed char)var_11))) +
              (71)) /*0*/;
         i_1 < ((((/* implicit */ int)((
                    /* implicit */ signed char)((unsigned int)2147483647)))) +
                (11)) /*10*/;
         i_1 +=
         ((((/* implicit */ int)((/* implicit */ signed char)arr_0[i_0]))) -
          (1)) /*3*/) {
      {
        arr_5[i_0][i_1] = ((/* implicit */ unsigned short)(~(
            min((arr_4[i_0][i_1]), (arr_4[i_0 - 1][i_1])))));
        arr_6[i_0][i_1] = ((/* implicit */ unsigned char)4294967295U);
        arr_7[i_0][i_1] = ((/* implicit */ signed char)arr_4[i_0][i_1]);
      }
    }
  }
  var_15 =
      ((/* implicit */
        unsigned long long int)(((!(((0ULL) >=
                                     (((/* implicit */ unsigned long long int)
                                           var_0))))))
                                    ? (((/* implicit */ int)var_13))
                                    : (((/* implicit */ int)var_1))));
}
