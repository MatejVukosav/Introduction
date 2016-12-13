//
//  ViewController.swift
//  Introduction
//
//  Created by user on 12/13/16.
//  Copyright © 2016 vuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameEtxt: UITextField!
    @IBOutlet weak var lastNameEtxt: UITextField!
    @IBOutlet weak var emailAddressEtxt: UITextField!
    
    
    @IBAction func clearFields(_ sender: UIButton) {
        
        print("\(sender.currentTitle) button tap!")
        firstNameEtxt.text="";
        lastNameEtxt.text="";
        emailAddressEtxt.text=""
        
    }
    
    
    @IBAction func submitFields(_ sender: UIButton) {
        let fName = firstNameEtxt.text;
        let lName = lastNameEtxt.text;
        let email = emailAddressEtxt.text
    
        print("First name is: "+fName!)
        print("Last name is: "+lName!)
        print("Email address is: "+email!)
    
    }
    
}

