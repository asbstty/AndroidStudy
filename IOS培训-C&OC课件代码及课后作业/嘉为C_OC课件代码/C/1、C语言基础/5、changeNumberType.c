#include <stdio.h>

int main() {
	
	//1.自动转换
	int a = 10;
	
	//相同的数据类型才可以进行运算
	float result = a + 10.5;  //10.0 + 10.5
	
	//常见的自动类型转换

//int类型的10会自动提升为float类型的10.0	
	//float b = 10 + 3.14f; //提升之后等价于float b = 10.0f + 3.14f;
	//int b = 10 + 3.14f;
	
	double c = 10.3f + 5.7; //float 10.3提升为double类型
	
	
	//运算结果为3.0, 因为int类型与int类型运算，结果还是int类型
	float f = 10 / 3;
	
	float d = 10 / 3.0;
	
	printf("f = %f,d=%f \n",f,d);
	
	
	//2.强制类型转换
	int e = 10.5;
	printf("e = %d \n",e);
	
	
	int e2 = (int)10.5;
	
	
	
	return 0;
}