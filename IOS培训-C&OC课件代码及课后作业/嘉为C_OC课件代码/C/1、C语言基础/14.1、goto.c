/*

	演示goto的使用
    canway

*/

#include <stdio.h>


int main()
{
	printf("are you ready to goto?\n");
	goto firstGOTO;//跳转到标号为firstGOTO的语句
    
    //这一行代码打酱油了，没机会执行了！
	printf("this line will not be printed\n");
    
middleGOTO://这是标号
    printf("this line is middleGOTO\n");
    goto endGOTO;//跳转到endGOTO
    
firstGOTO://这是标号
	printf("this is firstGOTO\n");
    goto middleGOTO;//跳转到middleGOTO

endGOTO://这是标号
    printf("this is endGOTO，oh my god!\n");
    
    //总结！尽量不要使用goto！
    
	return 0;
}
