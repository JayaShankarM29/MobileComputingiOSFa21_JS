//
//  ViewController.swift
//  HelloUser
//
//  Created by JayaShankar Mangina on 8/31/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputText: UITextField!
    
    
    @IBOutlet weak var OutputLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func submitButton(_ sender: Any) {
        var inField = InputText.text!
        OutputLabel.text = "Hello, \(inField)!"
    }
    
    
}

