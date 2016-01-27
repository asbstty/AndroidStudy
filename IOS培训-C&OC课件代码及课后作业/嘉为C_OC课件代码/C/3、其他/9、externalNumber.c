//
// 学习使用external的用法
// canway
//

#include <stdio.h>
#include <stdlib.h>

//a,b c在add函数，和main函数都能访问，都能操作
int a,b,c;

void add()
{
    int a;
    a = 3;
    c = a+b;
}

int main()
{
    a=b=4;
    add();
    printf("The value of c is equal to %d\n",c);
  
    return 0;
}