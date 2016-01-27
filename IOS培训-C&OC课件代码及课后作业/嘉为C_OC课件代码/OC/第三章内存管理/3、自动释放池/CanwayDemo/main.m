//
//  main.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//
// 演示自动释放池:新旧2种用法

#import <UIKit/UIKit.h>
#import "XiyouRole.h"


int main(int argc, char * argv[]) {
    
     XiyouRole *role1 = [[XiyouRole alloc] init];  //计数：1
     
     //创建一个自动释放池
     NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
     
     //将role1对象加入到自动释放池，autorelease 不是将role1的计数-1
     [role1 autorelease];

     NSLog(@"role1计数：%ld",role1.retainCount);
     
     //当自动释放池销毁的时候，会对池子中的每一个对象发送release消息(调用了release方法)
     [pool release];
    
     //[pool drain];
     //在引用计数环境中，drain和release一样，但是在garbage-collected环境中，使用drain，触发GC（in a garbage-collected environment, triggers garbage collection if the memory allocated since the last collection is greater than the current threshold）。
    

    //新的语法，简单易用，一目了然
     @autoreleasepool {  //等价于 [[NSAutoreleasePool alloc] init];
         //role2变量
         XiyouRole *role2 = [[XiyouRole alloc] init];
         
         [role2 autorelease];
     }  //等价于 [pool release];
    
    
    //________________________自动释放池的嵌套___________________________
    NSAutoreleasePool *pool1 = [[NSAutoreleasePool alloc] init];
    
    XiyouRole *role3 = [[XiyouRole alloc] init];
    [role3 retain];//引用计数+1，retainCount为2
    NSLog(@"role3.retainCount = %lu", role3.retainCount);//此时应该为2
    
    //role3添加到自动释放池pool1中
    [role3 autorelease];
    
    NSAutoreleasePool *pool2 = [[NSAutoreleasePool alloc] init];
    XiyouRole *role4 = [[XiyouRole alloc] init];
    [role4 retain];//引用计数+1，retainCount为2
    NSLog(@"role4.retainCount = %lu", role4.retainCount);//此时应该为2

    //role4添加到自动释放池pool2中
    [role4 autorelease];
    
    [pool2 release];//此时role4的release被调用
    NSLog(@"role4.retainCount = %lu", role4.retainCount);//此时应该为1
    
    [pool1 release];//此时role3的release被调用
    NSLog(@"role3.retainCount = %lu", role3.retainCount);//此时应该为1
    
    //释放掉role3，role4
    [role3 release];
    [role4 release];
    
    
    //______________________使用自动释放池优化内存_____________________________
    
   
    NSAutoreleasePool *pool3 = [[NSAutoreleasePool alloc] init];
    //for循环之后，创建了99999999个XiyouRole对象，加入到自动释放池
    //如果XiyouRole对象本身比较大，那么这个循环就太占用内存了
    for (int i=0; i<88888; i++) {
        XiyouRole *role = [[XiyouRole alloc] init];
        [role autorelease];
    }
    [pool3 release];
    
    
    NSAutoreleasePool *pool4 = [[NSAutoreleasePool alloc] init];
    for (int i=0; i<66666; i++) {
        //每隔1000次，释放掉池子中的对象，这样池子中同时存在的对象不会超过1000个
        if (i % 1000 == 0) {            
            //释放掉池子中所有的对象
            [pool4 release];
            
            pool4 = [[NSAutoreleasePool alloc] init];//然后再创建个新的，继续等待下一次使用
        }
        
        XiyouRole *XiyouRole3 = [[XiyouRole alloc] init];
        [XiyouRole3 autorelease];
    }    
    [pool4 release];
    
    return 0;
}
