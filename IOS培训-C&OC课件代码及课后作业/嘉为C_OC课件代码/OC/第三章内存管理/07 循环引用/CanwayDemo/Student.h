//
//  Student.h
//  CanwayDemo
//
//  Created by HanJinhong on 16/1/20.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject

//名字
@property(nonatomic, copy)NSString *name;
@property(nonatomic, retain)Student *helper;

-(id)initWithName:(NSString *)name helper:(Student *)helper;

@end
