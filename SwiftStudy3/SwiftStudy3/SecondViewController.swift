//
//  SecondViewController.swift
//  SwiftStudy3
//
//  Created by joybar on 2019/3/15.
//  Copyright © 2019年 joybar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController ,UIScrollViewDelegate {

    let pageControl = UIPageControl()
    let scrollView  = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initBaseView();
        initScrollview();
        
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
    
    
    
    func initBaseView()  {
        title = "第二页"
//        view.backgroundColor = UIColor.cyan
        
        
    }
    
    func initScrollview()  {
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        scrollView.frame = view.bounds
        view.addSubview(scrollView)
        
        // 设置是否翻页
        scrollView.isPagingEnabled = true
        
        // 可以滚动的区域
       scrollView.contentSize = CGSize(width: screenWidth*9, height: screenHeight)
       
        
        // 显⽰示⽔水平滚动条
        scrollView.showsHorizontalScrollIndicator = true
        // 显⽰示垂直滚动条
        scrollView.showsVerticalScrollIndicator = true
        
        // 滚动条样式
        scrollView.indicatorStyle = UIScrollViewIndicatorStyle.white
        // 设置回弹效果
        scrollView.bounces = true
        // 设置scrollView可以滚动
        scrollView.isScrollEnabled = true
        // 当scrollsToTop=true时，点击设备状态栏会自动滚动到顶部
        scrollView.scrollsToTop = true
        // 缩放的最小比例
        scrollView.minimumZoomScale = 0.5
        // 放大的最大比例
        scrollView.maximumZoomScale = 2.0
        // 缩放回弹
        scrollView.bouncesZoom = true
        // 代理
        scrollView.delegate = self
        
        for i in 1..<10 {
            let imageView = UIImageView(frame: CGRect(x: screenWidth*CGFloat(i-1), y: 0, width: screenWidth, height: screenHeight))
            imageView.image = UIImage(named: "\(i).png")
            scrollView.addSubview(imageView)
        }
        
        // 页码控制器
        pageControl.frame = CGRect(x: 0, y: screenHeight-200, width: screenWidth, height: 100)
        pageControl.backgroundColor = UIColor.blue
        // 总共有多少页
        pageControl.numberOfPages = 9
        // 当前页码
        pageControl.currentPage = 0
        // 添加点击事件
        pageControl.addTarget(self, action: #selector(pageControlClick), for: .valueChanged)
        view.addSubview(pageControl)
        
      
        
    }
    //MARK: pageControl点击调用方法
    func pageControlClick(pageControl:UIPageControl) {
        UIView.animate(withDuration: 0.3) {
            self.scrollView.contentOffset = CGPoint(x: CGFloat(pageControl.currentPage)*self.scrollView.frame.size.width, y: 0)
        }
    }
    
    //MARK: UIScrollViewDelegate
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scrollView滚动时调用，只要offset的值发生变化就调用")
        
        // 函数floor的作用是返回比小的整数，比如floor(1.2312) = 1
        let page = floor((scrollView.contentOffset.x)/scrollView.frame.size.width)
        pageControl.currentPage = Int(page)
        
    }
    
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        print("当将要开始缩放时，执行该方法。一次有效缩放就只执行一次。")
    }
    
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        print("当scrollView缩放时，调用该方法。在缩放过程中，会多次调用")
    }
    
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        print("当缩放结束后，并且缩放大小回到minimumZoomScale与maximumZoomScale之间后（我们也许会超出缩放范围），调用该方法。")
    }
  
}
