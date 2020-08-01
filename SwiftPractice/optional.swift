//
//  optional.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/01.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

func implicitlyOptional() {
    var optionalValue: Int! = 100    // Type 뒤 !을 통한 추출 옵셔널 형식
    
    // Optional type 자체는 열거형
    // switch를 통해 값의 유무를 체크가능
    switch optionalValue {
    case .none:
        print("value is nil")
    case .some(let value):
        print("value is \(value)")
    }
    
    optionalValue = optionalValue + 1        // 기존 변수처럼 사용 가능
    optionalValue = nil                                    // Optional은 nil 할당 가능
    // optionalValue = optionalValue + 1        // 잘못된 접근으로 인한 런타임 오류 발생
}

func genericOptional() {
    var optionalValue: Int? = 100
    
    switch optionalValue {
    case .none:
        print("value is nil")
    case .some(let value):
        print("value is \(value)")
    }
    
    optionalValue = nil                                    // nil 할당 가능
    // optionalValue = optionalValue + 1        // 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입
}

func optionalBinding() {
    let swift: String? = "Swift"
    let apple: String? = "Apple"
    
    if let lang = swift {
        print("lang is \(lang)")
    }    // else 삽입 가능
    
    // , 를 통해 여러 개의 Optional binding 가능
    // 모든 Optional 변수에 대해 값이 있어야 lf let 구문을 실행 (하나라도 nil이 있는 경우 미실행)
    if let lang = swift, let company = apple {
        print("lang is \(lang)")
    }
    
//    print("lang is \(lang)")        // (X) 상수의 사용범위를 벗어나 컴파일 오류 발생
}

func forceUnwrapping() {
    var swift: String? = "Swift"
    
    printLang(swift!)        // 강제적으로 옵셔널의 값을 추출
    swift = nil
//    print(swift!)                // 강제추출 시 값이 없으므로 런타임 오류 발생
    
    var java: String! = nil
//    printLang(java)            // nil 값이 전달되기 때문에 런타임 오류 발생
}

func printLang(_ lang: String) {
    print(lang)
}
