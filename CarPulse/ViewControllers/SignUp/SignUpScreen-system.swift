//
//  SignUpScreen-system.swift
//  CarPulse
//
//  Created by Ajay Raj Merchia on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import Foundation
import UIKit

extension SignUpScreen {
    func setupManagers() {
        alerts = AlertManager(view: self, stateRestoration: {
            self.signUpButton.isUserInteractionEnabled = true
            self.hud?.dismiss()
        })
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false

    }
    
    
}
