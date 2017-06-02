//: Playground - noun: a place where people can play

import UIKit

class person : NSObject {
    
    // property
    var name : String? {
        willSet {
            if let name = name {
                print(name)
                if newValue != nil {
                    print("new value is : \(newValue!)")
                }
            }
        }
        
        didSet {
            if let name = name {
                print(name)
                if oldValue != nil {
                    print("old value is : \(oldValue!)")
                }
            }
        }
        
    }
    
    
    
}


class myCell : UITableViewCell {
    var person : person?
}

let p = person()
p.name = "wj"
p.name = "haha"
		