//
//  Sunwukong.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import "Sunwukong.h"

//孙悟空类
@implementation Sunwukong

-(id)init{
    self  = [super init];
    if(self){
        self.name = @"孙悟空";
        self.ability = 99999;
    }
    
    return self;
}

//覆盖掉打斗方法
-(void)fighting{
    NSLog(@"我乃%@, 战力%d,妖怪休走，吃俺老孙一棒！", self.name, self.ability);
}

@end
