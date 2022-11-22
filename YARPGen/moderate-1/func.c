/*
yarpgen version 2.0 (build fc8851a on 2022:11:14)
Seed: 3425065347
Invocation: /Users/jryans/Projects/yarpgen/build-release/yarpgen --std=c
*/
unsigned char var_15 = (unsigned char)239;
unsigned long long int var_16 = 16562458943060025026ULL;
unsigned char var_17 = (unsigned char)49;
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
void test(signed char var_0, signed char var_4, _Bool var_8,
          unsigned char var_9, unsigned short var_10, unsigned short var_11,
          signed char var_12, signed char var_14) {
  var_15 =
      ((/* implicit */
        unsigned char)((((/* implicit */ _Bool)(+(((/* implicit */ int)max(
                           (((/* implicit */ unsigned short)var_14)),
                           (var_11)))))))
                           ? (((((((/* implicit */ int)var_12)) &
                                 (((/* implicit */ int)(signed char)96))))
                               << (((((/* implicit */ int)var_12)) - (83)))))
                           : (((/* implicit */ int)min(
                                 (((/* implicit */
                                    unsigned char)((((/* implicit */ _Bool)
                                                         var_9)) ||
                                                   (((/* implicit */ _Bool)
                                                         var_4))))),
                                 ((unsigned char)43))))));
  if (((/* implicit */ _Bool)var_0)) {
    var_16 =
        ((/* implicit */
          unsigned long long int)((((/* implicit */ _Bool)(
                                      (((/* implicit */ int)min(
                                          (var_11),
                                          (((/* implicit */ unsigned short)
                                                var_8))))) /
                                      (((/* implicit */ int)min((var_14),
                                                                (var_14)))))))
                                      ? (((((/* implicit */ _Bool)var_14))
                                              ? (((/* implicit */ int)(_Bool)1))
                                              : (((/* implicit */ int)min(
                                                    ((unsigned short)63124),
                                                    (var_10))))))
                                      : (((((/* implicit */ int)var_0)) -
                                          (((/* implicit */
                                             int)(unsigned short)24576))))));
    var_17 = ((/* implicit */
               unsigned char)(((+(((/* implicit */ int)(_Bool)1)))) >=
                              (((/* implicit */ int)(unsigned short)24576))));
  }
}
