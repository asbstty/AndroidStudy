//
//  main.m
//  NSStringDemo
//
//  Created by jinhong on 16/1/12.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char * argv[]) {
    //---------------(1)字符串创建--------------------//
    //创建一个字符串常量
    NSString *string1 = @"hello";
    string1 = @"hello world";
    NSLog(@"%@",string1);
    
    //创建字符串
    NSString *string2 = [[NSString alloc] initWithString:@"hello"];
    //initWithFormat：把多个对象合并在一起
    NSString *string3 = [[NSString alloc] initWithFormat:@"hello %@",string2];
    NSLog(@"string2 = %@",string2);
    NSLog(@"string3 = %@",string3);
    
    NSString *ss1 = [[NSString alloc] initWithFormat:@"This is a string"];
    NSString *ss2 = [[NSString alloc] initWithFormat:@"this is a string"];
    NSLog(@"[ss1 caseInsensitiveCompare:ss2]:%ld",[ss1 caseInsensitiveCompare:ss2]);
    
    //创建空的字符串
    NSString *string4 = [[NSString alloc] init];
    
    NSString *string5 = [NSString stringWithString:string4];
    NSString *string6 = [NSString stringWithFormat:@"hello %@",@"world"];
    
    //使用格式化符拼接数值
    int number = 101;
    NSString *string7 = [NSString stringWithFormat:@"class:%d",number];
    NSLog(@"string7=%@",string7);
    
    //---------------(2)字符串的比较--------------------//
    NSString *s0 = @"helloword";
    NSString *s11 = @"helloword";   //s0与s11的指针地址是一样的，指向的都是常量区同一个字符串对象
    NSLog(@"s0 addr = %p s11 addr = %p",s0, s11);
    
    NSString *s1 = [NSString stringWithFormat:@"helloword"];
    NSString *s2 = [[NSString alloc] initWithFormat:@"helloword"];
    //判断s1与s2的指针地址是否相等
    if (s0 == s2) {   //不相等，因为是两个对象，指针地址不一样
        NSLog(@"s0 == s2");
    }
    NSLog(@"s0 addr = %p s2 addr = %p",s0, s2);
    
    //isEqualToString: 是比较两个字符串内容是否相同
    if ([s0 isEqualToString:s2]) {
        NSLog(@"s0与s2的字符串内容相同");
    }
    
    NSString *string8 = @"a";
    NSString *string9 = @"A";
    //compare: 比较字符串的大小
    NSComparisonResult result = [string8 compare:string9];
    if (result == NSOrderedAscending) { //结果为升序
        NSLog(@"string8 < string9");
    } else if(result == NSOrderedSame) {
        NSLog(@"string8 string9 内容一样");
    } else if(result == NSOrderedDescending) {
        NSLog(@"string8 > string9");
    }
    
    //---------------(3)字符串的其他用法--------------------//
    //length: 获取字符串的长度
    NSString *string10 = @"abcdef";
    NSInteger len = [string10 length];
    NSLog(@"len = %ld",len);
    
    NSString *string11 = @"hello World!";
    //uppercaseString:将字符串中的字母转成大写
    NSLog(@"upper:%@",[string11 uppercaseString]);
    //lowercaseString:转小写
    NSLog(@"lower:%@",[string11 lowercaseString]);
    //capitalizedString:首字母大写,其他字母小写
    NSLog(@"capitalized:%@",[string11 capitalizedString]);
    //请注意，只是返回的字符串是大小写处理过的，字符串本身，还是原来的样子！！！
    
    //将字符串转成基本数据类型
    NSString *string12 = @"3.14";
    float f = [string12 floatValue];
    NSLog(@"floatValue:%f",f);
    
    NSString *string13 = @"1";
    BOOL bo = [string13 boolValue];  //true
    
    //---------------(4)字符串截取--------------------//
    NSString *string14 = @"abcdef";
    //---------------(4)字符串截取--------------------//
    NSString *substring1 = [string14 substringToIndex:3];
    NSLog(@"substringToIndex:%@",substring1);
    
    //substringFromIndex:从指定索引位置开始截取到末尾，包含指定的索引
    NSString *substring2 = [string14 substringFromIndex:1];
    NSLog(@"substringFromIndex:%@",substring2);
    
    NSRange rang = {2,3};  //2:指定位置  3:需要截取的长度
                           //substringWithRange:截取指定范围的字符串
    NSString *substring3 = [string14 substringWithRange:rang];
    NSLog(@"substringWithRange:%@",substring3);
    
    
    //---------------(5)拼接字符串--------------------//
    NSString *str1 = @"Hello";
    NSString *str2 = @"World";
    NSString *str3 = @"OC!";
    NSString *string15 = [NSString stringWithFormat:@"%@-%@-%@",str1,str2,str3];
    NSLog(@"string15:%@",string15);
    
    //字符串追加
    NSString *string16 = [string15 stringByAppendingString:@"-iOS"];
    NSString *string17 = [string15 stringByAppendingFormat:@"%@,%@",@"iOS",@"iPhone"];
    NSLog(@"string16:%@",string16);
    NSLog(@"string17:%@",string17);
    
    //字符串追加
    NSString *link = @"www.canway.com/index.html";
    //rangeOfString:查找字符串所在的位置
    NSRange linkRang = [link rangeOfString:@"canway"];
    if (linkRang.location != NSNotFound) {
        NSLog(@"location:%ld,length:%ld",linkRang.location,linkRang.length);
    }
    
    
    //___________________________NSMutableString(可变字符串)__________________________
    
    NSMutableString *mutableString1 = [[NSMutableString alloc] initWithFormat:@"字符串"];
    //insertString: 在原有的字符串基础上插入字符串
    [mutableString1 insertString:@"可变" atIndex:0];
    NSLog(@"mutableString1:%@",mutableString1);
    
    NSMutableString *mutableString2 = [NSMutableString stringWithFormat:@"字符符符串"];
    //rangeOfString:查找指定字符串所在的范围
    NSRange rang3 = [mutableString2 rangeOfString:@"符符"];
    //deleteCharactersInRange:根据范围删除指定的字符串
    [mutableString2 deleteCharactersInRange:rang3];
    NSLog(@"mutableString2:%@",mutableString2);
    
    NSMutableString *mutableString3 = [NSMutableString stringWithFormat:@"字符串"];
    NSRange rang4 = [mutableString3 rangeOfString:@"字符"];
    //replaceCharactersInRange:withString:  字符串替换
    [mutableString3 replaceCharactersInRange:rang4
                                  withString:@"char"];
    NSLog(@"mutableString3:%@",mutableString3);
    
    
    return 0;
}
