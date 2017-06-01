//: Playground - noun: a place where people can play

import UIKit

/// 在swift中的特有的
/// 在swift中nil也是特殊类型，因为和真实类型不匹配，所以不能进行赋值，也就是说，一个nil类型的不能赋值给String的。

// swift中的规定，对象中的任何属性在创建对象的时候，都必须有明确的初始化值
//class student : NSObject {
//    /// 类里面的属性，一般定义成var
////    var name = "wj"
//    // 暂时不赋值
//    var name : String
//}


// 可选类型，也是一种数据类型，和字符串等都是一致
// 1.定义可选项
// 1.1常规方式（不常用）
var name : Optional<String> = nil // 可选类型中自能放一个字符串
// 1.2方式二,语法糖(常用)
var age : Int? = nil // 和上面的写法完全一致

// 2.可选类型进行赋值
name = "wj"
age = 18

// 3.取出可选类型的值
print(name)// ->拿到的是可选型
print(age)
// 拿到可选性中的内容的方法 可选类型 + ! : 表示强制解包
print(name!)
print(age!)
// 注意强制解包是非常危险的，如果可选性为nil，强制解包会导致系统崩溃。

// 建议在强制解包钱，先对可选型进行判断，判断是否为nil
if name != nil {
    print(name!)
}
if age != nil {
    print(age!) // 每次用的时候都要解包，所以比较麻烦
}


// 4.可选绑定
// 操作步骤
// 4.1判断name是否有值，如果没有值，就不进行执行
// 4.2如果name有值，会将name进行解包，并且将解包后的name的值赋值给tempName
// 写法一：不常用
if let tempName = name {
    print(tempName)  // 比较麻烦的是每次创建一个中间值
}

// 写法二：常用（就近的原则，使用的是定义比较近的这个name）
if let name = name {
    print(name)
}




