//: Playground - noun: a place where people can play

import UIKit

func sum(_ num1: Int, num2: Int, num3: Int) -> Int {
    return num1 + num2 + num3
}
sum(10, num2: 20, num3: 40)

// notice 1 : inner parameter & external parameter
// inner parameter : it can be used parameter in the function, default situation:all parameters are inner parameter
// external parameter: it can be used parameter out of the function, default situation: it is start from second parameter are both inner parameter and external parameter.

/// if wish for the function's first parameter similar to external parameter, we can add a nickname to first parameter or delete `_` in swift3.0
func sum1(num1: Int, num2: Int, num3: Int) -> Int {
    return num1 + num2 + num3
}

//func sum2(num1 num1: Int, num2: Int, num3: Int) -> Int {
//    return num1 + num2 + num3
//}
//sum1(num1: 10, num2: 20, num3: 30)
//sum2(num1: 10, num2: 30, num3: 20)


// notice 2 : default parameter in swift
func makeACupOfCoffee(coffeeName: String) -> String {
    return "制作了一杯\(coffeeName)咖啡"
}
makeACupOfCoffee(coffeeName: "拿铁")
// add default parameter
func makeACupCoffee(_ coffeeName: String = "雀巢") -> String {
    return "制作了一杯\(coffeeName)咖啡"
}
makeACupCoffee()

// notice 3 : mutate parameter
// add `...`  turn to a array whitch contain a number of Int
func sumAction(num1: Int...) -> Int {
    var result = 0
    for n in num1 {
        result += n
    }
    return result
}
sumAction(num1: 19,20,44)


// notice 4 : pointer type(exchange)
var m = 30
var n = 20
func swapNmuber(m : inout Int, n : inout Int) {
    let temp = m
    m = n
    n = temp
}
// if ues `inout`, can not use `var` or `let` modify
swapNmuber(m: &m, n: &n)
print("m : \(m), n : \(n)")


// notice 5 : nested function (not recommend)
func test() {
    func demo() {
        print("demo")
    }
    print("test")
    demo()
}
test()





