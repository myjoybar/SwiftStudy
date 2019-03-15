//
//  ReorderViewController.swift
//  SwiftStudy3
//
//  Created by joybar on 2019/3/15.
//  Copyright © 2019年 joybar. All rights reserved.
//

import UIKit

class ReorderViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    
    var dataSource = ["微信","支付宝","银联","易宝"]
    var tableView:UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let rightBar = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(ReorderButtonClick))
        navigationItem.rightBarButtonItem = rightBar
        
        tableView = UITableView(frame: view.bounds, style: .grouped)
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
    
    
    func ReorderButtonClick() {
        tableView.setEditing(!tableView.isEditing, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "addCell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "addCell")
            cell?.selectionStyle = .none
        }
        cell?.textLabel?.text = dataSource[indexPath.row] as String
        return cell!
    }
    //MARK: 选择编辑模式，不删除也不添加就设置为none
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return .none
    }
    //MARK: 设置cell是否可移动
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    //MARK: 移动结束后调用此方法
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let data = dataSource[sourceIndexPath.row]
        dataSource.remove(at: sourceIndexPath.row)
        dataSource.insert(data, at: destinationIndexPath.row)
    }

}
