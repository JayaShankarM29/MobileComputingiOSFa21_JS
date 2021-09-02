//
//  ViewController.swift
//  calculatorDemo
//
//  Created by JayaShankar Mangina on 9/2/21.
//

import UIKit

class ViewController: UIViewController {
    
    var operand1:Double = -1.1
    var operand2:Double = -1.1
    var calcyOperator:Character = " "
    
    
    
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button3(_ sender: UIButton) {
        outputLabel.text = "\(outputLabel.text!)" + "3"
        if operand1 == -1.1 {
            operand1 = 3
        }else{
            operand2 = 3
        }
    }
    
    @IBAction func button6(_ sender: UIButton) {
        outputLabel.text =  "\(outputLabel.text!)" + "6"
        if operand1 == -1.1 {
            operand1 = 6
        }else{
            operand2 = 6
        }
    }
    @IBAction func buttonPlus(_ sender: UIButton) {
        outputLabel.text = "\(outputLabel.text!)" + "+"
        if calcyOperator == " " {
            calcyOperator = "+"
        }
    }
    @IBAction func buttonEquals(_ sender: UIButton) {
        outputLabel.text = "\(outputLabel.text!)" + "="
        if calcyOperator == "+" {
            outputLabel.text = "\(operand2+operand1)"
        }
    }
    
}

