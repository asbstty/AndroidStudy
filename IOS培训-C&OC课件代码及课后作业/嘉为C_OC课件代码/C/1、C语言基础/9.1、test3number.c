//
// 演示三目运算符
// canway
//

#include <stdio.h>
#include <stdlib.h>
int main()
{
    int score;
    char grade;
    printf("please input a score\n");
    scanf("%d",&score);
    //2个三目运算符的嵌套，如果大于等于90，就是A；否则的话，判断是否大于60，
    //大于等于60是B，其余都是C
    grade = (score>=90?'A':(score>=60?'B':'C'));
    printf("%d belongs to %c\n",score,grade);
    
    return 0;
}
