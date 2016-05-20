//
//  ChoiceSwitchView.swift
//  Reading
//
//  Created by cuifengchuan on 16/5/20.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit

class ChoiceSwitchView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(frame: CGRect, titleArr: NSArray) {
        super.init(frame: frame)
        self.backgroundColor = Constants.Color.BaseColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
