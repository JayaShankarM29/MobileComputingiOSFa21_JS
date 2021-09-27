//
//  ViewController.swift
//  Mangina_Calculator
//
//  Created by JayaShankar Mangina on 9/26/21.
//

import UIKit

class ViewController: UIViewController {

    //Outlet for display
    @IBOutlet weak var outputLabel: UILabel!
    
    
    //Declared Outlet for each button to create round shape
    @IBOutlet weak var button1Out: UIButton!
    @IBOutlet weak var button2Out: UIButton!
    @IBOutlet weak var button3Out: UIButton!
    @IBOutlet weak var button4Out: UIButton!
    @IBOutlet weak var button5Out: UIButton!
    @IBOutlet weak var button6Out: UIButton!
    @IBOutlet weak var button7Out: UIButton!
    @IBOutlet weak var button8Out: UIButton!
    @IBOutlet weak var button9Out: UIButton!
    @IBOutlet weak var button0Out: UIButton!
    @IBOutlet weak var buttonACOut: UIButton!
    @IBOutlet weak var buttonCOut: UIButton!
    @IBOutlet weak var buttonSignChangeOut: UIButton!
    @IBOutlet weak var buttonSqrtOut: UIButton!
    @IBOutlet weak var buttonAddOut: UIButton!
    @IBOutlet weak var buttonSubOut: UIButton!
    @IBOutlet weak var buttonMulOut: UIButton!
    @IBOutlet weak var buttonDivOut: UIButton!
    @IBOutlet weak var buttonEqOut: UIButton!
    @IBOutlet weak var buttonDotOut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Initialized Output Display to zero
        outputLabel.text = "0"
        
        //Created Round shaped buttons using CGLayer Properties
        //Named layers in 'T' terms to hae a clear view on each level
        
        //T layer
        buttonSqrtOut.layer.cornerRadius = buttonSqrtOut.frame.size.height / 2
        
        //T-1 Layer
        buttonACOut.layer.cornerRadius = buttonACOut.frame.size.height / 2
        buttonCOut.layer.cornerRadius = buttonCOut.frame.size.height / 2
        buttonSignChangeOut.layer.cornerRadius = buttonSignChangeOut.frame.size.height / 2
        buttonDivOut.layer.cornerRadius = buttonDivOut.frame.size.height / 2
        
        //T-2 Layer
        button7Out.layer.cornerRadius = button7Out.frame.size.height / 2
        button8Out.layer.cornerRadius = button8Out.frame.size.height / 2
        button9Out.layer.cornerRadius = button9Out.frame.size.height / 2
        buttonMulOut.layer.cornerRadius = buttonMulOut.frame.size.height / 2
        
        //T-3 Layer
        button4Out.layer.cornerRadius = button4Out.frame.size.height / 2
        button5Out.layer.cornerRadius = button5Out.frame.size.height / 2
        button6Out.layer.cornerRadius = button6Out.frame.size.height / 2
        buttonSubOut.layer.cornerRadius = buttonSubOut.frame.size.height / 2
        
        //T-4 Layer
        button1Out.layer.cornerRadius = button1Out.frame.size.height / 2
        button2Out.layer.cornerRadius = button2Out.frame.size.height / 2
        button3Out.layer.cornerRadius = button3Out.frame.size.height / 2
        buttonAddOut.layer.cornerRadius = buttonAddOut.frame.size.height / 2
        
        //T-5 Layer
        button0Out.layer.cornerRadius = button4Out.frame.size.height / 2
        buttonDotOut.layer.cornerRadius = button5Out.frame.size.height / 2
        buttonEqOut.layer.cornerRadius = button6Out.frame.size.height / 2
    }
    
    var initialState = true
    var currentDefaultOperand = "+"
    var tempVar:Double?
    var resultValue:String?

    @IBAction func buttonZeroAction(_ sender: UIButton) {
        PushNumberToDisplay(number: "0")
    }
    
    @IBAction func buttonOneAction(_ sender: UIButton) {
        PushNumberToDisplay(number: "1")
    }
    
    @IBAction func buttonTwoAction(_ sender: UIButton) {
        PushNumberToDisplay(number: "2")
    }
    
    @IBAction func buttonThreeAction(_ sender: UIButton) {
        PushNumberToDisplay(number: "3")
    }
    
    @IBAction func buttonFourAction(_ sender: UIButton) {
        PushNumberToDisplay(number: "4")
    }
    
    @IBAction func buttonFiveAction(_ sender: UIButton) {
        PushNumberToDisplay(number: "5")
    }
    
    @IBAction func buttonSixAction(_ sender: UIButton) {
        PushNumberToDisplay(number: "6")
    }
    
    @IBAction func buttonSevenAction(_ sender: UIButton) {
        PushNumberToDisplay(number: "7")
    }
    
    @IBAction func buttonEightAction(_ sender: UIButton) {
        PushNumberToDisplay(number: "8")
    }
    
    @IBAction func buttonNineAction(_ sender: UIButton) {
        PushNumberToDisplay(number: "9")
    }
    
    @IBAction func buttonPeriodAction(_ sender: UIButton) {
        PushNumberToDisplay(number: ".")
    }
    
    func PushNumberToDisplay(number: String){
        var numberOnDisplay = String(outputLabel.text!)
        if initialState == true {
            numberOnDisplay = ""
            initialState = false
        }
        numberOnDisplay = numberOnDisplay + number
        outputLabel.text = numberOnDisplay
    }
    
    
    @IBAction func additionAction(_ sender: UIButton) {
        currentDefaultOperand = "+"
        tempVar = Double(outputLabel.text!)
        initialState = true
    }
    
    @IBAction func subtractAction(_ sender: UIButton) {
        currentDefaultOperand = "-"
        tempVar = Double(outputLabel.text!)
        initialState = true
    }
    
    @IBAction func multiplyAction(_ sender: UIButton) {
        currentDefaultOperand = "*"
        tempVar = Double(outputLabel.text!)
        initialState = true
    }
    
    @IBAction func divideAction(_ sender: UIButton) {
        currentDefaultOperand = "/"
        tempVar = Double(outputLabel.text!)
        initialState = true
    }
    
    @IBAction func equalsAction(_ sender: UIButton) {
          let tempVar2 = Double(outputLabel.text!)
//        var resultValue:String?
        switch currentDefaultOperand {
        case "+":
            resultValue = "\(tempVar! + tempVar2!)"
        case "-":
            resultValue = "\(tempVar! - tempVar2!)"
        case "*":
            resultValue = "\(tempVar! * tempVar2!)"
        case "/":
            if tempVar2 == 0 || tempVar2 == 0.0 {
                resultValue = "\("Error")"
            }else{
                resultValue = "\(tempVar! / tempVar2!)"
            }
        case "√":
            if (tempVar != nil) {
                resultValue = "\(pow(tempVar!, 0.5))"
            }
            if (tempVar2 != nil) {
                resultValue = "\(pow(tempVar2!, 0.5))"
            }
//            if ((tempVar != nil) && (tempVar2 != nil)) {
//                resultValue = "\(pow(Double(resultValue ?? "Can't be done")!, 0.5))"
//            }
        default:
            resultValue = ""
        }
        outputLabel.text = (String(resultValue!))
        initialState = true
        
    }
    
    @IBAction func signChangeAction(_ sender: UIButton) {
        var numberOnDisplay = String(outputLabel.text!)
        numberOnDisplay = "-" + numberOnDisplay
        outputLabel.text = numberOnDisplay
    }
    
    @IBAction func clearAction(_ sender: UIButton) {
        
    }
    
    @IBAction func allClearAction(_ sender: UIButton) {
        outputLabel.text = "0"
        initialState = true
    }
    
    @IBAction func sqrtAction(_ sender: UIButton) {
        currentDefaultOperand = "√"
        tempVar = Double(outputLabel.text!)
        initialState = true
    }
    
    
    
    
    

}

