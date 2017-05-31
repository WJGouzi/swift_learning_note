//: Playground - noun: a place where people can play

import UIKit

/// 元组是swift中特有的。OC中没有对应的。
/// 元组中定义的是一组数据，组成元组类型的数据可以称为是“元素”

let array = ["name", 18, 1.88]


/// 1.元组的使用 (一般用于方法的返回值)
let info = ("name", 18, 1.88) // 元组最基本的写法
info.0
info.1
info.2

// 2.给元组的每个元素取一个名字(常见)
/// 和字典的比较相似，但是这个name随便写什么都可以的
let info1 = (name : "wj", age : 18, height : 1.88)
info1.name
info1.age
info1.height

// 3.元组中元素别名就是元组的元素
let (name, age, height) = ("wj", 18, 1.88)
name
age
height
