//
//  AppDelegate.h
//  LBByValue
//
//  Created by LB on 16/3/15.
//  Copyright © 2016年 LB. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "singleton.h"

@interface ViewController ()<SecondViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //进来先清除下
    [[NSUserDefaults standardUserDefaults] setObject:@"" forKey:@"name"];

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    /***** 属性传值 *****/
    //属性传值,比较简单，就不写了
    //例：svc.属性 = 需要传进去的值
    
    /***** 方法传值 *****/
    //也不写了
    //= [[SecondViewController alloc]initWithValue:_txtFiled.text];（init传进去就行了）
    
    
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




#pragma mark - 5 -NSUserdefault
-(void)method_NSUserdefault
{
    SecondViewController *svc = [[SecondViewController alloc]init];
    [self presentViewController:svc animated:YES completion:nil];
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:@"name"] length] != 0) {
        NSString *str = [[NSUserDefaults standardUserDefaults] objectForKey:@"name"];
        NSLog(@"str - %@",str);
        [[NSUserDefaults standardUserDefaults] setObject:@"" forKey:@"name"];
    }
}


#pragma mark - 5 -singleton
-(void)method_singleton
{
    SecondViewController *svc = [[SecondViewController alloc]init];
    [self presentViewController:svc animated:YES completion:nil];
}
//-(void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//    NSString *str = [singleton shareData].value;
//    if (str.length != 0) {
//        NSLog(@"str - %@",str);
//    }
//}

#pragma mark - 4 -Block_common
-(void)method_Block_common
{
    SecondViewController *svc = [[SecondViewController alloc]init];
    [svc setHadler:^(SecondViewController *sec, NSString *str) {
        NSLog(@"str - %@",str);
    }];
    [self presentViewController:svc animated:YES completion:nil];
}


#pragma mark - 3 -Block
-(void)method_block
{
    SecondViewController *svc = [[SecondViewController alloc]init];
    svc.block = ^(NSString *name,NSString *key){
        NSLog(@"name - %@,key - %@",name,key);
    };
    [self presentViewController:svc animated:YES completion:nil];
}




#pragma mark -  2 -NSNotificationCenter
-(void)method_notification
{
    SecondViewController *svc = [[SecondViewController alloc]init];
    [self presentViewController:svc animated:YES completion:nil];
  
}
//-(void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//    //2 - 订阅通知
//    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(change:) name:@"change" object:nil];
//}
- (void)change:(NSNotification *)not
{
    //根据通知，具体做事
    NSDictionary *dict = not.object;
    UIColor *color = [dict objectForKey:@"color"];
    self.view.backgroundColor = color;
    NSLog(@"name - %@,key - %@",dict[@"name"],dict[@"key"]);
}
-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}



#pragma mark -  1 - Delegate
-(void)method_delegate
{
    SecondViewController *svc = [[SecondViewController alloc]init];
    svc.delegate = self;
    [self presentViewController:svc animated:YES completion:nil];
}
-(void)changeColorWith:(NSString *)name andkey:(NSString *)key
{
    self.view.backgroundColor = [UIColor greenColor];
    NSLog(@"name - %@,key - %@",name,key);
}



@end
