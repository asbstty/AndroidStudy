/*
     企业发放的奖金根据利润提成。
     利润低于或等于10万元时，奖金可提10%；
     利润高于10万元，低于20万元时，可提成15%；
     利润高于20万元，低于50万元时，可提成20%；
     利润高于50万元，低于100万元时，可提成25%；
     利润高于 100万元时，可提成30%；
     从键盘输入当月利润I，求应发放奖金总数？
 
     演示if else分支的应用
     canway
*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int profits;//利润
    int bonus;//奖金
    scanf("%d",&profits); 
   
    if(profits <= 100000)
    {
   		 bonus = profits*0.1;
    }
    else if(profits < 200000)
    {
       bonus = profits*0.15;
    }
    else if(profits < 500000)
    {
       bonus = profits*0.20;
    }
    else if(profits < 1000000)
    {
       bonus = profits*0.25;
    }
    else
    {
       bonus = profits*0.30;
    }
    
    printf("profilts = %d, bonus = %d, rates = %.0f %%\r\n",profits,bonus, bonus*100.0/profits);

    return 0;
}