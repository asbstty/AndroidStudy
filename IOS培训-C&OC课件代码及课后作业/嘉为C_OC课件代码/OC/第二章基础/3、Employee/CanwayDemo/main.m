//
//  main.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XSEmployee.h"


int main(int argc, char * argv[]) {

    //调用实例方法
    [XSEmployee showUsage];
    
    //alloc在内存中申请一块内存区域，来存储对象的信息
    //调用自定义构造
    XSEmployee *employee = [[XSEmployee alloc] initWithName:@"李雷" department:@"人事部" index:@"A03"] ;
    
    //调用方法
    [employee working];
    
    //设置名字和成绩
    [employee setName:@"韩梅梅"];
    [employee setDepartment:@"研发部"];
    [employee setIndex:@"B01"];
    
    NSString *name = [employee getName];
    NSLog(@"name = %@ %lu ", name, [name length]);
    
    //调用显示个人信息的方法，和上面的比较
    [employee working];
    
    
    return 0;
}
