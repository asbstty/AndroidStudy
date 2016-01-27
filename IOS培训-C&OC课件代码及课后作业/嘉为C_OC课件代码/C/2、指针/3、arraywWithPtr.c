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

    
    //一个字符串指针，并指向一个字符串数组
    char *str3 = str1;
    printf("str3 = %s\n", str3);

    //循环打印20个字节出来看看，采用下标
    for(int i=0; i<20; i++)
    {
        printf("%c ", str3[i]);
    }
    printf("\n------\n");//无意义的分割下


    //循环打印20个字节出来看看内容,采用指针地址
    for(int i=0; i<20; i++)
    {
        printf("%c ", *(str3+i));
    }

    printf("\n------\n");//无意义的分割下

    char *p = str3;
    //一个输出e，一个输出f， 请思考为什么
    printf("%c %c\n", *(++p), ++(*p));
    return 0;
}