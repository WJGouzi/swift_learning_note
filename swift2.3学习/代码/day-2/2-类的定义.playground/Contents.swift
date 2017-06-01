//: generic define

import UIKit

// swift is also object-oriented language
// swift define method:
/*
 clss className : superClass {
    // define property and method
 
 }
 notice1: define generic can have no superclass, in other word this class is rootclass(swift only)
 notice2: in usally case, define generic can inherited from NSObject(if u wanna use KVC or use other NSObject's function) also can not inherited from NSObject(if u don't want to use NSObject's function or u want to let your generic more lightly).
 
*/

class person {
    // property
    var age : Int = 0;
    
}





let p : person = person()
p.age = 20

let view = UIView()
view.backgroundColor = UIColor.red


class Person : NSObject {
    // property
    var age : Int = 0;
    
    // u can override this function,if there is no key in dictionay compare with generic property
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        // override superclass function: if some function is override from superclass ,u must add keyword `override` in front of function
    }
    
}
let p1 = Person()
p1.setValuesForKeys(["age" : 18]) // use KVC
p1.setValuesForKeys(["age" : 18, "name" : "wj"]) // use KVC with no key in generic


		