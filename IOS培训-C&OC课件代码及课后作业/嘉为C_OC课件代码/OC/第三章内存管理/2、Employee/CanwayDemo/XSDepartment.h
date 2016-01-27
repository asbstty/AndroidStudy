//
//  XSDepartment.h
//  CanwayDemo
//
//  Created by jinhong on 16/1/15.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XSEmployee.h"

@interface XSDepartment : NSObject

//声明一个员工属性
@property(nonatomic, retain)XSEmployee *employee;

//输出部门信息
-(void)showDepartmentInfo;

@end
