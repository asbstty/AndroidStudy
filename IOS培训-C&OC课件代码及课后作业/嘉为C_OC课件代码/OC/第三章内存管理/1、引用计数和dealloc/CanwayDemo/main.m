//
//  main.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//
// 演示生命周期从init开始，到dealloc销毁。
// 演示引用计数的增加很减少

#import <UIKit/UIKit.h>
#import "XiyouRole.h"


int main(int argc, char * argv[]) {
    
    XiyouRole *role = [[XiyouRole alloc] init];  //引用计数为1
    
    NSLog(@"引用计数：%ld",[role retainCount]); 
    
    [role retain];  //使引用计数+1
    NSLog(@"引用计数：%ld",[role retainCount]);
    
    [role retain];  //使引用计数+1
    NSLog(@"引用计数：%ld",[role retainCount]);
    
    [role release]; //使引用计数-1
    NSLog(@"引用计数：%ld",[role retainCount]);
    
    [role release]; //使引用计数-1
    NSLog(@"引用计数：%ld",[role retainCount]);
    
    [role release];  //引用计数为0,对象会自动销毁掉，销毁之前会调用dealloc方法
    
    
    return 0;
}
