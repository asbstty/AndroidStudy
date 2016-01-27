//
// 演示使用void *指针来传递函数指针
// canway
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//测试函数
int max(int a, int b)
{
    printf("this is max function\n");
    return a>b?a:b;
}

void testFunctionPointer(void *ptr)
{
    if(ptr != NULL)
    {
        //声明一个函数指针类型
        typedef int (*pMax)(int, int);
        //把void指针强转会到函数指针
        int i = ((pMax)ptr)(3, 4);
        printf("void *ptr: max(3,4) is %d\n", i);
    }
}

int main(){
    //先保存个简单的热身
    //字符串测试一次
    char *str = "hello pointer";
    void *p1 = str;
    printf("p1 = %s\n", p1);
    
    //用整形测试一次
    int a = 100;
    void *p2 = &a;
    printf("void p2 = %d\n", *(int *)p2);
    
    //函数指针测试
    int (*pmax)(int, int);
    pmax = max;//函数指针指向max函数
    
    //调用函数指针指向的函数
    int result = pmax(2, 4);//(pmax*)(2,4) 都可以
    printf("pmax: max(2,4) is %d\n", result);
    
    //把函数指针当做参数传进去
    testFunctionPointer(pmax);
    
    return 0;
}