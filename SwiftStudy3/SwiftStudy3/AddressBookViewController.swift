//
//  AddressBookViewController.swift
//  SwiftStudy3
//
//  Created by joybar on 2019/3/15.
//  Copyright © 2019年 joybar. All rights reserved.
//

import UIKit

class AddressBookViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{

    var dataSource = [[String:String]()]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initBaseView();
        initUITableView();
      

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
     
        view.backgroundColor = UIColor.red
        let label = UILabel(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 50))
        label.backgroundColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = UIColor.gray
        label.textAlignment = NSTextAlignment.center
        label.text = "通讯录"
        view.addSubview(label)
    }

     func initUITableView()  {
        let tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.backgroundColor = UIColor.white;
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        dataSource = [
            ["name":"王小明","sex":"男","icon":"1","birthday":"2017-10-11"],
            ["name":"李磊","sex":"男","icon":"2","birthday":"2011-12-30"],
            ["name":"韩梅","sex":"女","icon":"3","birthday":"2014-9-10"],
            ["name":"JIM","sex":"男","icon":"4","birthday":"2008-10-1"]]
       tableView.reloadData()
        
  }
    
    // cell的个数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//         return 10
        return dataSource.count
    }
    
    // UITableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cellid = "testCellID"
//        var cell = tableView.dequeueReusableCell(withIdentifier: cellid)
//        if cell==nil {
//            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellid)
//        }
//        
//        cell?.textLabel?.text = "这个是标题~"
//        cell?.detailTextLabel?.text = "这里是内容了油~"
//        cell?.imageView?.image = UIImage(named:"Expense_success")
//        return cell!
        
        
        let cellid = "testCellID"
        var cell:NewTableViewCell? = tableView.dequeueReusableCell(withIdentifier: cellid) as? NewTableViewCell
        if cell==nil {
            cell = NewTableViewCell(style: .subtitle, reuseIdentifier: cellid)
        }
        let dict:Dictionary = dataSource[indexPath.row]
        cell?.iconImv.image = UIImage(named: dict["icon"]!)
        cell?.userLabel.text = dict["name"]
        cell?.sexLabel.text = dict["sex"]
        cell?.birthdayLabel.text = dict["birthday"]
        return cell!
        
        
        
    }
    
    //MARK: UITableViewDelegate
    // 设置cell高度
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 44.0
//    }
//    
    // 设置cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 74.0
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    
    // 选中cell后执行此方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}
