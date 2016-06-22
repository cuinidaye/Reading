//
//  UIImage+Extension.swift
//  Reading
//
//  Created by cuifengchuan on 16/4/26.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit

extension UIImage {
    
    class func imageWithColor(color: UIColor?) -> UIImage? {
        return self.imageWithColor(color, size: CGSizeMake(1, 1))
    }

    class func imageWithColor(color: UIColor?, size: CGSize) -> UIImage? {
        if color == nil || size.width <= 0 || size.height <= 0 {
            return nil
        }
        let rect = CGRectMake(0.0, 0.0, size.width, size.height)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, color?.CGColor)
        CGContextFillRect(context, rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
}