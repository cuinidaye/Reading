//
//  UserCenterItemView.swift
//  Reading
//
//  Created by cuifengchuan on 16/6/22.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit
import SnapKit

class UserCenterItemView: UIView {
    
    typealias ClickHandler = () -> Void

    private var mIconImageView: UIImageView!
    private var mTitleLabel: UILabel!
    private var mIndicatorImageView: UIImageView!
    private var mContentLabel: UILabel!
    private var clickHandler: ClickHandler?
    
    convenience init(iconImage: UIImage, title: String) {
        self.init(iconImage: iconImage, title: title, contentText: "")
    }
    
    init(iconImage: UIImage, title: String, contentText: String) {
        super.init(frame: CGRectZero)
        
        self.backgroundColor = UIColor.whiteColor()
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.colorWithHexValue("e1e1e1").CGColor
        
        mIconImageView = UIImageView(image: iconImage)
        self.addSubview(mIconImageView)
        mIconImageView.snp_makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.left.equalTo(self).offset(15)
        }
        
        mTitleLabel = UILabel()
        mTitleLabel.text = title
        mTitleLabel.textColor = UIColor.colorWithHexValue("333333")
        mTitleLabel.font = UIFont.systemFontOfSize(16)
        self.addSubview(mTitleLabel)
        mTitleLabel.snp_makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.left.equalTo(mIconImageView.snp_right).offset(15)
        }
        
        mIndicatorImageView = UIImageView(image: UIImage(named: "usercenter_more_n"))
        self.addSubview(mIndicatorImageView)
        mIndicatorImageView.snp_makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.right.equalTo(self).offset(-8)
        }
        
        mContentLabel = UILabel()
        mContentLabel.text = contentText
        mContentLabel.font = UIFont.systemFontOfSize(12)
        mContentLabel.textColor = UIColor.colorWithHexValue("666666")
        self.addSubview(mContentLabel)
        mContentLabel.snp_makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.right.equalTo(mIndicatorImageView.snp_left).offset(-10)
        }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(clicked))
        self.addGestureRecognizer(tap)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setContentText(text: String) {
        mContentLabel.text = text
    }
    
    func addClickHandler(click: ClickHandler) {
        clickHandler = click
    }
    
    func addTarget(target: AnyObject, action: Selector) {
        let tap = UITapGestureRecognizer(target: target, action: action)
        self.addGestureRecognizer(tap)
    }
    
    @objc private func clicked() {
        if clickHandler != nil {
            clickHandler!()
        }
    }
}