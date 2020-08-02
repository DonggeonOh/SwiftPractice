//
//  closure.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/02.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

func sumFunc(a: Int, b: Int) -> Int {
    return a + b
}

func calc(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

func closure() {
    var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
        return a + b
    }
    
    var sumResult = sum(1, 2)
    print(sumResult)        // 3
    
    // 함수는 closure의 일종이므로 sum 변수에는 함수도 할당 할 수 있다
    sum = sumFunc(a:b:)
    print(sum(1, 2))        // 3
    
    let add: (Int, Int) -> Int
    add = { (a: Int, b: Int) -> Int in
        return a + b
    }
    
    let sub: (Int, Int) -> Int
    sub = { (a: Int, b: Int) -> Int in
        return a - b
    }
    
    var value: Int
    value = calc(a: 1, b: 2, method: add)
    print(value)
    value = calc(a: 3, b: 1, method: sub)
    print(value)
    value = calc(a: 4, b: 2, method: { (c: Int, d: Int) -> Int in
        return c * d
    })
    print(value)    // 8
    
    // 후행 클로저
    var value0 = calc(a: 10, b: 2) { (c: Int, d: Int) -> Int in
        return c / d
    }
    print(value0)
    
    //반환타입 생략
    var value1 = calc(a: 10, b: 10, method: { (c: Int, d: Int) in
        return c + d
    })
    print(value1)
    
    // 후행 클로저와 함께 사용
    var value2 = calc(a: 10, b: 10) { (c: Int, d: Int) in
        return c + d
    }
    print(value2)
    
    // 단축인자
    value1 = calc(a: 10, b: 10, method: {
        return $0 + $1
    })
    print(value1)
    
    // 후행 클로저와 함께 사용
    value2 = calc(a: 10, b: 10) {
        return $0 + $1
    }
    print(value2)
    
    // 암시적 반환 표현 - 반환타입 생략, 단축인자 사용
    value1 = calc(a: 10, b: 10, method: {
        $0 + $1
    })
    print(value1)

    // 후행 클로저와 함께 사용
    value2 = calc(a: 10, b: 10) {
        $0 + $1
    }
    print(value2)
}
