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

    //alloc在内存中申请一块内存区域，来存储对象的信息
    //调用init初始化一些数据
    
    XSStudent *stu = [[XSStudent alloc] init];
    
    //调用显示个人信息的方法
    [stu showPersonInfo];
    
    //设置名字和成绩
    [stu setName:@"小明"];
    [stu setLevel:@"C"];
    [stu setRemark:@"需要努力！"];
    
    //获取姓名和成绩，并打印显示
    NSString *name = [stu getName];
    NSString *level = [stu getLevel];
    NSString *remark = [stu getRemark];
    NSLog(@"姓名:%@, 成绩：%@, %@",name,level, remark);
    
    //调用显示个人信息的方法，和上面的比较
    [stu showPersonInfo];
    
    //调用隐藏签名关键字的方法，并输入信息
    [stu setInfo:@"小明" :@"A" :@"我骄傲！"];
    [stu showPersonInfo];
    
    //调用未隐藏签名关键字的方法，并输出信息
    [stu setInfo:@"小华" remark:@"我是小明同桌，我不骄傲"];
    [stu showPersonInfo];
    
    
    //调用OC的重载方法
    [stu setInfo:@"小李" level:@"B"];
    [stu showPersonInfo];
    
    return 0;
}
