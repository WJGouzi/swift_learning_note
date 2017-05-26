//
//  ViewController.swift
//  stanford App
//
//  Created by gouzi on 2017/5/24.
//  Copyright © 2017年 wj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK:属性
    @IBOutlet weak var display: UILabel!
    
    // MARK:变量
    var userIsInTheMiddleOfTyping = false
    
    // MARK:点击事件
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyDisplay = display.text!
            display.text = textCurrentlyDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    
    
    var displayValue : Double {
        // get方法
        get {
            return Double(display.text!)!
        }
        
        
        set {
            display.text! = String(newValue)
        }
        
    }
    
    
    
    // 当点击符号的时候，应当结束上一次的输入
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {

            // 方案一
//            if mathematicalSymbol == "π" {
//                display.text = String(Double.pi)
//            }
            
            // 方案二
            switch mathematicalSymbol {
            case "π":
//                display.text = String(Double.pi)
                displayValue = Double.pi
                
            case "√" :
//                let operand = Double(display.text!)!
//                display.text = String(sqrt(operand))
                displayValue = sqrt(displayValue)
            default:
                break
            }
            
            
        }
    }
    

    
    
    
    
    
    
}








