//
//  SignUpScreen-initUI.swift
//  CarPulse
//
//  Created by Ajay Raj Merchia on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import Foundation
import UIKit
import JGProgressHUD

extension SignUpScreen {
    func initUI() {
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = .white
        
        initNav()
        initPrompt()
        initTextfields()
        initSubmit()
    }
    
    func initNav() {
        
        let navbar = UINavigationBar(frame: CGRect(x: 0, y: .PADDING, width: view.frame.width, height: 50));
        navbar.tintColor = .FORD_BLUE
        navbar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navbar.shadowImage = UIImage()
        navbar.isTranslucent = true
        
        self.view.addSubview(navbar)
        
        let navItem = UINavigationItem(title: "")
        let navBarbutton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.stop, target: self, action: #selector(goBack))
        navItem.leftBarButtonItem = navBarbutton
        
        navbar.items = [navItem]
    }
    
    func initPrompt() {
        prompt = UILabel(frame: CGRect(x: 0, y: 70, width: view.frame.width, height: 70))
        prompt.textAlignment = .center
        prompt.textColor = .FORD_BLUE
        prompt.font = UIFont.SUBTITLE_FONT
        prompt.text = "Let's get to know you!"
        
        view.addSubview(prompt)
    }
    
    func initTextfields() {
        let underlineThickness: CGFloat = 1.5
    
        emailField = UITextField(frame: LayoutManager.belowCentered(elementAbove: prompt, padding: .PADDING, width: view.frame.width/2, height: 40))
        emailField.backgroundColor = rgba(0,0,0,0)
        emailField.insetsLayoutMarginsFromSafeArea = true
        emailField.textColor = .FORD_BLUE
        emailField.attributedPlaceholder = NSAttributedString(string: "email",
                                                              attributes: [NSAttributedString.Key.foregroundColor: UIColor.flatWhiteDark])
        
        emailField.layer.cornerRadius = 5
        emailField.textAlignment = .center
        emailField.tintColor = .FORD_BLUE
        emailField.autocapitalizationType = .none
        emailField.autocorrectionType = .no
        emailField.becomeFirstResponder()
        view.addSubview(emailField)
        
        
        password1Field = UITextField(frame: LayoutManager.belowCentered(elementAbove: emailField, padding: .PADDING, width: emailField.frame.width, height: emailField.frame.height))
        
        password1Field.backgroundColor = rgba(0,0,0,0)
        password1Field.insetsLayoutMarginsFromSafeArea = true
        password1Field.textColor = .FORD_BLUE
        password1Field.attributedPlaceholder = NSAttributedString(string: "password",
                                                                  attributes: [NSAttributedString.Key.foregroundColor: UIColor.flatWhiteDark])
        
        password1Field.layer.cornerRadius = 5
        password1Field.isSecureTextEntry = true
        password1Field.textAlignment = .center
        password1Field.tintColor = .FORD_BLUE
        view.addSubview(password1Field)
        
        password2Field = UITextField(frame: LayoutManager.belowCentered(elementAbove: password1Field, padding: .PADDING, width: password1Field.frame.width, height: password1Field.frame.height))
        
        password2Field.backgroundColor = rgba(0,0,0,0)
        password2Field.insetsLayoutMarginsFromSafeArea = true
        password2Field.textColor = .FORD_BLUE
        password2Field.attributedPlaceholder = NSAttributedString(string: "confirm password",
                                                                  attributes: [NSAttributedString.Key.foregroundColor: UIColor.flatWhiteDark])
        
        password2Field.layer.cornerRadius = 5
        password2Field.isSecureTextEntry = true
        password2Field.textAlignment = .center
        password2Field.tintColor = .FORD_BLUE
        password2Field.returnKeyType = .next
        password2Field.delegate = self
        
        view.addSubview(password2Field)
        
        view.addSubview(Utils.getBottomBorder(forView: emailField, thickness: underlineThickness, color: .FORD_BLUE))
        view.addSubview(Utils.getBottomBorder(forView: password1Field, thickness: underlineThickness, color: .FORD_BLUE))
        view.addSubview(Utils.getBottomBorder(forView: password2Field, thickness: underlineThickness, color: .FORD_BLUE))
    }
    
    func initSubmit() {
        signUpButton = UIButton(frame: LayoutManager.belowCentered(elementAbove: password2Field, padding: 3*CGFloat.PADDING, width: view.frame.width/2, height: 60))
        signUpButton.setTitle("Sign Up!", for: .normal)
        signUpButton.titleLabel?.font = UIFont.SUBTITLE_FONT
        signUpButton.setTitleColor(.white, for: .normal)
        signUpButton.setBackgroundColor(color: .FORD_BLUE, forState: .normal)
//        signUpButton.setBackgroundColor(color: Constants.RECRUITMATE_BLUE_DARK, forState: .highlighted)
        signUpButton.clipsToBounds = true
        signUpButton.layer.cornerRadius = 5
        signUpButton.addTarget(self, action: #selector(attemptSignUp), for: .touchUpInside)
        
        view.addSubview(signUpButton)
    }
    
    @objc func goBack() {
        self.dismiss(animated: true, completion: {})
    }
    
    
}

extension SignUpScreen: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == password2Field {
            attemptSignUp()
            return false
        }
        return true
    }
}
