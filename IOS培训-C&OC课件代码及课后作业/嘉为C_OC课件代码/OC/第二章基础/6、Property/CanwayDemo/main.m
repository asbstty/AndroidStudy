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
    
    //使用点语法获取对象的值
    NSString *name = stu.name;
    NSUInteger age = stu.age;
    
    //输出成绩
    NSLog(@"%@ 年龄：%lu", name, age);

    NSLog(@"-----------------------");//无意义的分割线
    
    //采用方法赋值
    [stu setName:@"小华"];
    [stu mySetAge:25];//这里有重定义，请到声明中查看
    
    //使用方法语法获取对象的值
    name = [stu name];
    age = [stu age];
    
    //输出成绩
    NSLog(@"%@ 年龄：%lu,", name, age);
    
    NSLog(@"-----------------------");//无意义的分割线
    
    //输出个人信息
    [stu showInfo];
    
    return 0;
}
