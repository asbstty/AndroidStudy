//
//  main.m
//  NSStringDemo
//
//  Created by jinhong on 16/1/12.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char * argv[]) {
    //___________________NSNumber的使用___________________
    
    //1.封包。 创建NSNumber(包装基本数据类型)
    NSNumber *intNumber = [NSNumber numberWithInt:100];
    NSNumber *floatNumber = [NSNumber numberWithFloat:9.8f];
    NSNumber *longNumber = [NSNumber numberWithLong:145677766666];
    NSNumber *boolNumber = [NSNumber numberWithBool:YES];
    
    NSArray *array = @[intNumber,floatNumber,longNumber,boolNumber];
    NSLog(@"array=%@",array);
    
    //2.解包
    int intValue = [intNumber intValue];
    float floatValue = [floatNumber floatValue];
    long longValue = [longNumber longValue];
    BOOL boolValue = [boolNumber boolValue];
    
    //3.新语法创建Number对象
    NSNumber *intNumber1 = @12;
    NSNumber *floatNumber1 = @12.0f;
    NSNumber *longValue1 = @19929292992;
    NSNumber *boolValue1 = @YES;
    NSNumber *charValue = @'a';
    
   
    
    //3.NSNull对象
    NSNull *n1 = [NSNull null];
    NSNull *n2 = [NSNull null];
    NSArray *arrayNull = @[n1,n2];
    NSLog(@"%@",arrayNull);
    
    for (id item in arrayNull) {
        //判断数组中的对象是否为一个NSNull对象，如果是，则过滤掉
        if (item == [NSNull null]) {
            continue;
        }
        
    }

    return 0;
}
