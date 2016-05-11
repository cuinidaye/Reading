//
//  AppDelegate.swift
//  Reading
//
//  Created by cuifengchuan on 16/4/21.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = CFCTabBarController()
        window?.makeKeyAndVisible()
        configGlobalAppearance()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        
    }

    func applicationDidEnterBackground(application: UIApplication) {
        
    }

    func applicationWillEnterForeground(application: UIApplication) {
       
    }

    func applicationDidBecomeActive(application: UIApplication) {
        
    }

    func applicationWillTerminate(application: UIApplication) {
      
    }

    //配置全局外观属性
    private func configGlobalAppearance() {
        UINavigationBar.appearance().barTintColor = UIColor.colorWithHexValue("f4303d");
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor(), NSFontAttributeName : UIFont.systemFontOfSize(18)]
        
        UITextView.appearance().tintColor = UIColor.colorWithHexValue("f4303d")
        UITextField.appearance().tintColor = UIColor.colorWithHexValue("f4303d")
    }
}

