//
//  WeChatViewController.swift
//  SwiftStudy3
//
//  Created by joybar on 2019/3/15.
//  Copyright © 2019年 joybar. All rights reserved.
// https://www.jianshu.com/p/bb65e97a2e8e
//

import UIKit

class WeChatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initBaseView();
        initTabbar();
        createIndexsViewControllerUiButton();
        createSelectViewControllerUiButton();
        createAddViewControllerUiButton();
        createReorderViewControllerButton();
        
       
       
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    func initBaseView() {
        
        view.backgroundColor = UIColor.red
        let label = UILabel(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 50))
        label.backgroundColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.gray
        label.textAlignment = NSTextAlignment.center
        label.text = "微信"
    
        view.addSubview(label)

    }

     func initTabbar() {
        title = "第一页"
        view.backgroundColor = UIColor.gray
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一页", style: .plain, target: self, action: #selector(nextPageClick))
         }
    
    func nextPageClick() {
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
    
    func createIndexsViewControllerUiButton() {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: 100)
       
        // 设置背景图片
        button.setBackgroundImage(UIImage(named:""), for: .normal)
        // 设置背景颜色
        button.backgroundColor = UIColor.green
        
        // 设置标题（默认状态下）
        button.setTitle("IndexsViewController", for: .normal)
        // 设置标题(高亮状态)
        button.setTitle("hightlight button", for: .highlighted)
        // 设置标题字体颜色（默认状态）
        button.setTitleColor(UIColor.white, for: .normal)
        // 设置标题字体颜色（高亮状态）
        button.setTitleColor(UIColor.red, for: .highlighted)
        // 设置标题文字大小和字体
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        // 设置图片(默认状态)
        button.setImage(UIImage(named:""), for: .normal)
        // 设置图片（选中状态）
        button.setImage(UIImage(named:""), for: .selected)
        
        // 设置图片在button中位置
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 20, right: 5)
        // 设置文字在button中位置
        button.titleEdgeInsets = UIEdgeInsets(top: 80, left: 5, bottom: 0, right: 5)
        
        button.addTarget(self, action: #selector(tableViewClick), for: .touchUpInside)

        
         view.addSubview(button)
    }
    func tableViewClick() {
        navigationController?.pushViewController(IndexsViewController(), animated: true)
    }


    
    func createSelectViewControllerUiButton() {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 300, width: UIScreen.main.bounds.width, height: 100)
        
        // 设置背景图片
        button.setBackgroundImage(UIImage(named:""), for: .normal)
        // 设置背景颜色
        button.backgroundColor = UIColor.green
        
        // 设置标题（默认状态下）
        button.setTitle("SelectViewController", for: .normal)
        // 设置标题(高亮状态)
        button.setTitle("hightlight button", for: .highlighted)
        // 设置标题字体颜色（默认状态）
        button.setTitleColor(UIColor.white, for: .normal)
        // 设置标题字体颜色（高亮状态）
        button.setTitleColor(UIColor.red, for: .highlighted)
        // 设置标题文字大小和字体
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        // 设置图片(默认状态)
        button.setImage(UIImage(named:""), for: .normal)
        // 设置图片（选中状态）
        button.setImage(UIImage(named:""), for: .selected)
        
        // 设置图片在button中位置
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 20, right: 5)
        // 设置文字在button中位置
        button.titleEdgeInsets = UIEdgeInsets(top: 80, left: 5, bottom: 0, right: 5)
        
        button.addTarget(self, action: #selector(tableSelectViewClick), for: .touchUpInside)
        
        
        view.addSubview(button)
    }
    func tableSelectViewClick() {
        navigationController?.pushViewController(SelectViewController(), animated: true)
    }

    
    func createAddViewControllerUiButton() {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 400, width: UIScreen.main.bounds.width, height: 100)
        
        // 设置背景图片
        button.setBackgroundImage(UIImage(named:""), for: .normal)
        // 设置背景颜色
        button.backgroundColor = UIColor.red
        
        // 设置标题（默认状态下）
        button.setTitle("tableAddViewControllerClick", for: .normal)
        // 设置标题(高亮状态)
        button.setTitle("hightlight button", for: .highlighted)
        // 设置标题字体颜色（默认状态）
        button.setTitleColor(UIColor.white, for: .normal)
        // 设置标题字体颜色（高亮状态）
        button.setTitleColor(UIColor.red, for: .highlighted)
        // 设置标题文字大小和字体
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        // 设置图片(默认状态)
        button.setImage(UIImage(named:""), for: .normal)
        // 设置图片（选中状态）
        button.setImage(UIImage(named:""), for: .selected)
        
        // 设置图片在button中位置
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 20, right: 5)
        // 设置文字在button中位置
        button.titleEdgeInsets = UIEdgeInsets(top: 80, left: 5, bottom: 0, right: 5)
        
        button.addTarget(self, action: #selector(tableAddViewControllerClick), for: .touchUpInside)
        
        
        view.addSubview(button)
    }
    func tableAddViewControllerClick() {
        navigationController?.pushViewController(AddViewController(), animated: true)
    }
    

    
    func createReorderViewControllerButton() {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 500, width: UIScreen.main.bounds.width, height: 100)
        
        // 设置背景图片
        button.setBackgroundImage(UIImage(named:""), for: .normal)
        // 设置背景颜色
        button.backgroundColor = UIColor.blue
        
        // 设置标题（默认状态下）
        button.setTitle("ReorderViewController", for: .normal)
        // 设置标题(高亮状态)
        button.setTitle("hightlight button", for: .highlighted)
        // 设置标题字体颜色（默认状态）
        button.setTitleColor(UIColor.white, for: .normal)
        // 设置标题字体颜色（高亮状态）
        button.setTitleColor(UIColor.red, for: .highlighted)
        // 设置标题文字大小和字体
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        // 设置图片(默认状态)
        button.setImage(UIImage(named:""), for: .normal)
        // 设置图片（选中状态）
        button.setImage(UIImage(named:""), for: .selected)
        
        // 设置图片在button中位置
        button.imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 20, right: 5)
        // 设置文字在button中位置
        button.titleEdgeInsets = UIEdgeInsets(top: 80, left: 5, bottom: 0, right: 5)
        
        button.addTarget(self, action: #selector(tableReorderViewControllerClick), for: .touchUpInside)
        
        
        view.addSubview(button)
    }
    func tableReorderViewControllerClick() {
        navigationController?.pushViewController(ReorderViewController(), animated: true)
    }
    

    
}
