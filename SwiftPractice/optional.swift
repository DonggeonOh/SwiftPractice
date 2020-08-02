//
//  optional.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/02.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

class A {
    var value: Int?
}

class B {
    var instA: A?
}

class C {
    var instB: B?
}

// 옵셔널 체이닝을 적용하지 않은 경우
func inputIntNotOptionalChaining(c: C?) {
    if let optC = c {
        if let instB = optC.instB {
            if let instA = instB.instA {
                if let value = instA.value {
                    print("value는 \(value) 입니다")
                } else {
                    print("value에 값이 없습니다")
                }
            }
        }
    }
}

func inputIntOptionalChaining(c: C?) {
    if let value = c?.instB?.instA?.value {
        print("value는 \(value) 입니다")
    } else {
        print("value에 값이 없습니다")
    }
}

func optionalChaining() {
    // 옵셔널 체이닝을 사용하지 않을 경우
    var optC: C? = C()
    inputIntNotOptionalChaining(c: optC)
    optC?.instB = B()
    optC?.instB?.instA = A()
    inputIntNotOptionalChaining(c: optC)    // value에 값이 없습니다
    optC?.instB?.instA?.value = 10
    inputIntNotOptionalChaining(c: optC)    // value는 10 입니다
    
    optC = C()
    // 옵셔널 체이닝을 사용할 경우
    inputIntOptionalChaining(c: optC)   // value에 값이 없습니다
    optC?.instB = B()
    optC?.instB?.instA = A()
    optC?.instB?.instA?.value = 10
    inputIntOptionalChaining(c: optC)    // value는 10 입니다
    
    var value = optC?.instB?.instA?.value ?? 20    // Nil 병합 연산자 사용
    print(value)    // 10
    optC = C()
    value = optC?.instB?.instA?.value ?? 20            // Nil 병합 연산자 사용
    print(value)    // 20
}

func nilCoalescing() {
    
}
