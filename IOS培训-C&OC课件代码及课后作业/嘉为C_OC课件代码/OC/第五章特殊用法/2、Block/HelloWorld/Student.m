//
//  Student.m
//  HelloWorld
//
//  Created by jinhong on 15/12/14.
//  Copyright © 2015年 Canway. All rights reserved.
//

#import "Student.h"

@implementation Student
@synthesize age = _age;
@synthesize name = _name;


- (id)initWithName:(NSString *)name age:(NSInteger)age
{
    if (self = [super init]) {
        _name = name;
        _age = age;
        _getFullNameFunction = nil;
    }
    
    return  self;
}

- (void)setName:(NSString *)name
{
    if(self.getFullNameFunction != nil){
        _name = self.getFullNameFunction(name);
    }else{
        _name = name;
    }
}

- (NSString *)description{
    return [NSString stringWithFormat:@"名字：%@ 年龄：%ld", self.name, self.age];
}

@end
