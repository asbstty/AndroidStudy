//
// 宏#define命令练习
// canway
//

#include <stdio.h>
#include <stdlib.h>


///声明一个求平方的宏
#define SQ(x) x*x


int main()
{
    int num = 9;
    
    printf("The square for this number is %d \n",SQ(num));
    
    
    printf("The square for this number is %d \n",SQ(3+4));
    
    return 0;
}
