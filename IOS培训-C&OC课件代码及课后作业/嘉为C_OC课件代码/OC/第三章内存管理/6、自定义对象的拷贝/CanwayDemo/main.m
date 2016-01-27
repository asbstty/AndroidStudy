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
    XiyouRole *helper = [[XiyouRole alloc] initWithName:@"观世音" helper:nil];
    
    XiyouRole *role = [[XiyouRole alloc] initWithName:@"孙悟空" helper:helper];  //引用计数为1
    
    NSLog(@"%lu", helper.retainCount);
    
    XiyouRole *role2 = [role copy];
    role2.helper.name = @"如来佛";
    NSLog(@"%p %p", role.helper, role2.helper);
    
    NSLog(@"%@", role);
    NSLog(@"%@", role2);
    
    NSLog(@"%lu", helper.retainCount);
    
    [helper release];
    
    [role2 release];
    [role release];
    
    return 0;
}
