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
        instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html", nil];
    });
    return instance;
}

- (void)request:(LSMethod)method urlString:(NSString *)urlString parameters:(id)parameters success:(void(^)(id responseObject))success failed:(void(^)(NSError *error))failed{
    if (method == GET){
        [self GET:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            success(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            failed(error);
        }];
        return;
    }
    /// POST
    [self POST:urlString parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failed(error);
    }];
}

@end
