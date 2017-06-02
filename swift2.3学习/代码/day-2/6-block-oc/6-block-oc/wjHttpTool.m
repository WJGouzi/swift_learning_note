//
//  wjHttpTool.m
//  6-block-oc
//
//  Created by gouzi on 2017/6/2.
//  Copyright © 2017年 wj. All rights reserved.
//

#import "wjHttpTool.h"

@implementation wjHttpTool

- (void)wjLoadDataWithBlock:(wjLoadDataBlock)block {
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        // 异步全局队列
        NSLog(@"发送网络请求 : %@", [NSThread currentThread]);
        
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"拿到数据 ： %@", [NSThread currentThread]);
            block(@"json data is getting");
        });
        
    });
}




@end
