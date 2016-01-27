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
#import "Student.h"


int main(int argc, char * argv[]) {
    
    //是循环引用的案例
    {
        Student *hanmeimei = [[Student alloc] initWithName:@"韩梅梅" helper:nil];
        Student *lilei = [[Student alloc] initWithName:@"李雷" helper:nil];  

        //这里李雷被+1
        hanmeimei.helper = lilei;
        NSLog(@"%lu %lu", lilei.retainCount, hanmeimei.retainCount);
        
        //韩梅梅被+1
        lilei.helper = hanmeimei;
        NSLog(@"%lu %lu", lilei.retainCount, hanmeimei.retainCount);
        
        [lilei release];
        [hanmeimei release];
    }
    
    //不是循环引用的案例
    {
        XiyouRole *helper = [[XiyouRole alloc] initWithName:@"观世音" helper:nil];
        XiyouRole *role = [[XiyouRole alloc] initWithName:@"孙悟空" helper:helper];
     
        //因为是assign，引用计数没发生变化
        role.helper = helper;
        helper.helper = role;
        
        NSLog(@"%lu %lu", role.retainCount, helper.retainCount);
        
        [helper release];
        [role release];
    }
    
    return 0;
}
