//
// 双指针
// canway
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

bool getPtr2(char** p)
{
    char *tmp;
    tmp = (char *)malloc(sizeof(char) * 20);
    strcpy(tmp, "hello world");
    
    *p = tmp;
    
    printf("%p, %p, %p, %p, %p\n", &p,  p, *p, &tmp, tmp);
    
    return true;
}

char *getPtr()
{
    char *tmp;
    tmp = (char *)malloc(sizeof(char) * 20);
    strcpy(tmp, "hello world");
    printf("%p %p %s\n",&tmp, tmp, tmp);
    return tmp;
}

int main() {
    
    //第一种用法
    char **ptr;
    char *tmp = getPtr();
    ptr = &tmp;
    printf("%p, %p, %p %s, %c\n", &ptr, ptr, *ptr, *ptr, **ptr);
    
    //这2行是无聊了
    char ***p3 = &ptr;
    printf("%p, %p, %p %p\n", &p3, p3, *p3, **p3);
    
    free(*ptr);
    *ptr = NULL;
    
    
    printf("-----------------\n");
    
    //第二种用法，
    char *ptr2;
    getPtr2(&ptr2);
    printf("%p,%p, %s, %c\n", &ptr2, ptr2,  ptr2, *ptr2);
    free(ptr2);
    
    
    printf("---------------\n");
    
    //第三种用法。
    char *ptr3;
    char *tmp3 = getPtr();
    ptr3 = (char *)&tmp3;
    printf("%p, %p, %p %s, %c\n", &ptr3, ptr3, *(char **)ptr3, *(char **)ptr3, **(char **)ptr3);
    
    free(*(char **)ptr3);
    *(char **)ptr3 = NULL;
    
    return 0;
}

