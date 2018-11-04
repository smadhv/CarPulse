//
//  SignUpScreen-logic.swift
//  CarPulse
//
//  Created by Ajay Raj Merchia on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import Foundation
import UIKit

extension SignUpScreen {
    @objc func attemptSignUp() {
        hud = alerts.startProgressHud(withMsg: "Creating Account")
        signUpButton.isUserInteractionEnabled = false
    }
}
