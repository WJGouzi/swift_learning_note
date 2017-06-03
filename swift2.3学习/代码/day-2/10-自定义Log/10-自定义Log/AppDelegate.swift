//
//  AppDelegate.swift
//  10-自定义Log
//
//  Created by gouzi on 2017/6/2.
//  Copyright © 2017年 wj. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        test()
        return true
    }

}
func test() {
    print("全局打印")
}



// MARK:- 设置成全局的东西
/// 封装一个方法进行打印
func wjLog<T>(_ message : T ,file : String = #file, funcName : String = #function, lineNumber : Int = #line) {
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    print("file:\(fileName) function:\(funcName) line:\(lineNumber) -- \(message)")
    #endif
}

// 需求是设置成全局都可以打印--并不是属于某个类和对象的
func WJLog<T>(_ message : T ,file : String = #file, lineNumber : Int = #line) {
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    print("file:\(fileName) line:\(lineNumber) -- \(message)")
    #endif
}

// 在swift中没有宏定义,可以在buildSetting -> swift flag -> debug 添加一个 ： -D DEBUG,让系统去查找。
