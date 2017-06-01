//: Playground - noun: a place where people can play

import UIKit


// swift中没有隐式转换，所有的数据的运算，都需要相同的数据类型
let n = 2.3
let m = 10
// 将整型转为浮点型 Double(m)
// 要转换的类型的数据放在类型(数据)
let tempM = Double(m)
let result = n + tempM

// 将浮点型转为整型 Int(n) -> 强制转换不会进行四舍五入
let tempN = Int(n)
let results = m + tempN
