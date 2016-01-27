//
//  main.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XiyouRole.h"

//浅拷贝：只复制对象本身，此对象所持有的对象不做复制
//深拷贝：不仅仅复制对象本身，所持有的对象也会复制给副本对象

int main(int argc, char * argv[]) {
    
    NSMutableArray *array1 = [NSMutableArray arrayWithCapacity:3];
    //创建3个对象，添加到数组中
    for (int i=0; i<3; i++) {
        XiyouRole *role = [[XiyouRole alloc] init];
        [array1 addObject:role];
        [role release];//添加到数组以后，记得释放掉当前对象
    }
    
    //复制之前数组中对象的引用计数
    for (XiyouRole *p in array1) {
        NSLog(@"复制之前的引用计数：%ld",p.retainCount);
        NSLog(@"复制之前的指针：%p",p);
    }
    
    
    NSLog(@"-----------------------------------------------");
    //复制数组，array2是新复制出来的副本对象
    NSArray *array2 = [array1 copy];
    
    //副本对象中的元素的引用计数
    for (XiyouRole *p in array2) {
        NSLog(@"复制之后的引用计数：%ld",p.retainCount);
        NSLog(@"复制之后的指针：%p",p);
    }
    
    /*
     总结：
     1.数组复制出来的副本对象，副本对象中的元素只是引用计数+1
     说明此副本对象只是对所持有的元素对象retain，而没有复制。
     2. 数组的拷贝是浅拷贝，所以数组中的对象有没有实现拷贝代理的copyWithZone都没关系。
     */
   
    
    return 0;
}
