//
//  Constants.swift
//  Reading
//
//  Created by cuifengchuan on 16/5/12.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit

struct Constants {
    
    struct View {
        static let ScreenWidth: CGFloat = UIScreen.mainScreen().bounds.size.width
        static let ScreenHeight: CGFloat = UIScreen.mainScreen().bounds.size.height
        
        static let ScreenRatio: CGFloat = View.ScreenWidth / 375.0
        
        static let UserCenterItemHeight: CGFloat = 45
    }
    
    struct Color {
        static let MainColor: UIColor = UIColor.colorWithHexValue("f4303d")
        static let BaseColor: UIColor = UIColor.colorWithHexValue("f9f9f9")
    }
    
    struct NotificationKey {
        
    }
    
    struct Web {
        static let Category: String = "http://rd.xs.cn/1210?sr=2"//分类页面
    }
}