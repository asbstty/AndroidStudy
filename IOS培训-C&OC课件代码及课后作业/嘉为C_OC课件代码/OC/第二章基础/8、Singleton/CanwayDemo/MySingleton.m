//
//  MySingleton.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import "MySingleton.h"


static MySingleton *instacne = nil;

@implementation MySingleton

//非线程安全的单例实现。
+ (MySingleton *)shareInstance {
    if (instacne == nil) {
        instacne = [[MySingleton alloc] init];
    }
    
    return instacne;
}

//线程安全的单例实现
+ (MySingleton *)shareInstance2{
    @synchronized(self) {
        if (instacne == nil) {
            instacne = [[MySingleton alloc] init];
        }
    }
    
    return  instacne;
}

//线程安全的单例实现
+ (MySingleton *)shareInstance3{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        if (instacne == nil) {
            instacne = [[MySingleton alloc] init];
        }
    });
    
    return instacne;
}


//构造的时候，调用一次。如果本函数有实现，则shareInstance函数是线程安全的方法。
+ (id)allocWithZone:(NSZone *)zone {
    @synchronized(self)  {
        if (instacne == nil) {
            instacne = [super allocWithZone:zone];
            return instacne;
        }
    }
    
    NSAssert(NO, @"这是不可能的");
    return nil;
}

#pragma remark --如果想彻底实现单例的类，覆盖如下接口，防止使用者误操作

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

- (id)retain {
    return self;
}

- (NSUInteger)retainCount {
    return UINT_MAX;
}

- (oneway void)release {
}

- (id)autorelease {
    return self;
}


@end
