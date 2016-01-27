//
//  MySingleton.h
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject

//非线程安全的单例
+ (MySingleton *)shareInstance;

//线程安全的单例
+ (MySingleton *)shareInstance2;

//线程安全的单例
+ (MySingleton *)shareInstance3;

@end
