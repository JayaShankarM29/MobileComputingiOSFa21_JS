//
//  ViewController.swift
//  Mangina_Assignment02
//
//  Created by JayaShankar Mangina on 9/1/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var fNameField = firstNameTextField.text!
        var lNameField = lastNameTextField.text!
        displayLabel.text = "\(lNameField),\(fNameField)"
        
        
    }
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        displayLabel.text = ""
        firstNameTextField.becomeFirstResponder()
    }
    
    

}

