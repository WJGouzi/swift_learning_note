//: Playground - noun: a place where people can play

import UIKit

// if\swift\三目运算符\guard\switch等

// 1. if
// if后面的小括号是可省略的，判断句不再有非0/nil即真
// 判断句有明确的真假,也就是有明确的Bool值
let a = 10
if a > 0 {
    print("\(a)")
} else {
    print("小于10")
}


/// 2.else ... if 用法和if的用法一致
let score = 92

if score < 0 || score > 100 {
    print("不合理的分数")
} else if score < 60 {
    print("不合格")
} else if score >= 60 && score < 75 {
    print("中")
} else if score >= 75 && score < 90 {
    print("良")
} else if score <= 100 {
    print("优")
}

/// 3.三目运算符
let m = 30
let n = 20
var result = 0

if m > n {
    result = m
} else {
    result = n
}

result = m > n ? m : n

        