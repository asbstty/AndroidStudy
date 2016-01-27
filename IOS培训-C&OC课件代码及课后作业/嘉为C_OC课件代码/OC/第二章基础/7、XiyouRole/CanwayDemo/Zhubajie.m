//
//  Zhubajie.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import "Zhubajie.h"

//猪八戒类
@implementation Zhubajie

-(id)init{
    self  = [super init];
    if(self){
        self.name = @"猪八戒";
        self.ability = 8888;
    }
    
    return self;
}

//覆盖掉打斗方法
-(void)fighting{
    NSLog(@"我乃%@, 战力%d,妖怪休走，吃俺老朱一耙！", self.name, self.ability);
}
@end
