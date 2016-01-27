//
//  XSEmployee.h
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSEmployee : NSObject{
    NSString *_name;//名字
    NSString *_department;//成绩
    NSString *_index;//备注
}

//实例化方法
-(id)initWithName:(NSString *)name department:(NSString *)department index:(NSString *)index;

//设置名字
-(void)setName:(NSString *)name;

//获取名字
-(NSString *)getName;

//设置部门
-(void)setDepartment:(NSString *)department;

//获取部门
-(NSString *)getDepartment;

//设置工号
-(void)setIndex:(NSString *)index;
//获取工号
-(NSString *)getIndex;


//工作
-(void)working;

//类方法
+(void)showUsage;
@end
