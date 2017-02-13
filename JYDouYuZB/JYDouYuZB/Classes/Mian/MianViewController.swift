//
//  MianViewController.swift
//  JYDouYuZB
//
//  Created by yejunyou on 2017/2/13.
//  Copyright © 2017年 yejunyou. All rights reserved.
//

import UIKit

class MianViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChileVc("Home")
        addChileVc("Live")
        addChileVc("Fellow")
        addChileVc("Profile")
    }
    
    private func addChileVc(storyBoardName:String){
        // 通过storyBoard加载控制器
        let childVc = UIStoryboard(name: storyBoardName, bundle:nil).instantiateInitialViewController()!
        
        // 将childVc作为子控制器
        addChildViewController(childVc)
    }
}
