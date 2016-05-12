//
//  HintView.swift
//  Reading
//
//  Created by cuifengchuan on 16/5/11.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit
import SnapKit

class HintView: UIView {

    var hintText: String {
        get {
            return self.hintText
        }
        set {
            mHintLabel.text = newValue
        }
    }
    var hintImage: UIImage {
        get {
            return self.hintImage
        }
        set {
            mHintImageView.image = newValue
        }
    }
    
    private var mHintLabel: UILabel!
    private var mHintImageView: UIImageView!
    private var mTappedAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.whiteColor()
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapped)))
        
        mHintLabel = UILabel.init()
        mHintLabel.text = "数据错误"
        mHintLabel.font = UIFont.systemFontOfSize(15)
        mHintLabel.textColor = UIColor.colorWithHexValue("e1e1e1")
        self.addSubview(mHintLabel)
        mHintLabel .snp_makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.centerY.equalTo(self)
        }
        
        mHintImageView = UIImageView.init()
        mHintImageView.image = UIImage.init(named: "common_network_error")
        self.addSubview(mHintImageView)
        mHintImageView .snp_makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.bottom.equalTo(mHintLabel.snp_top).offset(-18)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK:Public Methods
    
    func addTappedAction(tappedAction: () -> Void) {
        mTappedAction = tappedAction
    }
    
    //MARK:Selector Methods
    
    @objc private func tapped() {
        if mTappedAction != nil {
            mTappedAction!()
        }
    }
    
}
