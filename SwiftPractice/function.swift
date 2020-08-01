//
//  function.swift
//  SwiftPractice
//
//  Created by Oh Donggeon on 2020/08/01.
//  Copyright © 2020 S033_DonggeonOh. All rights reserved.
//

import Foundation

func sum(a: Int, b: Int) -> Int {
  let c = a + b
  return c
}

func printBy(name: String) -> Void {
  print(name)
}

func maximumInt() -> Int {
  return Int.max
}

func hello() {
  print("hello")
}

// to와 from이 전달인자 레이블이다
func greeting(to friend: String, from me: String) {
  print("Hello \(friend). I'm \(me)")
}

// 문맥적으로 말이 되지 않지만 전달인자 레이블이 다르면 동일한 함수의 이름을 중복 생성할 수 있다.
func greeting(from friend: String, to me: String) {
  print("Hello \(me). I'm \(friend)")
}

// 가변 매개변수
func printVariableParam(target: Any...) {
  print(target)
}

// 함수의 매개변수
func funcParamExample(function: (String, String) -> Void) {
  function("Swift", "Java")
}
