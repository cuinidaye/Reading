//
//  ChoiceViewController.swift
//  Reading
//
//  Created by cuifengchuan on 16/4/22.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit

class ChoiceViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "书城"
        
        let hint = HintView(frame: CGRectMake(0, 0, Constants.View.ScreenWidth, Constants.View.ScreenHeight - 64 - 49))
        hint.addTappedAction { () in
            print("closure called")
        }
        self.view.addSubview(hint)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
