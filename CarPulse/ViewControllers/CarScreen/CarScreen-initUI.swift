//
//  CarScreen-initUI.swift
//  CarPulse
//
//  Created by Ajay Raj Merchia on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import Foundation
import UIKit

extension CarScreen {
    func initUI() {
        setScreenSize()
        initText()
        initButton()
    }
    
    func setScreenSize() {
        view.frame = CGRect(x: 0, y:0, width: 800, height: 640)
        view.backgroundColor = .white
    }
    
    func initText() {
        text = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        text.text = "Go Bears"
        text.textAlignment = .center
        text.textColor = UIColor.FORD_BLUE
        view.addSubview(text)
    }
    
    func initButton() {
        butt = UIButton(frame: LayoutManager.belowCentered(elementAbove: text, padding: .PADDING, width: 100, height: 20))
        butt.setBackgroundColor(color: .black, forState: .normal)
        butt.addTarget(self, action: #selector(bootyCall), for: .touchUpInside)
        
        view.addSubview(butt)
    }
    
    @objc func bootyCall() {
        debugPrint("hello")
        CarSystemInfo.displaySysInfo()
    }
    
}
