//
//  演示sizeof的作用
//  
//
//  canway
//
//

#include <stdio.h>
#include <stdlib.h>

int main()
{
    char ch;//char 类型
    short st;//int 类型
    int i;//int 类型
    float f;//int 类型
    double d;//int 类型
    long l;//int 类型
    long long ll;//int 类型

    char *p;//字符串指针
    void *v;//void指针
    int *ip;//int指针
    void (*mymax)(int a, int b);//函数指针
    
    printf("sizeof(char) = %lu\n", sizeof(ch));
    printf("sizeof(short) = %lu\n", sizeof(st));
    printf("sizeof(int) = %lu\n", sizeof(i));
    printf("sizeof(float) = %lu\n", sizeof(f));
    printf("sizeof(double) = %lu\n", sizeof(d));
    printf("sizeof(long) = %lu\n", sizeof(l));
    printf("sizeof(long long) = %lu\n", sizeof(ll));
    printf("sizeof(char*) = %lu\n", sizeof(p));
    printf("sizeof(void*) = %lu\n", sizeof(v));
    printf("sizeof(int*) = %lu\n", sizeof(ip));
    printf("sizeof(functionPtr) = %lu\n", sizeof(mymax));
    
    
    typedef void (*mymax2)(int a, int b);//函数指针
    mymax2 max;
    //直接使用sizeof类型，和变量是一样的长度，
    printf("-------使用类型来测试sizeof-------\n");
    
    printf("sizeof(char) = %lu\n", sizeof(char));
    printf("sizeof(short) = %lu\n", sizeof(short));
    printf("sizeof(int) = %lu\n", sizeof(int));
    printf("sizeof(float) = %lu\n", sizeof(float));
    printf("sizeof(double) = %lu\n", sizeof(double));
    printf("sizeof(long) = %lu\n", sizeof(long));
    printf("sizeof(long long) = %lu\n", sizeof(long long));
    printf("sizeof(char*) = %lu\n", sizeof(char*));
    printf("sizeof(void*) = %lu\n", sizeof(void*));
    printf("sizeof(int*) = %lu\n", sizeof(int*));
    printf("sizeof(functionPtr) = %lu\n", sizeof(mymax2));
    
    return 0;
}
