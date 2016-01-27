// 习题，打印图形
// canway
// 
//

#include <stdio.h>
#include <stdlib.h>

int main()
{
    for(int i=0; i<5; i++) //一共有5行
    {
        for(int j=0;j<5;j++) //一共有5列
        {
            if(i < j)//行号小于等于列号，就是?，否则就是*
            {
                printf("?");
            }
            else
            {
                printf("*");
            }
        }
        printf("\n");
    }
    

    return 0;
}
