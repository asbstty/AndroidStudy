//
//  XSDepartment.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/15.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import "XSDepartment.h"

@implementation XSDepartment
@synthesize employee=_employee;

//输出部门信息
-(void)showDepartmentInfo{
    if(self.employee != nil){
        [self.employee working];
    }
}

-(void)dealloc{
    if(_employee != nil){
        [_employee release];
        _employee = nil;
    }
    
    //这样子代替上面几行代码可以吗？为什么
//    if(self.employee != nil){
//        [self.employee release];
//        self.employee = nil;
//    }
    
    NSLog(@"%s",__FUNCTION__);
    
    [super dealloc];
}
@end
