//: Playground - noun: a place where people can play

import UIKit

/// key-value的集合，key是不能重复的。字典中所有元素是没有顺序的
/// swift中字典是Dictionary，也是一个泛型的集合。

/// 1.字典的创建
/// 1.1不可变字典 -> 使用let修饰
let dict = ["name" : "wj", "age" : "12", "heigth" : "1.88"] // 注意的是使用的是中括号，不是大括号，系统会自动判断是放置的一个个元素还是一对对的键值对。 -> 类型是[String : Any]
let dict1 : Dictionary<String, Any> = ["name" : "wj", "age" : 12, "heigth" : 1.88]
let dict2 : [String : Any] = ["name" : "wj", "age" : 12, "heigth" : 1.88]
/// 1.2可变字典 -> 使用var修饰
//var dictM = Dictionary<String , NSObject>()
//var dictM = [String : NSObject](); // -> 用于创建对象
var dictM = [String : Any]();  // -> 用于指定类型


/// 2.对可变的字典的基本操作
/// 2.1添加元素
dictM["name"] = "wj"
dictM["age"] = 12
dictM["height"] = 1.88
dictM["weight"] = 40
dictM

/// 2.2删除元素
//dictM.removeAll()
dictM.removeValue(forKey: "weight")
dictM

/// 2.3修改元素
// 如果字典中有了对应的key，则会修改掉原来对应的key的value，如果没有则会添加key/value到字典中
dictM["name"] = "WJ"
/// 2.4取出元素
dictM["age"]



/// 3.遍历字典
/// 3.1遍历字典中所有的key
for key in dictM.keys {
    print(key)
}

/// 3.2遍历字典中所有的值
for value in dictM.values {
    print(value)
}


/// 3.3遍历所有的键值对
for (key, value) in dictM {
    print(key)
    print(value)
}




/// 4.合并字典
/// 即使类型一致，也不能进行相加进行合并。
/// 利用遍历的方式，给可变数组添加键值对。
for (key , value) in dict1 {
    dictM[key] = value
}




