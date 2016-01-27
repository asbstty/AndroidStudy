//
// 宏#define命令练习,交换数字
// 宏的副作用
// canway
//

#include <stdio.h>
#include <stdlib.h>

//宏定义中允许包含两个以上参数的情形，换行时必须在最右边加上"\"
#define exchange(a,b) { \
                        int t;\
                        t=a;\
                        a=b;\
                        b=t;\
                      }

//求最小值
#define MIN(A,B) ((A) <= (B) ? (A) : (B))


int main()
{
    int x=10;
    int y=20;
    printf("x=%d; y=%d\n",x,y);
    //交换成功，思考为什么这样子能交换成功！
    exchange(x,y);
    printf("x=%d; y=%d\n",x,y);

    int i = 10;
    int ints[] = {1,2,3,4,5};
    int *p = ints;
    printf("i = %d, *p = %d\n", i, *p);
    
    int min = MIN(*p++, i);
    //副作用出来了,在上面的宏里，指针自增了2次
    printf("i = %d, *p = %d, min = %d\n", i, *p, min);
    
    p = &ints[0];//和上面写法不一样，但是效果一样，前面是取数组首地址，这个是取第一个元素的地址
    int val = *p;
    min = MIN(val, i);
    //通过临时变量来避免
    printf("i = %d, *p = %d, min = %d\n", i, *p, min);
    
    
    return 0;
}