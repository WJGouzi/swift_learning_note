//
//  ViewController.swift
//  9-tableView的简单使用
//
//  Created by gouzi on 2017/6/2.
//  Copyright © 2017年 wj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK:- 懒加载
    // 单独的创建就可以用这种方式
    /// 1.创建Tableview
    lazy var tableView : UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wjSetUpUI()
    }
}

// MARK:- 设置UI相关
extension ViewController {
    /// 设置界面的UI
    func wjSetUpUI() {
        view.addSubview(tableView)
        // 2.设置frame
        tableView.frame = view.bounds
        // 3.设置数据源
        tableView.dataSource = self
        // 4.设置代理
        tableView.delegate = self
    }
}


// MARK:- 数据源、代理相关
/// extension类似于OC中的分类，只能扩充方法，不能扩充方法
extension ViewController : UITableViewDataSource, UITableViewDelegate{
    // MARK:- UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cellID"
        
        // 创建cell
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            // 在swift中写枚举值的方法：1->枚举类型.具体类型  2-> .具体类型
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        
        // 设置数据
        cell?.textLabel?.text = "测试数据:\(indexPath.row)"
        
        // 返回 -> 这里可以强制解包
        return cell!
    }
    
    
    // MARK:- UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("点击了:\(indexPath.row)")
        
    }
}
















