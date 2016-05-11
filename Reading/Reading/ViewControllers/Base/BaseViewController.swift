//
//  BaseViewController.swift
//  Reading
//
//  Created by cuifengchuan on 16/4/22.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.translucent = false
        self.view.backgroundColor = UIColor.lightGrayColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
//    override func preferredStatusBarStyle() -> UIStatusBarStyle {
//        return UIStatusBarStyle.LightContent;
//    }
}
