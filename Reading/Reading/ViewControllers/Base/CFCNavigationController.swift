//
//  CFCNavigationController.swift
//  Reading
//
//  Created by cuifengchuan on 16/6/16.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit

class CFCNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func pushViewController(viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


