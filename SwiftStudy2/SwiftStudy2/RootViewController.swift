//
//  RootViewController.swift
//  SwiftStudy2
//
//  Created by joybar on 2019/3/15.
//  Copyright © 2019年 joybar. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 50)
        button.backgroundColor = UIColor.white
        button.setTitle("打开新的视图控制器", for: .normal)
        button.setTitleColor(UIColor.gray, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)

        
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

    func buttonClick() {
        navigationController?.pushViewController(ViewController(), animated: true)
        // 另一种跳转方式
        // present(ViewController(), animated: true, completion: nil)
    }
    
}
