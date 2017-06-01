//: Playground - noun: a place where people can play

import UIKit

/// guard是在swift中2.0之后出来的
/// 在用guard的地方是可以用if的  但是反过来不一定可以
/// guard一定和else一起使用 -> 只能在某一个函数中使用
/// 语法结构: 在条件满足的时候，执行语句组，如果不满足就会去执行else语句
/*
guard *判断语句* else {
    *****
    break\return\continue...
}
语句组
*/



/// exp.判断一个人能不能再网吧上网
let age = 20
let idCard = true
let money = true


func judgeCanOnline(_ age : Int) {
    /// 判断年龄可以上网
    if age >= 18 {
        // 如果条件比较多嵌套的话，这样的可读性就不好
        print("可以上网")
    } else {
        print("回家")
    }
}

// 调用函数
judgeCanOnline(age)

// guard方式
func online(_ age : Int, card : Bool, money : Bool) {
    // 1.判断年龄
    guard age >= 18 else {
        print("回家找妈妈")
        return
    }
    // 2.带身份证
    guard card else {
        print("回家拿身份证")
        return
    }
    guard money else {
        print("拿钱去")
        return
    }
    print("上网")
}
// 调用
online(10, card: true, money: true)
online(20, card: false, money: true)
online(age, card: true, money: true)
