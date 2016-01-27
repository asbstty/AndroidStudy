//
// 演示使用指针来交换两个变量的值
// canway
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//常规函数
void swap(int a, int b)
{
    int c = a;
    a = b;
    b = c;
    printf("swap:a = %d, b = %d\n", a, b);
}

//参数是指针
void swapByPointer(int *p1, int *p2)
{
    int a = *p1;
    *p1 = *p2;
    *p2 = a;
    
    printf("swapByPointer:*p1 = %d, *p2 = %d\n", *p1, *p2);
}


int main()
{
    int a = 99;
    int b = 88;
    //这个交换是：然并卵！
    swap(a, b);
    printf("a = %d, b = %d\n", a, b);
    
    int *p1 = &a;
    int *p2 = &b;
    //指针交换才可以，参数指针指向的地址是同一块。
    printf("raw:*p1 = %d, *p2 = %d\n", *p1, *p2);
    swapByPointer(p1, p2);
    printf("*p1 = %d, *p2 = %d\n", *p1, *p2);
    
	return 0;
}