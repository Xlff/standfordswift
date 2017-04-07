//
//  ViewController.swift
//  Calculator
//
//  Created by Max xie on 2017/4/6.
//  Copyright © 2017年 Max xie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var display: UILabel!
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        }
        else {
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
   
    var displayValue : Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    var calculatorBrain = CalculatorBrain()
    
    @IBAction func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping {
            calculatorBrain.setOperand(displayValue)
            userIsInTheMiddleOfTyping = false
        }
        
        if let symbol = sender.currentTitle {
            calculatorBrain.performOperation(symbol)
        }
        if let result = calculatorBrain.result {
            displayValue = result
        }
        
    }

}

