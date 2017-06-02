//
//  wjHttpTool.swift
//  7-闭包
//
//  Created by gouzi on 2017/6/2.
//  Copyright © 2017年 wj. All rights reserved.
//

import UIKit

class wjHttpTool: NSObject {
    
    // 定义闭包属性
    var callBack : ((_ jsonData : String)->())?
    
    
    // 闭包类型: (参数列表)->(返回值类型)
    func wjLoadData(callBack : @escaping (_ jsonData : String)->()) {
        self.callBack = callBack // 引起强引用
        DispatchQueue.global().async {
            print("当前的线程是 : \(Thread.current)")
            DispatchQueue.main.sync {
                print("获取到数据,进行回调 : \(Thread.current)")
                callBack("json data")
            }
        }
    }
    
}
