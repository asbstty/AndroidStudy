//
// 演示使用指针和引用来交换地址
// canway
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// 返回两个值中较大的值
int max(int a, int b){
    if(a>b) return a;
    else return b;
}

int main(){
    //函数指针测试
    int(*pmax)(int,int);
    
    int x, y;//声明2个变量
    
    pmax = max;//函数指针指向max函数
    
    //输入2个数字
    printf("Input two numbers:");
    scanf("%d %d", &x, &y);

    //调用函数指针来获取最大的数字
    int maxval = (*pmax)(x, y);
    //输出结果
    printf("Max value: %d\n", maxval);

    
    
    return 0;
}