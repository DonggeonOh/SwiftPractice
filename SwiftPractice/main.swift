//
//  main.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/01.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

basic()
dataType()
collectionType()

func basic() {
    // 문자열 보간법 사용
    let age = 24
    print("안녕하세요 저는 \(age)살 입니다.")

    // print(), dump() 사용
    class Person {
        var name = "오동건"
        var age = 24
    }

    let geon = Person()

    print(geon)
    dump(geon)

    // 변수 및 상수의 차후 할당
    let donggeon: String

    donggeon = "sadfasdf"
    print(donggeon)
}
