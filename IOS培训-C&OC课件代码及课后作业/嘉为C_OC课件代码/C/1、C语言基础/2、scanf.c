/*
	演示scanf函数

	canway
*/

#include<stdio.h>

int main(void)
{
	int a,b;
	printf("please input int a, int b\n");
	scanf("%d%d",&a,&b);
	printf("a = %d, b = %d\n",a,b);
	
	return 0;
}