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
        configAppearance()
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

    /*
    UINavigationBar *appearance = [UINavigationBar appearance];
    appearance.tintColor = [UIColor whiteColor];
    appearance.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, [UIFont systemFontOfSize:18], NSFontAttributeName, nil];
    [appearance setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithHexValue:@"f4303d"]]
    forBarPosition:UIBarPositionAny
    barMetrics:UIBarMetricsDefault];
    [appearance setShadowImage:[[UIImage alloc] init]];
    
    UITabBar *tabbarAppearance = [UITabBar appearance];
    tabbarAppearance.shadowImage = [UIImage imageWithColor:[UIColor colorWithHexValue:@"e1e1e1"]];
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    //全局游标
    [[UITextField appearance] setTintColor:[UIColor colorWithHexValue:@"f4303d"]];
    [[UITextView appearance] setTintColor:[UIColor colorWithHexValue:@"f4303d"]];*/

    private func configAppearance() {
        UINavigationBar.appearance().barTintColor = UIColor.colorWithHexValue("f4303d");
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
    }
}

