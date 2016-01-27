//
//  main.m
//  HelloWorld
//
//  Created by jinhong on 15/11/19.
//  Copyright © 2015年 Canway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XSStudent.h"

//NSArray的样例代码
void aboutNSArray(){
    //每个元素都可以是不同的类型
    NSArray *array = [[NSArray alloc] initWithObjects:@"123",
                      [NSNumber numberWithInt:222],
                      [[XSStudent alloc] init],
                      nil];
    //循环输出每个元素
    for(NSObject *obj in array){
        NSLog(@"item in array, obj=%@ type=%@", obj, [obj class]);
    }
    
    //查找元素的下标
    NSUInteger index = [array indexOfObject:@"123"];
    NSLog(@"%@, 123 is at %d", array, index);
    
    //查找不存在的元素的下标，记得校验是否合法
    index = [array indexOfObject:@"1234"];
    NSLog(@"%@, 1234 is at %d", array, index);
    
    //使用枚举器来循环打印每个子对象
    NSLog(@"-------enumlator-------");
    NSEnumerator *enumlator = [array objectEnumerator];
    id obj;
    while (obj = [enumlator nextObject]) {
        NSLog(@"item in array, obj=%@ type=%@", obj, [obj class]);
    }
    NSLog(@"-------enumlator end -------");
    
    //下标方式访问所有元素
    NSLog(@"-------下标访问-------");
    for(NSUInteger i=0; i<array.count; i++){
        obj = [array objectAtIndex:i];
        NSLog(@"item in array, obj=%@ type=%@", obj, [obj class]);
    }
    NSLog(@"-------下标访问 end -------");
    
    //block方式枚举
    [array enumerateObjectsUsingBlock:^(id  obj, NSUInteger idx, BOOL * stop) {
        NSLog(@"item in array, obj=%@ type=%@", obj, [obj class]);
        if(idx == 1){
            *stop = YES;
        }
    }];
    NSLog(@"-------block end -------");
    
    [array arrayByAddingObject:@"new obj"];
    //循环输出每个元素
    for(NSObject *obj in array){
        NSLog(@"item in array, obj=%@ type=%@", obj, [obj class]);
    }
    NSLog(@"------- 白添加数据了 -------");
    
    array = [array arrayByAddingObject:@"new obj"];
    //循环输出每个元素
    for(NSObject *obj in array){
        NSLog(@"item in array, obj=%@ type=%@", obj, [obj class]);
    }
    NSLog(@"------- 有新数据了 -------");
}

//NSMutableArray的样例代码
void aboutNSMutableArray(){
    NSMutableArray *marray = [[NSMutableArray alloc] init];
    [marray addObject:@"123"];
    [marray addObject:[[XSStudent alloc] init]];
    [marray addObject:@"123"];
    
    //循环输出每个元素
    for(NSObject *obj in marray){
        NSLog(@"item in array, obj=%@ type=%@", obj, [obj class]);
    }
    NSLog(@"------- marray数组的元素 -------");
    
    
    [marray removeObject:@"123"];
    //循环输出每个元素
    for(NSObject *obj in marray){
        NSLog(@"item in array, obj=%@ type=%@", obj, [obj class]);
    }
    NSLog(@"------- 删除了数组中的123元素 -------");
    
    
    [marray insertObject:@"234" atIndex:0];
    //循环输出每个元素
    for(NSObject *obj in marray){
        NSLog(@"item in array, obj=%@ type=%@", obj, [obj class]);
    }
    NSLog(@"------- 插入元素后 -------");
    
    
    [marray exchangeObjectAtIndex:0 withObjectAtIndex:1];
    //循环输出每个元素
    for(NSObject *obj in marray){
        NSLog(@"item in array, obj=%@ type=%@", obj, [obj class]);
    }
    NSLog(@"------- 交换元素后 -------");
    
    NSEnumerator *enumerator = [marray reverseObjectEnumerator];
    id obj;
    while(obj = [enumerator nextObject]){
        NSLog(@"item in array, obj=%@ type=%@", obj, [obj class]);
        
        [marray removeLastObject];
    }
    NSLog(@"------- 倒序访问数组，然后从尾部删除所有元素 -------");
    
    //循环输出每个元素
    for(NSObject *obj in marray){
        NSLog(@"item in array, obj=%@ type=%@", obj, [obj class]);
    }
    NSLog(@"------- 最后一次输出了 -------");
}

int main(int argc, char * argv[]) {
    aboutNSArray();
    
//    aboutNSMutableArray();
    
    //trick
    NSArray *array = [@"this is a test" componentsSeparatedByString:@" "];
    
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"item in array, obj=%@", obj);
    }];
    
    return 0;
}
