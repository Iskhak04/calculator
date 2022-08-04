//
//  ViewController.swift
//  calculator
//
//  Created by Iskhak Zhutanov on 3/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    var text = ""
    var num1: Double = 0
    var num2: Double = 0
    var isOperation = false
    var lastOperation = ""
    
    @IBOutlet weak var viewPort: UILabel!
    
    @IBAction func divide(_ sender: Any) {
        if let input = viewPort.text {
            if let number = Double(input) {
                num1 = number
                isOperation = true
                lastOperation = "divide"
            }
        }
    }
    
    @IBAction func multiply(_ sender: Any) {
        if let input = viewPort.text {
            if let number = Double(input) {
                num1 = number
                isOperation = true
                lastOperation = "multiply"
            }
        }
    }
    
    @IBAction func subtract(_ sender: Any) {
        if let input = viewPort.text {
            if let number = Double(input) {
                num1 = number
                isOperation = true
                lastOperation = "subtract"
            }
        }
    }
    
    @IBAction func add(_ sender: Any) {
        if let input = viewPort.text {
            if let number = Double(input) {
                num1 = number
                isOperation = true
                lastOperation = "add"
            }
        }
    }
    
    @IBAction func showResult(_ sender: Any) {
        if let input = viewPort.text {
            if let number = Double(input) {
                num2 = number
                
                if num2 == 0 && lastOperation == "divide" {
                    viewPort.text = "Division by zero!"
                } else {
                    switch lastOperation {
                    case "add":
                        viewPort.text = String(num1 + num2)
                    case "subtract":
                        viewPort.text = String(num1 - num2)
                    case "divide":
                        viewPort.text = String(num1 / num2)
                    case "multiply":
                        viewPort.text = String(num1 * num2)
                    default:
                        ()
                    }
                }
            }
        }
    }
    
    @IBAction func clearScreen(_ sender: Any) {
        viewPort.text = "0"
        text = ""
    }
    
    @IBAction func percent(_ sender: Any) {
        if let input = viewPort.text {
            if let number = Double(input) {
                num1 = number
                viewPort.text = String(num1 / 100)
            }
        }
    }
    
    @IBAction func dot(_ sender: Any) {
        text += "."
        viewPort.text = text
    }
    
    @IBAction func zero(_ sender: Any) {
        if isOperation {
            text = ""
            isOperation = false
        }
        text += "0"
        viewPort.text = text
    }
    
    @IBAction func one(_ sender: Any) {
        if isOperation {
            text = ""
            isOperation = false
        }
        text += "1"
        viewPort.text = text
    }
    
    @IBAction func two(_ sender: Any) {
        if isOperation {
            text = ""
            isOperation = false
        }
        text += "2"
        viewPort.text = text
    }
    
    @IBAction func three(_ sender: Any) {
        if isOperation {
            text = ""
            isOperation = false
        }
        text += "3"
        viewPort.text = text
    }
    
    @IBAction func four(_ sender: Any) {
        if isOperation {
            text = ""
            isOperation = false
        }
        text += "4"
        viewPort.text = text
    }
    
    @IBAction func five(_ sender: Any) {
        if isOperation {
            text = ""
            isOperation = false
        }
        text += "5"
        viewPort.text = text
    }
    
    @IBAction func six(_ sender: Any) {
        if isOperation {
            text = ""
            isOperation = false
        }
        text += "6"
        viewPort.text = text
    }
    
    @IBAction func seven(_ sender: Any) {
        if isOperation {
            text = ""
            isOperation = false
        }
        text += "7"
        viewPort.text = text
    }
    
    @IBAction func eight(_ sender: Any) {
        if isOperation {
            text = ""
            isOperation = false
        }
        text += "8"
        viewPort.text = text
    }
    
    @IBAction func nine(_ sender: Any) {
        if isOperation {
            text = ""
            isOperation = false
        }
        text += "9"
        viewPort.text = text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
}

