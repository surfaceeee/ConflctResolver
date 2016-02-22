//
//  ViewController.swift
//  ConflictResilver
//
//  Created by mc110 on 16/2/22.
//  Copyright © 2016年 mc110. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let i = UIImageView(frame: CGRectMake(0, 0, 40, 40))
        let arr = [UIImage(named: "action0")!,UIImage(named: "action1")!,UIImage(named: "action2")!]
        i.animationImages = arr
        self.view.addSubview(i)
        i.animationDuration = 3;
        i.animationRepeatCount=2;
        i.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

