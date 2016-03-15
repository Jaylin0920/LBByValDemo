//
//  AppDelegate.h
//  LBByValue
//
//  Created by LB on 16/3/15.
//  Copyright © 2016年 LB. All rights reserved.
//

#import "singleton.h"

@implementation singleton


static singleton *singletonData = nil;  //步骤三

+(singleton *)shareData {  //步骤四
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singletonData = [[singleton alloc] init];
    });
    return singletonData;
}


@end
