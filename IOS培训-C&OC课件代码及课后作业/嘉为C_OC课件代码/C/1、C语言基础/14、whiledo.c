
/*
   while do 还是do while的问题。
   canway
*/

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

int main()
{
    int i = 0;

    //如下两种写法没有区别都是输出5次信息。
    do
    {
        printf("%d times\n", i);
        i++;
    }while(i < 5);

    i = 0;
    while(i < 5)
    {
        printf("%d times\n", i);
        i++;
    }

    bool condition = false;

    //如果条件开始就是false的，就有区别了,do while能输出一次 while do则不能
    do
    {
        printf("this is do while\n");
    }while(condition);

    while(condition)
    {
        printf("this is while do \n");
    }

    //continue break的用法
    
    //输出10以后，可以被3整除的第一个数字
    i = 0;
    while(i >= 10)
    {
        if(i%3 == 0)//如果找到被3乘除的数字，就退出循环
        {
            break;
        }

        i++;
    }


    //输出10以内的偶数
    i = 0;
    while(i++ < 10)
    {   
        if(i%2 != 0){
            continue;
        }

        printf("%d is right number\n", i);
    }


    return 0;
}
