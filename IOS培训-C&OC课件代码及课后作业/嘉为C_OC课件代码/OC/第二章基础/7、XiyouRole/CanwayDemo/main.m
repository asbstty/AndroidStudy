//
//  main.m
//  CanwayDemo
//
//  Created by jinhong on 16/1/14.
//  Copyright © 2016年 深圳嘉为 www.canway.net. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tangsanzang.h"
#import "Sunwukong.h"
#import "Zhubajie.h"
#import "Shawujing.h"

//假设这里是一个演武台，各路角色都可以来表演武艺，只要是个角色
void showFight(XiyouRole *role){
    [role fighting];
}

//本例子演示了多态的典型应用
int main(int argc, char * argv[]) {
    //初始化一个积累，试试看
    XiyouRole *role = [[XiyouRole alloc] init];
    //基类的战斗信息
    showFight(role);
    
    //孙悟空准备登场
    Sunwukong *laosun = [[Sunwukong alloc] init];
    showFight(laosun);
    
    //猪八戒准备登场
    Zhubajie *bajie = [[Zhubajie alloc] init];
    showFight(bajie);
    
    //沙僧准备登场
    Shawujing *shaseng = [[Shawujing alloc] init];
    showFight(shaseng);
    
    //唐僧准备登场
    Tangsanzang *tangseng = [[Tangsanzang alloc] init];
    showFight(tangseng);
    
    return 0;
}
