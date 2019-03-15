//
//  SelectViewController.swift
//  SwiftStudy3
//
//  Created by joybar on 2019/3/15.
//  Copyright © 2019年 joybar. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    // 数据源，
    var dataSource = [["微信支付":"select"],["支付宝支付":"on"],["银联支付":"no"]]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.backgroundColor = UIColor.white
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
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
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "selectCell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "selectCell")
            cell?.selectionStyle = .none
        }
        let dic = dataSource[indexPath.row] as Dictionary
        cell?.textLabel?.text = dic.keys.first
        if dic.values.first == "select" {
            cell?.accessoryType = .checkmark
        } else {
            cell?.accessoryType = .none
        }
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var i = 0
        for var dict in dataSource {
            
            if i == indexPath.row {
                dict[dict.keys.first!] = "select"
                dataSource[i] = dict
            } else {
                dict[dict.keys.first!] = "no"
                dataSource[i] = dict
            }
            i = i+1
        }
        tableView.reloadData()
    }
    

}
