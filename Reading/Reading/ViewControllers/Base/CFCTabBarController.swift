//
//  CFCTabBarController.swift
//  Reading
//
//  Created by cuifengchuan on 16/4/22.
//  Copyright © 2016年 cuifengchuan. All rights reserved.
//

import UIKit

class CFCTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        setupAppearance()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setupViewController() {
        let bookShelfVC: BookShelfViewController = BookShelfViewController()
        bookShelfVC.tabBarItem = UITabBarItem(title: "书架", image: UIImage(named: "tabbar_book_n_"), selectedImage: UIImage(named: "tabbar_book_s_"))
        let bookShelfNC: UINavigationController = UINavigationController(rootViewController: bookShelfVC)
        
        let choiceVC: ChoiceViewController = ChoiceViewController()
        choiceVC.tabBarItem = UITabBarItem(title: "书城", image: UIImage(named: "tabbar_choice_n_"), selectedImage: UIImage(named: "tabbar_choice_s_"))
        let choiceNC: UINavigationController = UINavigationController(rootViewController: choiceVC)
        
        let categoryVC: CategoryViewController = CategoryViewController()
        categoryVC.tabBarItem = UITabBarItem(title: "分类", image: UIImage(named: "tabbar_classify_n_"), selectedImage: UIImage(named: "tabbar_classify_s_"))
        let categoryNC: UINavigationController = UINavigationController(rootViewController: categoryVC)
        
        let userCenterVC: UserCenterViewController = UserCenterViewController()
        userCenterVC.tabBarItem = UITabBarItem(title: "我的", image: UIImage(named: "tabbar_my_n_"), selectedImage: UIImage(named: "tabbar_my_s_"))
        let userCenterNC: UINavigationController = UINavigationController(rootViewController: userCenterVC);
        
        self.viewControllers = [bookShelfNC, choiceNC, categoryNC, userCenterNC];
    }
    
    private func setupAppearance() {
        //设置正常状态下和选中状态下的文字颜色属性
        let tabbarItem: UITabBarItem = UITabBarItem.appearance()
        tabbarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.grayColor()], forState: .Normal)
        tabbarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.colorWithHexValue("f4303d")], forState: .Selected)
        
        //设置选中状态下的图片的颜色
        let tabbar: UITabBar =  UITabBar.appearance()
        tabbar.tintColor = UIColor.colorWithHexValue("f4303d")
    }
}
