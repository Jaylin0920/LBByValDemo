//
//  AppDelegate.h
//  LBByValue
//
//  Created by LB on 16/3/15.
//  Copyright © 2016年 LB. All rights reserved.
//
#import "SecondViewController.h"
#import "singleton.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
{
    Handler _handler;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor colorWithRed:0.85f green:0.85f blue:0.85f alpha:1.00f];
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    /***** 代理 *****/
//    [self method_delegate];
    
    /***** 通知 *****/
//    [self method_notification];
    
    /***** block *****/
//    [self method_block];
    [self method_Block_common];//最常用
    
    /***** 单例 *****/
//    [self method_singleton];
    
    /***** 文件/NSUserdefault *****/
//    [self method_NSUserdefault];
    

    
}

#pragma mark - NSUserdefault
-(void)method_NSUserdefault
{
    NSString *name = @"我是【NSUserdefault】传值";
    [[NSUserDefaults standardUserDefaults] setObject:name forKey:@"name"];
    [self dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark - singleton
-(void)method_singleton
{
    singleton *oneS = [singleton shareData];
    oneS.value = @"我是【单例】传值";
    [self dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark - Block_common
-(void)method_Block_common
{
    NSString *name = @"我是【Block_common】传值";
    if (_handler) {
        _handler(self,name);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)setHadler:(Handler)handler
{
    _handler = handler;
}


#pragma mark - Block
-(void)method_block
{
    NSString *name = @"我是【block】传值";
    NSString *key = @"密码";
    if (self.block) {
        self.block(name,key);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark - NSNotificationCenter
// 一对多
-(void)method_notification
{
    NSDictionary *dict = @{  @"color":[UIColor greenColor],
                             @"name":@"我是【通知】传值",
                             @"key":@"密码"};
    // 2 - 发送通知
    [[NSNotificationCenter defaultCenter]postNotificationName:@"change" object:dict];
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)dealloc
{
    //观察者模式，不用的时候，最好销毁
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


#pragma mark - Delegate
// 一对一
-(void)method_delegate
{
    [_delegate changeColorWith:@"我是【代理】传值" andkey:@"密码"];
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
