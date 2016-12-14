//
//  ViewController.swift
//  Introduction
//
//  Created by user on 12/13/16.
//  Copyright © 2016 vuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    guard https://thatthinginswift.com/guard-statement-swift/
//    http://ericcerney.com/swift-guard-statement/

    @IBOutlet weak var firstNameEtxt: UITextField!
    @IBOutlet weak var lastNameEtxt: UITextField!
    @IBOutlet weak var emailAddressEtxt: UITextField!
    
    
    @IBAction func clearFields(_ sender: UIButton) {
        
        print("\(sender.currentTitle) button tap!")
        firstNameEtxt.text = "";
        lastNameEtxt.text = "";
        emailAddressEtxt.text = ""
        
    }
    
    
    @IBAction func submitFields(_ sender: UIButton) {
 
        //Bouncer Pattern
        guard let fName = firstNameEtxt.text else {
            return
        }
        guard let lName = lastNameEtxt.text else{
            return
        }
        guard let email = emailAddressEtxt.text else {
            return
        }
        
        
        if isDataOk(fName: fName, lName: lName, email: email){
            print("First name is: " + fName)
            print("Last name is: " + lName)
            print("Email address is: " + email)
        }else{
            alert(msg: "Success!")
            print("Data is NOK")
        }
    }
    
    func isDataOk(fName:String,lName:String,email:String)-> Bool{
        if fName.isEmpty {
            alert(msg: "First name is mandatory field")
        }else if lName.isEmpty {
            alert(msg: "Last name is mandatory field")
        }else if email.isEmpty {
            alert(msg: "Email address is mandatory field")
        }else{
          return true
        }
        return false
    }
    
    func alert(msg: String){
        let alert = UIAlertController(title: "Alert", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

