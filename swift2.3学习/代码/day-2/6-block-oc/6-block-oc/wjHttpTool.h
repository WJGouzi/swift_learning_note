//
//  wjHttpTool.h
//  6-block-oc
//
//  Created by gouzi on 2017/6/2.
//  Copyright © 2017年 wj. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^wjLoadDataBlock)(NSString *jsonData);


@interface wjHttpTool : NSObject

- (void)wjLoadDataWithBlock:(wjLoadDataBlock)block;

@end
