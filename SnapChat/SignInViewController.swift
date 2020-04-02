//
//  SignInViewController.swift
//  SnapChat
//
//  Created by Mohit on 02/04/20.
//  Copyright © 2020 Practise. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func turnUpTapped(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            print("We Tried to Sign In")
            if error != nil {
                print("Error : \(error)")
                Auth.auth().createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!, completion: { (user, error) in
                    print("We Tried to create a user")
                    if error != nil {
                        print("Error : \(error)")
                    }else{
                        print("Created User Successfuly!")
                        self.performSegue(withIdentifier: "signInSegue", sender: nil)
                    }
                })
            }else {
                print("Signed In Successfully")
                self.performSegue(withIdentifier: "signInSegue", sender: nil)
            }
        }
        
    }
    
}

