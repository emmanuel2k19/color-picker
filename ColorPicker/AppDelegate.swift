//
//  AppDelegate.swift
//  ColorPicker
//
//  Created by Emmanuel Pena on 2/13/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication,
                         didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            
            window = UIWindow(frame: UIScreen.main.bounds)
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let initialViewController = storyboard.instantiateInitialViewController()
            
            window?.rootViewController = initialViewController
            window?.makeKeyAndVisible()
            
            return true
        }
    
    
    

}

