/*
   关系运算符演示

   canway
*/
   
#include <stdio.h>

int main()
{
    //大于号
    if(3 > 4){
        printf("3 > 4 is true\n");
    }

    //小于号
    if(4 < 3){
        printf("4 < 3 is true\n");
    }
    
    //不等于号
    if(4 != 3){
        printf("4 != 3 is true\n");
    }
    
    //double类型，不要轻易直接比较，虽然号称能支持小数点后16位，但是请看结果
    double d1 = 1.23556687234;
    
    if(d1 == 1.23556687234){
        printf("d1 == 1.23556687234\n");
    }
    if(d1 != 1.23556687){
        printf("d1 != 1.23556687234\n");
    }
    if(d1 > 1.23556687){
        printf("d1 > 1.23556687234\n");
    }
    if(d1 < 1.23556687){
        printf("d1 < 1.23556687234\n");
    }
    
    //总结，double一般情况下，用一个极小数字当做差值来比较
    double e = 0.0000001;
    if(d1 - 1.23556687234 < e){
        printf("d1 is equal to 1.23556687234\n");
    }
    
	return 0;
}