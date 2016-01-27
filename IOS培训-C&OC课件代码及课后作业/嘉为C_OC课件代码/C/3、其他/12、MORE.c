//
// 演示typedef方法
// canway
//

#include <stdio.h>

//1.typedef的作用
//给int类型取一个新的名字Integer

typedef int Integer;

//在别名的基础上再取别名
typedef float Float;
typedef Float MyFloat;

//2.typedef与指针
typedef char * String;

//3.typedef与结构体
struct MyPoint {
	float x;
	float y;
};

//给结构体类型struct MyPoint取个别名 Point
typedef struct MyPoint Point;


//定义结构体类型时就取个别名
typedef struct MyPoint2 {
	float x;
	float y;
} Point2;


//省略结构体类型名
typedef struct{
	float x;
	float y;
} Point3;


//4.typedef与枚举类型
enum Weather {
	sun = 100,  //晴天
	rainy, //雨天
	haze = 200  //雾霾	
};

typedef enum Weather Weather;


//4.typedef与函数指针
//使用typedef给函数指针类型取别名
//注意：这里的MySum不是变量，而是代表函数指针类型
typedef int (*MySum)(int a, int b);


int main() {
    //使用自定义的别名
	Integer i = 10;
	printf("i = %d \n",i);
    
    //使用自定义的别名
	MyFloat f = 10.2;
	printf("f = %f \n",f);
	
    
    //使用自定义的别名
	String s = "hello";
    printf("s = %s \n", s);
	
    //原始声明办法
	struct MyPoint p = {10,20};
    
    //使用别名
	Point p2 = {20,40};
	printf("x=%f,y=%f \n",p2.x,p2.y);
	
    //使用别名
	Point3 p3 = {20,40};
	printf("x=%f,y=%f \n",p3.x,p3.y);
	
	//声明该函数
	int sum(int a, int b);

	//函数指针指向sum
	MySum p4 = sum;
    //调用函数指针指向的函数
	p4(10,20);
	
	
	return 0;
}

//函数
int sum(int a, int b) {
	int c = a + b;
	
	printf("%d + %d = %d \n",a,b,c);
	
	return c;
	
}