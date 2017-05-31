//: Playground - noun: a place where people can play

import UIKit

/// 数组由一串有序的相同的元素构成的集合，Array类型，泛型集合。

/// 1.定义数组（写法很多）->最常见的三种写法
/// 1.1定义不可变数组，使用let修饰标识符定义出来的数组就是不可变的数组。
let array = ["name", "wj", "haha", "12weqw", "asdasdas"]
//let array1 : Array<String> = ["name", "wj", "haha"]
//let array2 : [String] = ["name", "wj", "haha"]
let intArray = [1, 2, 4, 5]

/// 1.2定义可变数组，使用var修饰标识符定义出来的数组就是可变的数组。
//var arrayM = Array<String>()
var arrayM = [String]() // 创建了一个可变数组


/// 2.可变数组基本操作
/// 2.1添加元素
//arrayM.append(<#T##newElement: String##String#>)
arrayM.append("we")
arrayM.append("wee")
arrayM.append("weee")
arrayM.insert("insert", at: 1)
/// 2.2删除元素
//arrayM.removeAll()
arrayM.remove(at: 0)
arrayM

/// 2.3修改元素
arrayM[0] = "123"
arrayM

/// 2.4取出元素
arrayM[0]// 没有setObject的方法

/// 3.数组的遍历
/// 3.1根据下标识进行遍历->需要拿到下标知道的时候需要使用这种方法
for i in 0..<array.count {
    print(array[i])
}

/// 3.2直接遍历数组中的元素
for name in array {
    print(name)
}

/// 3.3遍历前两个元素-> 在array中添加一个区间。。->不常使用
for name in array[0..<2] {
    print(name)
}


/// 4.数组的合并
/// 将两个数组进行合并
let result = array + arrayM
/// 相同的数组才能相加进行合并，不同类型的数组不能进行相加进行合并。





