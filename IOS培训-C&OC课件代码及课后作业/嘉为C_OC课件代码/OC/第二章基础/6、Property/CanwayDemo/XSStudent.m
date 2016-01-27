//
//  XSStudent.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import "XSStudent.h"

@implementation XSStudent
@synthesize name, age=_age;

-(void)showInfo{
    //演示self.age 和 age的不同，
    //self.age 走的是getAge方法->oc中，get方法中的get都是不带的，所以就是age方法； age，直接访问的是变量
    int tempAge = self.age;
    NSLog(@"getter:%d", tempAge);
    
    int tempAge2 = _age;
    NSLog(@"value:%d", tempAge2);
}

-(void)mySetAge:(int)newAge{
    NSLog(@"%s", __FUNCTION__);
    _age = newAge;
}



@end
