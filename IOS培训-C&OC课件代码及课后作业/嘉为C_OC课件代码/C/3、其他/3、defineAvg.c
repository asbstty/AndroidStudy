//
// 宏#define命令练习,求平均数
// canway
//

#include <stdio.h>
#include <stdlib.h>


//宏定义中求平均数
#define average(a,b) (a+b)/2

int main()
{
    int x=10;
    int y=20;
    printf("x=%d; y=%d\n",x,y);
    int avg = average(x,y);
    printf("avg = %d\n", avg);

    return 0;
}