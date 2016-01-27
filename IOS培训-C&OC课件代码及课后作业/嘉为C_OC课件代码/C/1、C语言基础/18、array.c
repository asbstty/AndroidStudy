//
// 演示数组的用法
// canway
//

#include <stdio.h>
#include <stdlib.h>

int main()
{
    printf("----array begin---\n");
    //声明一个数组
    int numbers[] = {3,2,4,5,6,8,11,9,20,14};
    //循环数组中的元素个数次，并依此打印出结果
    for(int i=0; i<sizeof(numbers)/sizeof(numbers[0]); i++)
    {
        printf("%d ", numbers[i]);
    }
    printf("\n----array end---\n");
    
    
    //部分初始化数组
    int numbers2[10] = {1,2,4};
    
    printf("----array begin---\n");
    //循环数组中的元素个数次，并依此打印出结果
    for(int i=0; i<sizeof(numbers2)/sizeof(numbers2[0]); i++)
    {
        printf("%d ", numbers2[i]);
    }
    printf("\n----array end---\n");
    
    //下面这句是错误的，因为已经不是初始化了，数组不可以被直接赋值为一个集合
    //numbers = {};
    
    return 0;
}