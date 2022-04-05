//
//  ViewController.swift
//  Hello world
//
//  Created by Priyanshu Patel on 29/11/21.
//  Copyright © 2021 Super Sapra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHelloLabel()
        setupSubmitButton()
       
    }
    
    func setupHelloLabel() {
        helloLabel.layer.backgroundColor = UIColor.red.cgColor
        helloLabel.layer.cornerRadius = 10
        helloLabel.layer.masksToBounds = true
        helloLabel.textColor = UIColor.white
        helloLabel.layer.borderColor = UIColor.black.cgColor
        helloLabel.layer.borderWidth = 3
    }
    
    func setupSubmitButton() {
        submitButton.layer.backgroundColor = UIColor.yellow.cgColor
        submitButton.layer.cornerRadius = 10
        submitButton.layer.masksToBounds = true
        submitButton.layer.borderColor = UIColor.black.cgColor
        submitButton.layer.borderWidth = 3
        submitButton.titleLabel?.textColor = UIColor.black
    }
    
    @IBAction func clickSubmitButton(submitButton: UIButton) {
        if enterNameTextField.text != "" {
            helloLabel.isHidden = false
            helloLabel.text = "Hello \(enterNameTextField.text!)"
        }else {
            helloLabel.isHidden = true
            print("Enter your name")
        }
   }
    
    
    

}

