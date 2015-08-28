//
//  LoginViewController.swift
//  DNApp
//
//  Created by Charles Harring on 8/6/15.
//  Copyright (c) 2015 Charles Harring. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var emailImageView: SpringImageView!
    @IBOutlet weak var passwordImageView: SpringImageView!
    @IBOutlet weak var emailTextView: DesignableTextField!
    @IBOutlet weak var emailTextField: DesignableTextField!
    @IBOutlet weak var passwordTextField: DesignableTextField!
    
    
 
    
    @IBAction func closeButtonDidTouch(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func loginButtonDidTouch(sender: AnyObject) {
        dialogView.animation = "shake"
        dialogView.animate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
                // Do any additional setup after loading the view.
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        view.endEditing(true)
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField == emailTextField {
            emailImageView.image = UIImage(named: "icon-mail-active")
            emailImageView.animate()
        } else {
            emailImageView.image = UIImage(named: "icon-mail")
        }
        
        if textField == passwordTextField {
            passwordImageView.image = UIImage(named: "icon-password-active")
            passwordImageView.animate()
        } else {
            passwordImageView.image = UIImage(named: "icon-password")
        }
    }

    
    func textFieldDidEndEditing(textField: UITextField) {
        emailImageView.image = UIImage(named: "icon-mail")
        passwordImageView.image = UIImage(named: "icon-password")
    }

}
