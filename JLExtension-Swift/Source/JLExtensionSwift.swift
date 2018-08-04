//
//  JLExtensionSwift.swift
//  JLExtension-Swift
//
//  Created by JasonLiu on 2017/5/19.
//  Copyright © 2017年 JasonLiu. All rights reserved.
//

import UIKit

/// 屏幕宽
var screenWidth: CGFloat {
    get {
        return UIScreen.main.bounds.size.width
    }
}

/// 屏幕高
var screenHeight: CGFloat {
    get {
        return UIScreen.main.bounds.size.height
    }
}

func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
    return rgba(r: r, g: g, b: b, a: 1.0)
}

func rgba(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {
    if #available(iOS 10.0, *) {
        return UIColor(displayP3Red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    } else {
        // Fallback on earlier versions
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
}

func log(log: String) {
    print("\n在文件(%@)第(%d)行: %@",#file,#line,log)
}
