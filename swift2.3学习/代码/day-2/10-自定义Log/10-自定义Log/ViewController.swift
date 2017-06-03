//
//  ViewController.swift
//  10-自定义Log
//
//  Created by gouzi on 2017/6/2.
//  Copyright © 2017年 wj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("123")
        // 获取打印所在的文件
        _ = #file // 全路径
        print("\((#file as NSString).lastPathComponent)---123")
        test()
        wjLog(123)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\((#file as NSString).lastPathComponent)---123")
        // 获取打印所在的方法
        print("\(#function)")
        // 获取打印的行数
        print("\(#line)")
        WJLog("hah")
    }
    
    
//    /// 封装一个方法进行打印 -> 查看AppDelegate文件
//    func wjLog<T>(_ message : T ,file : String = #file, funcName : String = #function, lineNumber : Int = #line) {
//        let fileName = (file as NSString).lastPathComponent
//        print("file:\(fileName) function:\(funcName) line:\(lineNumber) -- \(message)")
//    }
//    
//    // 需求是设置成全局都可以打印--并不是属于某个类和对象的
//    func WJLog<T>(_ message : T ,file : String = #file, lineNumber : Int = #line) {
//        let fileName = (file as NSString).lastPathComponent
//        print("file:\(fileName) line:\(lineNumber) -- \(message)")
//    }

}

