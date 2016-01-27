//
//  XiyouRole.h
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//
#import <Foundation/Foundation.h>


@interface XiyouRole : NSObject
{

}

//角色名字
@property(nonatomic, copy)NSString *name;
@property(nonatomic, assign)XiyouRole *helper;

-(id)initWithName:(NSString *)name helper:(XiyouRole *)helper;

@end
