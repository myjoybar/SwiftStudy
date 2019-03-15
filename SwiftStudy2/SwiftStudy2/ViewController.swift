//
//  ViewController.swift
//  SwiftStudy2
//
//  Created by joybar on 2019/3/14.
//  Copyright © 2019年 joybar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        
//        var label = UILabel();
//        self.view.addSubview(view);
         print("hello, FirstViewController!")
        test2(age:17);
        test2(age:19);

        // MARK: 类的使用
        let people = People()
        people.age = 15
        people.sex = "man"
        people.name = "Yvan"
        people.introduce()
        
        
        addBaseView();
        addTouchView();
        viewTransform();
        viewCALayer();
        backView();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    func test1(age : Int ) {
        var str = "Hello, playground"
        str = "Hello world"
        var a = 12
        var b = 11
        var c = a + b
        c = 24
        let a1 = 12
        let b1 = 12
        let c1 = a1 + b1        
    }
    

    
    
    func test2(age : Int ) {
        
        if(age>=18){
             print("hello, adult")
        }else{
            print("hello, child")

        }
        
    }
    
    
    
    // MARK: 类的定义
    class People {
        var age:Int
        var sex:String
        var name:String
        
        // 初始化
        init() {
            self.age = 0;
            self.sex = ""
            self.name = ""
        }
        // 带赋值初始化
        init(name:String, sex:String, age:Int) {
            self.name = name
            self.sex = sex
            self.age = age
        }
        // 方法
        func introduce() {
            print("My name is \(name), I`m a \(sex), \(age) years old.")
        }
    }
    
    func addBaseView()  {
        
        let testView = UIView()
        // 坐标
        testView.frame = CGRect(x: 100, y: 100, width: 50, height: 50)
        // 背景颜色
        testView.backgroundColor = UIColor.black
        // 是否切除子视图超出部分
        testView.clipsToBounds = true
        // 透明度
        testView.alpha = 0.5
        // 是否隐藏视图
        testView.isHidden = false
        // 添加到当前视图控制器
        view.addSubview(testView)
    }
    
    
    func addTouchView() {
        
        let touchView = UIView.init(frame: CGRect(x: 100, y: 240, width: 150, height: 150))
        touchView.isUserInteractionEnabled = true
        touchView.backgroundColor = UIColor.black
        view.addSubview(touchView)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(touchViewClick))
        touchView.addGestureRecognizer(tap)
    }
    
    func touchViewClick() {
        print("You touched me!!!")
    }

    
    func viewTransform() {
        let view_t = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view_t.backgroundColor = UIColor.red
        view_t.center = view.center
        view.addSubview(view_t)
        
        let transform = view_t.transform
        // 向下平移200像素
       // view_t.transform = transform.translatedBy(x: 0, y: 200)
    }

    func viewCALayer() {
        let v = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        v.backgroundColor = UIColor.black
        view.addSubview(v)
        
        v.layer.shadowColor = UIColor.red.cgColor
        v.layer.shadowOffset = CGSize(width: 10, height: 10)
        v.layer.shadowOpacity = 0.45
        v.layer.shadowRadius = 5.0
    }
    
    func backView() {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 50)
        button.backgroundColor = UIColor.white
        button.setTitle("回到RootViewController", for: .normal)
        button.setTitleColor(UIColor.gray, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
    }
    
    func buttonClick() {
        navigationController?.popViewController(animated: true)
        // 另一种跳转方式 成对出现
        dismiss(animated: true, completion: nil)
    }

    
    
}

