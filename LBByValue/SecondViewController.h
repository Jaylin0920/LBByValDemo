///
//  AppDelegate.h
//  LBByValue
//
//  Created by LB on 16/3/15.
//  Copyright © 2016年 LB. All rights reserved.
//

#import <UIKit/UIKit.h>


/***** Delegate *****/
//Delegate - 步骤 1_2
@protocol  SecondViewControllerDelegate<NSObject>
-(void)changeColorWith:(NSString *)name andkey:(NSString *)key;
@end


/***** Block *****/
//Block - 步骤 方法1_1
typedef void(^SecondViewControllerBlock)(NSString *name,NSString *key);
//Block - 步骤 方法2_2
@class SecondViewController;
typedef void(^Handler)(SecondViewController * sec,NSString * str);



@interface SecondViewController : UIViewController



/***** Delegate *****/
//Delegate - 步骤 1_1
@property(nonatomic,weak)__weak id<SecondViewControllerDelegate>delegate;


/***** Block *****/
//Block - 步骤 方法1_1
@property(nonatomic,copy)SecondViewControllerBlock block;
//Block - 步骤 方法2_1
- (void)setHadler:(Handler)handler;



@end
