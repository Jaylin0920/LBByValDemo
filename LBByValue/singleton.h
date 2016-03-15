//
//  AppDelegate.h
//  LBByValue
//
//  Created by LB on 16/3/15.
//  Copyright © 2016年 LB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface singleton : NSObject

//步骤一
@property (strong, nonatomic) NSString *value;
//+(id)shareData:
+(singleton *)shareData;  //步骤二


@end
