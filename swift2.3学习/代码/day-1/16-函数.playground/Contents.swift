//: Playground - noun: a place where people can play

import UIKit

// swift中叫函数
/*
 格式：
 func 函数名（参数1, 参数2,....）-> 返回值类型 {
    代码块
    return 。。。
 }
 */

// 1.没有参数，没有返回值的函数
func about() -> Void {
    print("iphone 6")
}
about()
func about1() {
    print("asdas")
}
about1()

// 2.没有参数，有返回值的函数
func readMessage() -> String {
    return "wj is handsome"
}
readMessage()

// 3.有参数，没有返回值的函数
func callPhone(_ phonenumber: String) {
    print("call phone to \(phonenumber)")
}
callPhone("+86 110")


// 4.有参数，有返回值的函数
func sum(_ number1: Int, number2: Int) ->Int {
    return number1 + number2
}
sum(20, number2: 30)



