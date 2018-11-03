//
//  ProxyManager.swift
//  CarPulse
//
//  Created by Ajay Raj Merchia on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import Foundation
import SmartDeviceLink

class ProxyManager: NSObject {
    private let appName = "CarPulse"
    private let appId = "1234567890"
    
    // UPDATE ME ON USE
    private let givenIP = "m.sdl.tools"
    private let givenPort:UInt16 = 18376
    
    // Manager
    fileprivate var sdlManager: SDLManager!
    
    // Singleton
    static let sharedManager = ProxyManager()
    
    private override init() {
        super.init()
        
        // Used for USB Connection
//        let lifecycleConfiguration = SDLLifecycleConfiguration(appName: appName, appId: appId)
        
        // Used for TCP/IP Connection
        
        
    
        
        
        let lifecycleConfiguration = SDLLifecycleConfiguration(appName: appName, appId: appId, ipAddress: givenIP, port: givenPort)
        lifecycleConfiguration.shortAppName = "CarPulse"
        lifecycleConfiguration.appType = SDLAppHMIType.default
        
        // App icon image
        //        if let appImage = UIImage(named: "<#AppIcon Name#>") {
        //            let appIcon = SDLArtwork(image: appImage, name: "<#Name to Upload As#>", persistent: true, as: .JPG /* or .PNG */)
        //            lifecycleConfiguration.appIcon = appIcon
        //        }
        
        let lockScreenConfig = SDLLockScreenConfiguration.enabled()
        let logConfig = SDLLogConfiguration.default()
        
        let config = SDLConfiguration(lifecycle: lifecycleConfiguration, lockScreen: lockScreenConfig, logging: logConfig)
            
        sdlManager = SDLManager(configuration: config, delegate: self)
    }
    
    func connect() {
        // Start watching for a connection with a SDL Core
        sdlManager.start { (success, error) in
            if success {
                // Your app has successfully connected with the SDL Core
            }
        }
    }
}

//MARK: SDLManagerDelegate
extension ProxyManager: SDLManagerDelegate {
    func managerDidDisconnect() {
        print("Manager disconnected!")
    }
    
    func hmiLevel(_ oldLevel: SDLHMILevel, didChangeToLevel newLevel: SDLHMILevel) {
        print("Went from HMI level \(oldLevel) to HMI level \(newLevel)")
    }
}