//
//  main.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//
// 演示属性的内存控制

#import <UIKit/UIKit.h>
#import "XSEmployee.h"
#import "XSDepartment.h"


int main(int argc, char * argv[]) {
    XSEmployee *employee = [[XSEmployee alloc] initWithName:@"韩梅梅" department:@"人事部" index:@"A008"];  //引用计数为1
    NSLog(@"employee引用计数：%ld",[employee retainCount]);
    
    XSDepartment *department = [[XSDepartment alloc] init];
    department.employee = employee;
    
    NSLog(@"employee引用计数：%ld",[employee retainCount]);//使引用计数为2
    
    [employee working]; //此时没问题，他能working！
    [employee release]; //使引用计数-1
    NSLog(@"employee引用计数：%ld",[employee retainCount]);
    
    NSLog(@"------employee release以后，依然可以调用！----");
    [employee working]; //此时没问题，他还能working！
    [department showDepartmentInfo];//输出部门信息，员工信息依然无误
    
    [department release];  //引用计数为0, employee和department都会被销毁。
                           //请思考，谁先被销毁
    
    return 0;
}
