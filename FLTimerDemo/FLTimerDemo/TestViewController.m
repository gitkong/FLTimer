//
//  TestViewController.m
//  FLTimerDemo
//
//  Created by clarence on 16/10/11.
//  Copyright © 2016年 clarence. All rights reserved.
//

#import "TestViewController.h"
#import "FLTimer.h"
@interface TestViewController ()
@property (nonatomic,weak)FLTimer *timer;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    __weak typeof(self) weakSelf = self;
    FLTimer *timer = [FLTimer fl_timer:1.0 handel:^(FLTimer *timer){
        /**
         *  @author 孔凡列, 16-09-21 08:09:06
         *
         *  注意循环引用
         */
        
        weakSelf.view.backgroundColor = [UIColor whiteColor];
        NSLog(@"----%@",[NSThread currentThread]);
//        [timer fl_invalidate];
    } repeat:YES];
    self.timer = timer;
    
//    for (NSInteger index = 0; index < 3; index ++) {
//        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100 * index, 300, 60, 60)];
//        btn.backgroundColor = [UIColor brownColor];
//        btn.tag = index;
//        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
//        if (index == 0) {
//            [btn setTitle:@"开启" forState:UIControlStateNormal];
//        }
//        else if (index == 1){
//            [btn setTitle:@"暂停" forState:UIControlStateNormal];
//        }
//        else if (index == 2){
//            [btn setTitle:@"销毁" forState:UIControlStateNormal];
//        }
//        [self.view addSubview:btn];
//    }
    
}

//- (void)btnClick:(UIButton *)btn{
//    if (btn.tag == 0) {
//        [self.timer fl_start];
//    }
//    else if (btn.tag == 1){
//        [self.timer fl_pause];
//    }
//    else if (btn.tag == 2){
//        [self.timer fl_invalidate];
//    }
//}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.timer fl_invalidate];
}

- (void)dealloc{
    [self.timer fl_invalidate];
    NSLog(@"vc---dealloc");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
