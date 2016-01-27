//
//  Student.h
//  HelloWorld
//
//  Created by jinhong on 15/12/14.
//  Copyright © 2015年 Canway. All rights reserved.
//

#import <Foundation/Foundation.h>

//声明一个block当做类型
typedef NSString *(^getFullNameBlock)(NSString *shortName);

@interface Student : NSObject
{
    
    NSInteger _age;
    NSString *_name;
}
@property (nonatomic) NSInteger age;
@property (nonatomic, retain) NSString *name;
@property (nonatomic, copy) getFullNameBlock getFullNameFunction;

- (id)initWithName:(NSString *)name age:(NSInteger)age;

@end
