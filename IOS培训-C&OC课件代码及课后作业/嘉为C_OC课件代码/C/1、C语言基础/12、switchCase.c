/*
  canway
  题目：输入一个数字（1到7之间），输出对应的英文单词
*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int number;
    //提示用户输入一个数字，并读取该数字
    printf("\nplease input a number between 1 to 7:\n");
    scanf("%d", &number);

    //演示switch case，并在里面埋了一个‘彩蛋’
    //你输入77 或者 7 都可以打印出seven，因为case 7的时候没做任何处理。
    //这种用法，在老的库中常见，就是几个case一起写的情况。
    switch(number)
    {
        case 1:
            printf("one\r\n");
            break;
        case 2:
            printf("two\r\n");
            break;
        case 3:
            printf("three\r\n");
            break;
        case 4:
            printf("four\r\n");
            break;
        case 5:
            printf("five\r\n");
            break;
        case 6:
            printf("six\r\n");
            break;
        case 7://fall down
        case 77://上面故意不写break，让在这个分支执行
            printf("seven\r\n");
            break;
        default:
            printf("data error, please don't cheat me!!!\r\n");
            break;
    }
    
    return 0;
}
