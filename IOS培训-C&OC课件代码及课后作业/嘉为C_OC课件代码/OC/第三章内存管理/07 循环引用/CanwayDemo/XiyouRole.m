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
        _helper = helper;
        NSLog(@"%@ %s",_name, __FUNCTION__);
    }
    
    return self;
}

-(void)dealloc{
    NSLog(@"角色：%@ %s",_name, __FUNCTION__);
   
    [super dealloc];
}

-(NSString *)description{
    return [NSString stringWithFormat:@"角色：名字：%@，helper: %@", self.name, self.helper.name];
}

@end
