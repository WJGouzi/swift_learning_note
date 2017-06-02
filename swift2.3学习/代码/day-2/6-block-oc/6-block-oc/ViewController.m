//
//  ViewController.m
//  6-block-oc
//
//  Created by gouzi on 2017/6/2.
//  Copyright © 2017年 wj. All rights reserved.
//

#import "ViewController.h"
#import "wjHttpTool.h"



@interface ViewController ()

@property (nonatomic, strong) wjHttpTool *tool;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tool = [[wjHttpTool alloc] init];
}

// 网络请求
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    [self.tool wjLoadDataWithBlock:^(NSString *jsonData) {
        NSLog(@"view get data is : %@", jsonData);
    }];
    
}


- (void)dealloc {
    NSLog(@"dddddd");
}


@end
