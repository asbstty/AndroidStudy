//
//  main.m
//  HelloWorld
//
// 演示自省用法
//
//  Created by jinhong on 15/11/19.
//  Copyright © 2015年 Canway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

//用来测试的协议
@protocol MyProtocol <NSObject>
@required
- (void)required1;
- (void)required2;

@optional
- (void)optional1;

@end

//实现了所有的required接口
@interface MyClass1 : NSObject<MyProtocol>
@end

@implementation MyClass1

- (void)required1{}
- (void)required2{}
- (void)optional1{}

@end

//不实现任何接口
@interface MyClass2 : NSObject<MyProtocol>
@end

//没有实现，所以这里有一个warning
@implementation MyClass2

@end

//没有引用MyProtocol
@interface MyClass3 : NSObject
@end

@implementation MyClass3

@end



int main(int argc, char * argv[]) {
    @autoreleasepool {
        //声明一个NSMutableArray
        NSMutableArray *muArray = [NSMutableArray array];
        
        //iskindOfClass，包含继承树上的关系，所以判断进入YES分支
        if([muArray isKindOfClass:[NSArray class]]){
            NSLog(@"[muArray isKindOfClass:[NSArray class]]");
        }else{
            NSLog(@"![muArray isKindOfClass:[NSArray class]]");
        }
        
        //isMemberOfClass，包含继承树上的关系，所以判断进入YES分支
        if([muArray isMemberOfClass:[NSArray class]]){
            NSLog(@"[muArray isMemberOfClass:[NSArray class]]");
        }else{
            NSLog(@"![muArray isMemberOfClass:[NSArray class]]");
        }
        
        
        //输出本数组，目前为空
        NSLog(@"muArray = %@", muArray);
        //判断是否有插入函数，如果有，插入一个数据
        if([muArray respondsToSelector:@selector(insertObject:atIndex:)]){
            [muArray insertObject:@"hello" atIndex:0];
        }else{
            NSLog(@"![muArray respondsToSelector:@selector(insertObject:atIndex:)]");
        }
        //输出本数组，目前数组有一个元素
        NSLog(@"muArray = %@", muArray);
        if([muArray respondsToSelector:@selector(addObject:)]){
            [muArray performSelector:@selector(addObject:) withObject:@"canway"];
        }
        
        //输出本数组，目前数组有一个元素
        NSLog(@"muArray = %@", muArray);
        
        //MyClass1
        MyClass1 *c1 = [[MyClass1 alloc] init];
        //c1 符合MyProtocol，所以走的是if分支
        if([c1 conformsToProtocol:@protocol(MyProtocol)]){
            NSLog(@"[c1 conformsToProtocol:@protocol(MyProtocol)]");
        }else{
            NSLog(@"![c1 conformsToProtocol:@protocol(MyProtocol)]");
        }
        
        MyClass2 *c2 = [[MyClass2 alloc] init];
        //c2 符合MyProtocol，所以走的是if分支
        if([c2 conformsToProtocol:@protocol(MyProtocol)]){
            NSLog(@"[c2 conformsToProtocol:@protocol(MyProtocol)]");
            //虽然符合MyProtocol接口，但是检查required1，却是不存在的。因为的确没实现。
            if([c2 respondsToSelector:@selector(required1:)]){
                NSLog(@"[c2 respondsToSelector:@selector(required1:)]");
            }else{
                NSLog(@"![c2 respondsToSelector:@selector(required1:)]");
            }
        }else{
            NSLog(@"![c2 conformsToProtocol:@protocol(MyProtocol)]");
        }
        
        MyClass3 *c3 = [[MyClass3 alloc] init];
        //c3 不符合MyProtocol，所以走的是else分支
        if([c3 conformsToProtocol:@protocol(MyProtocol)]){
            NSLog(@"[c1 conformsToProtocol:@protocol(MyProtocol)]");
        }else{
            NSLog(@"![c3 conformsToProtocol:@protocol(MyProtocol)]");
        }
        
        
        //这个例子很有意思，有mutableCopy的接口，但是不符合NSMutableCopying协议。
        NSNumber *num1 = @2;
        if([num1 respondsToSelector:@selector(mutableCopy)]){
            NSLog(@"NSNumber has mutableCopy");
        }
        
        if([num1 conformsToProtocol:@protocol(NSMutableCopying)]){
            NSLog(@"NSNumber conforms to protocol mutalbecoping");
        }else{
            NSLog(@"NSNumber doesn't conform to protocol mutalbecoping");
        }
        
        //是因为NSObject中有mutableCopy的接口。但是的确NSNumber一路的继承，都没有遵循NSMutableCopying协议
        //所以结果如此。
        
        return 0;
    }
}
