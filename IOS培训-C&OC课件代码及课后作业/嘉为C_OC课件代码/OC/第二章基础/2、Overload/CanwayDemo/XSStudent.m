//
//  XSStudent.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import "XSStudent.h"

@implementation XSStudent

-(id)init{
    self = [super init];
    if(self){
        _level = @"NO Level";
        _name = @"No one";
        _remark = @"没什么嘚瑟的";
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

//设置成绩
-(void)setLevel:(NSString *)level{
    _level = level;
}

//获取成绩
-(NSString *)getLevel{
    return _level;
}

//设置备注
-(void)setRemark:(NSString *)remark{
    _remark = remark;
}

//获取备注
-(NSString *)getRemark{
    return _remark;
}

//设置名字和备注
-(void)setInfo:(NSString *)name remark:(NSString *)remark{
    [self setName:name];
    [self setRemark:remark];
}

//设置个人信息，不隐藏签名关键字
-(void)setInfo:(NSString *)name level:(NSString *)level{
    [self setName:name];
    [self setLevel:level];
}

//设置个人信息，演示隐藏签名关键字
-(void)setInfo:(NSString *)name :(NSString *)level :(NSString *)remark{
    [self setName:name];
    [self setLevel:level];
    [self setRemark:remark];
}


//显示个人信息
-(void)showPersonInfo{
    NSLog(@"我是：%@， 我的成绩是：%@, %@", _name, _level, _remark);
}

@end
