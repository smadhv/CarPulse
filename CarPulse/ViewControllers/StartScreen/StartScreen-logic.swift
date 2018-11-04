//
//  StartScreen-logic.swift
//  CarPulse
//
//  Created by Ajay Raj Merchia on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import Foundation
import UIKit
extension StartScreen {
    @objc func loginWithEmail() {
        
    }
    
    @objc func toSignup() {
        SDLProxyManager.sharedManager.carScreen.text.text = "Go Sarika"
        performSegue(withIdentifier: "start2Signup", sender: self)
    }
}
