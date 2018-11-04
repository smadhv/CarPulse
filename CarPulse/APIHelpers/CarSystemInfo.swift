//
//  CarSystemInfo.swift
//  CarPulse
//
//  Created by Sarika Madhvapathy on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import Foundation
import SmartDeviceLink
import UIKit

class CarSystemInfo {
    static func initSysInfo() {
        displaySysInfo()
    }
    
    static func displaySysInfo() {
        let getVehicleData = SDLGetVehicleData()
        getVehicleData.prndl = true as NSNumber & SDLBool
        guard let manager = SDLProxyManager.sharedManager.sdlManager else {
            debugPrint("fucked up")
            return
        }
        
        manager.send(request: getVehicleData) { (request, response, error) in
            guard let response = response as? SDLGetVehicleDataResponse else { return }
            
            if let error = error {
                print("Encountered Error sending GetVehicleData: \(error)")
                return
            }
            
            
            
//            if !response.resultCode == .success {
//                if response.resultCode == .rejected {
//                    print("GetVehicleData was rejected. Are you in an appropriate HMI?")
//                } else if response.resultCode == .disallowed {
//                    print("Your app is not allowed to use GetVehicleData")
//                } else {
//                    print("Some unknown error has occured!")
//                }
//                return
//            }
            
            guard let prndl = response.prndl else { return }
            
            debugPrint(prndl)
    }

    }
}
