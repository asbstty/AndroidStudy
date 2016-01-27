/*
    利用递归方法求5!。
    递归公式：fn=fn_1*4!
    canway
*/

#include <stdio.h>
#include <stdlib.h>

//计算函数
int fact(int j)
{
 	int sum;
 	if(j <= 0)
    	sum=1;
 	else
   	    sum=j*fact(j-1);

    return sum;
}

int main()
{
	int i = 5;
    //调用递归函数
  	printf("%d! = %d\n",i,fact(i));

  	return 0;
}
