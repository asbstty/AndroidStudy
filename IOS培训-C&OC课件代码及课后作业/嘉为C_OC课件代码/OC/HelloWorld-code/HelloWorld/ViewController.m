//
//  ViewController.m
//  HelloWorld
//
//  Created by jinhong on 15/11/19.
//  Copyright © 2015年 Canway. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    CGRect frame = [[UIScreen mainScreen] bounds];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
    label.text = @"Hello World";
    label.font = [UIFont systemFontOfSize:17];
    label.center = CGPointMake(frame.size.width/2, frame.size.height/2);
    label.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
