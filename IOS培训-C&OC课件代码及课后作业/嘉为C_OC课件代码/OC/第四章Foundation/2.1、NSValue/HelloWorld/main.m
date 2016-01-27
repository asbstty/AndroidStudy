//
//  main.m
//  HelloWorld
//
//  Created by jinhong on 15/11/19.
//  Copyright © 2015年 Canway. All rights reserved.
//

#import <UIKit/UIKit.h>


void printLog(const char *param){
    printf("log function param=%s\r\n", param);
}

typedef struct {
    int a ;
}myStruct;

//测试NSValue
void testNSValue(){
    //基本类型
    int i = 100;
    NSValue *intValue = [NSValue value:&i withObjCType:@encode(int)];
    int newI = 0;
    [intValue getValue:&newI];
    printf("newI = %d\r\n", newI);
    
    //结构体保存
    myStruct st = {100};
    NSValue *stValue = [NSValue value:&st withObjCType:@encode(myStruct)];
    myStruct newSt = {0};
    [stValue getValue:&newSt];
    printf("struct.a = %d\r\n", newSt.a);
    
    //保存指针
    char *p = "hello";
    NSValue *pValue = [[NSValue alloc] initWithBytes:&p objCType:@encode(char *)];
    char *newP;
    [pValue getValue:&newP];
    printf("%s\r\n", newP);
    
    //保存函数指针
    typedef void (*printfunction)(const char*);
    printfunction function = printLog;
    NSValue *funcVal = [NSValue valueWithPointer:function];
    printfunction newf = [funcVal pointerValue];
    if(newf != NULL){
        newf("great!");
    }
    
    //支持的缺省结构
    CGSize cgsize = CGSizeMake(100, 100);
    NSValue *sizeValue = [NSValue valueWithCGSize:cgsize];
    CGSize newSize = [sizeValue CGSizeValue];
    printf("width = %f, height = %f\r\n",newSize.width, newSize.height);
    
    //支持的缺省结构
    CGPoint point = CGPointMake(100, 100);
    NSValue *ptValue = [NSValue valueWithCGPoint:point];
    CGSize newPoint = [ptValue CGSizeValue];
    printf("x = %f, y = %f\r\n",newPoint.width, newPoint.height);
}

//测试NSData
void testData(){
    NSString *str = @"this is a string";
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"data = %s", data.bytes);
    NSString *newStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"newStr from data is %@", newStr);
}

int main(int argc, char * argv[]) {
    testNSValue();
    
    testData();
    
    return 0;
}
