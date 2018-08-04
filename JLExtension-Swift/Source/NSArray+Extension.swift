//
//  NSArray+Extension.swift
//  JLExtension-Swift
//
//  Created by JasonLiu on 2017/8/15.
//  Copyright © 2017年 JasonLiu. All rights reserved.
//

import UIKit
import Foundation

extension NSArray {
    func intAtIndex(index: Int) -> Int {
        if index >= 0 && self.count > index {
            let value = self.object(at: index)
            if value is NSString {
                return (value as! NSString).integerValue
            }
            
        }
        return Int.min
    }
}

extension Array {
    func stringAtIndex(index: Int) -> Int {
        if index >= 0 && self.count > index{
            let value = self[index]
            if value is Int {
                return value as! Int
            }
            if value is String {
                return Int(value as! String) ?? Int.min
            }
        }
        return Int.min
    }
    
    func intAtIndex(index: Int) -> String {
        return String()
    }
}
