//
//  main.m
//  NSStringDemo
//
//  Created by jinhong on 16/1/12.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char * argv[]) {
    /*__________________________NSDate的使用_____________________________*/
    
    //1.创建日期
    NSDate *date1 = [NSDate date];  //创建了一个当前的日期对象
    NSDate *date2 = [[NSDate alloc] init];
    NSLog(@"date2:%@",date2);
    
    //在当前日期的基础上累加一个数值,单位是秒
    //明天
    NSDate *date3 = [NSDate dateWithTimeIntervalSinceNow:24*60*60];
    NSLog(@"date3:%@",date3);
    
    //昨天
    NSDate *date4 = [NSDate dateWithTimeIntervalSinceNow:-24*60*60];
    NSLog(@"date4:%@",date4);
    
    //在1970年上加一个数值,该数值是一个时间戳数值
    NSDate *date1970 = [NSDate dateWithTimeIntervalSince1970:0];
    NSLog(@"date1970:%@",date1970);
    
    //2.获取日期的时间戳
    NSTimeInterval time1970 = [date1 timeIntervalSince1970];
    NSLog(@"time1970:%f",time1970);
    
    //取得日期对象date3 到当前日期时间的数值差
    NSTimeInterval timeNow = [date3 timeIntervalSinceNow];
    NSLog(@"timeNow:%f",timeNow);
    
    
    //3.日期的比较
    //(1)通过日期对象的compare 方法进行比较
    NSComparisonResult result = [date3 compare:date1];
    if (result == NSOrderedDescending) {
        NSLog(@"date3 > date1");
    }
    //(2)通过比较时间戳
    if ([date3 timeIntervalSince1970] > [date1 timeIntervalSince1970]) {
        NSLog(@"date3 > date1");
    }
    
    
    //_________________________NSDateFormatter格式化日期_____________________________
    
    //1.日期对象格式化为字符串,例如： 2015-08-28 15:20:59
    // 日期对象 -->  字符串
    NSDate *nowDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //设置日期的格式
    [dateFormatter setDateFormat:@"yyyy年MM月dd日 HH:mm:ss"];
    //设置时区
    NSTimeZone *timezone = [NSTimeZone timeZoneWithName:@"America/New_York"];
    [dateFormatter setTimeZone:timezone];
    
    //stringFromDate： 将日期对象格式化为字符串
    NSString *datestring = [dateFormatter stringFromDate:nowDate];
    NSLog(@"格式化之后：%@",datestring);
    
    //2.将字符串格式化成日期对象
    //字符串 ——> 日期对象
    NSString *string = @"2015年08月28日 16:56:05";
    NSDateFormatter *dateFormatter2 = [[NSDateFormatter alloc] init];
    [dateFormatter2 setDateFormat:@"yyyy年MM月dd日 HH:mm:ss"];
    //dateFromString: 将字符串格式化成日期对象
    NSDate *formatDate = [dateFormatter2 dateFromString:string];
    NSLog(@"%@",formatDate);
    
    
    //获取到所有时区的名称
    NSArray *zoneNames = [NSTimeZone knownTimeZoneNames];
    for (NSString *name in zoneNames) {
        NSLog(@"%@",name);
    }
    
    
    return 0;
}
