//: Playground - noun: a place where people can play

import UIKit

/// 和if的类似
var a = 10
while a > 0 {
    a -= 1
    print(a)
}




/// 在swift中没有do_while循环 -> 修改成repeat_while循环
repeat {
    a += 1
    print(a)
} while a < 20