//
//  AssertAndGuard.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/09.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

func `assert`() {
    let someInt = 0
    let someString = "swift"
    
    assert(someInt == 0)
    assert(someInt == 0, "\(someInt) is not equal zero")
    
    assert(someString == "swift")
    assert(someString == "swift", "\(someString) is not equal swift")
}

func `guard`() {
    let someInt:Int? = 0
    
    // 옵셔널 바인딩
    guard var value = someInt else {
        print("value is nil")
        return
    }
    
    print("value is \(value)")
    
    guard value < 10 else {
        print("\(value) is greater than 10")
        return
    }
    
    while true {
        guard value < 3 else {
            break
        }
        value += 1
    }
    
    let someDict: [String: Any] = ["lang": "swift", "value": 10]
    
    guard let lang = someDict["lang"] as? String else {
        print("lang is not String")
        return
    }
    
    guard let _value = someDict["value"] as? Int else {
        print("value is not integer")
        return
    }
    
    print("\(lang), \(_value)")
}
