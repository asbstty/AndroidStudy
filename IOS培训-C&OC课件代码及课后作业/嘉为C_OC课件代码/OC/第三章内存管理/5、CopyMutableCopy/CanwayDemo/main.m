//
//  main.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <UIKit/UIKit.h>


int main(int argc, char * argv[]) {
    
    //__________________________对数组进行retain_____________________________
    
    NSMutableArray *array1 = [NSMutableArray arrayWithObjects:@"one",@"two", nil];
    //retain只是引用计数+1,没有创建新的对象
    //array1与array2指针相同，指向同一个对象
    NSMutableArray *array2 = [array1 retain];
    
    NSLog(@"array1 addr=%p, array2 addr=%p", array1, array2);
    if (array1 == array2) {
        NSLog(@"array1 == array2");
        NSLog(@"array1的引用计数：%ld",array1.retainCount);
    }
    [array2 release];
    [array1 release];
    
    //__________________________对数组进行copy_____________________________
    
    NSMutableArray *array3 = [NSMutableArray arrayWithObjects:@"one",@"two", nil];
    [array3 retain];  //引用计数:2
    
    //复制对象，创建一个新的副本对象
    NSArray *array4 = [array3 copy]; //array2计数为：1，是新创建出来的对象
    
    NSLog(@"array3 addr=%p, array4 addr=%p", array3, array4);
    if (array3 != array4) {
        NSLog(@"array3 != array4,是两个对象");
        
        NSLog(@"array3的引用计数：%ld",array3.retainCount);
        NSLog(@"array4的引用计数：%ld",array4.retainCount);
    }
    [array3 release];
    [array3 release];
    [array4 release];
    
    //总结，copy和mutableCopy出来的array是真的进行了复制，里面的对象，都是同一个对象。
    //所以说，数组内的对象都被进行了浅拷贝。
    
    //__________________________copy与mutableCopy的区别_____________________________
    //     copy与 mutableCopy都是复制对象，都能复制一个新的副本对象出来
    //     copy复制出来的对象，是不可变的对象
    //     mutableCopy复制出来的对象，是可变的对象
    
    NSMutableArray *array5 = [NSMutableArray arrayWithObjects:@"one",@"two", nil];
    //mutableCopy 复制出来的对象是可变
    NSMutableArray *array6 = [array5 mutableCopy];
    [array6 addObject:@"three"];
    
    //添加成功，上面那些copy出来的，不能添加元素
    NSLog(@"array6=%@",array6);
    
    
    NSNumber *number = @123;
    NSNumber *number2 = [number copy];
    NSLog(@"number = %d number copy = %d", [number intValue], [number2 intValue]);
    
    //    NSNumber没有实现NSMutableCopying协议,所以如果执行到这里，会挂掉
    NSNumber *no2 = [number mutableCopy];  //错误
    
    NSLog(@"%d %d", [number intValue], [no2 intValue]);

    return 0;
}
