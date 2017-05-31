//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

//let i = 27

func changeSign(_ operand: Double) -> Double {
    return -operand
}

var f: (Double) -> Double
f = changeSign
let x = f(81)

let a = [1, 2, 3, 4].filter({$0 > 0})
print(a)
let b = [1, 4, 5, 6].map({$0 == 1})
print(b)
let c = [1, 3, 4, 5].dropLast()
print(c)
let d = [1, 3, 4, 6, 7].reduce(0, {$0 + $1})
print(d)

//let numberSum = d.reduce(0, { $0, &1 in
// $0 + $1
//})
///     // numberSum == 10


		