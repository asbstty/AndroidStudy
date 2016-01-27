//
// 演示结构体声明
// canway
//
#include <stdlib.h>
#include <stdio.h>

//声明一个结构体类型
typedef struct _student
{   
    int score;
    char *name;
}Student;

int main()
{
    //声明一个结构体实例
    Student stu;
    
    //给结构体实例初始化信息
    stu.score = 100;
    stu.name = "Tom";
    
    //输出结构体信息
    printf("stu.score = %d, stu.name = %s, sizeof(Student)=%lu\n", stu.score, stu.name, sizeof(stu));
    
    //想一想我为什么输出结构体的体积
    
    //声明一个结构体实例,并初始化
    Student stu2 = {99, "Peter"};
    
    //输出结构体信息
    printf("stu2.score = %d, stu2.name = %s\n", stu2.score, stu2.name);
    
	return 0;
}