//
//  StartScreen-initUI.swift
//  CarPulse
//
//  Created by Sarika Madhvapathy on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework

extension StartScreen {
    func initUI() {
        initImage()
        initTextFields()
        initButtons()
    }
    
    func initImage() {
        logoHolder = UIImageView(frame: CGRect(x: 0, y: view.frame.height / 6, width: view.frame.width, height: view.frame.height / 3.5))
        logoHolder.image = UIImage(named: "logo-blue")
        logoHolder.contentMode = .scaleAspectFit
        view.addSubview(logoHolder)
        
        appHeader = UILabel(frame: LayoutManager.belowCentered(elementAbove: logoHolder, padding: 0, width: view.frame.width / 2, height: 50))
        appHeader.textAlignment = .center
        appHeader.text = "CarPulse"
        appHeader.textColor = UIColor.FORD_BLUE
        appHeader.font = UIFont.HEADER_FONT
        appHeader.adjustsFontSizeToFitWidth = true
        
        view.addSubview(appHeader)
    }
    
    func initTextFields() {
        emailField = UITextField(frame: LayoutManager.belowCentered(elementAbove: appHeader, padding: 3 * CGFloat.PADDING, width: view.frame.width / 1.5, height: 40))
        emailField.textColor = UIColor.flatGray
        emailField.tintColor = UIColor.flatGray
        emailField.insetsLayoutMarginsFromSafeArea = true
        emailField.textAlignment = .center
        emailField.attributedPlaceholder = NSAttributedString(string: "email",
                                                              attributes: [NSAttributedString.Key.foregroundColor: UIColor.flatGray])
        emailField.autocapitalizationType = .none


        view.addSubview(emailField)
        view.addSubview(Utils.getBottomBorder(forView: emailField, thickness: 1, color: .flatGray))

        passwordField = UITextField(frame: LayoutManager.belowCentered(elementAbove: emailField, padding: CGFloat.PADDING, width: view.frame.width / 1.5, height: 40))
        passwordField.textColor = UIColor.flatGray
        passwordField.tintColor = UIColor.flatGray
        passwordField.insetsLayoutMarginsFromSafeArea = true
        passwordField.textAlignment = .center
        passwordField.attributedPlaceholder = NSAttributedString(string: "password",
                                                                 attributes: [NSAttributedString.Key.foregroundColor: UIColor.flatGray])
        passwordField.autocapitalizationType = .none
        passwordField.isSecureTextEntry = true

        view.addSubview(passwordField)
        view.addSubview(Utils.getBottomBorder(forView: passwordField, thickness: 1, color: .flatGray))
    }
    
    func initButtons() {
        signIn = UIButton(frame: LayoutManager.belowCentered(elementAbove: passwordField, padding: .PADDING*3, width: view.frame.width / 2, height: 50))
        
        signIn.setTitle("Login", for: .normal)
        signIn.setTitleColor(.white, for: .normal)
        signIn.setTitleColor(.flatWhiteDark, for: .highlighted)
        signIn.setBackgroundColor(color: .FORD_BLUE, forState: .normal)
        signIn.titleLabel?.font = UIFont.SUBTITLE_FONT
        signIn.addTarget(self, action: #selector(loginWithEmail), for: .touchUpInside)
        
        view.addSubview(signIn)
        
        signUp = UIButton(frame: CGRect(x: 0, y: view.frame.height - (30 + CGFloat.PADDING), width: view.frame.width, height: 30))
        signUp.setTitle("New here? Sign up!", for: .normal)
        signUp.setTitleColor(.FORD_BLUE, for: .normal)
        signUp.setTitleColor(.flatBlueDark, for: .highlighted)
        signUp.titleLabel?.font = .TEXT_FONT
        signUp.addTarget(self, action: #selector(toSignup), for: .touchUpInside)
        view.addSubview(signUp)
        
    }
    
    
    
}
