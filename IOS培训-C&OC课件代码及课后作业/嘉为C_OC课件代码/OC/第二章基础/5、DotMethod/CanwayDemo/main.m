//
//  main.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XSStudent.h"


int main(int argc, char * argv[]) {
    //初始化一个实例
    XSStudent *stu = [[XSStudent alloc] init];
    
    //给实例采用点语法赋值
    stu.name = @"小明";
    stu.age = 22;
    stu.score = 98;
    
    //使用点语法获取对象的值
    NSString *name = stu.name;
    NSUInteger age = stu.age;
    float score = stu.score;
    
    //输出成绩
    NSLog(@"%@ 年龄：%lu, 成绩:%.2f", name, age, score);

    //采用方法赋值
    [stu setName:@"小华"];
    [stu setAge:25];
    [stu setScore:99.5];
    
    //使用方法语法获取对象的值
    name = [stu name];
    age = [stu age];
    score = [stu score];
    
    //输出成绩
    NSLog(@"%@ 年龄：%lu, 成绩:%.2f", name, age, score);

    
    return 0;
}
