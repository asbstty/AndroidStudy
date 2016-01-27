//
// 宏#define命令练习, 比较运算符也可以用宏定义
// canway
//

#include <stdio.h>
#include <stdlib.h>

//用宏定义来定义比较运算符
#define LAG >
#define SMA <
#define EQ ==

int main()
{
    int i=10;
    int j=20;
    if(i LAG j)
        printf("%d larger than %d \n",i,j);
    else if(i EQ j)
        printf("%d equal to %d \n",i,j);
    else if(i SMA j)
        printf("%d smaller than %d \n",i,j);
    else
        printf("No such value.\n");

    return 0;
}
