//
//  StartScreen-initUI.swift
//  CarPulse
//
//  Created by Sarika Madhvapathy on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import Foundation
import UIKit

extension StartScreen {
    func initUI() {
        initImage()
        initTextFields()
        initButtons()
    }
    
    func initImage() {
        logoHolder = UIImageView(frame: CGRect(x: .PADDING, y: view.frame.height / 5, width: view.frame.width - 2 * CGFloat.PADDING, height: view.frame.height / 4))
        logoHolder.image = UIImage(named: "logo-blue")
        logoHolder.contentMode = .scaleAspectFit
        view.addSubview(logoHolder)
        
    }
    
    func initTextFields() {
        usernameField = UITextField(frame: LayoutManager.belowCentered(elementAbove: logoHolder, padding: 3 * CGFloat.PADDING, width: view.frame.width / 2, height: 40))
        usernameField.backgroundColor = UIColor.FORD_BLUE
        usernameField.insetsLayoutMarginsFromSafeArea = true
        usernameField.textColor = UIColor.white
        usernameField.textAlignment = .center
        usernameField.attributedPlaceholder = NSAttributedString(string: "username",
                                                              attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        usernameField.autocapitalizationType = .none

        view.addSubview(usernameField)

        passwordField = UITextField(frame: LayoutManager.belowCentered(elementAbove: usernameField, padding: CGFloat.PADDING, width: view.frame.width / 2, height: 40))
        passwordField.backgroundColor = UIColor.FORD_BLUE
        passwordField.insetsLayoutMarginsFromSafeArea = true
        passwordField.textColor = UIColor.white
        passwordField.textAlignment = .center
        passwordField.attributedPlaceholder = NSAttributedString(string: "password",
                                                                 attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        passwordField.autocapitalizationType = .none

        view.addSubview(passwordField)
    }
    
    func initButtons() {
        
    }
    
}
