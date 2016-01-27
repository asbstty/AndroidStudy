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
//战斗指数
@property(nonatomic, assign)int ability;

//打斗方法
-(void)fighting;
@end
