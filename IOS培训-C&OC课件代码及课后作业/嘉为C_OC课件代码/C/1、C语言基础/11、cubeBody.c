/*
	演示scanf函数

	canway
*/

#include<stdio.h>

int main(void)
{
	//初始化长，宽，高
	int length = 0, width = 0, height = 0;
	printf("please input lenght, width, height\n");

	//从界面获取三个值
	scanf("%d%d%d", &length, &width, &height);

	//反显输出的数值
	printf("length = %d, width = %d, height = %d\n", length, width, height);
	//判断是否有非正值
	if(length <= 0 || width <= 0 || height <= 0){
		printf("every side of cube must bigger than 0!\n");
		return -1;
	}

	//计算体积，并输出
	long size = length*width*height;
	printf("cube body size is %ld\n", size);

	return 0;
}