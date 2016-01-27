//
// 学习static定义静态变量的用法
// canway
//

#include <stdio.h>
#include <stdlib.h>

void varfunc()
{
    //普通变量，每次进来都会被初始化
    int var = 0;
    //静态变量，只会被初始化一次
    static int static_var = 0;
    printf("var equal %d \n",var);
    printf("static var equal %d \n",static_var);
    printf("\n");
    var++;
    static_var++;
}

int main()
{
    int i;
    //调用3遍，演示static
    for(i=0;i<3;i++)
        varfunc();
    return 0;
}