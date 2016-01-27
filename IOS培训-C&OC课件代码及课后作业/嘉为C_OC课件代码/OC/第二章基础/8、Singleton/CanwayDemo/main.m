//
//  main.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//
//设计单例类的目的：限制这个类只能创建一个对象
//
// 单例的应用场景：
// 1.单例对象可以存储一些共享的信息，每个对象都能访问和修改
// 2.如果一个类的创建非常的耗费性能，那么这个类最好设计为单例，只创建一次节约性能


#import <UIKit/UIKit.h>
#import "MySingleton.h"

int main(int argc, char * argv[]) {
    
    //得到的单例都是一样的地址，是同一个对象
    MySingleton *ms1 = [MySingleton shareInstance];
    MySingleton *ms2 = [MySingleton shareInstance];
    MySingleton *ms3 = [MySingleton shareInstance2];
    NSLog(@"ms1 addr = %p, ms2 addr = %p, ms3 addr = %p", ms1, ms2, ms3);
    
    //返回的retainCount都是int的最大值。
    NSLog(@"%ld",[ms1 retainCount]);
    NSLog(@"%ld",[ms2 retainCount]);

    //释放不起作用，如果没有覆盖掉release方法，释放是有效的。因此，拿到的单例，最好不要释放。
    [ms1 release];
    NSLog(@"%ld",[ms1 retainCount]);
    
    //如果是没有覆盖掉release，这次释放，就会挂掉了
    [ms1 release];
    NSLog(@"%ld",[ms1 retainCount]);
    
    
    return 0;
}
