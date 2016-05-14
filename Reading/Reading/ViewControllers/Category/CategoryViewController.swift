//
//  CategoryViewController.swift
//  Reading
//
//  Created by cuifengchuan on 16/4/22.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit
import SnapKit

class CategoryViewController: BaseViewController {
    
    private var mHintView: HintView!
    private var mWebView: UIWebView!
    private var mIndicatorView: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "分类"
        
        let rightItem: UIBarButtonItem = UIBarButtonItem(title: "test", style: .Plain, target: self, action: #selector(CategoryViewController.rightItemClicked(_:)))
        self.navigationItem.rightBarButtonItem = rightItem
        
        mWebView = UIWebView.init(frame: CGRectMake(0, 0, Constants.View.ScreenWidth, Constants.View.ScreenHeight - 64 - 49))
        mWebView.backgroundColor = UIColor.colorWithHexValue("f9f9f9")
        mWebView.delegate = self
        self.view.addSubview(mWebView)
        
        mIndicatorView = UIActivityIndicatorView()
        mIndicatorView.color = UIColor.grayColor()
        mIndicatorView.hidesWhenStopped = true
        mWebView.addSubview(mIndicatorView)
        mIndicatorView .snp_makeConstraints { (make) in
            make.centerX.equalTo(mWebView)
            make.centerY.equalTo(mWebView)
        }
        
        mHintView = HintView(frame: CGRectMake(0, 0, Constants.View.ScreenWidth, Constants.View.ScreenHeight - 64 - 49))
        mHintView.hintText = "网络错误，请点击重试"
        mHintView.hidden = true
        mHintView.addTappedAction { () in
            self.requestData()
        }
        self.view.addSubview(mHintView)
        
        self.requestData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Selector Methods
    @objc private func rightItemClicked(sender: AnyObject?) {
        print("test")
    }
    
    //MARK: Private Methods 
    private func requestData() {
        mWebView.loadRequest(NSURLRequest(URL: NSURL(string: Constants.Web.Category)!))
        mHintView.hidden = true
        mIndicatorView.hidden = false
        mIndicatorView.startAnimating()
    }
}

extension CategoryViewController: UIWebViewDelegate {
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        let urlStr: String = (request.URL?.absoluteString)!
        print(urlStr)
        return true
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        self.hideHintView()
        mIndicatorView.stopAnimating()
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        self.showHintView()
        mIndicatorView.stopAnimating()
    }
    
    private func hideHintView() {
        mHintView.hidden = true
    }
    
    private func showHintView() {
        mHintView.hidden = false
    }
}