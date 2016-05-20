//
//  ChangeNicknameViewController.swift
//  Reading
//
//  Created by cuifengchuan on 16/5/20.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit
import SnapKit

class ChangeNicknameViewController: BaseViewController {

    let TextFieldHeightOnIPhone6: CGFloat = 45
    
    var mTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "修改昵称"
        setupViews()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        mTextField.becomeFirstResponder()
    }
    
    func setupViews() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "保存", style: .Plain, target: self, action: #selector(rightItemClicked))
        
        mTextField = UITextField()
        mTextField.backgroundColor = UIColor.colorWithHexValue("ededed")
        mTextField.textColor = UIColor.colorWithHexValue("333333")
        mTextField.placeholder = "请输入昵称"
        mTextField.font = UIFont.systemFontOfSize(15)
        mTextField.leftView = UIView(frame: CGRectMake(0, 0, 12, TextFieldHeightOnIPhone6 * Constants.View.ScreenRatio))
        mTextField.leftViewMode = .Always
        mTextField.clearButtonMode = .WhileEditing
        mTextField.returnKeyType = .Done
        self.view.addSubview(mTextField)
        mTextField.snp_makeConstraints { (make) in
            make.top.equalTo(self.view)
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
            make.height.equalTo(TextFieldHeightOnIPhone6 * Constants.View.ScreenRatio)
        }
        
        let hintLabel: UILabel = UILabel()
        hintLabel.text = "2-10个字符。支持中文、英文、数字和下划线。"
        hintLabel.numberOfLines = 0
        hintLabel.font = UIFont.systemFontOfSize(12)
        hintLabel.textColor = UIColor.colorWithHexValue("999999")
        self.view.addSubview(hintLabel)
        hintLabel.snp_makeConstraints { (make) in
            make.top.equalTo(mTextField.snp_bottom).offset(12)
            make.left.equalTo(self.view).offset(12)
            make.right.equalTo(self.view).offset(-12)
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        mTextField.resignFirstResponder()
    }
    
    func rightItemClicked(sender: AnyObject) {
        print("click right item")
    }
}
