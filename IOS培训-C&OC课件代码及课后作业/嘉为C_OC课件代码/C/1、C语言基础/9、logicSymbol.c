
/*

  测试逻辑运算符
  测试逗号运算符
  canway

*/

#include <stdio.h>
#include <stdbool.h>

int main()
{
    bool first  = true;
    bool second = true;
    printf("first = %d second = %d\n", first, second);
    // 1 1 0
    printf("first && second = %d\nfirst || second = %d\n!first = %d\n", first && second, first || second, !first);


    first  = false;
    second = true;
    printf("first = %d second = %d\n", first, second);
    // 0  1  1
    printf("first && second = %d\nfirst || second = %d\n!first = %d\n", first && second, first || second, !first);

    first  = false;
    second = false;
    printf("first = %d second = %d\n", first, second);
    //0 0 1
    printf("first && second = %d\nfirst || second = %d\n!first = %d\n", first && second, first || second, !first);
    

    int a = 1;
    //从左侧到右侧，来逐个执行。
    //返回的时候，返回最右侧的,返回99
    int result = (a += 1, a *= 2,  99);
    printf("%d %d\n", a, result);

    a = 1;
    result = (a += 1, a *= 2,  a += 2);
    //这里输出6 6 最后这里返回的是右侧的表达式执行以后，变量的结果
    printf("%d %d\n", a, result);

    return 0;
}
