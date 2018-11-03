//
//  AlertManager.swift
//
//  Created by Ajay Raj Merchia on 10/10/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import Foundation
import UIKit
import JGProgressHUD

class AlertManager {
    private var srcView:UIViewController!
    private var callback:(() -> ())?
    init(view: UIViewController) {
        srcView = view
    }
    init(view: UIViewController, stateRestoration: @escaping (() -> ()) ) {
        srcView = view
        callback = stateRestoration
    }
    
    func displayAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(defaultAction)
        srcView.present(alert, animated: true, completion: nil)
        callback?()
    }
    
    func startProgressHud(withMsg:String) -> JGProgressHUD {
        let hud = JGProgressHUD(style: .light)
        hud.textLabel.text = withMsg
        hud.show(in: self.srcView.view)
        return hud
    }
    
    
    
}
