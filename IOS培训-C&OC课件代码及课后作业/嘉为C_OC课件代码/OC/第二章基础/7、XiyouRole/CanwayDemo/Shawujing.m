//
//  Shawujing.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import "Shawujing.h"

//沙僧
@implementation Shawujing

-(id)init{
    self  = [super init];
    if(self){
        self.name = @"沙僧";
        self.ability = 6666;
    }
    
    return self;
}

//覆盖掉打斗方法
-(void)fighting{
    NSLog(@"我乃%@, 战力%d,妖怪休走，吃俺一铲！", self.name, self.ability);
}

@end
