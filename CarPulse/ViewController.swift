//
//  ViewController.swift
//  CarPulse
//
//  Created by Ajay Raj Merchia on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button = UIButton(frame: CGRect(x: 0, y: 300, width: view.frame.width, height: 100))
        button.setTitle("updateText", for: .normal)
        button.setBackgroundColor(color: .black, forState: .normal)
        button.addTarget(self, action: #selector(addText), for: .touchUpInside)
        view.addSubview(button)
        
    }
    
    @objc func addText() {
        let sdlManager = SDLProxyManager.sharedManager.sdlManager!
        sdlManager.screenManager.beginUpdates()
    
        sdlManager.screenManager.textField1 = "Go"
        sdlManager.screenManager.textField2 = "Bears"
        //        sdlManager.screenManager.primaryGraphic = <#SDLArtwork#>
        //        sdlManager.screenManager.softButtonObjects = [<#SDLButtonObject#>, <#SDLButtonObject#>]
    
        sdlManager.screenManager.endUpdates { (error) in
            if error != nil {
                debugPrint("updatedScreen")
            } else {
                debugPrint("failed to update")
            }
        }
    }


}

