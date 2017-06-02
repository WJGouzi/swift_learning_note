//
//  ViewController.swift
//  8-懒加载
//
//  Created by gouzi on 2017/6/2.
//  Copyright © 2017年 wj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    lazy var names : [String] = {
        print("======")
        return ["wj", "haha", "gouzi"]
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(self.names)
        _ = names.count
    }

}

