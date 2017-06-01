//: Playground - noun: a place where people can play

import UIKit

// swift has many properties, such as storage property(***), calculator property,class property
// storage property is most simple property, it is a part of class instance, it use to store constant and variable
// it can provide a default value for storage property, it also can initial property in initialization method.

class student : NSObject {
    // 1.define property
    // define storage property
    var age : Int = 0
//    var name : String? = nil
    var name : String?
    var mathScore : Double = 0.0
    var chineseScore : Double = 0.0
    
    
    // it is not recommend in swift -> instead of ues calculator property
    // define a method with return a average score
    func getAverageScore() -> Double {
        // in swift, if use some of properties or use some of methods in current class inner,we can use it without `self`.
        return (mathScore + chineseScore) * 0.5
    }
 
    
    // 2.define calculator property : get result through some kind of calculate  method, we call that calculator property
    // do not use `=` ,use `{ return ...}`
    var averageScore : Double {
        return (mathScore + chineseScore) * 0.5
        // we can use get method and set method in this property
        
    }
    
    
    // 3.define class property: it is connect with all in class property, if use it through name
    static var courseCount : Int = 0
    
    
    
}

// class property valuation
student.courseCount = 2

let stu = student()
stu.age = 10;
stu.name = "wj"
stu.mathScore = 93.5
stu.chineseScore = 89


print(stu.age)
if let name = stu.name {
    print(name)
}

//let averageScore = (stu.mathScore + stu.chineseScore) * 0.5 // it is not convience if used in a lot of place
let averageScore = stu.getAverageScore()
let average = stu.averageScore

