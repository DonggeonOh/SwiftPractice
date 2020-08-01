//
//  condition.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/01.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

func ifCondition(num: Int) {
    switch num {
    case 0:
        print("num is zero")
    case 1:
        print("num is one")
    case 2..<10:        // 2..<10 - 2부터 10 미만을 표현하는 범위 연산자
        print("num is bigger than or equal to 2")
    default:            // default를 생략 시 오류 - 모든 case에 대해 명시하지 않았기 때문
        print("num is negative")
    }
}

func switchCondition(str: String) {
    switch str {
    case "":
    fallthrough                 // 다음 case로 넘어갈 수 있음
    case "Swift", "Java":       // case문에 여러가지의 경우를 작성 가능
        print("lang is swift or java")
    default:
        print("not equal")
    }
}
