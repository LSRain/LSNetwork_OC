//
//  LSNetworkTools.h
//  LSNetwork_OC
//
//  Created by WangBiao on 2016/12/4.
//  Copyright © 2016年 lsrain. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface LSNetworkTools : AFHTTPSessionManager

/// shared Interface
+ (instancetype)sharedTools;

@end
