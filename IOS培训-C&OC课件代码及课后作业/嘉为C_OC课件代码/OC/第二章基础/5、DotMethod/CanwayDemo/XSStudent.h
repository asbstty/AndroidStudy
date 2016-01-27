//
//  XSStudent.h
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//
#import <Foundation/Foundation.h>

//姓名	年龄	分数	班级
@interface XSStudent : NSObject
{
    NSString *_name;    //姓名
    NSUInteger _age;   //年龄
    float _score;       //分数
}

- (void)setName:(NSString *)name;
- (void)setAge:(NSUInteger)age;
- (void)setScore:(float)score;


- (NSString *)name;
- (NSUInteger)age;
- (float)score;

@end
