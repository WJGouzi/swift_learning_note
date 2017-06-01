//: Playground - noun: a place where people can play

import UIKit

/// 通过一个字符串创建一个NSUrl字符串
// 类型不一致，不能进行直接赋值
//let url : NSURL = NSURL(string: "http://www.baidu.com")
let urlStr : NSURL? = NSURL(string: "http://www.baidu.com")
// 根据NSUrl创建一个NSUrlRequset对象
//if urlStr != nil {
//    let request = NSURLRequest(URL: urlStr!)
//}

if let urlStr = urlStr {
    let request = URLRequest(url: urlStr as URL)
    print(request)
}