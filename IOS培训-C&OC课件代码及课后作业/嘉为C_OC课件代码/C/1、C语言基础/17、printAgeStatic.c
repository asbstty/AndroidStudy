//
// 使用静态变量，打印生日
// canway
//

#include <stdio.h>
#include <stdlib.h>


void printAge()
{
	//声明一个静态变量，初始化为23
	static int age = 23;

	//声明2个变量，分别初始化
	int month = 12, day = 26;

	//每次调用的时候，静态变量和普通变量都自增，那么静态变量每次都会增加1，而普通变量，每次都是输出的原始值
	printf("his age is %d, birthday is month=%d day=%d\r\n", age++, month++, day++);
}


int main()
{
	//循环调用十次函数，演示静态变量的作用
	for(int i=0; i<10; i++){
		printAge();
	}

	return 0;
}