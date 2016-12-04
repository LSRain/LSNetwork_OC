//
//  ViewController.m
//  LSNetwork_OC
//
//  Created by WangBiao on 2016/12/4.
//  Copyright © 2016年 lsrain. All rights reserved.
//

#import "ViewController.h"
#import "LSNetworkTools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[LSNetworkTools sharedTools] loadWeather:@"北京" success:^(id responseObject) {
        NSLog(@"%@", responseObject);
    } failed:^(NSError *error) {
        NSLog(@"%@", error);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
