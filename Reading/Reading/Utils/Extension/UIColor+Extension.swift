//
//  UIColor+Extension.swift
//  Reading
//
//  Created by cuifengchuan on 16/4/25.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit

extension UIColor {
    class private func colorWithRGBHex(RGBHex: UInt32) -> UIColor {
        let r: CGFloat = (CGFloat)((RGBHex >> 16) & 0xFF)
        let g: CGFloat = (CGFloat)((RGBHex >> 8) & 0xFF)
        let b: CGFloat = (CGFloat)(RGBHex & 0xFF)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1)
    }
    
    class func colorWithHexValue(hexValue: String) -> UIColor {
        let scanner = NSScanner(string: hexValue)
        var hexNum: UInt32 = 0
        if scanner.scanHexInt(&hexNum) == false {
            return UIColor.clearColor()
        } else {
            return UIColor.colorWithRGBHex(hexNum)
        }
    }
}