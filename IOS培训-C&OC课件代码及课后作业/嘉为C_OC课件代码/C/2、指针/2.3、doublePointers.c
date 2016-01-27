//
// 演示双重指针
// canway
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>


//申请3个指针 ，每个指针指向的字符串长度不等
void testDoublePointers()
{
    char rawNames[3][10] = {"Jimy", "Green","Tom"};

    char *names[3];
    for(int i=0; i<3; i++){
        names[i] = (char *)malloc(sizeof(char)*(strlen(rawNames[i])+1));
        strcpy(names[i], rawNames[i]);
    }

    for(int i=0; i<3; i++){
        printf("%s\r\n",names[i]);
        free(names[i]);
    }
}

//申请若干指针，每个指针指向长度为2的字符串
void testDoublePointers2()
{
    char rawNames[2][3] = {"Ji", "To"};

    char **names = (char **)malloc(sizeof(char*)*2);
    for(int i=0; i<2; i++){
        names[i] = malloc(sizeof(char)*(strlen(rawNames[i])+1));
        strcpy(names[i], rawNames[i]);
    }

    for(int i=0; i<2; i++){
        printf("%s\r\n",names[i]);
        free(names[i]);
    }

    free(names);
}

int main(){
    testDoublePointers2();

    return 0;
}