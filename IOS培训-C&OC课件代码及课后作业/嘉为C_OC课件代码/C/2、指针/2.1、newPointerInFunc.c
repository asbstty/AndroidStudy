//
// 演示指针的申请空间的错误演示
// canway
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//申请指针，传入指针作为参数
//其实这里的ptr只是指向了main函数转入参数的地址了而已，ptr是个新的指针
void newChar(char *ptr){
    //因为指向同一块内存，所以这里添加字符串是可以的
    strcat(ptr, " world");
    
	printf("newChar:ptr add %p %s\n", ptr, ptr);
    //其实这里是个参数ptr申请了一块空间
	ptr = (char *)malloc(sizeof(char)*10);

	printf("newChar:ptr add %p\n", ptr);
}

int main()
{
    //声明一个指针，并分配地址
    char *ptr = (char *)malloc(sizeof(char)*20);
    strcpy(ptr, "hello");
    
    //输出指针的地址
	printf("main:ptr add %p %s\n", ptr, ptr);

    //用错误的方法去申请地址
	newChar(ptr);
    
    //指针依然是原来的值
    printf("main:ptr add %p %s\n", ptr, ptr);
    
	return 0;
}