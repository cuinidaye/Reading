//
//  UserCenterViewController.swift
//  Reading
//
//  Created by cuifengchuan on 16/4/22.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit

class UserCenterViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "我的"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "修改昵称", style: .Plain, target: self, action: #selector(rightItemClicked))
    }
    
    func rightItemClicked(sender: AnyObject) {
        self.navigationController?.pushViewController(ChangeNicknameViewController(), animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
