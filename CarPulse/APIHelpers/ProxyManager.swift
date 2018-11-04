//
//  ProxyManager.swift
//  CarPulse
//
//  Created by Ajay Raj Merchia on 11/3/18.
//  Copyright © 2018 Ajay Raj Merchia. All rights reserved.
//

import Foundation
import SmartDeviceLink
import UIKit

class SDLProxyManager: NSObject {
    private let appName = "CarPulse"
    private let appId = "1234567890"
    
    // UPDATE ME ON SERVER USE
    static var local = true
    private let givenIP = local ? "192.168.0.28" : "m.sdl.tools"
    private let givenPort:UInt16 = local ? 12345 : 11947
    
    // Manager
    var sdlManager: SDLManager!
    var carScreen: CarScreen!
    
    // Singleton
    static let sharedManager = SDLProxyManager()
    
    
    private override init() {
        super.init()
        
        // Used for USB Connection
//        let lifecycleConfiguration = SDLLifecycleConfiguration(appName: appName, appId: appId)
        
        // Used for TCP/IP Connection
        let lifecycleConfiguration = SDLLifecycleConfiguration(appName: appName, appId: appId, ipAddress: givenIP, port: givenPort)
        lifecycleConfiguration.shortAppName = "CarPulse"
        lifecycleConfiguration.appType = SDLAppHMIType.navigation
        
        // App icon image
        //        if let appImage = UIImage(named: "<#AppIcon Name#>") {
        //            let appIcon = SDLArtwork(image: appImage, name: "<#Name to Upload As#>", persistent: true, as: .JPG /* or .PNG */)
        //            lifecycleConfiguration.appIcon = appIcon
        //        }
        
        let lockScreenConfig = SDLLockScreenConfiguration.disabled()
        let logConfig = SDLLogConfiguration.debug()
        
        
        carScreen = CarScreen()
        
        let streamingConfig = SDLStreamingMediaConfiguration.autostreamingInsecureConfiguration(withInitialViewController: carScreen)
        let config = SDLConfiguration(lifecycle: lifecycleConfiguration, lockScreen: lockScreenConfig, logging: logConfig, streamingMedia: streamingConfig)

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
extension SDLProxyManager: SDLManagerDelegate {
    func managerDidDisconnect() {
        print("Manager disconnected!")
    }
    
    func hmiLevel(_ oldLevel: SDLHMILevel, didChangeToLevel newLevel: SDLHMILevel) {
        print("Went from HMI level \(oldLevel) to HMI level \(newLevel)")
    }
}
