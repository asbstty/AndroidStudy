//
//  XSStudent.h
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface XSStudent : NSObject
{
}

//名字
@property(nonatomic, copy)NSString *name;
//年龄， 并且设置set方法为自定义方法mySetAge
@property(nonatomic, assign, setter=mySetAge:)int age;


//.m
//@synthesize name, age=_age;

//输出信息
-(void)showInfo;
@end
