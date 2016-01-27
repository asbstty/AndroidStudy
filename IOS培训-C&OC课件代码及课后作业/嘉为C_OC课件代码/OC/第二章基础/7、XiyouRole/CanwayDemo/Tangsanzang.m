//
//  Tangsanzang.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import "Tangsanzang.h"

@implementation Tangsanzang

//唐僧
-(id)init{
    self  = [super init];
    if(self){
        self.name = @"唐僧";
        self.ability = -9999;
    }
    
    return self;
}

//覆盖掉打斗方法
-(void)fighting{
    NSLog(@"我乃%@, 战力%d,施主，我战五渣都不是，你就高抬贵手，放我西去吧。阿弥陀佛。", self.name, self.ability);
}

@end
