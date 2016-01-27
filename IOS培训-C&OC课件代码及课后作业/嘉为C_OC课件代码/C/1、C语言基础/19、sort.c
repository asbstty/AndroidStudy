//
// 排序算法，用来演示for循环的用法。
// canway
//

#include <stdio.h>
#include <stdlib.h>

int main()
{
    //声明一个数组
	int numbers[] = {3,2,4,5,6,8,11,9,20,14};
    //得到数组中元素的个数
	int count = sizeof(numbers)/sizeof(int);

    //打印出原始数组中的元素
	for(int j=0; j<count; j++)
	{
		printf("%d ", numbers[j]);
	}	
	printf("\n------raw numbers------------\n\n");

    //开始排序
	for(int i=0; i<count; i++){
        //从第i个元素开始比较，找出更大的元素
		for(int k=i; k<count; k++){
            //交换大的元素到前面
			if(numbers[i] < numbers[k]){
				int tmp = numbers[i];
				numbers[i] = numbers[k];
				numbers[k] = tmp;
			}
		}
        
        //输出每一次比较以后的结果
		for(int j=0; j<count; j++)
		{
			printf("%d ", numbers[j]);
		}		
		printf("\n-----this is %d times sort result-----\n", i+1);
	}

    //输出最终排序好的结果
	printf("\n------here is finnally result!!!------------\n");
	for(int j=0; j<count; j++)
	{
		printf("%d ", numbers[j]);
	}		
    //输出一个换行，让光标到下一行
    printf("\n");
    
	return 0;
}