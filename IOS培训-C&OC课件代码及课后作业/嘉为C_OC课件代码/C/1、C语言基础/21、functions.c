//
// 演示函数声明和调用
// canway
//

#include <stdio.h>

//函数的定义
/*
返回值类型  函数名(形式参数列表)
{
     函数体
}
*/

//求原型的面积
float area(float r)
{
	float result = r * r * 3.14;
	
	printf("调用了area函数 \n");
	
	return result;
}

//求和函数，有2个参数
int sum(int a, int b)
{
    float result = a + b;
    printf("调用了sum函数 \n");
	return result;
}

/* 
//函数名必须是唯一的，不能重复定义，重复定义，就会编译错误
int sum() {
}
*/

//没有参数，也没有返回值
void usage()
{
    printf("This is usage function\n");
}

int main()
{
    //调用没有参数，也没有返回值的函数
    usage();
    
	//1.计算园的面积，不使用函数
	float r = 10.0;
	float result = 3.14 * r * r;
    printf("r=10.0 area=%f\n", result);

    //使用函数来求面积
	float result1 = area(r);
	printf("r=10.0,area = %f\n",result1);
	
    //用函数的方式来求和
	int result3 = sum(10,20);
	printf("总和:%d\n",result3);
		
	return 0;
}

