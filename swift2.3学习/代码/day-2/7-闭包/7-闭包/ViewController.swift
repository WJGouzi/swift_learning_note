//
//  ViewController.swift
//  7-闭包
//
//  Created by gouzi on 2017/6/2.
//  Copyright © 2017年 wj. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var tools = wjHttpTool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // MARK: 解决弱引用
        // 强制弱引用
        // 解决循环引用方式一:
//        weak var weakSelf = self // -> 这样取出来的是可选型
//        tools.wjLoadData { (jsondata) in
//            print("拿到数据了 : \(jsondata)")
//            // 如果前面的可选类型没有值，后面所有代码都不会执行
//            // 如果前面的可选类型有值，系统会自动将我们的weakSelf进行解包，然后再使用weakSelf
//            weakSelf?.view.backgroundColor = UIColor.red
//        }
    
        
        // 解决循环引用方式二: 对方式一的简便写法 推荐使用的方式
        tools.wjLoadData {[weak self] (jsondata) in
            print("拿到数据了 : \(jsondata)")
            self?.view.backgroundColor = UIColor.red
        }
        
        
        // 解决循环引用方式三: 比较危险的方式，这里会发生崩溃->容易产生野指针
//        tools.wjLoadData {[unowned self] (jsondata) in
//            print("拿到数据了 : \(jsondata)")
//            self.view.backgroundColor = UIColor.red
//        }
        
        
        // MARK: 尾随闭包
        // 尾随闭包 : 如果闭包作为方法的最后一个参数，闭包可以把`()`省略掉
        // 普通写法 :
        tools.wjLoadData {[weak self] (jsondata) in
            print("拿到数据了 : \(jsondata)")
            self?.view.backgroundColor = UIColor.red
        }
        // 尾随闭包的写法一:
        tools.wjLoadData() {[weak self] (jsondata) in
            print("拿到数据了 : \(jsondata)")
            self?.view.backgroundColor = UIColor.red
        }
        
    }
    
    // 相当于是OC中的delloc方法，当对象销毁时进行调用
    deinit {
        print("-----")
    }
    
}

