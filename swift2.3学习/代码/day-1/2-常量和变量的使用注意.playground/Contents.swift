//: Playground - noun: a place where people can play

import UIKit


// 常量的本质是保存在内存的地址是不可以修改的

// 定义的时候，优先使用常量，如有必要的时候再修改成变量
let m : Int = 10

// 创建常量对象
// swift中创建对象的方法
let view : UIView = UIView() // -> alloc init
//view = UIView() // 错误写法

// swift中没有setter方法
view.backgroundColor = UIColor.redColor()
view.frame = CGRectMake(0, 0, 100, 100)
view.alpha = 0.5
// swift中增加了Bool类型 (true/false)
view.hidden = true