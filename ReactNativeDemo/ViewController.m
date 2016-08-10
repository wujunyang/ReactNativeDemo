//
//  ViewController.m
//  ReactNativeDemo
//
//  Created by wujunyang on 16/8/9.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initRNView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initRNView {
    NSURL *jsCodeLocation;
    jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios&dev=true"];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"EmbedRNMeituan"
                                                 initialProperties:nil
                                                     launchOptions:nil];
    //注意，这里是 @"EmbedRNMeituan"
    rootView.frame = CGRectMake(0, 64, 300, 300);
    [self.view addSubview:rootView];
}

@end
