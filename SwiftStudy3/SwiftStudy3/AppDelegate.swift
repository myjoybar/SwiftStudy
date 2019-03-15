//
//  AppDelegate.swift
//  SwiftStudy3
//
//  Created by joybar on 2019/3/15.
//  Copyright © 2019年 joybar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
       // changeViewControler();
        //createTabBar();
        createTabBarAndSetNaigation();
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
    func createTabBar() {
        let wechat = WeChatViewController()
        // 未选中状态Tab图片
        wechat.tabBarItem.image = UIImage(named: "tab1")?.withRenderingMode(.alwaysOriginal)
        // 选中状态Tab图片
        wechat.tabBarItem.selectedImage = UIImage(named: "selectTab1")?.withRenderingMode(.alwaysOriginal)
        // Tab的文本
        wechat.tabBarItem.title = "微信"
        
        //Tab图标上方显示角标
        wechat.tabBarItem.badgeValue = "10"
        
        let addressBook = AddressBookViewController()
        addressBook.tabBarItem.image = UIImage(named: "tab2")?.withRenderingMode(.alwaysOriginal)
        addressBook.tabBarItem.selectedImage = UIImage(named: "selectTab2")?.withRenderingMode(.alwaysOriginal)
        addressBook.tabBarItem.title = "通讯录"
        
        let find = FindViewController()
        find.tabBarItem.image = UIImage(named: "tab3")?.withRenderingMode(.alwaysOriginal)
        find.tabBarItem.selectedImage = UIImage(named: "selectTab3")?.withRenderingMode(.alwaysOriginal)
        find.tabBarItem.title = "发现"
        
        let mine = MineViewController()
        mine.tabBarItem.image = UIImage(named: "tab4")?.withRenderingMode(.alwaysOriginal)
        find.tabBarItem.selectedImage = UIImage(named: "selectTab4")?.withRenderingMode(.alwaysOriginal)
        mine.tabBarItem.title = "我的"
        
        
        let tabBarController = UITabBarController()
        // tabBarController的主题颜色
        tabBarController.tabBar.tintColor = UIColor.init(colorLiteralRed: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        
        // 修改tabbar的位置
       // tabBarController.tabBar.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44)
        
       
        
        // tabBarController的子视图控制器集合
        tabBarController.viewControllers = [wechat,addressBook,find,mine]
        // 添加到rootViewController
        window?.rootViewController = tabBarController
    
        //修改UITabBarController的索引(索引是从0开始数的~~~~）)
        tabBarController.selectedIndex = 1
    }

     func changeViewControler() {
        window?.rootViewController = UINavigationController(rootViewController: FirstViewController())
        
        
     }
    
    
    func createTabBarAndSetNaigation() {
        let wechat = WeChatViewController()
        // 未选中状态Tab图片
        wechat.tabBarItem.image = UIImage(named: "tab1")?.withRenderingMode(.alwaysOriginal)
        // 选中状态Tab图片
        wechat.tabBarItem.selectedImage = UIImage(named: "selectTab1")?.withRenderingMode(.alwaysOriginal)
        // Tab的文本
        wechat.tabBarItem.title = "微信"
        
        //Tab图标上方显示角标
        wechat.tabBarItem.badgeValue = "10"
        
        let addressBook = AddressBookViewController()
        addressBook.tabBarItem.image = UIImage(named: "tab2")?.withRenderingMode(.alwaysOriginal)
        addressBook.tabBarItem.selectedImage = UIImage(named: "selectTab2")?.withRenderingMode(.alwaysOriginal)
        addressBook.tabBarItem.title = "通讯录"
        
        let find = FindViewController()
        find.tabBarItem.image = UIImage(named: "tab3")?.withRenderingMode(.alwaysOriginal)
        find.tabBarItem.selectedImage = UIImage(named: "selectTab3")?.withRenderingMode(.alwaysOriginal)
        find.tabBarItem.title = "发现"
        
        let mine = MineViewController()
        mine.tabBarItem.image = UIImage(named: "tab4")?.withRenderingMode(.alwaysOriginal)
        find.tabBarItem.selectedImage = UIImage(named: "selectTab4")?.withRenderingMode(.alwaysOriginal)
        mine.tabBarItem.title = "我的"
        
        
        let tabBarController = UITabBarController()
        // tabBarController的主题颜色
        tabBarController.tabBar.tintColor = UIColor.init(colorLiteralRed: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        
        // 修改tabbar的位置
        // tabBarController.tabBar.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44)
        
        
        let wechatNavigationController = UINavigationController(rootViewController: wechat);
        let addressBookNavigationController = UINavigationController(rootViewController: addressBook);
        let findNavigationController = UINavigationController(rootViewController: find);
           let minetNavigationController = UINavigationController(rootViewController: mine);
        
      
        
        
        // tabBarController的子视图控制器集合
        tabBarController.viewControllers = [wechatNavigationController,addressBookNavigationController,findNavigationController,minetNavigationController]
        
        
        
        
        // 添加到rootViewController
        window?.rootViewController = tabBarController
        
        //修改UITabBarController的索引(索引是从0开始数的~~~~）)
        tabBarController.selectedIndex = 0
    }


}

