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
    self = [super init];
    if(self) {
        
    }
    
    NSLog(@"%s --- 进入init函数，创建对象", __FUNCTION__);
    return self;
}

-(void)dealloc{
    NSLog(@"%s --- 进入dealloc函数，准备释放对象", __FUNCTION__);
    
    [super dealloc];
}


@end
