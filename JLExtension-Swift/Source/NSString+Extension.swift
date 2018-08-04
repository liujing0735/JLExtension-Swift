//
//  NSString+Extension.swift
//  JLExtension-Swift
//
//  Created by JasonLiu on 2017/8/24.
//  Copyright © 2017年 JasonLiu. All rights reserved.
//

import UIKit

extension NSString {
    
    var isEmpty: Bool {
        get {
            let string: String = self as String
            return string.isEmpty
        }
    }
    
    var md5: String {
        get {
            let string: String = self as String
            return string.md5
        }
    }
}

extension String {
    
    var length: Int {
        get {
            return self.count
        }
    }
    
    var isEmpty: Bool {
        get {
            let string = self.replacingOccurrences(of: " ", with: "")
            if string == "" {
                return true
            }
            if string.count == 0 {
                return true
            }
            return false
        }
    }
    

    var md5: String {
        get {
            let string = self.cString(using: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
            let stringLenght = CC_LONG(self.count)
            let digestLenght = Int(CC_MD5_DIGEST_LENGTH)
            let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLenght)
            CC_MD5(string, stringLenght, result)
            let hash = NSMutableString()
            for i in 0..<digestLenght {
                hash.appendFormat("02x", result[i])
            }
            return hash as String
        }
    }
}
