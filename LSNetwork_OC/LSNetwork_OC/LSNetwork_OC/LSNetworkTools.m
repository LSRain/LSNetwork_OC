//
//  LSNetworkTools.m
//  LSNetwork_OC
//
//  Created by WangBiao on 2016/12/4.
//  Copyright © 2016年 lsrain. All rights reserved.
//

#import "LSNetworkTools.h"

@implementation LSNetworkTools

+ (instancetype)sharedTools{
    static LSNetworkTools *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [self new];
    });
    return instance;
}

@end
