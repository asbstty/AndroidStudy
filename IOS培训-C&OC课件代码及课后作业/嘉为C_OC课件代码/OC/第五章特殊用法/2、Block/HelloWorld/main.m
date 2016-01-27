//
//  main.m
//  HelloWorld
//
// 演示block的几种用法
//
//  Created by jinhong on 15/11/19.
//  Copyright © 2015年 Canway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#include "Student.h"


int main(int argc, char * argv[]) {
    @autoreleasepool {
        //声明一个block，并给block添加对应的实现。
        int (^maxBlock)(int, int) = ^(int a, int b){
            return a>b?a:b;
        };
        //调用block
        int result = maxBlock(3,9);
        NSLog(@"result = %d", result);
        
        //----------------- 上面的不是典型应用，本地使用，还不如使用辅助类，或者使用延展函数。下面的例子具有典型意义
        
        Student *stu = [[Student alloc] initWithName:@"Peter" age:100];
        //先打印一下看看信息
        NSLog(@"%@", stu);//Peter
        
        //设置名字，然后打印信息
        stu.name = @"Jim";
        //先打印一下看看信息
        NSLog(@"%@", stu);//Jim
        
        //设置一个block给stu对象
        stu.getFullNameFunction = ^(NSString *name){
            if([name isEqualToString:@"Tom"]){
                return @"Tomas lvaEdison";
            }
            
            return @"Full Name";
        };
        
        //设置名字，然后打印信息
        stu.name = @"Tom";
        //先打印一下看看信息
        NSLog(@"%@", stu);//Tomas lvaEdison
        
        
        //-----------参考一下foundation库是怎么用的
        NSArray *array = @[@"111", @"333", @"222"];
        //枚举的时候，用的是block
        [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"the %luth value is %@", idx, obj);
        }];
        
        //排序的时候，也可以用block
        NSArray *array2 = [array sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
            return [obj1 compare:obj2];
        }];
        
        [array2 enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"the %luth value is %@", idx, obj);
        }];
        
        //-----------------block也可以当做参数来传递，这里的有例子有点复杂
        
        //先声明一个block类型
        typedef int (^myMaxFunction)(int, int);
        //这个block的参数是一个block
        typedef int (^otherMax)(myMaxFunction max, int, int);
        
        //实例化一个把block作为参数的block实例
        otherMax myMax = ^(myMaxFunction max, int val1, int val2){
            return max(val1, val2);
        };
        //声明一个block，准备当做参数
        myMaxFunction myFun = ^(int val1, int val2){
            return val1>val2?val1:val2;
        };
        //把myFun当做参数，传递给myMax
        result = myMax(myFun, 9, 8);
        NSLog(@"max(9, 8) = %d", result);
        
        
        
        return 0;
    }
}
