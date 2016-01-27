//
//  Student.m
//  CanwayDemo
//
//  Created by HanJinhong on 16/1/20.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import "Student.h"

@implementation Student

-(id)init{
    return [self initWithName:@"无名氏" helper:nil];
}


-(id)initWithName:(NSString *)name helper:(Student *)helper{
    self = [super init];
    if(self) {
        _name = name;
        _helper = [helper retain];
        NSLog(@"%@ %s",_name, __FUNCTION__);
    }
    
    return self;
}

-(void)dealloc{
    if(_helper != nil){
        [_helper release];
    }
    
    NSLog(@"学生:%@ %s",_name, __FUNCTION__);
    [super dealloc];
}

-(NSString *)description{
    return [NSString stringWithFormat:@"学生名字：%@，helper: %@", self.name, self.helper.name];
}

@end
