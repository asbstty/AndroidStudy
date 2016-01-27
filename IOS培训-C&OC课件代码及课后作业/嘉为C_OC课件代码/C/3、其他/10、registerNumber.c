//
// 学习使用register定义变量的方法。
// canway
//

#include <stdio.h>
#include <stdlib.h>

int main()
{
    //当做普通类型使用即可
    register int i;
    int tmp=0;
  
    for(i=1;i<=10;i++)
        tmp+=i;

    printf("The sum is %d\n",tmp);
  
    return 0;
}
