//
//  LSNetworkTools.h
//  LSNetwork_OC
//
//  Created by WangBiao on 2016/12/4.
//  Copyright © 2016年 lsrain. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

typedef NS_ENUM(NSUInteger, LSMethod) {
    GET = 0,
    POST = 1
};

@interface LSNetworkTools : AFHTTPSessionManager

/// shared Interface
+ (instancetype)sharedTools;

/**
 网络请求
 
 @param method 请求方式 - `GET`/`POST`
 @param urlString URL
 @param parameters 参数
 @param success 成功回调
 @param failed 失败回调
 */
- (void)request:(LSMethod)method urlString:(NSString *)urlString parameters:(id)parameters success:(void(^)(id responseObject))success failed:(void(^)(NSError *error))failed;

@end
