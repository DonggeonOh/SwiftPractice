//
//  repeatition.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/01.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

func forRepeatition() {
    let integers = [1, 2, 3]
    let companys: [(product: String, company: String)] = [("macbook", "apple"), ("galaxy 20", "samsung")]
    
    for integer in integers {
      print(integer)
    }

    for (product, company) in companys {
      print(product, company)
    }
}

func whileRepeatition() {
    var integers = [1, 2, 3, 4, 5]
    
    while !integers.isEmpty {
        print(integers.removeFirst())
    }
}

func repeatWhile() {
    var integers = [1, 2, 3, 4, 5]
    
    repeat {
        print(integers.removeFirst())
    } while !integers.isEmpty
}
