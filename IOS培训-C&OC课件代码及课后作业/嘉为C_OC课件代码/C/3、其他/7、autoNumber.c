//
// 学习使用auto定义变量的用法
// canway
//

#include <stdio.h>
#include <stdlib.h>
int main()
{
  int i,num;
  num=2;
  for(i=0;i<3;i++)
  {
    printf(" The num equal %d \n",num);
    num++;
    {
      auto int num=1;
      printf(" The internal block num equal %d \n",num);
      num++;
    }
  }
  return 0;
}