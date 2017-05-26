//
//  wjCalculatorBrain.swift
//  stanford App
//
//  Created by gouzi on 2017/5/26.
//  Copyright © 2017年 wj. All rights reserved.
//  模型

import Foundation


func changeSign(_ operand: Double) -> Double {
    return -operand
}

func multiply(op1: Double, op2: Double) -> Double {
    return op1 * op2
}

// 就相当于string array这些类似的
// class在heap，且需要initial struct不在heap，且不需要initial，因为他是自动的initial的
struct wjCalculatorBrain {
    
    // 私有的
    // 累加器
    private var accumulator: Double?
    
    
    
    // 枚举
    private enum wjOperation {
        case constant(Double)
        case unaryOperation((Double) -> Double)
        case binaryOpertion((Double, Double) -> Double)
        case equals
    }
    
    
    // 字典
    private var operations: Dictionary<String,wjOperation> = [
        "π" : wjOperation.constant(Double.pi), //Double.pi,
        "e" : wjOperation.constant(M_E), //M_E,
        "√" : wjOperation.unaryOperation(sqrt), // sqrt,
        "cos" : wjOperation.unaryOperation(cos),
        "±" : wjOperation.unaryOperation(changeSign),
        "×" : wjOperation.binaryOpertion(multiply),
        "=" : wjOperation.equals
    ]
    
    // 非私有
    mutating func perfomOperation(_ symbol : String) {
        // 方案一：
//        switch symbol {
//        case "π":
//            accumulator = Double.pi
//            
//        case "√" :
//            if let operand = accumulator {
//                accumulator = sqrt(operand)
//            }
//        default:
//            break
//        }
        // 方案二：
//        if let constant = operations[symbol] {
//            accumulator = constant
//        }
        
        // 方案三：
        if let operation = operations[symbol] {
            switch operation {
            case .constant(let value):
                accumulator = value
            case .unaryOperation(let function):
                if accumulator != nil {
                   accumulator = function(accumulator!)
                }
            case .binaryOpertion(let function):
                if accumulator != nil {
                    pendingBinaryOperation = wjPendingBinaryOperation(function: function, firstOperand: accumulator!)
                    accumulator = nil
                }
            case .equals:
                perfomPendingBinaryOperation()
                break
            }
        }
        
    }
    
    
    private mutating func perfomPendingBinaryOperation() {
        if pendingBinaryOperation != nil && accumulator != nil {
            accumulator = pendingBinaryOperation!.perform(with: accumulator!)
            pendingBinaryOperation = nil;
        }
    }
    
    
    private var pendingBinaryOperation: wjPendingBinaryOperation?
    
    
    private struct wjPendingBinaryOperation {
        let function: (Double, Double) -> Double
        let firstOperand: Double
        
        func perform(with secondOperand: Double) -> Double {
            return function(firstOperand, secondOperand)
        }
        
        
    }
    
    mutating func setOperand(_ operand: Double) {
//        setOperand(5.0)
        accumulator = operand
    }
    
    // 只读对象
    var result: Double? {
        get {
            return accumulator
        }
    }
    
    
    
    
}


