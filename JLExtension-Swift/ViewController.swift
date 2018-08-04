//
//  ViewController.swift
//  JLExtension-Swift
//
//  Created by JasonLiu on 2017/5/19.
//  Copyright © 2017年 JasonLiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let arr = [0,"1","2","string"] as [Any]
        print(arr.stringAtIndex(index: -1))
        print(arr.stringAtIndex(index: 0))
        print(arr.stringAtIndex(index: 1))
        print(arr.stringAtIndex(index: 2))
        print(arr.stringAtIndex(index: 3))
        
        let label = UILabel(frame: CGRect(x: 64, y: 64, width: 300, height: 50))
        //label.backgroundColor = UIColor.green
        //label.layer.cornerRadius = 7.0
        //label.layer.masksToBounds = true
        
        let str = NSMutableAttributedString(string: "  享   中国电信")
        
        let dic = [NSForegroundColorAttributeName:UIColor.white,
                   NSFontAttributeName:UIFont.systemFont(ofSize: 17),
                   NSBackgroundColorAttributeName:UIColor.orange]
        str.addAttributes(dic, range: NSRange(location: 0,length: 5))
        label.attributedText = str
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

