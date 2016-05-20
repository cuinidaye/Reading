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
        self.automaticallyAdjustsScrollViewInsets = false
        self.view.backgroundColor = Constants.Color.BaseColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}
