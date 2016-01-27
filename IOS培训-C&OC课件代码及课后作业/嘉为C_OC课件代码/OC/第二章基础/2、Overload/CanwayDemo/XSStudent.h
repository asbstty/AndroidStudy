//
//  XSStudent.h
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSStudent : NSObject{
    NSString *_level;//成绩
    NSString *_name;//名字
    NSString *_remark;//备注
}

//设置名字
-(void)setName:(NSString *)name;

//获取名字
-(NSString *)getName;

//设置成绩
-(void)setLevel:(NSString *)level;

//设置名字和备注
-(void)setInfo:(NSString *)name remark:(NSString *)remark;

//获取成绩
-(NSString *)getLevel;

//设置备注
-(void)setRemark:(NSString *)remark;

//获取备注
-(NSString *)getRemark;

//设置个人信息，不隐藏签名关键字
-(void)setInfo:(NSString *)name level:(NSString *)level;

//设置个人信息，演示隐藏签名关键字
-(void)setInfo:(NSString *)name :(NSString *)level :(NSString *)remark;



//显示个人信息
-(void)showPersonInfo;
@end
