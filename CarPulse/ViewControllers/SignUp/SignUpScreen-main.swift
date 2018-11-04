//
//  SignUpScreen.swift
//  CarPulse
//
//  Created by Ajay Raj Merchia on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import UIKit
import JGProgressHUD

class SignUpScreen: UIViewController {

    // UI Elements
    var prompt: UILabel!
    
    var firstNameField: UITextField!
    var lastNameField: UITextField!
    var emailField: UITextField!
    var password1Field: UITextField!
    var password2Field: UITextField!
    
    var signUpButton: UIButton!
    
    // Alert Manager
    var alerts: AlertManager!
    var hud: JGProgressHUD?
    
    // Logic
//    var createdUser: User?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupManagers()
        initUI()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
