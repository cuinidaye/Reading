//
//  UIView+Extension.swift
//  Reading
//
//  Created by cuifengchuan on 16/6/22.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit

extension UIView {
    
    var snapshotImage: UIImage {
        get {
            UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0)
            self.layer.renderInContext(UIGraphicsGetCurrentContext()!)
            let snap = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return snap
        }
    }
    
    public func setLayerShadow(color: UIColor, offset: CGSize, radius: CGFloat) {
        self.layer.shadowColor = color.CGColor
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = radius
        self.layer.shadowOpacity = 1
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.mainScreen().scale
    }
    
    public func removeAllSubviews() {
        while self.subviews.count != 0 {
            self.subviews[self.subviews.count - 1].removeFromSuperview()
        }
    }
    
    var viewController: UIViewController {
        get {
            return self.traverseResponderChainForUIViewController(self)!
        }
    }
    
    private func traverseResponderChainForUIViewController(responder: UIResponder) -> UIViewController? {
        if let nextResponder = responder.nextResponder() {
            if let nextResp = nextResponder as? UIViewController {
                return nextResp
            } else {
                return traverseResponderChainForUIViewController(nextResponder)
            }
        }
        return nil
    }
    
    var left: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    var top: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }
    
    var right: CGFloat {
        get {
            return self.frame.origin.x + self.frame.size.width
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue - frame.size.width
            self.frame = frame
        }
    }
    
    var bottom: CGFloat {
        get {
            return self.frame.origin.y + self.frame.size.height
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue - frame.size.height
            self.frame = frame
        }
    }
    
    var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    
    var height: CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
    }
    
    var centerX: CGFloat {
        get {
            return self.center.x
        }
        set {
            self.center = CGPointMake(newValue, self.center.y)
        }
    }
    
    var centerY: CGFloat {
        get {
            return self.center.y
        }
        set {
            self.center = CGPointMake(self.center.x, newValue)
        }
    }
    
    var origin: CGPoint {
        get {
            return self.frame.origin
        }
        set {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
    }
    
    var size: CGSize {
        get {
            return self.frame.size
        }
        set {
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
    }
}