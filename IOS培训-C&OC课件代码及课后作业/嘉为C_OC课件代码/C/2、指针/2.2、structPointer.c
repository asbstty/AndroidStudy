//
// 演示结构体和指针
// canway
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define max_len 256

//声明一个结构体，并重定义类型为DVDStruct
typedef struct 
{
	int rating;
	char name[max_len];
	char time[max_len];
}DVDStruct;

//打印dvd信息的函数
void printDvdInfo(DVDStruct dvd){
	printf("DVD info: rating=%d,name=%s, time=%s\n", dvd.rating, dvd.name, dvd.time);
}

//修改dvd信息的函数，参数是传引用
void changeDvdInfo(DVDStruct &dvd){
	strcpy(dvd.name, "new name");
}

//修改dvd信息，参数是传指针
void changeDvdInfoP(DVDStruct *dvd){
	strcpy(dvd->name, "new name");
}

int main()
{
	//申请内存
	DVDStruct *stc = (DVDStruct *)malloc(sizeof(DVDStruct));

	//初始化数据
	(*stc).rating = 20;
	strcpy((*stc).name, "long");
	strcpy((*stc).time, "60min");

	printDvdInfo(*stc);
	
	changeDvdInfo(stc);
	printDvdInfo(*stc);
	
	changeDvdInfoP(stc);
	printDvdInfo(*stc);

	//释放内存，并置空指针
	free(stc);
	stc = NULL;

	return 0;
}