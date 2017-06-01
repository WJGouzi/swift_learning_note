//: Playground - noun: a place where people can play

import UIKit


// 数据类型->整型(有符号和无符号类型)和浮点型(单精度和双精度：Double 、 Float)
// 一般都是用的Int类型->相当于OC中的NSInteger

// 类型推导
// swift是强引用类型的语言
// 对于一个标识符进行赋值，标识符后面的类型可以省略
// 根据类型推导，会自动推导出前面的标识符是什么类型的
//let i : Int = 10
let i = 10 // Int类型

let a = 2.44 // Double类型

let view = UIView()
let button = UIButton()

// 没有直接赋值的时候，就需要给出标识符对应的数据类型
var m : Int
m = 10

// 这样写，相当于就是让n进行了一个初始化，但是没有进行赋值操作，换句话说，也就是在内存中定义了一个常量，然后并没有进行赋值
let n : Int
n = 20
// 再次赋值就会报错
//n = 30


// 这是不行的
//let x
//x = 20
