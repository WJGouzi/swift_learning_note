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
        get {
            return Double(display.text!)!
        }
        set {
            display.text! = String(newValue)
        }
        
    }
    
    
    private var brain = wjCalculatorBrain()
    
    // 当点击符号的时候，应当结束上一次的输入
    @IBAction func performOperation(_ sender: UIButton) {
        
        if userIsInTheMiddleOfTyping {
            brain.setOperand(displayValue)
            userIsInTheMiddleOfTyping = false
        }
        
        if let mathematicalSymbol = sender.currentTitle {
            brain.perfomOperation(mathematicalSymbol)
        }
        if let result = brain.result {
            displayValue = result
        }
    }
    

    
    
    
    
    
    
}








