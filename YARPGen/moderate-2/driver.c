#include <stdio.h>

unsigned long long int seed = 0;
void hash(unsigned long long int *seed, unsigned long long int const v) {
    *seed ^= v + 0x9e3779b9 + ((*seed)<<6) + ((*seed)>>2);
}

long long int var_0 = 4450913226861303264LL;
short var_1 = (short)-10595;
short var_8 = (short)-6895;
_Bool var_9 = (_Bool)0;
unsigned long long int var_11 = 10247992308386685625ULL;
unsigned long long int var_12 = 13102701130321990625ULL;
short var_13 = (short)-29065;
unsigned long long int var_15 = 10299272222575018247ULL;
unsigned short arr_0 [25] ;
unsigned long long int arr_4 [25] [10] ;
unsigned short arr_5 [25] [10] ;
unsigned char arr_6 [25] [10] ;
signed char arr_7 [25] [10] ;
void init() {
    for (size_t i_0 = 0; i_0 < 25; ++i_0) 
        arr_0 [i_0] = (unsigned short)37892;
    for (size_t i_0 = 0; i_0 < 25; ++i_0) 
        for (size_t i_1 = 0; i_1 < 10; ++i_1) 
            arr_4 [i_0] [i_1] = 17688231334974629610ULL;
    for (size_t i_0 = 0; i_0 < 25; ++i_0) 
        for (size_t i_1 = 0; i_1 < 10; ++i_1) 
            arr_5 [i_0] [i_1] = (unsigned short)36628;
    for (size_t i_0 = 0; i_0 < 25; ++i_0) 
        for (size_t i_1 = 0; i_1 < 10; ++i_1) 
            arr_6 [i_0] [i_1] = (unsigned char)18;
    for (size_t i_0 = 0; i_0 < 25; ++i_0) 
        for (size_t i_1 = 0; i_1 < 10; ++i_1) 
            arr_7 [i_0] [i_1] = (signed char)-54;
}

void checksum() {
    hash(&seed, var_15);
    for (size_t i_0 = 0; i_0 < 25; ++i_0) 
        for (size_t i_1 = 0; i_1 < 10; ++i_1) 
            hash(&seed, arr_5 [i_0] [i_1] );
    for (size_t i_0 = 0; i_0 < 25; ++i_0) 
        for (size_t i_1 = 0; i_1 < 10; ++i_1) 
            hash(&seed, arr_6 [i_0] [i_1] );
    for (size_t i_0 = 0; i_0 < 25; ++i_0) 
        for (size_t i_1 = 0; i_1 < 10; ++i_1) 
            hash(&seed, arr_7 [i_0] [i_1] );
}
void test(long long int var_0, short var_1, short var_8, _Bool var_9, unsigned long long int var_11, unsigned long long int var_12, short var_13, unsigned short arr_0 [25] , unsigned long long int arr_4 [25] [10] );

int main() {
    init();
    test(var_0, var_1, var_8, var_9, var_11, var_12, var_13, arr_0 , arr_4 );
    checksum();
    printf("%llu\n", seed);
}
