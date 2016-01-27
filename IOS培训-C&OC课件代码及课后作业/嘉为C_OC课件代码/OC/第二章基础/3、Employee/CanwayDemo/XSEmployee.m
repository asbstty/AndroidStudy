//
//  XSEmployee.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import "XSEmployee.h"

@implementation XSEmployee

//缺省构造
-(id)init{
    return [self initWithName:@"No one" department:@"None" index:@"-1"];
}

//实例化方法
-(id)initWithName:(NSString *)name department:(NSString *)department index:(NSString *)index{
    self = [super init];
    if(self){
        _name = name;
        _department = department;
        _index = index;
    }
    
    return self;
}

//设置名字
-(void)setName:(NSString *)name{
    _name = name;
}

//获取名字
-(NSString *)getName{
    return _name;
}

//设置部门
-(void)setDepartment:(NSString *)department{
    _department = department;
}

//获取部门
-(NSString *)getDepartment{
    return _department;
}

//设置工号
-(void)setIndex:(NSString *)index{
    _index = index;
}

//获取工号
-(NSString *)getIndex{
    return _index;
}


//工作
-(void)working{
    NSLog(@"我是：%@， 所在部门：%@, 工号%@", _name, _department, _index);
}


//类方法
+(void)showUsage{
    NSLog(@"请调用 -(id)initWithName:(NSString *)name department:(NSString *)department index:(NSString *)index 方法来初始化一个实例。");
}

@end



