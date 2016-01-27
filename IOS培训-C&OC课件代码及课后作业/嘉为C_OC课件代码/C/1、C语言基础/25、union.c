//
// 演示枚举类型
// canway
//
#include <stdio.h>

//工资的union
typedef union  {
    int boss;
    char employee;
}Salary;

int main() {
    //声明一个union
    Salary myboss;
    myboss.boss = 0xffee;
    
    //声明一个union
    Salary me;
    me.employee = 0xf;
    
    //我们发现他们2个的体积是一样的，取最大者
    printf("sizeof(myboss)=%lu sizeof(me)=%lu\n", sizeof(myboss), sizeof(me));
    
    //发现boss的数据是对的，employee的数据是和boss是重叠的
    printf("myboss.bos=%x myboss.employee=%x\n", myboss.boss, myboss.employee);
    
    //员工的数据，boss的数据是乱的，因为没初始化，employee的数据是对的
    printf("me.boss=%x me.employee=%x\n", me.boss, me.employee);
    
    
	return 0;
}
