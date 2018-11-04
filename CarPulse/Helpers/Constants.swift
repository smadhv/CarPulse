//
//  Constants.swift
//  RecruitMate
//
//  Created by Ajay Raj Merchia on 10/20/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import Foundation
import UIKit
class Constants {
    // Web Authentication & Endpoints
    static let PAYPAL_CLIENT = "AUG_IXlQPZIBiv-ng2FqfXsD6wm85Ic-6oWTFdF4rMwMTwMLO8BVE8EW2orHi5K-d3lk7s4G0RYbiIqS"
    static let PAYPAL_SECRET = "ECYaw4sHgDlxb-iSA7Zk-xYuq6tsi3k_68dToEkWPRREqyAh-8phJdGfVIKWHYG-3SL2L4VMJlwfaFEf"
    
    
}

extension CGFloat {
    static let PADDING:CGFloat = 20
    static let MARGINAL_PADDING:CGFloat = 5
    static let HEADER_FONT_SIZE: CGFloat = 40
    static let SUBTITLE_FONT_SIZE: CGFloat = 25
}

extension UIFont {
    static let HEADER_FONT = UIFont(name: "Avenir-Heavy", size: .HEADER_FONT_SIZE)
    static let SUBTITLE_FONT = UIFont(name: "Avenir-Roman", size: .SUBTITLE_FONT_SIZE)
    static let TEXT_FONT = UIFont(name: "Avenir-Roman", size: 16)
}

extension UIColor {
    static let FORD_BLUE = rgb(19, 81, 216)
    static let PLACEHOLDER_COLOR = rgb(184, 184, 193)
}

