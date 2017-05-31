//: Playground - noun: a place where people can play

import UIKit

/// 在OC中是NSString，在swift中是String
/// 在OC中用@“”，在swift中用的是“”
/// 在swift中，String类型是一个结构体，性能更高
/// NSString是一个OC对象，性能略差
/// String支持遍历
/// swift提供了String和NSString的无缝转换


/// 1.定义一个字符串
let operation = "+"  /// 根据类型推导
let name : String = "wj"


/// 2.遍历字符串
for c in name.characters {
    print(c)
}


/// 3.字符串进行拼接
/// 3.1两个字符串进行拼接
let str1 = "wj"
let str2 = " is good"
var str = str1 + str2   /// 用加好就可以进行拼接

/// 3.2字符串和其他的进行拼接
let age = 18
let height = 1.88
str = "my name is \(name), age is \(age), height is \(height)"


/// 3.3拼接字符串时，字符串的格式化
let minute = 2
let second = 1
//let time = "\(minute):\(second)"
let time = String(format: "%02d:%02d", arguments:[minute, second])

/// 4.字符串的截取
let urlString = "www.baidu.com"
/// 将String类型转为NSSstring类型 String as NSString
let header = (urlString as NSString).substring(to: 3)
let body = (urlString as NSString).substring(with: NSMakeRange(4, 5))
let footer = (urlString as NSString).substring(from: 10)
print("header is \(header), body is \(body), footer is \(footer)")

//urlString.substring(from: <#T##String.Index#>)
//urlString.substring(with: <#T##Range<String.Index>#>)
//urlString.substring(to: <#T##String.Index#>)
//(urlString as NSString).substring(to: <#T##Int#>)
//(urlString as NSString).substring(with: <#T##NSRange#>)
//(urlString as NSString).substring(from: <#T##Int#>)

