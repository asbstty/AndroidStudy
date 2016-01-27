//
// 循环的测试题，打印可以被5整除的数字
// canway
//

#include <stdio.h>
#include <stdlib.h>


int main()
{
    //循环100次
    for(int i=0; i<100; i++){
        if(i%5 == 0){//如果可以被5整除，就打印
            printf("%d can be devid by 5\n", i);
        }
    }
    
    return 0;
}