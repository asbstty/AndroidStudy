//
//  #if #ifdef和#ifndef的综合应用。
//  canway
//


#include <stdio.h>
#include <stdlib.h>
#define MAX
#define MAXIMUM(x,y) (x>y)?x:y
#define MINIMUM(x,y) (x>y)?y:x

int main()
{
    int a=10,b=20;
    //如果MAX有定义，就执行这句；否则执行#else
#ifdef MAX
    printf("The larger one is %d\n",MAXIMUM(a,b));
#else
    printf("The lower one is %d\n",MINIMUM(a,b));
#endif
    
    //如果MIN没有定义，就执行这句；否则执行#else
#ifndef MIN
    printf("The lower one is %d\n",MINIMUM(a,b));
#else
    printf("The larger one is %d\n",MAXIMUM(a,b));
#endif

    //把MAX注销
#undef MAX
    
#ifdef MAX
    printf("The larger one is %d\n",MAXIMUM(a,b));
#else
    printf("The lower one is %d\n",MINIMUM(a,b));
#endif

    //定义MIN
#define MIN
    
#ifndef MIN
    printf("The lower one is %d\n",MINIMUM(a,b));
#else
    printf("The larger one is %d\n",MAXIMUM(a,b));
#endif

	return 0;
}