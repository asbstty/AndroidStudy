//
// 演示枚举类型
// canway
//
#include <stdio.h>

//定义枚举类型
//枚举值默认是从0开始递增，也可以任意修改
enum Weather {
	sun = 100,  //晴天
	rainy, //雨天
	haze = 200  //雾霾
};  //枚举值的名称可以随意命名，符合标示的规则就可以

int main() {
    //函数在下面所以需要在这里写出声明
	void trip(enum Weather weather);
    
    //调用函数
	trip(rainy);
	
	//枚举值其实本质上就是一个数值，第一个枚举值默认是0，后面+1递增
    //但是这给第一个赋值了100， 那么现在sun就是100， rainy就是101
	printf("sun = %d \n",sun);
	printf("rainy = %d \n",rainy);
    
    //雾霾
	trip(200);  //等价于trip(haze);
	
	
	return 0;
}


//不使用枚举
/*
void trip(int weather) {
	
	//晴天
	if(weather == 1) {
		printf("穿短袖 \n");
	}
	//雨天
	else if(weather == 2) {
		printf("打伞 \n");
	}
	//雾霾
	else if(weather == 3) {
		printf("雾霾 \n");		
	}
	
}
*/

//使用枚举
void trip(enum Weather weather) {
	
	//晴天
	if(weather == sun) {
		printf("晴天，穿短袖 \n");
	}
		//雨天
	else if(weather == rainy) {
		printf("雨天，打伞 \n");
	}
	//雾霾
	else if(weather == haze) {
		printf("雾霾，请去北京感受 \n");
	}
	
}