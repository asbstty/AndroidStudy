//
// 演示字符串的用法
// canway
//

#include <stdio.h>
#include <string.h>

int main()
{
    //字符数组，并初始化
    char str1[20] = "hello world";
    printf("str1 = %s\n", str1);
    
    //第6个字符设置为0，那么再当做字符串打印，就只能打印到第6位了
    str1[6] = 0;
    printf("str1 = %s\n", str1);
    
    //循环打印20个字节出来看看内容,发现后面的字符都还在
    for(int i=0; i<20; i++)
    {
        printf("%c ", str1[i]);
    }
    printf("\n------\n");//无意义的分割下
    
    //字符串拷贝
    strcpy(str1, "hello canway");
    //输出字符串，并输出其长度
    printf("str1 = %s strlen(str1)=%lu\n", str1, strlen(str1));
    
    //第二个字符串
    char str2[100] = "hello ";
    strcat(str2, "canway");
    printf("str2 = %s strlen(str2)=%lu\n", str2, strlen(str2));
    
    //字符串比较,0是相等
    printf("str1 compare str2 = %d\n", strcmp(str1, str2));
    
    return 0;
}