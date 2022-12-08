//
//  LoginViewController.swift
//  loginPage
//
//  Created by AMBIN02625 on 07/12/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        dismissKeyboard()
        
    }

    @IBAction func btnLogin(_ sender: UIButton) {
        if let email = txtEmail.text, let password = txtPassword.text{ 
                    if !email.validateEmailId() {
                        openAlert(title: "Alert", message: "Email Address not found.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                            print("Okay Clicked!")
                        }])
                    }else if !password.validatePassword() {
                        openAlert(title: "Alert", message: "Please enter valid password.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                            print("Okay Clicked!")
                        }])
                    }else{
                        //Navigation - Home Screen
                    }
                }else{
                    openAlert(title: "Alert", message: "Please enter details.", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                        print("Okay Clicked!")
                    }])
                }
            }

}
