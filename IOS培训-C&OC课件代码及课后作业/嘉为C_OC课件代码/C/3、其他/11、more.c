//
//  #if #ifdef和#ifndef的综合应用。
//  canway
//


#include <stdio.h>
#include <stdlib.h>


int main()
{
    int val1 = 1;
    //右移一位，相当于*2
    int val2 = val1 << 1;
    printf("val1 = %d val1<<1 = %d\n", val1, val2);

    val1 = 123;
    val2 = val1 << 1;
    printf("val1 = %d val1<<1 = %d\n", val1, val2);

    int val3 = 8;
    //左移一位，相当于除以2
    int val4 = val3 >> 1;
    printf("val3 = %d val3>>1 = %d\n", val3, val4);

    int val5 = ~val4;
    //按位取反
    printf("val4 = 0x%x ~val4 =0x %x\n", val4, val5);

    //按位与，应该是0
    printf("val4 & val5 = 0x%x\n", val4 & val5 );
    //按位或，应该是全F
    printf("val4 | val5 = 0x%x\n", val4 | val5 );

    //按位异或  全F
    printf("val4 ^ val5 = 0x%x\n", val4 ^ val5 );

    val4 = 0x1FF;
    val5 = 0xFF;
    //按位异或  
    printf("val4 ^ val5 = 0x%x\n", val4 ^ val5 );

	return 0;
}