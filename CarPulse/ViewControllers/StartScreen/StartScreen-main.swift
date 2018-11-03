//
//  StartScreen.swift
//  CarPulse
//
//  Created by Sarika Madhvapathy on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import UIKit

class StartScreen: UIViewController {

    var logoHolder:UIImageView!
    var usernameField:UITextField!
    var passwordField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = ViewController()
        vc.addText()
        
        // Do any additional setup after loading the view.
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
