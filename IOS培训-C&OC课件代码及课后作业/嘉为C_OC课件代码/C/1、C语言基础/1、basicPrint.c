//
//将每种数据类型都定义一个变量，赋上值，然后分别打印。
//canway
//

#include <stdio.h>


int main() {
	char c = 'A';  //占用1个字节
	printf("字符型: %c \n",c);
	
	short s = 10;  //2个字节
	printf("短整型：%d \n",s);
	
	int i = 120;   //4个字节
	printf("整型: %d \n ",i);
	
	long l = 10020; //4个字节   long long 占用8个字节
	printf("长整型：%ld \n",l);
	
	float f = 10.5;  //4个字节
	printf("单精度浮点型：%f \n",f);
	
	
	double d = 23.222; //8个字节
	printf("双精度浮点型：%lf \n",d);
	
	
	
	return 0;
}