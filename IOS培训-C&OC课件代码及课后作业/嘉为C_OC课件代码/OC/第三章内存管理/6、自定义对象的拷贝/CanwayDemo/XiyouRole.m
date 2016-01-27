//
//  XiyouRole.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import "XiyouRole.h"

@implementation XiyouRole

-(id)init{
    return [self initWithName:@"无名氏" helper:nil];
}


-(id)initWithName:(NSString *)name helper:(XiyouRole *)helper{
    self = [super init];
    if(self) {
        _name = name;
        _helper = [helper retain];
    }
    
    NSLog(@"%s --- 进入init函数，创建对象", __FUNCTION__);
    return self;
}

-(void)dealloc{
    NSLog(@"%s --- 进入dealloc函数，准备释放对象", __FUNCTION__);
    if(_helper != nil){
        [_helper release];
    }
    [super dealloc];
}

- (id)copyWithZone:(NSZone *)zone {
    //浅拷贝
    
    //创建副本对象
//    XiyouRole *role = [[self class] allocWithZone:zone];
//    role.name  = _name;
//    role.helper = _helper;
    
    //深拷贝
    //创建副本对象
    XiyouRole *role = [[self class] allocWithZone:zone];
    role.name  = _name;
    XiyouRole *helper = [_helper copy];
    role.helper = helper;
    [helper release];
    
    return role;
}

-(NSString *)description{
    return [NSString stringWithFormat:@"名字：%@，helper: %@", self.name, self.helper.name];
}

@end
