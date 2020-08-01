//
//  main.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/01.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

// 함수 기초 및 고급 학습
let c = sum(a: 1, b: 2)
let max = maximumInt()
print(c, max)
hello()

// 전달인자 레이블
greeting(from: "Swift", to: "Java")
greeting(to: "Swift", from: "Java")

// 가변 매개변수
printVariableParam(target: "Swift", "Java", "Python")

// 함수의 타입표현
var funcVar: (String, String) -> Void = greeting(to:from:)
funcVar("Swift", "Java")
funcVar = greeting(from:to:)
funcVar("Swift", "Java")
funcParamExample(function: funcVar)
funcParamExample(function: greeting(to:from:))

// 조건문 사용
ifCondition(num: 0)
switchCondition(str: "Swift")

// 반복문 사용
forRepeatition()
whileRepeatition()
repeatWhile()

// 옵셔널
genericOptional()
implicitlyOptional()

// 옵셔널 unwrapping
optionalBinding()
forceUnwrapping()
