//
//  ViewController.m
//  FLTimerDemo
//
//  Created by clarence on 16/10/11.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
#import "NSTimer+Block.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
            NSLog(@"--%@--",[NSThread currentThread]);
        }];
    });
//    [NSTimer fl_timer:1.0 repeat:YES handle:^(NSTimer *timer) {
//        NSLog(@"--%@--",[NSThread currentThread]);
//    }];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.navigationController pushViewController:[[TestViewController alloc] init] animated:YES];
}


@end
