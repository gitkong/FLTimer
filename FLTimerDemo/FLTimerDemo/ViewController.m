//
//  ViewController.m
//  FLTimerDemo
//
//  Created by clarence on 16/10/11.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.navigationController pushViewController:[[TestViewController alloc] init] animated:YES];
}


@end
