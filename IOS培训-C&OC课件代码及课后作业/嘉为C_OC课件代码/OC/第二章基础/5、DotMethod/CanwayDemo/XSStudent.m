//
//  XSStudent.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import "XSStudent.h"

@implementation XSStudent

- (void)setName:(NSString *)name {
    _name = name;
}
- (void)setAge:(NSUInteger)age {
    _age = age;
}
- (void)setScore:(float)score {
    _score = score;
}


- (float)score {
    return _score;
}

- (NSUInteger )age {
    return _age;
}

- (NSString *)name {
    return _name;
}

@end
