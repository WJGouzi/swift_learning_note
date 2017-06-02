//: Playground - noun: a place where people can play

import UIKit

class person : NSObject {
    var name : String?
    var age = 0
    
    
    override init() {
        // if we not use super.init(), system will helps us use super.init()
        super.init()
        
    }
    
    // define constructor
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
    
//    init(dict : [String : Any]) {
//        // get value is optional value
//        
//        name = dict["name"] as? String
//        
////        age = dict["age"] as! Int
////        print(age)
//        
//        if let age = dict["age"] as? Int {
//            self.age = age
//        }
//    }


    init(dict : [String : Any]) {
        // get value is optional value
        super.init()
        self.setValuesForKeys(dict)
    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }

}


let p = person()

let p1 = person(name: "wj", age: 18)
		
let p2 = person(dict: ["name" : "wj", "age" : 18, "height" : 1.88])
		
