//: Playground - noun: a place where people can play

import UIKit

/// 1.在switch中，后面的括号是可以不要的，2.case中的break是可以不要的（默认的是添加了）

/// 基本用法
/// 0:男， 1:女
let gender = 0
switch gender {
case 0 :
    print("男")
case 1 :
    print("女")
default :
    print("其他")
}

/// 补充
/// 如果希望某个case进行穿透,只要case在后面添加fallthrough
/// case后面可以进行多个条件判断,用逗号进行分隔
switch gender {
case 0 , 1 :
    print("正常人")
default :
    print("其他")
}

/// switch中的特殊情况
/// 1.swtich中可以判断浮点型
let a = 3.14
switch a {
case 3.14:
    print("π")
default:
    print("not π")
}

/// 2.判断字符串
let m = 20
let n = 30
let operation = "+"
var result = 0

switch operation {
case "+" :
    result = m + n
case "-" :
    result = m - n
case "*" :
    result = m * n
case "/" :
    result = m / n
default :
    print("非法操作")
}

/// 3.判断区间
/// *区间:一般表示数字区间 {只有这两种写法}
/// 开区间:0..<10 -> 0~9
/// 闭区间:0...10 -> 0~10
let score = 88
switch score {
case 0..<60 :
    print("不及格")
case 60..<75 :
    print("中")
case 75..<90 :
    print("良")
case 90...100 :
    print("优")
default :
    print("不合理分数")
}







