//
//  data-type.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/01.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

func dataType() {
    // 타입의 생성 및 다른 타입 끼리의 데이터 교환
    var status: Bool = true
    var integer: Int = 10
    var uInteger: UInt = 10
    // var sum = integer + uInteger (X) 서로 다른 타입의 경우 하나의 타입으로 결정하여야 한다
    // print(sum)
    var char: Character = "A"
    var str: String = "Hello"
    // str = str + char (X) 위와 마찬가지로 실행되지 않는다
    var someFloat: Float = 3.14
    var someDouble: Double = 3.234
    // type(of: ) metoed를 통해 변수 및 상수의 type을 확인할 수 있다.
    var testType = 1.234
    print(type(of: testType)) // double type이 출력되는 것을 확인할 수 있다.
    
    // Any, AnyObject, nil 사용
    var someAny: Any = 123
    someAny = 123.45
    
    class SomeClass {}
    var someAnyObject: AnyObject = SomeClass()
    class AnotherClass {}
    someAnyObject = AnotherClass()
    
    // var someNil = nil (X)
}
