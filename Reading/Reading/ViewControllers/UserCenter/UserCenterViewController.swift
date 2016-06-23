//
//  UserCenterViewController.swift
//  Reading
//
//  Created by cuifengchuan on 16/4/22.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit
import SnapKit

class UserCenterViewController: BaseViewController {
    
    private var mRechargeView: UserCenterItemView!
    private var mVipView: UserCenterItemView!
    private var mConsumeView: UserCenterItemView!
    private var mSettignsView: UserCenterItemView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "个人中心"
        self.setupViews()
    }
    
    private func setupViews() {
        let scrollView = UIScrollView(frame: self.view.bounds)
        scrollView.contentSize = CGSizeMake(self.view.bounds.width, self.view.bounds.height + 1)
        self.view.addSubview(scrollView)
        
        let contentView = UIView(frame: CGRectMake(0, 0, self.view.bounds.width, self.view.bounds.height + 1))
        scrollView.addSubview(contentView)
        
        mRechargeView = UserCenterItemView(iconImage: UIImage(named: "usercenter_recharge_n")!, title: "充值", contentText: "0 阅币")
        mRechargeView.addClickHandler { 
            
        }
        contentView.addSubview(mRechargeView)
        mRechargeView.snp_makeConstraints { (make) in
            make.top.equalTo(contentView).offset(20)
            make.left.equalTo(contentView)
            make.right.equalTo(contentView)
            make.height.equalTo(Constants.View.UserCenterItemHeight)
        }
        
        mVipView = UserCenterItemView(iconImage: UIImage(named: "usercenter_member_n")!, title: "会员", contentText: "未开通")
        mVipView.addClickHandler { 
            
        }
        contentView.addSubview(mVipView)
        mVipView.snp_makeConstraints { (make) in
            make.top.equalTo(mRechargeView.snp_bottom).offset(-0.5)
            make.left.equalTo(contentView)
            make.right.equalTo(contentView)
            make.height.equalTo(Constants.View.UserCenterItemHeight)
        }
        
        mConsumeView = UserCenterItemView(iconImage: UIImage(named: "usercenter_consume_n")!, title: "消费记录")
        mConsumeView.addClickHandler { 
            
        }
        contentView.addSubview(mConsumeView)
        mConsumeView.snp_makeConstraints { (make) in
            make.top.top.equalTo(mVipView.snp_bottom).offset(-0.5)
            make.left.equalTo(contentView)
            make.right.equalTo(contentView)
            make.height.equalTo(Constants.View.UserCenterItemHeight)
        }
        
        let paddingView = UIView()
        paddingView.backgroundColor = UIColor.whiteColor()
        contentView.addSubview(paddingView)
        paddingView.snp_makeConstraints { (make) in
            make.left.equalTo(contentView)
            make.width.equalTo(10)
            make.top.equalTo(mRechargeView).offset(10)
            make.bottom.equalTo(mConsumeView).offset(-10)
        }
        
        mSettignsView = UserCenterItemView(iconImage: UIImage(named: "usercenter_settings_n")!, title: "设置")
        mSettignsView.addClickHandler {
            self.navigationController?.pushViewController(SettingsViewController(), animated: true)
        }
        contentView.addSubview(mSettignsView)
        mSettignsView.snp_makeConstraints { (make) in
            make.top.equalTo(mConsumeView.snp_bottom).offset(17)
            make.left.equalTo(contentView)
            make.right.equalTo(contentView)
            make.height.equalTo(Constants.View.UserCenterItemHeight)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}