/*
	演示递归函数
 
	canway
 */

#include <stdio.h>
#include <stdlib.h>

//递归函数，打印出能被3整除的数字
void printNumberBy3(int number)
{
    //如果可以被3整除，就打印
	if(number%3 == 0){
		printf("%d can be devid by 3\r\n", number);
	}

    //如果参数大于三，就继续减一调用自身，这就是递归
	if(number > 3){
		printNumberBy3(--number);//这里用number--可以吗
	}
}


int main()
{
    //调用递归函数，获取100以内，可以被3整除的数字
	printNumberBy3(100);

	return 0;
}